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
	<24.471592, 35.040272, 35.306190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262724, 35.208946, 35.009674>,  <24.137403, 35.310150, 34.831764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262724, 35.208946, 35.009674>,  <24.471592, 35.040272, 35.306190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.262724, 35.208946, 35.009674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833346, 0.067499, -0.548614,
		-0.181306, -0.904226, -0.386656,
		-0.522170, 0.421685, -0.741296,
		24.106073, 35.335453, 34.787285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631321, 34.739929, 34.634789>,  <24.471592, 35.040272, 35.306190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631321, 34.739929, 34.634789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533278, 35.126995, 34.610981>,  <24.474451, 35.359234, 34.596699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533278, 35.126995, 34.610981>,  <24.631321, 34.739929, 34.634789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533278, 35.126995, 34.610981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757825, 0.152946, -0.634277,
		-0.604666, -0.200571, -0.770811,
		-0.245110, 0.967667, -0.059516,
		24.459743, 35.417294, 34.593124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543314, 34.954819, 33.938416>,  <24.631321, 34.739929, 34.634789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543314, 34.954819, 33.938416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682756, 35.233124, 34.189621>,  <24.766422, 35.400105, 34.340343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682756, 35.233124, 34.189621>,  <24.543314, 34.954819, 33.938416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.682756, 35.233124, 34.189621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870008, 0.009043, -0.492955,
		-0.348657, 0.718219, -0.602162,
		0.348605, 0.695758, 0.628009,
		24.787338, 35.441853, 34.378025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.783279, 35.449505, 33.545513>,  <24.543314, 34.954819, 33.938416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.783279, 35.449505, 33.545513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994272, 35.476753, 33.884247>,  <25.120869, 35.493103, 34.087486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994272, 35.476753, 33.884247>,  <24.783279, 35.449505, 33.545513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.994272, 35.476753, 33.884247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819055, -0.305513, -0.485604,
		0.225638, 0.949748, -0.216946,
		0.527481, 0.068120, 0.846831,
		25.152517, 35.497189, 34.138298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.931002, 35.097378, 32.836819>,  <24.783279, 35.449505, 33.545513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.931002, 35.097378, 32.836819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109102, 34.937962, 32.516090>,  <25.215963, 34.842312, 32.323654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109102, 34.937962, 32.516090>,  <24.931002, 35.097378, 32.836819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109102, 34.937962, 32.516090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894566, 0.159250, 0.417601,
		-0.038739, -0.903221, 0.427424,
		0.445253, -0.398537, -0.801822,
		25.242678, 34.818401, 32.275543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693075, 34.474339, 32.401108>,  <24.931002, 35.097378, 32.836819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693075, 34.474339, 32.401108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810368, 34.571789, 32.770901>,  <24.880743, 34.630260, 32.992775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810368, 34.571789, 32.770901>,  <24.693075, 34.474339, 32.401108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810368, 34.571789, 32.770901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370290, -0.920452, 0.125116,
		0.881420, 0.305638, -0.360118,
		0.293231, 0.243628, 0.924479,
		24.898336, 34.644878, 33.048244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293123, 34.068207, 32.712254>,  <24.693075, 34.474339, 32.401108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293123, 34.068207, 32.712254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411104, 34.113636, 32.332760>,  <25.481892, 34.140892, 32.105064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411104, 34.113636, 32.332760>,  <25.293123, 34.068207, 32.712254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411104, 34.113636, 32.332760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935004, 0.170309, 0.311068,
		0.196909, -0.978824, -0.055959,
		0.294950, 0.113574, -0.948739,
		25.499590, 34.147709, 32.048138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937054, 33.509193, 32.494846>,  <25.293123, 34.068207, 32.712254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937054, 33.509193, 32.494846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936691, 33.878899, 32.342140>,  <25.936474, 34.100719, 32.250519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936691, 33.878899, 32.342140>,  <25.937054, 33.509193, 32.494846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936691, 33.878899, 32.342140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945341, 0.125276, 0.301058,
		0.326081, -0.360622, -0.873855,
		-0.000905, 0.924261, -0.381761,
		25.936420, 34.156178, 32.227612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507612, 33.528839, 32.247124>,  <25.937054, 33.509193, 32.494846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507612, 33.528839, 32.247124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405212, 33.913849, 32.282928>,  <26.343773, 34.144855, 32.304413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405212, 33.913849, 32.282928>,  <26.507612, 33.528839, 32.247124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405212, 33.913849, 32.282928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852204, 0.181004, 0.490903,
		0.456303, 0.201957, -0.866603,
		-0.256000, 0.962523, 0.089516,
		26.328413, 34.202606, 32.309784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073929, 33.974720, 31.953358>,  <26.507612, 33.528839, 32.247124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073929, 33.974720, 31.953358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868204, 34.187527, 32.222412>,  <26.744770, 34.315212, 32.383846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868204, 34.187527, 32.222412>,  <27.073929, 33.974720, 31.953358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868204, 34.187527, 32.222412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846910, 0.191600, 0.496017,
		0.135013, 0.824770, -0.549114,
		-0.514310, 0.532019, 0.672637,
		26.713911, 34.347134, 32.424202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434771, 34.572235, 32.110580>,  <27.073929, 33.974720, 31.953358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434771, 34.572235, 32.110580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184626, 34.482044, 32.409401>,  <27.034538, 34.427929, 32.588692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184626, 34.482044, 32.409401>,  <27.434771, 34.572235, 32.110580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184626, 34.482044, 32.409401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774211, -0.059592, 0.630116,
		-0.097558, 0.972425, 0.211832,
		-0.625364, -0.225476, 0.747048,
		26.997017, 34.414402, 32.633514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544039, 35.073994, 32.668194>,  <27.434771, 34.572235, 32.110580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544039, 35.073994, 32.668194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431993, 34.704704, 32.773415>,  <27.364765, 34.483131, 32.836548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431993, 34.704704, 32.773415>,  <27.544039, 35.073994, 32.668194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431993, 34.704704, 32.773415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852681, -0.113407, 0.509974,
		-0.440987, 0.367151, 0.818981,
		-0.280115, -0.923222, 0.263052,
		27.347960, 34.427738, 32.852329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660418, 35.007343, 33.435848>,  <27.544039, 35.073994, 32.668194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660418, 35.007343, 33.435848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678558, 34.627934, 33.310474>,  <27.689444, 34.400288, 33.235249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678558, 34.627934, 33.310474>,  <27.660418, 35.007343, 33.435848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678558, 34.627934, 33.310474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873732, -0.114440, 0.472754,
		-0.484289, -0.295298, 0.823567,
		0.045354, -0.948527, -0.313433,
		27.692165, 34.343376, 33.216446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831856, 34.460983, 34.051548>,  <27.660418, 35.007343, 33.435848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831856, 34.460983, 34.051548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955502, 34.348721, 33.688080>,  <28.029690, 34.281364, 33.469997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955502, 34.348721, 33.688080>,  <27.831856, 34.460983, 34.051548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955502, 34.348721, 33.688080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898956, -0.225584, 0.375487,
		-0.310363, -0.932923, 0.182565,
		0.309116, -0.280656, -0.908669,
		28.048237, 34.264523, 33.415478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328480, 33.921432, 33.893997>,  <27.831856, 34.460983, 34.051548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328480, 33.921432, 33.893997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264589, 34.301563, 33.787136>,  <27.226255, 34.529640, 33.723019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264589, 34.301563, 33.787136>,  <27.328480, 33.921432, 33.893997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264589, 34.301563, 33.787136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598397, -0.308446, -0.739447,
		-0.785117, 0.041756, 0.617938,
		-0.159725, 0.950325, -0.267153,
		27.216671, 34.586662, 33.706989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564711, 34.174755, 33.828762>,  <27.328480, 33.921432, 33.893997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564711, 34.174755, 33.828762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769667, 34.391914, 33.562614>,  <26.892641, 34.522209, 33.402927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769667, 34.391914, 33.562614>,  <26.564711, 34.174755, 33.828762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769667, 34.391914, 33.562614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768797, -0.055228, -0.637104,
		-0.382632, 0.837978, 0.389083,
		0.512391, 0.542903, -0.665366,
		26.923384, 34.554787, 33.363003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118952, 34.703529, 33.609123>,  <26.564711, 34.174755, 33.828762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118952, 34.703529, 33.609123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382866, 34.630283, 33.317600>,  <26.541214, 34.586334, 33.142689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382866, 34.630283, 33.317600>,  <26.118952, 34.703529, 33.609123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382866, 34.630283, 33.317600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732794, 0.058016, -0.677973,
		0.166430, 0.981378, -0.095909,
		0.659783, -0.183117, -0.728803,
		26.580801, 34.575348, 33.098961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102325, 35.177715, 33.198215>,  <26.118952, 34.703529, 33.609123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102325, 35.177715, 33.198215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286987, 34.922554, 32.951656>,  <26.397783, 34.769455, 32.803719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286987, 34.922554, 32.951656>,  <26.102325, 35.177715, 33.198215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286987, 34.922554, 32.951656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722482, 0.132785, -0.678519,
		0.514681, 0.758579, -0.399576,
		0.461653, -0.637907, -0.616402,
		26.425484, 34.731182, 32.766735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970806, 35.446476, 32.491871>,  <26.102325, 35.177715, 33.198215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970806, 35.446476, 32.491871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093391, 35.075447, 32.406368>,  <26.166943, 34.852829, 32.355068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093391, 35.075447, 32.406368>,  <25.970806, 35.446476, 32.491871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093391, 35.075447, 32.406368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631393, -0.030038, -0.774881,
		0.712336, 0.372438, -0.594867,
		0.306464, -0.927571, -0.213758,
		26.185331, 34.797176, 32.342239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958830, 35.384949, 31.751249>,  <25.970806, 35.446476, 32.491871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958830, 35.384949, 31.751249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927252, 35.020794, 31.913713>,  <25.908306, 34.802299, 32.011192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927252, 35.020794, 31.913713>,  <25.958830, 35.384949, 31.751249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927252, 35.020794, 31.913713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742262, -0.218290, -0.633558,
		0.665443, -0.351491, -0.658513,
		-0.078943, -0.910387, 0.406158,
		25.903568, 34.747677, 32.035561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040422, 34.737934, 31.159611>,  <25.958830, 35.384949, 31.751249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040422, 34.737934, 31.159611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787354, 34.710327, 31.468145>,  <25.635511, 34.693764, 31.653267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787354, 34.710327, 31.468145>,  <26.040422, 34.737934, 31.159611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787354, 34.710327, 31.468145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771179, -0.034859, -0.635663,
		0.070759, -0.997006, -0.031169,
		-0.632674, -0.069016, 0.771338,
		25.597551, 34.689621, 31.699547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635363, 34.214302, 31.080940>,  <26.040422, 34.737934, 31.159611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635363, 34.214302, 31.080940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433981, 34.479118, 31.303017>,  <25.313152, 34.638008, 31.436262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433981, 34.479118, 31.303017>,  <25.635363, 34.214302, 31.080940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433981, 34.479118, 31.303017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718071, 0.036765, -0.694998,
		-0.480529, -0.748566, 0.456883,
		-0.503455, 0.662041, 0.555190,
		25.282944, 34.677731, 31.469574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831469, 33.635872, 30.739664>,  <25.635363, 34.214302, 31.080940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831469, 33.635872, 30.739664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953251, 33.274090, 30.859180>,  <26.026320, 33.057022, 30.930889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953251, 33.274090, 30.859180>,  <25.831469, 33.635872, 30.739664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953251, 33.274090, 30.859180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889074, 0.157260, -0.429902,
		0.341838, 0.396533, 0.852003,
		0.304456, -0.904451, 0.298790,
		26.044588, 33.002754, 30.948818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447474, 33.761353, 30.988024>,  <25.831469, 33.635872, 30.739664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447474, 33.761353, 30.988024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447805, 33.363979, 30.942247>,  <26.448004, 33.125557, 30.914782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447805, 33.363979, 30.942247>,  <26.447474, 33.761353, 30.988024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447805, 33.363979, 30.942247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961292, 0.032324, -0.273627,
		0.275528, -0.109783, 0.955003,
		0.000830, -0.993430, -0.114440,
		26.448053, 33.065948, 30.907915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102423, 33.516243, 31.277002>,  <26.447474, 33.761353, 30.988024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102423, 33.516243, 31.277002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958378, 33.258316, 31.007330>,  <26.871950, 33.103558, 30.845526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958378, 33.258316, 31.007330>,  <27.102423, 33.516243, 31.277002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958378, 33.258316, 31.007330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834324, 0.100727, -0.541994,
		0.417398, -0.757666, 0.501717,
		-0.360114, -0.644822, -0.674183,
		26.850344, 33.064869, 30.805075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558113, 32.924892, 31.184431>,  <27.102423, 33.516243, 31.277002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558113, 32.924892, 31.184431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361609, 32.958027, 30.837606>,  <27.243706, 32.977909, 30.629511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361609, 32.958027, 30.837606>,  <27.558113, 32.924892, 31.184431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361609, 32.958027, 30.837606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870310, 0.086644, -0.484823,
		0.034963, -0.992789, -0.114661,
		-0.491262, 0.082840, -0.867064,
		27.214230, 32.982880, 30.577488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020443, 32.597473, 30.676390>,  <27.558113, 32.924892, 31.184431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020443, 32.597473, 30.676390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754772, 32.798241, 30.454779>,  <27.595369, 32.918701, 30.321812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754772, 32.798241, 30.454779>,  <28.020443, 32.597473, 30.676390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754772, 32.798241, 30.454779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685079, 0.112011, -0.719806,
		-0.299227, -0.857631, -0.418249,
		-0.664177, 0.501919, -0.554028,
		27.555519, 32.948814, 30.288570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866711, 32.218704, 30.016920>,  <28.020443, 32.597473, 30.676390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866711, 32.218704, 30.016920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757687, 32.595665, 29.939367>,  <27.692272, 32.821842, 29.892836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757687, 32.595665, 29.939367>,  <27.866711, 32.218704, 30.016920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757687, 32.595665, 29.939367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573171, -0.002809, -0.819431,
		-0.772778, -0.334471, -0.539392,
		-0.272561, 0.942402, -0.193880,
		27.675919, 32.878387, 29.881203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438189, 32.235645, 29.421986>,  <27.866711, 32.218704, 30.016920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438189, 32.235645, 29.421986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698452, 32.535282, 29.471796>,  <27.854610, 32.715065, 29.501682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698452, 32.535282, 29.471796>,  <27.438189, 32.235645, 29.421986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698452, 32.535282, 29.471796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438533, -0.236790, -0.866960,
		-0.619946, 0.618702, -0.482571,
		0.650657, 0.749092, 0.124525,
		27.893650, 32.760010, 29.509153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494970, 32.714748, 28.815815>,  <27.438189, 32.235645, 29.421986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494970, 32.714748, 28.815815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841738, 32.660828, 29.007767>,  <28.049797, 32.628475, 29.122938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841738, 32.660828, 29.007767>,  <27.494970, 32.714748, 28.815815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841738, 32.660828, 29.007767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463481, -0.136256, -0.875569,
		0.183412, 0.981460, -0.055646,
		0.866917, -0.134799, 0.479878,
		28.101812, 32.620388, 29.151730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125248, 33.126389, 28.533821>,  <27.494970, 32.714748, 28.815815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125248, 33.126389, 28.533821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321745, 32.865582, 28.764835>,  <28.439644, 32.709095, 28.903444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321745, 32.865582, 28.764835>,  <28.125248, 33.126389, 28.533821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321745, 32.865582, 28.764835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733420, -0.048047, -0.678076,
		0.469869, 0.756677, 0.454602,
		0.491242, -0.652021, 0.577538,
		28.469118, 32.669975, 28.938097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856659, 33.331032, 28.535574>,  <28.125248, 33.126389, 28.533821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856659, 33.331032, 28.535574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833826, 32.938225, 28.607552>,  <28.820126, 32.702541, 28.650738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833826, 32.938225, 28.607552>,  <28.856659, 33.331032, 28.535574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833826, 32.938225, 28.607552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721749, -0.165121, -0.672171,
		0.689797, 0.091503, 0.718197,
		-0.057084, -0.982019, 0.179942,
		28.816700, 32.643620, 28.661533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532764, 33.096916, 28.539394>,  <28.856659, 33.331032, 28.535574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532764, 33.096916, 28.539394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310051, 32.771481, 28.472389>,  <29.176424, 32.576218, 28.432186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310051, 32.771481, 28.472389>,  <29.532764, 33.096916, 28.539394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310051, 32.771481, 28.472389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513810, -0.178871, -0.839050,
		0.652681, -0.553238, 0.517624,
		-0.556783, -0.813592, -0.167514,
		29.143017, 32.527405, 28.422134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936361, 32.501434, 28.360449>,  <29.532764, 33.096916, 28.539394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936361, 32.501434, 28.360449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578386, 32.432949, 28.195633>,  <29.363602, 32.391857, 28.096745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578386, 32.432949, 28.195633>,  <29.936361, 32.501434, 28.360449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578386, 32.432949, 28.195633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437399, -0.154192, -0.885950,
		0.088153, -0.973094, 0.212880,
		-0.894936, -0.171212, -0.412038,
		29.309906, 32.381584, 28.072021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566248, 32.873360, 27.763937>,  <29.936361, 32.501434, 28.360449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566248, 32.873360, 27.763937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581665, 32.510960, 27.595331>,  <29.590916, 32.293518, 27.494167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581665, 32.510960, 27.595331>,  <29.566248, 32.873360, 27.763937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581665, 32.510960, 27.595331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641541, -0.345847, 0.684700,
		-0.766120, 0.244031, -0.594567,
		0.038541, -0.906001, -0.421516,
		29.593227, 32.239159, 27.468876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943693, 32.575653, 27.547878>,  <29.566248, 32.873360, 27.763937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943693, 32.575653, 27.547878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196884, 32.292591, 27.673464>,  <29.348799, 32.122753, 27.748816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196884, 32.292591, 27.673464>,  <28.943693, 32.575653, 27.547878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196884, 32.292591, 27.673464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613862, -0.211673, 0.760505,
		-0.471715, -0.674110, -0.568384,
		0.632976, -0.707651, 0.313962,
		29.386778, 32.080296, 27.767653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616558, 31.968031, 27.455223>,  <28.943693, 32.575653, 27.547878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616558, 31.968031, 27.455223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871956, 31.976332, 27.762962>,  <29.025194, 31.981312, 27.947605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871956, 31.976332, 27.762962>,  <28.616558, 31.968031, 27.455223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871956, 31.976332, 27.762962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766437, -0.073795, 0.638066,
		0.070014, -0.997058, -0.031213,
		0.638492, 0.020751, 0.769349,
		29.063503, 31.982557, 27.993767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473415, 31.537159, 28.035273>,  <28.616558, 31.968031, 27.455223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473415, 31.537159, 28.035273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712940, 31.815908, 28.193153>,  <28.856655, 31.983158, 28.287882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712940, 31.815908, 28.193153>,  <28.473415, 31.537159, 28.035273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712940, 31.815908, 28.193153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730689, 0.273603, 0.625488,
		0.327894, -0.662955, 0.673035,
		0.598814, 0.696873, 0.394701,
		28.892584, 32.024971, 28.311563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593836, 31.387156, 28.766428>,  <28.473415, 31.537159, 28.035273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593836, 31.387156, 28.766428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634584, 31.782463, 28.720907>,  <28.659033, 32.019646, 28.693594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634584, 31.782463, 28.720907>,  <28.593836, 31.387156, 28.766428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634584, 31.782463, 28.720907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401456, 0.145510, 0.904245,
		0.910195, -0.046430, 0.411569,
		0.101872, 0.988267, -0.113803,
		28.665146, 32.078941, 28.686766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974684, 31.646900, 29.396385>,  <28.593836, 31.387156, 28.766428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974684, 31.646900, 29.396385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732708, 31.918793, 29.230488>,  <28.587523, 32.081928, 29.130949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732708, 31.918793, 29.230488>,  <28.974684, 31.646900, 29.396385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732708, 31.918793, 29.230488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198719, 0.375500, 0.905268,
		0.771077, 0.630049, -0.092079,
		-0.604939, 0.679733, -0.414742,
		28.551226, 32.122711, 29.106066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083721, 32.100723, 29.896004>,  <28.974684, 31.646900, 29.396385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083721, 32.100723, 29.896004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796350, 32.250095, 29.661257>,  <28.623928, 32.339718, 29.520409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796350, 32.250095, 29.661257>,  <29.083721, 32.100723, 29.896004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796350, 32.250095, 29.661257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161492, 0.731085, 0.662899,
		0.676598, 0.571018, -0.464924,
		-0.718426, 0.373434, -0.586865,
		28.580822, 32.362125, 29.485197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265835, 32.800369, 29.552786>,  <29.083721, 32.100723, 29.896004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265835, 32.800369, 29.552786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870388, 32.763500, 29.600344>,  <28.633120, 32.741379, 29.628878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870388, 32.763500, 29.600344>,  <29.265835, 32.800369, 29.552786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870388, 32.763500, 29.600344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008532, 0.754683, 0.656035,
		-0.150198, 0.649583, -0.745307,
		-0.988619, -0.092176, 0.118894,
		28.573803, 32.735847, 29.636011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041164, 33.362419, 29.468027>,  <29.265835, 32.800369, 29.552786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041164, 33.362419, 29.468027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776340, 33.176910, 29.703516>,  <28.617447, 33.065605, 29.844809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776340, 33.176910, 29.703516>,  <29.041164, 33.362419, 29.468027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776340, 33.176910, 29.703516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040999, 0.761947, 0.646340,
		-0.748331, 0.452052, -0.485439,
		-0.662058, -0.463774, 0.588722,
		28.577723, 33.037777, 29.880133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711094, 33.353134, 29.869299>,  <29.041164, 33.362419, 29.468027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711094, 33.353134, 29.869299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959873, 33.497795, 30.147114>,  <30.109140, 33.584591, 30.313803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959873, 33.497795, 30.147114>,  <29.711094, 33.353134, 29.869299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959873, 33.497795, 30.147114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689871, -0.672703, -0.267486,
		0.370481, 0.645505, -0.667882,
		0.621949, 0.361654, 0.694539,
		30.146458, 33.606293, 30.355476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312006, 32.865543, 29.766602>,  <29.711094, 33.353134, 29.869299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312006, 32.865543, 29.766602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415066, 33.117294, 30.059860>,  <30.476902, 33.268345, 30.235815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415066, 33.117294, 30.059860>,  <30.312006, 32.865543, 29.766602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415066, 33.117294, 30.059860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763803, -0.597386, 0.244409,
		0.591796, 0.497009, -0.634634,
		0.257648, 0.629375, 0.733147,
		30.492361, 33.306107, 30.279804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036970, 32.886559, 29.641764>,  <30.312006, 32.865543, 29.766602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036970, 32.886559, 29.641764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865978, 32.920734, 30.001755>,  <30.763384, 32.941238, 30.217751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865978, 32.920734, 30.001755>,  <31.036970, 32.886559, 29.641764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865978, 32.920734, 30.001755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663819, -0.646127, 0.376647,
		0.613682, 0.758432, 0.219488,
		-0.427479, 0.085441, 0.899979,
		30.737734, 32.946365, 30.271748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617260, 32.955601, 30.060770>,  <31.036970, 32.886559, 29.641764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617260, 32.955601, 30.060770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287205, 32.853226, 30.262222>,  <31.089172, 32.791801, 30.383093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287205, 32.853226, 30.262222>,  <31.617260, 32.955601, 30.060770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287205, 32.853226, 30.262222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522090, -0.686025, 0.506746,
		0.215806, 0.681075, 0.699689,
		-0.825136, -0.255942, 0.503631,
		31.039663, 32.776443, 30.413311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835573, 32.862106, 30.658276>,  <31.617260, 32.955601, 30.060770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835573, 32.862106, 30.658276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511755, 32.633965, 30.602659>,  <31.317465, 32.497078, 30.569290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511755, 32.633965, 30.602659>,  <31.835573, 32.862106, 30.658276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511755, 32.633965, 30.602659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520584, -0.806928, 0.279033,
		-0.271343, 0.153508, 0.950162,
		-0.809546, -0.570353, -0.139040,
		31.268890, 32.462860, 30.560947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623764, 32.475731, 31.209965>,  <31.835573, 32.862106, 30.658276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623764, 32.475731, 31.209965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543295, 32.291828, 30.863979>,  <31.495014, 32.181488, 30.656389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543295, 32.291828, 30.863979>,  <31.623764, 32.475731, 31.209965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543295, 32.291828, 30.863979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602762, -0.754144, 0.260660,
		-0.772145, -0.468929, 0.428834,
		-0.201172, -0.459752, -0.864961,
		31.482943, 32.153904, 30.604490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915066, 31.767836, 31.283348>,  <31.623764, 32.475731, 31.209965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915066, 31.767836, 31.283348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812172, 31.742504, 30.897638>,  <31.750437, 31.727306, 30.666212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812172, 31.742504, 30.897638>,  <31.915066, 31.767836, 31.283348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812172, 31.742504, 30.897638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690375, -0.710260, -0.137523,
		-0.676175, -0.701085, 0.226422,
		-0.257233, -0.063327, -0.964272,
		31.735003, 31.723507, 30.608356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858538, 31.175081, 31.090075>,  <31.915066, 31.767836, 31.283348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858538, 31.175081, 31.090075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939632, 31.326044, 30.728642>,  <31.988289, 31.416622, 30.511782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939632, 31.326044, 30.728642>,  <31.858538, 31.175081, 31.090075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939632, 31.326044, 30.728642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751108, -0.651970, -0.103790,
		-0.628279, -0.657645, -0.415653,
		0.202737, 0.377409, -0.903582,
		32.000454, 31.439266, 30.457567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833776, 30.662853, 30.637196>,  <31.858538, 31.175081, 31.090075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833776, 30.662853, 30.637196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088264, 30.942820, 30.507372>,  <32.240959, 31.110800, 30.429478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088264, 30.942820, 30.507372>,  <31.833776, 30.662853, 30.637196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088264, 30.942820, 30.507372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742978, -0.669183, 0.013326,
		-0.207863, -0.249620, -0.945771,
		0.636220, 0.699917, -0.324560,
		32.279129, 31.152794, 30.410004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174114, 30.506704, 29.957760>,  <31.833776, 30.662853, 30.637196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174114, 30.506704, 29.957760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387993, 30.729830, 30.211672>,  <32.516319, 30.863705, 30.364019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387993, 30.729830, 30.211672>,  <32.174114, 30.506704, 29.957760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387993, 30.729830, 30.211672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645437, -0.754441, 0.119287,
		0.545442, 0.345927, -0.763432,
		0.534700, 0.557811, 0.634778,
		32.548405, 30.897173, 30.402105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914116, 30.410732, 29.715658>,  <32.174114, 30.506704, 29.957760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914116, 30.410732, 29.715658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824524, 30.479580, 30.099367>,  <32.770767, 30.520889, 30.329594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824524, 30.479580, 30.099367>,  <32.914116, 30.410732, 29.715658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824524, 30.479580, 30.099367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387395, -0.887457, 0.249689,
		0.894291, 0.427544, 0.132097,
		-0.223984, 0.172121, 0.959274,
		32.757328, 30.531216, 30.387150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965416, 29.652605, 29.751444>,  <32.914116, 30.410732, 29.715658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965416, 29.652605, 29.751444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363483, 29.685665, 29.730261>,  <33.602325, 29.705502, 29.717552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363483, 29.685665, 29.730261>,  <32.965416, 29.652605, 29.751444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363483, 29.685665, 29.730261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077641, -0.332682, 0.939838,
		0.060059, -0.939411, -0.337492,
		0.995171, 0.082649, -0.052956,
		33.662033, 29.710459, 29.714375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233707, 29.053978, 29.990185>,  <32.965416, 29.652605, 29.751444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233707, 29.053978, 29.990185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532059, 29.314703, 30.045046>,  <33.711067, 29.471138, 30.077963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532059, 29.314703, 30.045046>,  <33.233707, 29.053978, 29.990185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532059, 29.314703, 30.045046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008210, -0.196893, 0.980391,
		0.666037, -0.732373, -0.141505,
		0.745873, 0.651815, 0.137151,
		33.755821, 29.510248, 30.086191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661739, 28.673603, 30.404966>,  <33.233707, 29.053978, 29.990185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661739, 28.673603, 30.404966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785728, 29.050762, 30.453728>,  <33.860123, 29.277058, 30.482985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785728, 29.050762, 30.453728>,  <33.661739, 28.673603, 30.404966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785728, 29.050762, 30.453728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004418, -0.129644, 0.991551,
		0.950734, -0.306818, -0.044353,
		0.309976, 0.942897, 0.121901,
		33.878723, 29.333632, 30.490297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352844, 28.679028, 30.856638>,  <33.661739, 28.673603, 30.404966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352844, 28.679028, 30.856638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186054, 29.042589, 30.854858>,  <34.085979, 29.260727, 30.853790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186054, 29.042589, 30.854858>,  <34.352844, 28.679028, 30.856638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186054, 29.042589, 30.854858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182558, -0.078956, 0.980020,
		0.890394, 0.409460, 0.198851,
		-0.416979, 0.908905, -0.004449,
		34.060959, 29.315260, 30.853523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657116, 29.159105, 31.406052>,  <34.352844, 28.679028, 30.856638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657116, 29.159105, 31.406052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283062, 29.258417, 31.304947>,  <34.058632, 29.318005, 31.244284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283062, 29.258417, 31.304947>,  <34.657116, 29.159105, 31.406052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283062, 29.258417, 31.304947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223616, 0.139785, 0.964601,
		0.274821, 0.958550, -0.075198,
		-0.935130, 0.248277, -0.252763,
		34.002522, 29.332901, 31.229118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418362, 29.776545, 31.780474>,  <34.657116, 29.159105, 31.406052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418362, 29.776545, 31.780474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097046, 29.553982, 31.695492>,  <33.904255, 29.420444, 31.644503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097046, 29.553982, 31.695492>,  <34.418362, 29.776545, 31.780474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097046, 29.553982, 31.695492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264001, 0.012887, 0.964436,
		-0.533880, 0.830811, -0.157244,
		-0.803290, -0.556406, -0.212455,
		33.856060, 29.387060, 31.631756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830509, 30.114666, 32.074028>,  <34.418362, 29.776545, 31.780474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830509, 30.114666, 32.074028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782196, 29.717958, 32.057034>,  <33.753208, 29.479935, 32.046837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782196, 29.717958, 32.057034>,  <33.830509, 30.114666, 32.074028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782196, 29.717958, 32.057034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277160, -0.007409, 0.960795,
		-0.953202, 0.127824, -0.273984,
		-0.120783, -0.991769, -0.042490,
		33.745960, 29.420427, 32.044285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311527, 30.322159, 31.473892>,  <33.830509, 30.114666, 32.074028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311527, 30.322159, 31.473892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627548, 30.091803, 31.389820>,  <33.817162, 29.953588, 31.339376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627548, 30.091803, 31.389820>,  <33.311527, 30.322159, 31.473892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627548, 30.091803, 31.389820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088369, 0.232289, -0.968624,
		0.606642, 0.783833, 0.132629,
		0.790048, -0.575889, -0.210182,
		33.864563, 29.919037, 31.326765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704708, 30.575796, 30.974442>,  <33.311527, 30.322159, 31.473892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704708, 30.575796, 30.974442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853474, 30.206526, 30.935602>,  <33.942734, 29.984962, 30.912298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853474, 30.206526, 30.935602>,  <33.704708, 30.575796, 30.974442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853474, 30.206526, 30.935602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009335, 0.100876, -0.994855,
		0.928222, 0.370902, 0.028899,
		0.371909, -0.923177, -0.097098,
		33.965046, 29.929573, 30.906473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217300, 30.679890, 30.553394>,  <33.704708, 30.575796, 30.974442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217300, 30.679890, 30.553394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145977, 30.286427, 30.543394>,  <34.103184, 30.050348, 30.537394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145977, 30.286427, 30.543394>,  <34.217300, 30.679890, 30.553394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145977, 30.286427, 30.543394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263037, -0.023167, -0.964507,
		0.948165, -0.178559, 0.262869,
		-0.178312, -0.983656, -0.025002,
		34.092484, 29.991329, 30.535894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690392, 30.405092, 30.119081>,  <34.217300, 30.679890, 30.553394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690392, 30.405092, 30.119081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407654, 30.122147, 30.118557>,  <34.238010, 29.952379, 30.118242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407654, 30.122147, 30.118557>,  <34.690392, 30.405092, 30.119081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407654, 30.122147, 30.118557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061662, -0.059767, -0.996306,
		0.704672, -0.704319, 0.085863,
		-0.706849, -0.707364, -0.001314,
		34.195599, 29.909937, 30.118162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985428, 29.835812, 29.834980>,  <34.690392, 30.405092, 30.119081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985428, 29.835812, 29.834980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591576, 29.791803, 29.780724>,  <34.355263, 29.765398, 29.748169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591576, 29.791803, 29.780724>,  <34.985428, 29.835812, 29.834980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591576, 29.791803, 29.780724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141798, -0.050165, -0.988624,
		0.101963, -0.992663, 0.064995,
		-0.984630, -0.110019, -0.135642,
		34.296188, 29.758799, 29.740030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875320, 29.317656, 29.380022>,  <34.985428, 29.835812, 29.834980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875320, 29.317656, 29.380022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566765, 29.570263, 29.348669>,  <34.381630, 29.721828, 29.329857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566765, 29.570263, 29.348669>,  <34.875320, 29.317656, 29.380022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566765, 29.570263, 29.348669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026880, -0.090723, -0.995513,
		-0.635797, -0.770034, 0.053008,
		-0.771388, 0.631520, -0.078380,
		34.335350, 29.759718, 29.325155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429462, 28.987511, 28.989086>,  <34.875320, 29.317656, 29.380022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429462, 28.987511, 28.989086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400684, 29.385912, 28.967926>,  <34.383419, 29.624952, 28.955229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400684, 29.385912, 28.967926>,  <34.429462, 28.987511, 28.989086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400684, 29.385912, 28.967926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034732, -0.055510, -0.997854,
		-0.996804, -0.069953, 0.038587,
		-0.071945, 0.996005, -0.052902,
		34.379101, 29.684713, 28.952055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097324, 29.168425, 28.356276>,  <34.429462, 28.987511, 28.989086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097324, 29.168425, 28.356276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300873, 29.501217, 28.444689>,  <34.423000, 29.700893, 28.497736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300873, 29.501217, 28.444689>,  <34.097324, 29.168425, 28.356276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300873, 29.501217, 28.444689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093624, 0.201752, -0.974952,
		-0.855736, 0.516819, 0.024772,
		0.508871, 0.831982, 0.221033,
		34.453533, 29.750813, 28.511000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711300, 29.742413, 28.002075>,  <34.097324, 29.168425, 28.356276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711300, 29.742413, 28.002075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085293, 29.871735, 28.060423>,  <34.309689, 29.949327, 28.095430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085293, 29.871735, 28.060423>,  <33.711300, 29.742413, 28.002075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085293, 29.871735, 28.060423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059308, 0.262958, -0.962982,
		-0.349693, 0.909026, 0.226688,
		0.934985, 0.323303, 0.145867,
		34.365788, 29.968725, 28.104183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699684, 30.405930, 27.737406>,  <33.711300, 29.742413, 28.002075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699684, 30.405930, 27.737406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091930, 30.332727, 27.765400>,  <34.327278, 30.288807, 27.782196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091930, 30.332727, 27.765400>,  <33.699684, 30.405930, 27.737406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091930, 30.332727, 27.765400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127377, 0.324055, -0.937424,
		0.148874, 0.928169, 0.341085,
		0.980618, -0.183005, 0.069984,
		34.386116, 30.277826, 27.786394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041756, 30.999811, 27.408165>,  <33.699684, 30.405930, 27.737406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041756, 30.999811, 27.408165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299896, 30.694256, 27.408457>,  <34.454781, 30.510923, 27.408632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299896, 30.694256, 27.408457>,  <34.041756, 30.999811, 27.408165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299896, 30.694256, 27.408457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242317, 0.203810, -0.948549,
		0.724436, 0.612321, 0.316631,
		0.645349, -0.763888, 0.000729,
		34.493500, 30.465090, 27.408676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712460, 31.339176, 27.397282>,  <34.041756, 30.999811, 27.408165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712460, 31.339176, 27.397282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750687, 30.961208, 27.272066>,  <34.773624, 30.734428, 27.196938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750687, 30.961208, 27.272066>,  <34.712460, 31.339176, 27.397282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750687, 30.961208, 27.272066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378741, 0.325342, -0.866434,
		0.920555, -0.035755, 0.388973,
		0.095569, -0.944920, -0.313037,
		34.779358, 30.677732, 27.178154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447075, 31.244225, 27.213688>,  <34.712460, 31.339176, 27.397282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447075, 31.244225, 27.213688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228443, 30.960192, 27.036133>,  <35.097263, 30.789772, 26.929600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228443, 30.960192, 27.036133>,  <35.447075, 31.244225, 27.213688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228443, 30.960192, 27.036133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292783, 0.334574, -0.895733,
		0.784559, -0.619549, 0.025030,
		-0.546576, -0.710084, -0.443886,
		35.064468, 30.747166, 26.902967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892609, 30.947184, 26.691153>,  <35.447075, 31.244225, 27.213688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892609, 30.947184, 26.691153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520798, 30.870770, 26.564983>,  <35.297710, 30.824921, 26.489281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520798, 30.870770, 26.564983>,  <35.892609, 30.947184, 26.691153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520798, 30.870770, 26.564983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304658, 0.084117, -0.948740,
		0.207775, -0.977972, -0.019989,
		-0.929523, -0.191035, -0.315424,
		35.241940, 30.813459, 26.470356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025063, 30.568892, 26.058355>,  <35.892609, 30.947184, 26.691153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025063, 30.568892, 26.058355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638962, 30.666885, 26.021957>,  <35.407303, 30.725681, 26.000118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638962, 30.666885, 26.021957>,  <36.025063, 30.568892, 26.058355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638962, 30.666885, 26.021957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133414, 0.162539, -0.977641,
		-0.224718, -0.955805, -0.189574,
		-0.965247, 0.244985, -0.090992,
		35.349388, 30.740381, 25.994659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851124, 30.238203, 25.481478>,  <36.025063, 30.568892, 26.058355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851124, 30.238203, 25.481478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561539, 30.512564, 25.510912>,  <35.387787, 30.677179, 25.528572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561539, 30.512564, 25.510912>,  <35.851124, 30.238203, 25.481478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561539, 30.512564, 25.510912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115447, 0.225631, -0.967348,
		-0.680106, -0.691833, -0.242535,
		-0.723966, 0.685899, 0.073583,
		35.344349, 30.718334, 25.532988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320534, 30.093149, 24.922497>,  <35.851124, 30.238203, 25.481478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320534, 30.093149, 24.922497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283806, 30.479219, 25.020483>,  <35.261768, 30.710861, 25.079275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283806, 30.479219, 25.020483>,  <35.320534, 30.093149, 24.922497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283806, 30.479219, 25.020483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007318, 0.246650, -0.969077,
		-0.995749, -0.087186, -0.029710,
		-0.091818, 0.965175, 0.244963,
		35.256260, 30.768772, 25.093971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212132, 30.309830, 24.226091>,  <35.320534, 30.093149, 24.922497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212132, 30.309830, 24.226091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242043, 30.633245, 24.459560>,  <35.259987, 30.827295, 24.599642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242043, 30.633245, 24.459560>,  <35.212132, 30.309830, 24.226091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242043, 30.633245, 24.459560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047273, 0.587529, -0.807821,
		-0.996079, 0.032812, 0.082154,
		0.074774, 0.808537, 0.583675,
		35.264473, 30.875807, 24.634663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614483, 30.774223, 24.102013>,  <35.212132, 30.309830, 24.226091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614483, 30.774223, 24.102013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957413, 30.943411, 24.219378>,  <35.163170, 31.044924, 24.289797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957413, 30.943411, 24.219378>,  <34.614483, 30.774223, 24.102013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957413, 30.943411, 24.219378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042699, 0.509585, -0.859360,
		-0.513003, 0.749278, 0.418819,
		0.857324, 0.422971, 0.293412,
		35.214611, 31.070303, 24.307402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665283, 31.337395, 23.718605>,  <34.614483, 30.774223, 24.102013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665283, 31.337395, 23.718605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054050, 31.359276, 23.810154>,  <35.287312, 31.372404, 23.865084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054050, 31.359276, 23.810154>,  <34.665283, 31.337395, 23.718605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054050, 31.359276, 23.810154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144431, 0.629180, -0.763722,
		-0.185780, 0.775332, 0.603611,
		0.971918, 0.054704, 0.228872,
		35.345627, 31.375687, 23.878815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835037, 32.071156, 23.749523>,  <34.665283, 31.337395, 23.718605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835037, 32.071156, 23.749523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173363, 31.863894, 23.698750>,  <35.376358, 31.739536, 23.668285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173363, 31.863894, 23.698750>,  <34.835037, 32.071156, 23.749523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173363, 31.863894, 23.698750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189478, 0.514214, -0.836470,
		0.498691, 0.683449, 0.533109,
		0.845816, -0.518153, -0.126935,
		35.427109, 31.708448, 23.660669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297077, 32.564289, 23.577147>,  <34.835037, 32.071156, 23.749523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297077, 32.564289, 23.577147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485485, 32.246609, 23.423582>,  <35.598530, 32.056000, 23.331444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485485, 32.246609, 23.423582>,  <35.297077, 32.564289, 23.577147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485485, 32.246609, 23.423582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092638, 0.477339, -0.873823,
		0.877245, 0.376024, 0.298409,
		0.471021, -0.794200, -0.383909,
		35.626793, 32.008350, 23.308409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741463, 32.893951, 23.103733>,  <35.297077, 32.564289, 23.577147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741463, 32.893951, 23.103733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787357, 32.512272, 22.993214>,  <35.814896, 32.283264, 22.926903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787357, 32.512272, 22.993214>,  <35.741463, 32.893951, 23.103733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787357, 32.512272, 22.993214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138334, 0.290772, -0.946739,
		0.983716, 0.070409, 0.165361,
		0.114741, -0.954198, -0.276298,
		35.821781, 32.226013, 22.910324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395123, 32.724529, 22.867716>,  <35.741463, 32.893951, 23.103733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395123, 32.724529, 22.867716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200386, 32.438271, 22.667383>,  <36.083546, 32.266514, 22.547184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200386, 32.438271, 22.667383>,  <36.395123, 32.724529, 22.867716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200386, 32.438271, 22.667383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446970, 0.288515, -0.846745,
		0.750470, -0.636087, 0.179412,
		-0.486840, -0.715648, -0.500834,
		36.054333, 32.223576, 22.517134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926346, 32.433441, 22.366552>,  <36.395123, 32.724529, 22.867716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926346, 32.433441, 22.366552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558891, 32.337231, 22.241169>,  <36.338417, 32.279507, 22.165939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558891, 32.337231, 22.241169>,  <36.926346, 32.433441, 22.366552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558891, 32.337231, 22.241169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239637, 0.291598, -0.926037,
		0.314148, -0.925805, -0.210231,
		-0.918632, -0.240533, -0.313462,
		36.283302, 32.265072, 22.147131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080536, 32.148994, 21.783072>,  <36.926346, 32.433441, 22.366552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080536, 32.148994, 21.783072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694252, 32.247715, 21.750834>,  <36.462482, 32.306950, 21.731491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694252, 32.247715, 21.750834>,  <37.080536, 32.148994, 21.783072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694252, 32.247715, 21.750834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181427, 0.419434, -0.889471,
		-0.185723, -0.873591, -0.449828,
		-0.965708, 0.246806, -0.080594,
		36.404541, 32.321758, 21.726656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857742, 31.905886, 21.108610>,  <37.080536, 32.148994, 21.783072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857742, 31.905886, 21.108610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580124, 32.171463, 21.219952>,  <36.413555, 32.330811, 21.286757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580124, 32.171463, 21.219952>,  <36.857742, 31.905886, 21.108610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580124, 32.171463, 21.219952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051286, 0.340060, -0.939004,
		-0.718105, -0.665985, -0.201966,
		-0.694043, 0.663946, 0.278354,
		36.371910, 32.370647, 21.303457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344315, 31.861237, 20.593027>,  <36.857742, 31.905886, 21.108610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344315, 31.861237, 20.593027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288128, 32.215073, 20.770912>,  <36.254417, 32.427376, 20.877644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288128, 32.215073, 20.770912>,  <36.344315, 31.861237, 20.593027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288128, 32.215073, 20.770912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020913, 0.446413, -0.894583,
		-0.989865, -0.134955, -0.044204,
		-0.140462, 0.884592, 0.444712,
		36.245991, 32.480450, 20.904325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818047, 32.194832, 20.274897>,  <36.344315, 31.861237, 20.593027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818047, 32.194832, 20.274897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037102, 32.484200, 20.443064>,  <36.168537, 32.657822, 20.543964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037102, 32.484200, 20.443064>,  <35.818047, 32.194832, 20.274897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037102, 32.484200, 20.443064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073081, 0.459187, -0.885328,
		-0.833516, 0.515566, 0.198601,
		0.547640, 0.723421, 0.420418,
		36.201393, 32.701225, 20.569189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514496, 32.828659, 19.966526>,  <35.818047, 32.194832, 20.274897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514496, 32.828659, 19.966526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868778, 32.948364, 20.108490>,  <36.081348, 33.020187, 20.193668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868778, 32.948364, 20.108490>,  <35.514496, 32.828659, 19.966526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868778, 32.948364, 20.108490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105480, 0.614777, -0.781616,
		-0.452097, 0.729721, 0.512948,
		0.885710, 0.299260, 0.354909,
		36.134491, 33.038143, 20.214962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406433, 33.564522, 20.042627>,  <35.514496, 32.828659, 19.966526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406433, 33.564522, 20.042627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803341, 33.520508, 20.019691>,  <36.041485, 33.494099, 20.005930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803341, 33.520508, 20.019691>,  <35.406433, 33.564522, 20.042627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803341, 33.520508, 20.019691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053430, 0.796002, -0.602931,
		0.111987, 0.595208, 0.795730,
		0.992272, -0.110037, -0.057340,
		36.101021, 33.487495, 20.002489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675293, 34.223862, 19.930803>,  <35.406433, 33.564522, 20.042627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675293, 34.223862, 19.930803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988628, 34.001354, 19.819843>,  <36.176628, 33.867851, 19.753267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988628, 34.001354, 19.819843>,  <35.675293, 34.223862, 19.930803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988628, 34.001354, 19.819843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095974, 0.549156, -0.830190,
		0.614142, 0.623696, 0.483562,
		0.783338, -0.556265, -0.277401,
		36.223629, 33.834476, 19.736624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215099, 34.715351, 19.754469>,  <35.675293, 34.223862, 19.930803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215099, 34.715351, 19.754469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355564, 34.386284, 19.575628>,  <36.439842, 34.188843, 19.468323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355564, 34.386284, 19.575628>,  <36.215099, 34.715351, 19.754469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355564, 34.386284, 19.575628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373717, 0.560975, -0.738676,
		0.858501, 0.092302, 0.504436,
		0.351158, -0.822671, -0.447103,
		36.460911, 34.139484, 19.441498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941525, 34.785378, 19.781370>,  <36.215099, 34.715351, 19.754469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941525, 34.785378, 19.781370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810535, 34.549995, 19.485674>,  <36.731941, 34.408768, 19.308256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810535, 34.549995, 19.485674>,  <36.941525, 34.785378, 19.781370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810535, 34.549995, 19.485674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340512, 0.656310, -0.673283,
		0.881369, -0.472204, -0.014549,
		-0.327475, -0.588457, -0.739242,
		36.712292, 34.373459, 19.263901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477386, 34.649319, 19.294668>,  <36.941525, 34.785378, 19.781370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477386, 34.649319, 19.294668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139576, 34.584923, 19.090370>,  <36.936890, 34.546284, 18.967793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139576, 34.584923, 19.090370>,  <37.477386, 34.649319, 19.294668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139576, 34.584923, 19.090370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373597, 0.506187, -0.777303,
		0.383667, -0.847265, -0.367344,
		-0.844527, -0.160987, -0.510743,
		36.886219, 34.536625, 18.937147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736176, 34.767010, 18.617949>,  <37.477386, 34.649319, 19.294668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736176, 34.767010, 18.617949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337719, 34.750183, 18.587160>,  <37.098644, 34.740086, 18.568687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337719, 34.750183, 18.587160>,  <37.736176, 34.767010, 18.617949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337719, 34.750183, 18.587160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032518, 0.637861, -0.769465,
		0.081464, -0.769002, -0.634035,
		-0.996146, -0.042066, -0.076969,
		37.038876, 34.737564, 18.564070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503143, 34.461704, 17.909548>,  <37.736176, 34.767010, 18.617949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503143, 34.461704, 17.909548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202587, 34.695190, 18.032627>,  <37.022251, 34.835281, 18.106476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202587, 34.695190, 18.032627>,  <37.503143, 34.461704, 17.909548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202587, 34.695190, 18.032627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115088, 0.575100, -0.809948,
		-0.649740, -0.573177, -0.499306,
		-0.751394, 0.583719, 0.307699,
		36.977169, 34.870308, 18.124937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221966, 34.648228, 17.228058>,  <37.503143, 34.461704, 17.909548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221966, 34.648228, 17.228058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037449, 34.877827, 17.498682>,  <36.926739, 35.015587, 17.661057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037449, 34.877827, 17.498682>,  <37.221966, 34.648228, 17.228058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037449, 34.877827, 17.498682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192449, 0.679656, -0.707836,
		-0.866124, -0.456724, -0.203057,
		-0.461295, 0.573995, 0.676562,
		36.899059, 35.050026, 17.701651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741707, 34.907303, 16.871918>,  <37.221966, 34.648228, 17.228058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741707, 34.907303, 16.871918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766941, 35.163113, 17.178391>,  <36.782082, 35.316597, 17.362274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766941, 35.163113, 17.178391>,  <36.741707, 34.907303, 16.871918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766941, 35.163113, 17.178391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002757, 0.767595, -0.640929,
		-0.998004, 0.042548, 0.046663,
		0.063088, 0.639521, 0.766181,
		36.785866, 35.354969, 17.408245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186920, 35.362274, 16.809656>,  <36.741707, 34.907303, 16.871918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186920, 35.362274, 16.809656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479900, 35.540672, 17.015415>,  <36.655689, 35.647713, 17.138870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479900, 35.540672, 17.015415>,  <36.186920, 35.362274, 16.809656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479900, 35.540672, 17.015415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076987, 0.804968, -0.588302,
		-0.676454, 0.391300, 0.623935,
		0.732450, 0.445994, 0.514399,
		36.699635, 35.674469, 17.169735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018097, 36.011059, 16.647877>,  <36.186920, 35.362274, 16.809656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018097, 36.011059, 16.647877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376892, 36.057930, 16.818373>,  <36.592171, 36.086052, 16.920671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376892, 36.057930, 16.818373>,  <36.018097, 36.011059, 16.647877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376892, 36.057930, 16.818373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161776, 0.810328, -0.563203,
		-0.411387, 0.574142, 0.707899,
		0.896989, 0.117174, 0.426241,
		36.645988, 36.093082, 16.946245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101204, 36.736950, 16.937063>,  <36.018097, 36.011059, 16.647877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101204, 36.736950, 16.937063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476616, 36.602322, 16.906370>,  <36.701862, 36.521545, 16.887955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476616, 36.602322, 16.906370>,  <36.101204, 36.736950, 16.937063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476616, 36.602322, 16.906370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265700, 0.846205, -0.461889,
		0.220391, 0.413107, 0.883612,
		0.938526, -0.336572, -0.076733,
		36.758175, 36.501350, 16.883350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470276, 37.423691, 16.979130>,  <36.101204, 36.736950, 16.937063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470276, 37.423691, 16.979130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688293, 37.138741, 16.802288>,  <36.819103, 36.967770, 16.696182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688293, 37.138741, 16.802288>,  <36.470276, 37.423691, 16.979130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688293, 37.138741, 16.802288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200374, 0.622711, -0.756361,
		0.814114, 0.323661, 0.482143,
		0.545040, -0.712373, -0.442104,
		36.851807, 36.925030, 16.669657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113216, 37.652027, 16.787951>,  <36.470276, 37.423691, 16.979130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113216, 37.652027, 16.787951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032589, 37.362518, 16.523973>,  <36.984211, 37.188812, 16.365587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032589, 37.362518, 16.523973>,  <37.113216, 37.652027, 16.787951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032589, 37.362518, 16.523973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288167, 0.600130, -0.746193,
		0.936124, -0.340586, 0.087598,
		-0.201572, -0.723772, -0.659942,
		36.972118, 37.145386, 16.325991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605297, 37.879745, 16.242054>,  <37.113216, 37.652027, 16.787951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605297, 37.879745, 16.242054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385685, 37.595112, 16.066689>,  <37.253918, 37.424332, 15.961470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385685, 37.595112, 16.066689>,  <37.605297, 37.879745, 16.242054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385685, 37.595112, 16.066689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104885, 0.461736, -0.880794,
		0.829194, -0.529567, -0.178873,
		-0.549032, -0.711589, -0.438412,
		37.220974, 37.381634, 15.935164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939297, 37.641193, 15.705978>,  <37.605297, 37.879745, 16.242054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939297, 37.641193, 15.705978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552715, 37.595924, 15.613751>,  <37.320766, 37.568764, 15.558415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552715, 37.595924, 15.613751>,  <37.939297, 37.641193, 15.705978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552715, 37.595924, 15.613751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102277, 0.653872, -0.749660,
		0.235603, -0.748093, -0.620362,
		-0.966453, -0.113174, -0.230566,
		37.262779, 37.561974, 15.544581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967194, 37.516243, 15.046005>,  <37.939297, 37.641193, 15.705978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967194, 37.516243, 15.046005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589436, 37.639584, 15.091685>,  <37.362782, 37.713589, 15.119094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589436, 37.639584, 15.091685>,  <37.967194, 37.516243, 15.046005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589436, 37.639584, 15.091685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033385, 0.435426, -0.899605,
		-0.327120, -0.845768, -0.421508,
		-0.944393, 0.308351, 0.114201,
		37.306118, 37.732090, 15.125945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799129, 37.576401, 14.446089>,  <37.967194, 37.516243, 15.046005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799129, 37.576401, 14.446089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512077, 37.766014, 14.650164>,  <37.339844, 37.879784, 14.772609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512077, 37.766014, 14.650164>,  <37.799129, 37.576401, 14.446089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512077, 37.766014, 14.650164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196571, 0.564920, -0.801390,
		-0.668103, -0.675392, -0.312224,
		-0.717634, 0.474036, 0.510188,
		37.296787, 37.908226, 14.803220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155159, 37.405235, 14.126845>,  <37.799129, 37.576401, 14.446089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155159, 37.405235, 14.126845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112728, 37.748257, 14.328179>,  <37.087269, 37.954071, 14.448979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112728, 37.748257, 14.328179>,  <37.155159, 37.405235, 14.126845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112728, 37.748257, 14.328179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221955, 0.472999, -0.852647,
		-0.969270, -0.202163, 0.140165,
		-0.106076, 0.857556, 0.503335,
		37.080906, 38.005524, 14.479180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643909, 37.735882, 13.769722>,  <37.155159, 37.405235, 14.126845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643909, 37.735882, 13.769722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835732, 38.008533, 13.990779>,  <36.950825, 38.172123, 14.123413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835732, 38.008533, 13.990779>,  <36.643909, 37.735882, 13.769722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835732, 38.008533, 13.990779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148167, 0.683637, -0.714624,
		-0.864913, 0.260817, 0.428835,
		0.479553, 0.681627, 0.552642,
		36.979599, 38.213020, 14.156571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289936, 38.434219, 13.911736>,  <36.643909, 37.735882, 13.769722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289936, 38.434219, 13.911736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685596, 38.492485, 13.904048>,  <36.922993, 38.527443, 13.899435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685596, 38.492485, 13.904048>,  <36.289936, 38.434219, 13.911736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685596, 38.492485, 13.904048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120222, 0.727214, -0.675800,
		-0.084461, 0.670777, 0.736834,
		0.989148, 0.145663, -0.019221,
		36.982342, 38.536182, 13.898282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402294, 39.113750, 13.713732>,  <36.289936, 38.434219, 13.911736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402294, 39.113750, 13.713732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779522, 38.994564, 13.654632>,  <37.005859, 38.923054, 13.619172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779522, 38.994564, 13.654632>,  <36.402294, 39.113750, 13.713732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779522, 38.994564, 13.654632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063085, 0.596440, -0.800175,
		0.326549, 0.745302, 0.581283,
		0.943073, -0.297966, -0.147750,
		37.062443, 38.905174, 13.610307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671680, 39.201717, 13.473932>,  <36.402294, 39.113750, 13.713732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671680, 39.201717, 13.473932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619110, 39.515461, 13.231440>,  <35.587570, 39.703705, 13.085944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619110, 39.515461, 13.231440>,  <35.671680, 39.201717, 13.473932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619110, 39.515461, 13.231440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245202, 0.566813, 0.786511,
		0.960523, 0.252014, 0.117833,
		-0.131423, 0.784354, -0.606231,
		35.579685, 39.750767, 13.049570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082928, 39.798302, 13.602977>,  <35.671680, 39.201717, 13.473932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082928, 39.798302, 13.602977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733299, 39.913399, 13.446411>,  <35.523521, 39.982456, 13.352471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733299, 39.913399, 13.446411>,  <36.082928, 39.798302, 13.602977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733299, 39.913399, 13.446411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211075, 0.500747, 0.839464,
		0.437547, 0.816370, -0.376954,
		-0.874071, 0.287739, -0.391415,
		35.471077, 39.999722, 13.328986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948292, 40.362976, 13.909193>,  <36.082928, 39.798302, 13.602977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948292, 40.362976, 13.909193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564022, 40.308247, 13.812545>,  <35.333458, 40.275410, 13.754556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564022, 40.308247, 13.812545>,  <35.948292, 40.362976, 13.909193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564022, 40.308247, 13.812545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276458, 0.390067, 0.878305,
		-0.025927, 0.910564, -0.412554,
		-0.960676, -0.136826, -0.241619,
		35.275818, 40.267200, 13.740059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513332, 40.772156, 13.877934>,  <35.948292, 40.362976, 13.909193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513332, 40.772156, 13.877934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312164, 41.015621, 14.123405>,  <36.191463, 41.161701, 14.270686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312164, 41.015621, 14.123405>,  <36.513332, 40.772156, 13.877934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312164, 41.015621, 14.123405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409032, -0.457864, 0.789337,
		0.761421, 0.647988, -0.018693,
		-0.502922, 0.608664, 0.613675,
		36.161289, 41.198219, 14.307507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846954, 40.746445, 14.478743>,  <36.513332, 40.772156, 13.877934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846954, 40.746445, 14.478743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529480, 40.947273, 14.616142>,  <36.338997, 41.067772, 14.698583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529480, 40.947273, 14.616142>,  <36.846954, 40.746445, 14.478743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529480, 40.947273, 14.616142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216502, -0.294562, 0.930785,
		0.568502, 0.813117, 0.125089,
		-0.793683, 0.502070, 0.343500,
		36.291374, 41.097893, 14.719193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080399, 41.225746, 15.007158>,  <36.846954, 40.746445, 14.478743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080399, 41.225746, 15.007158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694134, 41.129086, 15.045304>,  <36.462376, 41.071091, 15.068192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694134, 41.129086, 15.045304>,  <37.080399, 41.225746, 15.007158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694134, 41.129086, 15.045304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171398, -0.316769, 0.932888,
		-0.195225, 0.917203, 0.347312,
		-0.965666, -0.241651, 0.095366,
		36.404434, 41.056591, 15.073914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781384, 41.417683, 15.706111>,  <37.080399, 41.225746, 15.007158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781384, 41.417683, 15.706111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534473, 41.117149, 15.612761>,  <36.386326, 40.936829, 15.556750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534473, 41.117149, 15.612761>,  <36.781384, 41.417683, 15.706111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534473, 41.117149, 15.612761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107603, -0.374473, 0.920973,
		-0.779351, 0.543385, 0.312000,
		-0.617279, -0.751334, -0.233376,
		36.349289, 40.891750, 15.542747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323833, 41.349007, 16.330175>,  <36.781384, 41.417683, 15.706111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323833, 41.349007, 16.330175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335217, 41.002155, 16.131266>,  <36.342045, 40.794044, 16.011919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335217, 41.002155, 16.131266>,  <36.323833, 41.349007, 16.330175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335217, 41.002155, 16.131266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223388, -0.479379, 0.848701,
		-0.974314, -0.135234, 0.180066,
		0.028453, -0.867126, -0.497276,
		36.343754, 40.742016, 15.982083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907959, 40.912201, 16.724386>,  <36.323833, 41.349007, 16.330175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907959, 40.912201, 16.724386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114689, 40.647522, 16.507111>,  <36.238728, 40.488716, 16.376745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114689, 40.647522, 16.507111>,  <35.907959, 40.912201, 16.724386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114689, 40.647522, 16.507111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102775, -0.581953, 0.806702,
		-0.849900, -0.472750, -0.232762,
		0.516825, -0.661694, -0.543188,
		36.269737, 40.449013, 16.344154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543648, 40.202087, 16.880674>,  <35.907959, 40.912201, 16.724386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543648, 40.202087, 16.880674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897259, 40.112064, 16.716797>,  <36.109425, 40.058052, 16.618469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897259, 40.112064, 16.716797>,  <35.543648, 40.202087, 16.880674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897259, 40.112064, 16.716797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063955, -0.809988, 0.582948,
		-0.463043, -0.541543, -0.701657,
		0.884025, -0.225056, -0.409694,
		36.162468, 40.044548, 16.593889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539360, 39.464832, 16.633364>,  <35.543648, 40.202087, 16.880674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539360, 39.464832, 16.633364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908104, 39.587318, 16.728371>,  <36.129349, 39.660809, 16.785376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908104, 39.587318, 16.728371>,  <35.539360, 39.464832, 16.633364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908104, 39.587318, 16.728371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104217, -0.786211, 0.609107,
		0.373255, -0.536755, -0.756686,
		0.921856, 0.306212, 0.237518,
		36.184662, 39.679180, 16.799625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902012, 38.806290, 16.579750>,  <35.539360, 39.464832, 16.633364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902012, 38.806290, 16.579750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118488, 39.062035, 16.798229>,  <36.248375, 39.215481, 16.929317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118488, 39.062035, 16.798229>,  <35.902012, 38.806290, 16.579750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118488, 39.062035, 16.798229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162057, -0.716664, 0.678329,
		0.825138, -0.278588, -0.491462,
		0.541188, 0.639360, 0.546200,
		36.280846, 39.253841, 16.962090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515671, 38.394894, 16.999804>,  <35.902012, 38.806290, 16.579750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515671, 38.394894, 16.999804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451813, 38.739426, 17.192724>,  <36.413498, 38.946144, 17.308477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451813, 38.739426, 17.192724>,  <36.515671, 38.394894, 16.999804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451813, 38.739426, 17.192724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049998, -0.480887, 0.875356,
		0.985907, 0.163864, 0.033709,
		-0.159650, 0.861334, 0.482302,
		36.403919, 38.997826, 17.337416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073143, 38.458683, 17.423176>,  <36.515671, 38.394894, 16.999804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073143, 38.458683, 17.423176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794731, 38.707520, 17.566589>,  <36.627686, 38.856823, 17.652637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794731, 38.707520, 17.566589>,  <37.073143, 38.458683, 17.423176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794731, 38.707520, 17.566589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067947, -0.440033, 0.895407,
		0.714790, 0.647592, 0.264007,
		-0.696030, 0.622090, 0.358533,
		36.585922, 38.894146, 17.674149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393707, 38.642128, 18.013361>,  <37.073143, 38.458683, 17.423176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393707, 38.642128, 18.013361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009838, 38.735741, 18.075670>,  <36.779518, 38.791908, 18.113056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009838, 38.735741, 18.075670>,  <37.393707, 38.642128, 18.013361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009838, 38.735741, 18.075670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004956, -0.539924, 0.841699,
		0.281085, 0.808525, 0.516989,
		-0.959670, 0.234027, 0.155772,
		36.721935, 38.805950, 18.122402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366756, 38.957306, 18.632528>,  <37.393707, 38.642128, 18.013361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366756, 38.957306, 18.632528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000217, 38.808559, 18.573179>,  <36.780293, 38.719311, 18.537569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000217, 38.808559, 18.573179>,  <37.366756, 38.957306, 18.632528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000217, 38.808559, 18.573179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062903, -0.499703, 0.863910,
		-0.395402, 0.782312, 0.481296,
		-0.916352, -0.371866, -0.148373,
		36.725311, 38.696999, 18.528667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029251, 39.095936, 19.277840>,  <37.366756, 38.957306, 18.632528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029251, 39.095936, 19.277840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819298, 38.817127, 19.082432>,  <36.693325, 38.649841, 18.965187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819298, 38.817127, 19.082432>,  <37.029251, 39.095936, 19.277840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819298, 38.817127, 19.082432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185308, -0.466594, 0.864841,
		-0.830758, 0.544467, 0.115743,
		-0.524883, -0.697026, -0.488521,
		36.661835, 38.608021, 18.935875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404438, 39.094559, 19.539898>,  <37.029251, 39.095936, 19.277840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404438, 39.094559, 19.539898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467358, 38.728317, 19.391878>,  <36.505108, 38.508572, 19.303066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467358, 38.728317, 19.391878>,  <36.404438, 39.094559, 19.539898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467358, 38.728317, 19.391878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097891, -0.387323, 0.916733,
		-0.982688, -0.107976, -0.150554,
		0.157298, -0.915600, -0.370048,
		36.514545, 38.453636, 19.280865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927814, 38.759945, 19.883471>,  <36.404438, 39.094559, 19.539898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927814, 38.759945, 19.883471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183193, 38.485676, 19.743620>,  <36.336422, 38.321114, 19.659710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183193, 38.485676, 19.743620>,  <35.927814, 38.759945, 19.883471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183193, 38.485676, 19.743620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122202, -0.538802, 0.833522,
		-0.759903, -0.489435, -0.427787,
		0.638447, -0.685672, -0.349627,
		36.374729, 38.279976, 19.638731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573887, 38.115196, 19.918058>,  <35.927814, 38.759945, 19.883471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573887, 38.115196, 19.918058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957012, 38.001202, 19.903273>,  <36.186890, 37.932804, 19.894402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957012, 38.001202, 19.903273>,  <35.573887, 38.115196, 19.918058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957012, 38.001202, 19.903273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166572, -0.655384, 0.736699,
		-0.234179, -0.699465, -0.675210,
		0.957817, -0.284991, -0.036966,
		36.244358, 37.915703, 19.892183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530102, 37.368378, 19.917772>,  <35.573887, 38.115196, 19.918058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530102, 37.368378, 19.917772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895615, 37.486374, 20.029474>,  <36.114922, 37.557171, 20.096495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895615, 37.486374, 20.029474>,  <35.530102, 37.368378, 19.917772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895615, 37.486374, 20.029474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037906, -0.746395, 0.664423,
		0.404432, -0.596552, -0.693224,
		0.913782, 0.294991, 0.279253,
		36.169750, 37.574871, 20.113251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952667, 36.706024, 20.035818>,  <35.530102, 37.368378, 19.917772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952667, 36.706024, 20.035818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126358, 36.999107, 20.245422>,  <36.230572, 37.174957, 20.371185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126358, 36.999107, 20.245422>,  <35.952667, 36.706024, 20.035818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126358, 36.999107, 20.245422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071478, -0.607905, 0.790786,
		0.897965, -0.305923, -0.316339,
		0.434223, 0.732709, 0.524011,
		36.256626, 37.218922, 20.402626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586021, 36.371422, 20.360737>,  <35.952667, 36.706024, 20.035818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586021, 36.371422, 20.360737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479919, 36.706749, 20.551260>,  <36.416260, 36.907944, 20.665573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479919, 36.706749, 20.551260>,  <36.586021, 36.371422, 20.360737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479919, 36.706749, 20.551260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017210, -0.498041, 0.866982,
		0.964024, 0.221776, 0.146536,
		-0.265256, 0.838314, 0.476307,
		36.400341, 36.958244, 20.694153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081814, 36.423393, 20.879984>,  <36.586021, 36.371422, 20.360737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081814, 36.423393, 20.879984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788368, 36.667950, 20.998652>,  <36.612301, 36.814682, 21.069851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788368, 36.667950, 20.998652>,  <37.081814, 36.423393, 20.879984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788368, 36.667950, 20.998652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064732, -0.497440, 0.865080,
		0.676474, 0.615432, 0.404507,
		-0.733616, 0.611389, 0.296667,
		36.568283, 36.851368, 21.087652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212048, 36.646435, 21.568695>,  <37.081814, 36.423393, 20.879984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212048, 36.646435, 21.568695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818100, 36.707100, 21.535147>,  <36.581730, 36.743500, 21.515018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818100, 36.707100, 21.535147>,  <37.212048, 36.646435, 21.568695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818100, 36.707100, 21.535147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150083, -0.504362, 0.850349,
		0.086663, 0.850069, 0.519492,
		-0.984868, 0.151660, -0.083872,
		36.522640, 36.752598, 21.509985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961998, 36.981495, 22.207132>,  <37.212048, 36.646435, 21.568695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961998, 36.981495, 22.207132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637215, 36.822319, 22.036318>,  <36.442345, 36.726814, 21.933828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637215, 36.822319, 22.036318>,  <36.961998, 36.981495, 22.207132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637215, 36.822319, 22.036318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250078, -0.423892, 0.870503,
		-0.527425, 0.813609, 0.244669,
		-0.811963, -0.397939, -0.427037,
		36.393627, 36.702938, 21.908207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397591, 37.111916, 22.722141>,  <36.961998, 36.981495, 22.207132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397591, 37.111916, 22.722141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241726, 36.831345, 22.483425>,  <36.148205, 36.663002, 22.340195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241726, 36.831345, 22.483425>,  <36.397591, 37.111916, 22.722141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241726, 36.831345, 22.483425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299882, -0.516060, 0.802342,
		-0.870766, 0.491611, -0.009255,
		-0.389664, -0.701428, -0.596792,
		36.124828, 36.620914, 22.304388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026081, 36.904957, 23.207512>,  <36.397591, 37.111916, 22.722141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026081, 36.904957, 23.207512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970558, 36.638546, 22.914354>,  <35.937244, 36.478699, 22.738459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970558, 36.638546, 22.914354>,  <36.026081, 36.904957, 23.207512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970558, 36.638546, 22.914354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599985, -0.532218, 0.597295,
		-0.787877, 0.522636, -0.325733,
		-0.138807, -0.666030, -0.732896,
		35.928917, 36.438736, 22.694485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365578, 36.789787, 23.111673>,  <36.026081, 36.904957, 23.207512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365578, 36.789787, 23.111673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521988, 36.457352, 22.953493>,  <35.615833, 36.257889, 22.858585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521988, 36.457352, 22.953493>,  <35.365578, 36.789787, 23.111673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521988, 36.457352, 22.953493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465848, -0.549278, 0.693742,
		-0.793777, -0.087053, -0.601947,
		0.391029, -0.831093, -0.395451,
		35.639297, 36.208023, 22.834858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825020, 36.383186, 23.070108>,  <35.365578, 36.789787, 23.111673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825020, 36.383186, 23.070108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132912, 36.127983, 23.078655>,  <35.317646, 35.974861, 23.083784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132912, 36.127983, 23.078655>,  <34.825020, 36.383186, 23.070108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132912, 36.127983, 23.078655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525659, -0.614482, 0.588298,
		-0.362208, -0.464065, -0.808362,
		0.769732, -0.638009, 0.021370,
		35.363831, 35.936581, 23.085066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561123, 35.657799, 22.979527>,  <34.825020, 36.383186, 23.070108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561123, 35.657799, 22.979527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906315, 35.626041, 23.179113>,  <35.113430, 35.606987, 23.298864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906315, 35.626041, 23.179113>,  <34.561123, 35.657799, 22.979527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906315, 35.626041, 23.179113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447002, -0.580298, 0.680767,
		0.235498, -0.810525, -0.536274,
		0.862977, -0.079396, 0.498965,
		35.165207, 35.602222, 23.328802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364033, 34.995567, 23.230928>,  <34.561123, 35.657799, 22.979527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364033, 34.995567, 23.230928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682823, 35.143414, 23.422016>,  <34.874096, 35.232121, 23.536669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682823, 35.143414, 23.422016>,  <34.364033, 34.995567, 23.230928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682823, 35.143414, 23.422016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269047, -0.490878, 0.828645,
		0.540779, -0.788940, -0.291775,
		0.796977, 0.369612, 0.477718,
		34.921917, 35.254295, 23.565332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751274, 34.524040, 23.517845>,  <34.364033, 34.995567, 23.230928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751274, 34.524040, 23.517845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877617, 34.817764, 23.758186>,  <34.953423, 34.993999, 23.902391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877617, 34.817764, 23.758186>,  <34.751274, 34.524040, 23.517845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877617, 34.817764, 23.758186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151372, -0.586163, 0.795927,
		0.936655, -0.342349, -0.073989,
		0.315854, 0.734309, 0.600854,
		34.972374, 35.038055, 23.938442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269283, 34.170582, 23.937397>,  <34.751274, 34.524040, 23.517845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269283, 34.170582, 23.937397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099121, 34.480381, 24.124666>,  <34.997025, 34.666260, 24.237028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099121, 34.480381, 24.124666>,  <35.269283, 34.170582, 23.937397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099121, 34.480381, 24.124666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112818, -0.558663, 0.821686,
		0.897945, 0.296728, 0.325033,
		-0.425402, 0.774498, 0.468172,
		34.971500, 34.712730, 24.265118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645042, 34.197277, 24.534475>,  <35.269283, 34.170582, 23.937397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645042, 34.197277, 24.534475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309792, 34.396183, 24.624159>,  <35.108643, 34.515526, 24.677969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309792, 34.396183, 24.624159>,  <35.645042, 34.197277, 24.534475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309792, 34.396183, 24.624159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038468, -0.356128, 0.933645,
		0.544118, 0.791137, 0.279352,
		-0.838126, 0.497267, 0.224209,
		35.058353, 34.545364, 24.691422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781704, 34.412556, 25.192240>,  <35.645042, 34.197277, 24.534475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781704, 34.412556, 25.192240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384399, 34.446327, 25.160482>,  <35.146015, 34.466591, 25.141428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384399, 34.446327, 25.160482>,  <35.781704, 34.412556, 25.192240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384399, 34.446327, 25.160482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100947, -0.293700, 0.950553,
		0.056940, 0.952161, 0.300244,
		-0.993261, 0.084433, -0.079394,
		35.086422, 34.471657, 25.136663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563053, 34.812141, 25.739389>,  <35.781704, 34.412556, 25.192240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563053, 34.812141, 25.739389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277973, 34.555649, 25.625635>,  <35.106926, 34.401752, 25.557383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277973, 34.555649, 25.625635>,  <35.563053, 34.812141, 25.739389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277973, 34.555649, 25.625635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100987, -0.307395, 0.946208,
		-0.694159, 0.703084, 0.154325,
		-0.712703, -0.641234, -0.284384,
		35.064163, 34.363277, 25.540319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215641, 34.733822, 26.265993>,  <35.563053, 34.812141, 25.739389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215641, 34.733822, 26.265993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055458, 34.431122, 26.059319>,  <34.959351, 34.249500, 25.935314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055458, 34.431122, 26.059319>,  <35.215641, 34.733822, 26.265993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055458, 34.431122, 26.059319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280020, -0.435835, 0.855358,
		-0.872483, 0.487214, -0.037374,
		-0.400453, -0.756750, -0.516688,
		34.935322, 34.204098, 25.904312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505867, 34.594776, 26.456041>,  <35.215641, 34.733822, 26.265993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505867, 34.594776, 26.456041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660824, 34.253723, 26.315784>,  <34.753799, 34.049091, 26.231630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660824, 34.253723, 26.315784>,  <34.505867, 34.594776, 26.456041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660824, 34.253723, 26.315784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259079, -0.465699, 0.846169,
		-0.884763, -0.236956, -0.401307,
		0.387393, -0.852629, -0.350643,
		34.777042, 33.997936, 26.210592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965069, 34.086357, 26.506802>,  <34.505867, 34.594776, 26.456041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965069, 34.086357, 26.506802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315052, 33.892681, 26.506529>,  <34.525043, 33.776474, 26.506365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315052, 33.892681, 26.506529>,  <33.965069, 34.086357, 26.506802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315052, 33.892681, 26.506529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291913, -0.528629, 0.797081,
		-0.386299, -0.697216, -0.603872,
		0.874962, -0.484190, -0.000682,
		34.577541, 33.747425, 26.506325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779114, 33.449291, 26.879980>,  <33.965069, 34.086357, 26.506802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779114, 33.449291, 26.879980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177845, 33.479198, 26.869114>,  <34.417084, 33.497143, 26.862595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177845, 33.479198, 26.869114>,  <33.779114, 33.449291, 26.879980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177845, 33.479198, 26.869114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064657, -0.562612, 0.824189,
		0.046337, -0.823333, -0.565663,
		0.996831, 0.074765, -0.027165,
		34.476894, 33.501629, 26.860964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998795, 32.768551, 27.046881>,  <33.779114, 33.449291, 26.879980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998795, 32.768551, 27.046881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322544, 32.994377, 27.111595>,  <34.516796, 33.129871, 27.150423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322544, 32.994377, 27.111595>,  <33.998795, 32.768551, 27.046881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322544, 32.994377, 27.111595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264528, -0.596405, 0.757843,
		0.524341, -0.570584, -0.632060,
		0.809377, 0.564566, 0.161784,
		34.565357, 33.163746, 27.160130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527565, 32.361660, 27.093287>,  <33.998795, 32.768551, 27.046881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527565, 32.361660, 27.093287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677025, 32.681900, 27.280655>,  <34.766701, 32.874046, 27.393076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677025, 32.681900, 27.280655>,  <34.527565, 32.361660, 27.093287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677025, 32.681900, 27.280655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100502, -0.536968, 0.837594,
		0.922108, -0.265893, -0.281102,
		0.373653, 0.800603, 0.468420,
		34.789120, 32.922081, 27.421181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212479, 32.147022, 27.482836>,  <34.527565, 32.361660, 27.093287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212479, 32.147022, 27.482836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068863, 32.479813, 27.652025>,  <34.982693, 32.679485, 27.753540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068863, 32.479813, 27.652025>,  <35.212479, 32.147022, 27.482836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068863, 32.479813, 27.652025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162128, -0.390706, 0.906125,
		0.919134, 0.393908, 0.005391,
		-0.359036, 0.831977, 0.422975,
		34.961151, 32.729404, 27.778917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606243, 32.324398, 28.139454>,  <35.212479, 32.147022, 27.482836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606243, 32.324398, 28.139454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291821, 32.560730, 28.212158>,  <35.103168, 32.702530, 28.255781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291821, 32.560730, 28.212158>,  <35.606243, 32.324398, 28.139454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291821, 32.560730, 28.212158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098981, -0.169944, 0.980470,
		0.610177, 0.788698, 0.075105,
		-0.786058, 0.590826, 0.181762,
		35.056004, 32.737976, 28.266687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790520, 32.746346, 28.760134>,  <35.606243, 32.324398, 28.139454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790520, 32.746346, 28.760134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391975, 32.754635, 28.727055>,  <35.152847, 32.759609, 28.707207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391975, 32.754635, 28.727055>,  <35.790520, 32.746346, 28.760134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391975, 32.754635, 28.727055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084388, -0.101863, 0.991213,
		0.012118, 0.994583, 0.103241,
		-0.996359, 0.020723, -0.082697,
		35.093067, 32.760853, 28.702246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363575, 33.172264, 28.992027>,  <35.790520, 32.746346, 28.760134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363575, 33.172264, 28.992027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753075, 33.131554, 29.073477>,  <36.986774, 33.107128, 29.122347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753075, 33.131554, 29.073477>,  <36.363575, 33.172264, 28.992027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753075, 33.131554, 29.073477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206891, 0.768773, -0.605132,
		-0.094953, 0.631372, 0.769645,
		0.973745, -0.101774, 0.203622,
		37.045197, 33.101021, 29.134563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633389, 33.875385, 29.182459>,  <36.363575, 33.172264, 28.992027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633389, 33.875385, 29.182459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947109, 33.648762, 29.081358>,  <37.135342, 33.512787, 29.020699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947109, 33.648762, 29.081358>,  <36.633389, 33.875385, 29.182459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947109, 33.648762, 29.081358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324915, 0.722193, -0.610629,
		0.528494, 0.396793, 0.750499,
		0.784299, -0.566562, -0.252751,
		37.182400, 33.478794, 29.005533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157909, 34.298698, 29.249100>,  <36.633389, 33.875385, 29.182459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157909, 34.298698, 29.249100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292652, 34.009563, 29.007757>,  <37.373497, 33.836082, 28.862951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292652, 34.009563, 29.007757>,  <37.157909, 34.298698, 29.249100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292652, 34.009563, 29.007757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377741, 0.690728, -0.616610,
		0.862460, -0.020201, 0.505722,
		0.336860, -0.722833, -0.603356,
		37.393711, 33.792713, 28.826750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857136, 34.452343, 29.141151>,  <37.157909, 34.298698, 29.249100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857136, 34.452343, 29.141151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729702, 34.241268, 28.826178>,  <37.653240, 34.114624, 28.637194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729702, 34.241268, 28.826178>,  <37.857136, 34.452343, 29.141151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729702, 34.241268, 28.826178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409406, 0.672638, -0.616396,
		0.854920, -0.518756, 0.001743,
		-0.318587, -0.527683, -0.787434,
		37.634125, 34.082962, 28.589947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224339, 34.665344, 28.554174>,  <37.857136, 34.452343, 29.141151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224339, 34.665344, 28.554174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948719, 34.473293, 28.337034>,  <37.783348, 34.358063, 28.206751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948719, 34.473293, 28.337034>,  <38.224339, 34.665344, 28.554174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948719, 34.473293, 28.337034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395830, 0.378118, -0.836866,
		0.607067, -0.791518, -0.070491,
		-0.689049, -0.480132, -0.542850,
		37.742004, 34.329254, 28.174179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649517, 34.418068, 27.968636>,  <38.224339, 34.665344, 28.554174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649517, 34.418068, 27.968636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259693, 34.428303, 27.879564>,  <38.025799, 34.434444, 27.826122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259693, 34.428303, 27.879564>,  <38.649517, 34.418068, 27.968636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259693, 34.428303, 27.879564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221536, 0.261021, -0.939569,
		0.034079, -0.964994, -0.260049,
		-0.974557, 0.025590, -0.222676,
		37.967327, 34.435978, 27.812761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558228, 34.066437, 27.304790>,  <38.649517, 34.418068, 27.968636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558228, 34.066437, 27.304790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237949, 34.303356, 27.340717>,  <38.045780, 34.445507, 27.362274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237949, 34.303356, 27.340717>,  <38.558228, 34.066437, 27.304790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237949, 34.303356, 27.340717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284384, 0.507765, -0.813204,
		-0.527265, -0.625588, -0.575006,
		-0.800698, 0.592296, 0.089819,
		37.997742, 34.481045, 27.367662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485043, 34.186867, 26.649731>,  <38.558228, 34.066437, 27.304790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485043, 34.186867, 26.649731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214924, 34.446602, 26.789642>,  <38.052853, 34.602444, 26.873589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214924, 34.446602, 26.789642>,  <38.485043, 34.186867, 26.649731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214924, 34.446602, 26.789642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080950, 0.536632, -0.839925,
		-0.733093, -0.538881, -0.414948,
		-0.675293, 0.649333, 0.349778,
		38.012337, 34.641403, 26.894575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029240, 34.162918, 26.125021>,  <38.485043, 34.186867, 26.649731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029240, 34.162918, 26.125021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990459, 34.514721, 26.311386>,  <37.967194, 34.725803, 26.423204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990459, 34.514721, 26.311386>,  <38.029240, 34.162918, 26.125021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990459, 34.514721, 26.311386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047707, 0.463473, -0.884826,
		-0.994146, -0.108009, -0.002974,
		-0.096947, 0.879504, 0.465912,
		37.961376, 34.778572, 26.451160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605717, 34.460155, 25.795223>,  <38.029240, 34.162918, 26.125021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605717, 34.460155, 25.795223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720020, 34.779778, 26.006824>,  <37.788605, 34.971550, 26.133785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720020, 34.779778, 26.006824>,  <37.605717, 34.460155, 25.795223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720020, 34.779778, 26.006824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041249, 0.561768, -0.826266,
		-0.957412, 0.214295, 0.193493,
		0.285763, 0.799058, 0.529005,
		37.805748, 35.019493, 26.165525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126869, 34.926060, 25.633333>,  <37.605717, 34.460155, 25.795223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126869, 34.926060, 25.633333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437870, 35.152706, 25.742474>,  <37.624470, 35.288692, 25.807957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437870, 35.152706, 25.742474>,  <37.126869, 34.926060, 25.633333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437870, 35.152706, 25.742474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046006, 0.483945, -0.873888,
		-0.627201, 0.666893, 0.402334,
		0.777498, 0.566614, 0.272849,
		37.671120, 35.322689, 25.824327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919895, 35.666042, 25.614038>,  <37.126869, 34.926060, 25.633333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919895, 35.666042, 25.614038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319565, 35.663559, 25.597950>,  <37.559364, 35.662067, 25.588297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319565, 35.663559, 25.597950>,  <36.919895, 35.666042, 25.614038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319565, 35.663559, 25.597950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034454, 0.396947, -0.917195,
		0.021660, 0.917820, 0.396404,
		0.999172, -0.006209, -0.040220,
		37.619316, 35.661697, 25.585884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085403, 36.337708, 25.399950>,  <36.919895, 35.666042, 25.614038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085403, 36.337708, 25.399950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406647, 36.104683, 25.349926>,  <37.599392, 35.964867, 25.319912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406647, 36.104683, 25.349926>,  <37.085403, 36.337708, 25.399950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406647, 36.104683, 25.349926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174284, 0.430392, -0.885657,
		0.569774, 0.689482, 0.447182,
		0.803108, -0.582561, -0.125061,
		37.647579, 35.929916, 25.312408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763527, 36.818172, 25.220909>,  <37.085403, 36.337708, 25.399950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763527, 36.818172, 25.220909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874279, 36.455257, 25.094311>,  <37.940731, 36.237511, 25.018353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874279, 36.455257, 25.094311>,  <37.763527, 36.818172, 25.220909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874279, 36.455257, 25.094311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312876, 0.396548, -0.863052,
		0.908540, 0.139942, 0.393665,
		0.276884, -0.907285, -0.316495,
		37.957344, 36.183071, 24.999363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401585, 36.871391, 25.001993>,  <37.763527, 36.818172, 25.220909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401585, 36.871391, 25.001993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240696, 36.553993, 24.819313>,  <38.144161, 36.363552, 24.709705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240696, 36.553993, 24.819313>,  <38.401585, 36.871391, 25.001993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240696, 36.553993, 24.819313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504231, 0.224370, -0.833912,
		0.764179, -0.565700, 0.309861,
		-0.402220, -0.793500, -0.456703,
		38.120029, 36.315945, 24.682302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027828, 36.566238, 24.655405>,  <38.401585, 36.871391, 25.001993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027828, 36.566238, 24.655405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675686, 36.490639, 24.481396>,  <38.464401, 36.445278, 24.376989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675686, 36.490639, 24.481396>,  <39.027828, 36.566238, 24.655405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675686, 36.490639, 24.481396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403220, 0.184747, -0.896260,
		0.249766, -0.964441, -0.086433,
		-0.880358, -0.189004, -0.435026,
		38.411579, 36.433941, 24.350887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250690, 36.479439, 24.025236>,  <39.027828, 36.566238, 24.655405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250690, 36.479439, 24.025236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856884, 36.483952, 23.955267>,  <38.620598, 36.486660, 23.913286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856884, 36.483952, 23.955267>,  <39.250690, 36.479439, 24.025236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856884, 36.483952, 23.955267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171401, 0.270817, -0.947249,
		0.036687, -0.962565, -0.268557,
		-0.984518, 0.011280, -0.174920,
		38.561527, 36.487335, 23.902790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172783, 36.054546, 23.471277>,  <39.250690, 36.479439, 24.025236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172783, 36.054546, 23.471277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853092, 36.294216, 23.452415>,  <38.661278, 36.438019, 23.441097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853092, 36.294216, 23.452415>,  <39.172783, 36.054546, 23.471277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853092, 36.294216, 23.452415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257519, 0.270492, -0.927641,
		-0.543065, -0.753540, -0.370484,
		-0.799227, 0.599176, -0.047156,
		38.613323, 36.473969, 23.438269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843353, 35.948647, 22.819630>,  <39.172783, 36.054546, 23.471277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843353, 35.948647, 22.819630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692581, 36.304157, 22.923943>,  <38.602119, 36.517464, 22.986530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692581, 36.304157, 22.923943>,  <38.843353, 35.948647, 22.819630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692581, 36.304157, 22.923943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082461, 0.312629, -0.946289,
		-0.922565, -0.335178, -0.191128,
		-0.376927, 0.888774, 0.260781,
		38.579502, 36.570789, 23.002176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351486, 36.101933, 22.253523>,  <38.843353, 35.948647, 22.819630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351486, 36.101933, 22.253523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465370, 36.436523, 22.440819>,  <38.533703, 36.637276, 22.553196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465370, 36.436523, 22.440819>,  <38.351486, 36.101933, 22.253523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465370, 36.436523, 22.440819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064694, 0.470577, -0.879984,
		-0.956427, 0.280835, 0.079864,
		0.284713, 0.836474, 0.468241,
		38.550785, 36.687466, 22.581291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866173, 36.739178, 22.135769>,  <38.351486, 36.101933, 22.253523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866173, 36.739178, 22.135769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237705, 36.862091, 22.218578>,  <38.460625, 36.935837, 22.268265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237705, 36.862091, 22.218578>,  <37.866173, 36.739178, 22.135769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237705, 36.862091, 22.218578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045656, 0.649410, -0.759066,
		-0.367691, 0.695589, 0.617219,
		0.928827, 0.307281, 0.207025,
		38.516354, 36.954277, 22.280685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825352, 37.399181, 22.074804>,  <37.866173, 36.739178, 22.135769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825352, 37.399181, 22.074804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204441, 37.280457, 22.027950>,  <38.431896, 37.209221, 21.999838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204441, 37.280457, 22.027950>,  <37.825352, 37.399181, 22.074804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204441, 37.280457, 22.027950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080298, 0.577118, -0.812704,
		0.308825, 0.760812, 0.570782,
		0.947723, -0.296816, -0.117137,
		38.488758, 37.191410, 21.992809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076653, 37.963154, 21.939936>,  <37.825352, 37.399181, 22.074804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076653, 37.963154, 21.939936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349590, 37.698322, 21.815962>,  <38.513351, 37.539425, 21.741577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349590, 37.698322, 21.815962>,  <38.076653, 37.963154, 21.939936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349590, 37.698322, 21.815962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084669, 0.492689, -0.866077,
		0.726112, 0.564720, 0.392241,
		0.682344, -0.662079, -0.309933,
		38.554295, 37.499699, 21.722982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592712, 38.349079, 21.500618>,  <38.076653, 37.963154, 21.939936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592712, 38.349079, 21.500618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631012, 37.971401, 21.374548>,  <38.653992, 37.744797, 21.298906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631012, 37.971401, 21.374548>,  <38.592712, 38.349079, 21.500618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631012, 37.971401, 21.374548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421813, 0.325281, -0.846325,
		0.901613, -0.051910, 0.429417,
		0.095748, -0.944192, -0.315174,
		38.659737, 37.688145, 21.279995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205589, 38.482044, 21.155525>,  <38.592712, 38.349079, 21.500618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205589, 38.482044, 21.155525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046642, 38.135693, 21.033968>,  <38.951275, 37.927883, 20.961033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046642, 38.135693, 21.033968>,  <39.205589, 38.482044, 21.155525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046642, 38.135693, 21.033968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299281, 0.190771, -0.934900,
		0.867485, -0.462448, 0.183336,
		-0.397367, -0.865880, -0.303892,
		38.927433, 37.875927, 20.942801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734547, 38.192554, 20.863693>,  <39.205589, 38.482044, 21.155525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734547, 38.192554, 20.863693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421852, 38.005142, 20.699070>,  <39.234238, 37.892696, 20.600296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421852, 38.005142, 20.699070>,  <39.734547, 38.192554, 20.863693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421852, 38.005142, 20.699070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358087, 0.203063, -0.911339,
		0.510558, -0.859796, 0.009033,
		-0.781731, -0.468526, -0.411557,
		39.187332, 37.864586, 20.575603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001423, 37.640766, 20.423616>,  <39.734547, 38.192554, 20.863693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001423, 37.640766, 20.423616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641281, 37.759712, 20.296537>,  <39.425194, 37.831081, 20.220291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641281, 37.759712, 20.296537>,  <40.001423, 37.640766, 20.423616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641281, 37.759712, 20.296537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352523, 0.070415, -0.933150,
		-0.255119, -0.952163, -0.168227,
		-0.900356, 0.297369, -0.317695,
		39.371174, 37.848923, 20.201229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948448, 37.396751, 19.775667>,  <40.001423, 37.640766, 20.423616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948448, 37.396751, 19.775667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671669, 37.685520, 19.778248>,  <39.505600, 37.858780, 19.779797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671669, 37.685520, 19.778248>,  <39.948448, 37.396751, 19.775667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671669, 37.685520, 19.778248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262807, 0.260197, -0.929101,
		-0.672414, -0.641194, -0.369768,
		-0.691947, 0.721919, 0.006450,
		39.464085, 37.902096, 19.780182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706219, 37.360970, 19.172306>,  <39.948448, 37.396751, 19.775667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706219, 37.360970, 19.172306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573170, 37.729691, 19.251940>,  <39.493340, 37.950924, 19.299721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573170, 37.729691, 19.251940>,  <39.706219, 37.360970, 19.172306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573170, 37.729691, 19.251940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232604, 0.284775, -0.929946,
		-0.913923, -0.263017, -0.309139,
		-0.332627, 0.921805, 0.199084,
		39.473381, 38.006233, 19.311665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224705, 37.512558, 18.637850>,  <39.706219, 37.360970, 19.172306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224705, 37.512558, 18.637850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358715, 37.852535, 18.800503>,  <39.439121, 38.056522, 18.898094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358715, 37.852535, 18.800503>,  <39.224705, 37.512558, 18.637850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358715, 37.852535, 18.800503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325544, 0.300573, -0.896480,
		-0.884181, 0.432724, -0.175993,
		0.335030, 0.849944, 0.406632,
		39.459225, 38.107517, 18.922493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027824, 37.958836, 18.192274>,  <39.224705, 37.512558, 18.637850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027824, 37.958836, 18.192274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324745, 38.127407, 18.400652>,  <39.502895, 38.228550, 18.525679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324745, 38.127407, 18.400652>,  <39.027824, 37.958836, 18.192274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324745, 38.127407, 18.400652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308659, 0.475003, -0.824076,
		-0.594744, 0.772506, 0.222516,
		0.742300, 0.421433, 0.520947,
		39.547436, 38.253838, 18.556936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025959, 38.622246, 18.023048>,  <39.027824, 37.958836, 18.192274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025959, 38.622246, 18.023048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394611, 38.549728, 18.160294>,  <39.615803, 38.506218, 18.242640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394611, 38.549728, 18.160294>,  <39.025959, 38.622246, 18.023048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394611, 38.549728, 18.160294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385707, 0.525168, -0.758570,
		-0.042671, 0.831464, 0.553937,
		0.921634, -0.181289, 0.343111,
		39.671101, 38.495342, 18.263227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203178, 39.205967, 17.995611>,  <39.025959, 38.622246, 18.023048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203178, 39.205967, 17.995611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535362, 38.984543, 18.020596>,  <39.734673, 38.851688, 18.035587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535362, 38.984543, 18.020596>,  <39.203178, 39.205967, 17.995611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535362, 38.984543, 18.020596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358904, 0.445909, -0.819971,
		0.426053, 0.703373, 0.568986,
		0.830462, -0.553563, 0.062462,
		39.784500, 38.818474, 18.039333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726055, 39.676785, 17.850206>,  <39.203178, 39.205967, 17.995611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726055, 39.676785, 17.850206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909145, 39.326939, 17.786285>,  <40.019001, 39.117031, 17.747932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909145, 39.326939, 17.786285>,  <39.726055, 39.676785, 17.850206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909145, 39.326939, 17.786285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463181, 0.387993, -0.796822,
		0.758914, 0.290708, 0.582699,
		0.457726, -0.874614, -0.159803,
		40.046463, 39.064556, 17.738344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447445, 39.779690, 17.842525>,  <39.726055, 39.676785, 17.850206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447445, 39.779690, 17.842525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391903, 39.430737, 17.655048>,  <40.358578, 39.221367, 17.542562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391903, 39.430737, 17.655048>,  <40.447445, 39.779690, 17.842525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391903, 39.430737, 17.655048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640467, 0.281870, -0.714388,
		0.755329, -0.399376, 0.519593,
		-0.138852, -0.872381, -0.468692,
		40.350246, 39.169022, 17.514441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095619, 39.583122, 17.696106>,  <40.447445, 39.779690, 17.842525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095619, 39.583122, 17.696106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895500, 39.372822, 17.420923>,  <40.775429, 39.246639, 17.255814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895500, 39.372822, 17.420923>,  <41.095619, 39.583122, 17.696106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895500, 39.372822, 17.420923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674545, 0.261483, -0.690374,
		0.542857, -0.809449, 0.223826,
		-0.500296, -0.525755, -0.687958,
		40.745411, 39.215096, 17.214537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653206, 39.290192, 17.292858>,  <41.095619, 39.583122, 17.696106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653206, 39.290192, 17.292858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326450, 39.280495, 17.062342>,  <41.130398, 39.274677, 16.924032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326450, 39.280495, 17.062342>,  <41.653206, 39.290192, 17.292858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326450, 39.280495, 17.062342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538874, 0.324235, -0.777487,
		0.205703, -0.945666, -0.251799,
		-0.816886, -0.024243, -0.576291,
		41.081387, 39.273220, 16.889454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875343, 39.135769, 16.643635>,  <41.653206, 39.290192, 17.292858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875343, 39.135769, 16.643635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505245, 39.255569, 16.550497>,  <41.283184, 39.327450, 16.494614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505245, 39.255569, 16.550497>,  <41.875343, 39.135769, 16.643635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505245, 39.255569, 16.550497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344957, 0.408807, -0.844915,
		-0.157864, -0.862077, -0.481563,
		-0.925248, 0.299500, -0.232844,
		41.227673, 39.345421, 16.480644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576508, 38.859707, 16.569794>,  <41.875343, 39.135769, 16.643635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576508, 38.859707, 16.569794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971798, 38.824856, 16.620087>,  <43.208973, 38.803944, 16.650263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971798, 38.824856, 16.620087>,  <42.576508, 38.859707, 16.569794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971798, 38.824856, 16.620087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151516, -0.444292, 0.882977,
		-0.021071, -0.891635, -0.452264,
		0.988230, -0.087131, 0.125735,
		43.268269, 38.798717, 16.657806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648186, 38.165306, 16.674208>,  <42.576508, 38.859707, 16.569794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648186, 38.165306, 16.674208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976063, 38.338829, 16.823826>,  <43.172791, 38.442944, 16.913597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976063, 38.338829, 16.823826>,  <42.648186, 38.165306, 16.674208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976063, 38.338829, 16.823826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101728, -0.532378, 0.840372,
		0.563697, -0.726898, -0.392255,
		0.819693, 0.433812, 0.374046,
		43.221970, 38.468971, 16.936039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813751, 37.724979, 17.088448>,  <42.648186, 38.165306, 16.674208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813751, 37.724979, 17.088448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050049, 38.025089, 17.207176>,  <43.191826, 38.205154, 17.278414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050049, 38.025089, 17.207176>,  <42.813751, 37.724979, 17.088448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050049, 38.025089, 17.207176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011149, -0.375429, 0.926784,
		0.806783, -0.544182, -0.230147,
		0.590743, 0.750279, 0.296823,
		43.227272, 38.250172, 17.296223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391182, 37.406185, 17.148911>,  <42.813751, 37.724979, 17.088448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391182, 37.406185, 17.148911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340111, 37.722431, 17.388454>,  <43.309467, 37.912178, 17.532181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340111, 37.722431, 17.388454>,  <43.391182, 37.406185, 17.148911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340111, 37.722431, 17.388454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075915, -0.594239, 0.800698,
		0.988906, 0.147694, 0.015852,
		-0.127678, 0.790612, 0.598859,
		43.301807, 37.959614, 17.568111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924541, 37.265236, 17.621181>,  <43.391182, 37.406185, 17.148911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924541, 37.265236, 17.621181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664707, 37.527283, 17.775507>,  <43.508804, 37.684513, 17.868101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664707, 37.527283, 17.775507>,  <43.924541, 37.265236, 17.621181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664707, 37.527283, 17.775507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080987, -0.444946, 0.891888,
		0.755960, 0.610606, 0.235976,
		-0.649589, 0.655121, 0.385812,
		43.469830, 37.723820, 17.891251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197830, 37.484222, 18.289190>,  <43.924541, 37.265236, 17.621181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197830, 37.484222, 18.289190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807781, 37.572365, 18.298737>,  <43.573750, 37.625252, 18.304464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807781, 37.572365, 18.298737>,  <44.197830, 37.484222, 18.289190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807781, 37.572365, 18.298737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031577, -0.244697, 0.969085,
		0.219388, 0.944227, 0.245569,
		-0.975127, 0.220360, 0.023867,
		43.515244, 37.638474, 18.305897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158344, 37.801834, 18.865391>,  <44.197830, 37.484222, 18.289190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158344, 37.801834, 18.865391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783840, 37.675793, 18.803268>,  <43.559135, 37.600166, 18.765995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783840, 37.675793, 18.803268>,  <44.158344, 37.801834, 18.865391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783840, 37.675793, 18.803268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017064, -0.400769, 0.916020,
		-0.350886, 0.860286, 0.369848,
		-0.936263, -0.315107, -0.155304,
		43.502960, 37.581261, 18.756678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910923, 37.821434, 19.494404>,  <44.158344, 37.801834, 18.865391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910923, 37.821434, 19.494404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638401, 37.593616, 19.310471>,  <43.474888, 37.456924, 19.200111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638401, 37.593616, 19.310471>,  <43.910923, 37.821434, 19.494404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638401, 37.593616, 19.310471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313407, -0.340733, 0.886384,
		-0.661516, 0.748010, 0.053643,
		-0.681302, -0.569545, -0.459833,
		43.434010, 37.422752, 19.172522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197357, 37.986217, 19.678528>,  <43.910923, 37.821434, 19.494404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197357, 37.986217, 19.678528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187542, 37.615631, 19.528301>,  <43.181652, 37.393280, 19.438166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187542, 37.615631, 19.528301>,  <43.197357, 37.986217, 19.678528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187542, 37.615631, 19.528301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425526, -0.330267, 0.842527,
		-0.904614, 0.180489, -0.386132,
		-0.024541, -0.926471, -0.375567,
		43.180180, 37.337688, 19.415630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533424, 37.749832, 19.798874>,  <43.197357, 37.986217, 19.678528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533424, 37.749832, 19.798874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759975, 37.422375, 19.760832>,  <42.895905, 37.225903, 19.738007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759975, 37.422375, 19.760832>,  <42.533424, 37.749832, 19.798874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759975, 37.422375, 19.760832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491447, -0.428117, 0.758416,
		-0.661587, -0.382810, -0.644794,
		0.566376, -0.818641, -0.095106,
		42.929890, 37.176781, 19.732300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000813, 37.168816, 19.697971>,  <42.533424, 37.749832, 19.798874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000813, 37.168816, 19.697971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348984, 37.039421, 19.846407>,  <42.557888, 36.961784, 19.935469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348984, 37.039421, 19.846407>,  <42.000813, 37.168816, 19.697971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348984, 37.039421, 19.846407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490007, -0.496714, 0.716358,
		-0.047409, -0.805375, -0.590866,
		0.870429, -0.323490, 0.371091,
		42.610111, 36.942375, 19.957733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764633, 36.584393, 20.078045>,  <42.000813, 37.168816, 19.697971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764633, 36.584393, 20.078045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139534, 36.622238, 20.212271>,  <42.364475, 36.644943, 20.292807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139534, 36.622238, 20.212271>,  <41.764633, 36.584393, 20.078045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139534, 36.622238, 20.212271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297748, -0.283520, 0.911572,
		0.181382, -0.954288, -0.237560,
		0.937255, 0.094610, 0.335562,
		42.420712, 36.650620, 20.312939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938374, 35.934273, 20.417641>,  <41.764633, 36.584393, 20.078045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938374, 35.934273, 20.417641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158382, 36.238926, 20.554691>,  <42.290386, 36.421719, 20.636921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158382, 36.238926, 20.554691>,  <41.938374, 35.934273, 20.417641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158382, 36.238926, 20.554691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195285, -0.281591, 0.939452,
		0.812000, -0.583625, -0.006144,
		0.550018, 0.761635, 0.342625,
		42.323387, 36.467415, 20.657478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336533, 35.619011, 20.840902>,  <41.938374, 35.934273, 20.417641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336533, 35.619011, 20.840902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353374, 35.999569, 20.962934>,  <42.363480, 36.227905, 21.036154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353374, 35.999569, 20.962934>,  <42.336533, 35.619011, 20.840902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353374, 35.999569, 20.962934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258836, -0.284541, 0.923060,
		0.965003, -0.117834, 0.234274,
		0.042108, 0.951395, 0.305082,
		42.366005, 36.284988, 21.054459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393784, 35.538239, 21.596092>,  <42.336533, 35.619011, 20.840902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393784, 35.538239, 21.596092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298748, 35.926456, 21.580147>,  <42.241726, 36.159389, 21.570580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298748, 35.926456, 21.580147>,  <42.393784, 35.538239, 21.596092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298748, 35.926456, 21.580147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273900, -0.027565, 0.961363,
		0.931951, 0.239324, 0.272383,
		-0.237585, 0.970548, -0.039862,
		42.227474, 36.217621, 21.568188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667912, 35.891266, 22.171442>,  <42.393784, 35.538239, 21.596092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667912, 35.891266, 22.171442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369930, 36.123596, 22.040180>,  <42.191139, 36.262993, 21.961424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369930, 36.123596, 22.040180>,  <42.667912, 35.891266, 22.171442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369930, 36.123596, 22.040180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435058, -0.050076, 0.899009,
		0.505732, 0.812488, 0.289996,
		-0.744956, 0.580823, -0.328155,
		42.146442, 36.297844, 21.941734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596737, 36.474739, 22.591393>,  <42.667912, 35.891266, 22.171442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596737, 36.474739, 22.591393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226658, 36.448303, 22.441914>,  <42.004612, 36.432442, 22.352226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226658, 36.448303, 22.441914>,  <42.596737, 36.474739, 22.591393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226658, 36.448303, 22.441914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370405, -0.056963, 0.927122,
		-0.082562, 0.996186, 0.028221,
		-0.925194, -0.066092, -0.373696,
		41.949100, 36.428474, 22.329805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175461, 36.833282, 22.993402>,  <42.596737, 36.474739, 22.591393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175461, 36.833282, 22.993402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890125, 36.638409, 22.791887>,  <41.718925, 36.521484, 22.670979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890125, 36.638409, 22.791887>,  <42.175461, 36.833282, 22.993402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890125, 36.638409, 22.791887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490781, -0.165889, 0.855345,
		-0.500282, 0.857400, -0.120765,
		-0.713339, -0.487183, -0.503786,
		41.676125, 36.492252, 22.640751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495251, 37.224464, 23.147503>,  <42.175461, 36.833282, 22.993402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495251, 37.224464, 23.147503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424824, 36.853725, 23.014864>,  <41.382568, 36.631283, 22.935280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424824, 36.853725, 23.014864>,  <41.495251, 37.224464, 23.147503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424824, 36.853725, 23.014864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639629, -0.148335, 0.754236,
		-0.748247, 0.344899, -0.566719,
		-0.176071, -0.926845, -0.331599,
		41.372002, 36.575672, 22.915384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755322, 37.109081, 23.332655>,  <41.495251, 37.224464, 23.147503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755322, 37.109081, 23.332655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897964, 36.737854, 23.289738>,  <40.983551, 36.515118, 23.263987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897964, 36.737854, 23.289738>,  <40.755322, 37.109081, 23.332655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897964, 36.737854, 23.289738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577488, -0.309248, 0.755561,
		-0.734396, -0.207478, -0.646231,
		0.356609, -0.928072, -0.107295,
		41.004948, 36.459431, 23.257549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128960, 36.731289, 23.411295>,  <40.755322, 37.109081, 23.332655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128960, 36.731289, 23.411295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442680, 36.491096, 23.473631>,  <40.630913, 36.346981, 23.511032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442680, 36.491096, 23.473631>,  <40.128960, 36.731289, 23.411295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442680, 36.491096, 23.473631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506639, -0.475011, 0.719501,
		-0.358021, -0.643264, -0.676782,
		0.784307, -0.600480, 0.155839,
		40.677971, 36.310951, 23.520382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944942, 36.067879, 23.363733>,  <40.128960, 36.731289, 23.411295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944942, 36.067879, 23.363733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267632, 36.043156, 23.598810>,  <40.461246, 36.028320, 23.739857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267632, 36.043156, 23.598810>,  <39.944942, 36.067879, 23.363733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267632, 36.043156, 23.598810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514163, -0.563609, 0.646514,
		0.291268, -0.823726, -0.486456,
		0.806721, -0.061809, 0.587691,
		40.509647, 36.024612, 23.775118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998699, 35.318169, 23.654417>,  <39.944942, 36.067879, 23.363733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998699, 35.318169, 23.654417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224270, 35.518188, 23.917303>,  <40.359612, 35.638203, 24.075035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224270, 35.518188, 23.917303>,  <39.998699, 35.318169, 23.654417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224270, 35.518188, 23.917303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462044, -0.468558, 0.752973,
		0.684470, -0.728286, -0.033187,
		0.563930, 0.500054, 0.657214,
		40.393448, 35.668205, 24.114468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326061, 34.763145, 24.095919>,  <39.998699, 35.318169, 23.654417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326061, 34.763145, 24.095919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389797, 35.096581, 24.307482>,  <40.428040, 35.296642, 24.434420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389797, 35.096581, 24.307482>,  <40.326061, 34.763145, 24.095919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389797, 35.096581, 24.307482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071387, -0.544078, 0.835992,
		0.984638, -0.095453, -0.146203,
		0.159344, 0.833587, 0.528906,
		40.437599, 35.346657, 24.466154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960335, 34.609219, 24.517771>,  <40.326061, 34.763145, 24.095919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960335, 34.609219, 24.517771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720821, 34.897995, 24.656488>,  <40.577114, 35.071259, 24.739719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720821, 34.897995, 24.656488>,  <40.960335, 34.609219, 24.517771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720821, 34.897995, 24.656488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033592, -0.455255, 0.889727,
		0.800208, 0.521103, 0.296850,
		-0.598782, 0.721938, 0.346794,
		40.541187, 35.114578, 24.760527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132572, 34.510864, 25.222754>,  <40.960335, 34.609219, 24.517771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132572, 34.510864, 25.222754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815479, 34.754066, 25.205343>,  <40.625221, 34.899990, 25.194897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815479, 34.754066, 25.205343>,  <41.132572, 34.510864, 25.222754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815479, 34.754066, 25.205343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184141, -0.170795, 0.967947,
		0.581086, 0.775342, 0.247355,
		-0.792736, 0.608009, -0.043525,
		40.577660, 34.936470, 25.192286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202427, 35.176865, 25.577520>,  <41.132572, 34.510864, 25.222754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202427, 35.176865, 25.577520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815773, 35.075420, 25.563126>,  <40.583778, 35.014553, 25.554489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815773, 35.075420, 25.563126>,  <41.202427, 35.176865, 25.577520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815773, 35.075420, 25.563126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037770, -0.280076, 0.959234,
		-0.253352, 0.925872, 0.280311,
		-0.966637, -0.253611, -0.035988,
		40.525784, 34.999336, 25.552330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908348, 35.563488, 26.154678>,  <41.202427, 35.176865, 25.577520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908348, 35.563488, 26.154678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608021, 35.324463, 26.042122>,  <40.427822, 35.181046, 25.974588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608021, 35.324463, 26.042122>,  <40.908348, 35.563488, 26.154678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608021, 35.324463, 26.042122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292511, -0.081148, 0.952813,
		-0.592202, 0.797704, -0.113867,
		-0.750822, -0.597565, -0.281393,
		40.382774, 35.145195, 25.957705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268730, 35.810459, 26.383368>,  <40.908348, 35.563488, 26.154678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268730, 35.810459, 26.383368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215424, 35.417511, 26.330935>,  <40.183441, 35.181740, 26.299475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215424, 35.417511, 26.330935>,  <40.268730, 35.810459, 26.383368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215424, 35.417511, 26.330935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305939, -0.085028, 0.948247,
		-0.942678, 0.166470, -0.289215,
		-0.133263, -0.982374, -0.131084,
		40.175446, 35.122799, 26.291609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708801, 35.695164, 26.764786>,  <40.268730, 35.810459, 26.383368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708801, 35.695164, 26.764786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883350, 35.341557, 26.697741>,  <39.988079, 35.129391, 26.657515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883350, 35.341557, 26.697741>,  <39.708801, 35.695164, 26.764786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883350, 35.341557, 26.697741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149218, -0.254805, 0.955410,
		-0.887307, -0.391903, -0.243101,
		0.436371, -0.884017, -0.167611,
		40.014263, 35.076351, 26.647457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359882, 35.229790, 27.193016>,  <39.708801, 35.695164, 26.764786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359882, 35.229790, 27.193016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697960, 35.045490, 27.084681>,  <39.900806, 34.934910, 27.019680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697960, 35.045490, 27.084681>,  <39.359882, 35.229790, 27.193016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697960, 35.045490, 27.084681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024762, -0.539970, 0.841320,
		-0.533849, -0.704392, -0.467801,
		0.845217, -0.460721, -0.270820,
		39.951519, 34.907265, 27.003429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236431, 34.558941, 27.245142>,  <39.359882, 35.229790, 27.193016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236431, 34.558941, 27.245142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631336, 34.597691, 27.295610>,  <39.868279, 34.620941, 27.325891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631336, 34.597691, 27.295610>,  <39.236431, 34.558941, 27.245142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631336, 34.597691, 27.295610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059369, -0.511456, 0.857256,
		0.147577, -0.853831, -0.499192,
		0.987267, 0.096875, 0.126171,
		39.927517, 34.626755, 27.333462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396519, 33.892963, 27.486130>,  <39.236431, 34.558941, 27.245142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396519, 33.892963, 27.486130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733692, 34.094807, 27.560772>,  <39.935997, 34.215912, 27.605556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733692, 34.094807, 27.560772>,  <39.396519, 33.892963, 27.486130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733692, 34.094807, 27.560772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213074, -0.631595, 0.745444,
		0.494019, -0.588603, -0.639916,
		0.842938, 0.504613, 0.186604,
		39.986572, 34.246189, 27.616753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909836, 33.379902, 27.681030>,  <39.396519, 33.892963, 27.486130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909836, 33.379902, 27.681030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047871, 33.715935, 27.848448>,  <40.130692, 33.917553, 27.948898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047871, 33.715935, 27.848448>,  <39.909836, 33.379902, 27.681030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047871, 33.715935, 27.848448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161660, -0.492477, 0.855180,
		0.924543, -0.227452, -0.305756,
		0.345090, 0.840079, 0.418546,
		40.151398, 33.967957, 27.974012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572964, 33.233486, 27.958950>,  <39.909836, 33.379902, 27.681030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572964, 33.233486, 27.958950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439339, 33.543804, 28.173071>,  <40.359161, 33.729996, 28.301544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439339, 33.543804, 28.173071>,  <40.572964, 33.233486, 27.958950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439339, 33.543804, 28.173071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091238, -0.538647, 0.837577,
		0.938124, 0.328645, 0.109161,
		-0.334065, 0.775791, 0.535303,
		40.339119, 33.776543, 28.333662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796837, 32.978123, 28.542282>,  <40.572964, 33.233486, 27.958950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796837, 32.978123, 28.542282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563278, 33.285194, 28.647911>,  <40.423145, 33.469437, 28.711288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563278, 33.285194, 28.647911>,  <40.796837, 32.978123, 28.542282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563278, 33.285194, 28.647911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093076, -0.386439, 0.917606,
		0.806476, 0.511207, 0.297093,
		-0.583895, 0.767680, 0.264073,
		40.388111, 33.515499, 28.727133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128098, 33.407688, 29.105873>,  <40.796837, 32.978123, 28.542282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128098, 33.407688, 29.105873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729237, 33.437626, 29.109655>,  <40.489922, 33.455589, 29.111925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729237, 33.437626, 29.109655>,  <41.128098, 33.407688, 29.105873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729237, 33.437626, 29.109655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017318, -0.349096, 0.936927,
		0.073424, 0.934093, 0.349397,
		-0.997150, 0.074843, 0.009455,
		40.430092, 33.460079, 29.112492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017330, 33.511917, 29.853853>,  <41.128098, 33.407688, 29.105873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017330, 33.511917, 29.853853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663006, 33.404930, 29.702168>,  <40.450413, 33.340736, 29.611156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663006, 33.404930, 29.702168>,  <41.017330, 33.511917, 29.853853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663006, 33.404930, 29.702168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141361, -0.622814, 0.769493,
		-0.441993, 0.735230, 0.513886,
		-0.885810, -0.267467, -0.379212,
		40.397263, 33.324692, 29.588404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596313, 33.567673, 30.484501>,  <41.017330, 33.511917, 29.853853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596313, 33.567673, 30.484501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385818, 33.357815, 30.216824>,  <40.259521, 33.231899, 30.056217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385818, 33.357815, 30.216824>,  <40.596313, 33.567673, 30.484501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385818, 33.357815, 30.216824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332159, -0.597621, 0.729739,
		-0.782781, 0.606294, 0.140223,
		-0.526237, -0.524649, -0.669192,
		40.227947, 33.200420, 30.016066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978474, 33.534679, 30.769663>,  <40.596313, 33.567673, 30.484501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978474, 33.534679, 30.769663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010815, 33.239433, 30.501738>,  <40.030220, 33.062286, 30.340982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010815, 33.239433, 30.501738>,  <39.978474, 33.534679, 30.769663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010815, 33.239433, 30.501738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093372, -0.674665, 0.732194,
		-0.992343, 0.003342, -0.123468,
		0.080853, -0.738116, -0.669811,
		40.035072, 33.017998, 30.300795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385078, 33.144600, 30.883747>,  <39.978474, 33.534679, 30.769663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385078, 33.144600, 30.883747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667091, 32.922680, 30.707058>,  <39.836300, 32.789528, 30.601044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667091, 32.922680, 30.707058>,  <39.385078, 33.144600, 30.883747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667091, 32.922680, 30.707058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041383, -0.653995, 0.755366,
		-0.707964, -0.514280, -0.484048,
		0.705035, -0.554803, -0.441723,
		39.878601, 32.756241, 30.574541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065823, 32.492607, 30.801542>,  <39.385078, 33.144600, 30.883747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065823, 32.492607, 30.801542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460129, 32.430710, 30.775249>,  <39.696712, 32.393574, 30.759474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460129, 32.430710, 30.775249>,  <39.065823, 32.492607, 30.801542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460129, 32.430710, 30.775249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055525, -0.668692, 0.741464,
		-0.158690, -0.727260, -0.667765,
		0.985766, -0.154741, -0.065734,
		39.755859, 32.384289, 30.755529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205254, 31.749886, 30.691038>,  <39.065823, 32.492607, 30.801542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205254, 31.749886, 30.691038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541683, 31.879967, 30.863937>,  <39.743542, 31.958015, 30.967676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541683, 31.879967, 30.863937>,  <39.205254, 31.749886, 30.691038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541683, 31.879967, 30.863937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032364, -0.767409, 0.640341,
		0.539951, -0.552563, -0.634923,
		0.841074, 0.325204, 0.432246,
		39.794006, 31.977528, 30.993610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562027, 31.089085, 30.942989>,  <39.205254, 31.749886, 30.691038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562027, 31.089085, 30.942989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708279, 31.397150, 31.152048>,  <39.796032, 31.581989, 31.277483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708279, 31.397150, 31.152048>,  <39.562027, 31.089085, 30.942989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708279, 31.397150, 31.152048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220101, -0.617146, 0.755438,
		0.904360, -0.161178, -0.395163,
		0.365633, 0.770164, 0.522647,
		39.817970, 31.628199, 31.308842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167213, 30.857723, 31.230104>,  <39.562027, 31.089085, 30.942989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167213, 30.857723, 31.230104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053646, 31.174885, 31.445768>,  <39.985504, 31.365183, 31.575167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053646, 31.174885, 31.445768>,  <40.167213, 30.857723, 31.230104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053646, 31.174885, 31.445768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134911, -0.523671, 0.841171,
		0.949310, 0.311561, 0.041708,
		-0.283917, 0.792905, 0.539159,
		39.968472, 31.412756, 31.607515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781033, 30.998543, 31.780640>,  <40.167213, 30.857723, 31.230104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781033, 30.998543, 31.780640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420639, 31.137911, 31.884043>,  <40.204403, 31.221531, 31.946085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420639, 31.137911, 31.884043>,  <40.781033, 30.998543, 31.780640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420639, 31.137911, 31.884043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013986, -0.618866, 0.785372,
		0.433619, 0.703995, 0.562464,
		-0.900988, 0.348419, 0.258506,
		40.150341, 31.242437, 31.961594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796566, 31.215206, 32.440254>,  <40.781033, 30.998543, 31.780640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796566, 31.215206, 32.440254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411999, 31.136915, 32.362926>,  <40.181259, 31.089941, 32.316532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411999, 31.136915, 32.362926>,  <40.796566, 31.215206, 32.440254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411999, 31.136915, 32.362926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023082, -0.642838, 0.765654,
		-0.274129, 0.740574, 0.613517,
		-0.961416, -0.195727, -0.193315,
		40.123573, 31.078197, 32.304932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421566, 31.216194, 33.059326>,  <40.796566, 31.215206, 32.440254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421566, 31.216194, 33.059326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218292, 30.982925, 32.805820>,  <40.096329, 30.842964, 32.653717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218292, 30.982925, 32.805820>,  <40.421566, 31.216194, 33.059326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218292, 30.982925, 32.805820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040352, -0.718939, 0.693901,
		-0.860301, 0.378204, 0.341823,
		-0.508186, -0.583171, -0.633765,
		40.065838, 30.807974, 32.615692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706142, 31.021856, 33.335514>,  <40.421566, 31.216194, 33.059326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706142, 31.021856, 33.335514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828266, 30.727278, 33.094040>,  <39.901543, 30.550531, 32.949158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828266, 30.727278, 33.094040>,  <39.706142, 31.021856, 33.335514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828266, 30.727278, 33.094040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152423, -0.663572, 0.732420,
		-0.939974, -0.131601, -0.314848,
		0.305311, -0.736446, -0.603682,
		39.919861, 30.506344, 32.912937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176376, 30.477083, 33.346985>,  <39.706142, 31.021856, 33.335514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176376, 30.477083, 33.346985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493717, 30.283195, 33.199665>,  <39.684120, 30.166862, 33.111275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493717, 30.283195, 33.199665>,  <39.176376, 30.477083, 33.346985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493717, 30.283195, 33.199665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175842, -0.761665, 0.623656,
		-0.582816, -0.430016, -0.689501,
		0.793351, -0.484720, -0.368296,
		39.731724, 30.137779, 33.089176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001740, 29.708157, 33.337849>,  <39.176376, 30.477083, 33.346985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001740, 29.708157, 33.337849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397743, 29.688438, 33.285011>,  <39.635345, 29.676607, 33.253311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397743, 29.688438, 33.285011>,  <39.001740, 29.708157, 33.337849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397743, 29.688438, 33.285011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040323, -0.798752, 0.600308,
		-0.135098, -0.599638, -0.788786,
		0.990012, -0.049294, -0.132089,
		39.694748, 29.673651, 33.245384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252239, 29.012747, 33.018303>,  <39.001740, 29.708157, 33.337849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252239, 29.012747, 33.018303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542480, 29.183947, 33.233829>,  <39.716625, 29.286667, 33.363144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542480, 29.183947, 33.233829>,  <39.252239, 29.012747, 33.018303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542480, 29.183947, 33.233829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050057, -0.748121, 0.661672,
		0.686295, -0.507079, -0.521411,
		0.725599, 0.428002, 0.538814,
		39.760159, 29.312347, 33.395473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415108, 28.544239, 33.553345>,  <39.252239, 29.012747, 33.018303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415108, 28.544239, 33.553345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692001, 28.826805, 33.612389>,  <39.858139, 28.996344, 33.647816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692001, 28.826805, 33.612389>,  <39.415108, 28.544239, 33.553345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692001, 28.826805, 33.612389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362427, -0.517173, 0.775357,
		0.624065, -0.483231, -0.614028,
		0.692235, 0.706414, 0.147613,
		39.899673, 29.038729, 33.656673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066235, 28.195801, 33.418293>,  <39.415108, 28.544239, 33.553345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066235, 28.195801, 33.418293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086769, 28.495754, 33.682121>,  <40.099091, 28.675726, 33.840420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086769, 28.495754, 33.682121>,  <40.066235, 28.195801, 33.418293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086769, 28.495754, 33.682121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483125, -0.596668, 0.640763,
		0.874045, 0.285765, -0.392917,
		0.051333, 0.749884, 0.659575,
		40.102169, 28.720720, 33.879993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776577, 28.225691, 33.729240>,  <40.066235, 28.195801, 33.418293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776577, 28.225691, 33.729240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508991, 28.390705, 33.976562>,  <40.348438, 28.489714, 34.124954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508991, 28.390705, 33.976562>,  <40.776577, 28.225691, 33.729240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508991, 28.390705, 33.976562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294334, -0.616826, 0.729996,
		0.682536, 0.670329, 0.291211,
		-0.668963, 0.412535, 0.618306,
		40.308304, 28.514465, 34.162056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235523, 28.458944, 34.288475>,  <40.776577, 28.225691, 33.729240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235523, 28.458944, 34.288475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856972, 28.391249, 34.398552>,  <40.629841, 28.350632, 34.464600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856972, 28.391249, 34.398552>,  <41.235523, 28.458944, 34.288475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856972, 28.391249, 34.398552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322516, -0.445223, 0.835320,
		-0.018846, 0.879281, 0.475931,
		-0.946376, -0.169238, 0.275191,
		40.573059, 28.340477, 34.481110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303757, 28.141199, 34.965954>,  <41.235523, 28.458944, 34.288475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303757, 28.141199, 34.965954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904305, 28.120270, 34.967079>,  <40.664635, 28.107712, 34.967754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904305, 28.120270, 34.967079>,  <41.303757, 28.141199, 34.965954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904305, 28.120270, 34.967079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033179, -0.589851, 0.806830,
		-0.040557, 0.805815, 0.590777,
		-0.998626, -0.052324, 0.002814,
		40.604717, 28.104572, 34.967922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137043, 28.269081, 35.599770>,  <41.303757, 28.141199, 34.965954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137043, 28.269081, 35.599770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804806, 28.084263, 35.475430>,  <40.605465, 27.973372, 35.400826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804806, 28.084263, 35.475430>,  <41.137043, 28.269081, 35.599770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804806, 28.084263, 35.475430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011479, -0.543881, 0.839084,
		-0.556764, 0.700504, 0.446439,
		-0.830591, -0.462047, -0.310855,
		40.555630, 27.945648, 35.382172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593410, 28.410311, 36.088299>,  <41.137043, 28.269081, 35.599770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593410, 28.410311, 36.088299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514523, 28.047663, 35.939091>,  <40.467190, 27.830074, 35.849567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514523, 28.047663, 35.939091>,  <40.593410, 28.410311, 36.088299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514523, 28.047663, 35.939091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222734, -0.329105, 0.917649,
		-0.954722, 0.264062, -0.137029,
		-0.197219, -0.906621, -0.373019,
		40.455357, 27.775677, 35.827187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908646, 28.167950, 36.278393>,  <40.593410, 28.410311, 36.088299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908646, 28.167950, 36.278393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112579, 27.836189, 36.187031>,  <40.234940, 27.637133, 36.132214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112579, 27.836189, 36.187031>,  <39.908646, 28.167950, 36.278393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112579, 27.836189, 36.187031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278488, -0.410324, 0.868377,
		-0.813951, -0.379118, -0.440173,
		0.509831, -0.829400, -0.228404,
		40.265530, 27.587370, 36.118511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438488, 27.600645, 36.187462>,  <39.908646, 28.167950, 36.278393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438488, 27.600645, 36.187462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805340, 27.542540, 36.335934>,  <40.025452, 27.507677, 36.425018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805340, 27.542540, 36.335934>,  <39.438488, 27.600645, 36.187462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805340, 27.542540, 36.335934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393724, -0.185002, 0.900419,
		-0.062126, -0.971943, -0.226863,
		0.917127, -0.145261, 0.371184,
		40.080479, 27.498960, 36.447289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550583, 27.013575, 36.566284>,  <39.438488, 27.600645, 36.187462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550583, 27.013575, 36.566284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831779, 27.257620, 36.712471>,  <40.000500, 27.404047, 36.800182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831779, 27.257620, 36.712471>,  <39.550583, 27.013575, 36.566284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831779, 27.257620, 36.712471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326248, -0.179967, 0.927994,
		0.631952, -0.771606, 0.072532,
		0.702993, 0.610111, 0.365466,
		40.042679, 27.440653, 36.822109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080723, 26.595284, 37.031311>,  <39.550583, 27.013575, 36.566284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080723, 26.595284, 37.031311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044964, 26.983152, 37.122299>,  <40.023510, 27.215874, 37.176891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044964, 26.983152, 37.122299>,  <40.080723, 26.595284, 37.031311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044964, 26.983152, 37.122299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090529, -0.235353, 0.967684,
		0.991873, 0.065913, 0.108823,
		-0.089394, 0.969672, 0.227473,
		40.018147, 27.274054, 37.190540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480328, 26.268200, 36.525536>,  <40.080723, 26.595284, 37.031311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480328, 26.268200, 36.525536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125599, 26.422466, 36.423702>,  <39.912762, 26.515026, 36.362602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125599, 26.422466, 36.423702>,  <40.480328, 26.268200, 36.525536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125599, 26.422466, 36.423702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432609, 0.886554, -0.163927,
		0.162484, -0.255510, -0.953055,
		-0.886819, 0.385664, -0.254586,
		39.859554, 26.538166, 36.347328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611679, 26.569160, 35.953457>,  <40.480328, 26.268200, 36.525536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611679, 26.569160, 35.953457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307365, 26.757887, 36.131718>,  <40.124779, 26.871122, 36.238674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307365, 26.757887, 36.131718>,  <40.611679, 26.569160, 35.953457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307365, 26.757887, 36.131718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366800, 0.879057, -0.304494,
		-0.535418, -0.068187, -0.841830,
		-0.760779, 0.471814, 0.445652,
		40.079132, 26.899431, 36.265411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187374, 26.630009, 35.345409>,  <40.611679, 26.569160, 35.953457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187374, 26.630009, 35.345409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118427, 26.926085, 35.605381>,  <40.077057, 27.103729, 35.761364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118427, 26.926085, 35.605381>,  <40.187374, 26.630009, 35.345409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118427, 26.926085, 35.605381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024949, 0.656315, -0.754074,
		-0.984716, -0.146194, -0.094662,
		-0.172369, 0.740187, 0.649932,
		40.066715, 27.148140, 35.800362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999809, 27.070530, 34.947701>,  <40.187374, 26.630009, 35.345409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999809, 27.070530, 34.947701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049137, 27.307127, 35.266430>,  <40.078735, 27.449085, 35.457668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049137, 27.307127, 35.266430>,  <39.999809, 27.070530, 34.947701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049137, 27.307127, 35.266430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025955, 0.804601, -0.593248,
		-0.992028, 0.052478, 0.114575,
		0.123320, 0.591492, 0.796824,
		40.086132, 27.484575, 35.505478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441082, 27.478601, 34.902763>,  <39.999809, 27.070530, 34.947701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441082, 27.478601, 34.902763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776501, 27.615540, 35.072296>,  <39.977753, 27.697702, 35.174015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776501, 27.615540, 35.072296>,  <39.441082, 27.478601, 34.902763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776501, 27.615540, 35.072296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037074, 0.740261, -0.671296,
		-0.543561, 0.578629, 0.608055,
		0.838551, 0.342347, 0.423829,
		40.028065, 27.718245, 35.199444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319359, 28.253613, 35.083912>,  <39.441082, 27.478601, 34.902763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319359, 28.253613, 35.083912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712719, 28.195620, 35.040272>,  <39.948734, 28.160824, 35.014088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712719, 28.195620, 35.040272>,  <39.319359, 28.253613, 35.083912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712719, 28.195620, 35.040272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040336, 0.760920, -0.647591,
		0.176909, 0.632440, 0.754137,
		0.983400, -0.144983, -0.109104,
		40.007740, 28.152124, 35.007542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645367, 28.735281, 35.388103>,  <39.319359, 28.253613, 35.083912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645367, 28.735281, 35.388103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845181, 28.584375, 35.076172>,  <39.965069, 28.493832, 34.889011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845181, 28.584375, 35.076172>,  <39.645367, 28.735281, 35.388103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845181, 28.584375, 35.076172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026727, 0.893052, -0.449160,
		0.865881, 0.245214, 0.436028,
		0.499536, -0.377265, -0.779830,
		39.995041, 28.471195, 34.842224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621941, 29.230270, 34.927418>,  <39.645367, 28.735281, 35.388103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621941, 29.230270, 34.927418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855484, 28.995543, 34.703007>,  <39.995609, 28.854706, 34.568359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855484, 28.995543, 34.703007>,  <39.621941, 29.230270, 34.927418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855484, 28.995543, 34.703007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010292, 0.696338, -0.717640,
		0.811792, 0.413224, 0.412600,
		0.583855, -0.586821, -0.561029,
		40.030640, 28.819496, 34.534698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215862, 29.593416, 34.849190>,  <39.621941, 29.230270, 34.927418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215862, 29.593416, 34.849190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161190, 29.346926, 34.538944>,  <40.128387, 29.199032, 34.352795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161190, 29.346926, 34.538944>,  <40.215862, 29.593416, 34.849190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161190, 29.346926, 34.538944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108805, 0.768891, -0.630055,
		0.984621, -0.170509, -0.038046,
		-0.136684, -0.616226, -0.775618,
		40.120186, 29.162058, 34.306259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308258, 30.068657, 34.259270>,  <40.215862, 29.593416, 34.849190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308258, 30.068657, 34.259270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230373, 29.714975, 34.089436>,  <40.183643, 29.502768, 33.987534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230373, 29.714975, 34.089436>,  <40.308258, 30.068657, 34.259270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230373, 29.714975, 34.089436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015430, 0.430055, -0.902670,
		0.980739, -0.182311, -0.070093,
		-0.194711, -0.884203, -0.424585,
		40.171959, 29.449715, 33.962059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831223, 29.988991, 33.728577>,  <40.308258, 30.068657, 34.259270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831223, 29.988991, 33.728577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496437, 29.779957, 33.663586>,  <40.295567, 29.654535, 33.624592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496437, 29.779957, 33.663586>,  <40.831223, 29.988991, 33.728577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496437, 29.779957, 33.663586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064942, 0.389638, -0.918675,
		0.543397, -0.758343, -0.360050,
		-0.836960, -0.522588, -0.162480,
		40.245350, 29.623180, 33.614841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893780, 29.456007, 33.298805>,  <40.831223, 29.988991, 33.728577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893780, 29.456007, 33.298805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515362, 29.574699, 33.246723>,  <40.288311, 29.645916, 33.215473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515362, 29.574699, 33.246723>,  <40.893780, 29.456007, 33.298805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515362, 29.574699, 33.246723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235636, 0.354127, -0.905025,
		-0.222441, -0.886873, -0.404940,
		-0.946042, 0.296733, -0.130206,
		40.231548, 29.663719, 33.207661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619278, 29.344624, 32.608963>,  <40.893780, 29.456007, 33.298805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619278, 29.344624, 32.608963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383167, 29.628771, 32.762299>,  <40.241501, 29.799259, 32.854301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383167, 29.628771, 32.762299>,  <40.619278, 29.344624, 32.608963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383167, 29.628771, 32.762299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034363, 0.452358, -0.891174,
		-0.806468, -0.539214, -0.242607,
		-0.590279, 0.710367, 0.383341,
		40.206085, 29.841881, 32.877300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393505, 29.656998, 32.030079>,  <40.619278, 29.344624, 32.608963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393505, 29.656998, 32.030079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281567, 29.930792, 32.299351>,  <40.214405, 30.095068, 32.460915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281567, 29.930792, 32.299351>,  <40.393505, 29.656998, 32.030079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281567, 29.930792, 32.299351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058435, 0.712038, -0.699705,
		-0.958265, -0.156472, -0.239257,
		-0.279844, 0.684485, 0.673178,
		40.197613, 30.136137, 32.501305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718346, 30.070560, 31.933048>,  <40.393505, 29.656998, 32.030079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718346, 30.070560, 31.933048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994202, 30.287464, 32.125027>,  <40.159718, 30.417606, 32.240215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994202, 30.287464, 32.125027>,  <39.718346, 30.070560, 31.933048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994202, 30.287464, 32.125027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077335, 0.603830, -0.793353,
		-0.720009, 0.584246, 0.374491,
		0.689642, 0.542260, 0.479946,
		40.201096, 30.450142, 32.269009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541138, 30.875452, 32.039127>,  <39.718346, 30.070560, 31.933048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541138, 30.875452, 32.039127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920540, 30.755981, 31.996943>,  <40.148182, 30.684299, 31.971630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920540, 30.755981, 31.996943>,  <39.541138, 30.875452, 32.039127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920540, 30.755981, 31.996943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052356, 0.476216, -0.877768,
		0.312391, 0.827050, 0.467333,
		0.948510, -0.298674, -0.105465,
		40.205093, 30.666380, 31.965303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037998, 31.331953, 32.248722>,  <39.541138, 30.875452, 32.039127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037998, 31.331953, 32.248722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411098, 31.393860, 32.378967>,  <39.634960, 31.431004, 32.457115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411098, 31.393860, 32.378967>,  <39.037998, 31.331953, 32.248722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411098, 31.393860, 32.378967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136990, 0.683276, -0.717195,
		-0.333483, 0.713569, 0.616124,
		0.932750, 0.154769, 0.325613,
		39.690922, 31.440290, 32.476650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289314, 32.040634, 32.504944>,  <39.037998, 31.331953, 32.248722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289314, 32.040634, 32.504944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586113, 31.831276, 32.337376>,  <39.764191, 31.705662, 32.236835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586113, 31.831276, 32.337376>,  <39.289314, 32.040634, 32.504944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586113, 31.831276, 32.337376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081583, 0.690734, -0.718493,
		0.665421, 0.498942, 0.555222,
		0.741997, -0.523396, -0.418924,
		39.808712, 31.674257, 32.211700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793152, 32.521732, 32.334736>,  <39.289314, 32.040634, 32.504944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793152, 32.521732, 32.334736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865147, 32.198299, 32.110664>,  <39.908344, 32.004238, 31.976221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865147, 32.198299, 32.110664>,  <39.793152, 32.521732, 32.334736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865147, 32.198299, 32.110664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260677, 0.588324, -0.765455,
		0.948501, -0.008257, 0.316667,
		0.179983, -0.808583, -0.560178,
		39.919140, 31.955725, 31.942612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355431, 32.671883, 31.880751>,  <39.793152, 32.521732, 32.334736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355431, 32.671883, 31.880751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171467, 32.355572, 31.719179>,  <40.061089, 32.165787, 31.622236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171467, 32.355572, 31.719179>,  <40.355431, 32.671883, 31.880751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171467, 32.355572, 31.719179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238776, 0.328002, -0.914003,
		0.855260, -0.516806, 0.037968,
		-0.459908, -0.790776, -0.403928,
		40.033493, 32.118340, 31.598001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952240, 32.406796, 31.399967>,  <40.355431, 32.671883, 31.880751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952240, 32.406796, 31.399967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595253, 32.271873, 31.280153>,  <40.381062, 32.190918, 31.208265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595253, 32.271873, 31.280153>,  <40.952240, 32.406796, 31.399967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595253, 32.271873, 31.280153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175024, 0.353073, -0.919079,
		0.415774, -0.872674, -0.256069,
		-0.892468, -0.337310, -0.299537,
		40.327511, 32.170681, 31.190292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047665, 32.084175, 30.677225>,  <40.952240, 32.406796, 31.399967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047665, 32.084175, 30.677225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658619, 32.169060, 30.715126>,  <40.425190, 32.219990, 30.737867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658619, 32.169060, 30.715126>,  <41.047665, 32.084175, 30.677225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658619, 32.169060, 30.715126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020619, 0.484890, -0.874332,
		-0.231489, -0.848438, -0.475989,
		-0.972619, 0.212213, 0.094753,
		40.366833, 32.232723, 30.743551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843914, 32.176506, 30.000116>,  <41.047665, 32.084175, 30.677225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843914, 32.176506, 30.000116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519615, 32.317436, 30.187117>,  <40.325035, 32.401997, 30.299316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519615, 32.317436, 30.187117>,  <40.843914, 32.176506, 30.000116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519615, 32.317436, 30.187117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169069, 0.623643, -0.763207,
		-0.560452, -0.697807, -0.446048,
		-0.810746, 0.352328, 0.467500,
		40.276390, 32.423134, 30.327366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538704, 31.899965, 29.749557>,  <40.843914, 32.176506, 30.000116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538704, 31.899965, 29.749557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580791, 31.617525, 30.029657>,  <41.606045, 31.448061, 30.197718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580791, 31.617525, 30.029657>,  <41.538704, 31.899965, 29.749557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580791, 31.617525, 30.029657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556855, -0.541575, -0.629769,
		0.823919, 0.456199, 0.336214,
		0.105215, -0.706101, 0.700251,
		41.612354, 31.405695, 30.239733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164383, 31.654396, 29.788288>,  <41.538704, 31.899965, 29.749557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164383, 31.654396, 29.788288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959515, 31.347864, 29.943426>,  <41.836594, 31.163946, 30.036509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959515, 31.347864, 29.943426>,  <42.164383, 31.654396, 29.788288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959515, 31.347864, 29.943426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496826, -0.632690, -0.594026,
		0.700605, -0.111551, 0.704776,
		-0.512169, -0.766329, 0.387844,
		41.805862, 31.117966, 30.059780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561707, 31.069628, 30.005955>,  <42.164383, 31.654396, 29.788288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561707, 31.069628, 30.005955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197796, 31.004768, 29.853109>,  <41.979450, 30.965853, 29.761402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197796, 31.004768, 29.853109>,  <42.561707, 31.069628, 30.005955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197796, 31.004768, 29.853109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395764, -0.616483, -0.680675,
		-0.125197, -0.770491, 0.625036,
		-0.909778, -0.162149, -0.382114,
		41.924862, 30.956123, 29.738476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741859, 31.616716, 30.503660>,  <42.561707, 31.069628, 30.005955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741859, 31.616716, 30.503660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692913, 31.829668, 30.838707>,  <42.663544, 31.957439, 31.039736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692913, 31.829668, 30.838707>,  <42.741859, 31.616716, 30.503660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692913, 31.829668, 30.838707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924585, -0.245650, 0.291203,
		0.360791, 0.810080, -0.462169,
		-0.122366, 0.532377, 0.837616,
		42.656204, 31.989382, 31.089993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290901, 31.973389, 30.632633>,  <42.741859, 31.616716, 30.503660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290901, 31.973389, 30.632633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142857, 31.999855, 31.003284>,  <43.054028, 32.015736, 31.225676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142857, 31.999855, 31.003284>,  <43.290901, 31.973389, 30.632633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142857, 31.999855, 31.003284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925062, -0.065339, 0.374154,
		0.085301, 0.995667, -0.037026,
		-0.370113, 0.066167, 0.926627,
		43.031822, 32.019707, 31.281273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607475, 32.495041, 30.931593>,  <43.290901, 31.973389, 30.632633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607475, 32.495041, 30.931593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493748, 32.232086, 31.210737>,  <43.425510, 32.074314, 31.378223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493748, 32.232086, 31.210737>,  <43.607475, 32.495041, 30.931593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493748, 32.232086, 31.210737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951848, -0.106498, 0.287478,
		-0.114663, 0.745991, 0.656011,
		-0.284319, -0.657386, 0.697858,
		43.408451, 32.034870, 31.420095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854408, 32.709938, 31.618874>,  <43.607475, 32.495041, 30.931593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854408, 32.709938, 31.618874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772480, 32.319851, 31.652346>,  <43.723324, 32.085800, 31.672430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772480, 32.319851, 31.652346>,  <43.854408, 32.709938, 31.618874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772480, 32.319851, 31.652346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841865, -0.131906, 0.523320,
		-0.499312, 0.177635, 0.848018,
		-0.204819, -0.975216, 0.083682,
		43.711033, 32.027287, 31.677450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032532, 32.356655, 32.296654>,  <43.854408, 32.709938, 31.618874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032532, 32.356655, 32.296654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042698, 32.061127, 32.027287>,  <44.048798, 31.883810, 31.865665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042698, 32.061127, 32.027287>,  <44.032532, 32.356655, 32.296654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042698, 32.061127, 32.027287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815148, -0.374640, 0.441791,
		-0.578696, -0.560166, 0.592727,
		0.025417, -0.738822, -0.673421,
		44.050323, 31.839479, 31.825260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048260, 31.695990, 32.636623>,  <44.032532, 32.356655, 32.296654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048260, 31.695990, 32.636623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198723, 31.650871, 32.268757>,  <44.289001, 31.623800, 32.048038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198723, 31.650871, 32.268757>,  <44.048260, 31.695990, 32.636623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198723, 31.650871, 32.268757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799538, -0.462078, 0.383696,
		-0.468235, -0.879637, -0.083631,
		0.376157, -0.112794, -0.919665,
		44.311569, 31.617033, 31.992857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344391, 32.162678, 33.039509>,  <44.048260, 31.695990, 32.636623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344391, 32.162678, 33.039509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640133, 32.317413, 33.259953>,  <44.817577, 32.410255, 33.392220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640133, 32.317413, 33.259953>,  <44.344391, 32.162678, 33.039509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640133, 32.317413, 33.259953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376244, 0.441424, -0.814607,
		-0.558391, 0.809631, 0.180823,
		0.739351, 0.386836, 0.551106,
		44.861938, 32.433464, 33.425285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479481, 32.909081, 32.979343>,  <44.344391, 32.162678, 33.039509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479481, 32.909081, 32.979343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830441, 32.747772, 33.083302>,  <45.041016, 32.650986, 33.145676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830441, 32.747772, 33.083302>,  <44.479481, 32.909081, 32.979343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830441, 32.747772, 33.083302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448585, 0.497483, -0.742483,
		0.170128, 0.768039, 0.617392,
		0.877398, -0.403270, 0.259895,
		45.093658, 32.626793, 33.161270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024467, 33.471249, 32.912849>,  <44.479481, 32.909081, 32.979343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024467, 33.471249, 32.912849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151203, 33.093262, 32.880203>,  <45.227245, 32.866470, 32.860615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151203, 33.093262, 32.880203>,  <45.024467, 33.471249, 32.912849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151203, 33.093262, 32.880203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496159, 0.238459, -0.834843,
		0.808357, 0.224015, 0.544404,
		0.316836, -0.944963, -0.081613,
		45.246254, 32.809772, 32.855721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685669, 33.542709, 32.770741>,  <45.024467, 33.471249, 32.912849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685669, 33.542709, 32.770741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571129, 33.179668, 32.647926>,  <45.502407, 32.961845, 32.574238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571129, 33.179668, 32.647926>,  <45.685669, 33.542709, 32.770741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571129, 33.179668, 32.647926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412172, 0.172599, -0.894608,
		0.864939, -0.382720, 0.324663,
		-0.286348, -0.907598, -0.307034,
		45.485226, 32.907391, 32.555817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.479939, 33.331787, 32.617001>,  <45.685669, 33.542709, 32.770741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.479939, 33.331787, 32.617001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.274784, 33.540493, 32.344322>,  <46.151691, 33.665718, 32.180717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.274784, 33.540493, 32.344322>,  <46.479939, 33.331787, 32.617001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.274784, 33.540493, 32.344322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379044, 0.574849, 0.725172,
		0.770241, 0.630324, -0.097061,
		-0.512888, 0.521767, -0.681692,
		46.120918, 33.697021, 32.139816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.367184, 33.946583, 32.926216>,  <46.479939, 33.331787, 32.617001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.367184, 33.946583, 32.926216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092415, 33.968166, 32.636326>,  <45.927555, 33.981117, 32.462391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092415, 33.968166, 32.636326>,  <46.367184, 33.946583, 32.926216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092415, 33.968166, 32.636326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510274, 0.674253, 0.533857,
		0.517453, 0.736527, -0.435627,
		-0.686922, 0.053957, -0.724725,
		45.886337, 33.984352, 32.418907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297005, 34.312458, 33.523186>,  <46.367184, 33.946583, 32.926216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297005, 34.312458, 33.523186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007622, 34.099037, 33.698429>,  <45.833992, 33.970985, 33.803574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007622, 34.099037, 33.698429>,  <46.297005, 34.312458, 33.523186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007622, 34.099037, 33.698429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688175, -0.607934, 0.396020,
		0.055043, 0.587996, 0.806989,
		-0.723454, -0.533551, 0.438107,
		45.790585, 33.938972, 33.829861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.573875, 34.274143, 34.183086>,  <46.297005, 34.312458, 33.523186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.573875, 34.274143, 34.183086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332321, 33.973953, 34.075672>,  <46.187389, 33.793839, 34.011223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332321, 33.973953, 34.075672>,  <46.573875, 34.274143, 34.183086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332321, 33.973953, 34.075672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728522, -0.656367, 0.196054,
		-0.323392, -0.077241, 0.943107,
		-0.603881, -0.750477, -0.268535,
		46.151157, 33.748810, 33.995110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.368320, 34.625389, 34.796684>,  <46.573875, 34.274143, 34.183086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.368320, 34.625389, 34.796684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624523, 34.774975, 34.528385>,  <46.778244, 34.864727, 34.367405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624523, 34.774975, 34.528385>,  <46.368320, 34.625389, 34.796684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.624523, 34.774975, 34.528385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743443, -0.083057, 0.663622,
		0.192460, -0.923717, -0.331220,
		0.640509, 0.373963, -0.670746,
		46.816677, 34.887165, 34.327160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492561, 35.426888, 35.018909>,  <46.368320, 34.625389, 34.796684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492561, 35.426888, 35.018909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647793, 35.345051, 34.659458>,  <46.740932, 35.295948, 34.443787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647793, 35.345051, 34.659458>,  <46.492561, 35.426888, 35.018909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.647793, 35.345051, 34.659458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035914, -0.977666, 0.207073,
		-0.920926, -0.048087, -0.386759,
		0.388078, -0.204589, -0.898632,
		46.764217, 35.283672, 34.389870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.956173, 34.951527, 35.094841>,  <46.492561, 35.426888, 35.018909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.956173, 34.951527, 35.094841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220024, 35.157146, 34.875519>,  <47.378334, 35.280518, 34.743923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220024, 35.157146, 34.875519>,  <46.956173, 34.951527, 35.094841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.220024, 35.157146, 34.875519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658577, -0.043781, 0.751239,
		0.362172, -0.856640, -0.367424,
		0.659627, 0.514055, -0.548307,
		47.417912, 35.311363, 34.711025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.567211, 34.578957, 35.048153>,  <46.956173, 34.951527, 35.094841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.567211, 34.578957, 35.048153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626549, 34.972412, 35.007282>,  <47.662151, 35.208485, 34.982761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626549, 34.972412, 35.007282>,  <47.567211, 34.578957, 35.048153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.626549, 34.972412, 35.007282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524073, 0.009426, 0.851621,
		0.838654, -0.179884, -0.514102,
		0.148348, 0.983643, -0.102177,
		47.671055, 35.267506, 34.976627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.382797, 33.315578, 21.065166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054741, 33.178043, 20.882240>,  <39.857906, 33.095524, 20.772486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054741, 33.178043, 20.882240>,  <40.382797, 33.315578, 21.065166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054741, 33.178043, 20.882240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305061, -0.413408, 0.857923,
		-0.484045, 0.843130, 0.234163,
		-0.820145, -0.343839, -0.457314,
		39.808697, 33.074890, 20.745047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887871, 33.421337, 21.530813>,  <40.382797, 33.315578, 21.065166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887871, 33.421337, 21.530813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.707741, 33.169239, 21.277834>,  <39.599663, 33.017979, 21.126045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.707741, 33.169239, 21.277834>,  <39.887871, 33.421337, 21.530813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707741, 33.169239, 21.277834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524255, -0.386734, 0.758678,
		-0.722745, 0.673219, -0.156254,
		-0.450328, -0.630248, -0.632449,
		39.572643, 32.980164, 21.088099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147724, 33.501171, 21.662825>,  <39.887871, 33.421337, 21.530813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147724, 33.501171, 21.662825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192337, 33.141953, 21.492617>,  <39.219105, 32.926422, 21.390491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192337, 33.141953, 21.492617>,  <39.147724, 33.501171, 21.662825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192337, 33.141953, 21.492617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472491, -0.424617, 0.772303,
		-0.874250, 0.114917, -0.471680,
		0.111533, -0.898051, -0.425518,
		39.225796, 32.872536, 21.364962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432129, 33.156990, 21.585207>,  <39.147724, 33.501171, 21.662825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432129, 33.156990, 21.585207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704739, 32.864464, 21.574640>,  <38.868305, 32.688946, 21.568300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704739, 32.864464, 21.574640>,  <38.432129, 33.156990, 21.585207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704739, 32.864464, 21.574640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458901, -0.455218, 0.763012,
		-0.570032, -0.507886, -0.645844,
		0.681523, -0.731320, -0.026420,
		38.909195, 32.645069, 21.566715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067688, 32.586025, 21.775339>,  <38.432129, 33.156990, 21.585207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067688, 32.586025, 21.775339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.447151, 32.467037, 21.818352>,  <38.674828, 32.395645, 21.844160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.447151, 32.467037, 21.818352>,  <38.067688, 32.586025, 21.775339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447151, 32.467037, 21.818352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278556, -0.624603, 0.729573,
		-0.149861, -0.722068, -0.675396,
		0.948656, -0.297470, 0.107533,
		38.731747, 32.377796, 21.850611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099777, 31.904800, 21.711119>,  <38.067688, 32.586025, 21.775339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099777, 31.904800, 21.711119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.415840, 32.002228, 21.936090>,  <38.605476, 32.060684, 22.071074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.415840, 32.002228, 21.936090>,  <38.099777, 31.904800, 21.711119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415840, 32.002228, 21.936090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402567, -0.485708, 0.775904,
		0.462164, -0.839501, -0.285732,
		0.790155, 0.243568, 0.562432,
		38.652885, 32.075298, 22.104820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156002, 31.267101, 22.120253>,  <38.099777, 31.904800, 21.711119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156002, 31.267101, 22.120253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380589, 31.559542, 22.275299>,  <38.515339, 31.735006, 22.368326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380589, 31.559542, 22.275299>,  <38.156002, 31.267101, 22.120253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380589, 31.559542, 22.275299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142357, -0.376097, 0.915579,
		0.815162, -0.569248, -0.107089,
		0.561468, 0.731100, 0.387617,
		38.549030, 31.778872, 22.391584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682110, 30.879427, 22.497702>,  <38.156002, 31.267101, 22.120253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682110, 30.879427, 22.497702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.638729, 31.230711, 22.684029>,  <38.612701, 31.441481, 22.795824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.638729, 31.230711, 22.684029>,  <38.682110, 30.879427, 22.497702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638729, 31.230711, 22.684029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096374, -0.475661, 0.874333,
		0.989419, 0.049934, 0.136225,
		-0.108456, 0.878210, 0.465816,
		38.606194, 31.494175, 22.823774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108234, 30.832867, 23.135780>,  <38.682110, 30.879427, 22.497702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108234, 30.832867, 23.135780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.869808, 31.146206, 23.206285>,  <38.726753, 31.334209, 23.248589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.869808, 31.146206, 23.206285>,  <39.108234, 30.832867, 23.135780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869808, 31.146206, 23.206285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086565, -0.280941, 0.955813,
		0.798252, 0.554473, 0.235271,
		-0.596070, 0.783346, 0.176264,
		38.690987, 31.381210, 23.259165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205803, 31.007900, 23.848364>,  <39.108234, 30.832867, 23.135780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205803, 31.007900, 23.848364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834286, 31.137426, 23.776260>,  <38.611378, 31.215141, 23.732998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834286, 31.137426, 23.776260>,  <39.205803, 31.007900, 23.848364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834286, 31.137426, 23.776260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212096, -0.065561, 0.975047,
		0.303916, 0.943847, 0.129572,
		-0.928790, 0.323814, -0.180261,
		38.555649, 31.234570, 23.722181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122475, 31.618670, 24.231308>,  <39.205803, 31.007900, 23.848364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122475, 31.618670, 24.231308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752895, 31.489588, 24.149160>,  <38.531147, 31.412140, 24.099871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752895, 31.489588, 24.149160>,  <39.122475, 31.618670, 24.231308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752895, 31.489588, 24.149160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211250, -0.017106, 0.977282,
		-0.318884, 0.946346, -0.052366,
		-0.923951, -0.322702, -0.205371,
		38.475712, 31.392776, 24.087549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718552, 32.153446, 24.500463>,  <39.122475, 31.618670, 24.231308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718552, 32.153446, 24.500463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501736, 31.817406, 24.492233>,  <38.371647, 31.615782, 24.487295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501736, 31.817406, 24.492233>,  <38.718552, 32.153446, 24.500463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501736, 31.817406, 24.492233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334842, 0.193460, 0.922201,
		-0.770760, 0.506761, -0.386164,
		-0.542042, -0.840099, -0.020574,
		38.339123, 31.565376, 24.486061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116398, 32.334190, 24.677542>,  <38.718552, 32.153446, 24.500463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116398, 32.334190, 24.677542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089039, 31.939163, 24.734144>,  <38.072624, 31.702147, 24.768106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089039, 31.939163, 24.734144>,  <38.116398, 32.334190, 24.677542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089039, 31.939163, 24.734144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327328, 0.156203, 0.931910,
		-0.942432, 0.017424, -0.333944,
		-0.068401, -0.987571, 0.141508,
		38.068520, 31.642891, 24.776596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530460, 32.280678, 25.015148>,  <38.116398, 32.334190, 24.677542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530460, 32.280678, 25.015148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746128, 31.953568, 25.095682>,  <37.875530, 31.757301, 25.144003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746128, 31.953568, 25.095682>,  <37.530460, 32.280678, 25.015148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746128, 31.953568, 25.095682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184791, 0.118360, 0.975625,
		-0.821672, -0.563235, -0.087301,
		0.539173, -0.817776, 0.201333,
		37.907879, 31.708235, 25.156082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201458, 32.108353, 25.627003>,  <37.530460, 32.280678, 25.015148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201458, 32.108353, 25.627003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539223, 31.894390, 25.638659>,  <37.741882, 31.766012, 25.645653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539223, 31.894390, 25.638659>,  <37.201458, 32.108353, 25.627003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539223, 31.894390, 25.638659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137518, -0.163872, 0.976850,
		-0.517750, -0.828866, -0.211934,
		0.844408, -0.534908, 0.029140,
		37.792545, 31.733917, 25.647400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042900, 31.677431, 26.134863>,  <37.201458, 32.108353, 25.627003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042900, 31.677431, 26.134863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438560, 31.643124, 26.087156>,  <37.675957, 31.622540, 26.058533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438560, 31.643124, 26.087156>,  <37.042900, 31.677431, 26.134863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438560, 31.643124, 26.087156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098760, -0.212797, 0.972092,
		-0.108753, -0.973325, -0.202018,
		0.989151, -0.085767, -0.119268,
		37.735306, 31.617393, 26.051376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212696, 31.110680, 26.559145>,  <37.042900, 31.677431, 26.134863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212696, 31.110680, 26.559145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.567471, 31.290657, 26.517399>,  <37.780334, 31.398643, 26.492352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.567471, 31.290657, 26.517399>,  <37.212696, 31.110680, 26.559145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567471, 31.290657, 26.517399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215413, -0.203069, 0.955176,
		0.408583, -0.869663, -0.277033,
		0.886937, 0.449945, -0.104366,
		37.833553, 31.425640, 26.486090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843391, 30.683397, 26.685032>,  <37.212696, 31.110680, 26.559145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843391, 30.683397, 26.685032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996780, 31.048515, 26.741249>,  <38.088814, 31.267586, 26.774981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996780, 31.048515, 26.741249>,  <37.843391, 30.683397, 26.685032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996780, 31.048515, 26.741249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066909, -0.179236, 0.981528,
		0.921126, -0.366984, -0.129806,
		0.383472, 0.912796, 0.140544,
		38.111820, 31.322353, 26.783413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359501, 30.628490, 27.187603>,  <37.843391, 30.683397, 26.685032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359501, 30.628490, 27.187603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255104, 31.014076, 27.208206>,  <38.192467, 31.245428, 27.220568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255104, 31.014076, 27.208206>,  <38.359501, 30.628490, 27.187603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255104, 31.014076, 27.208206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178759, -0.004173, 0.983884,
		0.948645, 0.265997, -0.171228,
		-0.260995, 0.963965, 0.051508,
		38.176807, 31.303267, 27.223660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852516, 30.794533, 27.639488>,  <38.359501, 30.628490, 27.187603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852516, 30.794533, 27.639488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.546455, 31.051598, 27.623873>,  <38.362820, 31.205835, 27.614504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.546455, 31.051598, 27.623873>,  <38.852516, 30.794533, 27.639488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546455, 31.051598, 27.623873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136197, -0.102298, 0.985386,
		0.629274, 0.759292, 0.165802,
		-0.765156, 0.642660, -0.039040,
		38.316910, 31.244396, 27.612162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888184, 31.040262, 28.277712>,  <38.852516, 30.794533, 27.639488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888184, 31.040262, 28.277712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516777, 31.127642, 28.157625>,  <38.293930, 31.180069, 28.085573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516777, 31.127642, 28.157625>,  <38.888184, 31.040262, 28.277712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516777, 31.127642, 28.157625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327894, -0.103158, 0.939066,
		0.174167, 0.970381, 0.167412,
		-0.928521, 0.218448, -0.300215,
		38.238220, 31.193176, 28.067560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875874, 31.738968, 27.921001>,  <38.888184, 31.040262, 28.277712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875874, 31.738968, 27.921001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200195, 31.690987, 28.150160>,  <39.394787, 31.662199, 28.287655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200195, 31.690987, 28.150160>,  <38.875874, 31.738968, 27.921001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200195, 31.690987, 28.150160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577411, 0.003581, -0.816446,
		0.095882, 0.992773, 0.072165,
		0.810804, -0.119951, 0.572895,
		39.443436, 31.655001, 28.322029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327362, 32.127083, 27.675022>,  <38.875874, 31.738968, 27.921001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327362, 32.127083, 27.675022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549679, 31.864264, 27.878742>,  <39.683067, 31.706573, 28.000975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549679, 31.864264, 27.878742>,  <39.327362, 32.127083, 27.675022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549679, 31.864264, 27.878742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633988, -0.061277, -0.770911,
		0.537731, 0.751357, 0.382501,
		0.555791, -0.657044, 0.509302,
		39.716415, 31.667150, 28.031532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961086, 32.375923, 27.758472>,  <39.327362, 32.127083, 27.675022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961086, 32.375923, 27.758472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039875, 31.985670, 27.797150>,  <40.087147, 31.751518, 27.820356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039875, 31.985670, 27.797150>,  <39.961086, 32.375923, 27.758472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039875, 31.985670, 27.797150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586698, 0.038281, -0.808901,
		0.785486, 0.216058, 0.579940,
		0.196970, -0.975630, 0.096691,
		40.098965, 31.692982, 27.826157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614491, 32.420578, 27.724154>,  <39.961086, 32.375923, 27.758472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614491, 32.420578, 27.724154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.502861, 32.049343, 27.625553>,  <40.435883, 31.826601, 27.566393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.502861, 32.049343, 27.625553>,  <40.614491, 32.420578, 27.724154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502861, 32.049343, 27.625553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707782, -0.025319, -0.705977,
		0.648971, -0.371489, 0.663952,
		-0.279073, -0.928092, -0.246502,
		40.419140, 31.770916, 27.551603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284172, 31.932249, 27.785915>,  <40.614491, 32.420578, 27.724154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284172, 31.932249, 27.785915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.016293, 31.764044, 27.541073>,  <40.855564, 31.663120, 27.394167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.016293, 31.764044, 27.541073>,  <41.284172, 31.932249, 27.785915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016293, 31.764044, 27.541073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714207, -0.138839, -0.686027,
		0.203500, -0.896600, 0.393314,
		-0.669699, -0.420514, -0.612104,
		40.815384, 31.637890, 27.357441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815060, 31.560818, 27.285368>,  <41.284172, 31.932249, 27.785915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815060, 31.560818, 27.285368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.451546, 31.525421, 27.122259>,  <41.233437, 31.504183, 27.024393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.451546, 31.525421, 27.122259>,  <41.815060, 31.560818, 27.285368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451546, 31.525421, 27.122259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414334, -0.307026, -0.856775,
		-0.049378, -0.947578, 0.315687,
		-0.908785, -0.088494, -0.407774,
		41.178909, 31.498873, 26.999928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735172, 30.874798, 26.914776>,  <41.815060, 31.560818, 27.285368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735172, 30.874798, 26.914776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.494240, 31.143148, 26.741745>,  <41.349682, 31.304159, 26.637926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.494240, 31.143148, 26.741745>,  <41.735172, 30.874798, 26.914776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494240, 31.143148, 26.741745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401887, -0.213359, -0.890486,
		-0.689703, -0.710211, -0.141105,
		-0.602326, 0.670879, -0.432579,
		41.313541, 31.344412, 26.611971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456272, 30.587204, 26.256773>,  <41.735172, 30.874798, 26.914776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456272, 30.587204, 26.256773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375031, 30.972742, 26.187784>,  <41.326286, 31.204065, 26.146391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375031, 30.972742, 26.187784>,  <41.456272, 30.587204, 26.256773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375031, 30.972742, 26.187784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120873, -0.150118, -0.981251,
		-0.971668, -0.220143, -0.086013,
		-0.203104, 0.963847, -0.172474,
		41.314098, 31.261896, 26.136042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010456, 30.508709, 25.660864>,  <41.456272, 30.587204, 26.256773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010456, 30.508709, 25.660864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.125462, 30.890520, 25.692387>,  <41.194466, 31.119608, 25.711300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.125462, 30.890520, 25.692387>,  <41.010456, 30.508709, 25.660864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125462, 30.890520, 25.692387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070816, 0.060872, -0.995630,
		-0.955155, 0.291838, -0.050095,
		0.287514, 0.954529, 0.078809,
		41.211716, 31.176878, 25.716030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684536, 30.809904, 25.122154>,  <41.010456, 30.508709, 25.660864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684536, 30.809904, 25.122154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.974575, 31.070477, 25.211479>,  <41.148598, 31.226820, 25.265074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.974575, 31.070477, 25.211479>,  <40.684536, 30.809904, 25.122154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974575, 31.070477, 25.211479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197714, 0.113698, -0.973644,
		-0.659652, 0.750140, -0.046355,
		0.725099, 0.651431, 0.223314,
		41.192104, 31.265905, 25.278473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618423, 31.336800, 24.651991>,  <40.684536, 30.809904, 25.122154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618423, 31.336800, 24.651991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.989449, 31.406973, 24.783964>,  <41.212063, 31.449078, 24.863148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.989449, 31.406973, 24.783964>,  <40.618423, 31.336800, 24.651991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989449, 31.406973, 24.783964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287341, 0.229597, -0.929903,
		-0.238888, 0.957344, 0.162556,
		0.927560, 0.175434, 0.329933,
		41.267715, 31.459602, 24.882944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813885, 32.040276, 24.556597>,  <40.618423, 31.336800, 24.651991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813885, 32.040276, 24.556597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.147438, 31.819504, 24.558243>,  <41.347569, 31.687040, 24.559231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.147438, 31.819504, 24.558243>,  <40.813885, 32.040276, 24.556597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147438, 31.819504, 24.558243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194102, 0.286261, -0.938285,
		0.516690, 0.783216, 0.345838,
		0.833880, -0.551931, 0.004116,
		41.397602, 31.653925, 24.559477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286972, 32.494255, 24.157534>,  <40.813885, 32.040276, 24.556597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286972, 32.494255, 24.157534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.451683, 32.130138, 24.174566>,  <41.550510, 31.911669, 24.184786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.451683, 32.130138, 24.174566>,  <41.286972, 32.494255, 24.157534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451683, 32.130138, 24.174566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355903, 0.117628, -0.927090,
		0.838912, 0.396908, 0.372411,
		0.411776, -0.910290, 0.042581,
		41.575214, 31.857052, 24.187340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905102, 32.645481, 23.903841>,  <41.286972, 32.494255, 24.157534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905102, 32.645481, 23.903841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.861710, 32.251503, 23.850018>,  <41.835674, 32.015114, 23.817722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.861710, 32.251503, 23.850018>,  <41.905102, 32.645481, 23.903841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861710, 32.251503, 23.850018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558207, 0.051653, -0.828092,
		0.822580, -0.164942, 0.544203,
		-0.108478, -0.984950, -0.134560,
		41.829166, 31.956018, 23.809649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525303, 32.375214, 23.745934>,  <41.905102, 32.645481, 23.903841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525303, 32.375214, 23.745934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.276680, 32.093784, 23.608149>,  <42.127506, 31.924927, 23.525476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.276680, 32.093784, 23.608149>,  <42.525303, 32.375214, 23.745934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276680, 32.093784, 23.608149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449098, 0.040252, -0.892575,
		0.641855, -0.709485, 0.290953,
		-0.621557, -0.703570, -0.344464,
		42.090214, 31.882713, 23.504810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920193, 31.981567, 23.179552>,  <42.525303, 32.375214, 23.745934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920193, 31.981567, 23.179552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.534138, 31.895103, 23.120510>,  <42.302505, 31.843225, 23.085085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.534138, 31.895103, 23.120510>,  <42.920193, 31.981567, 23.179552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534138, 31.895103, 23.120510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134436, 0.074484, -0.988119,
		0.224588, -0.973512, -0.042827,
		-0.965136, -0.216162, -0.147603,
		42.244598, 31.830256, 23.076229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900295, 31.600927, 22.614719>,  <42.920193, 31.981567, 23.179552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900295, 31.600927, 22.614719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.522541, 31.722485, 22.664965>,  <42.295887, 31.795420, 22.695112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.522541, 31.722485, 22.664965>,  <42.900295, 31.600927, 22.614719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522541, 31.722485, 22.664965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067827, 0.193766, -0.978700,
		-0.321760, -0.932793, -0.162379,
		-0.944388, 0.303893, 0.125615,
		42.239223, 31.813652, 22.702648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471786, 31.266703, 22.034437>,  <42.900295, 31.600927, 22.614719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471786, 31.266703, 22.034437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.298515, 31.600548, 22.170544>,  <42.194553, 31.800856, 22.252207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.298515, 31.600548, 22.170544>,  <42.471786, 31.266703, 22.034437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298515, 31.600548, 22.170544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093979, 0.333641, -0.938004,
		-0.896397, -0.438297, -0.066088,
		-0.433174, 0.834613, 0.340266,
		42.168564, 31.850931, 22.272623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934349, 31.330851, 21.591948>,  <42.471786, 31.266703, 22.034437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934349, 31.330851, 21.591948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.980770, 31.696915, 21.746357>,  <42.008621, 31.916553, 21.839003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.980770, 31.696915, 21.746357>,  <41.934349, 31.330851, 21.591948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980770, 31.696915, 21.746357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262268, 0.403092, -0.876774,
		-0.957991, 0.000508, 0.286797,
		0.116051, 0.915159, 0.386026,
		42.015587, 31.971462, 21.862165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.393730, 31.791868, 21.366970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.690933, 32.044102, 21.456690>,  <41.869255, 32.195442, 21.510521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.690933, 32.044102, 21.456690>,  <41.393730, 31.791868, 21.366970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690933, 32.044102, 21.456690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258776, 0.579734, -0.772621,
		-0.617237, 0.516016, 0.593924,
		0.743003, 0.630584, 0.224300,
		41.913834, 32.233276, 21.523979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071075, 32.412590, 21.328575>,  <41.393730, 31.791868, 21.366970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071075, 32.412590, 21.328575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.462559, 32.488678, 21.297750>,  <41.697449, 32.534332, 21.279255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.462559, 32.488678, 21.297750>,  <41.071075, 32.412590, 21.328575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462559, 32.488678, 21.297750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161504, 0.482103, -0.861100,
		-0.126648, 0.855215, 0.502561,
		0.978712, 0.190222, -0.077063,
		41.756172, 32.545746, 21.274632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038536, 33.049873, 21.167767>,  <41.071075, 32.412590, 21.328575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038536, 33.049873, 21.167767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.422318, 32.991467, 21.071329>,  <41.652588, 32.956425, 21.013468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.422318, 32.991467, 21.071329>,  <41.038536, 33.049873, 21.167767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422318, 32.991467, 21.071329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068896, 0.707922, -0.702923,
		0.273310, 0.691033, 0.669159,
		0.959455, -0.146014, -0.241091,
		41.710155, 32.947662, 20.999002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364307, 33.666767, 21.071136>,  <41.038536, 33.049873, 21.167767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364307, 33.666767, 21.071136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.643658, 33.460796, 20.872290>,  <41.811268, 33.337215, 20.752981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.643658, 33.460796, 20.872290>,  <41.364307, 33.666767, 21.071136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643658, 33.460796, 20.872290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231241, 0.819638, -0.524139,
		0.677346, 0.251093, 0.691488,
		0.698377, -0.514924, -0.497115,
		41.853172, 33.306320, 20.723156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871674, 34.146000, 20.893404>,  <41.364307, 33.666767, 21.071136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871674, 34.146000, 20.893404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.906750, 33.862896, 20.613008>,  <41.927795, 33.693031, 20.444771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.906750, 33.862896, 20.613008>,  <41.871674, 34.146000, 20.893404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906750, 33.862896, 20.613008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158110, 0.704667, -0.691697,
		0.983519, -0.050175, 0.173700,
		0.087695, -0.707762, -0.700987,
		41.933060, 33.650566, 20.402712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370346, 34.401142, 20.472628>,  <41.871674, 34.146000, 20.893404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370346, 34.401142, 20.472628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.198917, 34.116337, 20.250147>,  <42.096058, 33.945454, 20.116657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.198917, 34.116337, 20.250147>,  <42.370346, 34.401142, 20.472628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198917, 34.116337, 20.250147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006233, 0.617921, -0.786215,
		0.903485, -0.333485, -0.269263,
		-0.428575, -0.712012, -0.556204,
		42.070347, 33.902733, 20.083286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797543, 34.392071, 19.811607>,  <42.370346, 34.401142, 20.472628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797543, 34.392071, 19.811607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.457542, 34.208897, 19.707462>,  <42.253544, 34.098991, 19.644976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.457542, 34.208897, 19.707462>,  <42.797543, 34.392071, 19.811607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457542, 34.208897, 19.707462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023165, 0.526271, -0.850001,
		0.526271, -0.716471, -0.457939,
		0.850001, 0.457939, 0.260364,
		42.202541, 34.071514, 19.629353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801842, 34.417477, 19.086454>,  <42.797543, 34.392071, 19.811607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801842, 34.417477, 19.086454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.411118, 34.386456, 19.166279>,  <42.176682, 34.367844, 19.214174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.411118, 34.386456, 19.166279>,  <42.801842, 34.417477, 19.086454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411118, 34.386456, 19.166279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206913, 0.581415, -0.786857,
		-0.055010, -0.809903, -0.583978,
		-0.976812, -0.077548, 0.199563,
		42.118073, 34.363190, 19.226149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544720, 34.067875, 18.576323>,  <42.801842, 34.417477, 19.086454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544720, 34.067875, 18.576323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.236683, 34.277218, 18.722229>,  <42.051861, 34.402824, 18.809772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.236683, 34.277218, 18.722229>,  <42.544720, 34.067875, 18.576323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236683, 34.277218, 18.722229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199939, 0.344973, -0.917070,
		-0.605789, -0.779161, -0.161022,
		-0.770094, 0.523357, 0.364766,
		42.005653, 34.434223, 18.831659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036255, 33.899029, 18.038555>,  <42.544720, 34.067875, 18.576323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036255, 33.899029, 18.038555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.911667, 34.229637, 18.226107>,  <41.836914, 34.428001, 18.338636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.911667, 34.229637, 18.226107>,  <42.036255, 33.899029, 18.038555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911667, 34.229637, 18.226107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284413, 0.389718, -0.875916,
		-0.906694, -0.406179, 0.113688,
		-0.311473, 0.826522, 0.468877,
		41.818226, 34.477592, 18.366770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389107, 34.201042, 17.670246>,  <42.036255, 33.899029, 18.038555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389107, 34.201042, 17.670246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.535820, 34.502949, 17.887796>,  <41.623848, 34.684093, 18.018326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.535820, 34.502949, 17.887796>,  <41.389107, 34.201042, 17.670246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535820, 34.502949, 17.887796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172018, 0.629560, -0.757670,
		-0.914265, 0.184344, 0.360744,
		0.366782, 0.754766, 0.543874,
		41.645855, 34.729378, 18.050959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881763, 34.781925, 17.531225>,  <41.389107, 34.201042, 17.670246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881763, 34.781925, 17.531225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.227333, 34.936817, 17.660030>,  <41.434673, 35.029751, 17.737314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.227333, 34.936817, 17.660030>,  <40.881763, 34.781925, 17.531225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227333, 34.936817, 17.660030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004396, 0.645162, -0.764033,
		-0.503607, 0.658649, 0.559072,
		0.863921, 0.387231, 0.322013,
		41.486511, 35.052986, 17.756634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825718, 35.487961, 17.610302>,  <40.881763, 34.781925, 17.531225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825718, 35.487961, 17.610302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.221008, 35.449802, 17.562439>,  <41.458183, 35.426907, 17.533720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.221008, 35.449802, 17.562439>,  <40.825718, 35.487961, 17.610302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221008, 35.449802, 17.562439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010012, 0.820566, -0.571464,
		0.152701, 0.563535, 0.811857,
		0.988222, -0.095392, -0.119659,
		41.517475, 35.421185, 17.526541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114861, 36.086361, 17.688715>,  <40.825718, 35.487961, 17.610302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114861, 36.086361, 17.688715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.411140, 35.903072, 17.492186>,  <41.588909, 35.793098, 17.374268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.411140, 35.903072, 17.492186>,  <41.114861, 36.086361, 17.688715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411140, 35.903072, 17.492186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063872, 0.776025, -0.627460,
		0.668796, 0.433376, 0.604067,
		0.740697, -0.458226, -0.491322,
		41.633350, 35.765606, 17.344790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459984, 36.619514, 17.392159>,  <41.114861, 36.086361, 17.688715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459984, 36.619514, 17.392159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.604458, 36.319160, 17.170992>,  <41.691143, 36.138947, 17.038292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.604458, 36.319160, 17.170992>,  <41.459984, 36.619514, 17.392159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604458, 36.319160, 17.170992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111735, 0.623519, -0.773782,
		0.925777, 0.217695, 0.309104,
		0.361181, -0.750888, -0.552916,
		41.712811, 36.093895, 17.005117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037842, 36.884254, 17.070103>,  <41.459984, 36.619514, 17.392159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037842, 36.884254, 17.070103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.932995, 36.567204, 16.849909>,  <41.870087, 36.376972, 16.717793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.932995, 36.567204, 16.849909>,  <42.037842, 36.884254, 17.070103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932995, 36.567204, 16.849909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061325, 0.582954, -0.810188,
		0.963086, -0.178604, -0.201409,
		-0.262115, -0.792632, -0.550482,
		41.854359, 36.329414, 16.684765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703903, 36.779221, 16.734957>,  <42.037842, 36.884254, 17.070103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703903, 36.779221, 16.734957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.412418, 36.613110, 16.517139>,  <42.237530, 36.513443, 16.386448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.412418, 36.613110, 16.517139>,  <42.703903, 36.779221, 16.734957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412418, 36.613110, 16.517139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337256, 0.474431, -0.813126,
		0.596023, -0.776182, -0.205666,
		-0.728708, -0.415280, -0.544544,
		42.193806, 36.488525, 16.353777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047443, 36.527790, 16.050203>,  <42.703903, 36.779221, 16.734957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047443, 36.527790, 16.050203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.656364, 36.597431, 16.003212>,  <42.421719, 36.639217, 15.975017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.656364, 36.597431, 16.003212>,  <43.047443, 36.527790, 16.050203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656364, 36.597431, 16.003212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181556, 0.419355, -0.889482,
		-0.105596, -0.890971, -0.441610,
		-0.977694, 0.174103, -0.117479,
		42.363056, 36.649662, 15.967968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868473, 36.342983, 15.422953>,  <43.047443, 36.527790, 16.050203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868473, 36.342983, 15.422953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.567741, 36.586948, 15.523163>,  <42.387302, 36.733330, 15.583289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.567741, 36.586948, 15.523163>,  <42.868473, 36.342983, 15.422953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567741, 36.586948, 15.523163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089093, 0.470434, -0.877926,
		-0.653317, -0.637726, -0.408023,
		-0.751825, 0.609916, 0.250526,
		42.342194, 36.769924, 15.598321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572563, 36.403931, 14.792741>,  <42.868473, 36.342983, 15.422953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572563, 36.403931, 14.792741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.422607, 36.697723, 15.019012>,  <42.332634, 36.874001, 15.154776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.422607, 36.697723, 15.019012>,  <42.572563, 36.403931, 14.792741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422607, 36.697723, 15.019012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245044, 0.666986, -0.703622,
		-0.894098, -0.125164, -0.430027,
		-0.374890, 0.734482, 0.565680,
		42.310139, 36.918068, 15.188717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247776, 36.789555, 14.314672>,  <42.572563, 36.403931, 14.792741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247776, 36.789555, 14.314672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.247604, 37.072594, 14.597317>,  <42.247501, 37.242416, 14.766904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.247604, 37.072594, 14.597317>,  <42.247776, 36.789555, 14.314672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247604, 37.072594, 14.597317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211773, 0.690650, -0.691488,
		-0.977319, 0.149348, -0.150143,
		-0.000424, 0.707600, 0.706613,
		42.247478, 37.284874, 14.809300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845451, 37.298752, 14.101696>,  <42.247776, 36.789555, 14.314672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845451, 37.298752, 14.101696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.094955, 37.484062, 14.353504>,  <42.244659, 37.595249, 14.504589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.094955, 37.484062, 14.353504>,  <41.845451, 37.298752, 14.101696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094955, 37.484062, 14.353504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027155, 0.792082, -0.609811,
		-0.781140, 0.397473, 0.481492,
		0.623765, 0.463273, 0.629520,
		42.282085, 37.623043, 14.542360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258324, 36.796738, 13.951225>,  <41.845451, 37.298752, 14.101696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258324, 36.796738, 13.951225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.934963, 36.625351, 14.112671>,  <40.740948, 36.522518, 14.209538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.934963, 36.625351, 14.112671>,  <41.258324, 36.796738, 13.951225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934963, 36.625351, 14.112671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587079, 0.537134, -0.605662,
		0.042709, -0.726572, -0.685762,
		-0.808403, -0.428464, 0.403614,
		40.692444, 36.496811, 14.233755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638496, 36.834099, 13.502273>,  <41.258324, 36.796738, 13.951225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638496, 36.834099, 13.502273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.673763, 36.750275, 13.112747>,  <40.694923, 36.699982, 12.879032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.673763, 36.750275, 13.112747>,  <40.638496, 36.834099, 13.502273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673763, 36.750275, 13.112747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987907, 0.106778, -0.112418,
		0.127540, 0.971948, -0.197610,
		0.088164, -0.209558, -0.973813,
		40.700211, 36.687408, 12.820603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977989, 36.736607, 13.453277>,  <40.638496, 36.834099, 13.502273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977989, 36.736607, 13.453277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.579971, 36.753948, 13.417473>,  <39.341160, 36.764355, 13.395990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.579971, 36.753948, 13.417473>,  <39.977989, 36.736607, 13.453277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579971, 36.753948, 13.417473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092131, -0.062817, 0.993764,
		0.037462, 0.997083, 0.066500,
		-0.995042, 0.043355, -0.089509,
		39.281460, 36.766956, 13.390620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644291, 37.153217, 14.069314>,  <39.977989, 36.736607, 13.453277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644291, 37.153217, 14.069314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402164, 36.863007, 13.938350>,  <39.256889, 36.688881, 13.859771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402164, 36.863007, 13.938350>,  <39.644291, 37.153217, 14.069314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402164, 36.863007, 13.938350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084219, -0.350645, 0.932714,
		-0.791514, 0.592165, 0.151150,
		-0.605321, -0.725527, -0.327412,
		39.220570, 36.645348, 13.840126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087566, 37.142662, 14.495815>,  <39.644291, 37.153217, 14.069314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087566, 37.142662, 14.495815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056553, 36.771000, 14.351224>,  <39.037945, 36.548004, 14.264469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056553, 36.771000, 14.351224>,  <39.087566, 37.142662, 14.495815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056553, 36.771000, 14.351224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157712, -0.346574, 0.924669,
		-0.984437, 0.128704, -0.119667,
		-0.077535, -0.929151, -0.361478,
		39.033291, 36.492256, 14.242781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542747, 36.794476, 14.912322>,  <39.087566, 37.142662, 14.495815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542747, 36.794476, 14.912322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.739765, 36.484703, 14.753502>,  <38.857975, 36.298840, 14.658210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.739765, 36.484703, 14.753502>,  <38.542747, 36.794476, 14.912322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739765, 36.484703, 14.753502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129259, -0.516269, 0.846616,
		-0.860633, -0.365676, -0.354390,
		0.492548, -0.774434, -0.397051,
		38.887531, 36.252373, 14.634387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206593, 36.177765, 15.126729>,  <38.542747, 36.794476, 14.912322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206593, 36.177765, 15.126729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577763, 36.056450, 15.040039>,  <38.800465, 35.983662, 14.988025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577763, 36.056450, 15.040039>,  <38.206593, 36.177765, 15.126729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577763, 36.056450, 15.040039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061873, -0.448024, 0.891878,
		-0.367590, -0.841008, -0.396969,
		0.927928, -0.303284, -0.216724,
		38.856140, 35.965466, 14.975021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191833, 35.472992, 15.028143>,  <38.206593, 36.177765, 15.126729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191833, 35.472992, 15.028143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.544540, 35.617943, 15.148920>,  <38.756165, 35.704914, 15.221386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.544540, 35.617943, 15.148920>,  <38.191833, 35.472992, 15.028143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544540, 35.617943, 15.148920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088653, -0.501408, 0.860657,
		0.463276, -0.785669, -0.410000,
		0.881769, 0.362374, 0.301942,
		38.809071, 35.726654, 15.239503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590668, 34.902565, 15.315062>,  <38.191833, 35.472992, 15.028143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590668, 34.902565, 15.315062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775928, 35.225307, 15.461747>,  <38.887085, 35.418953, 15.549758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775928, 35.225307, 15.461747>,  <38.590668, 34.902565, 15.315062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775928, 35.225307, 15.461747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081566, -0.450816, 0.888882,
		0.882517, -0.381777, -0.274608,
		0.463153, 0.806853, 0.366713,
		38.914875, 35.467361, 15.571761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144878, 34.702736, 15.732093>,  <38.590668, 34.902565, 15.315062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144878, 34.702736, 15.732093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.164516, 35.090191, 15.829527>,  <39.176300, 35.322662, 15.887987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.164516, 35.090191, 15.829527>,  <39.144878, 34.702736, 15.732093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164516, 35.090191, 15.829527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085906, -0.247071, 0.965182,
		0.995093, -0.026461, -0.095341,
		0.049096, 0.968636, 0.243585,
		39.179245, 35.380783, 15.902602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737209, 34.717243, 16.210609>,  <39.144878, 34.702736, 15.732093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737209, 34.717243, 16.210609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507019, 35.036167, 16.283413>,  <39.368904, 35.227520, 16.327095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507019, 35.036167, 16.283413>,  <39.737209, 34.717243, 16.210609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507019, 35.036167, 16.283413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185953, -0.089155, 0.978505,
		0.796395, 0.596954, -0.096955,
		-0.575479, 0.797306, 0.182008,
		39.334373, 35.275360, 16.338015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162090, 35.176586, 16.570929>,  <39.737209, 34.717243, 16.210609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162090, 35.176586, 16.570929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777882, 35.260303, 16.644238>,  <39.547356, 35.310535, 16.688223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777882, 35.260303, 16.644238>,  <40.162090, 35.176586, 16.570929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777882, 35.260303, 16.644238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119865, -0.283141, 0.951559,
		0.251047, 0.935963, 0.246877,
		-0.960525, 0.209294, 0.183270,
		39.489723, 35.323093, 16.699219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163460, 35.269485, 17.325405>,  <40.162090, 35.176586, 16.570929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163460, 35.269485, 17.325405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765499, 35.295883, 17.294895>,  <39.526722, 35.311722, 17.276590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765499, 35.295883, 17.294895>,  <40.163460, 35.269485, 17.325405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765499, 35.295883, 17.294895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098802, -0.485699, 0.868525,
		0.020271, 0.871632, 0.489742,
		-0.994901, 0.065993, -0.076274,
		39.467030, 35.315681, 17.272013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903030, 35.614723, 17.901947>,  <40.163460, 35.269485, 17.325405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903030, 35.614723, 17.901947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646973, 35.347935, 17.749445>,  <39.493336, 35.187862, 17.657944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646973, 35.347935, 17.749445>,  <39.903030, 35.614723, 17.901947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646973, 35.347935, 17.749445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116637, -0.406137, 0.906338,
		-0.759346, 0.624659, 0.182195,
		-0.640148, -0.666973, -0.381256,
		39.454929, 35.147842, 17.635069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385082, 35.608837, 18.401705>,  <39.903030, 35.614723, 17.901947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385082, 35.608837, 18.401705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374546, 35.276886, 18.178778>,  <39.368225, 35.077713, 18.045021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374546, 35.276886, 18.178778>,  <39.385082, 35.608837, 18.401705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374546, 35.276886, 18.178778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121987, -0.550676, 0.825757,
		-0.992182, 0.089740, -0.086727,
		-0.026344, -0.829881, -0.557318,
		39.366642, 35.027920, 18.011581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765999, 35.230648, 18.648354>,  <39.385082, 35.608837, 18.401705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765999, 35.230648, 18.648354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.024986, 34.975998, 18.480785>,  <39.180378, 34.823208, 18.380245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.024986, 34.975998, 18.480785>,  <38.765999, 35.230648, 18.648354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024986, 34.975998, 18.480785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070426, -0.597324, 0.798902,
		-0.758835, -0.487758, -0.431582,
		0.647465, -0.636629, -0.418919,
		39.219227, 34.785007, 18.355110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475296, 34.657963, 18.755423>,  <38.765999, 35.230648, 18.648354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475296, 34.657963, 18.755423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851376, 34.550121, 18.672155>,  <39.077023, 34.485416, 18.622194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851376, 34.550121, 18.672155>,  <38.475296, 34.657963, 18.755423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851376, 34.550121, 18.672155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036446, -0.687268, 0.725489,
		-0.338662, -0.674519, -0.655997,
		0.940202, -0.269604, -0.208168,
		39.133438, 34.469238, 18.609705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525417, 33.950726, 18.765621>,  <38.475296, 34.657963, 18.755423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525417, 33.950726, 18.765621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916931, 34.026588, 18.796635>,  <39.151840, 34.072105, 18.815243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916931, 34.026588, 18.796635>,  <38.525417, 33.950726, 18.765621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916931, 34.026588, 18.796635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074792, -0.683026, 0.726555,
		0.190753, -0.705342, -0.682720,
		0.978785, 0.189655, 0.077536,
		39.210567, 34.083485, 18.819895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810429, 33.297966, 18.875420>,  <38.525417, 33.950726, 18.765621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810429, 33.297966, 18.875420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081707, 33.564861, 18.998610>,  <39.244473, 33.724998, 19.072523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081707, 33.564861, 18.998610>,  <38.810429, 33.297966, 18.875420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081707, 33.564861, 18.998610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365373, -0.669763, 0.646468,
		0.637619, -0.325902, -0.698019,
		0.678192, 0.667237, 0.307977,
		39.285164, 33.765034, 19.091003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525715, 33.049221, 18.740551>,  <38.810429, 33.297966, 18.875420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525715, 33.049221, 18.740551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515026, 33.292107, 19.058187>,  <39.508614, 33.437836, 19.248770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515026, 33.292107, 19.058187>,  <39.525715, 33.049221, 18.740551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515026, 33.292107, 19.058187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255655, -0.763805, 0.592657,
		0.966399, 0.218849, -0.134828,
		-0.026720, 0.607212, 0.794090,
		39.507011, 33.474270, 19.296415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093475, 32.811214, 19.272913>,  <39.525715, 33.049221, 18.740551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093475, 32.811214, 19.272913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858021, 33.055412, 19.484877>,  <39.716747, 33.201931, 19.612055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858021, 33.055412, 19.484877>,  <40.093475, 32.811214, 19.272913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858021, 33.055412, 19.484877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075765, -0.610954, 0.788032,
		0.804841, 0.504011, 0.313375,
		-0.588635, 0.610498, 0.529908,
		39.681431, 33.238560, 19.643848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440025, 32.768097, 19.923588>,  <40.093475, 32.811214, 19.272913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440025, 32.768097, 19.923588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.074535, 32.914272, 19.994648>,  <39.855240, 33.001976, 20.037283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.074535, 32.914272, 19.994648>,  <40.440025, 32.768097, 19.923588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074535, 32.914272, 19.994648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054576, -0.543618, 0.837556,
		0.402649, 0.755601, 0.516663,
		-0.913726, 0.365439, 0.177650,
		39.800419, 33.023903, 20.047943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.151592, 30.746899, 24.295643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.989830, 31.111311, 24.263437>,  <41.892773, 31.329958, 24.244114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.989830, 31.111311, 24.263437>,  <42.151592, 30.746899, 24.295643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989830, 31.111311, 24.263437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201508, -0.002886, 0.979483,
		0.892106, 0.412329, 0.184747,
		-0.404402, 0.911031, -0.080513,
		41.868511, 31.384621, 24.239283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609589, 31.200006, 24.654444>,  <42.151592, 30.746899, 24.295643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609589, 31.200006, 24.654444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.226490, 31.310310, 24.621742>,  <41.996632, 31.376493, 24.602121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.226490, 31.310310, 24.621742>,  <42.609589, 31.200006, 24.654444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226490, 31.310310, 24.621742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105513, -0.072428, 0.991777,
		0.267573, 0.958494, 0.098464,
		-0.957743, 0.275762, -0.081754,
		41.939167, 31.393040, 24.597216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488930, 31.528515, 25.231922>,  <42.609589, 31.200006, 24.654444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488930, 31.528515, 25.231922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.107967, 31.504940, 25.112284>,  <41.879391, 31.490795, 25.040501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.107967, 31.504940, 25.112284>,  <42.488930, 31.528515, 25.231922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107967, 31.504940, 25.112284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297796, -0.029930, 0.954160,
		-0.065186, 0.997813, 0.010954,
		-0.952401, -0.058935, -0.299096,
		41.822247, 31.487259, 25.022554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176067, 32.076290, 25.494057>,  <42.488930, 31.528515, 25.231922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176067, 32.076290, 25.494057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855721, 31.842979, 25.439793>,  <41.663513, 31.702993, 25.407234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855721, 31.842979, 25.439793>,  <42.176067, 32.076290, 25.494057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855721, 31.842979, 25.439793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265787, 0.143209, 0.953335,
		-0.536629, 0.799551, -0.269718,
		-0.800866, -0.583275, -0.135660,
		41.615459, 31.667997, 25.399096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510185, 32.440971, 25.643063>,  <42.176067, 32.076290, 25.494057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510185, 32.440971, 25.643063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.456440, 32.047352, 25.689693>,  <41.424191, 31.811180, 25.717672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.456440, 32.047352, 25.689693>,  <41.510185, 32.440971, 25.643063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456440, 32.047352, 25.689693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309694, 0.153455, 0.938372,
		-0.941294, 0.089983, -0.325374,
		-0.134368, -0.984050, 0.116579,
		41.416130, 31.752136, 25.724667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958252, 32.500977, 26.074295>,  <41.510185, 32.440971, 25.643063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958252, 32.500977, 26.074295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044319, 32.110355, 26.071419>,  <41.095959, 31.875984, 26.069693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044319, 32.110355, 26.071419>,  <40.958252, 32.500977, 26.074295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044319, 32.110355, 26.071419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542366, -0.125619, 0.830698,
		-0.812121, -0.174843, -0.556677,
		0.215171, -0.976550, -0.007189,
		41.108871, 31.817390, 26.069262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315228, 32.149616, 26.267050>,  <40.958252, 32.500977, 26.074295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315228, 32.149616, 26.267050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.610634, 31.896290, 26.359579>,  <40.787876, 31.744295, 26.415096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.610634, 31.896290, 26.359579>,  <40.315228, 32.149616, 26.267050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610634, 31.896290, 26.359579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462451, -0.226121, 0.857327,
		-0.490650, -0.740123, -0.459870,
		0.738513, -0.633314, 0.231324,
		40.832188, 31.706295, 26.428976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986980, 31.662207, 26.465282>,  <40.315228, 32.149616, 26.267050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986980, 31.662207, 26.465282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347500, 31.582581, 26.619186>,  <40.563812, 31.534805, 26.711529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347500, 31.582581, 26.619186>,  <39.986980, 31.662207, 26.465282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347500, 31.582581, 26.619186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417987, -0.166250, 0.893111,
		-0.113820, -0.965782, -0.233047,
		0.901295, -0.199065, 0.384762,
		40.617889, 31.522861, 26.734615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987617, 30.948240, 26.682564>,  <39.986980, 31.662207, 26.465282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987617, 30.948240, 26.682564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251358, 31.165195, 26.890820>,  <40.409603, 31.295368, 27.015774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251358, 31.165195, 26.890820>,  <39.987617, 30.948240, 26.682564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251358, 31.165195, 26.890820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470319, -0.242700, 0.848468,
		0.586558, -0.804308, 0.095070,
		0.659356, 0.542389, 0.520639,
		40.449165, 31.327911, 27.047010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288956, 30.498316, 27.265654>,  <39.987617, 30.948240, 26.682564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288956, 30.498316, 27.265654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.330967, 30.883978, 27.363121>,  <40.356174, 31.115376, 27.421602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.330967, 30.883978, 27.363121>,  <40.288956, 30.498316, 27.265654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330967, 30.883978, 27.363121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584401, -0.138416, 0.799573,
		0.804640, -0.226374, 0.548916,
		0.105024, 0.964156, 0.243668,
		40.362473, 31.173225, 27.436222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303486, 30.425598, 27.996227>,  <40.288956, 30.498316, 27.265654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303486, 30.425598, 27.996227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.241043, 30.816181, 27.936682>,  <40.203575, 31.050531, 27.900953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.241043, 30.816181, 27.936682>,  <40.303486, 30.425598, 27.996227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241043, 30.816181, 27.936682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588425, 0.029114, 0.808028,
		0.793338, 0.213738, 0.570027,
		-0.156110, 0.976457, -0.148865,
		40.194210, 31.109118, 27.892021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438564, 30.770477, 28.666737>,  <40.303486, 30.425598, 27.996227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438564, 30.770477, 28.666737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218983, 31.029730, 28.455616>,  <40.087234, 31.185282, 28.328943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218983, 31.029730, 28.455616>,  <40.438564, 30.770477, 28.666737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218983, 31.029730, 28.455616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690187, 0.004694, 0.723616,
		0.471476, 0.761514, 0.444756,
		-0.548956, 0.648132, -0.527800,
		40.054295, 31.224169, 28.297276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326019, 31.419046, 28.983208>,  <40.438564, 30.770477, 28.666737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326019, 31.419046, 28.983208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.996193, 31.342566, 28.770214>,  <39.798298, 31.296677, 28.642418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.996193, 31.342566, 28.770214>,  <40.326019, 31.419046, 28.983208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996193, 31.342566, 28.770214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538805, -0.021724, 0.842150,
		-0.172587, 0.981311, -0.085107,
		-0.824562, -0.191200, -0.532485,
		39.748825, 31.285206, 28.610468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894390, 31.155005, 29.606133>,  <40.326019, 31.419046, 28.983208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894390, 31.155005, 29.606133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.225883, 31.361183, 29.518938>,  <40.424778, 31.484890, 29.466621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.225883, 31.361183, 29.518938>,  <39.894390, 31.155005, 29.606133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225883, 31.361183, 29.518938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068906, -0.480520, -0.874272,
		-0.555387, 0.709517, -0.433740,
		0.828732, 0.515447, -0.217985,
		40.474503, 31.515818, 29.453543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976940, 31.912296, 29.601448>,  <39.894390, 31.155005, 29.606133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976940, 31.912296, 29.601448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.027584, 32.250431, 29.809053>,  <40.057972, 32.453312, 29.933617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.027584, 32.250431, 29.809053>,  <39.976940, 31.912296, 29.601448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027584, 32.250431, 29.809053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071841, 0.529664, -0.845160,
		-0.989347, 0.069723, 0.127793,
		0.126614, 0.845337, 0.519012,
		40.065567, 32.504032, 29.964758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578804, 32.408344, 29.207113>,  <39.976940, 31.912296, 29.601448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578804, 32.408344, 29.207113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784489, 32.648628, 29.451973>,  <39.907902, 32.792801, 29.598888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784489, 32.648628, 29.451973>,  <39.578804, 32.408344, 29.207113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784489, 32.648628, 29.451973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054530, 0.735197, -0.675656,
		-0.855925, 0.314053, 0.410807,
		0.514216, 0.600712, 0.612149,
		39.938755, 32.828842, 29.635618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187294, 33.019554, 29.264568>,  <39.578804, 32.408344, 29.207113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187294, 33.019554, 29.264568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.566978, 33.101681, 29.359941>,  <39.794788, 33.150955, 29.417166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.566978, 33.101681, 29.359941>,  <39.187294, 33.019554, 29.264568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566978, 33.101681, 29.359941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019724, 0.717455, -0.696326,
		-0.314033, 0.665660, 0.676964,
		0.949207, 0.205317, 0.238434,
		39.851742, 33.163277, 29.431471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155186, 33.652187, 29.364683>,  <39.187294, 33.019554, 29.264568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155186, 33.652187, 29.364683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.535061, 33.568806, 29.271181>,  <39.762985, 33.518776, 29.215080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.535061, 33.568806, 29.271181>,  <39.155186, 33.652187, 29.364683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535061, 33.568806, 29.271181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006149, 0.758612, -0.651514,
		0.313139, 0.617298, 0.721726,
		0.949687, -0.208453, -0.233755,
		39.819965, 33.506271, 29.201054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352825, 34.314308, 29.011715>,  <39.155186, 33.652187, 29.364683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352825, 34.314308, 29.011715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.667999, 34.086071, 28.919123>,  <39.857105, 33.949131, 28.863567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.667999, 34.086071, 28.919123>,  <39.352825, 34.314308, 29.011715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667999, 34.086071, 28.919123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201230, 0.593897, -0.778969,
		0.581948, 0.567198, 0.582773,
		0.787936, -0.570591, -0.231480,
		39.904381, 33.914894, 28.849678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874195, 34.871021, 28.998234>,  <39.352825, 34.314308, 29.011715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874195, 34.871021, 28.998234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.970009, 34.541126, 28.793320>,  <40.027496, 34.343189, 28.670372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.970009, 34.541126, 28.793320>,  <39.874195, 34.871021, 28.998234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970009, 34.541126, 28.793320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138510, 0.551276, -0.822745,
		0.960957, 0.126120, 0.246285,
		0.239536, -0.824736, -0.512283,
		40.041870, 34.293705, 28.639635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523895, 35.010002, 28.538118>,  <39.874195, 34.871021, 28.998234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523895, 35.010002, 28.538118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.412640, 34.681438, 28.338949>,  <40.345886, 34.484299, 28.219448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.412640, 34.681438, 28.338949>,  <40.523895, 35.010002, 28.538118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412640, 34.681438, 28.338949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223331, 0.448869, -0.865240,
		0.934217, -0.351859, 0.058597,
		-0.278140, -0.821408, -0.497922,
		40.329197, 34.435017, 28.189573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984161, 35.013290, 27.874294>,  <40.523895, 35.010002, 28.538118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984161, 35.013290, 27.874294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.689224, 34.755711, 27.792652>,  <40.512264, 34.601162, 27.743666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.689224, 34.755711, 27.792652>,  <40.984161, 35.013290, 27.874294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689224, 34.755711, 27.792652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059968, 0.363352, -0.929720,
		0.672855, -0.673280, -0.306530,
		-0.737340, -0.643948, -0.204108,
		40.468021, 34.562527, 27.731421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249733, 34.594501, 27.284174>,  <40.984161, 35.013290, 27.874294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249733, 34.594501, 27.284174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850441, 34.600815, 27.307087>,  <40.610867, 34.604603, 27.320835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850441, 34.600815, 27.307087>,  <41.249733, 34.594501, 27.284174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850441, 34.600815, 27.307087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051725, 0.243558, -0.968506,
		-0.029238, -0.969758, -0.242311,
		-0.998234, 0.015784, 0.057282,
		40.550972, 34.605549, 27.324272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029129, 34.227814, 26.731100>,  <41.249733, 34.594501, 27.284174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029129, 34.227814, 26.731100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.697006, 34.431324, 26.822084>,  <40.497734, 34.553429, 26.876675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.697006, 34.431324, 26.822084>,  <41.029129, 34.227814, 26.731100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697006, 34.431324, 26.822084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185686, 0.132264, -0.973667,
		-0.525462, -0.850678, -0.015347,
		-0.830307, 0.508776, 0.227459,
		40.447914, 34.583958, 26.890322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513821, 33.877781, 26.394115>,  <41.029129, 34.227814, 26.731100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513821, 33.877781, 26.394115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.372120, 34.240826, 26.484221>,  <40.287098, 34.458652, 26.538284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.372120, 34.240826, 26.484221>,  <40.513821, 33.877781, 26.394115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372120, 34.240826, 26.484221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097489, 0.203731, -0.974161,
		-0.930053, -0.367062, 0.016310,
		-0.354255, 0.907612, 0.225265,
		40.265842, 34.513107, 26.551800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880798, 33.861610, 26.012503>,  <40.513821, 33.877781, 26.394115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880798, 33.861610, 26.012503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.975368, 34.238602, 26.107021>,  <40.032112, 34.464798, 26.163733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.975368, 34.238602, 26.107021>,  <39.880798, 33.861610, 26.012503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975368, 34.238602, 26.107021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091976, 0.263806, -0.960181,
		-0.967286, 0.205282, 0.149057,
		0.236430, 0.942479, 0.236295,
		40.046299, 34.521347, 26.177910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475082, 34.227432, 25.539700>,  <39.880798, 33.861610, 26.012503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475082, 34.227432, 25.539700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.754520, 34.476177, 25.681259>,  <39.922184, 34.625423, 25.766195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.754520, 34.476177, 25.681259>,  <39.475082, 34.227432, 25.539700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754520, 34.476177, 25.681259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025521, 0.472634, -0.880889,
		-0.715059, 0.624419, 0.314311,
		0.698598, 0.621866, 0.353897,
		39.964100, 34.662739, 25.787428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259304, 34.951225, 25.481327>,  <39.475082, 34.227432, 25.539700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259304, 34.951225, 25.481327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.659054, 34.957253, 25.494104>,  <39.898903, 34.960869, 25.501772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.659054, 34.957253, 25.494104>,  <39.259304, 34.951225, 25.481327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659054, 34.957253, 25.494104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018904, 0.535830, -0.844114,
		-0.029833, 0.844191, 0.535211,
		0.999376, 0.015065, 0.031944,
		39.958866, 34.961773, 25.503687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924278, 35.658184, 25.656525>,  <39.259304, 34.951225, 25.481327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924278, 35.658184, 25.656525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525837, 35.642227, 25.625063>,  <38.286774, 35.632652, 25.606186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525837, 35.642227, 25.625063>,  <38.924278, 35.658184, 25.656525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525837, 35.642227, 25.625063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060999, -0.332470, 0.941139,
		-0.063690, 0.942270, 0.328741,
		-0.996104, -0.039889, -0.078653,
		38.227005, 35.630260, 25.601467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712837, 35.982246, 26.170601>,  <38.924278, 35.658184, 25.656525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712837, 35.982246, 26.170601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.390911, 35.772491, 26.059397>,  <38.197754, 35.646641, 25.992674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.390911, 35.772491, 26.059397>,  <38.712837, 35.982246, 26.170601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390911, 35.772491, 26.059397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060820, -0.393077, 0.917492,
		-0.590398, 0.755322, 0.284462,
		-0.804817, -0.524385, -0.278011,
		38.149467, 35.615177, 25.975994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310574, 36.037182, 26.764235>,  <38.712837, 35.982246, 26.170601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310574, 36.037182, 26.764235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.136940, 35.724686, 26.584797>,  <38.032761, 35.537189, 26.477135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.136940, 35.724686, 26.584797>,  <38.310574, 36.037182, 26.764235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136940, 35.724686, 26.584797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163851, -0.421184, 0.892052,
		-0.885845, 0.460730, 0.054824,
		-0.434086, -0.781237, -0.448595,
		38.006714, 35.490314, 26.450218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834641, 35.862507, 27.168243>,  <38.310574, 36.037182, 26.764235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834641, 35.862507, 27.168243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871067, 35.531235, 26.947037>,  <37.892921, 35.332474, 26.814312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871067, 35.531235, 26.947037>,  <37.834641, 35.862507, 27.168243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871067, 35.531235, 26.947037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328097, -0.549270, 0.768540,
		-0.940244, 0.111456, -0.321742,
		0.091065, -0.828179, -0.553017,
		37.898388, 35.282780, 26.781132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346004, 35.575516, 27.460720>,  <37.834641, 35.862507, 27.168243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346004, 35.575516, 27.460720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.516968, 35.272820, 27.262865>,  <37.619545, 35.091202, 27.144152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.516968, 35.272820, 27.262865>,  <37.346004, 35.575516, 27.460720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516968, 35.272820, 27.262865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325169, -0.639192, 0.696920,
		-0.843554, -0.137031, -0.519267,
		0.427411, -0.756740, -0.494635,
		37.645191, 35.045799, 27.114475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878067, 35.150932, 27.350735>,  <37.346004, 35.575516, 27.460720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878067, 35.150932, 27.350735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.216293, 34.937653, 27.340031>,  <37.419228, 34.809685, 27.333609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.216293, 34.937653, 27.340031>,  <36.878067, 35.150932, 27.350735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216293, 34.937653, 27.340031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322778, -0.550511, 0.769904,
		-0.425246, -0.642366, -0.637598,
		0.845565, -0.533201, -0.026761,
		37.469963, 34.777691, 27.332003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695927, 34.445301, 27.592402>,  <36.878067, 35.150932, 27.350735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695927, 34.445301, 27.592402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.093739, 34.439739, 27.633821>,  <37.332424, 34.436401, 27.658674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.093739, 34.439739, 27.633821>,  <36.695927, 34.445301, 27.592402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093739, 34.439739, 27.633821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093053, -0.568605, 0.817331,
		0.047514, -0.822493, -0.566787,
		0.994527, -0.013907, 0.103552,
		37.392097, 34.435566, 27.664886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735813, 33.766468, 27.715105>,  <36.695927, 34.445301, 27.592402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735813, 33.766468, 27.715105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.063267, 33.960785, 27.837645>,  <37.259739, 34.077374, 27.911167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.063267, 33.960785, 27.837645>,  <36.735813, 33.766468, 27.715105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063267, 33.960785, 27.837645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088510, -0.633753, 0.768455,
		0.567456, -0.601968, -0.561809,
		0.818633, 0.485790, 0.306347,
		37.308857, 34.106522, 27.929548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286968, 33.241039, 27.670475>,  <36.735813, 33.766468, 27.715105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286968, 33.241039, 27.670475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.394878, 33.502182, 27.953600>,  <37.459625, 33.658867, 28.123474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.394878, 33.502182, 27.953600>,  <37.286968, 33.241039, 27.670475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394878, 33.502182, 27.953600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263055, -0.757073, 0.598032,
		0.926296, 0.024859, -0.375977,
		0.269776, 0.652857, 0.707813,
		37.475811, 33.698040, 28.165943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808060, 32.887989, 28.034922>,  <37.286968, 33.241039, 27.670475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808060, 32.887989, 28.034922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.666447, 33.173424, 28.276733>,  <37.581478, 33.344685, 28.421822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.666447, 33.173424, 28.276733>,  <37.808060, 32.887989, 28.034922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666447, 33.173424, 28.276733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007505, -0.644206, 0.764815,
		0.935204, 0.275304, 0.222713,
		-0.354030, 0.713587, 0.604530,
		37.560238, 33.387501, 28.458092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249725, 32.851418, 28.654253>,  <37.808060, 32.887989, 28.034922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249725, 32.851418, 28.654253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.911243, 33.039589, 28.754356>,  <37.708153, 33.152493, 28.814419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.911243, 33.039589, 28.754356>,  <38.249725, 32.851418, 28.654253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911243, 33.039589, 28.754356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063436, -0.555251, 0.829260,
		0.529066, 0.685850, 0.499699,
		-0.846206, 0.470433, 0.250257,
		37.657383, 33.180717, 28.829433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310280, 32.933861, 29.350939>,  <38.249725, 32.851418, 28.654253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310280, 32.933861, 29.350939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918991, 32.972008, 29.277199>,  <37.684219, 32.994896, 29.232954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918991, 32.972008, 29.277199>,  <38.310280, 32.933861, 29.350939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918991, 32.972008, 29.277199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205082, -0.580852, 0.787752,
		-0.031955, 0.808404, 0.587761,
		-0.978223, 0.095367, -0.184350,
		37.625523, 33.000618, 29.221893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.460827, 37.675465, 22.773422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162487, 37.454441, 22.624620>,  <38.983482, 37.321827, 22.535339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162487, 37.454441, 22.624620>,  <39.460827, 37.675465, 22.773422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162487, 37.454441, 22.624620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180179, -0.370297, 0.911272,
		-0.641279, 0.746702, 0.176628,
		-0.745853, -0.552554, -0.372003,
		38.938732, 37.288673, 22.513020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799160, 37.777725, 23.185520>,  <39.460827, 37.675465, 22.773422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799160, 37.777725, 23.185520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709778, 37.433228, 23.002949>,  <38.656147, 37.226528, 22.893406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709778, 37.433228, 23.002949>,  <38.799160, 37.777725, 23.185520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709778, 37.433228, 23.002949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261150, -0.398252, 0.879316,
		-0.939078, 0.315686, -0.135921,
		-0.223457, -0.861242, -0.456431,
		38.642742, 37.174854, 22.866020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025917, 37.702484, 23.303080>,  <38.799160, 37.777725, 23.185520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025917, 37.702484, 23.303080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204746, 37.358864, 23.203356>,  <38.312042, 37.152691, 23.143522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204746, 37.358864, 23.203356>,  <38.025917, 37.702484, 23.303080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204746, 37.358864, 23.203356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378992, -0.434375, 0.817119,
		-0.810242, -0.270825, -0.519771,
		0.447072, -0.859053, -0.249308,
		38.338867, 37.101147, 23.128563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537426, 37.180538, 23.336555>,  <38.025917, 37.702484, 23.303080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537426, 37.180538, 23.336555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882786, 36.982529, 23.375528>,  <38.090000, 36.863724, 23.398912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882786, 36.982529, 23.375528>,  <37.537426, 37.180538, 23.336555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882786, 36.982529, 23.375528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354823, -0.458499, 0.814788,
		-0.358666, -0.738059, -0.571513,
		0.863400, -0.495023, 0.097433,
		38.141808, 36.834023, 23.404758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311146, 36.606213, 23.698399>,  <37.537426, 37.180538, 23.336555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311146, 36.606213, 23.698399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704151, 36.538727, 23.729910>,  <37.939953, 36.498234, 23.748816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704151, 36.538727, 23.729910>,  <37.311146, 36.606213, 23.698399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704151, 36.538727, 23.729910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155957, -0.514510, 0.843183,
		-0.101727, -0.840723, -0.531825,
		0.982512, -0.168716, 0.078776,
		37.998905, 36.488113, 23.753542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420479, 35.822262, 23.758518>,  <37.311146, 36.606213, 23.698399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420479, 35.822262, 23.758518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709442, 36.038750, 23.930664>,  <37.882820, 36.168644, 24.033951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709442, 36.038750, 23.930664>,  <37.420479, 35.822262, 23.758518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709442, 36.038750, 23.930664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196046, -0.436539, 0.878066,
		0.663098, -0.718690, -0.209254,
		0.722404, 0.541220, 0.430364,
		37.926163, 36.201115, 24.059772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703785, 35.228722, 24.119200>,  <37.420479, 35.822262, 23.758518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703785, 35.228722, 24.119200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820465, 35.568413, 24.295258>,  <37.890472, 35.772228, 24.400892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820465, 35.568413, 24.295258>,  <37.703785, 35.228722, 24.119200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820465, 35.568413, 24.295258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006678, -0.458337, 0.888753,
		0.956485, -0.262192, -0.128028,
		0.291704, 0.849225, 0.440144,
		37.907978, 35.823181, 24.427301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219662, 34.988613, 24.579519>,  <37.703785, 35.228722, 24.119200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219662, 34.988613, 24.579519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141476, 35.359543, 24.707180>,  <38.094563, 35.582100, 24.783777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141476, 35.359543, 24.707180>,  <38.219662, 34.988613, 24.579519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141476, 35.359543, 24.707180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050350, -0.334490, 0.941053,
		0.979417, 0.167878, 0.112073,
		-0.195470, 0.927326, 0.319153,
		38.082836, 35.637741, 24.802925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761929, 35.245499, 25.071527>,  <38.219662, 34.988613, 24.579519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761929, 35.245499, 25.071527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439381, 35.464413, 25.161196>,  <38.245853, 35.595760, 25.214996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439381, 35.464413, 25.161196>,  <38.761929, 35.245499, 25.071527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439381, 35.464413, 25.161196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032085, -0.418959, 0.907438,
		0.590547, 0.724534, 0.355394,
		-0.806365, 0.547288, 0.224168,
		38.197472, 35.628597, 25.228447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448421, 35.570858, 25.071125>,  <38.761929, 35.245499, 25.071527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448421, 35.570858, 25.071125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794552, 35.377556, 25.124306>,  <40.002232, 35.261574, 25.156214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794552, 35.377556, 25.124306>,  <39.448421, 35.570858, 25.071125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794552, 35.377556, 25.124306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434419, 0.590840, -0.679844,
		0.249984, 0.646044, 0.721204,
		0.865325, -0.483255, 0.132953,
		40.054150, 35.232578, 25.164192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893154, 36.069027, 25.291382>,  <39.448421, 35.570858, 25.071125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893154, 36.069027, 25.291382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104855, 35.776070, 25.120041>,  <40.231876, 35.600296, 25.017237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104855, 35.776070, 25.120041>,  <39.893154, 36.069027, 25.291382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104855, 35.776070, 25.120041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427256, 0.666231, -0.611219,
		0.733037, 0.140473, 0.665525,
		0.529254, -0.732396, -0.428354,
		40.263630, 35.556351, 24.991535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560608, 36.470963, 25.095478>,  <39.893154, 36.069027, 25.291382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560608, 36.470963, 25.095478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543339, 36.111176, 24.921539>,  <40.532978, 35.895302, 24.817175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543339, 36.111176, 24.921539>,  <40.560608, 36.470963, 25.095478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543339, 36.111176, 24.921539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298117, 0.403826, -0.864899,
		0.953552, -0.166977, 0.250711,
		-0.043175, -0.899468, -0.434848,
		40.530388, 35.841335, 24.791084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175694, 36.338459, 24.841940>,  <40.560608, 36.470963, 25.095478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175694, 36.338459, 24.841940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926189, 36.124821, 24.613674>,  <40.776485, 35.996635, 24.476715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926189, 36.124821, 24.613674>,  <41.175694, 36.338459, 24.841940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926189, 36.124821, 24.613674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329492, 0.482384, -0.811628,
		0.708770, -0.694293, -0.124911,
		-0.623763, -0.534101, -0.570664,
		40.739059, 35.964592, 24.442474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559975, 35.816128, 24.439909>,  <41.175694, 36.338459, 24.841940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559975, 35.816128, 24.439909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223164, 35.917400, 24.249376>,  <41.021076, 35.978165, 24.135057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223164, 35.917400, 24.249376>,  <41.559975, 35.816128, 24.439909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223164, 35.917400, 24.249376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535140, 0.280815, -0.796724,
		-0.067959, -0.925765, -0.371943,
		-0.842026, 0.253186, -0.476330,
		40.970554, 35.993355, 24.106478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652447, 35.493423, 23.841015>,  <41.559975, 35.816128, 24.439909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652447, 35.493423, 23.841015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362675, 35.754154, 23.751274>,  <41.188812, 35.910591, 23.697430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362675, 35.754154, 23.751274>,  <41.652447, 35.493423, 23.841015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362675, 35.754154, 23.751274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272728, -0.027897, -0.961687,
		-0.633108, -0.757858, -0.157561,
		-0.724426, 0.651823, -0.224351,
		41.145348, 35.949699, 23.683969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418251, 35.237213, 23.173477>,  <41.652447, 35.493423, 23.841015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418251, 35.237213, 23.173477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290783, 35.615700, 23.195805>,  <41.214302, 35.842793, 23.209202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290783, 35.615700, 23.195805>,  <41.418251, 35.237213, 23.173477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290783, 35.615700, 23.195805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315861, 0.161532, -0.934954,
		-0.893689, -0.280313, -0.350349,
		-0.318673, 0.946220, 0.055819,
		41.195183, 35.899567, 23.212551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101814, 35.256500, 22.440332>,  <41.418251, 35.237213, 23.173477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101814, 35.256500, 22.440332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188267, 35.617664, 22.588949>,  <41.240139, 35.834362, 22.678120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188267, 35.617664, 22.588949>,  <41.101814, 35.256500, 22.440332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188267, 35.617664, 22.588949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391784, 0.268355, -0.880052,
		-0.894312, 0.335768, -0.295746,
		0.216128, 0.902909, 0.371542,
		41.253105, 35.888538, 22.700411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900436, 35.761822, 21.945694>,  <41.101814, 35.256500, 22.440332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900436, 35.761822, 21.945694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145016, 35.982574, 22.172516>,  <41.291763, 36.115028, 22.308609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145016, 35.982574, 22.172516>,  <40.900436, 35.761822, 21.945694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145016, 35.982574, 22.172516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342751, 0.461183, -0.818432,
		-0.713197, 0.694790, 0.092832,
		0.611451, 0.551885, 0.567054,
		41.328449, 36.148140, 22.342632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751507, 36.524887, 21.896448>,  <40.900436, 35.761822, 21.945694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751507, 36.524887, 21.896448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134899, 36.445984, 21.978825>,  <41.364933, 36.398640, 22.028250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134899, 36.445984, 21.978825>,  <40.751507, 36.524887, 21.896448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134899, 36.445984, 21.978825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278892, 0.497679, -0.821301,
		0.059520, 0.844632, 0.532029,
		0.958476, -0.197262, 0.205940,
		41.422443, 36.386806, 22.040606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135460, 36.904301, 21.467831>,  <40.751507, 36.524887, 21.896448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135460, 36.904301, 21.467831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455914, 36.723660, 21.624924>,  <41.648186, 36.615273, 21.719179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455914, 36.723660, 21.624924>,  <41.135460, 36.904301, 21.467831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455914, 36.723660, 21.624924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571116, 0.380694, -0.727254,
		0.178922, 0.806922, 0.562906,
		0.801133, -0.451606, 0.392731,
		41.696255, 36.588177, 21.742743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695477, 37.383892, 21.560768>,  <41.135460, 36.904301, 21.467831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695477, 37.383892, 21.560768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901268, 37.041656, 21.537849>,  <42.024742, 36.836315, 21.524099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901268, 37.041656, 21.537849>,  <41.695477, 37.383892, 21.560768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901268, 37.041656, 21.537849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499662, 0.353418, -0.790844,
		0.696882, 0.378248, 0.609330,
		0.514483, -0.855584, -0.057295,
		42.055614, 36.784981, 21.520660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444138, 37.493401, 21.565147>,  <41.695477, 37.383892, 21.560768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444138, 37.493401, 21.565147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408909, 37.131794, 21.397820>,  <42.387772, 36.914829, 21.297422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408909, 37.131794, 21.397820>,  <42.444138, 37.493401, 21.565147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408909, 37.131794, 21.397820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535584, 0.311104, -0.785088,
		0.839876, -0.293190, 0.456779,
		-0.088074, -0.904021, -0.418317,
		42.382488, 36.860588, 21.272324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082302, 37.348969, 21.240095>,  <42.444138, 37.493401, 21.565147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082302, 37.348969, 21.240095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842449, 37.084743, 21.059383>,  <42.698540, 36.926208, 20.950956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842449, 37.084743, 21.059383>,  <43.082302, 37.348969, 21.240095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842449, 37.084743, 21.059383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385259, 0.256538, -0.886433,
		0.701443, -0.705581, 0.100661,
		-0.599627, -0.660563, -0.451778,
		42.662560, 36.886574, 20.923849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.371605, 33.457794, 18.392008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484825, 33.745193, 18.646139>,  <36.552757, 33.917633, 18.798618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484825, 33.745193, 18.646139>,  <36.371605, 33.457794, 18.392008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484825, 33.745193, 18.646139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006086, -0.661056, 0.750312,
		0.959087, -0.216240, -0.182736,
		0.283047, 0.718502, 0.635326,
		36.569740, 33.960743, 18.836737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857471, 33.133030, 18.750139>,  <36.371605, 33.457794, 18.392008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857471, 33.133030, 18.750139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.738712, 33.445724, 18.969500>,  <36.667458, 33.633343, 19.101116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.738712, 33.445724, 18.969500>,  <36.857471, 33.133030, 18.750139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738712, 33.445724, 18.969500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134569, -0.602815, 0.786451,
		0.945381, 0.159695, 0.284170,
		-0.296894, 0.781736, 0.548400,
		36.649643, 33.680244, 19.134020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193035, 33.034931, 19.319275>,  <36.857471, 33.133030, 18.750139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193035, 33.034931, 19.319275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.909142, 33.287758, 19.443708>,  <36.738804, 33.439453, 19.518370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.909142, 33.287758, 19.443708>,  <37.193035, 33.034931, 19.319275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909142, 33.287758, 19.443708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063685, -0.497347, 0.865211,
		0.701585, 0.594258, 0.393236,
		-0.709734, 0.632063, 0.311086,
		36.696220, 33.477375, 19.537035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373440, 33.249073, 19.971884>,  <37.193035, 33.034931, 19.319275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373440, 33.249073, 19.971884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.979649, 33.319195, 19.968370>,  <36.743374, 33.361267, 19.966263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.979649, 33.319195, 19.968370>,  <37.373440, 33.249073, 19.971884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979649, 33.319195, 19.968370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102949, -0.536166, 0.837811,
		0.142158, 0.825710, 0.545889,
		-0.984476, 0.175300, -0.008786,
		36.684307, 33.371784, 19.965734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289604, 33.453045, 20.628836>,  <37.373440, 33.249073, 19.971884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289604, 33.453045, 20.628836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.931511, 33.325172, 20.504669>,  <36.716656, 33.248447, 20.430170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.931511, 33.325172, 20.504669>,  <37.289604, 33.453045, 20.628836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931511, 33.325172, 20.504669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164898, -0.409496, 0.897286,
		-0.413963, 0.854468, 0.313879,
		-0.895234, -0.319685, -0.310416,
		36.662941, 33.229267, 20.411545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805134, 33.647125, 21.138935>,  <37.289604, 33.453045, 20.628836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805134, 33.647125, 21.138935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.608528, 33.352783, 20.952633>,  <36.490566, 33.176178, 20.840851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.608528, 33.352783, 20.952633>,  <36.805134, 33.647125, 21.138935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608528, 33.352783, 20.952633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391107, -0.291332, 0.873018,
		-0.778108, 0.611259, -0.144606,
		-0.491512, -0.735859, -0.465755,
		36.461075, 33.132027, 20.812906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087032, 33.634266, 21.364244>,  <36.805134, 33.647125, 21.138935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087032, 33.634266, 21.364244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150681, 33.263145, 21.229271>,  <36.188869, 33.040474, 21.148287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150681, 33.263145, 21.229271>,  <36.087032, 33.634266, 21.364244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150681, 33.263145, 21.229271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290251, -0.370648, 0.882255,
		-0.943629, -0.042443, -0.328273,
		0.159119, -0.927803, -0.337435,
		36.198418, 32.984806, 21.128040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511219, 33.273232, 21.455297>,  <36.087032, 33.634266, 21.364244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511219, 33.273232, 21.455297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.780529, 32.978134, 21.435530>,  <35.942116, 32.801075, 21.423670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.780529, 32.978134, 21.435530>,  <35.511219, 33.273232, 21.455297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780529, 32.978134, 21.435530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356400, -0.382363, 0.852512,
		-0.647828, -0.556362, -0.520366,
		0.673274, -0.737740, -0.049418,
		35.982510, 32.756813, 21.420704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138607, 32.683601, 21.637094>,  <35.511219, 33.273232, 21.455297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138607, 32.683601, 21.637094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519176, 32.563274, 21.663324>,  <35.747517, 32.491077, 21.679062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519176, 32.563274, 21.663324>,  <35.138607, 32.683601, 21.637094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519176, 32.563274, 21.663324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230867, -0.556143, 0.798377,
		-0.203698, -0.774734, -0.598577,
		0.951424, -0.300819, 0.065576,
		35.804604, 32.473030, 21.682997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160748, 31.927612, 21.622103>,  <35.138607, 32.683601, 21.637094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160748, 31.927612, 21.622103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.503181, 32.046673, 21.791107>,  <35.708641, 32.118111, 21.892509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.503181, 32.046673, 21.791107>,  <35.160748, 31.927612, 21.622103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503181, 32.046673, 21.791107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189626, -0.579597, 0.792533,
		0.480788, -0.758597, -0.439743,
		0.856087, 0.297653, 0.422513,
		35.760006, 32.135967, 21.917862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382137, 31.310043, 21.920950>,  <35.160748, 31.927612, 21.622103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382137, 31.310043, 21.920950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.597809, 31.581629, 22.120264>,  <35.727211, 31.744581, 22.239853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.597809, 31.581629, 22.120264>,  <35.382137, 31.310043, 21.920950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597809, 31.581629, 22.120264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220259, -0.457380, 0.861562,
		0.812877, -0.574290, -0.097063,
		0.539182, 0.678965, 0.498286,
		35.759563, 31.785318, 22.269751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715881, 30.962067, 22.527540>,  <35.382137, 31.310043, 21.920950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715881, 30.962067, 22.527540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761276, 31.342360, 22.642941>,  <35.788513, 31.570536, 22.712181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761276, 31.342360, 22.642941>,  <35.715881, 30.962067, 22.527540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761276, 31.342360, 22.642941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073280, -0.297595, 0.951876,
		0.990834, -0.086882, -0.103442,
		0.113485, 0.950731, 0.288500,
		35.795322, 31.627579, 22.729490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367035, 31.040146, 22.915625>,  <35.715881, 30.962067, 22.527540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367035, 31.040146, 22.915625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103775, 31.321836, 23.022139>,  <35.945820, 31.490850, 23.086046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103775, 31.321836, 23.022139>,  <36.367035, 31.040146, 22.915625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103775, 31.321836, 23.022139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105608, -0.263835, 0.958769,
		0.745445, 0.659133, 0.099271,
		-0.658148, 0.704226, 0.266284,
		35.906330, 31.533104, 23.102024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647381, 31.169579, 23.523510>,  <36.367035, 31.040146, 22.915625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647381, 31.169579, 23.523510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.285976, 31.332315, 23.577402>,  <36.069134, 31.429958, 23.609737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.285976, 31.332315, 23.577402>,  <36.647381, 31.169579, 23.523510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285976, 31.332315, 23.577402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102028, -0.101142, 0.989626,
		0.416249, 0.907881, 0.049873,
		-0.903508, 0.406843, 0.134730,
		36.014923, 31.454369, 23.617821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331490, 31.653549, 23.490108>,  <36.647381, 31.169579, 23.523510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331490, 31.653549, 23.490108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694721, 31.493921, 23.540922>,  <37.912659, 31.398144, 23.571411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694721, 31.493921, 23.540922>,  <37.331490, 31.653549, 23.490108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694721, 31.493921, 23.540922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250430, 0.274290, -0.928466,
		0.335680, 0.874932, 0.349016,
		0.908077, -0.399071, 0.127036,
		37.967144, 31.374199, 23.579033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843491, 32.317562, 23.506441>,  <37.331490, 31.653549, 23.490108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843491, 32.317562, 23.506441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096149, 32.022541, 23.410910>,  <38.247746, 31.845530, 23.353592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096149, 32.022541, 23.410910>,  <37.843491, 32.317562, 23.506441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096149, 32.022541, 23.410910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311568, 0.523600, -0.792949,
		0.709889, 0.426456, 0.560529,
		0.631651, -0.737549, -0.238827,
		38.285645, 31.801277, 23.339262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498051, 32.642796, 23.353325>,  <37.843491, 32.317562, 23.506441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498051, 32.642796, 23.353325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.545918, 32.282974, 23.185286>,  <38.574638, 32.067081, 23.084461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.545918, 32.282974, 23.185286>,  <38.498051, 32.642796, 23.353325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545918, 32.282974, 23.185286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481635, 0.422614, -0.767741,
		0.868163, -0.110458, 0.483831,
		0.119671, -0.899554, -0.420098,
		38.581818, 32.013107, 23.059256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210037, 32.658119, 23.072960>,  <38.498051, 32.642796, 23.353325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210037, 32.658119, 23.072960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.027641, 32.367256, 22.867702>,  <38.918205, 32.192738, 22.744549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.027641, 32.367256, 22.867702>,  <39.210037, 32.658119, 23.072960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027641, 32.367256, 22.867702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452430, 0.307122, -0.837248,
		0.766410, -0.613935, 0.188946,
		-0.455986, -0.727159, -0.513143,
		38.890846, 32.149109, 22.713760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719101, 32.479172, 22.678436>,  <39.210037, 32.658119, 23.072960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719101, 32.479172, 22.678436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.384804, 32.353298, 22.498428>,  <39.184227, 32.277775, 22.390423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.384804, 32.353298, 22.498428>,  <39.719101, 32.479172, 22.678436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384804, 32.353298, 22.498428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399907, 0.212836, -0.891502,
		0.376319, -0.925028, -0.052032,
		-0.835738, -0.314681, -0.450019,
		39.134083, 32.258896, 22.363422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910805, 31.953918, 22.116261>,  <39.719101, 32.479172, 22.678436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910805, 31.953918, 22.116261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.544601, 32.070702, 22.005554>,  <39.324879, 32.140770, 21.939131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.544601, 32.070702, 22.005554>,  <39.910805, 31.953918, 22.116261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544601, 32.070702, 22.005554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297462, 0.028118, -0.954319,
		-0.270840, -0.956017, -0.112589,
		-0.915512, 0.291959, -0.276764,
		39.269947, 32.158291, 21.922525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696781, 31.637150, 21.467159>,  <39.910805, 31.953918, 22.116261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696781, 31.637150, 21.467159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.460075, 31.958660, 21.491674>,  <39.318050, 32.151566, 21.506384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.460075, 31.958660, 21.491674>,  <39.696781, 31.637150, 21.467159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460075, 31.958660, 21.491674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351095, 0.325432, -0.877967,
		-0.725635, -0.498033, -0.474782,
		-0.591766, 0.803777, 0.061288,
		39.282547, 32.199795, 21.510061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443420, 31.707838, 20.812057>,  <39.696781, 31.637150, 21.467159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443420, 31.707838, 20.812057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364754, 32.051552, 21.000927>,  <39.317554, 32.257782, 21.114248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364754, 32.051552, 21.000927>,  <39.443420, 31.707838, 20.812057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364754, 32.051552, 21.000927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216772, 0.507770, -0.833774,
		-0.956207, -0.061624, -0.286132,
		-0.196670, 0.859286, 0.472175,
		39.305752, 32.309338, 21.142580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031853, 32.084793, 20.295948>,  <39.443420, 31.707838, 20.812057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031853, 32.084793, 20.295948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.190826, 32.355003, 20.544369>,  <39.286213, 32.517132, 20.693422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.190826, 32.355003, 20.544369>,  <39.031853, 32.084793, 20.295948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190826, 32.355003, 20.544369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192715, 0.600262, -0.776239,
		-0.897165, 0.428192, 0.108382,
		0.397437, 0.675527, 0.621053,
		39.310059, 32.557663, 20.730684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623459, 32.661015, 20.284464>,  <39.031853, 32.084793, 20.295948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623459, 32.661015, 20.284464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.991863, 32.768097, 20.397655>,  <39.212906, 32.832344, 20.465570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.991863, 32.768097, 20.397655>,  <38.623459, 32.661015, 20.284464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991863, 32.768097, 20.397655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058052, 0.624002, -0.779264,
		-0.385191, 0.734136, 0.559171,
		0.921009, 0.267704, 0.282978,
		39.268166, 32.848408, 20.482550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597260, 33.453712, 20.278316>,  <38.623459, 32.661015, 20.284464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597260, 33.453712, 20.278316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.972778, 33.330341, 20.216951>,  <39.198090, 33.256321, 20.180132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.972778, 33.330341, 20.216951>,  <38.597260, 33.453712, 20.278316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972778, 33.330341, 20.216951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056861, 0.577996, -0.814057,
		0.339745, 0.755511, 0.560158,
		0.938797, -0.308423, -0.153412,
		39.254417, 33.237816, 20.170927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928215, 34.079311, 20.346172>,  <38.597260, 33.453712, 20.278316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928215, 34.079311, 20.346172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.130371, 33.809067, 20.131458>,  <39.251663, 33.646919, 20.002630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.130371, 33.809067, 20.131458>,  <38.928215, 34.079311, 20.346172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130371, 33.809067, 20.131458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280686, 0.716958, -0.638112,
		0.815965, 0.171826, 0.551975,
		0.505387, -0.675609, -0.536783,
		39.281986, 33.606384, 19.970423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611378, 34.435974, 20.197769>,  <38.928215, 34.079311, 20.346172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611378, 34.435974, 20.197769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.559330, 34.136265, 19.938026>,  <39.528103, 33.956440, 19.782181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.559330, 34.136265, 19.938026>,  <39.611378, 34.435974, 20.197769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559330, 34.136265, 19.938026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186154, 0.624816, -0.758256,
		0.973867, -0.219540, 0.058182,
		-0.130115, -0.749271, -0.649355,
		39.520294, 33.911484, 19.743219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130917, 34.603260, 19.647509>,  <39.611378, 34.435974, 20.197769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130917, 34.603260, 19.647509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.879433, 34.344406, 19.475025>,  <39.728542, 34.189095, 19.371534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.879433, 34.344406, 19.475025>,  <40.130917, 34.603260, 19.647509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879433, 34.344406, 19.475025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058123, 0.513851, -0.855908,
		0.775467, -0.563178, -0.285448,
		-0.628706, -0.647138, -0.431208,
		39.690819, 34.150265, 19.345663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853977, 34.258217, 19.486494>,  <40.130917, 34.603260, 19.647509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853977, 34.258217, 19.486494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.242943, 34.267052, 19.393616>,  <41.476322, 34.272350, 19.337889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.242943, 34.267052, 19.393616>,  <40.853977, 34.258217, 19.486494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242943, 34.267052, 19.393616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178491, -0.711293, 0.679855,
		-0.150145, -0.702548, -0.695616,
		0.972418, 0.022084, -0.232196,
		41.534668, 34.273678, 19.323957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072834, 33.574608, 19.272863>,  <40.853977, 34.258217, 19.486494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072834, 33.574608, 19.272863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.415169, 33.732056, 19.407089>,  <41.620571, 33.826523, 19.487625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.415169, 33.732056, 19.407089>,  <41.072834, 33.574608, 19.272863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415169, 33.732056, 19.407089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106977, -0.769428, 0.629712,
		0.506059, -0.503034, -0.700614,
		0.855839, 0.393620, 0.335563,
		41.671921, 33.850143, 19.507757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568436, 33.081432, 19.241831>,  <41.072834, 33.574608, 19.272863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568436, 33.081432, 19.241831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.714035, 33.336720, 19.513178>,  <41.801395, 33.489891, 19.675985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.714035, 33.336720, 19.513178>,  <41.568436, 33.081432, 19.241831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714035, 33.336720, 19.513178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212796, -0.766051, 0.606534,
		0.906766, -0.076421, -0.414650,
		0.363995, 0.638220, 0.678367,
		41.823235, 33.528187, 19.716688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148758, 32.747921, 19.457905>,  <41.568436, 33.081432, 19.241831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148758, 32.747921, 19.457905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.078552, 33.017124, 19.745308>,  <42.036430, 33.178646, 19.917749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.078552, 33.017124, 19.745308>,  <42.148758, 32.747921, 19.457905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078552, 33.017124, 19.745308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223895, -0.683425, 0.694839,
		0.958680, 0.282823, -0.030734,
		-0.175512, 0.673009, 0.718508,
		42.025898, 33.219028, 19.960861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673439, 32.608009, 20.005423>,  <42.148758, 32.747921, 19.457905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673439, 32.608009, 20.005423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.399963, 32.807838, 20.218208>,  <42.235878, 32.927738, 20.345881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.399963, 32.807838, 20.218208>,  <42.673439, 32.608009, 20.005423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399963, 32.807838, 20.218208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153064, -0.614568, 0.773872,
		0.713536, 0.610516, 0.343709,
		-0.683694, 0.499576, 0.531965,
		42.194855, 32.957710, 20.377798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942707, 32.695461, 20.665176>,  <42.673439, 32.608009, 20.005423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942707, 32.695461, 20.665176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.558189, 32.763046, 20.752232>,  <42.327480, 32.803596, 20.804464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.558189, 32.763046, 20.752232>,  <42.942707, 32.695461, 20.665176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558189, 32.763046, 20.752232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085009, -0.569478, 0.817599,
		0.262083, 0.804455, 0.533072,
		-0.961294, 0.168962, 0.217636,
		42.269802, 32.813736, 20.817522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012691, 32.785522, 21.304962>,  <42.942707, 32.695461, 20.665176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012691, 32.785522, 21.304962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.619591, 32.712418, 21.293627>,  <42.383732, 32.668556, 21.286825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.619591, 32.712418, 21.293627>,  <43.012691, 32.785522, 21.304962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619591, 32.712418, 21.293627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036419, -0.341459, 0.939191,
		-0.181327, 0.921956, 0.342224,
		-0.982748, -0.182764, -0.028339,
		42.324768, 32.657589, 21.285126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709156, 33.089005, 21.927137>,  <43.012691, 32.785522, 21.304962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709156, 33.089005, 21.927137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.473145, 32.797615, 21.787889>,  <42.331535, 32.622780, 21.704340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.473145, 32.797615, 21.787889>,  <42.709156, 33.089005, 21.927137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473145, 32.797615, 21.787889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072063, -0.381937, 0.921374,
		-0.804157, 0.568728, 0.172860,
		-0.590033, -0.728472, -0.348122,
		42.296135, 32.579075, 21.683453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210850, 33.127022, 22.392904>,  <42.709156, 33.089005, 21.927137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210850, 33.127022, 22.392904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.107533, 32.783360, 22.216204>,  <42.045544, 32.577164, 22.110184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.107533, 32.783360, 22.216204>,  <42.210850, 33.127022, 22.392904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107533, 32.783360, 22.216204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349116, -0.343353, 0.871910,
		-0.900778, 0.379432, -0.211257,
		-0.258295, -0.859151, -0.441751,
		42.030045, 32.525616, 22.083679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492634, 32.892544, 22.616999>,  <42.210850, 33.127022, 22.392904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492634, 32.892544, 22.616999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.687370, 32.558296, 22.515234>,  <41.804214, 32.357746, 22.454176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.687370, 32.558296, 22.515234>,  <41.492634, 32.892544, 22.616999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687370, 32.558296, 22.515234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220649, -0.399461, 0.889801,
		-0.845161, -0.377058, -0.378853,
		0.486844, -0.835618, -0.254411,
		41.833424, 32.307610, 22.438911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028496, 32.278858, 22.678917>,  <41.492634, 32.892544, 22.616999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028496, 32.278858, 22.678917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.410511, 32.162312, 22.700844>,  <41.639721, 32.092384, 22.714001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.410511, 32.162312, 22.700844>,  <41.028496, 32.278858, 22.678917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410511, 32.162312, 22.700844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184534, -0.439473, 0.879097,
		-0.232046, -0.849689, -0.473481,
		0.955040, -0.291364, 0.054818,
		41.697021, 32.074902, 22.717289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025017, 31.578045, 22.916704>,  <41.028496, 32.278858, 22.678917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025017, 31.578045, 22.916704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.405155, 31.684271, 22.981602>,  <41.633236, 31.748007, 23.020540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.405155, 31.684271, 22.981602>,  <41.025017, 31.578045, 22.916704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405155, 31.684271, 22.981602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045736, -0.396500, 0.916895,
		0.307825, -0.878785, -0.364665,
		0.950344, 0.265564, 0.162245,
		41.690258, 31.763941, 23.030275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268688, 30.933598, 23.098585>,  <41.025017, 31.578045, 22.916704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268688, 30.933598, 23.098585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.505951, 31.225430, 23.234747>,  <41.648308, 31.400528, 23.316444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.505951, 31.225430, 23.234747>,  <41.268688, 30.933598, 23.098585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505951, 31.225430, 23.234747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125666, -0.333733, 0.934254,
		0.795218, -0.596938, -0.106273,
		0.593158, 0.729580, 0.340405,
		41.683899, 31.444304, 23.336868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586971, 30.700958, 23.719938>,  <41.268688, 30.933598, 23.098585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586971, 30.700958, 23.719938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.662868, 31.092892, 23.744982>,  <41.708408, 31.328053, 23.760008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.662868, 31.092892, 23.744982>,  <41.586971, 30.700958, 23.719938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662868, 31.092892, 23.744982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136704, -0.036782, 0.989929,
		0.972270, -0.196394, 0.126968,
		0.189746, 0.979835, 0.062610,
		41.719791, 31.386843, 23.763765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.544575, 36.891361, 20.885757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.209682, 36.797276, 20.688284>,  <43.008747, 36.740826, 20.569799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.209682, 36.797276, 20.688284>,  <43.544575, 36.891361, 20.885757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209682, 36.797276, 20.688284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437461, 0.253630, -0.862728,
		0.328143, -0.938266, -0.109447,
		-0.837228, -0.235219, -0.493682,
		42.958515, 36.726711, 20.540180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735500, 36.404751, 20.264336>,  <43.544575, 36.891361, 20.885757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735500, 36.404751, 20.264336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.372185, 36.539448, 20.165054>,  <43.154194, 36.620266, 20.105486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.372185, 36.539448, 20.165054>,  <43.735500, 36.404751, 20.264336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372185, 36.539448, 20.165054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359589, 0.325288, -0.874576,
		-0.213773, -0.883623, -0.416547,
		-0.908293, 0.336747, -0.248204,
		43.099697, 36.640472, 20.090593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509247, 36.047516, 19.558512>,  <43.735500, 36.404751, 20.264336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509247, 36.047516, 19.558512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.320339, 36.395538, 19.615023>,  <43.206993, 36.604351, 19.648930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.320339, 36.395538, 19.615023>,  <43.509247, 36.047516, 19.558512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320339, 36.395538, 19.615023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232312, 0.277471, -0.932224,
		-0.850290, -0.407440, -0.333166,
		-0.472269, 0.870059, 0.141277,
		43.178658, 36.656555, 19.657406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060028, 36.110085, 19.029358>,  <43.509247, 36.047516, 19.558512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060028, 36.110085, 19.029358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.120255, 36.480789, 19.167017>,  <43.156391, 36.703213, 19.249613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.120255, 36.480789, 19.167017>,  <43.060028, 36.110085, 19.029358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120255, 36.480789, 19.167017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080628, 0.335443, -0.938604,
		-0.985306, 0.169074, -0.024216,
		0.150571, 0.926764, 0.344146,
		43.165424, 36.758820, 19.270260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537193, 36.636665, 18.701342>,  <43.060028, 36.110085, 19.029358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537193, 36.636665, 18.701342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.768757, 36.928059, 18.847862>,  <42.907696, 37.102894, 18.935776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.768757, 36.928059, 18.847862>,  <42.537193, 36.636665, 18.701342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768757, 36.928059, 18.847862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045337, 0.419781, -0.906492,
		-0.814134, 0.541379, 0.209986,
		0.578905, 0.728486, 0.366303,
		42.942429, 37.146603, 18.957752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230831, 37.286175, 18.491020>,  <42.537193, 36.636665, 18.701342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230831, 37.286175, 18.491020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.603786, 37.389187, 18.592476>,  <42.827560, 37.450996, 18.653349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.603786, 37.389187, 18.592476>,  <42.230831, 37.286175, 18.491020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603786, 37.389187, 18.592476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076502, 0.545207, -0.834804,
		-0.353277, 0.797763, 0.488641,
		0.932386, 0.257535, 0.253640,
		42.883503, 37.466446, 18.668568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281483, 38.070797, 18.467527>,  <42.230831, 37.286175, 18.491020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281483, 38.070797, 18.467527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651142, 37.927876, 18.413443>,  <42.872936, 37.842121, 18.380991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651142, 37.927876, 18.413443>,  <42.281483, 38.070797, 18.467527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651142, 37.927876, 18.413443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182242, 0.723370, -0.665975,
		0.335767, 0.590818, 0.733617,
		0.924147, -0.357308, -0.135212,
		42.928387, 37.820683, 18.372879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698578, 38.647026, 18.488373>,  <42.281483, 38.070797, 18.467527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698578, 38.647026, 18.488373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.920010, 38.364605, 18.311716>,  <43.052868, 38.195152, 18.205723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.920010, 38.364605, 18.311716>,  <42.698578, 38.647026, 18.488373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920010, 38.364605, 18.311716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146026, 0.604385, -0.783195,
		0.819896, 0.369068, 0.437675,
		0.553577, -0.706050, -0.441639,
		43.086082, 38.152790, 18.179224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275688, 39.085037, 18.233799>,  <42.698578, 38.647026, 18.488373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275688, 39.085037, 18.233799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265667, 38.735897, 18.038860>,  <43.259655, 38.526413, 17.921898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265667, 38.735897, 18.038860>,  <43.275688, 39.085037, 18.233799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265667, 38.735897, 18.038860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337752, 0.451440, -0.825909,
		0.940901, -0.185294, 0.283497,
		-0.025054, -0.872850, -0.487344,
		43.258152, 38.474041, 17.892656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969318, 39.091862, 17.878477>,  <43.275688, 39.085037, 18.233799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969318, 39.091862, 17.878477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.711563, 38.847759, 17.694151>,  <43.556911, 38.701298, 17.583555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.711563, 38.847759, 17.694151>,  <43.969318, 39.091862, 17.878477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711563, 38.847759, 17.694151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350268, 0.300130, -0.887262,
		0.679764, -0.733148, 0.020354,
		-0.644386, -0.610259, -0.460816,
		43.518246, 38.664680, 17.555906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389439, 38.997746, 17.337301>,  <43.969318, 39.091862, 17.878477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389439, 38.997746, 17.337301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.052917, 38.817440, 17.217960>,  <43.851006, 38.709255, 17.146355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.052917, 38.817440, 17.217960>,  <44.389439, 38.997746, 17.337301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052917, 38.817440, 17.217960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234358, 0.193211, -0.952757,
		0.487113, -0.871483, -0.056909,
		-0.841307, -0.450764, -0.298355,
		43.800526, 38.682213, 17.128454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537155, 38.557045, 16.797880>,  <44.389439, 38.997746, 17.337301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537155, 38.557045, 16.797880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.154068, 38.660217, 16.746904>,  <43.924213, 38.722118, 16.716318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.154068, 38.660217, 16.746904>,  <44.537155, 38.557045, 16.797880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154068, 38.660217, 16.746904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152180, 0.078257, -0.985250,
		-0.244152, -0.962989, -0.114200,
		-0.957722, 0.257930, -0.127441,
		43.866753, 38.737595, 16.708672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053932, 38.168011, 16.268801>,  <44.537155, 38.557045, 16.797880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053932, 38.168011, 16.268801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.893024, 38.534126, 16.260578>,  <43.796482, 38.753796, 16.255644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.893024, 38.534126, 16.260578>,  <44.053932, 38.168011, 16.268801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893024, 38.534126, 16.260578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138421, -0.083002, -0.986889,
		-0.904998, -0.394148, 0.160085,
		-0.402267, 0.915291, -0.020558,
		43.772343, 38.808712, 16.254410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438995, 38.188866, 15.990561>,  <44.053932, 38.168011, 16.268801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438995, 38.188866, 15.990561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.554462, 38.561535, 15.902324>,  <43.623741, 38.785137, 15.849381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.554462, 38.561535, 15.902324>,  <43.438995, 38.188866, 15.990561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554462, 38.561535, 15.902324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352629, -0.110747, -0.929186,
		-0.890125, 0.346015, 0.296565,
		0.288668, 0.931670, -0.220594,
		43.641064, 38.841038, 15.836145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081345, 38.104027, 15.361286>,  <43.438995, 38.188866, 15.990561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081345, 38.104027, 15.361286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.797363, 37.999451, 15.099718>,  <42.626972, 37.936707, 14.942777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.797363, 37.999451, 15.099718>,  <43.081345, 38.104027, 15.361286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797363, 37.999451, 15.099718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444181, -0.554327, 0.703864,
		-0.546503, 0.790172, 0.277422,
		-0.709956, -0.261438, -0.653921,
		42.584377, 37.921021, 14.903542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421566, 38.244953, 15.634579>,  <43.081345, 38.104027, 15.361286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421566, 38.244953, 15.634579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.345310, 37.945560, 15.380513>,  <42.299557, 37.765926, 15.228074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.345310, 37.945560, 15.380513>,  <42.421566, 38.244953, 15.634579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345310, 37.945560, 15.380513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348677, -0.553211, 0.756559,
		-0.917650, 0.365697, -0.155514,
		-0.190640, -0.748481, -0.635164,
		42.288116, 37.721016, 15.189964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808567, 37.926697, 15.912616>,  <42.421566, 38.244953, 15.634579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808567, 37.926697, 15.912616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.957333, 37.630825, 15.688275>,  <42.046593, 37.453300, 15.553671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.957333, 37.630825, 15.688275>,  <41.808567, 37.926697, 15.912616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957333, 37.630825, 15.688275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340934, -0.670811, 0.658617,
		-0.863390, -0.053736, -0.501667,
		0.371916, -0.739679, -0.560851,
		42.068909, 37.408920, 15.520020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294827, 37.438213, 15.828439>,  <41.808567, 37.926697, 15.912616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294827, 37.438213, 15.828439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.616531, 37.220398, 15.733233>,  <41.809555, 37.089710, 15.676110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.616531, 37.220398, 15.733233>,  <41.294827, 37.438213, 15.828439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616531, 37.220398, 15.733233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286284, -0.705976, 0.647795,
		-0.520779, -0.452856, -0.723679,
		0.804258, -0.544536, -0.238012,
		41.857807, 37.057037, 15.661830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066383, 36.741451, 15.943898>,  <41.294827, 37.438213, 15.828439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066383, 36.741451, 15.943898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.459106, 36.678951, 15.900747>,  <41.694740, 36.641453, 15.874857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.459106, 36.678951, 15.900747>,  <41.066383, 36.741451, 15.943898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459106, 36.678951, 15.900747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088422, -0.879054, 0.468449,
		-0.168022, -0.450389, -0.876880,
		0.981810, -0.156246, -0.107876,
		41.753651, 36.632076, 15.868384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215530, 36.016949, 15.683541>,  <41.066383, 36.741451, 15.943898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215530, 36.016949, 15.683541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.527805, 36.156666, 15.890817>,  <41.715172, 36.240498, 16.015182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.527805, 36.156666, 15.890817>,  <41.215530, 36.016949, 15.683541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527805, 36.156666, 15.890817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130188, -0.720108, 0.681540,
		0.611210, -0.599532, -0.516705,
		0.780688, 0.349295, 0.518189,
		41.762012, 36.261456, 16.046274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579762, 35.381584, 15.913095>,  <41.215530, 36.016949, 15.683541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579762, 35.381584, 15.913095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.716236, 35.672100, 16.151791>,  <41.798122, 35.846409, 16.295008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.716236, 35.672100, 16.151791>,  <41.579762, 35.381584, 15.913095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716236, 35.672100, 16.151791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041264, -0.622646, 0.781415,
		0.939089, -0.291234, -0.182470,
		0.341189, 0.726288, 0.596738,
		41.818592, 35.889988, 16.330812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068241, 35.074833, 16.251951>,  <41.579762, 35.381584, 15.913095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068241, 35.074833, 16.251951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.975178, 35.391945, 16.477293>,  <41.919342, 35.582214, 16.612497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.975178, 35.391945, 16.477293>,  <42.068241, 35.074833, 16.251951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975178, 35.391945, 16.477293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108050, -0.554593, 0.825077,
		0.966539, 0.252828, 0.043369,
		-0.232655, 0.792783, 0.563354,
		41.905380, 35.629780, 16.646299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659935, 35.238525, 16.759192>,  <42.068241, 35.074833, 16.251951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659935, 35.238525, 16.759192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.316971, 35.365509, 16.921211>,  <42.111191, 35.441700, 17.018423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.316971, 35.365509, 16.921211>,  <42.659935, 35.238525, 16.759192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316971, 35.365509, 16.921211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241395, -0.447017, 0.861338,
		0.454508, 0.836297, 0.306643,
		-0.857409, 0.317463, 0.405051,
		42.059750, 35.460747, 17.042727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737812, 35.149601, 17.459320>,  <42.659935, 35.238525, 16.759192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737812, 35.149601, 17.459320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.347286, 35.235931, 17.453224>,  <42.112972, 35.287727, 17.449568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.347286, 35.235931, 17.453224>,  <42.737812, 35.149601, 17.459320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347286, 35.235931, 17.453224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103510, -0.404079, 0.908849,
		0.189994, 0.888898, 0.416848,
		-0.976313, 0.215824, -0.015237,
		42.054394, 35.300678, 17.448652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564663, 35.672211, 18.100569>,  <42.737812, 35.149601, 17.459320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564663, 35.672211, 18.100569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.262337, 35.441746, 17.976133>,  <42.080940, 35.303467, 17.901472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.262337, 35.441746, 17.976133>,  <42.564663, 35.672211, 18.100569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262337, 35.441746, 17.976133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170756, -0.285221, 0.943129,
		-0.632127, 0.765951, 0.117191,
		-0.755816, -0.576166, -0.311087,
		42.035591, 35.268894, 17.882807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022343, 35.823723, 18.602171>,  <42.564663, 35.672211, 18.100569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022343, 35.823723, 18.602171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.934834, 35.468296, 18.440882>,  <41.882328, 35.255039, 18.344109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.934834, 35.468296, 18.440882>,  <42.022343, 35.823723, 18.602171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934834, 35.468296, 18.440882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180298, -0.369308, 0.911650,
		-0.958974, 0.272146, -0.079412,
		-0.218774, -0.888565, -0.403224,
		41.869202, 35.201725, 18.319914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378658, 35.530849, 18.995594>,  <42.022343, 35.823723, 18.602171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378658, 35.530849, 18.995594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.497437, 35.205391, 18.795673>,  <41.568703, 35.010117, 18.675720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.497437, 35.205391, 18.795673>,  <41.378658, 35.530849, 18.995594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497437, 35.205391, 18.795673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072258, -0.502763, 0.861398,
		-0.952158, -0.291900, -0.090498,
		0.296941, -0.813648, -0.499803,
		41.586517, 34.961296, 18.645733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916946, 34.997288, 19.221481>,  <41.378658, 35.530849, 18.995594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916946, 34.997288, 19.221481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.261971, 34.838863, 19.095541>,  <41.468987, 34.743809, 19.019978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.261971, 34.838863, 19.095541>,  <40.916946, 34.997288, 19.221481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261971, 34.838863, 19.095541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036331, -0.572195, 0.819313,
		-0.504647, -0.718146, -0.479163,
		0.862561, -0.396055, -0.314848,
		41.520737, 34.720047, 19.001087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389156, 34.513794, 18.970774>,  <40.916946, 34.997288, 19.221481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389156, 34.513794, 18.970774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.015118, 34.374187, 18.946192>,  <39.790695, 34.290424, 18.931442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.015118, 34.374187, 18.946192>,  <40.389156, 34.513794, 18.970774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015118, 34.374187, 18.946192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027700, 0.244861, -0.969163,
		0.353303, -0.904560, -0.238637,
		-0.935099, -0.349019, -0.061453,
		39.734589, 34.269482, 18.927755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349957, 34.219505, 18.249138>,  <40.389156, 34.513794, 18.970774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349957, 34.219505, 18.249138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.973747, 34.290756, 18.364857>,  <39.748024, 34.333508, 18.434288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.973747, 34.290756, 18.364857>,  <40.349957, 34.219505, 18.249138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973747, 34.290756, 18.364857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221936, 0.322589, -0.920153,
		-0.257228, -0.929628, -0.263868,
		-0.940520, 0.178127, 0.289297,
		39.691589, 34.344193, 18.451645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923260, 33.900654, 17.718054>,  <40.349957, 34.219505, 18.249138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923260, 33.900654, 17.718054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710255, 34.179256, 17.910433>,  <39.582451, 34.346416, 18.025860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710255, 34.179256, 17.910433>,  <39.923260, 33.900654, 17.718054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710255, 34.179256, 17.910433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272977, 0.396530, -0.876497,
		-0.801196, -0.598032, -0.021026,
		-0.532511, 0.696507, 0.480947,
		39.550503, 34.388210, 18.054716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275799, 33.897789, 17.379333>,  <39.923260, 33.900654, 17.718054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275799, 33.897789, 17.379333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.306717, 34.254681, 17.557299>,  <39.325268, 34.468815, 17.664078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.306717, 34.254681, 17.557299>,  <39.275799, 33.897789, 17.379333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306717, 34.254681, 17.557299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354103, 0.441721, -0.824314,
		-0.932007, -0.093832, 0.350084,
		0.077292, 0.892232, 0.444913,
		39.329906, 34.522350, 17.690773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572952, 34.285564, 17.349899>,  <39.275799, 33.897789, 17.379333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572952, 34.285564, 17.349899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885483, 34.532810, 17.384476>,  <39.073002, 34.681156, 17.405222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885483, 34.532810, 17.384476>,  <38.572952, 34.285564, 17.349899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885483, 34.532810, 17.384476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339919, 0.537586, -0.771658,
		-0.523441, 0.573531, 0.630136,
		0.781322, 0.618113, 0.086441,
		39.119881, 34.718243, 17.410408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248798, 34.962830, 17.078985>,  <38.572952, 34.285564, 17.349899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248798, 34.962830, 17.078985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.630196, 35.081066, 17.102560>,  <38.859035, 35.152008, 17.116705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.630196, 35.081066, 17.102560>,  <38.248798, 34.962830, 17.078985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630196, 35.081066, 17.102560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119211, 0.549432, -0.826991,
		-0.276834, 0.781505, 0.559118,
		0.953494, 0.295592, 0.058937,
		38.916245, 35.169743, 17.120241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232231, 35.637085, 16.953856>,  <38.248798, 34.962830, 17.078985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232231, 35.637085, 16.953856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.612122, 35.544216, 16.869831>,  <38.840054, 35.488495, 16.819416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.612122, 35.544216, 16.869831>,  <38.232231, 35.637085, 16.953856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612122, 35.544216, 16.869831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075922, 0.480126, -0.873908,
		0.303749, 0.845918, 0.438360,
		0.949722, -0.232168, -0.210062,
		38.897038, 35.474567, 16.806812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895748, 36.226952, 17.346163>,  <38.232231, 35.637085, 16.953856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895748, 36.226952, 17.346163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512093, 36.187458, 17.240110>,  <37.281898, 36.163761, 17.176479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512093, 36.187458, 17.240110>,  <37.895748, 36.226952, 17.346163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512093, 36.187458, 17.240110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160565, -0.581622, 0.797455,
		-0.232943, 0.807445, 0.542005,
		-0.959143, -0.098735, -0.265132,
		37.224350, 36.157837, 17.160570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533569, 36.267361, 17.975592>,  <37.895748, 36.226952, 17.346163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533569, 36.267361, 17.975592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.286926, 36.088379, 17.716492>,  <37.138943, 35.980988, 17.561031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.286926, 36.088379, 17.716492>,  <37.533569, 36.267361, 17.975592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286926, 36.088379, 17.716492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291509, -0.634532, 0.715815,
		-0.731316, 0.630200, 0.260817,
		-0.616603, -0.447457, -0.647752,
		37.101944, 35.954144, 17.522165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934204, 36.250763, 18.325867>,  <37.533569, 36.267361, 17.975592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934204, 36.250763, 18.325867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.889145, 35.972313, 18.042253>,  <36.862110, 35.805244, 17.872086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.889145, 35.972313, 18.042253>,  <36.934204, 36.250763, 18.325867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889145, 35.972313, 18.042253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386524, -0.626671, 0.676670,
		-0.915374, 0.350285, -0.198473,
		-0.112650, -0.696121, -0.709032,
		36.855350, 35.763477, 17.829544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301495, 35.912945, 18.504948>,  <36.934204, 36.250763, 18.325867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301495, 35.912945, 18.504948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496712, 35.653259, 18.271595>,  <36.613842, 35.497448, 18.131584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496712, 35.653259, 18.271595>,  <36.301495, 35.912945, 18.504948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496712, 35.653259, 18.271595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323951, -0.755379, 0.569612,
		-0.810476, -0.089006, -0.578970,
		0.488040, -0.649215, -0.583383,
		36.643124, 35.458496, 18.096581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854370, 35.357147, 18.466381>,  <36.301495, 35.912945, 18.504948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854370, 35.357147, 18.466381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220272, 35.229580, 18.367167>,  <36.439812, 35.153038, 18.307638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220272, 35.229580, 18.367167>,  <35.854370, 35.357147, 18.466381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220272, 35.229580, 18.367167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150713, -0.838967, 0.522896,
		-0.374853, -0.440938, -0.815511,
		0.914752, -0.318917, -0.248035,
		36.494698, 35.133904, 18.292755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714851, 34.688110, 18.447632>,  <35.854370, 35.357147, 18.466381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714851, 34.688110, 18.447632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.113636, 34.702164, 18.475433>,  <36.352905, 34.710594, 18.492115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.113636, 34.702164, 18.475433>,  <35.714851, 34.688110, 18.447632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113636, 34.702164, 18.475433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002473, -0.877755, 0.479104,
		0.077839, -0.477820, -0.875002,
		0.996963, 0.035130, 0.069505,
		36.412724, 34.712704, 18.496284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009212, 34.133503, 18.162796>,  <35.714851, 34.688110, 18.447632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009212, 34.133503, 18.162796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.292213, 34.249325, 18.420664>,  <36.462013, 34.318817, 18.575384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.292213, 34.249325, 18.420664>,  <36.009212, 34.133503, 18.162796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292213, 34.249325, 18.420664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112371, -0.854513, 0.507129,
		0.697722, -0.431236, -0.572030,
		0.707500, 0.289555, 0.644672,
		36.504463, 34.336193, 18.614065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.075512, 39.725899, 16.132797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.432461, 39.561932, 16.208305>,  <40.646629, 39.463551, 16.253611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.432461, 39.561932, 16.208305>,  <40.075512, 39.725899, 16.132797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432461, 39.561932, 16.208305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381561, -0.461933, 0.800643,
		-0.241000, -0.786500, -0.568627,
		0.892374, -0.409921, 0.188772,
		40.700172, 39.438953, 16.264936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902256, 39.106457, 16.244799>,  <40.075512, 39.725899, 16.132797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902256, 39.106457, 16.244799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.262581, 39.136719, 16.415823>,  <40.478775, 39.154877, 16.518438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.262581, 39.136719, 16.415823>,  <39.902256, 39.106457, 16.244799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262581, 39.136719, 16.415823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305490, -0.589332, 0.747906,
		0.308560, -0.804341, -0.507766,
		0.900814, 0.075657, 0.427562,
		40.532825, 39.159416, 16.544092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904613, 38.444553, 16.493258>,  <39.902256, 39.106457, 16.244799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904613, 38.444553, 16.493258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173470, 38.659214, 16.697309>,  <40.334782, 38.788010, 16.819740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173470, 38.659214, 16.697309>,  <39.904613, 38.444553, 16.493258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173470, 38.659214, 16.697309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267015, -0.466928, 0.843019,
		0.690602, -0.702839, -0.170547,
		0.672140, 0.536653, 0.510130,
		40.375111, 38.820210, 16.850348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293770, 37.981258, 16.899870>,  <39.904613, 38.444553, 16.493258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293770, 37.981258, 16.899870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.302895, 38.334282, 17.087727>,  <40.308369, 38.546097, 17.200439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.302895, 38.334282, 17.087727>,  <40.293770, 37.981258, 16.899870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302895, 38.334282, 17.087727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258402, -0.448594, 0.855565,
		0.965768, -0.140875, 0.217821,
		0.022814, 0.882563, 0.469641,
		40.309738, 38.599052, 17.228619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628239, 37.924763, 17.513594>,  <40.293770, 37.981258, 16.899870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628239, 37.924763, 17.513594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.448681, 38.275043, 17.584745>,  <40.340946, 38.485210, 17.627436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.448681, 38.275043, 17.584745>,  <40.628239, 37.924763, 17.513594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448681, 38.275043, 17.584745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286745, -0.329698, 0.899487,
		0.846328, 0.352769, 0.399102,
		-0.448894, 0.875702, 0.177878,
		40.314014, 38.537754, 17.638109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940617, 38.177708, 18.097742>,  <40.628239, 37.924763, 17.513594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940617, 38.177708, 18.097742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.583595, 38.357327, 18.114283>,  <40.369385, 38.465099, 18.124207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.583595, 38.357327, 18.114283>,  <40.940617, 38.177708, 18.097742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583595, 38.357327, 18.114283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101521, -0.289435, 0.951799,
		0.439373, 0.845330, 0.303923,
		-0.892550, 0.449050, 0.041351,
		40.315830, 38.492043, 18.126688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818462, 38.575424, 18.769512>,  <40.940617, 38.177708, 18.097742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818462, 38.575424, 18.769512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447559, 38.534695, 18.625385>,  <40.225018, 38.510258, 18.538910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447559, 38.534695, 18.625385>,  <40.818462, 38.575424, 18.769512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447559, 38.534695, 18.625385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316343, -0.301757, 0.899372,
		-0.200306, 0.947932, 0.247595,
		-0.927257, -0.101824, -0.360315,
		40.169384, 38.504147, 18.517290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414597, 39.023880, 19.194654>,  <40.818462, 38.575424, 18.769512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414597, 39.023880, 19.194654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.155010, 38.784355, 19.006920>,  <39.999260, 38.640640, 18.894279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.155010, 38.784355, 19.006920>,  <40.414597, 39.023880, 19.194654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155010, 38.784355, 19.006920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496154, -0.134573, 0.857742,
		-0.576784, 0.789504, -0.209769,
		-0.648962, -0.598810, -0.469335,
		39.960323, 38.604713, 18.866119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785286, 39.231873, 19.609426>,  <40.414597, 39.023880, 19.194654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785286, 39.231873, 19.609426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.687729, 38.908497, 19.395161>,  <39.629196, 38.714470, 19.266602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.687729, 38.908497, 19.395161>,  <39.785286, 39.231873, 19.609426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687729, 38.908497, 19.395161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551004, -0.339021, 0.762535,
		-0.798068, 0.481129, -0.362772,
		-0.243891, -0.808443, -0.535665,
		39.614563, 38.665962, 19.234461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166393, 39.201069, 19.684818>,  <39.785286, 39.231873, 19.609426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166393, 39.201069, 19.684818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.252377, 38.833504, 19.552519>,  <39.303967, 38.612965, 19.473139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.252377, 38.833504, 19.552519>,  <39.166393, 39.201069, 19.684818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252377, 38.833504, 19.552519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567950, -0.393129, 0.723106,
		-0.794498, 0.032413, -0.606402,
		0.214956, -0.918912, -0.330750,
		39.316864, 38.557831, 19.453295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518063, 38.780834, 19.747139>,  <39.166393, 39.201069, 19.684818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518063, 38.780834, 19.747139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.820480, 38.519444, 19.761919>,  <39.001930, 38.362610, 19.770786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.820480, 38.519444, 19.761919>,  <38.518063, 38.780834, 19.747139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820480, 38.519444, 19.761919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418864, -0.439689, 0.794498,
		-0.502939, -0.616153, -0.606142,
		0.756046, -0.653475, 0.036947,
		39.047295, 38.323402, 19.773005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134590, 38.073978, 19.828571>,  <38.518063, 38.780834, 19.747139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134590, 38.073978, 19.828571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.514141, 38.060829, 19.954142>,  <38.741871, 38.052940, 20.029484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.514141, 38.060829, 19.954142>,  <38.134590, 38.073978, 19.828571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514141, 38.060829, 19.954142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278770, -0.553776, 0.784614,
		0.148050, -0.832016, -0.534631,
		0.948878, -0.032877, 0.313928,
		38.798805, 38.050964, 20.048321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458752, 37.549274, 19.648800>,  <38.134590, 38.073978, 19.828571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458752, 37.549274, 19.648800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.085167, 37.670052, 19.725260>,  <36.861015, 37.742519, 19.771135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.085167, 37.670052, 19.725260>,  <37.458752, 37.549274, 19.648800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085167, 37.670052, 19.725260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066543, 0.378600, -0.923165,
		-0.351113, -0.874924, -0.333507,
		-0.933966, 0.301943, 0.191152,
		36.804977, 37.760635, 19.782606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044128, 37.279484, 19.110064>,  <37.458752, 37.549274, 19.648800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044128, 37.279484, 19.110064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.842388, 37.589859, 19.261618>,  <36.721344, 37.776085, 19.352551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.842388, 37.589859, 19.261618>,  <37.044128, 37.279484, 19.110064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842388, 37.589859, 19.261618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053799, 0.409689, -0.910637,
		-0.861823, -0.479662, -0.164882,
		-0.504349, 0.775938, 0.378885,
		36.691082, 37.822639, 19.375282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377598, 37.286171, 18.705305>,  <37.044128, 37.279484, 19.110064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377598, 37.286171, 18.705305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.437160, 37.638721, 18.884636>,  <36.472900, 37.850254, 18.992235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.437160, 37.638721, 18.884636>,  <36.377598, 37.286171, 18.705305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437160, 37.638721, 18.884636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212271, 0.471304, -0.856045,
		-0.965799, 0.032305, 0.257272,
		0.148908, 0.881379, 0.448328,
		36.481834, 37.903133, 19.019135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870037, 37.694397, 18.388096>,  <36.377598, 37.286171, 18.705305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870037, 37.694397, 18.388096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.113735, 37.960609, 18.560553>,  <36.259956, 38.120338, 18.664026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.113735, 37.960609, 18.560553>,  <35.870037, 37.694397, 18.388096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113735, 37.960609, 18.560553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139150, 0.624989, -0.768131,
		-0.780675, 0.407990, 0.473383,
		0.609249, 0.665532, 0.431141,
		36.296509, 38.160271, 18.689896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550800, 38.328754, 18.306564>,  <35.870037, 37.694397, 18.388096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550800, 38.328754, 18.306564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.930866, 38.429596, 18.379911>,  <36.158905, 38.490101, 18.423920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.930866, 38.429596, 18.379911>,  <35.550800, 38.328754, 18.306564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930866, 38.429596, 18.379911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070184, 0.746119, -0.662103,
		-0.303731, 0.616240, 0.726633,
		0.950169, 0.252099, 0.183370,
		36.215916, 38.505226, 18.434923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549442, 39.055294, 18.519688>,  <35.550800, 38.328754, 18.306564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549442, 39.055294, 18.519688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.905109, 38.953865, 18.367334>,  <36.118511, 38.893005, 18.275923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.905109, 38.953865, 18.367334>,  <35.549442, 39.055294, 18.519688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905109, 38.953865, 18.367334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018818, 0.811431, -0.584145,
		0.457186, 0.526573, 0.716730,
		0.889172, -0.253575, -0.380884,
		36.171860, 38.877792, 18.253069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795601, 39.731537, 18.273027>,  <35.549442, 39.055294, 18.519688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795601, 39.731537, 18.273027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.078796, 39.503937, 18.105700>,  <36.248714, 39.367378, 18.005302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.078796, 39.503937, 18.105700>,  <35.795601, 39.731537, 18.273027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078796, 39.503937, 18.105700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061028, 0.639408, -0.766442,
		0.703583, 0.517103, 0.487418,
		0.707988, -0.569001, -0.418319,
		36.291191, 39.333237, 17.980204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311485, 40.147327, 17.989231>,  <35.795601, 39.731537, 18.273027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311485, 40.147327, 17.989231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.346867, 39.802479, 17.789665>,  <36.368095, 39.595570, 17.669926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.346867, 39.802479, 17.789665>,  <36.311485, 40.147327, 17.989231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346867, 39.802479, 17.789665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239883, 0.504574, -0.829374,
		0.966763, -0.046317, 0.251443,
		0.088457, -0.862125, -0.498915,
		36.373405, 39.543842, 17.639992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934700, 40.173119, 17.639647>,  <36.311485, 40.147327, 17.989231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934700, 40.173119, 17.639647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.760715, 39.874958, 17.437582>,  <36.656322, 39.696064, 17.316343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.760715, 39.874958, 17.437582>,  <36.934700, 40.173119, 17.639647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760715, 39.874958, 17.437582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168724, 0.483604, -0.858871,
		0.884499, -0.458810, -0.084583,
		-0.434963, -0.745400, -0.505160,
		36.630226, 39.651337, 17.286034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314587, 40.165607, 17.014492>,  <36.934700, 40.173119, 17.639647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314587, 40.165607, 17.014492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.970978, 39.981026, 16.925827>,  <36.764812, 39.870277, 16.872627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.970978, 39.981026, 16.925827>,  <37.314587, 40.165607, 17.014492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970978, 39.981026, 16.925827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028705, 0.388892, -0.920836,
		0.511128, -0.797384, -0.320822,
		-0.859025, -0.461456, -0.221663,
		36.713268, 39.842590, 16.859329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416618, 39.952808, 16.393017>,  <37.314587, 40.165607, 17.014492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416618, 39.952808, 16.393017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.018963, 39.973412, 16.431049>,  <36.780369, 39.985775, 16.453869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.018963, 39.973412, 16.431049>,  <37.416618, 39.952808, 16.393017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018963, 39.973412, 16.431049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061993, 0.448976, -0.891391,
		-0.088603, -0.892058, -0.443150,
		-0.994136, 0.051508, 0.095082,
		36.720722, 39.988865, 16.459574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057312, 39.767338, 15.738686>,  <37.416618, 39.952808, 16.393017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057312, 39.767338, 15.738686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.753593, 39.944065, 15.929793>,  <36.571362, 40.050102, 16.044458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.753593, 39.944065, 15.929793>,  <37.057312, 39.767338, 15.738686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753593, 39.944065, 15.929793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364210, 0.319899, -0.874652,
		-0.539273, -0.838130, -0.081985,
		-0.759299, 0.441817, 0.477768,
		36.525803, 40.076611, 16.073124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371834, 39.574093, 15.377652>,  <37.057312, 39.767338, 15.738686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371834, 39.574093, 15.377652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.357704, 39.925514, 15.568187>,  <36.349224, 40.136368, 15.682508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.357704, 39.925514, 15.568187>,  <36.371834, 39.574093, 15.377652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357704, 39.925514, 15.568187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378398, 0.429389, -0.820024,
		-0.924969, -0.209213, 0.317274,
		-0.035326, 0.878553, 0.476337,
		36.347107, 40.189079, 15.711088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927990, 39.033497, 15.233345>,  <36.371834, 39.574093, 15.377652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927990, 39.033497, 15.233345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.948017, 38.718784, 14.987265>,  <36.960033, 38.529957, 14.839616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.948017, 38.718784, 14.987265>,  <36.927990, 39.033497, 15.233345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948017, 38.718784, 14.987265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056330, -0.612770, 0.788251,
		-0.997156, -0.074119, 0.013641,
		0.050066, -0.786778, -0.615202,
		36.963036, 38.482750, 14.802704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352062, 38.491138, 15.413454>,  <36.927990, 39.033497, 15.233345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352062, 38.491138, 15.413454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.678909, 38.339619, 15.239636>,  <36.875019, 38.248707, 15.135345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.678909, 38.339619, 15.239636>,  <36.352062, 38.491138, 15.413454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678909, 38.339619, 15.239636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002987, -0.751011, 0.660283,
		-0.576460, -0.540828, -0.612535,
		0.817120, -0.378798, -0.434544,
		36.924046, 38.225979, 15.109273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051929, 37.884899, 15.178725>,  <36.352062, 38.491138, 15.413454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051929, 37.884899, 15.178725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.451012, 37.857803, 15.179029>,  <36.690460, 37.841545, 15.179212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.451012, 37.857803, 15.179029>,  <36.051929, 37.884899, 15.178725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451012, 37.857803, 15.179029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055336, -0.808434, 0.585980,
		-0.039079, -0.584676, -0.810325,
		0.997703, -0.067739, 0.000761,
		36.750324, 37.837482, 15.179257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056740, 37.213287, 15.259216>,  <36.051929, 37.884899, 15.178725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056740, 37.213287, 15.259216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435333, 37.320080, 15.331768>,  <36.662487, 37.384155, 15.375299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435333, 37.320080, 15.331768>,  <36.056740, 37.213287, 15.259216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435333, 37.320080, 15.331768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112033, -0.798771, 0.591112,
		0.302694, -0.539156, -0.785931,
		0.946480, 0.266977, 0.181379,
		36.719276, 37.400173, 15.386182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338856, 36.522568, 15.351904>,  <36.056740, 37.213287, 15.259216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338856, 36.522568, 15.351904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576241, 36.790623, 15.530216>,  <36.718670, 36.951454, 15.637203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576241, 36.790623, 15.530216>,  <36.338856, 36.522568, 15.351904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576241, 36.790623, 15.530216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205934, -0.661850, 0.720795,
		0.778071, -0.335963, -0.530786,
		0.593461, 0.670137, 0.445781,
		36.754280, 36.991665, 15.663950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898960, 36.145000, 15.517230>,  <36.338856, 36.522568, 15.351904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898960, 36.145000, 15.517230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.931538, 36.452618, 15.770823>,  <36.951084, 36.637188, 15.922979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.931538, 36.452618, 15.770823>,  <36.898960, 36.145000, 15.517230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931538, 36.452618, 15.770823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050608, -0.638468, 0.767983,
		0.995393, -0.030460, -0.090917,
		0.081441, 0.769046, 0.633985,
		36.955971, 36.683331, 15.961019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467499, 36.024605, 15.908883>,  <36.898960, 36.145000, 15.517230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467499, 36.024605, 15.908883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.267166, 36.296158, 16.123650>,  <37.146965, 36.459091, 16.252510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.267166, 36.296158, 16.123650>,  <37.467499, 36.024605, 15.908883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267166, 36.296158, 16.123650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087214, -0.577584, 0.811659,
		0.861138, 0.453333, 0.230066,
		-0.500834, 0.678885, 0.536917,
		37.116917, 36.499825, 16.284725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889900, 36.101192, 16.506802>,  <37.467499, 36.024605, 15.908883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889900, 36.101192, 16.506802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.524734, 36.213448, 16.625341>,  <37.305634, 36.280800, 16.696465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.524734, 36.213448, 16.625341>,  <37.889900, 36.101192, 16.506802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524734, 36.213448, 16.625341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108318, -0.533460, 0.838861,
		0.393508, 0.797911, 0.456606,
		-0.912917, 0.280640, 0.296349,
		37.250858, 36.297638, 16.714247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565292, 36.280193, 16.581413>,  <37.889900, 36.101192, 16.506802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565292, 36.280193, 16.581413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.806068, 35.970387, 16.503654>,  <38.950535, 35.784504, 16.456999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.806068, 35.970387, 16.503654>,  <38.565292, 36.280193, 16.581413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806068, 35.970387, 16.503654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142629, 0.343804, -0.928146,
		0.785699, 0.530964, 0.317418,
		0.601942, -0.774517, -0.194396,
		38.986652, 35.738033, 16.445335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172363, 36.595764, 16.303995>,  <38.565292, 36.280193, 16.581413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172363, 36.595764, 16.303995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.150543, 36.214497, 16.185007>,  <39.137451, 35.985737, 16.113613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.150543, 36.214497, 16.185007>,  <39.172363, 36.595764, 16.303995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150543, 36.214497, 16.185007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171576, 0.284537, -0.943186,
		0.983660, -0.102487, 0.148021,
		-0.054547, -0.953171, -0.297472,
		39.134178, 35.928547, 16.095766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694225, 36.466572, 15.808775>,  <39.172363, 36.595764, 16.303995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694225, 36.466572, 15.808775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.475006, 36.137360, 15.749096>,  <39.343475, 35.939831, 15.713288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.475006, 36.137360, 15.749096>,  <39.694225, 36.466572, 15.808775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475006, 36.137360, 15.749096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160656, 0.071475, -0.984419,
		0.820871, -0.563482, 0.093053,
		-0.548052, -0.823030, -0.149199,
		39.310589, 35.890450, 15.704336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098629, 36.091938, 15.268306>,  <39.694225, 36.466572, 15.808775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098629, 36.091938, 15.268306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.727295, 35.943798, 15.255493>,  <39.504494, 35.854912, 15.247806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.727295, 35.943798, 15.255493>,  <40.098629, 36.091938, 15.268306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727295, 35.943798, 15.255493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050306, -0.039785, -0.997941,
		0.368315, -0.928039, 0.055565,
		-0.928339, -0.370352, -0.032032,
		39.448792, 35.832691, 15.245884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074242, 35.519581, 14.742837>,  <40.098629, 36.091938, 15.268306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074242, 35.519581, 14.742837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.701691, 35.648705, 14.810173>,  <39.478161, 35.726177, 14.850574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.701691, 35.648705, 14.810173>,  <40.074242, 35.519581, 14.742837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701691, 35.648705, 14.810173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206734, -0.088335, -0.974401,
		-0.299673, -0.942334, 0.149009,
		-0.931374, 0.322807, 0.168341,
		39.422279, 35.745548, 14.860676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684669, 35.344250, 14.159892>,  <40.074242, 35.519581, 14.742837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684669, 35.344250, 14.159892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.429985, 35.618069, 14.301872>,  <39.277176, 35.782360, 14.387060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.429985, 35.618069, 14.301872>,  <39.684669, 35.344250, 14.159892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429985, 35.618069, 14.301872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187500, 0.309057, -0.932377,
		-0.747961, -0.660207, -0.068426,
		-0.636709, 0.684551, 0.354951,
		39.238972, 35.823433, 14.408358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157650, 35.283367, 13.760554>,  <39.684669, 35.344250, 14.159892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157650, 35.283367, 13.760554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.110100, 35.655415, 13.899553>,  <39.081570, 35.878643, 13.982953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.110100, 35.655415, 13.899553>,  <39.157650, 35.283367, 13.760554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110100, 35.655415, 13.899553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077029, 0.340285, -0.937162,
		-0.989916, -0.138177, 0.031193,
		-0.118880, 0.930115, 0.347498,
		39.074436, 35.934448, 14.003802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562336, 35.629570, 13.393180>,  <39.157650, 35.283367, 13.760554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562336, 35.629570, 13.393180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.782139, 35.934155, 13.530711>,  <38.914021, 36.116905, 13.613230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.782139, 35.934155, 13.530711>,  <38.562336, 35.629570, 13.393180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782139, 35.934155, 13.530711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121246, 0.479854, -0.868930,
		-0.826643, 0.435798, 0.356008,
		0.549510, 0.761459, 0.343829,
		38.946991, 36.162594, 13.633860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208416, 36.281033, 13.377906>,  <38.562336, 35.629570, 13.393180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208416, 36.281033, 13.377906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.603134, 36.336571, 13.344525>,  <38.839966, 36.369892, 13.324497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.603134, 36.336571, 13.344525>,  <38.208416, 36.281033, 13.377906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603134, 36.336571, 13.344525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146551, 0.545640, -0.825106,
		-0.069025, 0.826438, 0.558781,
		0.986792, 0.138843, -0.083452,
		38.899170, 36.378223, 13.319489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.696293, 31.435564, 28.818148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559078, 31.447241, 28.442600>,  <36.476749, 31.454247, 28.217272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559078, 31.447241, 28.442600>,  <36.696293, 31.435564, 28.818148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559078, 31.447241, 28.442600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738635, 0.625870, -0.250412,
		0.580300, -0.779381, -0.236257,
		-0.343032, 0.029194, -0.938870,
		36.456169, 31.455999, 28.160940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123375, 31.533758, 28.235962>,  <36.696293, 31.435564, 28.818148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123375, 31.533758, 28.235962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520081, 31.541466, 28.185307>,  <37.758102, 31.546091, 28.154913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520081, 31.541466, 28.185307>,  <37.123375, 31.533758, 28.235962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520081, 31.541466, 28.185307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128031, 0.180682, -0.975173,
		0.004091, 0.983353, 0.181660,
		0.991762, 0.019269, -0.126639,
		37.817608, 31.547247, 28.147314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418644, 32.187168, 27.840286>,  <37.123375, 31.533758, 28.235962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418644, 32.187168, 27.840286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698742, 31.911209, 27.766859>,  <37.866802, 31.745634, 27.722803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698742, 31.911209, 27.766859>,  <37.418644, 32.187168, 27.840286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698742, 31.911209, 27.766859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056932, 0.310279, -0.948939,
		0.711630, 0.654038, 0.256548,
		0.700244, -0.689900, -0.183568,
		37.908813, 31.704239, 27.711788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789528, 32.510010, 27.362299>,  <37.418644, 32.187168, 27.840286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789528, 32.510010, 27.362299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.917229, 32.133625, 27.317272>,  <37.993851, 31.907795, 27.290257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.917229, 32.133625, 27.317272>,  <37.789528, 32.510010, 27.362299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917229, 32.133625, 27.317272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107095, 0.153845, -0.982274,
		0.941599, 0.301538, 0.149888,
		0.319252, -0.940960, -0.112567,
		38.013004, 31.851337, 27.283503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488316, 32.494442, 27.000511>,  <37.789528, 32.510010, 27.362299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488316, 32.494442, 27.000511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.298351, 32.147655, 26.940073>,  <38.184372, 31.939583, 26.903811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.298351, 32.147655, 26.940073>,  <38.488316, 32.494442, 27.000511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298351, 32.147655, 26.940073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252840, 0.030036, -0.967042,
		0.842933, -0.497458, 0.204940,
		-0.474907, -0.866968, -0.151096,
		38.155880, 31.887566, 26.894745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849026, 32.237072, 26.399433>,  <38.488316, 32.494442, 27.000511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849026, 32.237072, 26.399433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538231, 31.986244, 26.421627>,  <38.351753, 31.835749, 26.434944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538231, 31.986244, 26.421627>,  <38.849026, 32.237072, 26.399433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538231, 31.986244, 26.421627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120830, -0.235056, -0.964442,
		0.617810, -0.742656, 0.258404,
		-0.776988, -0.627065, 0.055485,
		38.305134, 31.798124, 26.438272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048588, 31.640398, 26.021690>,  <38.849026, 32.237072, 26.399433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048588, 31.640398, 26.021690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.648823, 31.629622, 26.030165>,  <38.408962, 31.623156, 26.035250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.648823, 31.629622, 26.030165>,  <39.048588, 31.640398, 26.021690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648823, 31.629622, 26.030165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013819, -0.248847, -0.968444,
		0.031363, -0.968168, 0.248329,
		-0.999412, -0.026942, 0.021184,
		38.348999, 31.621538, 26.036520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849777, 30.965609, 25.757999>,  <39.048588, 31.640398, 26.021690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849777, 30.965609, 25.757999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.532383, 31.204470, 25.711023>,  <38.341946, 31.347786, 25.682838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.532383, 31.204470, 25.711023>,  <38.849777, 30.965609, 25.757999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532383, 31.204470, 25.711023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062309, -0.271666, -0.960372,
		-0.605393, -0.754722, 0.252770,
		-0.793484, 0.597153, -0.117439,
		38.294338, 31.383615, 25.675791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468113, 30.527504, 25.458658>,  <38.849777, 30.965609, 25.757999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468113, 30.527504, 25.458658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.324509, 30.888521, 25.363556>,  <38.238346, 31.105131, 25.306494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.324509, 30.888521, 25.363556>,  <38.468113, 30.527504, 25.458658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324509, 30.888521, 25.363556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085915, -0.221699, -0.971323,
		-0.929371, -0.369141, 0.002050,
		-0.359010, 0.902543, -0.237756,
		38.216805, 31.159285, 25.292229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984631, 30.335989, 24.913210>,  <38.468113, 30.527504, 25.458658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984631, 30.335989, 24.913210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004871, 30.734301, 24.882589>,  <38.017014, 30.973288, 24.864218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004871, 30.734301, 24.882589>,  <37.984631, 30.335989, 24.913210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004871, 30.734301, 24.882589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046161, -0.074234, -0.996172,
		-0.997652, 0.053938, 0.042210,
		0.050598, 0.995781, -0.076549,
		38.020050, 31.033035, 24.859625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442711, 30.559418, 24.469210>,  <37.984631, 30.335989, 24.913210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442711, 30.559418, 24.469210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714817, 30.852268, 24.455206>,  <37.878082, 31.027979, 24.446804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714817, 30.852268, 24.455206>,  <37.442711, 30.559418, 24.469210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714817, 30.852268, 24.455206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216530, 0.155104, -0.963876,
		-0.700249, 0.663275, 0.264040,
		0.680269, 0.732126, -0.035007,
		37.918900, 31.071905, 24.444704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197960, 31.089605, 23.974066>,  <37.442711, 30.559418, 24.469210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197960, 31.089605, 23.974066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585747, 31.182423, 24.005768>,  <37.818420, 31.238113, 24.024790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585747, 31.182423, 24.005768>,  <37.197960, 31.089605, 23.974066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585747, 31.182423, 24.005768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030582, 0.206281, -0.978015,
		-0.243291, 0.950581, 0.192887,
		0.969471, 0.232043, 0.079257,
		37.876587, 31.252035, 24.029545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584919, 31.634161, 24.180309>,  <37.197960, 31.089605, 23.974066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584919, 31.634161, 24.180309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201817, 31.547911, 24.104195>,  <35.971954, 31.496161, 24.058525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201817, 31.547911, 24.104195>,  <36.584919, 31.634161, 24.180309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201817, 31.547911, 24.104195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146270, -0.204454, 0.967886,
		-0.247607, 0.954832, 0.164278,
		-0.957756, -0.215626, -0.190288,
		35.914490, 31.483223, 24.047108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146175, 31.820574, 24.708017>,  <36.584919, 31.634161, 24.180309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146175, 31.820574, 24.708017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855984, 31.576344, 24.580976>,  <35.681870, 31.429806, 24.504751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855984, 31.576344, 24.580976>,  <36.146175, 31.820574, 24.708017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855984, 31.576344, 24.580976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238319, -0.210056, 0.948198,
		-0.645661, 0.763593, 0.006881,
		-0.725484, -0.610575, -0.317604,
		35.638340, 31.393171, 24.485695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679005, 31.992144, 25.182144>,  <36.146175, 31.820574, 24.708017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679005, 31.992144, 25.182144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573864, 31.639730, 25.024820>,  <35.510780, 31.428284, 24.930426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573864, 31.639730, 25.024820>,  <35.679005, 31.992144, 25.182144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573864, 31.639730, 25.024820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225091, -0.340400, 0.912941,
		-0.938213, 0.328497, -0.108838,
		-0.262850, -0.881032, -0.393310,
		35.495010, 31.375422, 24.906828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981300, 31.992590, 25.349691>,  <35.679005, 31.992144, 25.182144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981300, 31.992590, 25.349691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060734, 31.609383, 25.266970>,  <35.108395, 31.379459, 25.217337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060734, 31.609383, 25.266970>,  <34.981300, 31.992590, 25.349691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060734, 31.609383, 25.266970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259739, -0.254907, 0.931428,
		-0.945039, -0.131253, -0.299456,
		0.198586, -0.958016, -0.206806,
		35.120308, 31.321978, 25.204927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472858, 31.639360, 25.774204>,  <34.981300, 31.992590, 25.349691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472858, 31.639360, 25.774204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739216, 31.349154, 25.704676>,  <34.899029, 31.175030, 25.662958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739216, 31.349154, 25.704676>,  <34.472858, 31.639360, 25.774204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739216, 31.349154, 25.704676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198631, -0.396988, 0.896073,
		-0.719120, -0.562161, -0.408461,
		0.665892, -0.725517, -0.173820,
		34.938984, 31.131498, 25.652531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132900, 31.049494, 25.862823>,  <34.472858, 31.639360, 25.774204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132900, 31.049494, 25.862823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523064, 30.978868, 25.915585>,  <34.757164, 30.936493, 25.947241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523064, 30.978868, 25.915585>,  <34.132900, 31.049494, 25.862823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523064, 30.978868, 25.915585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195037, -0.412822, 0.889685,
		-0.102634, -0.893534, -0.437107,
		0.975411, -0.176564, 0.131902,
		34.815685, 30.925900, 25.955154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009811, 30.422432, 26.036089>,  <34.132900, 31.049494, 25.862823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009811, 30.422432, 26.036089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381538, 30.508114, 26.156412>,  <34.604576, 30.559525, 26.228605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381538, 30.508114, 26.156412>,  <34.009811, 30.422432, 26.036089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381538, 30.508114, 26.156412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161078, -0.497865, 0.852165,
		0.332302, -0.840384, -0.428170,
		0.929317, 0.214207, 0.300809,
		34.660332, 30.572376, 26.246655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265209, 29.832762, 26.371510>,  <34.009811, 30.422432, 26.036089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265209, 29.832762, 26.371510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518372, 30.105021, 26.519102>,  <34.670269, 30.268375, 26.607658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518372, 30.105021, 26.519102>,  <34.265209, 29.832762, 26.371510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518372, 30.105021, 26.519102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164213, -0.347725, 0.923104,
		0.756611, -0.644833, -0.108307,
		0.632909, 0.680645, 0.368983,
		34.708244, 30.309214, 26.629797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903706, 29.443211, 26.774458>,  <34.265209, 29.832762, 26.371510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903706, 29.443211, 26.774458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898682, 29.822760, 26.900620>,  <34.895668, 30.050489, 26.976316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898682, 29.822760, 26.900620>,  <34.903706, 29.443211, 26.774458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898682, 29.822760, 26.900620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174249, -0.312682, 0.933738,
		0.984621, -0.043231, 0.169268,
		-0.012561, 0.948874, 0.315406,
		34.894913, 30.107422, 26.995241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369530, 29.504358, 27.370031>,  <34.903706, 29.443211, 26.774458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369530, 29.504358, 27.370031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108177, 29.805882, 27.397926>,  <34.951366, 29.986795, 27.414663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108177, 29.805882, 27.397926>,  <35.369530, 29.504358, 27.370031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108177, 29.805882, 27.397926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082784, -0.162716, 0.983194,
		0.752485, 0.636631, 0.168719,
		-0.653386, 0.753806, 0.069739,
		34.912163, 30.032022, 27.418848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701103, 29.901995, 27.917339>,  <35.369530, 29.504358, 27.370031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701103, 29.901995, 27.917339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.316193, 30.002609, 27.875875>,  <35.085247, 30.062979, 27.850998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.316193, 30.002609, 27.875875>,  <35.701103, 29.901995, 27.917339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316193, 30.002609, 27.875875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118388, -0.044102, 0.991988,
		0.244950, 0.966842, 0.072217,
		-0.962280, 0.251537, -0.103659,
		35.027508, 30.078070, 27.844778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564793, 30.402645, 28.340273>,  <35.701103, 29.901995, 27.917339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564793, 30.402645, 28.340273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199745, 30.253912, 28.272308>,  <34.980717, 30.164671, 28.231529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199745, 30.253912, 28.272308>,  <35.564793, 30.402645, 28.340273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199745, 30.253912, 28.272308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169554, -0.033926, 0.984937,
		-0.371997, 0.927679, -0.032084,
		-0.912617, -0.371834, -0.169912,
		34.925961, 30.142363, 28.221334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037598, 30.876823, 28.604141>,  <35.564793, 30.402645, 28.340273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037598, 30.876823, 28.604141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872665, 30.512646, 28.591022>,  <34.773708, 30.294138, 28.583151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872665, 30.512646, 28.591022>,  <35.037598, 30.876823, 28.604141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872665, 30.512646, 28.591022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341612, 0.121137, 0.932002,
		-0.844564, 0.395492, -0.360967,
		-0.412326, -0.910446, -0.032797,
		34.748966, 30.239511, 28.581184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279358, 30.830498, 28.871792>,  <35.037598, 30.876823, 28.604141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279358, 30.830498, 28.871792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495983, 30.499166, 28.929182>,  <34.625957, 30.300367, 28.963617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495983, 30.499166, 28.929182>,  <34.279358, 30.830498, 28.871792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495983, 30.499166, 28.929182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180656, 0.052011, 0.982170,
		-0.821021, -0.557825, -0.121475,
		0.541561, -0.828327, 0.143476,
		34.658451, 30.250668, 28.972225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229584, 31.578547, 28.623440>,  <34.279358, 30.830498, 28.871792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229584, 31.578547, 28.623440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511120, 31.810991, 28.460018>,  <34.680042, 31.950459, 28.361965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511120, 31.810991, 28.460018>,  <34.229584, 31.578547, 28.623440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511120, 31.810991, 28.460018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299640, 0.278595, 0.912470,
		0.644069, -0.764652, 0.021961,
		0.703840, 0.581112, -0.408555,
		34.722271, 31.985325, 28.337452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900185, 32.130726, 28.890945>,  <34.229584, 31.578547, 28.623440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900185, 32.130726, 28.890945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204792, 32.370499, 28.989552>,  <34.387558, 32.514362, 29.048716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204792, 32.370499, 28.989552>,  <33.900185, 32.130726, 28.890945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204792, 32.370499, 28.989552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081928, 0.288267, -0.954039,
		-0.642944, 0.746715, 0.170411,
		0.761519, 0.599432, 0.246516,
		34.433247, 32.550327, 29.063507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738365, 32.782162, 28.627790>,  <33.900185, 32.130726, 28.890945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738365, 32.782162, 28.627790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135910, 32.809620, 28.662512>,  <34.374435, 32.826096, 28.683344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135910, 32.809620, 28.662512>,  <33.738365, 32.782162, 28.627790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135910, 32.809620, 28.662512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051539, 0.406985, -0.911980,
		-0.097934, 0.910852, 0.400947,
		0.993857, 0.068649, 0.086802,
		34.434067, 32.830215, 28.688553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994247, 33.452335, 28.527115>,  <33.738365, 32.782162, 28.627790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994247, 33.452335, 28.527115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320080, 33.241562, 28.430126>,  <34.515579, 33.115097, 28.371933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320080, 33.241562, 28.430126>,  <33.994247, 33.452335, 28.527115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320080, 33.241562, 28.430126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074197, 0.509244, -0.857418,
		0.575278, 0.680450, 0.453920,
		0.814586, -0.526933, -0.242470,
		34.564457, 33.083481, 28.357386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567776, 33.874023, 28.272934>,  <33.994247, 33.452335, 28.527115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567776, 33.874023, 28.272934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644119, 33.508560, 28.129379>,  <34.689926, 33.289284, 28.043245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644119, 33.508560, 28.129379>,  <34.567776, 33.874023, 28.272934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644119, 33.508560, 28.129379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163841, 0.390131, -0.906065,
		0.967848, 0.114129, 0.224154,
		0.190857, -0.913659, -0.358888,
		34.701378, 33.234463, 28.021713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183556, 33.950687, 28.028111>,  <34.567776, 33.874023, 28.272934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183556, 33.950687, 28.028111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042217, 33.635605, 27.826252>,  <34.957417, 33.446556, 27.705137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042217, 33.635605, 27.826252>,  <35.183556, 33.950687, 28.028111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042217, 33.635605, 27.826252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236491, 0.446711, -0.862856,
		0.905108, -0.424229, 0.028442,
		-0.353343, -0.787704, -0.504649,
		34.936214, 33.399292, 27.674858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612427, 33.909912, 27.456457>,  <35.183556, 33.950687, 28.028111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612427, 33.909912, 27.456457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.287071, 33.691967, 27.374945>,  <35.091858, 33.561199, 27.326038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.287071, 33.691967, 27.374945>,  <35.612427, 33.909912, 27.456457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287071, 33.691967, 27.374945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003980, 0.355508, -0.934665,
		0.581710, -0.759433, -0.291334,
		-0.813386, -0.544864, -0.203780,
		35.043056, 33.528507, 27.313810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742542, 33.561954, 26.740875>,  <35.612427, 33.909912, 27.456457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742542, 33.561954, 26.740875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.347691, 33.503891, 26.767712>,  <35.110779, 33.469051, 26.783813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.347691, 33.503891, 26.767712>,  <35.742542, 33.561954, 26.740875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347691, 33.503891, 26.767712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096753, 0.208112, -0.973308,
		0.127320, -0.967274, -0.219478,
		-0.987131, -0.145157, 0.067090,
		35.051552, 33.460342, 26.787838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590359, 32.958393, 26.232704>,  <35.742542, 33.561954, 26.740875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590359, 32.958393, 26.232704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278027, 33.191055, 26.323900>,  <35.090626, 33.330654, 26.378618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278027, 33.191055, 26.323900>,  <35.590359, 32.958393, 26.232704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278027, 33.191055, 26.323900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032119, 0.327079, -0.944451,
		-0.623916, -0.744780, -0.236711,
		-0.780831, 0.581655, 0.227991,
		35.043777, 33.365551, 26.392298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003338, 32.834332, 25.738352>,  <35.590359, 32.958393, 26.232704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003338, 32.834332, 25.738352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964722, 33.199337, 25.897346>,  <34.941551, 33.418343, 25.992743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964722, 33.199337, 25.897346>,  <35.003338, 32.834332, 25.738352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964722, 33.199337, 25.897346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251220, 0.364081, -0.896846,
		-0.963103, -0.186440, 0.194092,
		-0.096543, 0.912516, 0.397485,
		34.935760, 33.473091, 26.016592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426872, 33.198170, 25.296013>,  <35.003338, 32.834332, 25.738352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426872, 33.198170, 25.296013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.596573, 33.501240, 25.494379>,  <34.698395, 33.683083, 25.613400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.596573, 33.501240, 25.494379>,  <34.426872, 33.198170, 25.296013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596573, 33.501240, 25.494379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315677, 0.637036, -0.703230,
		-0.848738, 0.141799, 0.509447,
		0.424253, 0.757679, 0.495915,
		34.723850, 33.728542, 25.643154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051353, 33.702175, 25.055775>,  <34.426872, 33.198170, 25.296013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051353, 33.702175, 25.055775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367260, 33.880951, 25.223831>,  <34.556805, 33.988216, 25.324665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367260, 33.880951, 25.223831>,  <34.051353, 33.702175, 25.055775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367260, 33.880951, 25.223831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023964, 0.661923, -0.749189,
		-0.612944, 0.601750, 0.512051,
		0.789762, 0.446940, 0.420142,
		34.604187, 34.015034, 25.349874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842957, 34.462387, 24.999037>,  <34.051353, 33.702175, 25.055775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842957, 34.462387, 24.999037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239346, 34.483204, 25.048462>,  <34.477180, 34.495693, 25.078117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239346, 34.483204, 25.048462>,  <33.842957, 34.462387, 24.999037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239346, 34.483204, 25.048462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072856, 0.564621, -0.822128,
		-0.112555, 0.823708, 0.555731,
		0.990971, 0.052046, 0.123562,
		34.536636, 34.498817, 25.085531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993530, 35.259846, 24.969734>,  <33.842957, 34.462387, 24.999037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993530, 35.259846, 24.969734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.331348, 35.060715, 24.890839>,  <34.534039, 34.941235, 24.843502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.331348, 35.060715, 24.890839>,  <33.993530, 35.259846, 24.969734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331348, 35.060715, 24.890839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153459, 0.577906, -0.801545,
		0.513016, 0.646677, 0.564467,
		0.844550, -0.497828, -0.197237,
		34.584713, 34.911366, 24.831667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550377, 35.826221, 24.954014>,  <33.993530, 35.259846, 24.969734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550377, 35.826221, 24.954014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666180, 35.498371, 24.756268>,  <34.735661, 35.301662, 24.637619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666180, 35.498371, 24.756268>,  <34.550377, 35.826221, 24.954014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666180, 35.498371, 24.756268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297491, 0.567956, -0.767415,
		0.909770, 0.075106, 0.408261,
		0.289512, -0.819625, -0.494366,
		34.753033, 35.252483, 24.607958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371922, 35.886871, 24.769487>,  <34.550377, 35.826221, 24.954014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371922, 35.886871, 24.769487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.239853, 35.617725, 24.504690>,  <35.160610, 35.456238, 24.345812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.239853, 35.617725, 24.504690>,  <35.371922, 35.886871, 24.769487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239853, 35.617725, 24.504690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246662, 0.615451, -0.748584,
		0.911123, -0.410450, -0.037234,
		-0.330172, -0.672867, -0.661994,
		35.140800, 35.415867, 24.306091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814186, 35.986561, 24.236599>,  <35.371922, 35.886871, 24.769487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814186, 35.986561, 24.236599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534256, 35.763962, 24.057465>,  <35.366299, 35.630402, 23.949984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534256, 35.763962, 24.057465>,  <35.814186, 35.986561, 24.236599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534256, 35.763962, 24.057465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274359, 0.369449, -0.887826,
		0.659529, -0.744187, -0.105867,
		-0.699821, -0.556501, -0.447836,
		35.324310, 35.597012, 23.923113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244106, 35.490345, 23.904947>,  <35.814186, 35.986561, 24.236599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244106, 35.490345, 23.904947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890110, 35.559662, 23.732082>,  <35.677711, 35.601250, 23.628365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890110, 35.559662, 23.732082>,  <36.244106, 35.490345, 23.904947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890110, 35.559662, 23.732082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465609, 0.330018, -0.821155,
		0.000322, -0.927932, -0.372749,
		-0.884991, 0.173291, -0.432160,
		35.624615, 35.611649, 23.602434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337631, 35.144188, 23.247416>,  <36.244106, 35.490345, 23.904947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337631, 35.144188, 23.247416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.036518, 35.402016, 23.193981>,  <35.855850, 35.556713, 23.161921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.036518, 35.402016, 23.193981>,  <36.337631, 35.144188, 23.247416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036518, 35.402016, 23.193981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407445, 0.296863, -0.863632,
		-0.517018, -0.704555, -0.486101,
		-0.752782, 0.644573, -0.133584,
		35.810684, 35.595387, 23.153906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173573, 35.062904, 22.581305>,  <36.337631, 35.144188, 23.247416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173573, 35.062904, 22.581305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014954, 35.421497, 22.660366>,  <35.919785, 35.636654, 22.707802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014954, 35.421497, 22.660366>,  <36.173573, 35.062904, 22.581305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014954, 35.421497, 22.660366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324504, 0.338288, -0.883322,
		-0.858750, -0.286136, -0.425059,
		-0.396543, 0.896486, 0.197653,
		35.895992, 35.690445, 22.719662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875416, 35.323849, 21.973179>,  <36.173573, 35.062904, 22.581305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875416, 35.323849, 21.973179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887833, 35.672493, 22.168867>,  <35.895283, 35.881680, 22.286280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887833, 35.672493, 22.168867>,  <35.875416, 35.323849, 21.973179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887833, 35.672493, 22.168867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087510, 0.485208, -0.870009,
		-0.995680, 0.069821, -0.061211,
		0.031045, 0.871607, 0.489222,
		35.897144, 35.933975, 22.315634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509243, 35.796398, 21.514313>,  <35.875416, 35.323849, 21.973179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509243, 35.796398, 21.514313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730583, 36.029907, 21.751972>,  <35.863388, 36.170013, 21.894567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730583, 36.029907, 21.751972>,  <35.509243, 35.796398, 21.514313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730583, 36.029907, 21.751972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061047, 0.682969, -0.727892,
		-0.830706, 0.439053, 0.342286,
		0.553354, 0.583769, 0.594149,
		35.896591, 36.205036, 21.930218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249023, 36.500519, 21.272682>,  <35.509243, 35.796398, 21.514313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249023, 36.500519, 21.272682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578461, 36.567760, 21.489359>,  <35.776123, 36.608105, 21.619366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578461, 36.567760, 21.489359>,  <35.249023, 36.500519, 21.272682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578461, 36.567760, 21.489359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228099, 0.776261, -0.587699,
		-0.519290, 0.607586, 0.600981,
		0.823595, 0.168103, 0.541694,
		35.825539, 36.618191, 21.651867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269123, 37.207062, 21.450251>,  <35.249023, 36.500519, 21.272682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269123, 37.207062, 21.450251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639687, 37.057049, 21.463654>,  <35.862022, 36.967041, 21.471695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639687, 37.057049, 21.463654>,  <35.269123, 37.207062, 21.450251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639687, 37.057049, 21.463654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282317, 0.632967, -0.720867,
		0.249141, 0.677275, 0.692263,
		0.926405, -0.375036, 0.033508,
		35.917606, 36.944538, 21.473705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619732, 37.767307, 21.394213>,  <35.269123, 37.207062, 21.450251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619732, 37.767307, 21.394213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889282, 37.485584, 21.304903>,  <36.051010, 37.316551, 21.251318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889282, 37.485584, 21.304903>,  <35.619732, 37.767307, 21.394213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889282, 37.485584, 21.304903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474640, 0.644248, -0.599718,
		0.566227, 0.298159, 0.768432,
		0.673872, -0.704305, -0.223273,
		36.091442, 37.274292, 21.237921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231720, 38.087170, 21.339304>,  <35.619732, 37.767307, 21.394213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231720, 38.087170, 21.339304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274300, 37.742607, 21.140646>,  <36.299847, 37.535870, 21.021452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274300, 37.742607, 21.140646>,  <36.231720, 38.087170, 21.339304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274300, 37.742607, 21.140646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234415, 0.507144, -0.829370,
		0.966291, -0.028134, 0.255911,
		0.106451, -0.861402, -0.496644,
		36.306236, 37.484188, 20.991653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897755, 38.157318, 20.960377>,  <36.231720, 38.087170, 21.339304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897755, 38.157318, 20.960377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702454, 37.861408, 20.775187>,  <36.585274, 37.683861, 20.664072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702454, 37.861408, 20.775187>,  <36.897755, 38.157318, 20.960377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702454, 37.861408, 20.775187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303525, 0.353441, -0.884846,
		0.818221, -0.572550, 0.051972,
		-0.488249, -0.739774, -0.462976,
		36.555977, 37.639477, 20.636293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417339, 37.792221, 20.457987>,  <36.897755, 38.157318, 20.960377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417339, 37.792221, 20.457987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.036568, 37.746376, 20.344355>,  <36.808105, 37.718868, 20.276176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.036568, 37.746376, 20.344355>,  <37.417339, 37.792221, 20.457987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036568, 37.746376, 20.344355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243782, 0.278113, -0.929098,
		0.185487, -0.953687, -0.236804,
		-0.951927, -0.114607, -0.284078,
		36.750988, 37.711994, 20.259130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065678, 37.430511, 20.139828>,  <37.417339, 37.792221, 20.457987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065678, 37.430511, 20.139828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.406975, 37.582920, 20.282265>,  <38.611752, 37.674366, 20.367727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.406975, 37.582920, 20.282265>,  <38.065678, 37.430511, 20.139828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406975, 37.582920, 20.282265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241422, -0.316656, 0.917303,
		0.462274, -0.868648, -0.178196,
		0.853240, 0.381025, 0.356093,
		38.662949, 37.697227, 20.389093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284489, 36.841545, 20.531862>,  <38.065678, 37.430511, 20.139828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284489, 36.841545, 20.531862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.491928, 37.163799, 20.646408>,  <38.616390, 37.357151, 20.715136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.491928, 37.163799, 20.646408>,  <38.284489, 36.841545, 20.531862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491928, 37.163799, 20.646408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055493, -0.365931, 0.928986,
		0.853216, -0.465879, -0.234478,
		0.518598, 0.805638, 0.286365,
		38.647507, 37.405491, 20.732317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835079, 36.512657, 20.860392>,  <38.284489, 36.841545, 20.531862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835079, 36.512657, 20.860392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.769917, 36.881615, 21.000481>,  <38.730820, 37.102989, 21.084534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.769917, 36.881615, 21.000481>,  <38.835079, 36.512657, 20.860392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769917, 36.881615, 21.000481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216314, -0.312938, 0.924812,
		0.962636, 0.226420, -0.148545,
		-0.162910, 0.922390, 0.350223,
		38.721043, 37.158333, 21.105547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402447, 36.617260, 21.326399>,  <38.835079, 36.512657, 20.860392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402447, 36.617260, 21.326399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.145039, 36.901352, 21.440561>,  <38.990593, 37.071808, 21.509060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.145039, 36.901352, 21.440561>,  <39.402447, 36.617260, 21.326399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145039, 36.901352, 21.440561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182609, -0.219652, 0.958335,
		0.743331, 0.668822, 0.011655,
		-0.643516, 0.710232, 0.285407,
		38.951984, 37.114422, 21.526184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800449, 36.926640, 21.878736>,  <39.402447, 36.617260, 21.326399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800449, 36.926640, 21.878736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.406933, 36.990959, 21.910465>,  <39.170822, 37.029552, 21.929502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.406933, 36.990959, 21.910465>,  <39.800449, 36.926640, 21.878736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406933, 36.990959, 21.910465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041822, -0.224388, 0.973602,
		0.174354, 0.961142, 0.214026,
		-0.983794, 0.160800, 0.079320,
		39.111794, 37.039200, 21.934261>
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
