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
	<23.883327, 34.871769, 35.003437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253010, 35.018532, 34.961060>,  <24.474819, 35.106590, 34.935631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253010, 35.018532, 34.961060>,  <23.883327, 34.871769, 35.003437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.253010, 35.018532, 34.961060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351896, -0.925954, -0.137033,
		-0.148381, 0.089365, -0.984884,
		0.924204, 0.366910, -0.105947,
		24.530272, 35.128605, 34.929276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.229330, 34.753887, 34.370335>,  <23.883327, 34.871769, 35.003437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.229330, 34.753887, 34.370335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.555595, 34.812996, 34.594070>,  <24.751354, 34.848461, 34.728310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.555595, 34.812996, 34.594070>,  <24.229330, 34.753887, 34.370335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.555595, 34.812996, 34.594070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414179, -0.824177, -0.386249,
		0.403916, 0.546715, -0.733454,
		0.815664, 0.147769, 0.559336,
		24.800295, 34.857327, 34.761871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732073, 34.534813, 33.980736>,  <24.229330, 34.753887, 34.370335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732073, 34.534813, 33.980736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895386, 34.517555, 34.345470>,  <24.993374, 34.507202, 34.564312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895386, 34.517555, 34.345470>,  <24.732073, 34.534813, 33.980736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895386, 34.517555, 34.345470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435751, -0.868520, -0.236208,
		0.802138, 0.493773, -0.335802,
		0.408284, -0.043145, 0.911835,
		25.017870, 34.504612, 34.619022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426672, 34.466515, 33.913048>,  <24.732073, 34.534813, 33.980736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426672, 34.466515, 33.913048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358284, 34.326672, 34.281513>,  <25.317251, 34.242764, 34.502594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358284, 34.326672, 34.281513>,  <25.426672, 34.466515, 33.913048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358284, 34.326672, 34.281513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201722, -0.927545, -0.314592,
		0.964405, 0.132034, 0.229106,
		-0.170969, -0.349610, 0.921164,
		25.306993, 34.221790, 34.557861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949591, 34.085381, 34.088161>,  <25.426672, 34.466515, 33.913048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949591, 34.085381, 34.088161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682411, 33.932739, 34.343731>,  <25.522104, 33.841156, 34.497074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682411, 33.932739, 34.343731>,  <25.949591, 34.085381, 34.088161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682411, 33.932739, 34.343731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301561, -0.923673, -0.236411,
		0.680373, 0.034765, 0.732041,
		-0.667947, -0.381602, 0.638926,
		25.482027, 33.818260, 34.535408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339277, 33.740620, 34.410027>,  <25.949591, 34.085381, 34.088161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339277, 33.740620, 34.410027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967131, 33.601639, 34.456837>,  <25.743843, 33.518250, 34.484924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967131, 33.601639, 34.456837>,  <26.339277, 33.740620, 34.410027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967131, 33.601639, 34.456837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322467, -0.927373, -0.189725,
		0.174448, -0.138776, 0.974838,
		-0.930367, -0.347450, 0.117027,
		25.688021, 33.497402, 34.491943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296553, 33.233295, 34.931858>,  <26.339277, 33.740620, 34.410027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296553, 33.233295, 34.931858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050982, 33.193020, 34.618694>,  <25.903639, 33.168854, 34.430794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050982, 33.193020, 34.618694>,  <26.296553, 33.233295, 34.931858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050982, 33.193020, 34.618694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501537, -0.815658, -0.288380,
		-0.609551, -0.569704, 0.551257,
		-0.613929, -0.100694, -0.782913,
		25.866802, 33.162811, 34.383820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024773, 32.562172, 34.834763>,  <26.296553, 33.233295, 34.931858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024773, 32.562172, 34.834763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079557, 32.752464, 34.487217>,  <26.112429, 32.866638, 34.278690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079557, 32.752464, 34.487217>,  <26.024773, 32.562172, 34.834763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079557, 32.752464, 34.487217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453770, -0.809817, -0.371872,
		-0.880531, -0.343332, -0.326786,
		0.136961, 0.475730, -0.868863,
		26.120646, 32.895184, 34.226559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741323, 32.083118, 34.333046>,  <26.024773, 32.562172, 34.834763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741323, 32.083118, 34.333046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028870, 32.314831, 34.179337>,  <26.201397, 32.453857, 34.087109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028870, 32.314831, 34.179337>,  <25.741323, 32.083118, 34.333046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028870, 32.314831, 34.179337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523376, -0.814835, -0.249242,
		-0.457503, -0.021950, -0.888937,
		0.718866, 0.579278, -0.384277,
		26.244530, 32.488613, 34.064053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995634, 31.487736, 33.846661>,  <25.741323, 32.083118, 34.333046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995634, 31.487736, 33.846661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275230, 31.773447, 33.832695>,  <26.442987, 31.944874, 33.824314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275230, 31.773447, 33.832695>,  <25.995634, 31.487736, 33.846661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275230, 31.773447, 33.832695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643624, -0.649628, -0.404639,
		-0.311707, 0.260365, -0.913810,
		0.698990, 0.714278, -0.034917,
		26.484928, 31.987730, 33.822220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161129, 31.483265, 33.157269>,  <25.995634, 31.487736, 33.846661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161129, 31.483265, 33.157269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457479, 31.637655, 33.377132>,  <26.635290, 31.730289, 33.509048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457479, 31.637655, 33.377132>,  <26.161129, 31.483265, 33.157269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457479, 31.637655, 33.377132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670512, -0.472439, -0.572027,
		0.038892, 0.792354, -0.608820,
		0.740878, 0.385974, 0.549657,
		26.679743, 31.753447, 33.542030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733509, 31.673138, 32.729248>,  <26.161129, 31.483265, 33.157269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733509, 31.673138, 32.729248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872351, 31.570255, 33.089996>,  <26.955656, 31.508526, 33.306446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872351, 31.570255, 33.089996>,  <26.733509, 31.673138, 32.729248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872351, 31.570255, 33.089996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579416, -0.697348, -0.421881,
		0.737425, 0.668993, -0.093023,
		0.347104, -0.257206, 0.901867,
		26.976482, 31.493093, 33.360558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319481, 31.342089, 32.369564>,  <26.733509, 31.673138, 32.729248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319481, 31.342089, 32.369564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688042, 31.343637, 32.525002>,  <27.909178, 31.344566, 32.618263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688042, 31.343637, 32.525002>,  <27.319481, 31.342089, 32.369564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688042, 31.343637, 32.525002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363166, 0.364471, 0.857480,
		-0.138313, -0.931207, 0.337230,
		0.921401, 0.003870, 0.388594,
		27.964462, 31.344799, 32.641579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421953, 30.826500, 32.894859>,  <27.319481, 31.342089, 32.369564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421953, 30.826500, 32.894859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641161, 31.154942, 32.958694>,  <27.772686, 31.352007, 32.996994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641161, 31.154942, 32.958694>,  <27.421953, 30.826500, 32.894859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641161, 31.154942, 32.958694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568104, 0.225330, 0.791508,
		0.613951, -0.524419, 0.589957,
		0.548017, 0.821104, 0.159583,
		27.805567, 31.401272, 33.006569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845373, 30.917742, 33.601307>,  <27.421953, 30.826500, 32.894859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845373, 30.917742, 33.601307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723980, 31.262297, 33.438381>,  <27.651144, 31.469030, 33.340626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723980, 31.262297, 33.438381>,  <27.845373, 30.917742, 33.601307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723980, 31.262297, 33.438381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561481, 0.183703, 0.806841,
		0.769830, 0.473563, 0.427902,
		-0.303483, 0.861389, -0.407317,
		27.632935, 31.520714, 33.316185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822153, 31.502527, 34.173889>,  <27.845373, 30.917742, 33.601307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822153, 31.502527, 34.173889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585297, 31.576389, 33.860130>,  <27.443184, 31.620707, 33.671875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585297, 31.576389, 33.860130>,  <27.822153, 31.502527, 34.173889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585297, 31.576389, 33.860130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562334, 0.602518, 0.566349,
		0.577192, 0.776449, -0.252936,
		-0.592140, 0.184657, -0.784393,
		27.407654, 31.631786, 33.624813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739300, 32.231117, 34.219219>,  <27.822153, 31.502527, 34.173889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739300, 32.231117, 34.219219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430023, 32.089645, 34.008663>,  <27.244457, 32.004761, 33.882328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430023, 32.089645, 34.008663>,  <27.739300, 32.231117, 34.219219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430023, 32.089645, 34.008663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602337, 0.669256, 0.435070,
		0.198414, 0.653456, -0.730497,
		-0.773190, -0.353681, -0.526391,
		27.198067, 31.983541, 33.850746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456825, 32.789757, 33.694592>,  <27.739300, 32.231117, 34.219219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456825, 32.789757, 33.694592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145906, 32.541260, 33.734329>,  <26.959354, 32.392162, 33.758171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145906, 32.541260, 33.734329>,  <27.456825, 32.789757, 33.694592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145906, 32.541260, 33.734329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531432, 0.732869, 0.424833,
		-0.336728, 0.277428, -0.899804,
		-0.777299, -0.621238, 0.099343,
		26.912716, 32.354889, 33.764133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038420, 33.330460, 33.503006>,  <27.456825, 32.789757, 33.694592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038420, 33.330460, 33.503006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808767, 33.033623, 33.641380>,  <26.670977, 32.855518, 33.724403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808767, 33.033623, 33.641380>,  <27.038420, 33.330460, 33.503006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808767, 33.033623, 33.641380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776329, 0.627653, 0.058005,
		-0.260170, -0.235255, -0.936465,
		-0.574129, -0.742097, 0.345931,
		26.636528, 32.810993, 33.745159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464207, 33.531040, 33.215179>,  <27.038420, 33.330460, 33.503006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464207, 33.531040, 33.215179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319031, 33.305244, 33.511726>,  <26.231926, 33.169765, 33.689655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319031, 33.305244, 33.511726>,  <26.464207, 33.531040, 33.215179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319031, 33.305244, 33.511726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814818, 0.578238, 0.041383,
		-0.452048, -0.589061, -0.669821,
		-0.362939, -0.564489, 0.741369,
		26.210150, 33.135899, 33.734138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869711, 33.302731, 33.025951>,  <26.464207, 33.531040, 33.215179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869711, 33.302731, 33.025951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911814, 33.330406, 33.422764>,  <25.937075, 33.347012, 33.660851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911814, 33.330406, 33.422764>,  <25.869711, 33.302731, 33.025951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911814, 33.330406, 33.422764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739701, 0.672193, 0.031604,
		-0.664653, -0.737136, 0.121930,
		0.105257, 0.069186, 0.992035,
		25.943390, 33.351162, 33.720375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206097, 33.081112, 33.351299>,  <25.869711, 33.302731, 33.025951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206097, 33.081112, 33.351299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400919, 33.379368, 33.533199>,  <25.517813, 33.558319, 33.642342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400919, 33.379368, 33.533199>,  <25.206097, 33.081112, 33.351299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400919, 33.379368, 33.533199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820879, 0.568623, -0.053156,
		-0.298218, -0.347409, 0.889029,
		0.487056, 0.745638, 0.454754,
		25.547035, 33.603058, 33.669624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926517, 33.254528, 34.047791>,  <25.206097, 33.081112, 33.351299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.926517, 33.254528, 34.047791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044067, 33.577690, 33.843464>,  <25.114597, 33.771587, 33.720867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044067, 33.577690, 33.843464>,  <24.926517, 33.254528, 34.047791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044067, 33.577690, 33.843464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861837, 0.455076, 0.223924,
		0.413369, 0.374435, 0.830015,
		0.293876, 0.807901, -0.510816,
		25.132231, 33.820061, 33.690220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.404242, 33.103924, 34.668331>,  <24.926517, 33.254528, 34.047791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.404242, 33.103924, 34.668331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793409, 33.192543, 34.641964>,  <25.026911, 33.245716, 34.626144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793409, 33.192543, 34.641964>,  <24.404242, 33.103924, 34.668331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793409, 33.192543, 34.641964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159987, 0.851266, 0.499751,
		0.166830, -0.475672, 0.863657,
		0.972919, 0.221547, -0.065916,
		25.085285, 33.259007, 34.622189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.611475, 33.444313, 35.338158>,  <24.404242, 33.103924, 34.668331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.611475, 33.444313, 35.338158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898754, 33.559612, 35.084827>,  <25.071121, 33.628792, 34.932831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898754, 33.559612, 35.084827>,  <24.611475, 33.444313, 35.338158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898754, 33.559612, 35.084827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047655, 0.887652, 0.458043,
		0.694204, -0.359148, 0.623774,
		0.718200, 0.288249, -0.633327,
		25.114214, 33.646088, 34.894829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140329, 33.622040, 35.748146>,  <24.611475, 33.444313, 35.338158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140329, 33.622040, 35.748146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141878, 33.811581, 35.395908>,  <25.142807, 33.925304, 35.184566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141878, 33.811581, 35.395908>,  <25.140329, 33.622040, 35.748146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141878, 33.811581, 35.395908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054244, 0.879206, 0.473344,
		0.998520, -0.049599, -0.022300,
		0.003871, 0.473853, -0.880595,
		25.143040, 33.953735, 35.131729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342876, 34.254417, 35.847363>,  <25.140329, 33.622040, 35.748146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342876, 34.254417, 35.847363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245171, 34.330082, 35.466930>,  <25.186546, 34.375481, 35.238670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245171, 34.330082, 35.466930>,  <25.342876, 34.254417, 35.847363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245171, 34.330082, 35.466930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019737, 0.979616, 0.199906,
		0.969507, 0.067602, -0.235553,
		-0.244266, 0.189162, -0.951079,
		25.171890, 34.386829, 35.181606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745796, 34.933971, 35.615829>,  <25.342876, 34.254417, 35.847363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745796, 34.933971, 35.615829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420385, 34.900448, 35.385647>,  <25.225138, 34.880333, 35.247540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420385, 34.900448, 35.385647>,  <25.745796, 34.933971, 35.615829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420385, 34.900448, 35.385647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208229, 0.965928, 0.153700,
		0.542967, 0.244866, -0.803261,
		-0.813528, -0.083808, -0.575455,
		25.176327, 34.875305, 35.213009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701057, 35.549046, 35.381172>,  <25.745796, 34.933971, 35.615829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701057, 35.549046, 35.381172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353436, 35.388290, 35.265770>,  <25.144863, 35.291836, 35.196529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353436, 35.388290, 35.265770>,  <25.701057, 35.549046, 35.381172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353436, 35.388290, 35.265770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386728, 0.915557, -0.110444,
		0.308527, 0.015591, -0.951088,
		-0.869053, -0.401887, -0.288504,
		25.092720, 35.267723, 35.179218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368137, 35.140930, 35.362244>,  <25.701057, 35.549046, 35.381172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368137, 35.140930, 35.362244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708849, 35.074902, 35.561131>,  <26.913277, 35.035286, 35.680462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708849, 35.074902, 35.561131>,  <26.368137, 35.140930, 35.362244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708849, 35.074902, 35.561131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195037, 0.980759, -0.008520,
		-0.486241, 0.104232, 0.867586,
		0.851781, -0.165069, 0.497214,
		26.964384, 35.025379, 35.710293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397053, 35.410107, 36.056274>,  <26.368137, 35.140930, 35.362244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397053, 35.410107, 36.056274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751581, 35.413788, 35.871082>,  <26.964298, 35.415997, 35.759968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751581, 35.413788, 35.871082>,  <26.397053, 35.410107, 36.056274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751581, 35.413788, 35.871082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049025, 0.996049, -0.074047,
		0.460469, 0.088327, 0.883270,
		0.886321, 0.009206, -0.462980,
		27.017477, 35.416550, 35.732189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003174, 35.866756, 36.391605>,  <26.397053, 35.410107, 36.056274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003174, 35.866756, 36.391605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039801, 35.829281, 35.995052>,  <27.061777, 35.806793, 35.757122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039801, 35.829281, 35.995052>,  <27.003174, 35.866756, 36.391605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039801, 35.829281, 35.995052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167235, 0.982871, -0.077443,
		0.981656, -0.158702, 0.105668,
		0.091568, -0.093694, -0.991381,
		27.067270, 35.801174, 35.697639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567612, 36.299068, 36.159592>,  <27.003174, 35.866756, 36.391605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567612, 36.299068, 36.159592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333378, 36.277889, 35.836040>,  <27.192839, 36.265182, 35.641911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333378, 36.277889, 35.836040>,  <27.567612, 36.299068, 36.159592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333378, 36.277889, 35.836040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216002, 0.951593, -0.218665,
		0.781304, -0.302766, -0.545799,
		-0.585583, -0.052950, -0.808881,
		27.157703, 36.262005, 35.593376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959911, 36.334728, 35.612637>,  <27.567612, 36.299068, 36.159592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959911, 36.334728, 35.612637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601458, 36.469742, 35.497387>,  <27.386385, 36.550751, 35.428238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601458, 36.469742, 35.497387>,  <27.959911, 36.334728, 35.612637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601458, 36.469742, 35.497387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364069, 0.930408, -0.042375,
		0.253773, -0.142871, -0.956654,
		-0.896132, 0.337535, -0.288127,
		27.332619, 36.571003, 35.410950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582729, 35.974125, 35.207073>,  <27.959911, 36.334728, 35.612637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582729, 35.974125, 35.207073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628218, 35.887806, 35.594990>,  <27.655512, 35.836014, 35.827740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628218, 35.887806, 35.594990>,  <27.582729, 35.974125, 35.207073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628218, 35.887806, 35.594990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498841, -0.856566, -0.132108,
		0.859200, -0.468749, -0.205061,
		0.113723, -0.215800, 0.969792,
		27.662334, 35.823067, 35.885929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094507, 36.511948, 34.932121>,  <27.582729, 35.974125, 35.207073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094507, 36.511948, 34.932121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695902, 36.514660, 34.898869>,  <27.456738, 36.516289, 34.878918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695902, 36.514660, 34.898869>,  <28.094507, 36.511948, 34.932121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695902, 36.514660, 34.898869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027314, 0.968269, -0.248415,
		0.078809, -0.249820, -0.965080,
		-0.996515, 0.006783, -0.083132,
		27.396948, 36.516693, 34.873928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947351, 36.832947, 34.338669>,  <28.094507, 36.511948, 34.932121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947351, 36.832947, 34.338669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612276, 36.890152, 34.549507>,  <27.411230, 36.924473, 34.676010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612276, 36.890152, 34.549507>,  <27.947351, 36.832947, 34.338669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612276, 36.890152, 34.549507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064750, 0.984307, -0.164158,
		-0.542297, -0.103384, -0.833802,
		-0.837689, 0.143011, 0.527092,
		27.360970, 36.933056, 34.707634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521473, 37.216007, 33.924194>,  <27.947351, 36.832947, 34.338669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521473, 37.216007, 33.924194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414698, 37.300201, 34.300373>,  <27.350634, 37.350716, 34.526081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414698, 37.300201, 34.300373>,  <27.521473, 37.216007, 33.924194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414698, 37.300201, 34.300373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141830, 0.973812, -0.177692,
		-0.953220, 0.085951, -0.289799,
		-0.266937, 0.210482, 0.940448,
		27.334616, 37.363346, 34.582508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166435, 37.808937, 33.902237>,  <27.521473, 37.216007, 33.924194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166435, 37.808937, 33.902237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360035, 37.822891, 34.251987>,  <27.476194, 37.831264, 34.461838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360035, 37.822891, 34.251987>,  <27.166435, 37.808937, 33.902237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360035, 37.822891, 34.251987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306854, 0.928992, -0.206919,
		-0.819503, 0.368453, 0.438928,
		0.484001, 0.034884, 0.874372,
		27.505236, 37.833355, 34.514297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049679, 38.433483, 34.046597>,  <27.166435, 37.808937, 33.902237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049679, 38.433483, 34.046597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370695, 38.332535, 34.262829>,  <27.563305, 38.271965, 34.392570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370695, 38.332535, 34.262829>,  <27.049679, 38.433483, 34.046597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370695, 38.332535, 34.262829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400403, 0.899579, -0.174457,
		-0.442270, 0.356461, 0.823002,
		0.802543, -0.252375, 0.540585,
		27.611458, 38.256821, 34.425003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550461, 38.966629, 34.345673>,  <27.049679, 38.433483, 34.046597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550461, 38.966629, 34.345673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577444, 38.980125, 34.744534>,  <27.593634, 38.988224, 34.983849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577444, 38.980125, 34.744534>,  <27.550461, 38.966629, 34.345673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577444, 38.980125, 34.744534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258110, -0.964815, 0.050106,
		0.963757, -0.260755, -0.056375,
		0.067457, 0.033739, 0.997151,
		27.597681, 38.990246, 35.043678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104219, 38.524673, 34.782066>,  <27.550461, 38.966629, 34.345673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104219, 38.524673, 34.782066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742302, 38.575920, 34.944511>,  <27.525150, 38.606670, 35.041981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742302, 38.575920, 34.944511>,  <28.104219, 38.524673, 34.782066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742302, 38.575920, 34.944511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028918, -0.969952, 0.241571,
		0.424864, 0.206828, 0.881313,
		-0.904795, 0.128121, 0.406117,
		27.470863, 38.614357, 35.066345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068951, 38.153141, 35.438293>,  <28.104219, 38.524673, 34.782066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068951, 38.153141, 35.438293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710533, 38.178860, 35.262577>,  <27.495483, 38.194290, 35.157146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710533, 38.178860, 35.262577>,  <28.068951, 38.153141, 35.438293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710533, 38.178860, 35.262577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219031, -0.924680, 0.311437,
		-0.386177, 0.375279, 0.842634,
		-0.896043, 0.064293, -0.439288,
		27.441721, 38.198147, 35.130791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440144, 37.852722, 35.827454>,  <28.068951, 38.153141, 35.438293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440144, 37.852722, 35.827454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318314, 37.817814, 35.448063>,  <27.245214, 37.796867, 35.220428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318314, 37.817814, 35.448063>,  <27.440144, 37.852722, 35.827454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318314, 37.817814, 35.448063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254808, -0.952034, 0.169425,
		-0.917772, 0.293283, 0.267729,
		-0.304577, -0.087274, -0.948481,
		27.226940, 37.791630, 35.163517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818378, 37.458275, 35.783989>,  <27.440144, 37.852722, 35.827454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818378, 37.458275, 35.783989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994209, 37.436718, 35.425354>,  <27.099709, 37.423782, 35.210175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994209, 37.436718, 35.425354>,  <26.818378, 37.458275, 35.783989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994209, 37.436718, 35.425354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137948, -0.990406, -0.008102,
		-0.887548, 0.127243, -0.442796,
		0.439578, -0.053892, -0.896586,
		27.126083, 37.420551, 35.156380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320082, 37.176277, 35.442612>,  <26.818378, 37.458275, 35.783989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320082, 37.176277, 35.442612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664227, 37.092190, 35.256889>,  <26.870714, 37.041737, 35.145454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664227, 37.092190, 35.256889>,  <26.320082, 37.176277, 35.442612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664227, 37.092190, 35.256889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276953, -0.957577, -0.079643,
		-0.427869, 0.197114, -0.882085,
		0.860363, -0.210220, -0.464309,
		26.922335, 37.029125, 35.117596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283100, 36.763786, 34.720596>,  <26.320082, 37.176277, 35.442612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283100, 36.763786, 34.720596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623674, 36.697773, 34.919724>,  <26.828018, 36.658165, 35.039200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623674, 36.697773, 34.919724>,  <26.283100, 36.763786, 34.720596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623674, 36.697773, 34.919724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218114, -0.974645, 0.049936,
		0.476952, -0.151098, -0.865844,
		0.851436, -0.165036, 0.497815,
		26.879105, 36.648262, 35.069069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412800, 36.055626, 34.570160>,  <26.283100, 36.763786, 34.720596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412800, 36.055626, 34.570160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675072, 36.112671, 34.866737>,  <26.832436, 36.146900, 35.044685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675072, 36.112671, 34.866737>,  <26.412800, 36.055626, 34.570160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675072, 36.112671, 34.866737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048044, -0.987890, 0.147534,
		0.753508, -0.061113, -0.654592,
		0.655681, 0.142617, 0.741447,
		26.871777, 36.155457, 35.089172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881804, 35.596214, 34.446568>,  <26.412800, 36.055626, 34.570160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881804, 35.596214, 34.446568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912598, 35.667103, 34.839031>,  <26.931074, 35.709637, 35.074509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912598, 35.667103, 34.839031>,  <26.881804, 35.596214, 34.446568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912598, 35.667103, 34.839031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145416, -0.975550, 0.164795,
		0.986371, 0.129989, -0.100874,
		0.076986, 0.177217, 0.981156,
		26.935694, 35.720268, 35.133377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502954, 35.336586, 34.579563>,  <26.881804, 35.596214, 34.446568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502954, 35.336586, 34.579563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258492, 35.345047, 34.896053>,  <27.111813, 35.350124, 35.085949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258492, 35.345047, 34.896053>,  <27.502954, 35.336586, 34.579563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258492, 35.345047, 34.896053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018226, -0.999002, 0.040786,
		0.791299, 0.039347, 0.610162,
		-0.611158, 0.021153, 0.791226,
		27.075144, 35.351395, 35.133423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819300, 35.165245, 35.192574>,  <27.502954, 35.336586, 34.579563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819300, 35.165245, 35.192574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725153, 34.956905, 35.520798>,  <27.668665, 34.831902, 35.717731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725153, 34.956905, 35.520798>,  <27.819300, 35.165245, 35.192574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725153, 34.956905, 35.520798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631610, -0.559723, -0.536451,
		0.738695, -0.644538, -0.197230,
		-0.235369, -0.520846, 0.820561,
		27.654543, 34.800652, 35.766968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685183, 34.420700, 34.999100>,  <27.819300, 35.165245, 35.192574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685183, 34.420700, 34.999100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507828, 34.552563, 35.332504>,  <27.401415, 34.631680, 35.532547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507828, 34.552563, 35.332504>,  <27.685183, 34.420700, 34.999100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507828, 34.552563, 35.332504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843063, -0.469175, -0.262908,
		0.304392, -0.819270, 0.485945,
		-0.443386, 0.329654, 0.833509,
		27.374811, 34.651459, 35.582558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367540, 34.035378, 35.079811>,  <27.685183, 34.420700, 34.999100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367540, 34.035378, 35.079811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400471, 34.429089, 35.017296>,  <28.420229, 34.665314, 34.979786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400471, 34.429089, 35.017296>,  <28.367540, 34.035378, 35.079811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400471, 34.429089, 35.017296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442379, 0.104430, 0.890727,
		0.893041, -0.142467, -0.426826,
		0.082326, 0.984275, -0.156285,
		28.425169, 34.724373, 34.970409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104601, 34.286278, 35.076782>,  <28.367540, 34.035378, 35.079811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104601, 34.286278, 35.076782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829842, 34.549358, 35.200462>,  <28.664986, 34.707207, 35.274670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829842, 34.549358, 35.200462>,  <29.104601, 34.286278, 35.076782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829842, 34.549358, 35.200462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465529, 0.071485, 0.882141,
		0.558080, 0.749881, -0.355281,
		-0.686898, 0.657699, 0.309197,
		28.623772, 34.746670, 35.293221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805967, 34.056198, 35.318909>,  <29.104601, 34.286278, 35.076782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805967, 34.056198, 35.318909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084753, 33.771149, 35.350937>,  <30.252024, 33.600121, 35.370152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084753, 33.771149, 35.350937>,  <29.805967, 34.056198, 35.318909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084753, 33.771149, 35.350937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314671, -0.203590, 0.927110,
		-0.644378, -0.671358, -0.366136,
		0.696964, -0.712622, 0.080068,
		30.293842, 33.557362, 35.374958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410374, 33.418102, 35.512680>,  <29.805967, 34.056198, 35.318909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410374, 33.418102, 35.512680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787518, 33.450478, 35.641964>,  <30.013803, 33.469902, 35.719536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787518, 33.450478, 35.641964>,  <29.410374, 33.418102, 35.512680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787518, 33.450478, 35.641964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303915, -0.188719, 0.933820,
		0.136578, -0.978690, -0.153338,
		0.942859, 0.080937, 0.323214,
		30.070375, 33.474758, 35.738930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575140, 32.902515, 35.962612>,  <29.410374, 33.418102, 35.512680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575140, 32.902515, 35.962612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853233, 33.172050, 36.062687>,  <30.020090, 33.333771, 36.122730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853233, 33.172050, 36.062687>,  <29.575140, 32.902515, 35.962612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853233, 33.172050, 36.062687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228125, -0.123215, 0.965804,
		0.681621, -0.728534, 0.068056,
		0.695235, 0.673837, 0.250183,
		30.061804, 33.374203, 36.137741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874544, 32.643700, 36.510132>,  <29.575140, 32.902515, 35.962612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874544, 32.643700, 36.510132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007240, 33.018349, 36.555172>,  <30.086859, 33.243137, 36.582195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007240, 33.018349, 36.555172>,  <29.874544, 32.643700, 36.510132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007240, 33.018349, 36.555172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025548, -0.110400, 0.993559,
		0.943024, -0.332481, -0.012695,
		0.331741, 0.936626, 0.112604,
		30.106762, 33.299335, 36.588955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375334, 32.640877, 37.166191>,  <29.874544, 32.643700, 36.510132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375334, 32.640877, 37.166191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171385, 32.984417, 37.146545>,  <30.049015, 33.190540, 37.134758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171385, 32.984417, 37.146545>,  <30.375334, 32.640877, 37.166191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171385, 32.984417, 37.146545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196313, -0.060583, 0.978668,
		0.837550, 0.508638, 0.199492,
		-0.509874, 0.858846, -0.049111,
		30.018423, 33.242069, 37.131813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151892, 32.882652, 37.796360>,  <30.375334, 32.640877, 37.166191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151892, 32.882652, 37.796360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447550, 33.150352, 37.765991>,  <30.624945, 33.310974, 37.747772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447550, 33.150352, 37.765991>,  <30.151892, 32.882652, 37.796360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447550, 33.150352, 37.765991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356337, 0.292904, -0.887260,
		-0.571563, 0.682869, 0.454979,
		0.739148, 0.669251, -0.075918,
		30.669294, 33.351128, 37.743217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893829, 33.638390, 37.666466>,  <30.151892, 32.882652, 37.796360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893829, 33.638390, 37.666466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271336, 33.583622, 37.546093>,  <30.497839, 33.550762, 37.473869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271336, 33.583622, 37.546093>,  <29.893829, 33.638390, 37.666466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271336, 33.583622, 37.546093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254202, 0.281470, -0.925287,
		0.211388, 0.949751, 0.230838,
		0.943767, -0.136915, -0.300928,
		30.554466, 33.542549, 37.455814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180534, 34.226444, 37.389465>,  <29.893829, 33.638390, 37.666466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180534, 34.226444, 37.389465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320938, 33.891708, 37.221416>,  <30.405180, 33.690868, 37.120586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320938, 33.891708, 37.221416>,  <30.180534, 34.226444, 37.389465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320938, 33.891708, 37.221416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299882, 0.324570, -0.897065,
		0.887053, 0.440864, -0.137024,
		0.351010, -0.836835, -0.420117,
		30.426241, 33.640659, 37.095383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670074, 34.410442, 36.812706>,  <30.180534, 34.226444, 37.389465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670074, 34.410442, 36.812706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574211, 34.027901, 36.745823>,  <30.516693, 33.798378, 36.705692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574211, 34.027901, 36.745823>,  <30.670074, 34.410442, 36.812706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574211, 34.027901, 36.745823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017002, 0.168066, -0.985629,
		0.970708, -0.239059, -0.024019,
		-0.239660, -0.956350, -0.167207,
		30.502314, 33.740997, 36.695660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119802, 34.095795, 36.459740>,  <30.670074, 34.410442, 36.812706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119802, 34.095795, 36.459740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810738, 33.858570, 36.369164>,  <30.625299, 33.716236, 36.314819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810738, 33.858570, 36.369164>,  <31.119802, 34.095795, 36.459740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810738, 33.858570, 36.369164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190124, 0.124143, -0.973880,
		0.605678, -0.795532, 0.016834,
		-0.772662, -0.593058, -0.226441,
		30.578939, 33.680653, 36.301231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351786, 33.543385, 36.058426>,  <31.119802, 34.095795, 36.459740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351786, 33.543385, 36.058426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962652, 33.554123, 35.966450>,  <30.729172, 33.560566, 35.911263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962652, 33.554123, 35.966450>,  <31.351786, 33.543385, 36.058426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962652, 33.554123, 35.966450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231448, 0.134135, -0.963556,
		0.004977, -0.990599, -0.136704,
		-0.972835, 0.026844, -0.229940,
		30.670801, 33.562176, 35.897469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479177, 33.337784, 35.368397>,  <31.351786, 33.543385, 36.058426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479177, 33.337784, 35.368397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125336, 33.522465, 35.394653>,  <30.913031, 33.633274, 35.410408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125336, 33.522465, 35.394653>,  <31.479177, 33.337784, 35.368397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125336, 33.522465, 35.394653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015301, 0.169413, -0.985426,
		-0.466093, -0.870707, -0.156928,
		-0.884604, 0.461701, 0.065639,
		30.859955, 33.660976, 35.414345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068520, 33.154808, 34.754887>,  <31.479177, 33.337784, 35.368397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068520, 33.154808, 34.754887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928219, 33.516903, 34.850826>,  <30.844038, 33.734158, 34.908390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928219, 33.516903, 34.850826>,  <31.068520, 33.154808, 34.754887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928219, 33.516903, 34.850826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117544, 0.296651, -0.947724,
		-0.929062, -0.304223, -0.210456,
		-0.350752, 0.905233, 0.239848,
		30.822992, 33.788471, 34.922779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453999, 33.388817, 34.428249>,  <31.068520, 33.154808, 34.754887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453999, 33.388817, 34.428249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719851, 33.684357, 34.472748>,  <30.879362, 33.861679, 34.499447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719851, 33.684357, 34.472748>,  <30.453999, 33.388817, 34.428249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719851, 33.684357, 34.472748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059523, 0.096062, -0.993594,
		-0.744799, 0.666994, 0.019868,
		0.664629, 0.738845, 0.111248,
		30.919239, 33.906010, 34.506123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282223, 33.924187, 33.951550>,  <30.453999, 33.388817, 34.428249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282223, 33.924187, 33.951550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674162, 33.935696, 34.030613>,  <30.909327, 33.942600, 34.078049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674162, 33.935696, 34.030613>,  <30.282223, 33.924187, 33.951550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674162, 33.935696, 34.030613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196186, 0.047140, -0.979433,
		-0.037499, 0.998474, 0.040545,
		0.979849, 0.028774, 0.197655,
		30.968117, 33.944328, 34.089909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516645, 34.063503, 33.256783>,  <30.282223, 33.924187, 33.951550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516645, 34.063503, 33.256783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845190, 34.002953, 33.476765>,  <31.042316, 33.966621, 33.608753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845190, 34.002953, 33.476765>,  <30.516645, 34.063503, 33.256783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845190, 34.002953, 33.476765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540298, -0.102658, -0.835188,
		0.182883, 0.983131, -0.002533,
		0.821360, -0.151373, 0.549958,
		31.091599, 33.957542, 33.641750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103922, 34.570019, 32.981014>,  <30.516645, 34.063503, 33.256783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103922, 34.570019, 32.981014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275946, 34.274059, 33.187935>,  <31.379160, 34.096485, 33.312088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275946, 34.274059, 33.187935>,  <31.103922, 34.570019, 32.981014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275946, 34.274059, 33.187935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735146, -0.045589, -0.676374,
		0.524030, 0.671174, 0.524326,
		0.430062, -0.739896, 0.517301,
		31.404964, 34.052090, 33.343124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836893, 34.695663, 33.075878>,  <31.103922, 34.570019, 32.981014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836893, 34.695663, 33.075878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785307, 34.300053, 33.104683>,  <31.754354, 34.062687, 33.121967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785307, 34.300053, 33.104683>,  <31.836893, 34.695663, 33.075878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785307, 34.300053, 33.104683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613679, -0.136643, -0.777642,
		0.778952, -0.056096, 0.624570,
		-0.128966, -0.989031, 0.072014,
		31.746616, 34.003342, 33.126286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418739, 34.465157, 32.807209>,  <31.836893, 34.695663, 33.075878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418739, 34.465157, 32.807209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176514, 34.146896, 32.801159>,  <32.031178, 33.955940, 32.797531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176514, 34.146896, 32.801159>,  <32.418739, 34.465157, 32.807209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176514, 34.146896, 32.801159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464679, -0.338112, -0.818385,
		0.646036, -0.502612, 0.574472,
		-0.605566, -0.795651, -0.015121,
		31.994844, 33.908199, 32.796623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842823, 34.067810, 32.441303>,  <32.418739, 34.465157, 32.807209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842823, 34.067810, 32.441303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497871, 33.868420, 32.405918>,  <32.290901, 33.748783, 32.384686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497871, 33.868420, 32.405918>,  <32.842823, 34.067810, 32.441303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497871, 33.868420, 32.405918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320474, -0.402226, -0.857619,
		0.391922, -0.767941, 0.506620,
		-0.862377, -0.498478, -0.088464,
		32.239159, 33.718876, 32.379379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000202, 33.346504, 32.276402>,  <32.842823, 34.067810, 32.441303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000202, 33.346504, 32.276402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626301, 33.427452, 32.159588>,  <32.401958, 33.476021, 32.089500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626301, 33.427452, 32.159588>,  <33.000202, 33.346504, 32.276402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626301, 33.427452, 32.159588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254264, -0.193082, -0.947665,
		-0.248167, -0.960086, 0.129028,
		-0.934753, 0.202372, -0.292032,
		32.345875, 33.488163, 32.071980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761219, 32.862915, 31.823996>,  <33.000202, 33.346504, 32.276402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761219, 32.862915, 31.823996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512119, 33.163132, 31.735569>,  <32.362659, 33.343262, 31.682514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512119, 33.163132, 31.735569>,  <32.761219, 32.862915, 31.823996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512119, 33.163132, 31.735569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172604, -0.143797, -0.974438,
		-0.763146, -0.644987, -0.039997,
		-0.622748, 0.750543, -0.221065,
		32.325294, 33.388294, 31.669249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230869, 32.621178, 31.296347>,  <32.761219, 32.862915, 31.823996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230869, 32.621178, 31.296347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233646, 33.015381, 31.228559>,  <32.235313, 33.251904, 31.187887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233646, 33.015381, 31.228559>,  <32.230869, 32.621178, 31.296347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233646, 33.015381, 31.228559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158757, -0.168408, -0.972849,
		-0.987293, -0.020150, -0.157626,
		0.006943, 0.985511, -0.169467,
		32.235729, 33.311035, 31.177719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860456, 32.732227, 30.620392>,  <32.230869, 32.621178, 31.296347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860456, 32.732227, 30.620392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035095, 33.088451, 30.671434>,  <32.139877, 33.302185, 30.702061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035095, 33.088451, 30.671434>,  <31.860456, 32.732227, 30.620392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035095, 33.088451, 30.671434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084189, 0.100774, -0.991341,
		-0.895708, 0.443562, -0.030978,
		0.436599, 0.890560, 0.127607,
		32.166077, 33.355621, 30.709717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419344, 33.200844, 30.191504>,  <31.860456, 32.732227, 30.620392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419344, 33.200844, 30.191504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787388, 33.346638, 30.248835>,  <32.008213, 33.434116, 30.283234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787388, 33.346638, 30.248835>,  <31.419344, 33.200844, 30.191504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787388, 33.346638, 30.248835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048718, 0.256599, -0.965289,
		-0.388614, 0.895157, 0.218343,
		0.920112, 0.364488, 0.143329,
		32.063423, 33.455982, 30.291834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528593, 33.899471, 29.888466>,  <31.419344, 33.200844, 30.191504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528593, 33.899471, 29.888466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916302, 33.808369, 29.925644>,  <32.148926, 33.753708, 29.947950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916302, 33.808369, 29.925644>,  <31.528593, 33.899471, 29.888466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916302, 33.808369, 29.925644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177192, 0.384322, -0.906035,
		0.170638, 0.894663, 0.412870,
		0.969271, -0.227761, 0.092947,
		32.207085, 33.740040, 29.953527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834623, 34.517761, 29.878399>,  <31.528593, 33.899471, 29.888466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834623, 34.517761, 29.878399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113754, 34.258305, 29.756876>,  <32.281231, 34.102631, 29.683962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113754, 34.258305, 29.756876>,  <31.834623, 34.517761, 29.878399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113754, 34.258305, 29.756876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084067, 0.495394, -0.864591,
		0.711317, 0.577794, 0.400228,
		0.697826, -0.648644, -0.303809,
		32.323101, 34.063713, 29.665733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432640, 34.910965, 29.848452>,  <31.834623, 34.517761, 29.878399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432640, 34.910965, 29.848452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540741, 34.584591, 29.644014>,  <32.605602, 34.388767, 29.521353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540741, 34.584591, 29.644014>,  <32.432640, 34.910965, 29.848452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540741, 34.584591, 29.644014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271870, 0.573912, -0.772471,
		0.923608, 0.069809, 0.376928,
		0.270249, -0.815936, -0.511091,
		32.621815, 34.339809, 29.490686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174969, 34.974461, 29.605392>,  <32.432640, 34.910965, 29.848452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174969, 34.974461, 29.605392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969994, 34.725960, 29.368259>,  <32.847008, 34.576859, 29.225979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969994, 34.725960, 29.368259>,  <33.174969, 34.974461, 29.605392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969994, 34.725960, 29.368259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277269, 0.533684, -0.798939,
		0.812732, -0.573778, -0.101223,
		-0.512434, -0.621257, -0.592833,
		32.816261, 34.539581, 29.190409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661636, 34.617664, 29.152510>,  <33.174969, 34.974461, 29.605392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661636, 34.617664, 29.152510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310604, 34.586823, 28.963238>,  <33.099983, 34.568317, 28.849674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310604, 34.586823, 28.963238>,  <33.661636, 34.617664, 29.152510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310604, 34.586823, 28.963238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375742, 0.502386, -0.778734,
		0.297763, -0.861199, -0.411915,
		-0.877585, -0.077104, -0.473181,
		33.047329, 34.563690, 28.821283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734901, 34.376541, 28.417395>,  <33.661636, 34.617664, 29.152510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734901, 34.376541, 28.417395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390575, 34.580070, 28.413712>,  <33.183979, 34.702190, 28.411501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390575, 34.580070, 28.413712>,  <33.734901, 34.376541, 28.417395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390575, 34.580070, 28.413712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221638, 0.358547, -0.906819,
		-0.458113, -0.782648, -0.421420,
		-0.860819, 0.508828, -0.009210,
		33.132328, 34.732719, 28.410948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556992, 34.328884, 27.704456>,  <33.734901, 34.376541, 28.417395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556992, 34.328884, 27.704456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344601, 34.635422, 27.849112>,  <33.217167, 34.819344, 27.935904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344601, 34.635422, 27.849112>,  <33.556992, 34.328884, 27.704456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344601, 34.635422, 27.849112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221612, 0.537497, -0.813625,
		-0.817894, -0.351874, -0.455229,
		-0.530978, 0.766343, 0.361636,
		33.185307, 34.865326, 27.957602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225258, 34.413361, 27.085661>,  <33.556992, 34.328884, 27.704456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225258, 34.413361, 27.085661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122086, 34.735680, 27.298887>,  <33.060181, 34.929073, 27.426823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122086, 34.735680, 27.298887>,  <33.225258, 34.413361, 27.085661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122086, 34.735680, 27.298887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073036, 0.533894, -0.842391,
		-0.963399, -0.256211, -0.078855,
		-0.257931, 0.805799, 0.533066,
		33.044708, 34.977421, 27.458807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535358, 34.702690, 26.806501>,  <33.225258, 34.413361, 27.085661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535358, 34.702690, 26.806501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736275, 34.985428, 27.005732>,  <32.856823, 35.155071, 27.125269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736275, 34.985428, 27.005732>,  <32.535358, 34.702690, 26.806501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736275, 34.985428, 27.005732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114427, 0.516608, -0.848542,
		-0.857096, 0.483205, 0.178603,
		0.502287, 0.706845, 0.498074,
		32.886959, 35.197483, 27.155153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152172, 35.385349, 26.655279>,  <32.535358, 34.702690, 26.806501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152172, 35.385349, 26.655279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517487, 35.504921, 26.765945>,  <32.736675, 35.576664, 26.832344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517487, 35.504921, 26.765945>,  <32.152172, 35.385349, 26.655279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517487, 35.504921, 26.765945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109885, 0.473237, -0.874055,
		-0.392207, 0.828667, 0.399355,
		0.913290, 0.298927, 0.276665,
		32.791473, 35.594601, 26.848946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184715, 36.023060, 26.487843>,  <32.152172, 35.385349, 26.655279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184715, 36.023060, 26.487843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573418, 35.937088, 26.526831>,  <32.806637, 35.885506, 26.550224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573418, 35.937088, 26.526831>,  <32.184715, 36.023060, 26.487843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573418, 35.937088, 26.526831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184109, 0.432030, -0.882867,
		0.147640, 0.875875, 0.459397,
		0.971754, -0.214926, 0.097472,
		32.864944, 35.872612, 26.556072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593903, 36.654644, 26.536438>,  <32.184715, 36.023060, 26.487843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593903, 36.654644, 26.536438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831600, 36.356709, 26.415056>,  <32.974220, 36.177948, 26.342228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831600, 36.356709, 26.415056>,  <32.593903, 36.654644, 26.536438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831600, 36.356709, 26.415056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359982, 0.583711, -0.727801,
		0.719226, 0.323254, 0.614996,
		0.594245, -0.744841, -0.303454,
		33.009872, 36.133255, 26.324020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280117, 37.023003, 26.338968>,  <32.593903, 36.654644, 26.536438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280117, 37.023003, 26.338968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264011, 36.659748, 26.172277>,  <33.254349, 36.441795, 26.072262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264011, 36.659748, 26.172277>,  <33.280117, 37.023003, 26.338968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264011, 36.659748, 26.172277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493458, 0.344584, -0.798600,
		0.868837, -0.237795, 0.434253,
		-0.040266, -0.908138, -0.416729,
		33.251930, 36.387306, 26.047258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988453, 37.013325, 26.048157>,  <33.280117, 37.023003, 26.338968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988453, 37.013325, 26.048157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759880, 36.749638, 25.852646>,  <33.622738, 36.591427, 25.735340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759880, 36.749638, 25.852646>,  <33.988453, 37.013325, 26.048157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759880, 36.749638, 25.852646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428344, 0.268437, -0.862822,
		0.699994, -0.702405, 0.128980,
		-0.571428, -0.659218, -0.488775,
		33.588451, 36.551872, 25.706013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409649, 36.928047, 25.550762>,  <33.988453, 37.013325, 26.048157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409649, 36.928047, 25.550762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064571, 36.766739, 25.428686>,  <33.857525, 36.669956, 25.355440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064571, 36.766739, 25.428686>,  <34.409649, 36.928047, 25.550762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064571, 36.766739, 25.428686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255429, 0.173398, -0.951152,
		0.436490, -0.898503, -0.046582,
		-0.862690, -0.403269, -0.305189,
		33.805763, 36.645760, 25.337130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460472, 36.222328, 25.062305>,  <34.409649, 36.928047, 25.550762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460472, 36.222328, 25.062305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099712, 36.380230, 24.992167>,  <33.883255, 36.474972, 24.950083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099712, 36.380230, 24.992167>,  <34.460472, 36.222328, 25.062305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099712, 36.380230, 24.992167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187304, -0.008381, -0.982266,
		-0.389223, -0.918749, -0.066380,
		-0.901900, 0.394754, -0.175348,
		33.829144, 36.498657, 24.939562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179680, 36.093468, 24.417513>,  <34.460472, 36.222328, 25.062305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179680, 36.093468, 24.417513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946552, 36.411781, 24.483303>,  <33.806675, 36.602772, 24.522778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946552, 36.411781, 24.483303>,  <34.179680, 36.093468, 24.417513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946552, 36.411781, 24.483303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015789, 0.191276, -0.981409,
		-0.812452, -0.574576, -0.098914,
		-0.582814, 0.795786, 0.164475,
		33.771709, 36.650517, 24.532646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753910, 36.050335, 23.906893>,  <34.179680, 36.093468, 24.417513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753910, 36.050335, 23.906893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720310, 36.417919, 24.061008>,  <33.700150, 36.638470, 24.153479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720310, 36.417919, 24.061008>,  <33.753910, 36.050335, 23.906893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720310, 36.417919, 24.061008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093898, 0.377637, -0.921181,
		-0.992032, -0.113557, 0.054567,
		-0.084000, 0.918964, 0.385290,
		33.695110, 36.693607, 24.176596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203770, 36.407475, 23.513336>,  <33.753910, 36.050335, 23.906893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203770, 36.407475, 23.513336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410305, 36.699574, 23.692284>,  <33.534225, 36.874832, 23.799652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410305, 36.699574, 23.692284>,  <33.203770, 36.407475, 23.513336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410305, 36.699574, 23.692284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113270, 0.576038, -0.809537,
		-0.848860, 0.367322, 0.380146,
		0.516339, 0.730243, 0.447369,
		33.565208, 36.918648, 23.826494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867554, 37.002579, 23.316385>,  <33.203770, 36.407475, 23.513336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867554, 37.002579, 23.316385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234154, 37.115955, 23.429306>,  <33.454113, 37.183983, 23.497059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234154, 37.115955, 23.429306>,  <32.867554, 37.002579, 23.316385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234154, 37.115955, 23.429306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028134, 0.658261, -0.752264,
		-0.399051, 0.697390, 0.595320,
		0.916497, 0.283443, 0.282300,
		33.509102, 37.200989, 23.513996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889225, 37.701283, 23.345476>,  <32.867554, 37.002579, 23.316385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889225, 37.701283, 23.345476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268543, 37.589108, 23.286032>,  <33.496136, 37.521801, 23.250364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268543, 37.589108, 23.286032>,  <32.889225, 37.701283, 23.345476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268543, 37.589108, 23.286032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015681, 0.509067, -0.860584,
		0.316996, 0.813759, 0.487144,
		0.948297, -0.280441, -0.148612,
		33.553032, 37.504974, 23.241447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264141, 38.315163, 23.175339>,  <32.889225, 37.701283, 23.345476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264141, 38.315163, 23.175339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500229, 38.015171, 23.055897>,  <33.641884, 37.835175, 22.984232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500229, 38.015171, 23.055897>,  <33.264141, 38.315163, 23.175339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500229, 38.015171, 23.055897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247511, 0.520225, -0.817376,
		0.768360, 0.408525, 0.492677,
		0.590221, -0.749982, -0.298606,
		33.677296, 37.790176, 22.966314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769211, 38.659603, 22.822803>,  <33.264141, 38.315163, 23.175339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769211, 38.659603, 22.822803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820728, 38.285263, 22.691595>,  <33.851639, 38.060658, 22.612869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820728, 38.285263, 22.691595>,  <33.769211, 38.659603, 22.822803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820728, 38.285263, 22.691595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317350, 0.352278, -0.880448,
		0.939522, 0.009300, 0.342363,
		0.128795, -0.935849, -0.328022,
		33.859367, 38.004509, 22.593189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497650, 38.482323, 22.597042>,  <33.769211, 38.659603, 22.822803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497650, 38.482323, 22.597042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257847, 38.247623, 22.379303>,  <34.113964, 38.106804, 22.248659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257847, 38.247623, 22.379303>,  <34.497650, 38.482323, 22.597042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257847, 38.247623, 22.379303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394436, 0.375202, -0.838835,
		0.696427, -0.717598, 0.006499,
		-0.599508, -0.586750, -0.544348,
		34.077995, 38.071598, 22.216000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945511, 38.170696, 22.074869>,  <34.497650, 38.482323, 22.597042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945511, 38.170696, 22.074869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564850, 38.145176, 21.954679>,  <34.336452, 38.129864, 21.882566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564850, 38.145176, 21.954679>,  <34.945511, 38.170696, 22.074869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564850, 38.145176, 21.954679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265579, 0.320622, -0.909214,
		0.154345, -0.945056, -0.288178,
		-0.951654, -0.063798, -0.300474,
		34.279354, 38.126038, 21.864538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018742, 37.963284, 21.332216>,  <34.945511, 38.170696, 22.074869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018742, 37.963284, 21.332216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652241, 38.121693, 21.356400>,  <34.432343, 38.216740, 21.370909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652241, 38.121693, 21.356400>,  <35.018742, 37.963284, 21.332216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652241, 38.121693, 21.356400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154516, 0.488585, -0.858726,
		-0.369615, -0.777464, -0.508857,
		-0.916247, 0.396025, 0.060457,
		34.377365, 38.240501, 21.374537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630081, 37.863590, 20.690008>,  <35.018742, 37.963284, 21.332216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630081, 37.863590, 20.690008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427700, 38.160309, 20.866076>,  <34.306271, 38.338341, 20.971716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427700, 38.160309, 20.866076>,  <34.630081, 37.863590, 20.690008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427700, 38.160309, 20.866076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165573, 0.584334, -0.794442,
		-0.846523, -0.329067, -0.418466,
		-0.505949, 0.741800, 0.440168,
		34.275917, 38.382851, 20.998125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194588, 38.178532, 20.204933>,  <34.630081, 37.863590, 20.690008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194588, 38.178532, 20.204933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238186, 38.462124, 20.483635>,  <34.264343, 38.632278, 20.650856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238186, 38.462124, 20.483635>,  <34.194588, 38.178532, 20.204933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238186, 38.462124, 20.483635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193918, 0.672300, -0.714428,
		-0.974944, 0.212983, -0.064207,
		0.108995, 0.708979, 0.696757,
		34.270885, 38.674816, 20.692661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771736, 38.741570, 19.974005>,  <34.194588, 38.178532, 20.204933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771736, 38.741570, 19.974005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016979, 38.911682, 20.240309>,  <34.164124, 39.013748, 20.400091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016979, 38.911682, 20.240309>,  <33.771736, 38.741570, 19.974005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016979, 38.911682, 20.240309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145751, 0.767375, -0.624413,
		-0.776438, 0.479868, 0.408498,
		0.613107, 0.425279, 0.665761,
		34.200912, 39.039265, 20.440037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555050, 39.480476, 19.895660>,  <33.771736, 38.741570, 19.974005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555050, 39.480476, 19.895660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922695, 39.465019, 20.052498>,  <34.143284, 39.455746, 20.146601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922695, 39.465019, 20.052498>,  <33.555050, 39.480476, 19.895660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922695, 39.465019, 20.052498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273993, 0.777830, -0.565605,
		-0.283123, 0.627286, 0.725503,
		0.919113, -0.038647, 0.392093,
		34.198429, 39.453426, 20.170126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732651, 40.196678, 20.143990>,  <33.555050, 39.480476, 19.895660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732651, 40.196678, 20.143990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092575, 40.028427, 20.097647>,  <34.308529, 39.927479, 20.069841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092575, 40.028427, 20.097647>,  <33.732651, 40.196678, 20.143990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092575, 40.028427, 20.097647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349329, 0.853683, -0.386258,
		0.261374, 0.307086, 0.915086,
		0.899807, -0.420624, -0.115856,
		34.362518, 39.902241, 20.062889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305775, 40.017838, 20.668480>,  <33.732651, 40.196678, 20.143990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305775, 40.017838, 20.668480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290073, 40.415714, 20.706522>,  <34.280655, 40.654442, 20.729347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290073, 40.415714, 20.706522>,  <34.305775, 40.017838, 20.668480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290073, 40.415714, 20.706522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610393, 0.051489, -0.790424,
		-0.791126, -0.089075, 0.605133,
		-0.039249, 0.994693, 0.095105,
		34.278297, 40.714123, 20.735054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503376, 40.263042, 20.835539>,  <34.305775, 40.017838, 20.668480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503376, 40.263042, 20.835539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695541, 40.562599, 20.652952>,  <33.810841, 40.742332, 20.543400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695541, 40.562599, 20.652952>,  <33.503376, 40.263042, 20.835539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695541, 40.562599, 20.652952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754201, 0.087120, -0.650839,
		-0.447639, 0.656942, 0.606668,
		0.480417, 0.748890, -0.456468,
		33.839668, 40.787266, 20.516012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003418, 40.687710, 20.661589>,  <33.503376, 40.263042, 20.835539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003418, 40.687710, 20.661589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289497, 40.880703, 20.459320>,  <33.461143, 40.996498, 20.337959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289497, 40.880703, 20.459320>,  <33.003418, 40.687710, 20.661589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289497, 40.880703, 20.459320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624968, 0.117564, -0.771747,
		-0.312907, 0.867979, 0.385619,
		0.715195, 0.482485, -0.505672,
		33.504055, 41.025448, 20.307619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568275, 41.129955, 20.364508>,  <33.003418, 40.687710, 20.661589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568275, 41.129955, 20.364508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909229, 41.098137, 20.157778>,  <33.113804, 41.079048, 20.033739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909229, 41.098137, 20.157778>,  <32.568275, 41.129955, 20.364508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909229, 41.098137, 20.157778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517103, 0.018680, -0.855719,
		0.077719, 0.996657, -0.025209,
		0.852387, -0.079541, -0.516826,
		33.164944, 41.074276, 20.002729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321541, 41.432655, 19.829256>,  <32.568275, 41.129955, 20.364508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321541, 41.432655, 19.829256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677177, 41.270329, 19.744564>,  <32.890560, 41.172932, 19.693748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677177, 41.270329, 19.744564>,  <32.321541, 41.432655, 19.829256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677177, 41.270329, 19.744564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277712, -0.110538, -0.954284,
		0.363863, 0.907244, -0.210979,
		0.889089, -0.405820, -0.211732,
		32.943905, 41.148582, 19.681044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656475, 40.735321, 19.566488>,  <32.321541, 41.432655, 19.829256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656475, 40.735321, 19.566488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852280, 41.006844, 19.347546>,  <32.969761, 41.169758, 19.216181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852280, 41.006844, 19.347546>,  <32.656475, 40.735321, 19.566488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852280, 41.006844, 19.347546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792437, -0.084341, 0.604095,
		0.363901, -0.729456, -0.579198,
		0.489511, 0.678808, -0.547356,
		32.999134, 41.210487, 19.183338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423397, 40.568127, 19.300095>,  <32.656475, 40.735321, 19.566488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423397, 40.568127, 19.300095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355980, 40.959019, 19.351662>,  <33.315529, 41.193554, 19.382603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355980, 40.959019, 19.351662>,  <33.423397, 40.568127, 19.300095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355980, 40.959019, 19.351662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761580, 0.046073, 0.646431,
		0.625769, 0.207136, -0.752002,
		-0.168547, 0.977227, 0.128920,
		33.305416, 41.252186, 19.390337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013779, 40.990093, 19.122778>,  <33.423397, 40.568127, 19.300095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013779, 40.990093, 19.122778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804649, 41.131931, 19.432854>,  <33.679173, 41.217033, 19.618900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804649, 41.131931, 19.432854>,  <34.013779, 40.990093, 19.122778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804649, 41.131931, 19.432854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838078, 0.047579, 0.543472,
		0.155829, 0.933809, -0.322053,
		-0.522822, 0.354594, 0.775190,
		33.647804, 41.238308, 19.665411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361843, 41.587872, 19.500866>,  <34.013779, 40.990093, 19.122778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361843, 41.587872, 19.500866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104057, 41.417583, 19.754930>,  <33.949387, 41.315411, 19.907370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104057, 41.417583, 19.754930>,  <34.361843, 41.587872, 19.500866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104057, 41.417583, 19.754930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705540, -0.010868, 0.708586,
		-0.294759, 0.904788, 0.307370,
		-0.644461, -0.425724, 0.635161,
		33.910721, 41.289867, 19.945478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444237, 41.888256, 20.100529>,  <34.361843, 41.587872, 19.500866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444237, 41.888256, 20.100529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259621, 41.556091, 20.225361>,  <34.148849, 41.356792, 20.300261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259621, 41.556091, 20.225361>,  <34.444237, 41.888256, 20.100529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259621, 41.556091, 20.225361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423712, 0.102717, 0.899954,
		-0.779390, 0.547597, 0.304448,
		-0.461540, -0.830413, 0.312081,
		34.121159, 41.306969, 20.318985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211308, 42.040848, 20.681196>,  <34.444237, 41.888256, 20.100529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211308, 42.040848, 20.681196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223507, 41.641636, 20.703140>,  <34.230827, 41.402107, 20.716307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223507, 41.641636, 20.703140>,  <34.211308, 42.040848, 20.681196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223507, 41.641636, 20.703140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305077, 0.061562, 0.950336,
		-0.951839, -0.012249, 0.306353,
		0.030501, -0.998028, 0.054860,
		34.232658, 41.342228, 20.719599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864117, 41.793911, 21.323637>,  <34.211308, 42.040848, 20.681196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864117, 41.793911, 21.323637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091484, 41.478527, 21.229633>,  <34.227905, 41.289295, 21.173231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091484, 41.478527, 21.229633>,  <33.864117, 41.793911, 21.323637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091484, 41.478527, 21.229633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234984, -0.118159, 0.964791,
		-0.788469, -0.603627, 0.118112,
		0.568417, -0.788463, -0.235007,
		34.262009, 41.241989, 21.159132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526596, 41.179058, 21.636112>,  <33.864117, 41.793911, 21.323637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526596, 41.179058, 21.636112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910297, 41.083218, 21.576200>,  <34.140518, 41.025715, 21.540253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910297, 41.083218, 21.576200>,  <33.526596, 41.179058, 21.636112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910297, 41.083218, 21.576200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043040, -0.400000, 0.915504,
		-0.279264, -0.884643, -0.373387,
		0.959249, -0.239597, -0.149781,
		34.198071, 41.011337, 21.531265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650349, 40.529388, 21.949980>,  <33.526596, 41.179058, 21.636112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650349, 40.529388, 21.949980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005096, 40.712688, 21.926430>,  <34.217945, 40.822670, 21.912300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005096, 40.712688, 21.926430>,  <33.650349, 40.529388, 21.949980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005096, 40.712688, 21.926430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207576, -0.281357, 0.936883,
		0.412765, -0.843114, -0.344649,
		0.886869, 0.458254, -0.058876,
		34.271156, 40.850166, 21.908768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256054, 40.007076, 22.209400>,  <33.650349, 40.529388, 21.949980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256054, 40.007076, 22.209400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384598, 40.385609, 22.223167>,  <34.461723, 40.612728, 22.231428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384598, 40.385609, 22.223167>,  <34.256054, 40.007076, 22.209400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384598, 40.385609, 22.223167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163379, -0.091209, 0.982338,
		0.932756, -0.310062, -0.183922,
		0.321361, 0.946331, 0.034419,
		34.481007, 40.669506, 22.233494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861610, 39.834080, 22.511850>,  <34.256054, 40.007076, 22.209400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861610, 39.834080, 22.511850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818317, 40.230236, 22.546278>,  <34.792339, 40.467930, 22.566935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818317, 40.230236, 22.546278>,  <34.861610, 39.834080, 22.511850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818317, 40.230236, 22.546278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335575, -0.045096, 0.940933,
		0.935775, 0.130726, -0.327470,
		-0.108236, 0.990392, 0.086068,
		34.785847, 40.527355, 22.572098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520187, 40.136501, 22.782032>,  <34.861610, 39.834080, 22.511850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520187, 40.136501, 22.782032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201668, 40.367748, 22.853233>,  <35.010555, 40.506496, 22.895954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201668, 40.367748, 22.853233>,  <35.520187, 40.136501, 22.782032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201668, 40.367748, 22.853233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285267, 0.099408, 0.953279,
		0.533415, 0.809873, -0.244077,
		-0.796298, 0.578121, 0.178004,
		34.962780, 40.541183, 22.906635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838528, 40.612255, 23.171671>,  <35.520187, 40.136501, 22.782032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838528, 40.612255, 23.171671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450291, 40.631210, 23.266083>,  <35.217350, 40.642582, 23.322731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450291, 40.631210, 23.266083>,  <35.838528, 40.612255, 23.171671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450291, 40.631210, 23.266083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235261, -0.021285, 0.971699,
		0.051069, 0.998650, 0.009511,
		-0.970590, 0.047386, 0.236030,
		35.159115, 40.645428, 23.336891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793201, 41.094582, 23.732141>,  <35.838528, 40.612255, 23.171671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793201, 41.094582, 23.732141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471840, 40.859905, 23.772791>,  <35.279022, 40.719101, 23.797180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471840, 40.859905, 23.772791>,  <35.793201, 41.094582, 23.732141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471840, 40.859905, 23.772791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249297, -0.176450, 0.952217,
		-0.540727, 0.790353, 0.288022,
		-0.803409, -0.586692, 0.101622,
		35.230816, 40.683899, 23.803278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799515, 41.079308, 24.431202>,  <35.793201, 41.094582, 23.732141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799515, 41.079308, 24.431202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488983, 40.839237, 24.354162>,  <35.302662, 40.695194, 24.307938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488983, 40.839237, 24.354162>,  <35.799515, 41.079308, 24.431202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488983, 40.839237, 24.354162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143715, -0.128971, 0.981179,
		-0.613721, 0.789401, 0.013870,
		-0.776333, -0.600177, -0.192601,
		35.256084, 40.659184, 24.296381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250877, 41.310555, 24.846638>,  <35.799515, 41.079308, 24.431202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250877, 41.310555, 24.846638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144234, 40.933777, 24.764999>,  <35.080250, 40.707710, 24.716017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144234, 40.933777, 24.764999>,  <35.250877, 41.310555, 24.846638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144234, 40.933777, 24.764999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263091, -0.132592, 0.955616,
		-0.927202, 0.308470, -0.212468,
		-0.266607, -0.941948, -0.204096,
		35.064251, 40.651192, 24.703772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690857, 41.232716, 25.268013>,  <35.250877, 41.310555, 24.846638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690857, 41.232716, 25.268013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800125, 40.861103, 25.168198>,  <34.865688, 40.638134, 25.108309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800125, 40.861103, 25.168198>,  <34.690857, 41.232716, 25.268013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800125, 40.861103, 25.168198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478712, -0.356292, 0.802428,
		-0.834392, -0.099746, -0.542070,
		0.273174, -0.929035, -0.249537,
		34.882076, 40.582394, 25.093336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149666, 40.907417, 25.398672>,  <34.690857, 41.232716, 25.268013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149666, 40.907417, 25.398672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428169, 40.620449, 25.389488>,  <34.595272, 40.448269, 25.383978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428169, 40.620449, 25.389488>,  <34.149666, 40.907417, 25.398672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428169, 40.620449, 25.389488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374583, -0.390449, 0.840974,
		-0.612298, -0.576936, -0.540589,
		0.696260, -0.717422, -0.022961,
		34.637047, 40.405224, 25.382601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786999, 40.130005, 25.378496>,  <34.149666, 40.907417, 25.398672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786999, 40.130005, 25.378496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152382, 40.092331, 25.536846>,  <34.371613, 40.069725, 25.631857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152382, 40.092331, 25.536846>,  <33.786999, 40.130005, 25.378496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152382, 40.092331, 25.536846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405552, -0.290631, 0.866638,
		0.033429, -0.952188, -0.303677,
		0.913460, -0.094186, 0.395877,
		34.426418, 40.064075, 25.655609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696499, 39.537483, 25.809286>,  <33.786999, 40.130005, 25.378496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696499, 39.537483, 25.809286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036324, 39.709660, 25.931244>,  <34.240219, 39.812965, 26.004419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036324, 39.709660, 25.931244>,  <33.696499, 39.537483, 25.809286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036324, 39.709660, 25.931244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331550, -0.013813, 0.943336,
		0.410264, -0.902512, 0.130978,
		0.849563, 0.430443, 0.304895,
		34.291191, 39.838791, 26.022713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116703, 39.015316, 26.059305>,  <33.696499, 39.537483, 25.809286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116703, 39.015316, 26.059305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166149, 39.374523, 26.228199>,  <34.195816, 39.590046, 26.329536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166149, 39.374523, 26.228199>,  <34.116703, 39.015316, 26.059305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166149, 39.374523, 26.228199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225768, -0.388890, 0.893193,
		0.966307, -0.205738, 0.154672,
		0.123613, 0.898018, 0.422236,
		34.203232, 39.643929, 26.354870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384415, 38.846889, 26.684702>,  <34.116703, 39.015316, 26.059305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384415, 38.846889, 26.684702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304298, 39.232944, 26.752096>,  <34.256229, 39.464577, 26.792532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304298, 39.232944, 26.752096>,  <34.384415, 38.846889, 26.684702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304298, 39.232944, 26.752096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137399, -0.197941, 0.970536,
		0.970053, 0.171243, 0.172256,
		-0.200294, 0.965140, 0.168484,
		34.244209, 39.522488, 26.802641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637928, 39.043785, 27.284676>,  <34.384415, 38.846889, 26.684702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637928, 39.043785, 27.284676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381439, 39.349747, 27.260176>,  <34.227547, 39.533325, 27.245476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381439, 39.349747, 27.260176>,  <34.637928, 39.043785, 27.284676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381439, 39.349747, 27.260176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221386, -0.107984, 0.969189,
		0.734725, 0.635027, 0.238581,
		-0.641224, 0.764906, -0.061247,
		34.189072, 39.579220, 27.241802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640446, 39.394062, 27.983866>,  <34.637928, 39.043785, 27.284676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640446, 39.394062, 27.983866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301628, 39.527313, 27.818193>,  <34.098339, 39.607265, 27.718790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301628, 39.527313, 27.818193>,  <34.640446, 39.394062, 27.983866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301628, 39.527313, 27.818193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453730, -0.047289, 0.889884,
		0.276862, 0.941694, 0.191207,
		-0.847040, 0.333131, -0.414182,
		34.047516, 39.627251, 27.693939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451271, 39.936569, 28.356142>,  <34.640446, 39.394062, 27.983866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451271, 39.936569, 28.356142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117626, 39.797745, 28.184650>,  <33.917439, 39.714451, 28.081755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117626, 39.797745, 28.184650>,  <34.451271, 39.936569, 28.356142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117626, 39.797745, 28.184650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462542, 0.016615, 0.886442,
		-0.300525, 0.937696, -0.174389,
		-0.834110, -0.347060, -0.428730,
		33.867393, 39.693626, 28.056032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904137, 40.236122, 28.651636>,  <34.451271, 39.936569, 28.356142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904137, 40.236122, 28.651636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756744, 39.900841, 28.490824>,  <33.668308, 39.699673, 28.394337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756744, 39.900841, 28.490824>,  <33.904137, 40.236122, 28.651636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756744, 39.900841, 28.490824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494850, -0.189244, 0.848122,
		-0.786983, 0.511465, -0.345053,
		-0.368485, -0.838207, -0.402030,
		33.646198, 39.649380, 28.370214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173817, 40.340275, 28.952965>,  <33.904137, 40.236122, 28.651636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173817, 40.340275, 28.952965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251804, 39.972870, 28.815371>,  <33.298595, 39.752426, 28.732813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251804, 39.972870, 28.815371>,  <33.173817, 40.340275, 28.952965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251804, 39.972870, 28.815371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479611, -0.395208, 0.783443,
		-0.855547, 0.012235, -0.517580,
		0.194966, -0.918510, -0.343987,
		33.310295, 39.697315, 28.712173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469032, 39.987713, 28.952520>,  <33.173817, 40.340275, 28.952965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469032, 39.987713, 28.952520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737999, 39.692730, 28.977875>,  <32.899380, 39.515739, 28.993088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737999, 39.692730, 28.977875>,  <32.469032, 39.987713, 28.952520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737999, 39.692730, 28.977875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580721, -0.472523, 0.662937,
		-0.458937, -0.482576, -0.745988,
		0.672413, -0.737457, 0.063384,
		32.939724, 39.471493, 28.996891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109570, 39.289825, 28.768377>,  <32.469032, 39.987713, 28.952520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109570, 39.289825, 28.768377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435616, 39.202801, 28.983137>,  <32.631241, 39.150585, 29.111992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435616, 39.202801, 28.983137>,  <32.109570, 39.289825, 28.768377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435616, 39.202801, 28.983137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570606, -0.461508, 0.679279,
		0.100001, -0.860046, -0.500320,
		0.815113, -0.217557, 0.536898,
		32.680149, 39.137535, 29.144207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970694, 38.690384, 29.061867>,  <32.109570, 39.289825, 28.768377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970694, 38.690384, 29.061867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282238, 38.776955, 29.297335>,  <32.469166, 38.828899, 29.438616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282238, 38.776955, 29.297335>,  <31.970694, 38.690384, 29.061867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282238, 38.776955, 29.297335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384495, -0.576760, 0.720772,
		0.495519, -0.787722, -0.365999,
		0.778861, 0.216431, 0.588670,
		32.515896, 38.841885, 29.473936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181164, 38.054668, 29.425512>,  <31.970694, 38.690384, 29.061867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181164, 38.054668, 29.425512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355644, 38.338963, 29.646271>,  <32.460331, 38.509537, 29.778727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355644, 38.338963, 29.646271>,  <32.181164, 38.054668, 29.425512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355644, 38.338963, 29.646271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419939, -0.381657, 0.823401,
		0.795852, -0.590931, 0.131986,
		0.436200, 0.710731, 0.551898,
		32.486504, 38.552181, 29.811840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440269, 37.632896, 29.930914>,  <32.181164, 38.054668, 29.425512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440269, 37.632896, 29.930914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434921, 37.996838, 30.096796>,  <32.431713, 38.215202, 30.196325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434921, 37.996838, 30.096796>,  <32.440269, 37.632896, 29.930914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434921, 37.996838, 30.096796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526593, -0.358976, 0.770607,
		0.850012, -0.208077, 0.483924,
		-0.013372, 0.909857, 0.414706,
		32.430908, 38.269794, 30.221209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674412, 37.582191, 30.608822>,  <32.440269, 37.632896, 29.930914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674412, 37.582191, 30.608822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497166, 37.940754, 30.604803>,  <32.390820, 38.155891, 30.602392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497166, 37.940754, 30.604803>,  <32.674412, 37.582191, 30.608822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497166, 37.940754, 30.604803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457674, -0.216573, 0.862340,
		0.770834, 0.386713, 0.506230,
		-0.443114, 0.896409, -0.010047,
		32.364231, 38.209675, 30.601789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851830, 37.888653, 31.222666>,  <32.674412, 37.582191, 30.608822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851830, 37.888653, 31.222666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516739, 38.068722, 31.099014>,  <32.315685, 38.176762, 31.024824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516739, 38.068722, 31.099014>,  <32.851830, 37.888653, 31.222666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516739, 38.068722, 31.099014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478420, -0.332064, 0.812925,
		0.263306, 0.828902, 0.493551,
		-0.837726, 0.450173, -0.309129,
		32.265423, 38.203773, 31.006275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545151, 38.292168, 31.822010>,  <32.851830, 37.888653, 31.222666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545151, 38.292168, 31.822010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225491, 38.269215, 31.582653>,  <32.033695, 38.255444, 31.439039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225491, 38.269215, 31.582653>,  <32.545151, 38.292168, 31.822010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225491, 38.269215, 31.582653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568674, -0.250524, 0.783484,
		-0.194868, 0.966408, 0.167575,
		-0.799147, -0.057380, -0.598391,
		31.985746, 38.251999, 31.403135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043739, 38.568176, 32.238010>,  <32.545151, 38.292168, 31.822010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043739, 38.568176, 32.238010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866137, 38.346455, 31.956415>,  <31.759575, 38.213421, 31.787458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866137, 38.346455, 31.956415>,  <32.043739, 38.568176, 32.238010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866137, 38.346455, 31.956415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606964, -0.391897, 0.691384,
		-0.659130, 0.734276, -0.162438,
		-0.444008, -0.554306, -0.703990,
		31.732935, 38.180164, 31.745218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383667, 38.608078, 32.471127>,  <32.043739, 38.568176, 32.238010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383667, 38.608078, 32.471127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420540, 38.292542, 32.228069>,  <31.442663, 38.103218, 32.082233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420540, 38.292542, 32.228069>,  <31.383667, 38.608078, 32.471127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420540, 38.292542, 32.228069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303600, -0.603452, 0.737342,
		-0.948330, 0.116512, -0.295118,
		0.092180, -0.788842, -0.607644,
		31.448195, 38.055889, 32.045776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709557, 38.214207, 32.477554>,  <31.383667, 38.608078, 32.471127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709557, 38.214207, 32.477554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014774, 37.974209, 32.381416>,  <31.197905, 37.830208, 32.323734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014774, 37.974209, 32.381416>,  <30.709557, 38.214207, 32.477554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014774, 37.974209, 32.381416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296592, -0.655425, 0.694587,
		-0.574280, -0.458715, -0.678073,
		0.763044, -0.599998, -0.240347,
		31.243687, 37.794209, 32.309311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396454, 37.617756, 32.388512>,  <30.709557, 38.214207, 32.477554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396454, 37.617756, 32.388512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774769, 37.503319, 32.450008>,  <31.001759, 37.434658, 32.486908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774769, 37.503319, 32.450008>,  <30.396454, 37.617756, 32.388512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774769, 37.503319, 32.450008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307119, -0.633807, 0.709907,
		-0.105652, -0.718639, -0.687310,
		0.945788, -0.286089, 0.153745,
		31.058506, 37.417492, 32.496132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331455, 36.945766, 32.646660>,  <30.396454, 37.617756, 32.388512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331455, 36.945766, 32.646660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699900, 37.054806, 32.757832>,  <30.920967, 37.120228, 32.824535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699900, 37.054806, 32.757832>,  <30.331455, 36.945766, 32.646660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699900, 37.054806, 32.757832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059125, -0.607684, 0.791975,
		0.384780, -0.745931, -0.543628,
		0.921113, 0.272594, 0.277928,
		30.976234, 37.136585, 32.841209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782141, 36.375481, 32.500473>,  <30.331455, 36.945766, 32.646660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782141, 36.375481, 32.500473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925367, 36.615993, 32.786198>,  <31.011303, 36.760303, 32.957634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925367, 36.615993, 32.786198>,  <30.782141, 36.375481, 32.500473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925367, 36.615993, 32.786198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077477, -0.781534, 0.619033,
		0.930477, -0.166311, -0.326426,
		0.358065, 0.601287, 0.714314,
		31.032787, 36.796379, 33.000492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197350, 35.884880, 32.801960>,  <30.782141, 36.375481, 32.500473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197350, 35.884880, 32.801960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206985, 36.179726, 33.072094>,  <31.212767, 36.356632, 33.234177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206985, 36.179726, 33.072094>,  <31.197350, 35.884880, 32.801960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206985, 36.179726, 33.072094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128228, -0.672232, 0.729152,
		0.991452, 0.069030, -0.110714,
		0.024092, 0.737116, 0.675337,
		31.214212, 36.400860, 33.274696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729296, 35.679863, 33.241146>,  <31.197350, 35.884880, 32.801960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729296, 35.679863, 33.241146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535017, 35.955135, 33.456741>,  <31.418449, 36.120300, 33.586098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535017, 35.955135, 33.456741>,  <31.729296, 35.679863, 33.241146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535017, 35.955135, 33.456741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142701, -0.545906, 0.825605,
		0.862402, 0.477906, 0.166939,
		-0.485695, 0.688181, 0.538988,
		31.389309, 36.161591, 33.618439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211403, 35.878117, 33.737633>,  <31.729296, 35.679863, 33.241146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211403, 35.878117, 33.737633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841825, 35.937977, 33.878448>,  <31.620079, 35.973892, 33.962936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841825, 35.937977, 33.878448>,  <32.211403, 35.878117, 33.737633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841825, 35.937977, 33.878448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247822, -0.466875, 0.848889,
		0.291397, 0.871569, 0.394279,
		-0.923944, 0.149652, 0.352039,
		31.564642, 35.982872, 33.984058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718594, 36.313431, 33.671177>,  <32.211403, 35.878117, 33.737633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718594, 36.313431, 33.671177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066521, 36.202213, 33.834206>,  <33.275276, 36.135483, 33.932022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066521, 36.202213, 33.834206>,  <32.718594, 36.313431, 33.671177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066521, 36.202213, 33.834206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482640, 0.650928, -0.585962,
		-0.102375, 0.706388, 0.700382,
		0.869815, -0.278044, 0.407570,
		33.327465, 36.118801, 33.956478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117073, 36.926540, 33.990616>,  <32.718594, 36.313431, 33.671177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117073, 36.926540, 33.990616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391895, 36.646954, 33.911221>,  <33.556789, 36.479202, 33.863583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391895, 36.646954, 33.911221>,  <33.117073, 36.926540, 33.990616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391895, 36.646954, 33.911221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485576, 0.644894, -0.590193,
		0.540531, 0.309113, 0.782480,
		0.687053, -0.698971, -0.198488,
		33.598011, 36.437263, 33.851673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785397, 37.337837, 34.138458>,  <33.117073, 36.926540, 33.990616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785397, 37.337837, 34.138458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856651, 37.020287, 33.905899>,  <33.899406, 36.829758, 33.766361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856651, 37.020287, 33.905899>,  <33.785397, 37.337837, 34.138458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856651, 37.020287, 33.905899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443774, 0.592168, -0.672608,
		0.878255, -0.138193, 0.457790,
		0.178139, -0.793876, -0.581401,
		33.910091, 36.782124, 33.731480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592617, 37.393612, 33.994022>,  <33.785397, 37.337837, 34.138458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592617, 37.393612, 33.994022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465172, 37.125519, 33.725910>,  <34.388706, 36.964664, 33.565044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465172, 37.125519, 33.725910>,  <34.592617, 37.393612, 33.994022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465172, 37.125519, 33.725910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709198, 0.300615, -0.637706,
		0.628906, -0.678544, 0.379546,
		-0.318614, -0.670231, -0.670281,
		34.369587, 36.924450, 33.524826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202961, 37.056080, 33.667088>,  <34.592617, 37.393612, 33.994022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202961, 37.056080, 33.667088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900909, 37.005722, 33.409737>,  <34.719677, 36.975506, 33.255325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900909, 37.005722, 33.409737>,  <35.202961, 37.056080, 33.667088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900909, 37.005722, 33.409737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632144, 0.120211, -0.765469,
		0.173713, -0.984733, -0.011188,
		-0.755127, -0.125900, -0.643375,
		34.674370, 36.967953, 33.216724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466812, 36.689156, 33.185951>,  <35.202961, 37.056080, 33.667088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466812, 36.689156, 33.185951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153599, 36.863293, 33.008266>,  <34.965672, 36.967777, 32.901653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153599, 36.863293, 33.008266>,  <35.466812, 36.689156, 33.185951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153599, 36.863293, 33.008266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594990, 0.316205, -0.738919,
		-0.181223, -0.842904, -0.506627,
		-0.783036, 0.435347, -0.444216,
		34.918690, 36.993896, 32.875000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507999, 36.467209, 32.614758>,  <35.466812, 36.689156, 33.185951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507999, 36.467209, 32.614758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279377, 36.776531, 32.504982>,  <35.142204, 36.962124, 32.439117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279377, 36.776531, 32.504982>,  <35.507999, 36.467209, 32.614758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279377, 36.776531, 32.504982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560292, 0.123446, -0.819045,
		-0.599495, -0.621898, -0.503834,
		-0.571559, 0.773307, -0.274439,
		35.107910, 37.008522, 32.422649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312675, 36.389469, 31.953428>,  <35.507999, 36.467209, 32.614758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312675, 36.389469, 31.953428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282772, 36.785126, 32.004032>,  <35.264832, 37.022522, 32.034393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282772, 36.785126, 32.004032>,  <35.312675, 36.389469, 31.953428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282772, 36.785126, 32.004032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527631, 0.146887, -0.836678,
		-0.846178, 0.004203, -0.532884,
		-0.074757, 0.989144, 0.126510,
		35.260345, 37.081867, 32.041985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496189, 36.662262, 31.288763>,  <35.312675, 36.389469, 31.953428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496189, 36.662262, 31.288763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488705, 37.016163, 31.475037>,  <35.484215, 37.228504, 31.586802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488705, 37.016163, 31.475037>,  <35.496189, 36.662262, 31.288763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488705, 37.016163, 31.475037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489993, 0.414110, -0.767085,
		-0.871526, 0.213832, -0.441270,
		-0.018707, 0.884754, 0.465683,
		35.483093, 37.281590, 31.614742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196476, 37.232952, 30.845106>,  <35.496189, 36.662262, 31.288763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196476, 37.232952, 30.845106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436028, 37.396622, 31.120474>,  <35.579758, 37.494823, 31.285694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436028, 37.396622, 31.120474>,  <35.196476, 37.232952, 30.845106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436028, 37.396622, 31.120474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431132, 0.559698, -0.707717,
		-0.674884, 0.720638, 0.158785,
		0.598879, 0.409170, 0.688422,
		35.615692, 37.519371, 31.327000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206623, 37.963524, 30.656418>,  <35.196476, 37.232952, 30.845106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206623, 37.963524, 30.656418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527618, 37.897709, 30.885830>,  <35.720215, 37.858219, 31.023478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527618, 37.897709, 30.885830>,  <35.206623, 37.963524, 30.656418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527618, 37.897709, 30.885830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506607, 0.695703, -0.509261,
		-0.315214, 0.699231, 0.641651,
		0.802490, -0.164539, 0.573531,
		35.768364, 37.848347, 31.057890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521984, 38.633698, 30.745409>,  <35.206623, 37.963524, 30.656418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521984, 38.633698, 30.745409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821732, 38.380432, 30.822920>,  <36.001579, 38.228474, 30.869427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821732, 38.380432, 30.822920>,  <35.521984, 38.633698, 30.745409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821732, 38.380432, 30.822920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631953, 0.596509, -0.494785,
		0.197689, 0.493236, 0.847135,
		0.749369, -0.633163, 0.193778,
		36.046543, 38.190483, 30.881054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091103, 39.064098, 31.055147>,  <35.521984, 38.633698, 30.745409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091103, 39.064098, 31.055147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235413, 38.723328, 30.903328>,  <36.321999, 38.518864, 30.812237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235413, 38.723328, 30.903328>,  <36.091103, 39.064098, 31.055147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235413, 38.723328, 30.903328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667663, 0.520062, -0.532693,
		0.651206, -0.061229, 0.756427,
		0.360773, -0.851931, -0.379548,
		36.343643, 38.467747, 30.789463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936573, 39.105808, 31.056843>,  <36.091103, 39.064098, 31.055147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936573, 39.105808, 31.056843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812939, 38.827980, 30.796986>,  <36.738758, 38.661282, 30.641071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812939, 38.827980, 30.796986>,  <36.936573, 39.105808, 31.056843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812939, 38.827980, 30.796986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420171, 0.513079, -0.748469,
		0.853183, -0.504303, 0.133253,
		-0.309086, -0.694571, -0.649644,
		36.720211, 38.619610, 30.602093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454716, 39.200134, 30.585339>,  <36.936573, 39.105808, 31.056843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454716, 39.200134, 30.585339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217106, 38.957420, 30.374077>,  <37.074539, 38.811790, 30.247320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217106, 38.957420, 30.374077>,  <37.454716, 39.200134, 30.585339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217106, 38.957420, 30.374077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459963, 0.282440, -0.841820,
		0.659979, -0.742990, 0.111325,
		-0.594022, -0.606789, -0.528153,
		37.038898, 38.775383, 30.215631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881454, 38.719784, 30.279140>,  <37.454716, 39.200134, 30.585339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881454, 38.719784, 30.279140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546059, 38.724522, 30.061226>,  <37.344822, 38.727364, 29.930477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546059, 38.724522, 30.061226>,  <37.881454, 38.719784, 30.279140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546059, 38.724522, 30.061226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527660, 0.267234, -0.806326,
		0.136035, -0.963559, -0.230324,
		-0.838493, 0.011844, -0.544784,
		37.294510, 38.728073, 29.897791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066902, 38.361336, 29.663246>,  <37.881454, 38.719784, 30.279140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066902, 38.361336, 29.663246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747890, 38.590820, 29.588625>,  <37.556484, 38.728512, 29.543852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747890, 38.590820, 29.588625>,  <38.066902, 38.361336, 29.663246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747890, 38.590820, 29.588625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430235, 0.324124, -0.842521,
		-0.422894, -0.752199, -0.505329,
		-0.797532, 0.573708, -0.186552,
		37.508629, 38.762932, 29.532660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900337, 38.144558, 29.030430>,  <38.066902, 38.361336, 29.663246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900337, 38.144558, 29.030430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735592, 38.506958, 29.069492>,  <37.636745, 38.724396, 29.092930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735592, 38.506958, 29.069492>,  <37.900337, 38.144558, 29.030430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735592, 38.506958, 29.069492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404774, 0.277911, -0.871162,
		-0.816409, -0.319275, -0.481186,
		-0.411868, 0.905996, 0.097655,
		37.612030, 38.778755, 29.098789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578896, 38.261543, 28.376600>,  <37.900337, 38.144558, 29.030430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578896, 38.261543, 28.376600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553818, 38.626621, 28.538118>,  <37.538769, 38.845669, 28.635029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553818, 38.626621, 28.538118>,  <37.578896, 38.261543, 28.376600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553818, 38.626621, 28.538118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267531, 0.405152, -0.874230,
		-0.961507, 0.053214, -0.269578,
		-0.062699, 0.912699, 0.403793,
		37.535007, 38.900433, 28.659256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972775, 38.719509, 28.024216>,  <37.578896, 38.261543, 28.376600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972775, 38.719509, 28.024216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265240, 38.956242, 28.159946>,  <37.440720, 39.098282, 28.241385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265240, 38.956242, 28.159946>,  <36.972775, 38.719509, 28.024216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265240, 38.956242, 28.159946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071671, 0.561282, -0.824515,
		-0.678431, 0.578532, 0.452804,
		0.731160, 0.591830, 0.339327,
		37.484589, 39.133789, 28.261745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675152, 39.323860, 27.889252>,  <36.972775, 38.719509, 28.024216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675152, 39.323860, 27.889252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073174, 39.348877, 27.920124>,  <37.311985, 39.363888, 27.938648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073174, 39.348877, 27.920124>,  <36.675152, 39.323860, 27.889252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073174, 39.348877, 27.920124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013903, 0.681626, -0.731568,
		-0.098361, 0.729023, 0.677385,
		0.995054, 0.062540, 0.077181,
		37.371689, 39.367638, 27.943277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857433, 40.020237, 27.859234>,  <36.675152, 39.323860, 27.889252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857433, 40.020237, 27.859234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187023, 39.826790, 27.741127>,  <37.384777, 39.710720, 27.670263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187023, 39.826790, 27.741127>,  <36.857433, 40.020237, 27.859234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187023, 39.826790, 27.741127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018887, 0.497367, -0.867335,
		0.566315, 0.720237, 0.400683,
		0.823973, -0.483617, -0.295269,
		37.434216, 39.681705, 27.652546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356663, 40.504620, 27.438368>,  <36.857433, 40.020237, 27.859234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356663, 40.504620, 27.438368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464245, 40.134556, 27.331234>,  <37.528793, 39.912518, 27.266954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464245, 40.134556, 27.331234>,  <37.356663, 40.504620, 27.438368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464245, 40.134556, 27.331234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080574, 0.255494, -0.963448,
		0.959776, 0.280706, -0.005827,
		0.268957, -0.925163, -0.267834,
		37.544933, 39.857006, 27.250883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696606, 40.508232, 26.781340>,  <37.356663, 40.504620, 27.438368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696606, 40.508232, 26.781340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593639, 40.121777, 26.788519>,  <37.531860, 39.889904, 26.792826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593639, 40.121777, 26.788519>,  <37.696606, 40.508232, 26.781340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593639, 40.121777, 26.788519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150002, 0.021603, -0.988450,
		0.954588, -0.257131, -0.150484,
		-0.257412, -0.966135, 0.017948,
		37.516415, 39.831936, 26.793903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090755, 40.172924, 26.257477>,  <37.696606, 40.508232, 26.781340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090755, 40.172924, 26.257477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775196, 39.940231, 26.336700>,  <37.585861, 39.800617, 26.384235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775196, 39.940231, 26.336700>,  <38.090755, 40.172924, 26.257477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775196, 39.940231, 26.336700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144400, -0.137793, -0.979878,
		0.597315, -0.801626, 0.024703,
		-0.788900, -0.581729, 0.198061,
		37.538525, 39.765713, 26.396118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274586, 39.557655, 25.946686>,  <38.090755, 40.172924, 26.257477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274586, 39.557655, 25.946686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877605, 39.581562, 25.989536>,  <37.639420, 39.595905, 26.015247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877605, 39.581562, 25.989536>,  <38.274586, 39.557655, 25.946686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877605, 39.581562, 25.989536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119081, -0.259636, -0.958336,
		-0.029462, -0.963855, 0.264792,
		-0.992447, 0.059766, 0.107128,
		37.579872, 39.599491, 26.021675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038509, 38.993706, 25.663372>,  <38.274586, 39.557655, 25.946686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038509, 38.993706, 25.663372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711063, 39.223442, 25.664577>,  <37.514595, 39.361282, 25.665300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711063, 39.223442, 25.664577>,  <38.038509, 38.993706, 25.663372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711063, 39.223442, 25.664577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193150, -0.270346, -0.943190,
		-0.540898, -0.772687, 0.332242,
		-0.818610, 0.574342, 0.003014,
		37.465481, 39.395744, 25.665482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476795, 38.625904, 25.496393>,  <38.038509, 38.993706, 25.663372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476795, 38.625904, 25.496393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343414, 38.990616, 25.400499>,  <37.263386, 39.209442, 25.342964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343414, 38.990616, 25.400499>,  <37.476795, 38.625904, 25.496393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343414, 38.990616, 25.400499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178350, -0.310703, -0.933625,
		-0.925743, -0.268564, 0.266221,
		-0.333454, 0.911777, -0.239733,
		37.243378, 39.264149, 25.328579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205429, 38.520901, 24.841373>,  <37.476795, 38.625904, 25.496393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205429, 38.520901, 24.841373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163967, 38.918320, 24.822973>,  <37.139091, 39.156773, 24.811934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163967, 38.918320, 24.822973>,  <37.205429, 38.520901, 24.841373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163967, 38.918320, 24.822973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003744, -0.046638, -0.998905,
		-0.994606, -0.103368, 0.008554,
		-0.103653, 0.993549, -0.045999,
		37.132870, 39.216385, 24.809174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553661, 38.683598, 24.466768>,  <37.205429, 38.520901, 24.841373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553661, 38.683598, 24.466768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810955, 38.988869, 24.442072>,  <36.965332, 39.172031, 24.427254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810955, 38.988869, 24.442072>,  <36.553661, 38.683598, 24.466768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810955, 38.988869, 24.442072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103208, -0.166323, -0.980655,
		-0.758680, 0.624421, -0.185751,
		0.643237, 0.763174, -0.061741,
		37.003925, 39.217819, 24.423550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295841, 39.097107, 23.919098>,  <36.553661, 38.683598, 24.466768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295841, 39.097107, 23.919098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669022, 39.232952, 23.966860>,  <36.892929, 39.314461, 23.995516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669022, 39.232952, 23.966860>,  <36.295841, 39.097107, 23.919098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669022, 39.232952, 23.966860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069161, 0.156412, -0.985267,
		-0.353289, 0.927468, 0.122437,
		0.932954, 0.339616, 0.119404,
		36.948910, 39.334839, 24.002682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363338, 39.706226, 23.490828>,  <36.295841, 39.097107, 23.919098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363338, 39.706226, 23.490828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739662, 39.581509, 23.543983>,  <36.965458, 39.506676, 23.575878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739662, 39.581509, 23.543983>,  <36.363338, 39.706226, 23.490828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739662, 39.581509, 23.543983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186928, 0.150263, -0.970814,
		0.282727, 0.938192, 0.199652,
		0.940810, -0.311796, 0.132891,
		37.021904, 39.487968, 23.583851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750118, 40.166088, 23.083969>,  <36.363338, 39.706226, 23.490828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750118, 40.166088, 23.083969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992870, 39.856949, 23.158163>,  <37.138523, 39.671467, 23.202679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992870, 39.856949, 23.158163>,  <36.750118, 40.166088, 23.083969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992870, 39.856949, 23.158163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262267, -0.025572, -0.964656,
		0.750273, 0.634080, 0.187173,
		0.606883, -0.772845, 0.185484,
		37.174934, 39.625095, 23.213808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326382, 40.296505, 22.642946>,  <36.750118, 40.166088, 23.083969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326382, 40.296505, 22.642946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366596, 39.905689, 22.718082>,  <37.390724, 39.671200, 22.763165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366596, 39.905689, 22.718082>,  <37.326382, 40.296505, 22.642946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366596, 39.905689, 22.718082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459638, -0.121832, -0.879710,
		0.882398, 0.174780, 0.436837,
		0.100535, -0.977041, 0.187840,
		37.396755, 39.612576, 22.774435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035542, 40.155975, 22.352266>,  <37.326382, 40.296505, 22.642946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035542, 40.155975, 22.352266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810505, 39.826851, 22.384466>,  <37.675484, 39.629375, 22.403786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810505, 39.826851, 22.384466>,  <38.035542, 40.155975, 22.352266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810505, 39.826851, 22.384466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295907, -0.291326, -0.909708,
		0.771966, -0.487973, 0.407372,
		-0.562590, -0.822807, 0.080499,
		37.641727, 39.580009, 22.408615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472095, 39.601044, 21.982094>,  <38.035542, 40.155975, 22.352266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472095, 39.601044, 21.982094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105297, 39.446335, 22.021122>,  <37.885216, 39.353508, 22.044538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105297, 39.446335, 22.021122>,  <38.472095, 39.601044, 21.982094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105297, 39.446335, 22.021122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128270, -0.517535, -0.845993,
		0.377705, -0.763258, 0.524191,
		-0.916998, -0.386773, 0.097572,
		37.830196, 39.330303, 22.050394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436237, 38.805531, 21.863621>,  <38.472095, 39.601044, 21.982094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436237, 38.805531, 21.863621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075977, 38.951370, 21.769056>,  <37.859821, 39.038876, 21.712317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075977, 38.951370, 21.769056>,  <38.436237, 38.805531, 21.863621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075977, 38.951370, 21.769056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015832, -0.571228, -0.820639,
		-0.434249, -0.735369, 0.520251,
		-0.900654, 0.364598, -0.236413,
		37.805782, 39.060749, 21.698132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108826, 38.389843, 21.446875>,  <38.436237, 38.805531, 21.863621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108826, 38.389843, 21.446875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870373, 38.699574, 21.361986>,  <37.727299, 38.885414, 21.311052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870373, 38.699574, 21.361986>,  <38.108826, 38.389843, 21.446875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870373, 38.699574, 21.361986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127528, -0.352290, -0.927161,
		-0.792691, -0.525650, 0.308761,
		-0.596136, 0.774328, -0.212222,
		37.691532, 38.931873, 21.298319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047737, 37.704384, 21.216549>,  <38.108826, 38.389843, 21.446875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047737, 37.704384, 21.216549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072063, 37.320824, 21.105688>,  <38.086658, 37.090687, 21.039171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072063, 37.320824, 21.105688>,  <38.047737, 37.704384, 21.216549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072063, 37.320824, 21.105688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316708, -0.281857, 0.905678,
		-0.946571, 0.032697, -0.320833,
		0.060816, -0.958899, -0.277153,
		38.090309, 37.033154, 21.022543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361958, 37.436161, 21.434082>,  <38.047737, 37.704384, 21.216549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361958, 37.436161, 21.434082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624393, 37.136524, 21.397419>,  <37.781857, 36.956741, 21.375422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624393, 37.136524, 21.397419>,  <37.361958, 37.436161, 21.434082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624393, 37.136524, 21.397419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429930, -0.470816, 0.770385,
		-0.620247, -0.466034, -0.630956,
		0.656090, -0.749096, -0.091660,
		37.821220, 36.911797, 21.369921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035130, 36.846504, 21.542543>,  <37.361958, 37.436161, 21.434082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035130, 36.846504, 21.542543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405441, 36.712711, 21.613029>,  <37.627628, 36.632435, 21.655321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405441, 36.712711, 21.613029>,  <37.035130, 36.846504, 21.542543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405441, 36.712711, 21.613029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352920, -0.597444, 0.720075,
		-0.135576, -0.728820, -0.671148,
		0.925779, -0.334486, 0.176216,
		37.683174, 36.612366, 21.665894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945282, 36.202023, 21.597708>,  <37.035130, 36.846504, 21.542543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945282, 36.202023, 21.597708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296432, 36.207111, 21.789194>,  <37.507122, 36.210163, 21.904087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296432, 36.207111, 21.789194>,  <36.945282, 36.202023, 21.597708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296432, 36.207111, 21.789194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417829, -0.468098, 0.778655,
		0.233991, -0.883585, -0.405618,
		0.877877, 0.012719, 0.478718,
		37.559795, 36.210926, 21.932810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083015, 35.560345, 21.864218>,  <36.945282, 36.202023, 21.597708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083015, 35.560345, 21.864218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313343, 35.803925, 22.082432>,  <37.451538, 35.950073, 22.213360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313343, 35.803925, 22.082432>,  <37.083015, 35.560345, 21.864218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313343, 35.803925, 22.082432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265265, -0.492011, 0.829192,
		0.773350, -0.622175, -0.121774,
		0.575817, 0.608953, 0.545537,
		37.486088, 35.986610, 22.246094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297050, 35.132275, 22.313551>,  <37.083015, 35.560345, 21.864218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297050, 35.132275, 22.313551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401546, 35.474804, 22.491747>,  <37.464245, 35.680321, 22.598665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401546, 35.474804, 22.491747>,  <37.297050, 35.132275, 22.313551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401546, 35.474804, 22.491747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112262, -0.431433, 0.895133,
		0.958723, -0.283857, -0.016575,
		0.261240, 0.856324, 0.445492,
		37.479919, 35.731701, 22.625395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800278, 34.976097, 22.903313>,  <37.297050, 35.132275, 22.313551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800278, 34.976097, 22.903313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664352, 35.339317, 23.001272>,  <37.582798, 35.557247, 23.060047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664352, 35.339317, 23.001272>,  <37.800278, 34.976097, 22.903313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664352, 35.339317, 23.001272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003442, -0.259191, 0.965820,
		0.940486, 0.329043, 0.084952,
		-0.339815, 0.908048, 0.244898,
		37.562408, 35.611732, 23.074741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265213, 35.273323, 23.436831>,  <37.800278, 34.976097, 22.903313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265213, 35.273323, 23.436831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899994, 35.436169, 23.446621>,  <37.680862, 35.533875, 23.452496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899994, 35.436169, 23.446621>,  <38.265213, 35.273323, 23.436831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899994, 35.436169, 23.446621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009181, -0.080512, 0.996711,
		0.407744, 0.909822, 0.077250,
		-0.913050, 0.407112, 0.024475,
		37.626080, 35.558304, 23.453964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281368, 35.748524, 24.020620>,  <38.265213, 35.273323, 23.436831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281368, 35.748524, 24.020620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892239, 35.687351, 23.951088>,  <37.658760, 35.650650, 23.909369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892239, 35.687351, 23.951088>,  <38.281368, 35.748524, 24.020620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892239, 35.687351, 23.951088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185879, 0.068250, 0.980199,
		-0.138035, 0.985878, -0.094821,
		-0.972829, -0.152927, -0.173833,
		37.600391, 35.641472, 23.898937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929501, 36.216869, 24.357470>,  <38.281368, 35.748524, 24.020620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929501, 36.216869, 24.357470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679108, 35.909576, 24.303852>,  <37.528873, 35.725201, 24.271683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679108, 35.909576, 24.303852>,  <37.929501, 36.216869, 24.357470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679108, 35.909576, 24.303852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232045, 0.019392, 0.972512,
		-0.744516, 0.639877, -0.190403,
		-0.625980, -0.768233, -0.134042,
		37.491314, 35.679108, 24.263639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240486, 36.503223, 24.635399>,  <37.929501, 36.216869, 24.357470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240486, 36.503223, 24.635399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192684, 36.107403, 24.603142>,  <37.164001, 35.869911, 24.583788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192684, 36.107403, 24.603142>,  <37.240486, 36.503223, 24.635399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192684, 36.107403, 24.603142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604226, 0.008039, 0.796773,
		-0.787800, 0.143949, -0.598874,
		-0.119509, -0.989553, -0.080645,
		37.156830, 35.810535, 24.578949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515247, 36.404083, 24.624830>,  <37.240486, 36.503223, 24.635399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515247, 36.404083, 24.624830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708450, 36.077991, 24.752651>,  <36.824371, 35.882336, 24.829344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708450, 36.077991, 24.752651>,  <36.515247, 36.404083, 24.624830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708450, 36.077991, 24.752651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509335, 0.035269, 0.859845,
		-0.712238, -0.578069, -0.398187,
		0.483006, -0.815225, 0.319551,
		36.853352, 35.833424, 24.848516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039417, 36.080177, 25.046654>,  <36.515247, 36.404083, 24.624830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039417, 36.080177, 25.046654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377945, 35.904705, 25.167522>,  <36.581062, 35.799423, 25.240044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377945, 35.904705, 25.167522>,  <36.039417, 36.080177, 25.046654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377945, 35.904705, 25.167522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291336, 0.093709, 0.952020,
		-0.445948, -0.893744, -0.048496,
		0.846318, -0.438680, 0.302170,
		36.631840, 35.773102, 25.258173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867065, 35.615574, 25.579369>,  <36.039417, 36.080177, 25.046654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867065, 35.615574, 25.579369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255844, 35.700588, 25.619648>,  <36.489113, 35.751595, 25.643816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255844, 35.700588, 25.619648>,  <35.867065, 35.615574, 25.579369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255844, 35.700588, 25.619648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126312, 0.110567, 0.985810,
		0.198387, -0.970878, 0.134312,
		0.971951, 0.212537, 0.100699,
		36.547428, 35.764347, 25.649858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084244, 35.141010, 26.072302>,  <35.867065, 35.615574, 25.579369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084244, 35.141010, 26.072302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360313, 35.430218, 26.084379>,  <36.525955, 35.603741, 26.091625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360313, 35.430218, 26.084379>,  <36.084244, 35.141010, 26.072302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360313, 35.430218, 26.084379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106723, 0.060433, 0.992451,
		0.715732, -0.688184, 0.118871,
		0.690172, 0.723015, 0.030191,
		36.567364, 35.647121, 26.093437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571217, 34.996284, 26.698984>,  <36.084244, 35.141010, 26.072302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571217, 34.996284, 26.698984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652214, 35.380684, 26.623638>,  <36.700813, 35.611324, 26.578430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652214, 35.380684, 26.623638>,  <36.571217, 34.996284, 26.698984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652214, 35.380684, 26.623638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098850, 0.171309, 0.980246,
		0.974282, -0.217111, -0.060306,
		0.202491, 0.960997, -0.188365,
		36.712963, 35.668983, 26.567129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248508, 35.179653, 26.947384>,  <36.571217, 34.996284, 26.698984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248508, 35.179653, 26.947384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034275, 35.516926, 26.928625>,  <36.905735, 35.719288, 26.917370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034275, 35.516926, 26.928625>,  <37.248508, 35.179653, 26.947384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034275, 35.516926, 26.928625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202347, 0.182050, 0.962244,
		0.819880, 0.505874, -0.268118,
		-0.535585, 0.843178, -0.046897,
		36.873600, 35.769878, 26.914557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531639, 35.579475, 27.448500>,  <37.248508, 35.179653, 26.947384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531639, 35.579475, 27.448500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207512, 35.806736, 27.391108>,  <37.013035, 35.943092, 27.356672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207512, 35.806736, 27.391108>,  <37.531639, 35.579475, 27.448500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207512, 35.806736, 27.391108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018570, 0.269627, 0.962786,
		0.585697, 0.777497, -0.229034,
		-0.810317, 0.568154, -0.143482,
		36.964417, 35.977180, 27.348063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655113, 36.304771, 27.616102>,  <37.531639, 35.579475, 27.448500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655113, 36.304771, 27.616102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256176, 36.276909, 27.624582>,  <37.016811, 36.260193, 27.629671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256176, 36.276909, 27.624582>,  <37.655113, 36.304771, 27.616102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256176, 36.276909, 27.624582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003509, 0.336823, 0.941561,
		-0.072726, 0.938988, -0.336174,
		-0.997346, -0.069656, 0.021201,
		36.956974, 36.256012, 27.630943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442970, 36.809967, 27.935698>,  <37.655113, 36.304771, 27.616102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442970, 36.809967, 27.935698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127617, 36.568359, 27.982365>,  <36.938404, 36.423397, 28.010365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127617, 36.568359, 27.982365>,  <37.442970, 36.809967, 27.935698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127617, 36.568359, 27.982365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081112, 0.290055, 0.953567,
		-0.609810, 0.742315, -0.277668,
		-0.788386, -0.604017, 0.116668,
		36.891102, 36.387154, 28.017365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885983, 37.249989, 28.216963>,  <37.442970, 36.809967, 27.935698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885983, 37.249989, 28.216963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818722, 36.863049, 28.292810>,  <36.778366, 36.630882, 28.338320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818722, 36.863049, 28.292810>,  <36.885983, 37.249989, 28.216963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818722, 36.863049, 28.292810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118327, 0.210775, 0.970347,
		-0.978634, 0.140728, -0.149906,
		-0.168151, -0.967352, 0.189619,
		36.768276, 36.572842, 28.349697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362751, 37.267609, 28.732687>,  <36.885983, 37.249989, 28.216963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362751, 37.267609, 28.732687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480759, 36.885967, 28.753269>,  <36.551563, 36.656982, 28.765619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480759, 36.885967, 28.753269>,  <36.362751, 37.267609, 28.732687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480759, 36.885967, 28.753269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075449, 0.076946, 0.994176,
		-0.952507, -0.289420, 0.094687,
		0.295021, -0.954104, 0.051456,
		36.569263, 36.599735, 28.768705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038189, 37.030621, 29.385284>,  <36.362751, 37.267609, 28.732687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038189, 37.030621, 29.385284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320881, 36.756153, 29.316343>,  <36.490498, 36.591473, 29.274979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320881, 36.756153, 29.316343>,  <36.038189, 37.030621, 29.385284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320881, 36.756153, 29.316343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164774, -0.077278, 0.983300,
		-0.688024, -0.723330, 0.058447,
		0.706734, -0.686164, -0.172355,
		36.532902, 36.550304, 29.264637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945206, 36.577480, 29.905899>,  <36.038189, 37.030621, 29.385284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945206, 36.577480, 29.905899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286552, 36.434265, 29.754337>,  <36.491360, 36.348335, 29.663401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286552, 36.434265, 29.754337>,  <35.945206, 36.577480, 29.905899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286552, 36.434265, 29.754337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360642, -0.119374, 0.925034,
		-0.376430, -0.926044, 0.027254,
		0.853369, -0.358039, -0.378906,
		36.542564, 36.326855, 29.640665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184818, 35.926922, 30.242571>,  <35.945206, 36.577480, 29.905899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184818, 35.926922, 30.242571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525982, 36.095791, 30.119734>,  <36.730682, 36.197113, 30.046032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525982, 36.095791, 30.119734>,  <36.184818, 35.926922, 30.242571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525982, 36.095791, 30.119734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437378, -0.256706, 0.861860,
		0.285024, -0.869408, -0.403599,
		0.852913, 0.422176, -0.307092,
		36.781857, 36.222443, 30.027607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764088, 35.447319, 30.209047>,  <36.184818, 35.926922, 30.242571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764088, 35.447319, 30.209047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928062, 35.811203, 30.235500>,  <37.026447, 36.029533, 30.251371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928062, 35.811203, 30.235500>,  <36.764088, 35.447319, 30.209047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928062, 35.811203, 30.235500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603560, -0.324911, 0.728113,
		0.683860, -0.258568, -0.682260,
		0.409941, 0.909712, 0.066132,
		37.051044, 36.084118, 30.255341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458374, 35.368023, 30.029861>,  <36.764088, 35.447319, 30.209047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458374, 35.368023, 30.029861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351704, 35.643394, 30.299664>,  <37.287701, 35.808617, 30.461544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351704, 35.643394, 30.299664>,  <37.458374, 35.368023, 30.029861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351704, 35.643394, 30.299664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544368, -0.469934, 0.694856,
		0.795329, 0.552477, -0.249439,
		-0.266673, 0.688426, 0.674503,
		37.271702, 35.849922, 30.502014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083229, 35.460014, 30.355404>,  <37.458374, 35.368023, 30.029861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083229, 35.460014, 30.355404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806957, 35.603947, 30.606318>,  <37.641193, 35.690304, 30.756866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806957, 35.603947, 30.606318>,  <38.083229, 35.460014, 30.355404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806957, 35.603947, 30.606318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454949, -0.458053, 0.763681,
		0.562123, 0.812841, 0.152666,
		-0.690681, 0.359827, 0.627283,
		37.599754, 35.711895, 30.794502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396473, 35.815056, 30.955606>,  <38.083229, 35.460014, 30.355404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396473, 35.815056, 30.955606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029640, 35.741196, 31.096954>,  <37.809540, 35.696880, 31.181763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029640, 35.741196, 31.096954>,  <38.396473, 35.815056, 30.955606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029640, 35.741196, 31.096954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395138, -0.539210, 0.743720,
		0.053212, 0.821680, 0.567460,
		-0.917079, -0.184651, 0.353369,
		37.754517, 35.685799, 31.202965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383881, 35.984673, 31.584042>,  <38.396473, 35.815056, 30.955606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383881, 35.984673, 31.584042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098392, 35.704639, 31.575199>,  <37.927097, 35.536621, 31.569893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098392, 35.704639, 31.575199>,  <38.383881, 35.984673, 31.584042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098392, 35.704639, 31.575199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389464, -0.422891, 0.818218,
		-0.582166, 0.575371, 0.574483,
		-0.713723, -0.700079, -0.022107,
		37.884277, 35.494617, 31.568567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084789, 35.889671, 32.255779>,  <38.383881, 35.984673, 31.584042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084789, 35.889671, 32.255779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940392, 35.554317, 32.092419>,  <37.853752, 35.353104, 31.994404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940392, 35.554317, 32.092419>,  <38.084789, 35.889671, 32.255779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940392, 35.554317, 32.092419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239128, -0.506503, 0.828416,
		-0.901390, 0.201391, 0.383325,
		-0.360991, -0.838389, -0.408398,
		37.832096, 35.302799, 31.969900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611095, 35.589043, 32.767822>,  <38.084789, 35.889671, 32.255779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611095, 35.589043, 32.767822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689861, 35.278370, 32.528492>,  <37.737122, 35.091969, 32.384895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689861, 35.278370, 32.528492>,  <37.611095, 35.589043, 32.767822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689861, 35.278370, 32.528492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234384, -0.555286, 0.797948,
		-0.951991, -0.297368, 0.072696,
		0.196917, -0.776678, -0.598326,
		37.748936, 35.045368, 32.348995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267712, 35.103577, 33.107956>,  <37.611095, 35.589043, 32.767822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267712, 35.103577, 33.107956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535809, 34.918522, 32.875835>,  <37.696667, 34.807491, 32.736565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535809, 34.918522, 32.875835>,  <37.267712, 35.103577, 33.107956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535809, 34.918522, 32.875835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152107, -0.679692, 0.717553,
		-0.726393, -0.569199, -0.385184,
		0.670237, -0.462636, -0.580302,
		37.736881, 34.779732, 32.701744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112972, 34.402603, 33.058689>,  <37.267712, 35.103577, 33.107956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112972, 34.402603, 33.058689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491074, 34.389931, 32.928776>,  <37.717934, 34.382328, 32.850826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491074, 34.389931, 32.928776>,  <37.112972, 34.402603, 33.058689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491074, 34.389931, 32.928776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177232, -0.785863, 0.592459,
		-0.274006, -0.617589, -0.737228,
		0.945256, -0.031677, -0.324788,
		37.774651, 34.380428, 32.831341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309193, 33.747551, 32.782959>,  <37.112972, 34.402603, 33.058689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309193, 33.747551, 32.782959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649261, 33.917538, 32.907288>,  <37.853302, 34.019531, 32.981884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649261, 33.917538, 32.907288>,  <37.309193, 33.747551, 32.782959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649261, 33.917538, 32.907288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279114, -0.864346, 0.418331,
		0.446433, -0.268899, -0.853458,
		0.850172, 0.424969, 0.310819,
		37.904312, 34.045029, 33.000534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818333, 33.320320, 32.567993>,  <37.309193, 33.747551, 32.782959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818333, 33.320320, 32.567993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024437, 33.533638, 32.836349>,  <38.148098, 33.661629, 32.997364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024437, 33.533638, 32.836349>,  <37.818333, 33.320320, 32.567993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024437, 33.533638, 32.836349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606735, -0.779858, 0.153931,
		0.605294, 0.327741, -0.725400,
		0.515259, 0.533299, 0.670895,
		38.179016, 33.693626, 33.037617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481884, 33.080360, 32.522743>,  <37.818333, 33.320320, 32.567993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481884, 33.080360, 32.522743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517937, 33.288029, 32.862705>,  <38.539570, 33.412628, 33.066681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517937, 33.288029, 32.862705>,  <38.481884, 33.080360, 32.522743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517937, 33.288029, 32.862705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478266, -0.771102, 0.420313,
		0.873577, 0.368596, -0.317805,
		0.090134, 0.519171, 0.849904,
		38.544975, 33.443779, 33.117676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182220, 33.082111, 32.765472>,  <38.481884, 33.080360, 32.522743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182220, 33.082111, 32.765472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973473, 33.159962, 33.097683>,  <38.848225, 33.206673, 33.297009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973473, 33.159962, 33.097683>,  <39.182220, 33.082111, 32.765472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973473, 33.159962, 33.097683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587407, -0.624008, 0.515331,
		0.618551, 0.756793, 0.211327,
		-0.521869, 0.194624, 0.830527,
		38.816914, 33.218349, 33.346840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640522, 33.114681, 33.375717>,  <39.182220, 33.082111, 32.765472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640522, 33.114681, 33.375717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281193, 33.031685, 33.530617>,  <39.065594, 32.981888, 33.623558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281193, 33.031685, 33.530617>,  <39.640522, 33.114681, 33.375717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281193, 33.031685, 33.530617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396908, -0.761195, 0.512880,
		0.188359, 0.614435, 0.766153,
		-0.898323, -0.207486, 0.387252,
		39.011696, 32.969440, 33.646793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737194, 33.173412, 34.116421>,  <39.640522, 33.114681, 33.375717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737194, 33.173412, 34.116421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425247, 32.937183, 34.033443>,  <39.238079, 32.795444, 33.983658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425247, 32.937183, 34.033443>,  <39.737194, 33.173412, 34.116421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425247, 32.937183, 34.033443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452033, -0.760602, 0.465994,
		-0.432990, 0.269638, 0.860125,
		-0.779863, -0.590576, -0.207448,
		39.191288, 32.760010, 33.971210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636436, 32.854816, 34.763653>,  <39.737194, 33.173412, 34.116421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636436, 32.854816, 34.763653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483616, 32.621944, 34.476570>,  <39.391922, 32.482224, 34.304321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483616, 32.621944, 34.476570>,  <39.636436, 32.854816, 34.763653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483616, 32.621944, 34.476570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379178, -0.806993, 0.452755,
		-0.842769, -0.099163, 0.529062,
		-0.382053, -0.582176, -0.717709,
		39.368999, 32.447292, 34.261257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156467, 32.306496, 34.905998>,  <39.636436, 32.854816, 34.763653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156467, 32.306496, 34.905998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353611, 32.185326, 34.579727>,  <39.471897, 32.112625, 34.383965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353611, 32.185326, 34.579727>,  <39.156467, 32.306496, 34.905998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353611, 32.185326, 34.579727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213482, -0.866690, 0.450859,
		-0.843511, -0.396344, -0.362493,
		0.492864, -0.302919, -0.815675,
		39.501469, 32.094448, 34.335026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894791, 31.664618, 34.779041>,  <39.156467, 32.306496, 34.905998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894791, 31.664618, 34.779041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244255, 31.682808, 34.585278>,  <39.453934, 31.693722, 34.469021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244255, 31.682808, 34.585278>,  <38.894791, 31.664618, 34.779041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244255, 31.682808, 34.585278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277465, -0.864421, 0.419273,
		-0.399662, -0.500709, -0.767829,
		0.873661, 0.045478, -0.484405,
		39.506351, 31.696451, 34.439957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995907, 31.036739, 34.408714>,  <38.894791, 31.664618, 34.779041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995907, 31.036739, 34.408714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370556, 31.173361, 34.439899>,  <39.595345, 31.255333, 34.458611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370556, 31.173361, 34.439899>,  <38.995907, 31.036739, 34.408714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370556, 31.173361, 34.439899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316023, -0.919750, 0.232785,
		0.151218, -0.193392, -0.969398,
		0.936623, 0.341554, 0.077966,
		39.651543, 31.275827, 34.463291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478180, 30.482695, 33.998547>,  <38.995907, 31.036739, 34.408714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478180, 30.482695, 33.998547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710163, 30.687984, 34.251610>,  <39.849354, 30.811159, 34.403446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710163, 30.687984, 34.251610>,  <39.478180, 30.482695, 33.998547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710163, 30.687984, 34.251610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505123, -0.835837, 0.215006,
		0.639143, 0.194876, -0.743989,
		0.579954, 0.513225, 0.632656,
		39.884148, 30.841951, 34.441406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155624, 30.320087, 33.804634>,  <39.478180, 30.482695, 33.998547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155624, 30.320087, 33.804634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161339, 30.422340, 34.191303>,  <40.164768, 30.483692, 34.423306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161339, 30.422340, 34.191303>,  <40.155624, 30.320087, 33.804634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161339, 30.422340, 34.191303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424438, -0.876897, 0.225619,
		0.905344, 0.407067, -0.121032,
		0.014290, 0.255633, 0.966668,
		40.165627, 30.499031, 34.481304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819695, 30.321871, 34.042145>,  <40.155624, 30.320087, 33.804634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819695, 30.321871, 34.042145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591484, 30.300014, 34.369930>,  <40.454559, 30.286901, 34.566601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591484, 30.300014, 34.369930>,  <40.819695, 30.321871, 34.042145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591484, 30.300014, 34.369930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345651, -0.921087, 0.179234,
		0.745000, 0.385505, 0.544390,
		-0.570526, -0.054639, 0.819460,
		40.420326, 30.283623, 34.615768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195293, 30.004681, 34.487999>,  <40.819695, 30.321871, 34.042145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195293, 30.004681, 34.487999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842365, 29.952457, 34.668869>,  <40.630608, 29.921124, 34.777390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842365, 29.952457, 34.668869>,  <41.195293, 30.004681, 34.487999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842365, 29.952457, 34.668869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238659, -0.952183, 0.190761,
		0.405646, 0.276228, 0.871292,
		-0.882323, -0.130560, 0.452173,
		40.577667, 29.913290, 34.804520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419266, 29.682159, 35.182758>,  <41.195293, 30.004681, 34.487999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419266, 29.682159, 35.182758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083759, 29.586220, 34.987228>,  <40.882458, 29.528656, 34.869911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083759, 29.586220, 34.987228>,  <41.419266, 29.682159, 35.182758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083759, 29.586220, 34.987228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195522, -0.970550, 0.140724,
		-0.508183, 0.022457, 0.860956,
		-0.838761, -0.239849, -0.488826,
		40.832130, 29.514265, 34.840580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086315, 29.100117, 35.544464>,  <41.419266, 29.682159, 35.182758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086315, 29.100117, 35.544464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929466, 29.091179, 35.176609>,  <40.835358, 29.085815, 34.955894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929466, 29.091179, 35.176609>,  <41.086315, 29.100117, 35.544464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929466, 29.091179, 35.176609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260293, -0.961546, -0.087621,
		-0.882319, -0.273735, 0.382860,
		-0.392123, -0.022346, -0.919641,
		40.811829, 29.084475, 34.900715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565132, 28.702560, 35.421852>,  <41.086315, 29.100117, 35.544464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565132, 28.702560, 35.421852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719765, 28.723618, 35.053551>,  <40.812542, 28.736252, 34.832569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719765, 28.723618, 35.053551>,  <40.565132, 28.702560, 35.421852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719765, 28.723618, 35.053551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316021, -0.945489, 0.078625,
		-0.866423, -0.321372, -0.382142,
		0.386578, 0.052642, -0.920753,
		40.835739, 28.739410, 34.777325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272999, 28.185453, 35.077312>,  <40.565132, 28.702560, 35.421852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272999, 28.185453, 35.077312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639648, 28.279530, 34.948009>,  <40.859638, 28.335976, 34.870430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639648, 28.279530, 34.948009>,  <40.272999, 28.185453, 35.077312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639648, 28.279530, 34.948009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273844, -0.958514, 0.079123,
		-0.291234, -0.161047, -0.942999,
		0.916620, 0.235191, -0.323253,
		40.914635, 28.350086, 34.851032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377850, 27.555729, 34.650150>,  <40.272999, 28.185453, 35.077312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377850, 27.555729, 34.650150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712891, 27.699884, 34.814365>,  <40.913914, 27.786377, 34.912895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712891, 27.699884, 34.814365>,  <40.377850, 27.555729, 34.650150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712891, 27.699884, 34.814365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320984, -0.932785, 0.163952,
		0.442034, -0.005549, -0.896981,
		0.837601, 0.360389, 0.410542,
		40.964172, 27.808001, 34.937527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720268, 27.601597, 34.067581>,  <40.377850, 27.555729, 34.650150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720268, 27.601597, 34.067581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999161, 27.787151, 34.286186>,  <41.166496, 27.898483, 34.417351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999161, 27.787151, 34.286186>,  <40.720268, 27.601597, 34.067581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999161, 27.787151, 34.286186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619100, -0.773992, -0.132862,
		0.361366, 0.430983, -0.826842,
		0.697230, 0.463886, 0.546516,
		41.208328, 27.926317, 34.450142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431122, 27.426298, 33.707554>,  <40.720268, 27.601597, 34.067581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431122, 27.426298, 33.707554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480972, 27.526503, 34.091576>,  <41.510883, 27.586626, 34.321991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480972, 27.526503, 34.091576>,  <41.431122, 27.426298, 33.707554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480972, 27.526503, 34.091576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580404, -0.803189, 0.134236,
		0.804735, 0.540491, -0.245500,
		0.124629, 0.250513, 0.960058,
		41.518360, 27.601656, 34.379593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033234, 27.095415, 33.807907>,  <41.431122, 27.426298, 33.707554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033234, 27.095415, 33.807907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922382, 27.201733, 34.177242>,  <41.855873, 27.265524, 34.398842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922382, 27.201733, 34.177242>,  <42.033234, 27.095415, 33.807907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922382, 27.201733, 34.177242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502618, -0.778908, 0.375070,
		0.818887, 0.568028, 0.082263,
		-0.277126, 0.265793, 0.923339,
		41.839245, 27.281471, 34.454243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644630, 27.223320, 34.171413>,  <42.033234, 27.095415, 33.807907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644630, 27.223320, 34.171413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350475, 27.153229, 34.433254>,  <42.173985, 27.111174, 34.590359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350475, 27.153229, 34.433254>,  <42.644630, 27.223320, 34.171413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350475, 27.153229, 34.433254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488587, -0.806470, 0.332999,
		0.469566, 0.564713, 0.678681,
		-0.735384, -0.175230, 0.654602,
		42.129860, 27.100660, 34.629635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879047, 27.304146, 34.875763>,  <42.644630, 27.223320, 34.171413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879047, 27.304146, 34.875763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571335, 27.048624, 34.871117>,  <42.386707, 26.895311, 34.868328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571335, 27.048624, 34.871117>,  <42.879047, 27.304146, 34.875763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571335, 27.048624, 34.871117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625362, -0.756567, 0.191123,
		-0.130880, 0.139761, 0.981497,
		-0.769281, -0.638806, -0.011618,
		42.340549, 26.856983, 34.867630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953327, 26.870626, 35.397034>,  <42.879047, 27.304146, 34.875763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953327, 26.870626, 35.397034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701717, 26.640278, 35.188152>,  <42.550751, 26.502069, 35.062824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701717, 26.640278, 35.188152>,  <42.953327, 26.870626, 35.397034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701717, 26.640278, 35.188152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618800, -0.777517, 0.112039,
		-0.470544, -0.252665, 0.845428,
		-0.629027, -0.575870, -0.522205,
		42.513008, 26.467516, 35.031490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894581, 26.215120, 35.732239>,  <42.953327, 26.870626, 35.397034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894581, 26.215120, 35.732239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777344, 26.154640, 35.354618>,  <42.707001, 26.118353, 35.128044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777344, 26.154640, 35.354618>,  <42.894581, 26.215120, 35.732239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777344, 26.154640, 35.354618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554260, -0.831433, -0.038916,
		-0.779032, -0.534657, 0.327492,
		-0.293094, -0.151199, -0.944052,
		42.689415, 26.109280, 35.071404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776562, 25.527760, 35.664993>,  <42.894581, 26.215120, 35.732239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776562, 25.527760, 35.664993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780003, 25.623276, 35.276581>,  <42.782066, 25.680586, 35.043533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780003, 25.623276, 35.276581>,  <42.776562, 25.527760, 35.664993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780003, 25.623276, 35.276581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391409, -0.894391, -0.216478,
		-0.920177, -0.378209, -0.101157,
		0.008600, 0.238792, -0.971033,
		42.782581, 25.694914, 34.985271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486217, 25.517014, 35.936707>,  <42.776562, 25.527760, 35.664993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486217, 25.517014, 35.936707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688610, 25.547712, 36.280357>,  <43.810047, 25.566132, 36.486546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688610, 25.547712, 36.280357>,  <43.486217, 25.517014, 35.936707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688610, 25.547712, 36.280357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128389, 0.978236, -0.163002,
		-0.852934, 0.192778, 0.485118,
		0.505983, 0.076746, 0.859122,
		43.840405, 25.570736, 36.538094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358681, 25.048090, 35.347683>,  <43.486217, 25.517014, 35.936707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358681, 25.048090, 35.347683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147362, 24.991903, 35.012741>,  <43.020569, 24.958191, 34.811775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147362, 24.991903, 35.012741>,  <43.358681, 25.048090, 35.347683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147362, 24.991903, 35.012741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364320, 0.928318, 0.074132,
		0.766921, 0.344230, -0.541607,
		-0.528302, -0.140465, -0.837357,
		42.988873, 24.949764, 34.761536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334015, 25.643074, 34.809078>,  <43.358681, 25.048090, 35.347683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334015, 25.643074, 34.809078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997746, 25.431562, 34.762321>,  <42.795982, 25.304655, 34.734268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997746, 25.431562, 34.762321>,  <43.334015, 25.643074, 34.809078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997746, 25.431562, 34.762321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532026, 0.846718, -0.003979,
		0.101077, 0.058844, -0.993137,
		-0.840673, -0.528777, -0.116891,
		42.745544, 25.272930, 34.727253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012981, 25.847471, 34.152584>,  <43.334015, 25.643074, 34.809078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012981, 25.847471, 34.152584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746254, 25.710283, 34.417229>,  <42.586220, 25.627970, 34.576015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746254, 25.710283, 34.417229>,  <43.012981, 25.847471, 34.152584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746254, 25.710283, 34.417229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549175, 0.826282, -0.125161,
		-0.503749, -0.446799, -0.739329,
		-0.666816, -0.342972, 0.661609,
		42.546207, 25.607391, 34.615711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210648, 25.818398, 33.918438>,  <43.012981, 25.847471, 34.152584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210648, 25.818398, 33.918438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263050, 25.843155, 34.314217>,  <42.294491, 25.858009, 34.551685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263050, 25.843155, 34.314217>,  <42.210648, 25.818398, 33.918438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263050, 25.843155, 34.314217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600233, 0.799282, 0.029473,
		-0.789024, -0.597760, 0.141860,
		0.131004, 0.061894, 0.989448,
		42.302353, 25.861723, 34.611050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611744, 25.879730, 34.319191>,  <42.210648, 25.818398, 33.918438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611744, 25.879730, 34.319191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882298, 26.053535, 34.557079>,  <42.044632, 26.157818, 34.699814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882298, 26.053535, 34.557079>,  <41.611744, 25.879730, 34.319191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882298, 26.053535, 34.557079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561520, 0.826740, 0.034597,
		-0.476649, -0.357350, 0.803185,
		0.676389, 0.434513, 0.594724,
		42.085213, 26.183889, 34.735497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215218, 26.214075, 34.826714>,  <41.611744, 25.879730, 34.319191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215218, 26.214075, 34.826714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572746, 26.390903, 34.856792>,  <41.787262, 26.497000, 34.874840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572746, 26.390903, 34.856792>,  <41.215218, 26.214075, 34.826714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572746, 26.390903, 34.856792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445665, 0.894314, 0.039822,
		-0.049646, -0.069107, 0.996373,
		0.893822, 0.442071, 0.075197,
		41.840893, 26.523525, 34.879353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169765, 26.710405, 35.440689>,  <41.215218, 26.214075, 34.826714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169765, 26.710405, 35.440689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452930, 26.839195, 35.189228>,  <41.622829, 26.916470, 35.038353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452930, 26.839195, 35.189228>,  <41.169765, 26.710405, 35.440689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452930, 26.839195, 35.189228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425611, 0.904767, -0.015878,
		0.563667, 0.278799, 0.777528,
		0.707908, 0.321975, -0.628648,
		41.665302, 26.935787, 35.000633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486759, 27.339664, 35.662598>,  <41.169765, 26.710405, 35.440689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486759, 27.339664, 35.662598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578796, 27.339706, 35.273331>,  <41.634018, 27.339731, 35.039772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578796, 27.339706, 35.273331>,  <41.486759, 27.339664, 35.662598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578796, 27.339706, 35.273331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276148, 0.958902, -0.065189,
		0.933165, 0.283738, 0.220668,
		0.230096, 0.000105, -0.973168,
		41.647823, 27.339739, 34.981380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859184, 28.007195, 35.544468>,  <41.486759, 27.339664, 35.662598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859184, 28.007195, 35.544468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737675, 27.879089, 35.185547>,  <41.664768, 27.802227, 34.970196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737675, 27.879089, 35.185547>,  <41.859184, 28.007195, 35.544468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737675, 27.879089, 35.185547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313291, 0.923012, -0.223378,
		0.899763, 0.213262, -0.380719,
		-0.303770, -0.320263, -0.897305,
		41.646542, 27.783010, 34.916355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160316, 28.490351, 35.151966>,  <41.859184, 28.007195, 35.544468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160316, 28.490351, 35.151966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863354, 28.320398, 34.944775>,  <41.685177, 28.218426, 34.820457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863354, 28.320398, 34.944775>,  <42.160316, 28.490351, 35.151966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863354, 28.320398, 34.944775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377158, 0.904073, -0.201009,
		0.553698, 0.046129, -0.831439,
		-0.742409, -0.424882, -0.517981,
		41.640633, 28.192934, 34.789379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137638, 28.764425, 34.486996>,  <42.160316, 28.490351, 35.151966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137638, 28.764425, 34.486996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772240, 28.640873, 34.592911>,  <41.553001, 28.566742, 34.656460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772240, 28.640873, 34.592911>,  <42.137638, 28.764425, 34.486996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772240, 28.640873, 34.592911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336642, 0.939344, -0.065620,
		-0.228460, -0.149083, -0.962071,
		-0.913498, -0.308882, 0.264790,
		41.498192, 28.548208, 34.672348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583462, 29.075256, 34.073734>,  <42.137638, 28.764425, 34.486996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583462, 29.075256, 34.073734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424179, 29.002531, 34.433372>,  <41.328609, 28.958895, 34.649155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424179, 29.002531, 34.433372>,  <41.583462, 29.075256, 34.073734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424179, 29.002531, 34.433372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501173, 0.864057, -0.047237,
		-0.768284, -0.469414, -0.435191,
		-0.398203, -0.181815, 0.899098,
		41.304718, 28.947987, 34.703102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853615, 28.944141, 33.724957>,  <41.583462, 29.075256, 34.073734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853615, 28.944141, 33.724957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733173, 28.783957, 34.071129>,  <40.660908, 28.687845, 34.278831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733173, 28.783957, 34.071129>,  <40.853615, 28.944141, 33.724957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733173, 28.783957, 34.071129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324955, 0.896316, 0.301697,
		-0.896515, -0.190382, -0.400019,
		-0.301106, -0.400464, 0.865427,
		40.642841, 28.663816, 34.330757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157722, 29.102989, 33.780869>,  <40.853615, 28.944141, 33.724957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157722, 29.102989, 33.780869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348969, 29.082846, 34.131611>,  <40.463715, 29.070761, 34.342056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348969, 29.082846, 34.131611>,  <40.157722, 29.102989, 33.780869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348969, 29.082846, 34.131611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295623, 0.930877, 0.214652,
		-0.827052, -0.361846, 0.430178,
		0.478114, -0.050357, 0.876853,
		40.492401, 29.067738, 34.394669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726475, 29.237436, 34.256222>,  <40.157722, 29.102989, 33.780869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726475, 29.237436, 34.256222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069202, 29.326271, 34.442352>,  <40.274841, 29.379572, 34.554031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069202, 29.326271, 34.442352>,  <39.726475, 29.237436, 34.256222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069202, 29.326271, 34.442352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310795, 0.942561, 0.122417,
		-0.411414, -0.249512, 0.876631,
		0.856823, 0.222089, 0.465330,
		40.326248, 29.392897, 34.581951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407166, 29.400698, 34.971397>,  <39.726475, 29.237436, 34.256222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407166, 29.400698, 34.971397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799469, 29.454823, 35.027691>,  <40.034851, 29.487297, 35.061466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799469, 29.454823, 35.027691>,  <39.407166, 29.400698, 34.971397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799469, 29.454823, 35.027691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146014, 0.986895, 0.068685,
		-0.129591, -0.087912, 0.987663,
		0.980758, 0.135312, 0.140729,
		40.093697, 29.495417, 35.069908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530476, 29.968304, 35.561199>,  <39.407166, 29.400698, 34.971397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530476, 29.968304, 35.561199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863136, 29.938854, 35.341042>,  <40.062733, 29.921185, 35.208946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863136, 29.938854, 35.341042>,  <39.530476, 29.968304, 35.561199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863136, 29.938854, 35.341042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019380, 0.994416, -0.103738,
		0.554960, 0.075607, 0.828434,
		0.831652, -0.073626, -0.550395,
		40.112633, 29.916767, 35.175922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072479, 30.396585, 35.864082>,  <39.530476, 29.968304, 35.561199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072479, 30.396585, 35.864082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142036, 30.341133, 35.474098>,  <40.183773, 30.307861, 35.240108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142036, 30.341133, 35.474098>,  <40.072479, 30.396585, 35.864082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142036, 30.341133, 35.474098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046034, 0.990104, -0.132572,
		0.983688, -0.021827, 0.178555,
		0.173895, -0.138629, -0.974958,
		40.194206, 30.299545, 35.181610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312241, 31.001192, 35.755466>,  <40.072479, 30.396585, 35.864082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312241, 31.001192, 35.755466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273724, 30.882488, 35.375431>,  <40.250614, 30.811266, 35.147411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273724, 30.882488, 35.375431>,  <40.312241, 31.001192, 35.755466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273724, 30.882488, 35.375431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104748, 0.952242, -0.286816,
		0.989827, 0.071902, -0.122774,
		-0.096288, -0.296759, -0.950086,
		40.244839, 30.793461, 35.090405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601833, 31.464724, 35.313663>,  <40.312241, 31.001192, 35.755466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601833, 31.464724, 35.313663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355034, 31.272251, 35.064575>,  <40.206955, 31.156767, 34.915123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355034, 31.272251, 35.064575>,  <40.601833, 31.464724, 35.313663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355034, 31.272251, 35.064575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194111, 0.859896, -0.472123,
		0.762650, -0.170422, -0.623957,
		-0.616998, -0.481181, -0.622719,
		40.169933, 31.127897, 34.877758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805885, 31.736738, 34.716812>,  <40.601833, 31.464724, 35.313663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805885, 31.736738, 34.716812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470257, 31.563963, 34.584515>,  <40.268879, 31.460299, 34.505135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470257, 31.563963, 34.584515>,  <40.805885, 31.736738, 34.716812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470257, 31.563963, 34.584515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272520, 0.859900, -0.431631,
		0.470844, -0.272034, -0.839228,
		-0.839070, -0.431937, -0.330744,
		40.218536, 31.434381, 34.485291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724663, 31.824703, 33.996380>,  <40.805885, 31.736738, 34.716812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724663, 31.824703, 33.996380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342899, 31.759993, 34.096722>,  <40.113842, 31.721167, 34.156925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342899, 31.759993, 34.096722>,  <40.724663, 31.824703, 33.996380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342899, 31.759993, 34.096722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267135, 0.837893, -0.475997,
		-0.133183, -0.521309, -0.842911,
		-0.954412, -0.161776, 0.250853,
		40.056576, 31.711460, 34.171978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338139, 31.732584, 33.366009>,  <40.724663, 31.824703, 33.996380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338139, 31.732584, 33.366009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114086, 31.862553, 33.670818>,  <39.979656, 31.940533, 33.853706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114086, 31.862553, 33.670818>,  <40.338139, 31.732584, 33.366009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114086, 31.862553, 33.670818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371495, 0.723669, -0.581631,
		-0.740438, -0.608877, -0.284641,
		-0.560128, 0.324919, 0.762027,
		39.946049, 31.960028, 33.899426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746937, 31.859762, 33.091209>,  <40.338139, 31.732584, 33.366009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746937, 31.859762, 33.091209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786171, 32.069416, 33.429596>,  <39.809711, 32.195210, 33.632629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786171, 32.069416, 33.429596>,  <39.746937, 31.859762, 33.091209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786171, 32.069416, 33.429596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270615, 0.832082, -0.484156,
		-0.957678, -0.181445, 0.223452,
		0.098082, 0.524135, 0.845968,
		39.815598, 32.226658, 33.683388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204960, 32.466984, 32.816944>,  <39.746937, 31.859762, 33.091209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204960, 32.466984, 32.816944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271492, 32.857090, 32.875175>,  <40.311413, 33.091152, 32.910114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271492, 32.857090, 32.875175>,  <40.204960, 32.466984, 32.816944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271492, 32.857090, 32.875175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929064, -0.204470, 0.308274,
		0.330414, 0.083974, -0.940093,
		0.166334, 0.975264, 0.145577,
		40.321392, 33.149670, 32.918850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838139, 32.703072, 32.406624>,  <40.204960, 32.466984, 32.816944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838139, 32.703072, 32.406624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762951, 32.918617, 32.735085>,  <40.717838, 33.047943, 32.932163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762951, 32.918617, 32.735085>,  <40.838139, 32.703072, 32.406624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762951, 32.918617, 32.735085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875050, -0.287805, 0.389174,
		0.446043, 0.791706, -0.417430,
		-0.187973, 0.538860, 0.821155,
		40.706558, 33.080276, 32.981430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474075, 33.004871, 32.525223>,  <40.838139, 32.703072, 32.406624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474075, 33.004871, 32.525223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258389, 32.969364, 32.860214>,  <41.128979, 32.948059, 33.061211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258389, 32.969364, 32.860214>,  <41.474075, 33.004871, 32.525223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258389, 32.969364, 32.860214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829494, -0.227854, 0.509923,
		0.145557, 0.969641, 0.196495,
		-0.539215, -0.088769, 0.837477,
		41.096622, 32.942734, 33.111458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906113, 33.184380, 32.999550>,  <41.474075, 33.004871, 32.525223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906113, 33.184380, 32.999550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607971, 33.039776, 33.223606>,  <41.429085, 32.953014, 33.358040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607971, 33.039776, 33.223606>,  <41.906113, 33.184380, 32.999550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607971, 33.039776, 33.223606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643909, -0.172710, 0.745354,
		-0.172710, 0.916233, 0.361509,
		-0.745354, -0.361509, 0.560142,
		41.384365, 32.931324, 33.391647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317211, 33.242146, 33.556236>,  <41.906113, 33.184380, 32.999550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317211, 33.242146, 33.556236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997379, 33.011887, 33.624706>,  <41.805481, 32.873734, 33.665787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997379, 33.011887, 33.624706>,  <42.317211, 33.242146, 33.556236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997379, 33.011887, 33.624706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462389, -0.408213, 0.787121,
		-0.383228, 0.708516, 0.592572,
		-0.799583, -0.575646, 0.171171,
		41.757504, 32.839191, 33.676056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066418, 32.550686, 33.297138>,  <42.317211, 33.242146, 33.556236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066418, 32.550686, 33.297138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227245, 32.239197, 33.104500>,  <42.323742, 32.052303, 32.988918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227245, 32.239197, 33.104500>,  <42.066418, 32.550686, 33.297138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227245, 32.239197, 33.104500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876223, 0.174647, 0.449144,
		-0.265648, -0.602573, 0.752553,
		0.402074, -0.778719, -0.481594,
		42.347866, 32.005581, 32.960022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449451, 31.975933, 33.729248>,  <42.066418, 32.550686, 33.297138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449451, 31.975933, 33.729248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592724, 32.006748, 33.357059>,  <42.678688, 32.025238, 33.133747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592724, 32.006748, 33.357059>,  <42.449451, 31.975933, 33.729248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592724, 32.006748, 33.357059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885982, 0.286331, 0.364761,
		0.294524, -0.955028, 0.034302,
		0.358179, 0.077040, -0.930469,
		42.700176, 32.029858, 33.077919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142681, 31.735456, 33.767525>,  <42.449451, 31.975933, 33.729248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142681, 31.735456, 33.767525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073639, 32.001240, 33.476677>,  <43.032211, 32.160709, 33.302170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073639, 32.001240, 33.476677>,  <43.142681, 31.735456, 33.767525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073639, 32.001240, 33.476677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773019, 0.548880, 0.318077,
		0.610450, -0.507172, -0.608381,
		-0.172609, 0.664460, -0.727117,
		43.021858, 32.200577, 33.258541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710693, 31.859823, 33.276375>,  <43.142681, 31.735456, 33.767525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710693, 31.859823, 33.276375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485382, 32.190258, 33.283352>,  <43.350197, 32.388519, 33.287540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485382, 32.190258, 33.283352>,  <43.710693, 31.859823, 33.276375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485382, 32.190258, 33.283352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797725, 0.538191, 0.272003,
		0.215308, 0.167131, -0.962138,
		-0.563274, 0.826086, 0.017447,
		43.316399, 32.438084, 33.288586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889240, 32.407574, 32.786743>,  <43.710693, 31.859823, 33.276375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889240, 32.407574, 32.786743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737148, 32.571163, 33.118565>,  <43.645893, 32.669319, 33.317657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737148, 32.571163, 33.118565>,  <43.889240, 32.407574, 32.786743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737148, 32.571163, 33.118565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873701, 0.453085, 0.177089,
		-0.303434, 0.792118, -0.529601,
		-0.380229, 0.408978, 0.829556,
		43.623081, 32.693855, 33.367432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629559, 32.467110, 32.774349>,  <43.889240, 32.407574, 32.786743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629559, 32.467110, 32.774349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435951, 32.619701, 33.089363>,  <44.319786, 32.711254, 33.278370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435951, 32.619701, 33.089363>,  <44.629559, 32.467110, 32.774349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435951, 32.619701, 33.089363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867303, 0.328691, 0.373828,
		-0.116247, 0.863966, -0.489948,
		-0.484016, 0.381477, 0.787530,
		44.290745, 32.734146, 33.325623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732140, 33.217896, 32.854332>,  <44.629559, 32.467110, 32.774349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732140, 33.217896, 32.854332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656708, 33.039398, 33.204258>,  <44.611446, 32.932301, 33.414215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656708, 33.039398, 33.204258>,  <44.732140, 33.217896, 32.854332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656708, 33.039398, 33.204258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885868, 0.307196, 0.347663,
		-0.423881, 0.840536, 0.337378,
		-0.188582, -0.446240, 0.874818,
		44.600132, 32.905525, 33.466705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965675, 33.740120, 33.378349>,  <44.732140, 33.217896, 32.854332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965675, 33.740120, 33.378349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959373, 33.372078, 33.534893>,  <44.955593, 33.151253, 33.628819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959373, 33.372078, 33.534893>,  <44.965675, 33.740120, 33.378349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959373, 33.372078, 33.534893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890358, 0.165201, 0.424231,
		-0.454989, 0.355130, 0.816620,
		-0.015751, -0.920104, 0.391357,
		44.954647, 33.096046, 33.652302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211315, 34.167236, 33.900421>,  <44.965675, 33.740120, 33.378349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211315, 34.167236, 33.900421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323830, 33.805229, 34.028057>,  <45.391338, 33.588024, 34.104637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323830, 33.805229, 34.028057>,  <45.211315, 34.167236, 33.900421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323830, 33.805229, 34.028057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862099, 0.384371, 0.330217,
		-0.421502, 0.182203, 0.888334,
		0.281283, -0.905020, 0.319090,
		45.408215, 33.533722, 34.123783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476551, 34.294388, 34.539471>,  <45.211315, 34.167236, 33.900421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476551, 34.294388, 34.539471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634342, 33.945786, 34.422943>,  <45.729015, 33.736626, 34.353027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634342, 33.945786, 34.422943>,  <45.476551, 34.294388, 34.539471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634342, 33.945786, 34.422943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908036, 0.321089, 0.269022,
		-0.140915, -0.370650, 0.918020,
		0.394479, -0.871505, -0.291317,
		45.752686, 33.684334, 34.335548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590679, 33.812145, 35.110382>,  <45.476551, 34.294388, 34.539471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590679, 33.812145, 35.110382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848145, 33.775200, 34.806496>,  <46.002625, 33.753033, 34.624165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848145, 33.775200, 34.806496>,  <45.590679, 33.812145, 35.110382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848145, 33.775200, 34.806496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760185, 0.191851, 0.620735,
		0.088419, -0.977068, 0.193701,
		0.643662, -0.092364, -0.759716,
		46.041245, 33.747490, 34.578583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194180, 33.291325, 35.157799>,  <45.590679, 33.812145, 35.110382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194180, 33.291325, 35.157799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330620, 33.564053, 34.898949>,  <46.412483, 33.727688, 34.743637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330620, 33.564053, 34.898949>,  <46.194180, 33.291325, 35.157799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.330620, 33.564053, 34.898949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856968, 0.057378, 0.512166,
		0.386335, -0.729269, -0.564723,
		0.341104, 0.681817, -0.647128,
		46.432953, 33.768597, 34.704811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819080, 33.160080, 34.898842>,  <46.194180, 33.291325, 35.157799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819080, 33.160080, 34.898842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807247, 33.558754, 34.929165>,  <46.800148, 33.797958, 34.947357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807247, 33.558754, 34.929165>,  <46.819080, 33.160080, 34.898842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807247, 33.558754, 34.929165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768555, -0.025808, 0.639263,
		0.639099, 0.077177, -0.765242,
		-0.029587, 0.996683, 0.075809,
		46.798370, 33.857758, 34.951908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472580, 33.444099, 34.730743>,  <46.819080, 33.160080, 34.898842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472580, 33.444099, 34.730743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276588, 33.683830, 34.983955>,  <47.158993, 33.827671, 35.135883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276588, 33.683830, 34.983955>,  <47.472580, 33.444099, 34.730743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.276588, 33.683830, 34.983955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702554, -0.158416, 0.693774,
		0.516082, 0.784670, -0.343442,
		-0.489977, 0.599331, 0.633029,
		47.129597, 33.863628, 35.173862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.968025, 33.867149, 35.068363>,  <47.472580, 33.444099, 34.730743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.968025, 33.867149, 35.068363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670395, 33.904057, 35.333038>,  <47.491817, 33.926201, 35.491844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670395, 33.904057, 35.333038>,  <47.968025, 33.867149, 35.068363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.670395, 33.904057, 35.333038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574792, -0.416413, 0.704425,
		0.340530, 0.904482, 0.256810,
		-0.744079, 0.092265, 0.661690,
		47.447170, 33.931736, 35.531544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.748974, 34.612232, 35.176220>,  <47.968025, 33.867149, 35.068363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.748974, 34.612232, 35.176220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.761189, 34.834408, 34.843822>,  <47.768517, 34.967712, 34.644382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.761189, 34.834408, 34.843822>,  <47.748974, 34.612232, 35.176220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.761189, 34.834408, 34.843822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941953, -0.262112, -0.209815,
		-0.334354, 0.789167, 0.515192,
		0.030541, 0.555439, -0.830996,
		47.770351, 35.001041, 34.594524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.959675, 32.604675, 24.992052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.641865, 32.845867, 25.020737>,  <33.451180, 32.990582, 25.037947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.641865, 32.845867, 25.020737>,  <33.959675, 32.604675, 24.992052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641865, 32.845867, 25.020737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069191, -0.207227, 0.975843,
		0.603272, 0.770374, 0.206368,
		-0.794529, 0.602978, 0.071711,
		33.403507, 33.026760, 25.042250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165329, 33.121357, 25.449623>,  <33.959675, 32.604675, 24.992052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165329, 33.121357, 25.449623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765564, 33.107700, 25.451189>,  <33.525707, 33.099506, 25.452129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765564, 33.107700, 25.451189>,  <34.165329, 33.121357, 25.449623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765564, 33.107700, 25.451189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008229, -0.127162, 0.991848,
		-0.033366, 0.991294, 0.127367,
		-0.999409, -0.034142, 0.003914,
		33.465740, 33.097458, 25.452364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914433, 33.541222, 26.008751>,  <34.165329, 33.121357, 25.449623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914433, 33.541222, 26.008751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.613537, 33.286385, 25.941519>,  <33.432999, 33.133480, 25.901180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.613537, 33.286385, 25.941519>,  <33.914433, 33.541222, 26.008751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613537, 33.286385, 25.941519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096928, -0.145322, 0.984625,
		-0.651725, 0.756963, 0.047564,
		-0.752236, -0.637094, -0.168081,
		33.387867, 33.095257, 25.891094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280315, 33.702744, 26.500578>,  <33.914433, 33.541222, 26.008751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280315, 33.702744, 26.500578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.238136, 33.322254, 26.384615>,  <33.212830, 33.093960, 26.315037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.238136, 33.322254, 26.384615>,  <33.280315, 33.702744, 26.500578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238136, 33.322254, 26.384615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060125, -0.284899, 0.956670,
		-0.992605, 0.118313, -0.027149,
		-0.105452, -0.951228, -0.289906,
		33.206501, 33.036884, 26.297644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749680, 33.368546, 26.955954>,  <33.280315, 33.702744, 26.500578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749680, 33.368546, 26.955954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.894638, 33.021408, 26.820000>,  <32.981613, 32.813126, 26.738426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.894638, 33.021408, 26.820000>,  <32.749680, 33.368546, 26.955954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894638, 33.021408, 26.820000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059715, -0.385547, 0.920754,
		-0.930110, -0.313380, -0.191543,
		0.362395, -0.867841, -0.339887,
		33.003357, 32.761055, 26.718033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296803, 32.828773, 27.255688>,  <32.749680, 33.368546, 26.955954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296803, 32.828773, 27.255688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.613785, 32.621632, 27.126789>,  <32.803974, 32.497345, 27.049450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.613785, 32.621632, 27.126789>,  <32.296803, 32.828773, 27.255688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613785, 32.621632, 27.126789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060873, -0.458543, 0.886585,
		-0.606889, -0.722193, -0.331849,
		0.792452, -0.517858, -0.322246,
		32.851521, 32.466274, 27.030115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206360, 32.219536, 27.536392>,  <32.296803, 32.828773, 27.255688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206360, 32.219536, 27.536392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.594990, 32.223934, 27.441803>,  <32.828167, 32.226574, 27.385050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.594990, 32.223934, 27.441803>,  <32.206360, 32.219536, 27.536392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594990, 32.223934, 27.441803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201844, -0.560411, 0.803242,
		-0.123686, -0.828141, -0.546703,
		0.971576, 0.010999, -0.236471,
		32.886463, 32.227234, 27.370861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432117, 31.600067, 27.792860>,  <32.206360, 32.219536, 27.536392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432117, 31.600067, 27.792860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.760727, 31.827887, 27.782196>,  <32.957893, 31.964579, 27.775797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.760727, 31.827887, 27.782196>,  <32.432117, 31.600067, 27.792860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760727, 31.827887, 27.782196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312566, -0.410756, 0.856494,
		0.476866, -0.711964, -0.515468,
		0.821524, 0.569550, -0.026660,
		33.007183, 31.998751, 27.774199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859398, 31.134171, 28.005903>,  <32.432117, 31.600067, 27.792860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859398, 31.134171, 28.005903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.048859, 31.485876, 28.026098>,  <33.162537, 31.696899, 28.038216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.048859, 31.485876, 28.026098>,  <32.859398, 31.134171, 28.005903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048859, 31.485876, 28.026098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363393, -0.247331, 0.898206,
		0.802247, -0.407090, -0.436667,
		0.473652, 0.879264, 0.050487,
		33.190952, 31.749655, 28.041245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539635, 30.972019, 28.205360>,  <32.859398, 31.134171, 28.005903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539635, 30.972019, 28.205360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.512440, 31.361887, 28.290586>,  <33.496120, 31.595808, 28.341722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.512440, 31.361887, 28.290586>,  <33.539635, 30.972019, 28.205360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512440, 31.361887, 28.290586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419188, -0.165888, 0.892616,
		0.905350, 0.150006, -0.397291,
		-0.067992, 0.974669, 0.213067,
		33.492043, 31.654287, 28.354507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187492, 31.157475, 28.520475>,  <33.539635, 30.972019, 28.205360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187492, 31.157475, 28.520475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.934753, 31.444269, 28.638256>,  <33.783112, 31.616346, 28.708925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.934753, 31.444269, 28.638256>,  <34.187492, 31.157475, 28.520475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934753, 31.444269, 28.638256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403773, -0.019801, 0.914645,
		0.661621, 0.696803, -0.276989,
		-0.631843, 0.716989, 0.294451,
		33.745201, 31.659367, 28.726591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589664, 31.628572, 28.920597>,  <34.187492, 31.157475, 28.520475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589664, 31.628572, 28.920597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228024, 31.724319, 29.062185>,  <34.011040, 31.781767, 29.147139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228024, 31.724319, 29.062185>,  <34.589664, 31.628572, 28.920597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228024, 31.724319, 29.062185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373315, 0.039403, 0.926867,
		0.207914, 0.970129, -0.124984,
		-0.904106, 0.239367, 0.353972,
		33.956791, 31.796129, 29.168377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710663, 32.229382, 29.244179>,  <34.589664, 31.628572, 28.920597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710663, 32.229382, 29.244179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.364571, 32.103809, 29.400549>,  <34.156914, 32.028465, 29.494371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.364571, 32.103809, 29.400549>,  <34.710663, 32.229382, 29.244179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364571, 32.103809, 29.400549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315290, 0.265553, 0.911084,
		-0.389831, 0.911552, -0.130785,
		-0.865231, -0.313933, 0.390924,
		34.105000, 32.009628, 29.517826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511333, 32.730991, 29.687832>,  <34.710663, 32.229382, 29.244179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511333, 32.730991, 29.687832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.296829, 32.415157, 29.807144>,  <34.168125, 32.225655, 29.878733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.296829, 32.415157, 29.807144>,  <34.511333, 32.730991, 29.687832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296829, 32.415157, 29.807144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272827, 0.172268, 0.946514,
		-0.798742, 0.588959, 0.123040,
		-0.536262, -0.789589, 0.298282,
		34.135952, 32.178280, 29.896629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277424, 32.850014, 30.347155>,  <34.511333, 32.730991, 29.687832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277424, 32.850014, 30.347155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221485, 32.454086, 30.357718>,  <34.187923, 32.216530, 30.364056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221485, 32.454086, 30.357718>,  <34.277424, 32.850014, 30.347155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221485, 32.454086, 30.357718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407307, -0.033197, 0.912688,
		-0.902522, 0.138389, 0.407803,
		-0.139844, -0.989822, 0.026406,
		34.179531, 32.157139, 30.365639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754295, 32.622852, 30.930319>,  <34.277424, 32.850014, 30.347155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754295, 32.622852, 30.930319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.998280, 32.320126, 30.836361>,  <34.144669, 32.138489, 30.779987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.998280, 32.320126, 30.836361>,  <33.754295, 32.622852, 30.930319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998280, 32.320126, 30.836361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262103, -0.087057, 0.961105,
		-0.747833, -0.647799, 0.145264,
		0.609956, -0.756821, -0.234894,
		34.181267, 32.093079, 30.765892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659439, 32.115036, 31.469488>,  <33.754295, 32.622852, 30.930319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659439, 32.115036, 31.469488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.003204, 31.987875, 31.309315>,  <34.209465, 31.911579, 31.213211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.003204, 31.987875, 31.309315>,  <33.659439, 32.115036, 31.469488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003204, 31.987875, 31.309315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390977, -0.096048, 0.915375,
		-0.329458, -0.943247, 0.041746,
		0.859415, -0.317899, -0.400432,
		34.261028, 31.892506, 31.189186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838421, 31.545959, 31.871819>,  <33.659439, 32.115036, 31.469488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838421, 31.545959, 31.871819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181927, 31.658356, 31.700441>,  <34.388031, 31.725794, 31.597614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181927, 31.658356, 31.700441>,  <33.838421, 31.545959, 31.871819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181927, 31.658356, 31.700441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468226, -0.090853, 0.878925,
		0.208045, -0.955400, -0.209589,
		0.858767, 0.280991, -0.428442,
		34.439556, 31.742653, 31.571909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418716, 31.019344, 32.109230>,  <33.838421, 31.545959, 31.871819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418716, 31.019344, 32.109230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599747, 31.351521, 31.979282>,  <34.708366, 31.550827, 31.901314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599747, 31.351521, 31.979282>,  <34.418716, 31.019344, 32.109230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599747, 31.351521, 31.979282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670360, -0.076602, 0.738072,
		0.588041, -0.551812, -0.591364,
		0.452576, 0.830443, -0.324868,
		34.735519, 31.600653, 31.881823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154411, 30.860134, 31.964394>,  <34.418716, 31.019344, 32.109230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154411, 30.860134, 31.964394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.124874, 31.252131, 32.038334>,  <35.107151, 31.487328, 32.082699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.124874, 31.252131, 32.038334>,  <35.154411, 30.860134, 31.964394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124874, 31.252131, 32.038334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600525, -0.104287, 0.792776,
		0.796190, 0.169545, -0.580807,
		-0.073841, 0.979989, 0.184849,
		35.102722, 31.546127, 32.093788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836205, 31.045528, 32.135303>,  <35.154411, 30.860134, 31.964394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836205, 31.045528, 32.135303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599934, 31.339159, 32.269306>,  <35.458172, 31.515337, 32.349709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599934, 31.339159, 32.269306>,  <35.836205, 31.045528, 32.135303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599934, 31.339159, 32.269306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464176, -0.030479, 0.885219,
		0.660030, 0.678380, -0.322738,
		-0.590678, 0.734078, 0.335005,
		35.422729, 31.559383, 32.369808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272633, 31.530867, 32.441204>,  <35.836205, 31.045528, 32.135303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272633, 31.530867, 32.441204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919434, 31.596729, 32.617027>,  <35.707516, 31.636248, 32.722523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919434, 31.596729, 32.617027>,  <36.272633, 31.530867, 32.441204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919434, 31.596729, 32.617027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390272, -0.262747, 0.882413,
		0.260787, 0.950712, 0.167743,
		-0.882994, 0.164657, 0.439557,
		35.654537, 31.646126, 32.748894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803040, 31.195137, 32.765720>,  <36.272633, 31.530867, 32.441204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803040, 31.195137, 32.765720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196968, 31.133640, 32.733482>,  <37.433323, 31.096743, 32.714142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196968, 31.133640, 32.733482>,  <36.803040, 31.195137, 32.765720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196968, 31.133640, 32.733482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034584, 0.628749, -0.776839,
		0.170105, 0.762258, 0.624521,
		0.984819, -0.153742, -0.080592,
		37.492413, 31.087517, 32.709305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077545, 31.838434, 32.728992>,  <36.803040, 31.195137, 32.765720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077545, 31.838434, 32.728992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341400, 31.581551, 32.572815>,  <37.499714, 31.427422, 32.479107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341400, 31.581551, 32.572815>,  <37.077545, 31.838434, 32.728992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341400, 31.581551, 32.572815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132679, 0.610837, -0.780560,
		0.739779, 0.463084, 0.488139,
		0.659639, -0.642208, -0.390443,
		37.539291, 31.388887, 32.455681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559135, 32.210468, 32.398544>,  <37.077545, 31.838434, 32.728992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559135, 32.210468, 32.398544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.578560, 31.845316, 32.236416>,  <37.590214, 31.626225, 32.139137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.578560, 31.845316, 32.236416>,  <37.559135, 32.210468, 32.398544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578560, 31.845316, 32.236416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025458, 0.406803, -0.913161,
		0.998496, 0.034021, 0.042993,
		0.048557, -0.912882, -0.405325,
		37.593128, 31.571451, 32.114819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089195, 32.327835, 31.836214>,  <37.559135, 32.210468, 32.398544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089195, 32.327835, 31.836214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901955, 31.982979, 31.758654>,  <37.789612, 31.776066, 31.712118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901955, 31.982979, 31.758654>,  <38.089195, 32.327835, 31.836214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901955, 31.982979, 31.758654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102646, 0.270987, -0.957094,
		0.877695, -0.428111, -0.215344,
		-0.468098, -0.862141, -0.193900,
		37.761524, 31.724337, 31.700483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355587, 32.087311, 31.264687>,  <38.089195, 32.327835, 31.836214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355587, 32.087311, 31.264687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014839, 31.877810, 31.264320>,  <37.810390, 31.752110, 31.264101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014839, 31.877810, 31.264320>,  <38.355587, 32.087311, 31.264687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014839, 31.877810, 31.264320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160639, 0.262936, -0.951346,
		0.498508, -0.810278, -0.308122,
		-0.851871, -0.523751, -0.000914,
		37.759277, 31.720684, 31.264046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233273, 31.587862, 30.597237>,  <38.355587, 32.087311, 31.264687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233273, 31.587862, 30.597237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860241, 31.661718, 30.721300>,  <37.636421, 31.706032, 30.795738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860241, 31.661718, 30.721300>,  <38.233273, 31.587862, 30.597237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860241, 31.661718, 30.721300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289791, 0.129300, -0.948316,
		-0.215200, -0.974264, -0.067076,
		-0.932582, 0.184640, 0.310158,
		37.580467, 31.717110, 30.814348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840820, 31.095057, 30.200075>,  <38.233273, 31.587862, 30.597237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840820, 31.095057, 30.200075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583721, 31.377554, 30.318798>,  <37.429462, 31.547052, 30.390032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583721, 31.377554, 30.318798>,  <37.840820, 31.095057, 30.200075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583721, 31.377554, 30.318798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400152, 0.020869, -0.916211,
		-0.653261, -0.707662, 0.269191,
		-0.642750, 0.706243, 0.296805,
		37.390896, 31.589426, 30.407839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299458, 30.860298, 29.867563>,  <37.840820, 31.095057, 30.200075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299458, 30.860298, 29.867563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235237, 31.245634, 29.953541>,  <37.196705, 31.476835, 30.005127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235237, 31.245634, 29.953541>,  <37.299458, 30.860298, 29.867563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235237, 31.245634, 29.953541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225805, 0.176146, -0.958115,
		-0.960852, -0.202358, 0.189247,
		-0.160547, 0.963340, 0.214944,
		37.187073, 31.534636, 30.018024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668648, 31.032799, 29.477274>,  <37.299458, 30.860298, 29.867563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668648, 31.032799, 29.477274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844845, 31.381266, 29.564022>,  <36.950565, 31.590345, 29.616072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844845, 31.381266, 29.564022>,  <36.668648, 31.032799, 29.477274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844845, 31.381266, 29.564022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220646, 0.339219, -0.914465,
		-0.870217, 0.354968, 0.341644,
		0.440497, 0.871165, 0.216872,
		36.976994, 31.642614, 29.629084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176964, 31.443851, 29.292278>,  <36.668648, 31.032799, 29.477274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176964, 31.443851, 29.292278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505608, 31.671871, 29.293165>,  <36.702793, 31.808683, 29.293697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505608, 31.671871, 29.293165>,  <36.176964, 31.443851, 29.292278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505608, 31.671871, 29.293165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191068, 0.279048, -0.941077,
		-0.537079, 0.772772, 0.338186,
		0.821608, 0.570049, 0.002219,
		36.752090, 31.842886, 29.293831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025574, 32.046371, 28.983948>,  <36.176964, 31.443851, 29.292278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025574, 32.046371, 28.983948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.424282, 32.075554, 28.970551>,  <36.663509, 32.093063, 28.962513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.424282, 32.075554, 28.970551>,  <36.025574, 32.046371, 28.983948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424282, 32.075554, 28.970551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058791, 0.379336, -0.923389,
		-0.054659, 0.922378, 0.382401,
		0.996773, 0.072953, -0.033494,
		36.723312, 32.097439, 28.960503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175961, 32.697559, 28.919418>,  <36.025574, 32.046371, 28.983948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175961, 32.697559, 28.919418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479729, 32.486881, 28.766645>,  <36.661991, 32.360474, 28.674982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479729, 32.486881, 28.766645>,  <36.175961, 32.697559, 28.919418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479729, 32.486881, 28.766645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155615, 0.422959, -0.892687,
		0.631715, 0.737360, 0.239242,
		0.759421, -0.526694, -0.381934,
		36.707554, 32.328873, 28.652065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572899, 33.134815, 28.511879>,  <36.175961, 32.697559, 28.919418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572899, 33.134815, 28.511879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632236, 32.760109, 28.385090>,  <36.667839, 32.535286, 28.309017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632236, 32.760109, 28.385090>,  <36.572899, 33.134815, 28.511879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632236, 32.760109, 28.385090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156668, 0.294211, -0.942812,
		0.976447, 0.189521, -0.103116,
		0.148344, -0.936761, -0.316973,
		36.676739, 32.479080, 28.289997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162094, 33.124752, 28.012186>,  <36.572899, 33.134815, 28.511879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162094, 33.124752, 28.012186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919796, 32.811344, 27.956818>,  <36.774418, 32.623299, 27.923595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919796, 32.811344, 27.956818>,  <37.162094, 33.124752, 28.012186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919796, 32.811344, 27.956818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078235, 0.231783, -0.969616,
		0.791802, -0.576513, -0.201701,
		-0.605747, -0.783524, -0.138423,
		36.738071, 32.576286, 27.915291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364147, 32.849354, 27.358683>,  <37.162094, 33.124752, 28.012186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364147, 32.849354, 27.358683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989578, 32.733128, 27.437355>,  <36.764835, 32.663391, 27.484558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989578, 32.733128, 27.437355>,  <37.364147, 32.849354, 27.358683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989578, 32.733128, 27.437355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247719, 0.150512, -0.957069,
		0.248492, -0.944942, -0.212923,
		-0.936422, -0.290569, 0.196679,
		36.708652, 32.645958, 27.496359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254803, 32.439140, 26.848049>,  <37.364147, 32.849354, 27.358683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254803, 32.439140, 26.848049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882465, 32.484272, 26.987070>,  <36.659061, 32.511353, 27.070482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882465, 32.484272, 26.987070>,  <37.254803, 32.439140, 26.848049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882465, 32.484272, 26.987070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345716, 0.036083, -0.937645,
		-0.118337, -0.992959, 0.005420,
		-0.930848, 0.112831, 0.347551,
		36.603210, 32.518120, 27.091335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849152, 31.939209, 26.391424>,  <37.254803, 32.439140, 26.848049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849152, 31.939209, 26.391424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594971, 32.212845, 26.534657>,  <36.442463, 32.377026, 26.620596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594971, 32.212845, 26.534657>,  <36.849152, 31.939209, 26.391424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594971, 32.212845, 26.534657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354691, 0.153309, -0.922329,
		-0.685852, -0.713105, 0.145219,
		-0.635454, 0.684089, 0.358079,
		36.404335, 32.418072, 26.642080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240551, 31.763115, 25.981356>,  <36.849152, 31.939209, 26.391424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240551, 31.763115, 25.981356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196064, 32.130688, 26.132719>,  <36.169373, 32.351231, 26.223537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196064, 32.130688, 26.132719>,  <36.240551, 31.763115, 25.981356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196064, 32.130688, 26.132719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422438, 0.300942, -0.854974,
		-0.899542, -0.254942, 0.354722,
		-0.111218, 0.918933, 0.378408,
		36.162697, 32.406368, 26.246241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.466019, 31.956755, 25.774576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685558, 32.287323, 25.824854>,  <35.817280, 32.485664, 25.855021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685558, 32.287323, 25.824854>,  <35.466019, 31.956755, 25.774576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685558, 32.287323, 25.824854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256013, 0.309319, -0.915849,
		-0.795754, 0.470482, 0.381343,
		0.548847, 0.826419, 0.125692,
		35.850212, 32.535248, 25.862562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013390, 32.525414, 25.577969>,  <35.466019, 31.956755, 25.774576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013390, 32.525414, 25.577969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380047, 32.684998, 25.587751>,  <35.600040, 32.780746, 25.593622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380047, 32.684998, 25.587751>,  <35.013390, 32.525414, 25.577969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380047, 32.684998, 25.587751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166324, 0.436356, -0.884268,
		-0.363459, 0.806490, 0.466338,
		0.916642, 0.398959, 0.024459,
		35.655041, 32.804684, 25.595089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939789, 33.259537, 25.524305>,  <35.013390, 32.525414, 25.577969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939789, 33.259537, 25.524305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299992, 33.178940, 25.370171>,  <35.516113, 33.130581, 25.277691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299992, 33.178940, 25.370171>,  <34.939789, 33.259537, 25.524305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299992, 33.178940, 25.370171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257376, 0.467278, -0.845819,
		0.350488, 0.860843, 0.368928,
		0.900509, -0.201496, -0.385335,
		35.570145, 33.118492, 25.254570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128853, 33.837265, 25.090525>,  <34.939789, 33.259537, 25.524305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128853, 33.837265, 25.090525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403652, 33.569622, 24.977154>,  <35.568531, 33.409035, 24.909132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403652, 33.569622, 24.977154>,  <35.128853, 33.837265, 25.090525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403652, 33.569622, 24.977154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023257, 0.410086, -0.911750,
		0.726287, 0.619779, 0.297290,
		0.686998, -0.669106, -0.283426,
		35.609753, 33.368889, 24.892126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509037, 34.385677, 24.682192>,  <35.128853, 33.837265, 25.090525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509037, 34.385677, 24.682192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614017, 34.013138, 24.581224>,  <35.677006, 33.789616, 24.520643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614017, 34.013138, 24.581224>,  <35.509037, 34.385677, 24.682192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614017, 34.013138, 24.581224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147310, 0.297193, -0.943385,
		0.953635, 0.210408, 0.215195,
		0.262450, -0.931346, -0.252419,
		35.692753, 33.733734, 24.505499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956478, 34.491119, 24.267979>,  <35.509037, 34.385677, 24.682192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956478, 34.491119, 24.267979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882965, 34.105259, 24.192436>,  <35.838856, 33.873741, 24.147110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882965, 34.105259, 24.192436>,  <35.956478, 34.491119, 24.267979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882965, 34.105259, 24.192436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224500, 0.145860, -0.963496,
		0.956987, -0.219473, 0.189758,
		-0.183783, -0.964654, -0.188857,
		35.827831, 33.815865, 24.135778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424858, 34.172153, 23.823437>,  <35.956478, 34.491119, 24.267979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424858, 34.172153, 23.823437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106678, 33.931732, 23.792461>,  <35.915771, 33.787479, 23.773876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106678, 33.931732, 23.792461>,  <36.424858, 34.172153, 23.823437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106678, 33.931732, 23.792461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111661, -0.019766, -0.993550,
		0.595641, -0.798968, 0.082837,
		-0.795452, -0.601049, -0.077440,
		35.868042, 33.751419, 23.769230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583904, 33.414181, 23.573259>,  <36.424858, 34.172153, 23.823437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583904, 33.414181, 23.573259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214581, 33.519444, 23.461374>,  <35.992985, 33.582603, 23.394243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214581, 33.519444, 23.461374>,  <36.583904, 33.414181, 23.573259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214581, 33.519444, 23.461374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282788, -0.026933, -0.958804,
		-0.259852, -0.964376, -0.049551,
		-0.923313, 0.263160, -0.279713,
		35.937588, 33.598392, 23.377460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464371, 32.947498, 23.032492>,  <36.583904, 33.414181, 23.573259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464371, 32.947498, 23.032492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194027, 33.241314, 23.008284>,  <36.031818, 33.417603, 22.993759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194027, 33.241314, 23.008284>,  <36.464371, 32.947498, 23.032492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194027, 33.241314, 23.008284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137975, 0.045435, -0.989393,
		-0.723999, -0.677043, -0.132055,
		-0.675861, 0.734540, -0.060520,
		35.991268, 33.461678, 22.990128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094997, 32.717613, 22.469482>,  <36.464371, 32.947498, 23.032492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094997, 32.717613, 22.469482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.027927, 33.108467, 22.521780>,  <35.987686, 33.342979, 22.553160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.027927, 33.108467, 22.521780>,  <36.094997, 32.717613, 22.469482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027927, 33.108467, 22.521780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248613, 0.170249, -0.953523,
		-0.953979, -0.127381, -0.271475,
		-0.167679, 0.977133, 0.130745,
		35.977623, 33.401608, 22.561003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730297, 32.781738, 21.945475>,  <36.094997, 32.717613, 22.469482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730297, 32.781738, 21.945475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827374, 33.157436, 22.042562>,  <35.885620, 33.382854, 22.100815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827374, 33.157436, 22.042562>,  <35.730297, 32.781738, 21.945475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827374, 33.157436, 22.042562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065978, 0.233640, -0.970082,
		-0.967856, 0.251449, -0.005266,
		0.242696, 0.939247, 0.242720,
		35.900181, 33.439209, 22.115379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296101, 33.261108, 21.542976>,  <35.730297, 32.781738, 21.945475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296101, 33.261108, 21.542976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604084, 33.480137, 21.674019>,  <35.788876, 33.611553, 21.752644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604084, 33.480137, 21.674019>,  <35.296101, 33.261108, 21.542976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604084, 33.480137, 21.674019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049124, 0.461025, -0.886026,
		-0.636200, 0.698297, 0.328072,
		0.769959, 0.547574, 0.327607,
		35.835072, 33.644409, 21.772301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220448, 33.942554, 21.245796>,  <35.296101, 33.261108, 21.542976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220448, 33.942554, 21.245796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.605038, 33.967583, 21.352869>,  <35.835793, 33.982601, 21.417112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.605038, 33.967583, 21.352869>,  <35.220448, 33.942554, 21.245796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605038, 33.967583, 21.352869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109593, 0.805775, -0.581993,
		-0.252108, 0.588907, 0.767874,
		0.961473, 0.062571, 0.267682,
		35.893478, 33.986355, 21.433174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349148, 34.665543, 21.378977>,  <35.220448, 33.942554, 21.245796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349148, 34.665543, 21.378977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695454, 34.487095, 21.288267>,  <35.903236, 34.380028, 21.233841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695454, 34.487095, 21.288267>,  <35.349148, 34.665543, 21.378977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695454, 34.487095, 21.288267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217221, 0.743228, -0.632794,
		0.450844, 0.498592, 0.740368,
		0.865768, -0.446115, -0.226775,
		35.955185, 34.353260, 21.220234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801235, 35.166611, 21.336142>,  <35.349148, 34.665543, 21.378977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801235, 35.166611, 21.336142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.996098, 34.870419, 21.150940>,  <36.113014, 34.692703, 21.039818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.996098, 34.870419, 21.150940>,  <35.801235, 35.166611, 21.336142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996098, 34.870419, 21.150940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307678, 0.641700, -0.702535,
		0.817322, 0.199786, 0.540436,
		0.487154, -0.740478, -0.463005,
		36.142242, 34.648273, 21.012039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591652, 35.381016, 21.196295>,  <35.801235, 35.166611, 21.336142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591652, 35.381016, 21.196295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505447, 35.074879, 20.953707>,  <36.453724, 34.891197, 20.808155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505447, 35.074879, 20.953707>,  <36.591652, 35.381016, 21.196295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505447, 35.074879, 20.953707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215167, 0.568580, -0.793990,
		0.952502, -0.301602, 0.042145,
		-0.215507, -0.765345, -0.606468,
		36.440796, 34.845276, 20.771767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020287, 35.468292, 20.666414>,  <36.591652, 35.381016, 21.196295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020287, 35.468292, 20.666414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769676, 35.224178, 20.472498>,  <36.619308, 35.077709, 20.356148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769676, 35.224178, 20.472498>,  <37.020287, 35.468292, 20.666414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769676, 35.224178, 20.472498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101341, 0.552934, -0.827039,
		0.772785, -0.567289, -0.284580,
		-0.626524, -0.610284, -0.484789,
		36.581718, 35.041092, 20.327061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366062, 35.232853, 20.132164>,  <37.020287, 35.468292, 20.666414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366062, 35.232853, 20.132164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978634, 35.198509, 20.038790>,  <36.746178, 35.177902, 19.982765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978634, 35.198509, 20.038790>,  <37.366062, 35.232853, 20.132164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978634, 35.198509, 20.038790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168016, 0.466152, -0.868604,
		0.183395, -0.880528, -0.437076,
		-0.968575, -0.085862, -0.233433,
		36.688061, 35.172749, 19.968760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332718, 35.096943, 19.326616>,  <37.366062, 35.232853, 20.132164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332718, 35.096943, 19.326616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969257, 35.205795, 19.453297>,  <36.751183, 35.271107, 19.529305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969257, 35.205795, 19.453297>,  <37.332718, 35.096943, 19.326616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969257, 35.205795, 19.453297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136620, 0.522959, -0.841338,
		-0.394576, -0.807749, -0.438008,
		-0.908650, 0.272131, 0.316702,
		36.696663, 35.287434, 19.548307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894920, 34.995213, 18.767969>,  <37.332718, 35.096943, 19.326616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894920, 34.995213, 18.767969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714523, 35.264687, 19.002150>,  <36.606285, 35.426373, 19.142658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714523, 35.264687, 19.002150>,  <36.894920, 34.995213, 18.767969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714523, 35.264687, 19.002150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101956, 0.612769, -0.783658,
		-0.886684, -0.413116, -0.207670,
		-0.450995, 0.673684, 0.585452,
		36.579224, 35.466793, 19.177786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371918, 35.248222, 18.392174>,  <36.894920, 34.995213, 18.767969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371918, 35.248222, 18.392174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445644, 35.533901, 18.662268>,  <36.489880, 35.705311, 18.824324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445644, 35.533901, 18.662268>,  <36.371918, 35.248222, 18.392174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445644, 35.533901, 18.662268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019306, 0.689505, -0.724023,
		-0.982677, 0.120414, 0.140877,
		0.184318, 0.714201, 0.675236,
		36.500938, 35.748161, 18.864840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897617, 35.773113, 18.206535>,  <36.371918, 35.248222, 18.392174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897617, 35.773113, 18.206535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135078, 35.979156, 18.453838>,  <36.277554, 36.102783, 18.602221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135078, 35.979156, 18.453838>,  <35.897617, 35.773113, 18.206535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135078, 35.979156, 18.453838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085996, 0.804495, -0.587701,
		-0.800115, 0.295722, 0.521886,
		0.593651, 0.515108, 0.618257,
		36.313175, 36.133690, 18.639315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504597, 36.358719, 18.384321>,  <35.897617, 35.773113, 18.206535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504597, 36.358719, 18.384321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899380, 36.421669, 18.370731>,  <36.136250, 36.459438, 18.362577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899380, 36.421669, 18.370731>,  <35.504597, 36.358719, 18.384321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899380, 36.421669, 18.370731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127616, 0.636048, -0.761024,
		-0.098156, 0.755432, 0.647834,
		0.986955, 0.157373, -0.033973,
		36.195465, 36.468880, 18.360538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505520, 36.772648, 17.850800>,  <35.504597, 36.358719, 18.384321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505520, 36.772648, 17.850800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892647, 36.736858, 17.944878>,  <36.124924, 36.715385, 18.001326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892647, 36.736858, 17.944878>,  <35.505520, 36.772648, 17.850800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892647, 36.736858, 17.944878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244702, 0.552595, -0.796718,
		-0.058685, 0.828634, 0.556707,
		0.967821, -0.089472, 0.235197,
		36.182995, 36.710018, 18.015436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095394, 37.393520, 18.168863>,  <35.505520, 36.772648, 17.850800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095394, 37.393520, 18.168863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703243, 37.457031, 18.215607>,  <34.467953, 37.495140, 18.243652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703243, 37.457031, 18.215607>,  <35.095394, 37.393520, 18.168863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703243, 37.457031, 18.215607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014646, -0.649770, 0.759990,
		0.196603, 0.743362, 0.639343,
		-0.980374, 0.158780, 0.116860,
		34.409130, 37.504665, 18.250664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942394, 37.727795, 18.859180>,  <35.095394, 37.393520, 18.168863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942394, 37.727795, 18.859180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.613678, 37.537003, 18.734507>,  <34.416447, 37.422527, 18.659702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.613678, 37.537003, 18.734507>,  <34.942394, 37.727795, 18.859180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613678, 37.537003, 18.734507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110895, -0.402672, 0.908602,
		-0.558891, 0.781247, 0.278019,
		-0.821793, -0.476978, -0.311686,
		34.367142, 37.393909, 18.641001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419952, 37.794384, 19.452969>,  <34.942394, 37.727795, 18.859180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419952, 37.794384, 19.452969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.301971, 37.471081, 19.249113>,  <34.231182, 37.277100, 19.126801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.301971, 37.471081, 19.249113>,  <34.419952, 37.794384, 19.452969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301971, 37.471081, 19.249113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025255, -0.526584, 0.849748,
		-0.955179, 0.263504, 0.134903,
		-0.294949, -0.808254, -0.509637,
		34.213486, 37.228603, 19.096222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948578, 37.569504, 19.841846>,  <34.419952, 37.794384, 19.452969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948578, 37.569504, 19.841846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996601, 37.243965, 19.614431>,  <34.025414, 37.048641, 19.477983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996601, 37.243965, 19.614431>,  <33.948578, 37.569504, 19.841846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996601, 37.243965, 19.614431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145517, -0.580920, 0.800848,
		-0.982045, -0.013415, -0.188172,
		0.120057, -0.813851, -0.568537,
		34.032619, 36.999809, 19.443871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342621, 37.258572, 20.095284>,  <33.948578, 37.569504, 19.841846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342621, 37.258572, 20.095284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598644, 37.003849, 19.923326>,  <33.752258, 36.851017, 19.820152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598644, 37.003849, 19.923326>,  <33.342621, 37.258572, 20.095284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598644, 37.003849, 19.923326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242253, -0.698242, 0.673626,
		-0.729141, -0.327012, -0.601180,
		0.640052, -0.636806, -0.429897,
		33.790661, 36.812809, 19.794359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947559, 36.712429, 19.828327>,  <33.342621, 37.258572, 20.095284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947559, 36.712429, 19.828327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.318806, 36.572418, 19.879055>,  <33.541553, 36.488411, 19.909492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.318806, 36.572418, 19.879055>,  <32.947559, 36.712429, 19.828327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318806, 36.572418, 19.879055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353982, -0.724169, 0.591842,
		-0.115320, -0.594190, -0.796015,
		0.928115, -0.350026, 0.126821,
		33.597240, 36.467411, 19.917101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815044, 36.014122, 20.040070>,  <32.947559, 36.712429, 19.828327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815044, 36.014122, 20.040070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203060, 36.072605, 20.117685>,  <33.435871, 36.107693, 20.164255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203060, 36.072605, 20.117685>,  <32.815044, 36.014122, 20.040070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203060, 36.072605, 20.117685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054088, -0.648664, 0.759150,
		0.236857, -0.746900, -0.621321,
		0.970038, 0.146204, 0.194039,
		33.494072, 36.116467, 20.175898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139988, 35.375580, 20.173397>,  <32.815044, 36.014122, 20.040070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139988, 35.375580, 20.173397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.382938, 35.630287, 20.363394>,  <33.528709, 35.783112, 20.477392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.382938, 35.630287, 20.363394>,  <33.139988, 35.375580, 20.173397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382938, 35.630287, 20.363394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054352, -0.563203, 0.824529,
		0.792549, -0.526620, -0.307469,
		0.607381, 0.636768, 0.474989,
		33.565151, 35.821316, 20.505890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574024, 34.929817, 20.635931>,  <33.139988, 35.375580, 20.173397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574024, 34.929817, 20.635931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.662842, 35.290104, 20.785280>,  <33.716133, 35.506275, 20.874889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.662842, 35.290104, 20.785280>,  <33.574024, 34.929817, 20.635931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662842, 35.290104, 20.785280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106449, -0.403035, 0.908973,
		0.969209, -0.162084, -0.185371,
		0.222041, 0.900717, 0.373372,
		33.729454, 35.560318, 20.897291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219860, 34.983082, 20.966915>,  <33.574024, 34.929817, 20.635931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219860, 34.983082, 20.966915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005009, 35.275787, 21.134733>,  <33.876099, 35.451408, 21.235424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005009, 35.275787, 21.134733>,  <34.219860, 34.983082, 20.966915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005009, 35.275787, 21.134733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006769, -0.501110, 0.865357,
		0.843472, 0.461970, 0.274115,
		-0.537131, 0.731759, 0.419546,
		33.843868, 35.495316, 21.260597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493736, 35.119678, 21.664892>,  <34.219860, 34.983082, 20.966915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493736, 35.119678, 21.664892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123734, 35.269680, 21.689352>,  <33.901733, 35.359680, 21.704027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123734, 35.269680, 21.689352>,  <34.493736, 35.119678, 21.664892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123734, 35.269680, 21.689352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129155, -0.461682, 0.877592,
		0.357330, 0.803880, 0.475492,
		-0.925005, 0.375002, 0.061147,
		33.846233, 35.382179, 21.707697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363579, 35.354053, 22.302891>,  <34.493736, 35.119678, 21.664892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363579, 35.354053, 22.302891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.993702, 35.289494, 22.164970>,  <33.771774, 35.250759, 22.082218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.993702, 35.289494, 22.164970>,  <34.363579, 35.354053, 22.302891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993702, 35.289494, 22.164970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241141, -0.452532, 0.858526,
		-0.294598, 0.877021, 0.379535,
		-0.924697, -0.161398, -0.344800,
		33.716293, 35.241074, 22.061531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955860, 35.734905, 22.852163>,  <34.363579, 35.354053, 22.302891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955860, 35.734905, 22.852163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.746075, 35.467670, 22.641037>,  <33.620201, 35.307327, 22.514360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.746075, 35.467670, 22.641037>,  <33.955860, 35.734905, 22.852163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746075, 35.467670, 22.641037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380834, -0.370375, 0.847224,
		-0.761512, 0.645351, -0.060182,
		-0.524467, -0.668091, -0.527816,
		33.588734, 35.267242, 22.482693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389572, 35.675880, 23.340816>,  <33.955860, 35.734905, 22.852163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389572, 35.675880, 23.340816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350929, 35.369457, 23.086628>,  <33.327744, 35.185604, 22.934114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350929, 35.369457, 23.086628>,  <33.389572, 35.675880, 23.340816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350929, 35.369457, 23.086628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307922, -0.584132, 0.750982,
		-0.946494, 0.268224, -0.179456,
		-0.096606, -0.766059, -0.635469,
		33.321949, 35.139641, 22.895987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786560, 35.238316, 23.563017>,  <33.389572, 35.675880, 23.340816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786560, 35.238316, 23.563017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.010231, 34.980968, 23.353868>,  <33.144432, 34.826561, 23.228378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.010231, 34.980968, 23.353868>,  <32.786560, 35.238316, 23.563017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010231, 34.980968, 23.353868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158738, -0.702108, 0.694152,
		-0.813711, -0.305152, -0.494729,
		0.559175, -0.643371, -0.522873,
		33.177982, 34.787956, 23.197006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381271, 34.647751, 23.565195>,  <32.786560, 35.238316, 23.563017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381271, 34.647751, 23.565195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757359, 34.526360, 23.503380>,  <32.983013, 34.453526, 23.466290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757359, 34.526360, 23.503380>,  <32.381271, 34.647751, 23.565195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757359, 34.526360, 23.503380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126281, -0.732102, 0.669388,
		-0.316285, -0.609858, -0.726662,
		0.940222, -0.303481, -0.154539,
		33.039425, 34.435314, 23.457018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305660, 33.942261, 23.537872>,  <32.381271, 34.647751, 23.565195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305660, 33.942261, 23.537872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.705166, 33.948311, 23.556843>,  <32.944870, 33.951942, 23.568224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.705166, 33.948311, 23.556843>,  <32.305660, 33.942261, 23.537872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705166, 33.948311, 23.556843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026362, -0.647399, 0.761695,
		0.042226, -0.762001, -0.646198,
		0.998760, 0.015128, 0.047425,
		33.004795, 33.952850, 23.571070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512512, 33.205948, 23.578196>,  <32.305660, 33.942261, 23.537872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512512, 33.205948, 23.578196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804138, 33.434280, 23.729256>,  <32.979115, 33.571281, 23.819891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804138, 33.434280, 23.729256>,  <32.512512, 33.205948, 23.578196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804138, 33.434280, 23.729256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038348, -0.584957, 0.810157,
		0.683372, -0.576173, -0.448361,
		0.729062, 0.570832, 0.377649,
		33.022858, 33.605530, 23.842550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081684, 32.736092, 23.784660>,  <32.512512, 33.205948, 23.578196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081684, 32.736092, 23.784660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137379, 33.071262, 23.995752>,  <33.170795, 33.272366, 24.122408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137379, 33.071262, 23.995752>,  <33.081684, 32.736092, 23.784660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137379, 33.071262, 23.995752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050118, -0.538200, 0.841326,
		0.988990, -0.090695, -0.116933,
		0.139237, 0.837923, 0.527728,
		33.179150, 33.322639, 24.154072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588318, 32.597916, 24.367727>,  <33.081684, 32.736092, 23.784660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588318, 32.597916, 24.367727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410679, 32.930538, 24.501165>,  <33.304096, 33.130112, 24.581228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410679, 32.930538, 24.501165>,  <33.588318, 32.597916, 24.367727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410679, 32.930538, 24.501165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027249, -0.384691, 0.922643,
		0.895562, 0.400657, 0.193501,
		-0.444102, 0.831557, 0.333597,
		33.277447, 33.180004, 24.601244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.789879, 31.644329, 28.262846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482002, 31.870390, 28.381630>,  <37.297276, 32.006027, 28.452900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482002, 31.870390, 28.381630>,  <37.789879, 31.644329, 28.262846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482002, 31.870390, 28.381630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027921, -0.434901, 0.900045,
		0.637808, 0.701046, 0.318959,
		-0.769689, 0.565150, 0.296957,
		37.251095, 32.039936, 28.470716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016758, 31.952637, 28.808460>,  <37.789879, 31.644329, 28.262846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016758, 31.952637, 28.808460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.619667, 31.989817, 28.839058>,  <37.381413, 32.012123, 28.857416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.619667, 31.989817, 28.839058>,  <38.016758, 31.952637, 28.808460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619667, 31.989817, 28.839058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062757, -0.142621, 0.987786,
		0.102725, 0.985403, 0.135750,
		-0.992728, 0.092951, 0.076492,
		37.321850, 32.017700, 28.862005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940544, 32.471115, 29.382963>,  <38.016758, 31.952637, 28.808460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940544, 32.471115, 29.382963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.589676, 32.282761, 29.345354>,  <37.379154, 32.169750, 29.322788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.589676, 32.282761, 29.345354>,  <37.940544, 32.471115, 29.382963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589676, 32.282761, 29.345354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026316, -0.148373, 0.988581,
		-0.479455, 0.869630, 0.117757,
		-0.877172, -0.470882, -0.094023,
		37.326523, 32.141495, 29.317146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550137, 32.748474, 29.967234>,  <37.940544, 32.471115, 29.382963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550137, 32.748474, 29.967234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.358711, 32.416626, 29.852201>,  <37.243858, 32.217518, 29.783182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.358711, 32.416626, 29.852201>,  <37.550137, 32.748474, 29.967234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358711, 32.416626, 29.852201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146601, -0.247431, 0.957751,
		-0.865730, 0.500501, -0.003213,
		-0.478560, -0.829625, -0.287582,
		37.215145, 32.167740, 29.765926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964931, 32.818916, 30.398544>,  <37.550137, 32.748474, 29.967234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964931, 32.818916, 30.398544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.032078, 32.442348, 30.281553>,  <37.072365, 32.216408, 30.211359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.032078, 32.442348, 30.281553>,  <36.964931, 32.818916, 30.398544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032078, 32.442348, 30.281553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083878, -0.281974, 0.955748,
		-0.982235, -0.184969, 0.031631,
		0.167864, -0.941423, -0.292480,
		37.082436, 32.159920, 30.193810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615467, 32.520473, 30.874763>,  <36.964931, 32.818916, 30.398544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615467, 32.520473, 30.874763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.855289, 32.238003, 30.724113>,  <36.999184, 32.068520, 30.633724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.855289, 32.238003, 30.724113>,  <36.615467, 32.520473, 30.874763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855289, 32.238003, 30.724113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223861, -0.303827, 0.926054,
		-0.768386, -0.639534, -0.024076,
		0.599557, -0.706177, -0.376623,
		37.035156, 32.026150, 30.611126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426311, 31.988770, 31.241634>,  <36.615467, 32.520473, 30.874763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426311, 31.988770, 31.241634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.789555, 31.896376, 31.101933>,  <37.007500, 31.840939, 31.018110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.789555, 31.896376, 31.101933>,  <36.426311, 31.988770, 31.241634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789555, 31.896376, 31.101933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234622, -0.410163, 0.881316,
		-0.346822, -0.882277, -0.318280,
		0.908112, -0.230984, -0.349255,
		37.061989, 31.827080, 30.997156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581429, 31.191135, 31.369934>,  <36.426311, 31.988770, 31.241634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581429, 31.191135, 31.369934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.945126, 31.353615, 31.333548>,  <37.163345, 31.451103, 31.311716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.945126, 31.353615, 31.333548>,  <36.581429, 31.191135, 31.369934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945126, 31.353615, 31.333548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330616, -0.571935, 0.750722,
		0.252916, -0.712666, -0.654325,
		0.909245, 0.406200, -0.090967,
		37.217899, 31.475475, 31.306257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990334, 30.667191, 31.493679>,  <36.581429, 31.191135, 31.369934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990334, 30.667191, 31.493679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.234608, 30.980873, 31.537645>,  <37.381172, 31.169083, 31.564026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.234608, 30.980873, 31.537645>,  <36.990334, 30.667191, 31.493679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234608, 30.980873, 31.537645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313384, -0.366813, 0.875921,
		0.727224, -0.500466, -0.469766,
		0.610685, 0.784208, 0.109917,
		37.417812, 31.216135, 31.570621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620461, 30.423908, 31.620398>,  <36.990334, 30.667191, 31.493679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620461, 30.423908, 31.620398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.631775, 30.795067, 31.769102>,  <37.638565, 31.017763, 31.858324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.631775, 30.795067, 31.769102>,  <37.620461, 30.423908, 31.620398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631775, 30.795067, 31.769102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388751, -0.352842, 0.851102,
		0.920908, 0.120448, -0.370702,
		0.028286, 0.927898, 0.371760,
		37.640263, 31.073437, 31.880630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322002, 30.505136, 31.921076>,  <37.620461, 30.423908, 31.620398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322002, 30.505136, 31.921076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.072731, 30.775963, 32.077656>,  <37.923168, 30.938457, 32.171604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.072731, 30.775963, 32.077656>,  <38.322002, 30.505136, 31.921076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072731, 30.775963, 32.077656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379354, -0.176010, 0.908356,
		0.683914, 0.714566, -0.147161,
		-0.623179, 0.677064, 0.391449,
		37.885777, 30.979082, 32.195091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670624, 30.735523, 32.525833>,  <38.322002, 30.505136, 31.921076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670624, 30.735523, 32.525833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.279495, 30.811064, 32.562035>,  <38.044819, 30.856388, 32.583755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.279495, 30.811064, 32.562035>,  <38.670624, 30.735523, 32.525833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279495, 30.811064, 32.562035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012895, -0.377063, 0.926098,
		0.209023, 0.906729, 0.366266,
		-0.977826, 0.188853, 0.090507,
		37.986149, 30.867720, 32.589188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521973, 31.240660, 33.081799>,  <38.670624, 30.735523, 32.525833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521973, 31.240660, 33.081799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215939, 30.984545, 33.054440>,  <38.032318, 30.830875, 33.038025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215939, 30.984545, 33.054440>,  <38.521973, 31.240660, 33.081799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215939, 30.984545, 33.054440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171983, -0.305547, 0.936517,
		-0.620539, 0.704750, 0.343887,
		-0.765084, -0.640288, -0.068399,
		37.986412, 30.792458, 33.033920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838772, 31.422163, 33.416740>,  <38.521973, 31.240660, 33.081799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838772, 31.422163, 33.416740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.006603, 31.059076, 33.415867>,  <38.107304, 30.841225, 33.415344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.006603, 31.059076, 33.415867>,  <37.838772, 31.422163, 33.416740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006603, 31.059076, 33.415867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403970, 0.184574, 0.895958,
		-0.812872, -0.376809, 0.444133,
		0.419580, -0.907716, -0.002185,
		38.132477, 30.786762, 33.415211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111786, 32.110252, 33.714077>,  <37.838772, 31.422163, 33.416740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111786, 32.110252, 33.714077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.441971, 32.310284, 33.818794>,  <38.640083, 32.430302, 33.881622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.441971, 32.310284, 33.818794>,  <38.111786, 32.110252, 33.714077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441971, 32.310284, 33.818794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456417, 0.864218, -0.211686,
		-0.332103, 0.055254, 0.941623,
		0.825464, 0.500075, 0.261790,
		38.689610, 32.460304, 33.897331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889935, 32.632721, 34.152458>,  <38.111786, 32.110252, 33.714077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889935, 32.632721, 34.152458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.233326, 32.736191, 33.975327>,  <38.439362, 32.798271, 33.869049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.233326, 32.736191, 33.975327>,  <37.889935, 32.632721, 34.152458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233326, 32.736191, 33.975327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456883, 0.777981, -0.431281,
		0.232950, 0.572568, 0.786066,
		0.858482, 0.258673, -0.442828,
		38.490871, 32.813793, 33.842480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012058, 33.328236, 34.395824>,  <37.889935, 32.632721, 34.152458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012058, 33.328236, 34.395824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.252811, 33.291622, 34.078495>,  <38.397263, 33.269653, 33.888096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.252811, 33.291622, 34.078495>,  <38.012058, 33.328236, 34.395824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252811, 33.291622, 34.078495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285171, 0.903278, -0.320572,
		0.745933, 0.419179, 0.517565,
		0.601882, -0.091531, -0.793323,
		38.433376, 33.264164, 33.840500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260578, 34.001907, 34.351425>,  <38.012058, 33.328236, 34.395824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260578, 34.001907, 34.351425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.339432, 33.831219, 33.998371>,  <38.386742, 33.728806, 33.786537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.339432, 33.831219, 33.998371>,  <38.260578, 34.001907, 34.351425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339432, 33.831219, 33.998371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251741, 0.848082, -0.466245,
		0.947505, 0.314106, 0.059757,
		0.197129, -0.426726, -0.882635,
		38.398571, 33.703201, 33.733582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844124, 34.446835, 33.895947>,  <38.260578, 34.001907, 34.351425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844124, 34.446835, 33.895947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.634071, 34.220318, 33.641846>,  <38.508038, 34.084408, 33.489384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.634071, 34.220318, 33.641846>,  <38.844124, 34.446835, 33.895947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634071, 34.220318, 33.641846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168902, 0.800964, -0.574393,
		0.834090, -0.194338, -0.516262,
		-0.525134, -0.566294, -0.635252,
		38.476532, 34.050430, 33.451271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009289, 34.687275, 33.293625>,  <38.844124, 34.446835, 33.895947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009289, 34.687275, 33.293625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.681000, 34.475422, 33.207928>,  <38.484028, 34.348309, 33.156509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.681000, 34.475422, 33.207928>,  <39.009289, 34.687275, 33.293625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681000, 34.475422, 33.207928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186986, 0.603350, -0.775245,
		0.539861, -0.596200, -0.594218,
		-0.820723, -0.529636, -0.214244,
		38.434784, 34.316532, 33.143654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068909, 34.471279, 32.627975>,  <39.009289, 34.687275, 33.293625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068909, 34.471279, 32.627975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.674210, 34.450024, 32.689312>,  <38.437389, 34.437271, 32.726116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.674210, 34.450024, 32.689312>,  <39.068909, 34.471279, 32.627975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674210, 34.450024, 32.689312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156309, 0.565313, -0.809931,
		-0.043651, -0.823163, -0.566125,
		-0.986743, -0.053137, 0.153344,
		38.378185, 34.434082, 32.735313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704266, 34.334362, 31.903957>,  <39.068909, 34.471279, 32.627975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704266, 34.334362, 31.903957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.427044, 34.477085, 32.154514>,  <38.260712, 34.562717, 32.304848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.427044, 34.477085, 32.154514>,  <38.704266, 34.334362, 31.903957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427044, 34.477085, 32.154514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455095, 0.457326, -0.764030,
		-0.559077, -0.814580, -0.154569,
		-0.693053, 0.356808, 0.626391,
		38.219128, 34.584126, 32.342430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019871, 34.120892, 31.491034>,  <38.704266, 34.334362, 31.903957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019871, 34.120892, 31.491034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.948872, 34.398430, 31.770195>,  <37.906273, 34.564953, 31.937693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.948872, 34.398430, 31.770195>,  <38.019871, 34.120892, 31.491034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948872, 34.398430, 31.770195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721474, 0.390563, -0.571783,
		-0.669306, -0.605008, 0.431272,
		-0.177494, 0.693849, 0.697903,
		37.895622, 34.606586, 31.979567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322735, 34.251499, 31.427246>,  <38.019871, 34.120892, 31.491034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322735, 34.251499, 31.427246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485191, 34.571716, 31.603506>,  <37.582664, 34.763847, 31.709263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485191, 34.571716, 31.603506>,  <37.322735, 34.251499, 31.427246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485191, 34.571716, 31.603506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629031, 0.594704, -0.500647,
		-0.662847, -0.073847, 0.745104,
		0.406145, 0.800546, 0.440650,
		37.607037, 34.811878, 31.735701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778866, 34.810253, 31.504349>,  <37.322735, 34.251499, 31.427246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778866, 34.810253, 31.504349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.120525, 35.014355, 31.544506>,  <37.325520, 35.136814, 31.568602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.120525, 35.014355, 31.544506>,  <36.778866, 34.810253, 31.504349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120525, 35.014355, 31.544506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389852, 0.756046, -0.525747,
		-0.344166, 0.409925, 0.844696,
		0.854146, 0.510251, 0.100394,
		37.376770, 35.167431, 31.574625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542358, 35.546646, 31.639542>,  <36.778866, 34.810253, 31.504349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542358, 35.546646, 31.639542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916828, 35.584705, 31.504177>,  <37.141510, 35.607540, 31.422958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916828, 35.584705, 31.504177>,  <36.542358, 35.546646, 31.639542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916828, 35.584705, 31.504177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276938, 0.792570, -0.543266,
		0.216523, 0.602311, 0.768335,
		0.936175, 0.095152, -0.338413,
		37.197681, 35.613251, 31.402653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683323, 36.317272, 31.652670>,  <36.542358, 35.546646, 31.639542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683323, 36.317272, 31.652670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.951542, 36.157528, 31.402592>,  <37.112473, 36.061680, 31.252544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.951542, 36.157528, 31.402592>,  <36.683323, 36.317272, 31.652670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951542, 36.157528, 31.402592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295341, 0.629368, -0.718798,
		0.680540, 0.666636, 0.304074,
		0.670551, -0.399365, -0.625195,
		37.152706, 36.037720, 31.215033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029171, 36.839947, 31.303160>,  <36.683323, 36.317272, 31.652670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029171, 36.839947, 31.303160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.097439, 36.527279, 31.063206>,  <37.138397, 36.339676, 30.919233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.097439, 36.527279, 31.063206>,  <37.029171, 36.839947, 31.303160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097439, 36.527279, 31.063206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132764, 0.585021, -0.800078,
		0.976344, 0.216189, -0.003935,
		0.170666, -0.781673, -0.599883,
		37.148640, 36.292778, 30.883240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068619, 37.535725, 31.243431>,  <37.029171, 36.839947, 31.303160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068619, 37.535725, 31.243431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.742725, 37.743847, 31.141062>,  <36.547188, 37.868721, 31.079639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.742725, 37.743847, 31.141062>,  <37.068619, 37.535725, 31.243431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742725, 37.743847, 31.141062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558034, -0.583692, 0.589832,
		0.157510, 0.623370, 0.765899,
		-0.814732, 0.520302, -0.255924,
		36.498306, 37.899937, 31.064285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791870, 37.679146, 31.928875>,  <37.068619, 37.535725, 31.243431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791870, 37.679146, 31.928875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.491467, 37.735786, 31.670904>,  <36.311222, 37.769772, 31.516121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.491467, 37.735786, 31.670904>,  <36.791870, 37.679146, 31.928875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491467, 37.735786, 31.670904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634498, -0.425078, 0.645540,
		-0.182738, 0.894013, 0.409082,
		-0.751012, 0.141597, -0.644927,
		36.266163, 37.778267, 31.477427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316620, 38.121193, 32.215878>,  <36.791870, 37.679146, 31.928875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316620, 38.121193, 32.215878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.096249, 37.945690, 31.931915>,  <35.964027, 37.840389, 31.761538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.096249, 37.945690, 31.931915>,  <36.316620, 38.121193, 32.215878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096249, 37.945690, 31.931915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728463, -0.162234, 0.665599,
		-0.407209, 0.883838, -0.230242,
		-0.550929, -0.438761, -0.709906,
		35.930969, 37.814060, 31.718943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653526, 38.475567, 32.144333>,  <36.316620, 38.121193, 32.215878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653526, 38.475567, 32.144333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627804, 38.097443, 32.016426>,  <35.612370, 37.870567, 31.939684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627804, 38.097443, 32.016426>,  <35.653526, 38.475567, 32.144333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627804, 38.097443, 32.016426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737577, -0.170811, 0.653302,
		-0.672194, 0.277862, -0.686256,
		-0.064307, -0.945313, -0.319762,
		35.608513, 37.813850, 31.920498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008152, 38.284866, 32.350681>,  <35.653526, 38.475567, 32.144333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008152, 38.284866, 32.350681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.082291, 37.918488, 32.208305>,  <35.126774, 37.698662, 32.122879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.082291, 37.918488, 32.208305>,  <35.008152, 38.284866, 32.350681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082291, 37.918488, 32.208305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686448, -0.379871, 0.620071,
		-0.703161, 0.129405, -0.699156,
		0.185349, -0.915944, -0.355940,
		35.137894, 37.643703, 32.101524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372757, 38.034904, 32.217255>,  <35.008152, 38.284866, 32.350681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372757, 38.034904, 32.217255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.590420, 37.710510, 32.303226>,  <34.721020, 37.515873, 32.354809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.590420, 37.710510, 32.303226>,  <34.372757, 38.034904, 32.217255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590420, 37.710510, 32.303226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756273, -0.363237, 0.544160,
		-0.363237, -0.458653, -0.810985,
		-0.544160, 0.810985, -0.214926,
		34.753666, 37.467216, 32.367702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949459, 37.509388, 32.172226>,  <34.372757, 38.034904, 32.217255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949459, 37.509388, 32.172226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.250977, 37.361156, 32.389290>,  <34.431885, 37.272217, 32.519527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.250977, 37.361156, 32.389290>,  <33.949459, 37.509388, 32.172226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250977, 37.361156, 32.389290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652560, -0.519230, 0.551876,
		0.077253, -0.770114, -0.633211,
		0.753789, -0.370574, 0.542657,
		34.477112, 37.249985, 32.552086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767170, 36.801914, 32.285789>,  <33.949459, 37.509388, 32.172226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767170, 36.801914, 32.285789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.021412, 36.860119, 32.589062>,  <34.173958, 36.895042, 32.771023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.021412, 36.860119, 32.589062>,  <33.767170, 36.801914, 32.285789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021412, 36.860119, 32.589062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611881, -0.503891, 0.609669,
		0.470754, -0.851422, -0.231238,
		0.635604, 0.145514, 0.758178,
		34.212093, 36.903774, 32.816517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784863, 36.123692, 32.702854>,  <33.767170, 36.801914, 32.285789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784863, 36.123692, 32.702854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.991016, 36.358109, 32.952950>,  <34.114708, 36.498760, 33.103008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.991016, 36.358109, 32.952950>,  <33.784863, 36.123692, 32.702854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991016, 36.358109, 32.952950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304415, -0.556816, 0.772844,
		0.801066, -0.588647, -0.108575,
		0.515388, 0.586047, 0.625239,
		34.145634, 36.533924, 33.140522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216141, 35.701664, 33.020718>,  <33.784863, 36.123692, 32.702854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216141, 35.701664, 33.020718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.122627, 36.031136, 33.227364>,  <34.066521, 36.228821, 33.351353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.122627, 36.031136, 33.227364>,  <34.216141, 35.701664, 33.020718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122627, 36.031136, 33.227364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361967, -0.566879, 0.740019,
		0.902400, -0.013996, 0.430671,
		-0.233781, 0.823682, 0.516618,
		34.052494, 36.278240, 33.382347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505733, 35.561001, 33.737877>,  <34.216141, 35.701664, 33.020718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505733, 35.561001, 33.737877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.219551, 35.839298, 33.763393>,  <34.047840, 36.006275, 33.778706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.219551, 35.839298, 33.763393>,  <34.505733, 35.561001, 33.737877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219551, 35.839298, 33.763393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349690, -0.435650, 0.829413,
		0.604848, 0.571100, 0.554981,
		-0.715455, 0.695740, 0.063794,
		34.004913, 36.048019, 33.782532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484451, 35.646229, 34.405941>,  <34.505733, 35.561001, 33.737877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484451, 35.646229, 34.405941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.133972, 35.772087, 34.259911>,  <33.923683, 35.847603, 34.172291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.133972, 35.772087, 34.259911>,  <34.484451, 35.646229, 34.405941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133972, 35.772087, 34.259911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477684, -0.466339, 0.744544,
		0.064017, 0.826757, 0.558905,
		-0.876196, 0.314643, -0.365075,
		33.871113, 35.866482, 34.150387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.626930, 39.570370, 28.095772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241634, 39.486954, 28.028036>,  <38.010456, 39.436905, 27.987394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241634, 39.486954, 28.028036>,  <38.626930, 39.570370, 28.095772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241634, 39.486954, 28.028036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059999, -0.447433, 0.892303,
		-0.261853, 0.869663, 0.418473,
		-0.963241, -0.208544, -0.169341,
		37.952663, 39.424389, 27.977234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320877, 39.917938, 28.748652>,  <38.626930, 39.570370, 28.095772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320877, 39.917938, 28.748652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055408, 39.667717, 28.584591>,  <37.896126, 39.517586, 28.486155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055408, 39.667717, 28.584591>,  <38.320877, 39.917938, 28.748652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055408, 39.667717, 28.584591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321945, -0.256060, 0.911474,
		-0.675196, 0.736968, -0.031452,
		-0.663673, -0.625549, -0.410154,
		37.856308, 39.480053, 28.461544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696060, 40.140450, 28.997850>,  <38.320877, 39.917938, 28.748652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696060, 40.140450, 28.997850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651569, 39.753277, 28.907753>,  <37.624874, 39.520973, 28.853695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651569, 39.753277, 28.907753>,  <37.696060, 40.140450, 28.997850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651569, 39.753277, 28.907753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481952, -0.145676, 0.864003,
		-0.869110, 0.204656, -0.450294,
		-0.111226, -0.967933, -0.225243,
		37.618202, 39.462898, 28.840179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015526, 39.954437, 29.191980>,  <37.696060, 40.140450, 28.997850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015526, 39.954437, 29.191980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205547, 39.603127, 29.170275>,  <37.319561, 39.392338, 29.157251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205547, 39.603127, 29.170275>,  <37.015526, 39.954437, 29.191980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205547, 39.603127, 29.170275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504725, -0.322480, 0.800787,
		-0.720815, -0.353030, -0.596486,
		0.475056, -0.878281, -0.054265,
		37.348064, 39.339642, 29.153996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471680, 39.479111, 29.202505>,  <37.015526, 39.954437, 29.191980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471680, 39.479111, 29.202505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789925, 39.261322, 29.308750>,  <36.980873, 39.130650, 29.372498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789925, 39.261322, 29.308750>,  <36.471680, 39.479111, 29.202505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789925, 39.261322, 29.308750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544616, -0.450815, 0.707219,
		-0.265316, -0.707331, -0.655202,
		0.795613, -0.544471, 0.265616,
		37.028610, 39.097980, 29.388435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137177, 38.866768, 29.307976>,  <36.471680, 39.479111, 29.202505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137177, 38.866768, 29.307976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498062, 38.816330, 29.472954>,  <36.714592, 38.786068, 29.571939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498062, 38.816330, 29.472954>,  <36.137177, 38.866768, 29.307976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498062, 38.816330, 29.472954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404364, -0.579895, 0.707256,
		0.149996, -0.804874, -0.574177,
		0.902215, -0.126091, 0.412444,
		36.768726, 38.778503, 29.596687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139111, 38.178551, 29.464396>,  <36.137177, 38.866768, 29.307976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139111, 38.178551, 29.464396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430447, 38.319996, 29.699165>,  <36.605247, 38.404861, 29.840027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430447, 38.319996, 29.699165>,  <36.139111, 38.178551, 29.464396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430447, 38.319996, 29.699165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386707, -0.494992, 0.778100,
		0.565668, -0.793689, -0.223779,
		0.728339, 0.353610, 0.586927,
		36.648949, 38.426079, 29.875244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432854, 37.624302, 29.802107>,  <36.139111, 38.178551, 29.464396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432854, 37.624302, 29.802107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524395, 37.918510, 30.057180>,  <36.579319, 38.095036, 30.210224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524395, 37.918510, 30.057180>,  <36.432854, 37.624302, 29.802107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524395, 37.918510, 30.057180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349254, -0.549418, 0.759053,
		0.908651, -0.396428, 0.131144,
		0.228857, 0.735517, 0.637683,
		36.593052, 38.139164, 30.248486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801514, 37.351685, 30.288010>,  <36.432854, 37.624302, 29.802107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801514, 37.351685, 30.288010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667442, 37.696388, 30.440336>,  <36.587002, 37.903210, 30.531733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667442, 37.696388, 30.440336>,  <36.801514, 37.351685, 30.288010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667442, 37.696388, 30.440336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400575, -0.496192, 0.770282,
		0.852759, 0.105633, 0.511511,
		-0.335175, 0.861763, 0.380818,
		36.566891, 37.954918, 30.554583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505791, 37.275383, 30.261534>,  <36.801514, 37.351685, 30.288010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505791, 37.275383, 30.261534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372028, 36.899128, 30.284746>,  <37.291771, 36.673374, 30.298674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372028, 36.899128, 30.284746>,  <37.505791, 37.275383, 30.261534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372028, 36.899128, 30.284746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369565, 0.074242, -0.926234,
		0.866947, -0.331181, -0.372455,
		-0.334403, -0.940642, 0.058029,
		37.271706, 36.616936, 30.302155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799526, 36.894627, 29.632078>,  <37.505791, 37.275383, 30.261534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799526, 36.894627, 29.632078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468571, 36.716228, 29.768616>,  <37.269997, 36.609192, 29.850538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468571, 36.716228, 29.768616>,  <37.799526, 36.894627, 29.632078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468571, 36.716228, 29.768616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312963, -0.138538, -0.939607,
		0.466346, -0.884250, -0.024953,
		-0.827391, -0.445991, 0.341344,
		37.220352, 36.582432, 29.871019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852119, 36.211197, 29.340603>,  <37.799526, 36.894627, 29.632078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852119, 36.211197, 29.340603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462078, 36.264320, 29.411644>,  <37.228054, 36.296192, 29.454269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462078, 36.264320, 29.411644>,  <37.852119, 36.211197, 29.340603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462078, 36.264320, 29.411644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205870, -0.244338, -0.947584,
		-0.082447, -0.960553, 0.265594,
		-0.975100, 0.132803, 0.177604,
		37.169548, 36.304161, 29.464926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467487, 35.626686, 29.139866>,  <37.852119, 36.211197, 29.340603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467487, 35.626686, 29.139866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189232, 35.912609, 29.168554>,  <37.022278, 36.084164, 29.185768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189232, 35.912609, 29.168554>,  <37.467487, 35.626686, 29.139866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189232, 35.912609, 29.168554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276801, -0.174565, -0.944939,
		-0.662929, -0.677184, 0.319292,
		-0.695634, 0.714807, 0.071721,
		36.980541, 36.127052, 29.190071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901714, 35.332088, 28.882357>,  <37.467487, 35.626686, 29.139866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901714, 35.332088, 28.882357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812012, 35.721092, 28.857252>,  <36.758190, 35.954494, 28.842190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812012, 35.721092, 28.857252>,  <36.901714, 35.332088, 28.882357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812012, 35.721092, 28.857252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227739, -0.114918, -0.966917,
		-0.947546, -0.202546, 0.247249,
		-0.224258, 0.972507, -0.062762,
		36.744736, 36.012844, 28.838423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356594, 35.338287, 28.483227>,  <36.901714, 35.332088, 28.882357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356594, 35.338287, 28.483227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487335, 35.714260, 28.443825>,  <36.565781, 35.939842, 28.420183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487335, 35.714260, 28.443825>,  <36.356594, 35.338287, 28.483227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487335, 35.714260, 28.443825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327758, 0.014974, -0.944643,
		-0.886422, 0.341042, 0.312963,
		0.326849, 0.939929, -0.098506,
		36.585388, 35.996239, 28.414272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786362, 35.673138, 28.132782>,  <36.356594, 35.338287, 28.483227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786362, 35.673138, 28.132782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113731, 35.899475, 28.092766>,  <36.310154, 36.035278, 28.068756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113731, 35.899475, 28.092766>,  <35.786362, 35.673138, 28.132782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113731, 35.899475, 28.092766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172408, 0.075734, -0.982110,
		-0.548143, 0.821028, 0.159538,
		0.818422, 0.565842, -0.100039,
		36.359257, 36.069229, 28.062754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678913, 36.062553, 27.631081>,  <35.786362, 35.673138, 28.132782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678913, 36.062553, 27.631081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076454, 36.106426, 27.637217>,  <36.314980, 36.132751, 27.640898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076454, 36.106426, 27.637217>,  <35.678913, 36.062553, 27.631081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076454, 36.106426, 27.637217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014329, 0.010003, -0.999847,
		-0.109821, 0.993916, 0.008370,
		0.993848, 0.109684, 0.015341,
		36.374607, 36.139332, 27.641819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850979, 36.631466, 27.184353>,  <35.678913, 36.062553, 27.631081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850979, 36.631466, 27.184353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181194, 36.407177, 27.209915>,  <36.379322, 36.272602, 27.225252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181194, 36.407177, 27.209915>,  <35.850979, 36.631466, 27.184353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181194, 36.407177, 27.209915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029078, -0.070828, -0.997065,
		0.563602, 0.824969, -0.042167,
		0.825534, -0.560722, 0.063908,
		36.428856, 36.238960, 27.229088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264397, 36.893700, 26.669573>,  <35.850979, 36.631466, 27.184353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264397, 36.893700, 26.669573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455345, 36.553848, 26.759230>,  <36.569916, 36.349937, 26.813025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455345, 36.553848, 26.759230>,  <36.264397, 36.893700, 26.669573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455345, 36.553848, 26.759230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185925, -0.151642, -0.970792,
		0.858806, 0.505104, 0.085578,
		0.477373, -0.849633, 0.224142,
		36.598557, 36.298958, 26.826473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910061, 36.965977, 26.386206>,  <36.264397, 36.893700, 26.669573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910061, 36.965977, 26.386206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847000, 36.575043, 26.442709>,  <36.809162, 36.340481, 26.476610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847000, 36.575043, 26.442709>,  <36.910061, 36.965977, 26.386206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847000, 36.575043, 26.442709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198434, -0.171483, -0.964996,
		0.967351, -0.124106, 0.220972,
		-0.157654, -0.977339, 0.141257,
		36.799706, 36.281841, 26.485086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480770, 36.536938, 26.149332>,  <36.910061, 36.965977, 26.386206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480770, 36.536938, 26.149332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193962, 36.258469, 26.135340>,  <37.021877, 36.091385, 26.126944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193962, 36.258469, 26.135340>,  <37.480770, 36.536938, 26.149332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193962, 36.258469, 26.135340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220502, -0.178924, -0.958835,
		0.661260, -0.695215, 0.281800,
		-0.717017, -0.696177, -0.034981,
		36.978855, 36.049614, 26.124846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799374, 35.896172, 25.909931>,  <37.480770, 36.536938, 26.149332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799374, 35.896172, 25.909931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411499, 35.832417, 25.835844>,  <37.178776, 35.794163, 25.791391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411499, 35.832417, 25.835844>,  <37.799374, 35.896172, 25.909931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411499, 35.832417, 25.835844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230534, -0.345405, -0.909697,
		0.081015, -0.924820, 0.371678,
		-0.969686, -0.159384, -0.185219,
		37.120594, 35.784603, 25.780279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729942, 35.199173, 25.581732>,  <37.799374, 35.896172, 25.909931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729942, 35.199173, 25.581732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377731, 35.354641, 25.473207>,  <37.166405, 35.447922, 25.408092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377731, 35.354641, 25.473207>,  <37.729942, 35.199173, 25.581732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377731, 35.354641, 25.473207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108476, -0.391959, -0.913565,
		-0.461420, -0.833848, 0.302968,
		-0.880525, 0.388673, -0.271310,
		37.113575, 35.471241, 25.391815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.606266, 36.919865, 24.808014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.980076, 36.779991, 24.834496>,  <33.204361, 36.696068, 24.850384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.980076, 36.779991, 24.834496>,  <32.606266, 36.919865, 24.808014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980076, 36.779991, 24.834496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231306, -0.455399, 0.859714,
		-0.270476, -0.818740, -0.506466,
		0.934527, -0.349681, 0.066205,
		33.260433, 36.675087, 24.854357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631378, 36.177334, 24.897289>,  <32.606266, 36.919865, 24.808014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631378, 36.177334, 24.897289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.983246, 36.306446, 25.036999>,  <33.194366, 36.383915, 25.120825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.983246, 36.306446, 25.036999>,  <32.631378, 36.177334, 24.897289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983246, 36.306446, 25.036999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122126, -0.556469, 0.821844,
		0.459635, -0.765608, -0.450090,
		0.879671, 0.322780, 0.349274,
		33.247147, 36.403278, 25.141781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032234, 35.637028, 25.023943>,  <32.631378, 36.177334, 24.897289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032234, 35.637028, 25.023943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.179035, 35.920567, 25.264889>,  <33.267117, 36.090691, 25.409456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.179035, 35.920567, 25.264889>,  <33.032234, 35.637028, 25.023943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179035, 35.920567, 25.264889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266356, -0.540356, 0.798166,
		0.891272, -0.453370, -0.009504,
		0.367000, 0.708851, 0.602362,
		33.289135, 36.133221, 25.445597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340572, 35.194763, 25.469721>,  <33.032234, 35.637028, 25.023943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340572, 35.194763, 25.469721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.298290, 35.556801, 25.634468>,  <33.272923, 35.774021, 25.733316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.298290, 35.556801, 25.634468>,  <33.340572, 35.194763, 25.469721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298290, 35.556801, 25.634468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112395, -0.422408, 0.899411,
		0.988025, 0.048782, 0.146379,
		-0.105706, 0.905092, 0.411867,
		33.266579, 35.828327, 25.758028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761757, 35.119209, 26.029232>,  <33.340572, 35.194763, 25.469721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761757, 35.119209, 26.029232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.546829, 35.447407, 26.107279>,  <33.417873, 35.644325, 26.154106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.546829, 35.447407, 26.107279>,  <33.761757, 35.119209, 26.029232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546829, 35.447407, 26.107279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239754, -0.370410, 0.897393,
		0.808582, 0.435408, 0.395746,
		-0.537320, 0.820498, 0.195116,
		33.385632, 35.693558, 26.165813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069805, 35.431068, 26.684826>,  <33.761757, 35.119209, 26.029232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069805, 35.431068, 26.684826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693039, 35.551750, 26.625797>,  <33.466980, 35.624161, 26.590380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693039, 35.551750, 26.625797>,  <34.069805, 35.431068, 26.684826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693039, 35.551750, 26.625797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249195, -0.333203, 0.909328,
		0.225176, 0.893281, 0.389031,
		-0.941912, 0.301703, -0.147572,
		33.410465, 35.642262, 26.581526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033230, 35.782684, 27.212364>,  <34.069805, 35.431068, 26.684826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033230, 35.782684, 27.212364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.651257, 35.714554, 27.115131>,  <33.422073, 35.673676, 27.056791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.651257, 35.714554, 27.115131>,  <34.033230, 35.782684, 27.212364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651257, 35.714554, 27.115131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174795, -0.339190, 0.924336,
		-0.239888, 0.925170, 0.294133,
		-0.954935, -0.170324, -0.243083,
		33.364777, 35.663456, 27.042206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565674, 36.097744, 27.745121>,  <34.033230, 35.782684, 27.212364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565674, 36.097744, 27.745121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.343529, 35.823456, 27.556927>,  <33.210239, 35.658882, 27.444010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.343529, 35.823456, 27.556927>,  <33.565674, 36.097744, 27.745121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343529, 35.823456, 27.556927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255084, -0.398016, 0.881201,
		-0.791518, 0.609402, 0.046128,
		-0.555366, -0.685720, -0.470485,
		33.176918, 35.617741, 27.415781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891045, 36.169090, 28.023539>,  <33.565674, 36.097744, 27.745121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891045, 36.169090, 28.023539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.949299, 35.805431, 27.867462>,  <32.984249, 35.587238, 27.773815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.949299, 35.805431, 27.867462>,  <32.891045, 36.169090, 28.023539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949299, 35.805431, 27.867462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261743, -0.415751, 0.871000,
		-0.954087, -0.024716, -0.298509,
		0.145633, -0.909142, -0.390193,
		32.992989, 35.532688, 27.750404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353786, 35.761162, 28.316475>,  <32.891045, 36.169090, 28.023539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353786, 35.761162, 28.316475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.604107, 35.478813, 28.183743>,  <32.754299, 35.309402, 28.104103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.604107, 35.478813, 28.183743>,  <32.353786, 35.761162, 28.316475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604107, 35.478813, 28.183743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382138, -0.648351, 0.658493,
		-0.679957, -0.285280, -0.675480,
		0.625803, -0.705873, -0.331834,
		32.791847, 35.267052, 28.084192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884312, 35.156944, 28.341257>,  <32.353786, 35.761162, 28.316475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884312, 35.156944, 28.341257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.261696, 35.024349, 28.341305>,  <32.488125, 34.944794, 28.341333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.261696, 35.024349, 28.341305>,  <31.884312, 35.156944, 28.341257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261696, 35.024349, 28.341305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204512, -0.581792, 0.787206,
		-0.260877, -0.742722, -0.616690,
		0.943460, -0.331485, 0.000119,
		32.544735, 34.924904, 28.341341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832554, 34.372562, 28.271809>,  <31.884312, 35.156944, 28.341257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832554, 34.372562, 28.271809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.190208, 34.443424, 28.436314>,  <32.404800, 34.485939, 28.535017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.190208, 34.443424, 28.436314>,  <31.832554, 34.372562, 28.271809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190208, 34.443424, 28.436314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202314, -0.659527, 0.723943,
		0.399486, -0.730508, -0.553867,
		0.894136, 0.177150, 0.411264,
		32.458450, 34.496571, 28.559692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092941, 33.703903, 28.423227>,  <31.832554, 34.372562, 28.271809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092941, 33.703903, 28.423227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.307137, 33.958771, 28.644955>,  <32.435654, 34.111691, 28.777992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.307137, 33.958771, 28.644955>,  <32.092941, 33.703903, 28.423227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307137, 33.958771, 28.644955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070516, -0.687794, 0.722473,
		0.841595, -0.347786, -0.413235,
		0.535486, 0.637169, 0.554320,
		32.467781, 34.149921, 28.811251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716091, 33.309208, 28.676786>,  <32.092941, 33.703903, 28.423227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716091, 33.309208, 28.676786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.674957, 33.603268, 28.944809>,  <32.650276, 33.779705, 29.105623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.674957, 33.603268, 28.944809>,  <32.716091, 33.309208, 28.676786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674957, 33.603268, 28.944809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084306, -0.664764, 0.742281,
		0.991120, 0.132820, 0.006381,
		-0.102832, 0.735152, 0.670058,
		32.644108, 33.823814, 29.145826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371376, 32.903362, 28.632864>,  <32.716091, 33.309208, 28.676786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371376, 32.903362, 28.632864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.418388, 32.511513, 28.567722>,  <33.446594, 32.276402, 28.528637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.418388, 32.511513, 28.567722>,  <33.371376, 32.903362, 28.632864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418388, 32.511513, 28.567722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094575, 0.152202, -0.983814,
		0.988556, 0.131028, -0.074760,
		0.117528, -0.979626, -0.162852,
		33.453648, 32.217625, 28.518867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884914, 32.883636, 28.254616>,  <33.371376, 32.903362, 28.632864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884914, 32.883636, 28.254616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.685188, 32.543980, 28.185745>,  <33.565353, 32.340187, 28.144423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.685188, 32.543980, 28.185745>,  <33.884914, 32.883636, 28.254616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685188, 32.543980, 28.185745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008356, 0.193995, -0.980967,
		0.866382, -0.491247, -0.089768,
		-0.499311, -0.849142, -0.172178,
		33.535397, 32.289238, 28.134092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077625, 32.713253, 27.680387>,  <33.884914, 32.883636, 28.254616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077625, 32.713253, 27.680387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759418, 32.471088, 27.690468>,  <33.568497, 32.325790, 27.696516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759418, 32.471088, 27.690468>,  <34.077625, 32.713253, 27.680387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759418, 32.471088, 27.690468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134354, 0.135680, -0.981601,
		0.590854, -0.784262, -0.189275,
		-0.795513, -0.605412, 0.025202,
		33.520763, 32.289463, 27.698029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158100, 32.229435, 27.074413>,  <34.077625, 32.713253, 27.680387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158100, 32.229435, 27.074413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.772449, 32.246853, 27.179157>,  <33.541061, 32.257301, 27.242002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.772449, 32.246853, 27.179157>,  <34.158100, 32.229435, 27.074413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772449, 32.246853, 27.179157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251861, 0.161573, -0.954180,
		-0.083855, -0.985900, -0.144810,
		-0.964124, 0.043541, 0.261859,
		33.483212, 32.259914, 27.257715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889454, 31.786116, 26.665489>,  <34.158100, 32.229435, 27.074413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889454, 31.786116, 26.665489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.573147, 32.002266, 26.780510>,  <33.383362, 32.131954, 26.849522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.573147, 32.002266, 26.780510>,  <33.889454, 31.786116, 26.665489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573147, 32.002266, 26.780510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256238, 0.134399, -0.957225,
		-0.555907, -0.830621, 0.032187,
		-0.790765, 0.540375, 0.287550,
		33.335918, 32.164379, 26.866776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303818, 31.620764, 26.260370>,  <33.889454, 31.786116, 26.665489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303818, 31.620764, 26.260370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202965, 31.981592, 26.400480>,  <33.142452, 32.198090, 26.484547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202965, 31.981592, 26.400480>,  <33.303818, 31.620764, 26.260370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202965, 31.981592, 26.400480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243874, 0.291055, -0.925101,
		-0.936458, -0.318673, 0.146607,
		-0.252134, 0.902072, 0.350277,
		33.127323, 32.252213, 26.505564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878319, 31.865297, 25.773457>,  <33.303818, 31.620764, 26.260370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878319, 31.865297, 25.773457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.944324, 32.201023, 25.980656>,  <32.983929, 32.402458, 26.104975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.944324, 32.201023, 25.980656>,  <32.878319, 31.865297, 25.773457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944324, 32.201023, 25.980656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096401, 0.536407, -0.838436,
		-0.981570, 0.088415, 0.169423,
		0.165010, 0.839315, 0.517998,
		32.993828, 32.452816, 26.136055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368809, 32.309940, 25.642199>,  <32.878319, 31.865297, 25.773457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368809, 32.309940, 25.642199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.682934, 32.541901, 25.728916>,  <32.871407, 32.681076, 25.780947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.682934, 32.541901, 25.728916>,  <32.368809, 32.309940, 25.642199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682934, 32.541901, 25.728916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098105, 0.462312, -0.881274,
		-0.611281, 0.670804, 0.419950,
		0.785309, 0.579905, 0.216793,
		32.918526, 32.715874, 25.793955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175911, 32.911476, 25.402502>,  <32.368809, 32.309940, 25.642199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175911, 32.911476, 25.402502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.575451, 32.929104, 25.410007>,  <32.815174, 32.939682, 25.414511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.575451, 32.929104, 25.410007>,  <32.175911, 32.911476, 25.402502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575451, 32.929104, 25.410007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007978, 0.539346, -0.842047,
		-0.047233, 0.840930, 0.539079,
		0.998852, 0.044073, 0.018766,
		32.875107, 32.942326, 25.415638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215172, 33.634586, 25.144367>,  <32.175911, 32.911476, 25.402502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215172, 33.634586, 25.144367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.571228, 33.453014, 25.128399>,  <32.784863, 33.344070, 25.118818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.571228, 33.453014, 25.128399>,  <32.215172, 33.634586, 25.144367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571228, 33.453014, 25.128399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257886, 0.574053, -0.777147,
		0.375688, 0.681476, 0.628052,
		0.890142, -0.453931, -0.039922,
		32.838272, 33.316833, 25.116423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711117, 34.165455, 25.132330>,  <32.215172, 33.634586, 25.144367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711117, 34.165455, 25.132330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.895927, 33.863979, 24.945360>,  <33.006813, 33.683094, 24.833179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.895927, 33.863979, 24.945360>,  <32.711117, 34.165455, 25.132330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895927, 33.863979, 24.945360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228678, 0.610471, -0.758308,
		0.856877, 0.243469, 0.454405,
		0.462026, -0.753690, -0.467423,
		33.034534, 33.637871, 24.805134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443264, 34.361000, 24.885286>,  <32.711117, 34.165455, 25.132330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443264, 34.361000, 24.885286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.368118, 34.043583, 24.653772>,  <33.323029, 33.853130, 24.514864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.368118, 34.043583, 24.653772>,  <33.443264, 34.361000, 24.885286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368118, 34.043583, 24.653772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195191, 0.547361, -0.813816,
		0.962604, -0.265862, 0.052062,
		-0.187866, -0.793545, -0.578785,
		33.311760, 33.805519, 24.480137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934898, 34.378536, 24.320736>,  <33.443264, 34.361000, 24.885286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934898, 34.378536, 24.320736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645447, 34.143341, 24.176165>,  <33.471775, 34.002224, 24.089422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645447, 34.143341, 24.176165>,  <33.934898, 34.378536, 24.320736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645447, 34.143341, 24.176165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086212, 0.442559, -0.892586,
		0.684780, -0.677063, -0.269559,
		-0.723633, -0.587986, -0.361427,
		33.428356, 33.966946, 24.067738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258152, 33.961426, 23.885706>,  <33.934898, 34.378536, 24.320736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258152, 33.961426, 23.885706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.872971, 33.975399, 23.778744>,  <33.641861, 33.983784, 23.714565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.872971, 33.975399, 23.778744>,  <34.258152, 33.961426, 23.885706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872971, 33.975399, 23.778744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241301, 0.554352, -0.796534,
		0.120416, -0.831549, -0.542242,
		-0.962950, 0.034928, -0.267406,
		33.584084, 33.985878, 23.698523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673969, 33.587700, 23.344254>,  <34.258152, 33.961426, 23.885706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673969, 33.587700, 23.344254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073444, 33.593441, 23.324572>,  <35.313129, 33.596886, 23.312763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073444, 33.593441, 23.324572>,  <34.673969, 33.587700, 23.344254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073444, 33.593441, 23.324572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049951, -0.487387, 0.871756,
		-0.011472, -0.873068, -0.487463,
		0.998686, 0.014349, -0.049202,
		35.373051, 33.597744, 23.309811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736805, 32.996761, 23.549688>,  <34.673969, 33.587700, 23.344254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736805, 32.996761, 23.549688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078156, 33.201450, 23.589462>,  <35.282967, 33.324265, 23.613327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078156, 33.201450, 23.589462>,  <34.736805, 32.996761, 23.549688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078156, 33.201450, 23.589462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070437, -0.302186, 0.950643,
		0.516510, -0.804255, -0.293923,
		0.853379, 0.511720, 0.099433,
		35.334167, 33.354965, 23.619293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297260, 32.659168, 23.973534>,  <34.736805, 32.996761, 23.549688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297260, 32.659168, 23.973534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474354, 33.016094, 24.008749>,  <35.580612, 33.230251, 24.029879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474354, 33.016094, 24.008749>,  <35.297260, 32.659168, 23.973534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474354, 33.016094, 24.008749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308356, -0.243717, 0.919521,
		0.841962, -0.379959, -0.383054,
		0.442737, 0.892319, 0.088038,
		35.607174, 33.283791, 24.035160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006386, 32.472473, 23.963987>,  <35.297260, 32.659168, 23.973534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006386, 32.472473, 23.963987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910965, 32.816422, 24.144527>,  <35.853714, 33.022789, 24.252851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910965, 32.816422, 24.144527>,  <36.006386, 32.472473, 23.963987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910965, 32.816422, 24.144527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404913, -0.334371, 0.851024,
		0.882689, 0.385767, -0.268410,
		-0.238549, 0.859872, 0.451348,
		35.839401, 33.074383, 24.279932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469387, 32.469791, 24.558800>,  <36.006386, 32.472473, 23.963987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469387, 32.469791, 24.558800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.201065, 32.748222, 24.661173>,  <36.040073, 32.915279, 24.722597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.201065, 32.748222, 24.661173>,  <36.469387, 32.469791, 24.558800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201065, 32.748222, 24.661173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107771, -0.249937, 0.962246,
		0.733761, 0.673062, 0.092643,
		-0.670806, 0.696074, 0.255930,
		35.999825, 32.957043, 24.737951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799953, 32.809731, 25.011580>,  <36.469387, 32.469791, 24.558800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799953, 32.809731, 25.011580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.427067, 32.934067, 25.085724>,  <36.203335, 33.008667, 25.130211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.427067, 32.934067, 25.085724>,  <36.799953, 32.809731, 25.011580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427067, 32.934067, 25.085724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149513, -0.135650, 0.979411,
		0.329584, 0.940733, 0.079980,
		-0.932213, 0.310840, 0.185360,
		36.147404, 33.027317, 25.141333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898621, 33.301556, 25.615864>,  <36.799953, 32.809731, 25.011580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898621, 33.301556, 25.615864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.524586, 33.160053, 25.607168>,  <36.300167, 33.075153, 25.601950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.524586, 33.160053, 25.607168>,  <36.898621, 33.301556, 25.615864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524586, 33.160053, 25.607168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039778, -0.165702, 0.985373,
		-0.352185, 0.920543, 0.169017,
		-0.935085, -0.353756, -0.021740,
		36.244061, 33.053925, 25.600647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531628, 33.667278, 26.107103>,  <36.898621, 33.301556, 25.615864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531628, 33.667278, 26.107103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340862, 33.319633, 26.054634>,  <36.226402, 33.111046, 26.023153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340862, 33.319633, 26.054634>,  <36.531628, 33.667278, 26.107103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340862, 33.319633, 26.054634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001342, -0.149958, 0.988691,
		-0.878951, 0.471342, 0.072683,
		-0.476911, -0.869109, -0.131173,
		36.197788, 33.058903, 26.015282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055599, 33.642815, 26.674854>,  <36.531628, 33.667278, 26.107103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055599, 33.642815, 26.674854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.082672, 33.267338, 26.539640>,  <36.098915, 33.042049, 26.458511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.082672, 33.267338, 26.539640>,  <36.055599, 33.642815, 26.674854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082672, 33.267338, 26.539640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002996, -0.338619, 0.940919,
		-0.997702, -0.064700, -0.020107,
		0.067686, -0.938696, -0.338035,
		36.102978, 32.985729, 26.438231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502502, 33.346157, 27.014555>,  <36.055599, 33.642815, 26.674854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502502, 33.346157, 27.014555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.779911, 33.076012, 26.914221>,  <35.946354, 32.913925, 26.854021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.779911, 33.076012, 26.914221>,  <35.502502, 33.346157, 27.014555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779911, 33.076012, 26.914221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037592, -0.381618, 0.923555,
		-0.719459, -0.631072, -0.290047,
		0.693517, -0.675364, -0.250835,
		35.987965, 32.873402, 26.838970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356819, 32.744217, 27.353992>,  <35.502502, 33.346157, 27.014555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356819, 32.744217, 27.353992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739594, 32.669941, 27.264740>,  <35.969257, 32.625378, 27.211189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739594, 32.669941, 27.264740>,  <35.356819, 32.744217, 27.353992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739594, 32.669941, 27.264740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120325, -0.445786, 0.887016,
		-0.264177, -0.875668, -0.404247,
		0.956939, -0.185688, -0.223131,
		36.026676, 32.614235, 27.197800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534233, 32.131088, 27.756342>,  <35.356819, 32.744217, 27.353992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534233, 32.131088, 27.756342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.893806, 32.269096, 27.648354>,  <36.109550, 32.351902, 27.583561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.893806, 32.269096, 27.648354>,  <35.534233, 32.131088, 27.756342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893806, 32.269096, 27.648354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403485, -0.411994, 0.816983,
		0.170647, -0.843341, -0.509564,
		0.898932, 0.345018, -0.269970,
		36.163486, 32.372601, 27.567362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973843, 31.495447, 27.676437>,  <35.534233, 32.131088, 27.756342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973843, 31.495447, 27.676437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.168034, 31.833586, 27.765617>,  <36.284546, 32.036469, 27.819126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.168034, 31.833586, 27.765617>,  <35.973843, 31.495447, 27.676437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168034, 31.833586, 27.765617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377960, -0.432898, 0.818380,
		0.788328, -0.313036, -0.529668,
		0.485475, 0.845345, 0.222950,
		36.313675, 32.087189, 27.832502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783607, 31.304245, 27.722912>,  <35.973843, 31.495447, 27.676437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783607, 31.304245, 27.722912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734642, 31.653486, 27.911678>,  <36.705261, 31.863031, 28.024939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734642, 31.653486, 27.911678>,  <36.783607, 31.304245, 27.722912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734642, 31.653486, 27.911678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581401, -0.322279, 0.747067,
		0.804355, 0.365825, -0.468172,
		-0.122414, 0.873103, 0.471918,
		36.697918, 31.915417, 28.053253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.414234, 34.700653, 25.063324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.226734, 35.048054, 24.998848>,  <37.114235, 35.256493, 24.960161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.226734, 35.048054, 24.998848>,  <37.414234, 34.700653, 25.063324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226734, 35.048054, 24.998848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056780, -0.152479, -0.986674,
		-0.881502, -0.471659, 0.022162,
		-0.468753, 0.868497, -0.161192,
		37.086109, 35.308601, 24.950491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900604, 34.541130, 24.545797>,  <37.414234, 34.700653, 25.063324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900604, 34.541130, 24.545797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.013577, 34.924801, 24.551743>,  <37.081360, 35.155003, 24.555309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.013577, 34.924801, 24.551743>,  <36.900604, 34.541130, 24.545797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013577, 34.924801, 24.551743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050645, 0.000562, -0.998717,
		-0.957950, 0.282819, -0.048419,
		0.282429, 0.959173, 0.014862,
		37.098305, 35.212551, 24.556202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521561, 34.862915, 23.982420>,  <36.900604, 34.541130, 24.545797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521561, 34.862915, 23.982420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.812523, 35.127071, 24.057005>,  <36.987099, 35.285564, 24.101755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.812523, 35.127071, 24.057005>,  <36.521561, 34.862915, 23.982420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812523, 35.127071, 24.057005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117463, 0.147889, -0.982004,
		-0.676084, 0.736213, 0.030003,
		0.727401, 0.660393, 0.186463,
		37.030743, 35.325188, 24.112944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321033, 35.567581, 23.726614>,  <36.521561, 34.862915, 23.982420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321033, 35.567581, 23.726614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.719631, 35.595264, 23.745398>,  <36.958790, 35.611874, 23.756668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.719631, 35.595264, 23.745398>,  <36.321033, 35.567581, 23.726614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719631, 35.595264, 23.745398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016164, 0.391512, -0.920031,
		-0.082055, 0.917567, 0.389022,
		0.996497, 0.069205, 0.046957,
		37.018581, 35.616028, 23.759485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472954, 36.138920, 23.361609>,  <36.321033, 35.567581, 23.726614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472954, 36.138920, 23.361609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832993, 35.975880, 23.423185>,  <37.049015, 35.878056, 23.460131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832993, 35.975880, 23.423185>,  <36.472954, 36.138920, 23.361609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832993, 35.975880, 23.423185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315134, 0.365049, -0.876031,
		0.300873, 0.837020, 0.457026,
		0.900092, -0.407598, 0.153940,
		37.103020, 35.853600, 23.469368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962540, 36.691696, 23.394228>,  <36.472954, 36.138920, 23.361609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962540, 36.691696, 23.394228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176235, 36.367886, 23.296867>,  <37.304455, 36.173599, 23.238451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176235, 36.367886, 23.296867>,  <36.962540, 36.691696, 23.394228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176235, 36.367886, 23.296867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325800, 0.462875, -0.824379,
		0.780025, 0.361118, 0.511033,
		0.534242, -0.809531, -0.243402,
		37.336510, 36.125027, 23.223846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547283, 36.912045, 23.211060>,  <36.962540, 36.691696, 23.394228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547283, 36.912045, 23.211060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.544773, 36.554508, 23.031723>,  <37.543266, 36.339985, 22.924120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.544773, 36.554508, 23.031723>,  <37.547283, 36.912045, 23.211060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544773, 36.554508, 23.031723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414857, 0.405620, -0.814473,
		0.909865, -0.191109, 0.368270,
		-0.006275, -0.893840, -0.448342,
		37.542892, 36.286358, 22.897221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225597, 36.784134, 23.014561>,  <37.547283, 36.912045, 23.211060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225597, 36.784134, 23.014561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015266, 36.541721, 22.775822>,  <37.889069, 36.396275, 22.632578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015266, 36.541721, 22.775822>,  <38.225597, 36.784134, 23.014561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015266, 36.541721, 22.775822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508948, 0.338051, -0.791640,
		0.681522, -0.720035, 0.130679,
		-0.525832, -0.606029, -0.596850,
		37.857517, 36.359913, 22.596767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654205, 36.441666, 22.567766>,  <38.225597, 36.784134, 23.014561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654205, 36.441666, 22.567766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311367, 36.400902, 22.365772>,  <38.105663, 36.376446, 22.244576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311367, 36.400902, 22.365772>,  <38.654205, 36.441666, 22.567766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311367, 36.400902, 22.365772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484005, 0.176445, -0.857092,
		0.176445, -0.979021, -0.101906,
		0.857092, 0.101906, 0.504984,
		38.054241, 36.370331, 22.214277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833450, 36.145111, 21.908087>,  <38.654205, 36.441666, 22.567766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833450, 36.145111, 21.908087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.469318, 36.284355, 21.818537>,  <38.250839, 36.367901, 21.764807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.469318, 36.284355, 21.818537>,  <38.833450, 36.145111, 21.908087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469318, 36.284355, 21.818537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312050, 0.221943, -0.923778,
		-0.271886, -0.910803, -0.310668,
		-0.910331, 0.348106, -0.223873,
		38.196220, 36.388786, 21.751375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706596, 35.978050, 21.202333>,  <38.833450, 36.145111, 21.908087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706596, 35.978050, 21.202333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.407387, 36.239697, 21.247213>,  <38.227859, 36.396683, 21.274141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.407387, 36.239697, 21.247213>,  <38.706596, 35.978050, 21.202333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407387, 36.239697, 21.247213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079663, 0.256330, -0.963301,
		-0.658870, -0.711637, -0.243850,
		-0.748026, 0.654116, 0.112197,
		38.182980, 36.435932, 21.280872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219116, 35.769062, 20.756739>,  <38.706596, 35.978050, 21.202333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219116, 35.769062, 20.756739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172813, 36.158932, 20.833281>,  <38.145031, 36.392853, 20.879206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172813, 36.158932, 20.833281>,  <38.219116, 35.769062, 20.756739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172813, 36.158932, 20.833281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174927, 0.209642, -0.962004,
		-0.977753, -0.077885, -0.194764,
		-0.115756, 0.974672, 0.191353,
		38.138088, 36.451332, 20.890686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563034, 36.000637, 20.453753>,  <38.219116, 35.769062, 20.756739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563034, 36.000637, 20.453753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.851078, 36.278160, 20.450342>,  <38.023903, 36.444675, 20.448296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.851078, 36.278160, 20.450342>,  <37.563034, 36.000637, 20.453753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851078, 36.278160, 20.450342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032261, -0.045755, -0.998432,
		-0.693110, 0.718705, -0.055331,
		0.720109, 0.693808, -0.008527,
		38.067112, 36.486301, 20.447784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373291, 36.492767, 19.981977>,  <37.563034, 36.000637, 20.453753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373291, 36.492767, 19.981977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.181274, 36.200169, 20.175667>,  <37.066063, 36.024609, 20.291880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.181274, 36.200169, 20.175667>,  <37.373291, 36.492767, 19.981977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181274, 36.200169, 20.175667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375830, 0.327267, 0.866976,
		-0.792660, 0.598172, 0.117815,
		-0.480044, -0.731496, 0.484223,
		37.037262, 35.980721, 20.320934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223976, 36.720856, 19.328413>,  <37.373291, 36.492767, 19.981977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223976, 36.720856, 19.328413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926891, 36.556236, 19.117130>,  <36.748638, 36.457466, 18.990360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926891, 36.556236, 19.117130>,  <37.223976, 36.720856, 19.328413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926891, 36.556236, 19.117130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196101, -0.620563, 0.759240,
		-0.640249, 0.667481, 0.380197,
		-0.742715, -0.411546, -0.528209,
		36.704079, 36.432774, 18.958668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578899, 36.626137, 19.729918>,  <37.223976, 36.720856, 19.328413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578899, 36.626137, 19.729918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.558422, 36.337864, 19.453369>,  <36.546135, 36.164902, 19.287439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.558422, 36.337864, 19.453369>,  <36.578899, 36.626137, 19.729918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558422, 36.337864, 19.453369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419190, -0.612837, 0.669859,
		-0.906454, 0.324109, -0.270730,
		-0.051194, -0.720683, -0.691371,
		36.543064, 36.121658, 19.245958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940674, 36.340469, 19.924353>,  <36.578899, 36.626137, 19.729918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940674, 36.340469, 19.924353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.138924, 36.076641, 19.698322>,  <36.257874, 35.918343, 19.562704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.138924, 36.076641, 19.698322>,  <35.940674, 36.340469, 19.924353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138924, 36.076641, 19.698322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241434, -0.729596, 0.639844,
		-0.834304, -0.180695, -0.520851,
		0.495627, -0.659575, -0.565079,
		36.287613, 35.878769, 19.528799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519371, 35.731052, 19.873199>,  <35.940674, 36.340469, 19.924353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519371, 35.731052, 19.873199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.878181, 35.581226, 19.779348>,  <36.093468, 35.491333, 19.723038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.878181, 35.581226, 19.779348>,  <35.519371, 35.731052, 19.873199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878181, 35.581226, 19.779348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182036, -0.796836, 0.576121,
		-0.402755, -0.474083, -0.782965,
		0.897024, -0.374563, -0.234629,
		36.147289, 35.468857, 19.708960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366142, 34.931465, 19.777924>,  <35.519371, 35.731052, 19.873199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366142, 34.931465, 19.777924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758091, 35.002022, 19.815325>,  <35.993259, 35.044357, 19.837765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758091, 35.002022, 19.815325>,  <35.366142, 34.931465, 19.777924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758091, 35.002022, 19.815325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067831, -0.734641, 0.675057,
		0.187765, -0.655125, -0.731817,
		0.979869, 0.176392, 0.093502,
		36.052052, 35.054939, 19.843376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627975, 34.296432, 19.832102>,  <35.366142, 34.931465, 19.777924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627975, 34.296432, 19.832102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.935020, 34.512272, 19.970436>,  <36.119247, 34.641777, 20.053436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.935020, 34.512272, 19.970436>,  <35.627975, 34.296432, 19.832102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935020, 34.512272, 19.970436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159816, -0.683702, 0.712046,
		0.620669, -0.491306, -0.611055,
		0.767613, 0.539601, 0.345834,
		36.165306, 34.674152, 20.074186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101650, 33.853252, 19.942896>,  <35.627975, 34.296432, 19.832102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101650, 33.853252, 19.942896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201530, 34.164864, 20.172945>,  <36.261459, 34.351830, 20.310974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201530, 34.164864, 20.172945>,  <36.101650, 33.853252, 19.942896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201530, 34.164864, 20.172945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000917, -0.593747, 0.804651,
		0.968323, -0.201450, -0.147545,
		0.249701, 0.779027, 0.575123,
		36.276440, 34.398571, 20.345482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743568, 33.687401, 20.343519>,  <36.101650, 33.853252, 19.942896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743568, 33.687401, 20.343519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.536263, 33.960152, 20.549995>,  <36.411880, 34.123802, 20.673882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.536263, 33.960152, 20.549995>,  <36.743568, 33.687401, 20.343519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536263, 33.960152, 20.549995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121026, -0.539023, 0.833551,
		0.846615, 0.494470, 0.196831,
		-0.518262, 0.681875, 0.516188,
		36.380783, 34.164715, 20.704851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035637, 33.732918, 20.892965>,  <36.743568, 33.687401, 20.343519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035637, 33.732918, 20.892965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699322, 33.928837, 20.985197>,  <36.497532, 34.046387, 21.040535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699322, 33.928837, 20.985197>,  <37.035637, 33.732918, 20.892965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699322, 33.928837, 20.985197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056017, -0.344924, 0.936958,
		0.538452, 0.800703, 0.262572,
		-0.840792, 0.489798, 0.230578,
		36.447083, 34.075775, 21.054371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152103, 34.067978, 21.546339>,  <37.035637, 33.732918, 20.892965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152103, 34.067978, 21.546339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756420, 34.021519, 21.510616>,  <36.519009, 33.993645, 21.489183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756420, 34.021519, 21.510616>,  <37.152103, 34.067978, 21.546339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756420, 34.021519, 21.510616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032282, -0.421772, 0.906127,
		-0.142911, 0.899232, 0.413471,
		-0.989209, -0.116148, -0.089304,
		36.459656, 33.986675, 21.483826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892254, 34.387897, 22.160316>,  <37.152103, 34.067978, 21.546339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892254, 34.387897, 22.160316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.585423, 34.160042, 22.042255>,  <36.401325, 34.023331, 21.971418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.585423, 34.160042, 22.042255>,  <36.892254, 34.387897, 22.160316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585423, 34.160042, 22.042255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275239, -0.123370, 0.953427,
		-0.579518, 0.812586, -0.062152,
		-0.767074, -0.569635, -0.295150,
		36.355301, 33.989151, 21.953711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297810, 34.602890, 22.546963>,  <36.892254, 34.387897, 22.160316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297810, 34.602890, 22.546963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.190422, 34.251698, 22.388432>,  <36.125988, 34.040981, 22.293314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.190422, 34.251698, 22.388432>,  <36.297810, 34.602890, 22.546963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190422, 34.251698, 22.388432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356777, -0.291543, 0.887532,
		-0.894782, 0.379674, -0.234973,
		-0.268469, -0.877981, -0.396326,
		36.109882, 33.988304, 22.269533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564198, 34.594849, 22.639769>,  <36.297810, 34.602890, 22.546963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564198, 34.594849, 22.639769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685184, 34.214832, 22.608938>,  <35.757778, 33.986824, 22.590439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685184, 34.214832, 22.608938>,  <35.564198, 34.594849, 22.639769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685184, 34.214832, 22.608938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306390, -0.173483, 0.935964,
		-0.902573, -0.259483, -0.343556,
		0.302468, -0.950038, -0.077078,
		35.775925, 33.929821, 22.585815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004211, 34.344254, 22.957977>,  <35.564198, 34.594849, 22.639769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004211, 34.344254, 22.957977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.296124, 34.070786, 22.956287>,  <35.471272, 33.906704, 22.955273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.296124, 34.070786, 22.956287>,  <35.004211, 34.344254, 22.957977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296124, 34.070786, 22.956287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286061, -0.310956, 0.906353,
		-0.620959, -0.660229, -0.422501,
		0.729780, -0.683670, -0.004226,
		35.515057, 33.865685, 22.955019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255230, 34.096218, 23.094877>,  <35.004211, 34.344254, 22.957977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255230, 34.096218, 23.094877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.869461, 34.154503, 23.183105>,  <33.638000, 34.189472, 23.236042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.869461, 34.154503, 23.183105>,  <34.255230, 34.096218, 23.094877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869461, 34.154503, 23.183105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049494, 0.720095, -0.692108,
		-0.259681, -0.678403, -0.687266,
		-0.964425, 0.145711, 0.220572,
		33.580132, 34.198215, 23.249277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942310, 34.001141, 22.532932>,  <34.255230, 34.096218, 23.094877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942310, 34.001141, 22.532932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708614, 34.249027, 22.742548>,  <33.568398, 34.397758, 22.868317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708614, 34.249027, 22.742548>,  <33.942310, 34.001141, 22.532932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708614, 34.249027, 22.742548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041812, 0.621861, -0.782011,
		-0.810500, -0.478797, -0.337407,
		-0.584244, 0.619712, 0.524038,
		33.533340, 34.434940, 22.899759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358459, 34.001892, 22.165646>,  <33.942310, 34.001141, 22.532932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358459, 34.001892, 22.165646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357426, 34.343346, 22.373989>,  <33.356804, 34.548218, 22.498995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357426, 34.343346, 22.373989>,  <33.358459, 34.001892, 22.165646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357426, 34.343346, 22.373989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165525, 0.513312, -0.842088,
		-0.986202, -0.088392, 0.139972,
		-0.002584, 0.853638, 0.520861,
		33.356651, 34.599438, 22.530247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848194, 34.430176, 21.829916>,  <33.358459, 34.001892, 22.165646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848194, 34.430176, 21.829916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087273, 34.672096, 22.040430>,  <33.230721, 34.817249, 22.166739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087273, 34.672096, 22.040430>,  <32.848194, 34.430176, 21.829916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087273, 34.672096, 22.040430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006949, 0.652508, -0.757750,
		-0.801694, 0.456560, 0.385797,
		0.597694, 0.604803, 0.526285,
		33.266582, 34.853539, 22.198315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498146, 35.109978, 21.691301>,  <32.848194, 34.430176, 21.829916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498146, 35.109978, 21.691301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874931, 35.164238, 21.814133>,  <33.101002, 35.196793, 21.887831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874931, 35.164238, 21.814133>,  <32.498146, 35.109978, 21.691301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874931, 35.164238, 21.814133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198125, 0.513807, -0.834715,
		-0.271006, 0.847114, 0.457114,
		0.941967, 0.135647, 0.307079,
		33.157520, 35.204933, 21.906256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634464, 35.831959, 21.743174>,  <32.498146, 35.109978, 21.691301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634464, 35.831959, 21.743174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015057, 35.708881, 21.743069>,  <33.243412, 35.635036, 21.743006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015057, 35.708881, 21.743069>,  <32.634464, 35.831959, 21.743174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015057, 35.708881, 21.743069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218039, 0.674841, -0.705017,
		0.217107, 0.670756, 0.709190,
		0.951485, -0.307695, -0.000261,
		33.300503, 35.616573, 21.742990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213211, 36.509121, 21.771368>,  <32.634464, 35.831959, 21.743174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213211, 36.509121, 21.771368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405674, 36.191963, 21.621801>,  <33.521152, 36.001671, 21.532061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405674, 36.191963, 21.621801>,  <33.213211, 36.509121, 21.771368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405674, 36.191963, 21.621801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247995, 0.532227, -0.809465,
		0.840826, 0.296749, 0.452716,
		0.481155, -0.792890, -0.373918,
		33.550022, 35.954098, 21.509626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689781, 36.780182, 22.131733>,  <33.213211, 36.509121, 21.771368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689781, 36.780182, 22.131733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788246, 37.145668, 22.261061>,  <33.847324, 37.364960, 22.338657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788246, 37.145668, 22.261061>,  <33.689781, 36.780182, 22.131733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788246, 37.145668, 22.261061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060091, -0.347328, 0.935816,
		0.967364, -0.210936, -0.140406,
		0.246165, 0.913712, 0.323317,
		33.862095, 37.419781, 22.358055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333214, 36.767876, 22.492270>,  <33.689781, 36.780182, 22.131733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333214, 36.767876, 22.492270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.164978, 37.099117, 22.640512>,  <34.064037, 37.297863, 22.729458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.164978, 37.099117, 22.640512>,  <34.333214, 36.767876, 22.492270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164978, 37.099117, 22.640512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106812, -0.360457, 0.926640,
		0.900943, 0.429318, 0.063153,
		-0.420587, 0.828104, 0.370607,
		34.038803, 37.347549, 22.751696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783833, 37.112694, 23.120712>,  <34.333214, 36.767876, 22.492270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783833, 37.112694, 23.120712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404823, 37.238483, 23.143711>,  <34.177418, 37.313957, 23.157511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404823, 37.238483, 23.143711>,  <34.783833, 37.112694, 23.120712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404823, 37.238483, 23.143711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037223, -0.287164, 0.957158,
		0.317509, 0.904790, 0.283800,
		-0.947524, 0.314470, 0.057498,
		34.120567, 37.332825, 23.160961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762936, 37.576309, 23.792315>,  <34.783833, 37.112694, 23.120712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762936, 37.576309, 23.792315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384823, 37.464893, 23.724363>,  <34.157955, 37.398045, 23.683594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384823, 37.464893, 23.724363>,  <34.762936, 37.576309, 23.792315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384823, 37.464893, 23.724363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101326, -0.244296, 0.964392,
		-0.310122, 0.928835, 0.202706,
		-0.945282, -0.278540, -0.169876,
		34.101238, 37.381332, 23.673401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364380, 37.770817, 24.350172>,  <34.762936, 37.576309, 23.792315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364380, 37.770817, 24.350172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129761, 37.492722, 24.183989>,  <33.988991, 37.325863, 24.084278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129761, 37.492722, 24.183989>,  <34.364380, 37.770817, 24.350172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129761, 37.492722, 24.183989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215807, -0.360258, 0.907547,
		-0.780635, 0.621977, 0.061270,
		-0.586546, -0.695240, -0.415456,
		33.953796, 37.284149, 24.059351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680481, 37.921986, 24.615257>,  <34.364380, 37.770817, 24.350172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680481, 37.921986, 24.615257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700699, 37.547348, 24.476553>,  <33.712830, 37.322567, 24.393330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700699, 37.547348, 24.476553>,  <33.680481, 37.921986, 24.615257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700699, 37.547348, 24.476553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298069, -0.345531, 0.889811,
		-0.953205, 0.058381, -0.296634,
		0.050548, -0.936590, -0.346763,
		33.715862, 37.266373, 24.372524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975384, 37.594875, 24.725632>,  <33.680481, 37.921986, 24.615257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975384, 37.594875, 24.725632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257458, 37.313343, 24.691362>,  <33.426701, 37.144424, 24.670801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257458, 37.313343, 24.691362>,  <32.975384, 37.594875, 24.725632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257458, 37.313343, 24.691362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275306, -0.383160, 0.881700,
		-0.653391, -0.598176, -0.463966,
		0.705185, -0.703828, -0.085672,
		33.469013, 37.102196, 24.665661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.750671, 39.639362, 20.831484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.057133, 39.441269, 20.995316>,  <37.241009, 39.322411, 21.093615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.057133, 39.441269, 20.995316>,  <36.750671, 39.639362, 20.831484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057133, 39.441269, 20.995316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368084, 0.184279, 0.911348,
		-0.526811, -0.848988, -0.041104,
		0.766149, -0.495238, 0.409579,
		37.286976, 39.292698, 21.118189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641365, 39.504631, 21.525829>,  <36.750671, 39.639362, 20.831484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641365, 39.504631, 21.525829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.999580, 39.336258, 21.583557>,  <37.214508, 39.235233, 21.618193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.999580, 39.336258, 21.583557>,  <36.641365, 39.504631, 21.525829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999580, 39.336258, 21.583557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126168, 0.070820, 0.989478,
		-0.426729, -0.904321, 0.010313,
		0.895536, -0.420937, 0.144318,
		37.268242, 39.209976, 21.626852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606930, 38.927418, 22.040693>,  <36.641365, 39.504631, 21.525829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606930, 38.927418, 22.040693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.983803, 39.061069, 22.050844>,  <37.209927, 39.141262, 22.056934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.983803, 39.061069, 22.050844>,  <36.606930, 38.927418, 22.040693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983803, 39.061069, 22.050844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050275, 0.066084, 0.996547,
		0.331304, -0.940206, 0.079062,
		0.942184, 0.334134, 0.025375,
		37.266457, 39.161308, 22.058456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897530, 38.480629, 22.523872>,  <36.606930, 38.927418, 22.040693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897530, 38.480629, 22.523872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.128868, 38.803093, 22.473881>,  <37.267673, 38.996571, 22.443886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.128868, 38.803093, 22.473881>,  <36.897530, 38.480629, 22.523872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128868, 38.803093, 22.473881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067706, 0.105236, 0.992140,
		0.812975, -0.582265, 0.006281,
		0.578349, 0.806159, -0.124977,
		37.302372, 39.044941, 22.436388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419827, 38.381157, 23.034557>,  <36.897530, 38.480629, 22.523872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419827, 38.381157, 23.034557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.402782, 38.774437, 22.963554>,  <37.392555, 39.010403, 22.920954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.402782, 38.774437, 22.963554>,  <37.419827, 38.381157, 23.034557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402782, 38.774437, 22.963554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044236, 0.179350, 0.982790,
		0.998112, 0.034020, -0.051134,
		-0.042606, 0.983197, -0.177506,
		37.389999, 39.069397, 22.910303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938747, 38.642178, 23.446562>,  <37.419827, 38.381157, 23.034557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938747, 38.642178, 23.446562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.693115, 38.945774, 23.360006>,  <37.545734, 39.127934, 23.308073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.693115, 38.945774, 23.360006>,  <37.938747, 38.642178, 23.446562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693115, 38.945774, 23.360006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010700, 0.266145, 0.963874,
		0.789167, 0.594216, -0.155314,
		-0.614085, 0.758996, -0.216391,
		37.508888, 39.173473, 23.295090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251469, 39.219673, 23.813101>,  <37.938747, 38.642178, 23.446562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251469, 39.219673, 23.813101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.859970, 39.255337, 23.739229>,  <37.625072, 39.276737, 23.694906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.859970, 39.255337, 23.739229>,  <38.251469, 39.219673, 23.813101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859970, 39.255337, 23.739229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138843, 0.374644, 0.916714,
		0.150924, 0.922871, -0.354302,
		-0.978746, 0.089162, -0.184677,
		37.566345, 39.282085, 23.683826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209160, 39.800293, 24.133934>,  <38.251469, 39.219673, 23.813101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209160, 39.800293, 24.133934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.843826, 39.644478, 24.086481>,  <37.624626, 39.550987, 24.058010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.843826, 39.644478, 24.086481>,  <38.209160, 39.800293, 24.133934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843826, 39.644478, 24.086481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253364, 0.315558, 0.914456,
		-0.318781, 0.865264, -0.386906,
		-0.913338, -0.389539, -0.118633,
		37.569824, 39.527615, 24.050892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727123, 40.284359, 24.334126>,  <38.209160, 39.800293, 24.133934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727123, 40.284359, 24.334126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.516861, 39.944992, 24.359026>,  <37.390705, 39.741371, 24.373966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.516861, 39.944992, 24.359026>,  <37.727123, 40.284359, 24.334126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516861, 39.944992, 24.359026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197128, 0.192667, 0.961260,
		-0.827542, 0.493021, -0.268523,
		-0.525656, -0.848416, 0.062252,
		37.359165, 39.690468, 24.377701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288059, 40.550842, 24.779787>,  <37.727123, 40.284359, 24.334126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288059, 40.550842, 24.779787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.232826, 40.154984, 24.795399>,  <37.199684, 39.917469, 24.804766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.232826, 40.154984, 24.795399>,  <37.288059, 40.550842, 24.779787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232826, 40.154984, 24.795399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336188, 0.083903, 0.938050,
		-0.931617, 0.116411, -0.344294,
		-0.138087, -0.989651, 0.039030,
		37.191399, 39.858089, 24.807108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658817, 40.369690, 25.094233>,  <37.288059, 40.550842, 24.779787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658817, 40.369690, 25.094233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.872440, 40.036129, 25.149925>,  <37.000614, 39.835991, 25.183340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.872440, 40.036129, 25.149925>,  <36.658817, 40.369690, 25.094233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872440, 40.036129, 25.149925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172453, 0.053771, 0.983549,
		-0.827675, -0.549280, -0.115093,
		0.534055, -0.833906, 0.139230,
		37.032658, 39.785957, 25.191694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334114, 40.081196, 25.578506>,  <36.658817, 40.369690, 25.094233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334114, 40.081196, 25.578506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.691345, 39.906158, 25.620321>,  <36.905682, 39.801136, 25.645411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.691345, 39.906158, 25.620321>,  <36.334114, 40.081196, 25.578506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691345, 39.906158, 25.620321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107821, 0.017411, 0.994018,
		-0.436795, -0.899005, -0.031632,
		0.893076, -0.437593, 0.104536,
		36.959267, 39.774879, 25.651682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722458, 39.637772, 25.516424>,  <36.334114, 40.081196, 25.578506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722458, 39.637772, 25.516424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.379425, 39.838501, 25.471310>,  <35.173603, 39.958939, 25.444241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.379425, 39.838501, 25.471310>,  <35.722458, 39.637772, 25.516424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379425, 39.838501, 25.471310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091207, -0.067435, -0.993546,
		-0.506190, -0.862338, 0.012062,
		-0.857586, 0.501823, -0.112786,
		35.122150, 39.989048, 25.437473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353279, 39.346741, 24.909119>,  <35.722458, 39.637772, 25.516424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353279, 39.346741, 24.909119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.189503, 39.709442, 24.949451>,  <35.091236, 39.927063, 24.973650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.189503, 39.709442, 24.949451>,  <35.353279, 39.346741, 24.909119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189503, 39.709442, 24.949451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066641, 0.080499, -0.994524,
		-0.909901, -0.413916, 0.027468,
		-0.409438, 0.906749, 0.100830,
		35.066669, 39.981468, 24.979700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819859, 39.353287, 24.471922>,  <35.353279, 39.346741, 24.909119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819859, 39.353287, 24.471922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.872578, 39.745773, 24.528261>,  <34.904209, 39.981266, 24.562065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.872578, 39.745773, 24.528261>,  <34.819859, 39.353287, 24.471922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872578, 39.745773, 24.528261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237416, 0.169200, -0.956559,
		-0.962426, 0.092631, 0.255257,
		0.131797, 0.981219, 0.140850,
		34.912117, 40.040138, 24.570517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379097, 39.763100, 24.013639>,  <34.819859, 39.353287, 24.471922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379097, 39.763100, 24.013639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.630527, 40.057510, 24.114161>,  <34.781387, 40.234158, 24.174473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.630527, 40.057510, 24.114161>,  <34.379097, 39.763100, 24.013639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630527, 40.057510, 24.114161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091223, 0.390656, -0.916005,
		-0.772377, 0.552858, 0.312701,
		0.628580, 0.736027, 0.251301,
		34.819103, 40.278320, 24.189550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016964, 40.280376, 23.917555>,  <34.379097, 39.763100, 24.013639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016964, 40.280376, 23.917555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.392757, 40.405025, 23.860620>,  <34.618233, 40.479816, 23.826460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.392757, 40.405025, 23.860620>,  <34.016964, 40.280376, 23.917555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392757, 40.405025, 23.860620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264765, 0.396773, -0.878903,
		-0.217410, 0.863402, 0.455269,
		0.939485, 0.311622, -0.142337,
		34.674603, 40.498512, 23.817919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864830, 40.844414, 23.520372>,  <34.016964, 40.280376, 23.917555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864830, 40.844414, 23.520372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.255207, 40.772476, 23.471081>,  <34.489433, 40.729313, 23.441505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.255207, 40.772476, 23.471081>,  <33.864830, 40.844414, 23.520372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255207, 40.772476, 23.471081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060331, 0.320375, -0.945368,
		0.209498, 0.930062, 0.301819,
		0.975946, -0.179844, -0.123230,
		34.547993, 40.718521, 23.434113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068527, 41.447395, 23.178463>,  <33.864830, 40.844414, 23.520372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068527, 41.447395, 23.178463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.338341, 41.162407, 23.101124>,  <34.500229, 40.991413, 23.054720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.338341, 41.162407, 23.101124>,  <34.068527, 41.447395, 23.178463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338341, 41.162407, 23.101124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098359, 0.346304, -0.932952,
		0.731660, 0.610293, 0.303672,
		0.674537, -0.712472, -0.193349,
		34.540703, 40.948666, 23.043119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579407, 41.749779, 22.760199>,  <34.068527, 41.447395, 23.178463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579407, 41.749779, 22.760199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.633774, 41.358810, 22.695478>,  <34.666393, 41.124229, 22.656647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.633774, 41.358810, 22.695478>,  <34.579407, 41.749779, 22.760199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633774, 41.358810, 22.695478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053207, 0.170282, -0.983958,
		0.989290, 0.125131, 0.075150,
		0.135920, -0.977418, -0.161801,
		34.674549, 41.065586, 22.646938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138500, 41.764374, 22.233442>,  <34.579407, 41.749779, 22.760199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138500, 41.764374, 22.233442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.956257, 41.408451, 22.223076>,  <34.846912, 41.194897, 22.216856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.956257, 41.408451, 22.223076>,  <35.138500, 41.764374, 22.233442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956257, 41.408451, 22.223076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106402, 0.083342, -0.990824,
		0.883798, -0.448670, -0.132649,
		-0.455609, -0.889803, -0.025918,
		34.819572, 41.141510, 22.215300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465580, 41.389675, 21.632286>,  <35.138500, 41.764374, 22.233442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465580, 41.389675, 21.632286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.120228, 41.213337, 21.730459>,  <34.913017, 41.107533, 21.789364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.120228, 41.213337, 21.730459>,  <35.465580, 41.389675, 21.632286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120228, 41.213337, 21.730459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249540, -0.049698, -0.967088,
		0.438534, -0.896206, -0.067101,
		-0.863376, -0.440845, 0.245433,
		34.861214, 41.081085, 21.804089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485756, 40.671585, 21.306194>,  <35.465580, 41.389675, 21.632286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485756, 40.671585, 21.306194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.107433, 40.783649, 21.371881>,  <34.880440, 40.850887, 21.411295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.107433, 40.783649, 21.371881>,  <35.485756, 40.671585, 21.306194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107433, 40.783649, 21.371881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230077, -0.221222, -0.947695,
		-0.229219, -0.934103, 0.273697,
		-0.945792, 0.280201, 0.164207,
		34.823692, 40.867699, 21.421146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081104, 40.229824, 20.904953>,  <35.485756, 40.671585, 21.306194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081104, 40.229824, 20.904953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.829765, 40.531956, 20.979412>,  <34.678963, 40.713234, 21.024088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.829765, 40.531956, 20.979412>,  <35.081104, 40.229824, 20.904953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829765, 40.531956, 20.979412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312782, -0.026207, -0.949463,
		-0.712279, -0.654821, 0.252721,
		-0.628352, 0.755329, 0.186149,
		34.641258, 40.758556, 21.035257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446690, 39.971020, 20.302628>,  <35.081104, 40.229824, 20.904953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446690, 39.971020, 20.302628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.272209, 39.890385, 19.951838>,  <35.167519, 39.842003, 19.741364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.272209, 39.890385, 19.951838>,  <35.446690, 39.971020, 20.302628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272209, 39.890385, 19.951838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669367, -0.724033, -0.166506,
		-0.601394, -0.659649, 0.450763,
		-0.436204, -0.201590, -0.876976,
		35.141350, 39.829906, 19.688744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418499, 39.222595, 20.001055>,  <35.446690, 39.971020, 20.302628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418499, 39.222595, 20.001055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.110367, 39.465107, 20.080057>,  <34.925488, 39.610615, 20.127459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.110367, 39.465107, 20.080057>,  <35.418499, 39.222595, 20.001055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110367, 39.465107, 20.080057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283360, -0.602974, 0.745741,
		0.571220, 0.518505, 0.636287,
		-0.770334, 0.606280, 0.197507,
		34.879265, 39.646992, 20.139309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358387, 39.328396, 20.720570>,  <35.418499, 39.222595, 20.001055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358387, 39.328396, 20.720570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.991371, 39.403805, 20.580521>,  <34.771164, 39.449051, 20.496490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.991371, 39.403805, 20.580521>,  <35.358387, 39.328396, 20.720570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991371, 39.403805, 20.580521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385654, -0.636508, 0.667929,
		-0.096937, 0.747875, 0.656724,
		-0.917537, 0.188521, -0.350122,
		34.716110, 39.460361, 20.475485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981178, 39.548553, 21.322950>,  <35.358387, 39.328396, 20.720570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981178, 39.548553, 21.322950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.730701, 39.401951, 21.047689>,  <34.580414, 39.313992, 20.882532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.730701, 39.401951, 21.047689>,  <34.981178, 39.548553, 21.322950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730701, 39.401951, 21.047689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290086, -0.709740, 0.641966,
		-0.723692, 0.601619, 0.338118,
		-0.626195, -0.366502, -0.688154,
		34.542843, 39.292000, 20.841244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383308, 39.528397, 21.624269>,  <34.981178, 39.548553, 21.322950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383308, 39.528397, 21.624269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.380630, 39.246540, 21.340458>,  <34.379025, 39.077427, 21.170172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.380630, 39.246540, 21.340458>,  <34.383308, 39.528397, 21.624269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380630, 39.246540, 21.340458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466938, -0.625235, 0.625339,
		-0.884265, 0.335492, -0.324841,
		-0.006694, -0.704646, -0.709527,
		34.378624, 39.035145, 21.127600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683487, 39.317478, 21.567141>,  <34.383308, 39.528397, 21.624269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683487, 39.317478, 21.567141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.881271, 39.016388, 21.393282>,  <33.999943, 38.835735, 21.288967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.881271, 39.016388, 21.393282>,  <33.683487, 39.317478, 21.567141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881271, 39.016388, 21.393282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492634, -0.654674, 0.573335,
		-0.716115, -0.069369, -0.694526,
		0.494460, -0.752721, -0.434649,
		34.029610, 38.790573, 21.262888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194271, 38.689575, 21.400644>,  <33.683487, 39.317478, 21.567141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194271, 38.689575, 21.400644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.567055, 38.545193, 21.386961>,  <33.790726, 38.458565, 21.378750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.567055, 38.545193, 21.386961>,  <33.194271, 38.689575, 21.400644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567055, 38.545193, 21.386961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255436, -0.720604, 0.644579,
		-0.257316, -0.591980, -0.763772,
		0.931956, -0.360955, -0.034210,
		33.846642, 38.436905, 21.376698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094994, 37.945072, 21.475586>,  <33.194271, 38.689575, 21.400644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094994, 37.945072, 21.475586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.462551, 38.009529, 21.619625>,  <33.683086, 38.048203, 21.706049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.462551, 38.009529, 21.619625>,  <33.094994, 37.945072, 21.475586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462551, 38.009529, 21.619625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204931, -0.584996, 0.784718,
		0.337104, -0.794867, -0.504526,
		0.918893, 0.161139, 0.360097,
		33.738220, 38.057869, 21.727654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354172, 37.201080, 21.611813>,  <33.094994, 37.945072, 21.475586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354172, 37.201080, 21.611813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.598278, 37.461880, 21.791798>,  <33.744743, 37.618359, 21.899790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.598278, 37.461880, 21.791798>,  <33.354172, 37.201080, 21.611813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598278, 37.461880, 21.791798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007575, -0.563166, 0.826309,
		0.792160, -0.507677, -0.338743,
		0.610267, 0.652002, 0.449964,
		33.781357, 37.657482, 21.926786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743874, 36.823017, 21.287079>,  <33.354172, 37.201080, 21.611813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743874, 36.823017, 21.287079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.751938, 36.439095, 21.175104>,  <33.756775, 36.208740, 21.107920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.751938, 36.439095, 21.175104>,  <33.743874, 36.823017, 21.287079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751938, 36.439095, 21.175104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537278, 0.246529, -0.806571,
		0.843164, -0.134142, 0.520653,
		0.020161, -0.959807, -0.279936,
		33.757988, 36.151154, 21.091124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364285, 36.673130, 20.960600>,  <33.743874, 36.823017, 21.287079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364285, 36.673130, 20.960600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.133747, 36.376499, 20.823261>,  <33.995426, 36.198521, 20.740858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.133747, 36.376499, 20.823261>,  <34.364285, 36.673130, 20.960600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133747, 36.376499, 20.823261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267340, 0.225933, -0.936741,
		0.772242, -0.631675, 0.068039,
		-0.576344, -0.741580, -0.343347,
		33.960842, 36.154026, 20.720257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758865, 36.403488, 20.483027>,  <34.364285, 36.673130, 20.960600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758865, 36.403488, 20.483027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.382183, 36.303967, 20.392441>,  <34.156174, 36.244255, 20.338089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.382183, 36.303967, 20.392441>,  <34.758865, 36.403488, 20.483027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382183, 36.303967, 20.392441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161731, 0.255463, -0.953195,
		0.295017, -0.934255, -0.200331,
		-0.941705, -0.248809, -0.226464,
		34.099670, 36.229324, 20.324501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798801, 36.031349, 19.943699>,  <34.758865, 36.403488, 20.483027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798801, 36.031349, 19.943699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.415974, 36.147106, 19.937017>,  <34.186279, 36.216560, 19.933008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.415974, 36.147106, 19.937017>,  <34.798801, 36.031349, 19.943699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415974, 36.147106, 19.937017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142905, 0.420911, -0.895775,
		-0.252200, -0.859701, -0.444195,
		-0.957065, 0.289392, -0.016702,
		34.128853, 36.233925, 19.932007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572601, 35.810486, 19.288158>,  <34.798801, 36.031349, 19.943699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572601, 35.810486, 19.288158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.343334, 36.108978, 19.423576>,  <34.205772, 36.288074, 19.504827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.343334, 36.108978, 19.423576>,  <34.572601, 35.810486, 19.288158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343334, 36.108978, 19.423576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091038, 0.468574, -0.878721,
		-0.814364, -0.472836, -0.336508,
		-0.573170, 0.746234, 0.338544,
		34.171383, 36.332848, 19.525139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345451, 35.957588, 18.746130>,  <34.572601, 35.810486, 19.288158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345451, 35.957588, 18.746130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.208134, 36.265015, 18.962074>,  <34.125744, 36.449471, 19.091640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.208134, 36.265015, 18.962074>,  <34.345451, 35.957588, 18.746130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208134, 36.265015, 18.962074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173635, 0.512950, -0.840674,
		-0.923037, -0.382340, -0.042644,
		-0.343297, 0.768569, 0.539859,
		34.105145, 36.495586, 19.124033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698906, 36.215965, 18.450195>,  <34.345451, 35.957588, 18.746130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698906, 36.215965, 18.450195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891899, 36.512321, 18.637083>,  <34.007698, 36.690136, 18.749216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891899, 36.512321, 18.637083>,  <33.698906, 36.215965, 18.450195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891899, 36.512321, 18.637083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083094, 0.569724, -0.817625,
		-0.871952, 0.355671, 0.336448,
		0.482488, 0.740887, 0.467218,
		34.036644, 36.734589, 18.777248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370007, 36.720165, 18.205423>,  <33.698906, 36.215965, 18.450195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370007, 36.720165, 18.205423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.696373, 36.904938, 18.344507>,  <33.892193, 37.015800, 18.427958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.696373, 36.904938, 18.344507>,  <33.370007, 36.720165, 18.205423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696373, 36.904938, 18.344507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064345, 0.670209, -0.739378,
		-0.574581, 0.580896, 0.576556,
		0.815914, 0.461931, 0.347712,
		33.941147, 37.043518, 18.448820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118931, 37.434521, 18.425522>,  <33.370007, 36.720165, 18.205423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118931, 37.434521, 18.425522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.507233, 37.424133, 18.330055>,  <33.740215, 37.417900, 18.272776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.507233, 37.424133, 18.330055>,  <33.118931, 37.434521, 18.425522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507233, 37.424133, 18.330055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165329, 0.648522, -0.743025,
		0.174076, 0.760753, 0.625262,
		0.970754, -0.025969, -0.238667,
		33.798458, 37.416344, 18.258455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.521149, 31.992067, 33.273529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859215, 31.857893, 33.107075>,  <35.062054, 31.777388, 33.007202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859215, 31.857893, 33.107075>,  <34.521149, 31.992067, 33.273529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859215, 31.857893, 33.107075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367188, 0.201388, -0.908083,
		0.388410, 0.920285, 0.047038,
		0.845169, -0.335437, -0.416139,
		35.112766, 31.757261, 32.982231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740967, 32.565376, 32.708214>,  <34.521149, 31.992067, 33.273529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740967, 32.565376, 32.708214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933773, 32.223724, 32.630112>,  <35.049458, 32.018734, 32.583248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933773, 32.223724, 32.630112>,  <34.740967, 32.565376, 32.708214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933773, 32.223724, 32.630112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013524, 0.215577, -0.976393,
		0.876058, 0.473278, 0.092361,
		0.482017, -0.854128, -0.195259,
		35.078377, 31.967485, 32.571533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093040, 32.859882, 32.158981>,  <34.740967, 32.565376, 32.708214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093040, 32.859882, 32.158981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094330, 32.459896, 32.155785>,  <35.095104, 32.219906, 32.153866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094330, 32.459896, 32.155785>,  <35.093040, 32.859882, 32.158981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094330, 32.459896, 32.155785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353067, 0.006336, -0.935577,
		0.935593, 0.005837, -0.353033,
		0.003224, -0.999963, -0.007988,
		35.095299, 32.159908, 32.153389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363529, 32.646526, 31.452486>,  <35.093040, 32.859882, 32.158981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363529, 32.646526, 31.452486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198063, 32.305450, 31.580112>,  <35.098782, 32.100807, 31.656689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198063, 32.305450, 31.580112>,  <35.363529, 32.646526, 31.452486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198063, 32.305450, 31.580112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231993, -0.240164, -0.942603,
		0.880373, -0.463947, -0.098469,
		-0.413669, -0.852687, 0.319066,
		35.073963, 32.049644, 31.675833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642773, 32.000851, 31.151171>,  <35.363529, 32.646526, 31.452486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642773, 32.000851, 31.151171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263985, 31.938574, 31.263599>,  <35.036713, 31.901209, 31.331057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263985, 31.938574, 31.263599>,  <35.642773, 32.000851, 31.151171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263985, 31.938574, 31.263599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239031, -0.243232, -0.940055,
		0.214723, -0.957392, 0.193119,
		-0.946973, -0.155690, 0.281073,
		34.979893, 31.891867, 31.347921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399376, 31.556036, 30.630926>,  <35.642773, 32.000851, 31.151171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399376, 31.556036, 30.630926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.059464, 31.690962, 30.792959>,  <34.855518, 31.771917, 30.890179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.059464, 31.690962, 30.792959>,  <35.399376, 31.556036, 30.630926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059464, 31.690962, 30.792959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477338, -0.166351, -0.862830,
		-0.223662, -0.926576, 0.302376,
		-0.849778, 0.337318, 0.405084,
		34.804531, 31.792156, 30.914484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906818, 31.046309, 30.621178>,  <35.399376, 31.556036, 30.630926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906818, 31.046309, 30.621178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687752, 31.380413, 30.640743>,  <34.556313, 31.580875, 30.652483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687752, 31.380413, 30.640743>,  <34.906818, 31.046309, 30.621178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687752, 31.380413, 30.640743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501393, -0.280832, -0.818376,
		-0.669823, -0.472724, 0.572598,
		-0.547670, 0.835264, 0.048913,
		34.523449, 31.630993, 30.655416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218327, 30.858122, 30.320591>,  <34.906818, 31.046309, 30.621178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218327, 30.858122, 30.320591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210701, 31.257980, 30.327999>,  <34.206123, 31.497896, 30.332443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210701, 31.257980, 30.327999>,  <34.218327, 30.858122, 30.320591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210701, 31.257980, 30.327999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564097, 0.004537, -0.825696,
		-0.825489, -0.026191, 0.563811,
		-0.019068, 0.999647, 0.018520,
		34.204979, 31.557875, 30.333555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489288, 31.184193, 30.344383>,  <34.218327, 30.858122, 30.320591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489288, 31.184193, 30.344383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716900, 31.475582, 30.191792>,  <33.853466, 31.650415, 30.100237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716900, 31.475582, 30.191792>,  <33.489288, 31.184193, 30.344383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716900, 31.475582, 30.191792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646775, 0.109995, -0.754707,
		-0.507824, 0.676185, 0.533750,
		0.569032, 0.728474, -0.381481,
		33.887611, 31.694124, 30.077347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899761, 31.589363, 29.987848>,  <33.489288, 31.184193, 30.344383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899761, 31.589363, 29.987848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256050, 31.712606, 29.854168>,  <33.469822, 31.786552, 29.773960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256050, 31.712606, 29.854168>,  <32.899761, 31.589363, 29.987848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256050, 31.712606, 29.854168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413296, 0.242870, -0.877611,
		-0.189231, 0.919829, 0.343668,
		0.890718, 0.308108, -0.334202,
		33.523266, 31.805038, 29.753906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731415, 32.140034, 29.594288>,  <32.899761, 31.589363, 29.987848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731415, 32.140034, 29.594288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095642, 32.031414, 29.469627>,  <33.314178, 31.966242, 29.394831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095642, 32.031414, 29.469627>,  <32.731415, 32.140034, 29.594288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095642, 32.031414, 29.469627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229725, 0.294353, -0.927676,
		0.343643, 0.916307, 0.205648,
		0.910569, -0.271547, -0.311651,
		33.368813, 31.949949, 29.376133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919968, 32.617283, 29.135609>,  <32.731415, 32.140034, 29.594288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919968, 32.617283, 29.135609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166786, 32.322487, 29.025263>,  <33.314877, 32.145611, 28.959055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166786, 32.322487, 29.025263>,  <32.919968, 32.617283, 29.135609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166786, 32.322487, 29.025263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211075, 0.182706, -0.960243,
		0.758092, 0.650740, -0.042822,
		0.617045, -0.736991, -0.275863,
		33.351898, 32.101391, 28.942505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273079, 33.213902, 29.413254>,  <32.919968, 32.617283, 29.135609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273079, 33.213902, 29.413254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974606, 33.471760, 29.479753>,  <32.795521, 33.626472, 29.519653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974606, 33.471760, 29.479753>,  <33.273079, 33.213902, 29.413254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974606, 33.471760, 29.479753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018991, -0.270232, 0.962608,
		0.665465, 0.715129, 0.213886,
		-0.746188, 0.644644, 0.166248,
		32.750748, 33.665154, 29.529629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397224, 33.455166, 30.119326>,  <33.273079, 33.213902, 29.413254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397224, 33.455166, 30.119326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020351, 33.556374, 30.031439>,  <32.794228, 33.617100, 29.978706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020351, 33.556374, 30.031439>,  <33.397224, 33.455166, 30.119326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020351, 33.556374, 30.031439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272939, -0.199015, 0.941221,
		0.194418, 0.946771, 0.256567,
		-0.942181, 0.253018, -0.219719,
		32.737698, 33.632278, 29.965523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256630, 34.016663, 30.508087>,  <33.397224, 33.455166, 30.119326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256630, 34.016663, 30.508087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896343, 33.856186, 30.441448>,  <32.680172, 33.759899, 30.401464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896343, 33.856186, 30.441448>,  <33.256630, 34.016663, 30.508087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896343, 33.856186, 30.441448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201342, 0.045719, 0.978454,
		-0.384935, 0.914850, -0.121957,
		-0.900714, -0.401196, -0.166599,
		32.626129, 33.735828, 30.391468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825996, 34.436592, 30.877569>,  <33.256630, 34.016663, 30.508087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825996, 34.436592, 30.877569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625748, 34.094799, 30.822105>,  <32.505596, 33.889721, 30.788828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625748, 34.094799, 30.822105>,  <32.825996, 34.436592, 30.877569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625748, 34.094799, 30.822105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346156, 0.050790, 0.936801,
		-0.793442, 0.516984, -0.321212,
		-0.500626, -0.854487, -0.138658,
		32.475559, 33.838451, 30.780508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177692, 34.620758, 31.118452>,  <32.825996, 34.436592, 30.877569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177692, 34.620758, 31.118452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188034, 34.221203, 31.134195>,  <32.194241, 33.981468, 31.143642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188034, 34.221203, 31.134195>,  <32.177692, 34.620758, 31.118452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188034, 34.221203, 31.134195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522826, 0.020047, 0.852204,
		-0.852048, -0.042612, -0.521727,
		0.025855, -0.998891, 0.039359,
		32.195789, 33.921535, 31.146004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510481, 34.334419, 31.313721>,  <32.177692, 34.620758, 31.118452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510481, 34.334419, 31.313721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766346, 34.048897, 31.427782>,  <31.919865, 33.877583, 31.496220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766346, 34.048897, 31.427782>,  <31.510481, 34.334419, 31.313721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766346, 34.048897, 31.427782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428172, -0.022798, 0.903410,
		-0.638358, -0.699973, -0.320214,
		0.639663, -0.713806, 0.285155,
		31.958244, 33.834755, 31.513329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106659, 33.743347, 31.558619>,  <31.510481, 34.334419, 31.313721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106659, 33.743347, 31.558619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.471289, 33.698654, 31.716885>,  <31.690065, 33.671837, 31.811844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.471289, 33.698654, 31.716885>,  <31.106659, 33.743347, 31.558619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471289, 33.698654, 31.716885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406867, -0.106815, 0.907221,
		-0.059100, -0.987981, -0.142828,
		0.911574, -0.111729, 0.395665,
		31.744761, 33.665134, 31.835585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003592, 33.365376, 32.229851>,  <31.106659, 33.743347, 31.558619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003592, 33.365376, 32.229851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.390884, 33.450237, 32.282791>,  <31.623260, 33.501156, 32.314556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.390884, 33.450237, 32.282791>,  <31.003592, 33.365376, 32.229851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390884, 33.450237, 32.282791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104469, -0.137668, 0.984954,
		0.227187, -0.967489, -0.111130,
		0.968231, 0.212159, 0.132349,
		31.681355, 33.513885, 32.322495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371571, 32.810364, 32.702362>,  <31.003592, 33.365376, 32.229851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371571, 32.810364, 32.702362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.560356, 33.160923, 32.740692>,  <31.673628, 33.371258, 32.763691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.560356, 33.160923, 32.740692>,  <31.371571, 32.810364, 32.702362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560356, 33.160923, 32.740692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091523, -0.059400, 0.994030,
		0.876855, -0.477915, 0.052176,
		0.471963, 0.876395, 0.095826,
		31.701944, 33.423843, 32.769440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736626, 32.714355, 33.359623>,  <31.371571, 32.810364, 32.702362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736626, 32.714355, 33.359623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.727793, 33.106174, 33.279621>,  <31.722494, 33.341267, 33.231621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.727793, 33.106174, 33.279621>,  <31.736626, 32.714355, 33.359623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727793, 33.106174, 33.279621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429388, 0.171374, 0.886711,
		0.902850, 0.105461, 0.416821,
		-0.022081, 0.979545, -0.200009,
		31.721169, 33.400040, 33.219620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866579, 32.971333, 34.027157>,  <31.736626, 32.714355, 33.359623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866579, 32.971333, 34.027157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.748587, 33.292255, 33.819584>,  <31.677792, 33.484810, 33.695038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.748587, 33.292255, 33.819584>,  <31.866579, 32.971333, 34.027157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748587, 33.292255, 33.819584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517706, 0.322277, 0.792539,
		0.803099, 0.502439, 0.320293,
		-0.294979, 0.802305, -0.518936,
		31.660093, 33.532948, 33.663902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146454, 33.514874, 34.268444>,  <31.866579, 32.971333, 34.027157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146454, 33.514874, 34.268444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.844723, 33.696182, 34.078484>,  <31.663683, 33.804966, 33.964508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.844723, 33.696182, 34.078484>,  <32.146454, 33.514874, 34.268444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844723, 33.696182, 34.078484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321989, 0.374952, 0.869329,
		0.572107, 0.808674, -0.136890,
		-0.754332, 0.453273, -0.474897,
		31.618423, 33.832165, 33.936016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165260, 34.308052, 34.467419>,  <32.146454, 33.514874, 34.268444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165260, 34.308052, 34.467419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806089, 34.191097, 34.335819>,  <31.590588, 34.120926, 34.256859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806089, 34.191097, 34.335819>,  <32.165260, 34.308052, 34.467419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806089, 34.191097, 34.335819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418090, 0.332939, 0.845194,
		-0.137583, 0.896473, -0.421197,
		-0.897926, -0.292382, -0.329000,
		31.536711, 34.103382, 34.237118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826178, 34.831421, 34.700668>,  <32.165260, 34.308052, 34.467419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826178, 34.831421, 34.700668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.567701, 34.534813, 34.628471>,  <31.412615, 34.356846, 34.585152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.567701, 34.534813, 34.628471>,  <31.826178, 34.831421, 34.700668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567701, 34.534813, 34.628471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445071, 0.174037, 0.878421,
		-0.619957, 0.647961, -0.442493,
		-0.646193, -0.741524, -0.180493,
		31.373844, 34.312355, 34.574322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104904, 35.029942, 34.773113>,  <31.826178, 34.831421, 34.700668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104904, 35.029942, 34.773113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.122259, 34.648281, 34.891582>,  <31.132671, 34.419285, 34.962662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.122259, 34.648281, 34.891582>,  <31.104904, 35.029942, 34.773113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122259, 34.648281, 34.891582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320432, 0.267496, 0.908718,
		-0.946277, -0.134329, -0.294134,
		0.043388, -0.954149, 0.296169,
		31.135275, 34.362038, 34.980434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581640, 35.606064, 34.597897>,  <31.104904, 35.029942, 34.773113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581640, 35.606064, 34.597897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.941963, 35.771484, 34.544945>,  <31.158157, 35.870735, 34.513176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.941963, 35.771484, 34.544945>,  <30.581640, 35.606064, 34.597897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941963, 35.771484, 34.544945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385774, 0.622276, -0.681139,
		-0.199310, 0.664643, 0.720087,
		0.900807, 0.413549, -0.132376,
		31.212206, 35.895550, 34.505234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416788, 36.280788, 34.599735>,  <30.581640, 35.606064, 34.597897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416788, 36.280788, 34.599735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763811, 36.211823, 34.413139>,  <30.972025, 36.170441, 34.301182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763811, 36.211823, 34.413139>,  <30.416788, 36.280788, 34.599735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763811, 36.211823, 34.413139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230687, 0.691463, -0.684589,
		0.440599, 0.701534, 0.560109,
		0.867557, -0.172419, -0.466493,
		31.024078, 36.160095, 34.273190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624413, 36.991383, 34.259945>,  <30.416788, 36.280788, 34.599735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624413, 36.991383, 34.259945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874544, 36.741302, 34.073147>,  <31.024622, 36.591255, 33.961067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874544, 36.741302, 34.073147>,  <30.624413, 36.991383, 34.259945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874544, 36.741302, 34.073147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038338, 0.573099, -0.818589,
		0.779420, 0.529789, 0.334406,
		0.625327, -0.625204, -0.466996,
		31.062141, 36.553741, 33.933048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138411, 37.407497, 34.106903>,  <30.624413, 36.991383, 34.259945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138411, 37.407497, 34.106903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167402, 37.085217, 33.871754>,  <31.184797, 36.891850, 33.730663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167402, 37.085217, 33.871754>,  <31.138411, 37.407497, 34.106903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167402, 37.085217, 33.871754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206509, 0.588775, -0.781472,
		0.975756, -0.064759, 0.209059,
		0.072481, -0.805699, -0.587874,
		31.189146, 36.843506, 33.695393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724442, 37.493744, 33.825012>,  <31.138411, 37.407497, 34.106903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724442, 37.493744, 33.825012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517717, 37.256931, 33.577656>,  <31.393682, 37.114845, 33.429241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517717, 37.256931, 33.577656>,  <31.724442, 37.493744, 33.825012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517717, 37.256931, 33.577656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291434, 0.557523, -0.777325,
		0.804968, -0.581950, -0.115595,
		-0.516811, -0.592033, -0.618388,
		31.362675, 37.079323, 33.392139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184048, 37.363575, 33.281315>,  <31.724442, 37.493744, 33.825012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184048, 37.363575, 33.281315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.820381, 37.301331, 33.126812>,  <31.602180, 37.263985, 33.034111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.820381, 37.301331, 33.126812>,  <32.184048, 37.363575, 33.281315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820381, 37.301331, 33.126812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285722, 0.441677, -0.850461,
		0.302944, -0.883576, -0.357097,
		-0.909169, -0.155612, -0.386261,
		31.547630, 37.254646, 33.010933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303307, 37.032131, 32.654907>,  <32.184048, 37.363575, 33.281315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303307, 37.032131, 32.654907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.935919, 37.188118, 32.628590>,  <31.715485, 37.281712, 32.612797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.935919, 37.188118, 32.628590>,  <32.303307, 37.032131, 32.654907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935919, 37.188118, 32.628590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212632, 0.346655, -0.913574,
		-0.333457, -0.853085, -0.401313,
		-0.918474, 0.389970, -0.065798,
		31.660378, 37.305107, 32.608849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185905, 37.052021, 31.870287>,  <32.303307, 37.032131, 32.654907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185905, 37.052021, 31.870287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.890108, 37.282745, 32.009109>,  <31.712631, 37.421181, 32.092403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.890108, 37.282745, 32.009109>,  <32.185905, 37.052021, 31.870287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890108, 37.282745, 32.009109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071482, 0.579926, -0.811527,
		-0.669362, -0.575308, -0.470080,
		-0.739490, 0.576807, 0.347057,
		31.668261, 37.455788, 32.113228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529795, 36.980560, 31.301266>,  <32.185905, 37.052021, 31.870287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529795, 36.980560, 31.301266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494967, 37.316280, 31.515926>,  <31.474070, 37.517712, 31.644722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494967, 37.316280, 31.515926>,  <31.529795, 36.980560, 31.301266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494967, 37.316280, 31.515926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088103, 0.543075, -0.835050,
		-0.992299, -0.025427, -0.121230,
		-0.087070, 0.839300, 0.536652,
		31.468845, 37.568069, 31.676922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136919, 37.402588, 30.893581>,  <31.529795, 36.980560, 31.301266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136919, 37.402588, 30.893581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328348, 37.645046, 31.147686>,  <31.443205, 37.790520, 31.300150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328348, 37.645046, 31.147686>,  <31.136919, 37.402588, 30.893581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328348, 37.645046, 31.147686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405215, 0.489379, -0.772211,
		-0.778954, 0.626977, -0.011415,
		0.478572, 0.606143, 0.635264,
		31.471920, 37.826889, 31.338264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003778, 38.058430, 30.619946>,  <31.136919, 37.402588, 30.893581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003778, 38.058430, 30.619946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323372, 38.105640, 30.855808>,  <31.515127, 38.133968, 30.997326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323372, 38.105640, 30.855808>,  <31.003778, 38.058430, 30.619946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323372, 38.105640, 30.855808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438880, 0.555893, -0.705952,
		-0.411111, 0.822832, 0.392347,
		0.798982, 0.118031, 0.589658,
		31.563066, 38.141048, 31.032705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190796, 38.765594, 30.489347>,  <31.003778, 38.058430, 30.619946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190796, 38.765594, 30.489347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516621, 38.608910, 30.660488>,  <31.712114, 38.514900, 30.763172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516621, 38.608910, 30.660488>,  <31.190796, 38.765594, 30.489347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516621, 38.608910, 30.660488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579616, 0.520096, -0.627332,
		0.023208, 0.758989, 0.650690,
		0.814559, -0.391709, 0.427851,
		31.760988, 38.491398, 30.788843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643337, 39.298820, 30.699919>,  <31.190796, 38.765594, 30.489347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643337, 39.298820, 30.699919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.850346, 38.958809, 30.660685>,  <31.974550, 38.754803, 30.637144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.850346, 38.958809, 30.660685>,  <31.643337, 39.298820, 30.699919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850346, 38.958809, 30.660685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626125, 0.454324, -0.633685,
		0.583212, 0.266534, 0.767348,
		0.517523, -0.850029, -0.098084,
		32.005604, 38.703800, 30.631260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380733, 39.470325, 30.686617>,  <31.643337, 39.298820, 30.699919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380733, 39.470325, 30.686617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387306, 39.095695, 30.546585>,  <32.391251, 38.870918, 30.462566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387306, 39.095695, 30.546585>,  <32.380733, 39.470325, 30.686617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387306, 39.095695, 30.546585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630346, 0.281490, -0.723483,
		0.776140, -0.208782, 0.594993,
		0.016434, -0.936575, -0.350081,
		32.392235, 38.814724, 30.441561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076111, 39.337063, 30.645700>,  <32.380733, 39.470325, 30.686617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076111, 39.337063, 30.645700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896217, 39.097698, 30.380478>,  <32.788280, 38.954079, 30.221344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896217, 39.097698, 30.380478>,  <33.076111, 39.337063, 30.645700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896217, 39.097698, 30.380478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763589, 0.127501, -0.632990,
		0.463330, -0.790977, 0.399601,
		-0.449731, -0.598414, -0.663056,
		32.761299, 38.918175, 30.181561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522350, 39.258316, 30.109598>,  <33.076111, 39.337063, 30.645700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522350, 39.258316, 30.109598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209602, 39.107956, 29.910648>,  <33.021954, 39.017738, 29.791279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209602, 39.107956, 29.910648>,  <33.522350, 39.258316, 30.109598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209602, 39.107956, 29.910648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499175, 0.100501, -0.860653,
		0.373510, -0.921192, 0.109064,
		-0.781866, -0.375904, -0.497374,
		32.975044, 38.995186, 29.761436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713871, 38.637474, 29.709875>,  <33.522350, 39.258316, 30.109598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713871, 38.637474, 29.709875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395977, 38.812695, 29.541828>,  <33.205238, 38.917828, 29.441000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395977, 38.812695, 29.541828>,  <33.713871, 38.637474, 29.709875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395977, 38.812695, 29.541828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496656, 0.071480, -0.864999,
		-0.348888, -0.896101, -0.274371,
		-0.794739, 0.438056, -0.420116,
		33.157555, 38.944111, 29.415794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564636, 38.367397, 29.050346>,  <33.713871, 38.637474, 29.709875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564636, 38.367397, 29.050346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397667, 38.728516, 29.008945>,  <33.297485, 38.945187, 28.984104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397667, 38.728516, 29.008945>,  <33.564636, 38.367397, 29.050346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397667, 38.728516, 29.008945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543383, 0.156693, -0.824732,
		-0.728347, -0.400506, -0.555972,
		-0.417427, 0.902797, -0.103501,
		33.272438, 38.999355, 28.977896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500252, 38.442074, 28.377394>,  <33.564636, 38.367397, 29.050346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500252, 38.442074, 28.377394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417698, 38.817112, 28.489336>,  <33.368168, 39.042133, 28.556501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417698, 38.817112, 28.489336>,  <33.500252, 38.442074, 28.377394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417698, 38.817112, 28.489336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222403, 0.323479, -0.919727,
		-0.952860, -0.127574, -0.275285,
		-0.206383, 0.937596, 0.279858,
		33.355782, 39.098392, 28.573294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040546, 38.683254, 27.828856>,  <33.500252, 38.442074, 28.377394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040546, 38.683254, 27.828856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228840, 38.983639, 28.014097>,  <33.341816, 39.163868, 28.125242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228840, 38.983639, 28.014097>,  <33.040546, 38.683254, 27.828856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228840, 38.983639, 28.014097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180735, 0.431686, -0.883732,
		-0.863563, 0.499704, 0.067485,
		0.470737, 0.750962, 0.463102,
		33.370060, 39.208927, 28.153028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802502, 39.258377, 27.422791>,  <33.040546, 38.683254, 27.828856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802502, 39.258377, 27.422791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122883, 39.389748, 27.623034>,  <33.315113, 39.468571, 27.743179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122883, 39.389748, 27.623034>,  <32.802502, 39.258377, 27.422791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122883, 39.389748, 27.623034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355610, 0.411714, -0.839066,
		-0.481676, 0.850076, 0.212975,
		0.800955, 0.328422, 0.500609,
		33.363171, 39.488274, 27.773216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896862, 39.924480, 27.155178>,  <32.802502, 39.258377, 27.422791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896862, 39.924480, 27.155178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252792, 39.813694, 27.300230>,  <33.466351, 39.747223, 27.387260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252792, 39.813694, 27.300230>,  <32.896862, 39.924480, 27.155178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252792, 39.813694, 27.300230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438287, 0.297688, -0.848108,
		0.126950, 0.913603, 0.386282,
		0.889825, -0.276969, 0.362629,
		33.519741, 39.730602, 27.409019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312283, 40.504105, 27.128305>,  <32.896862, 39.924480, 27.155178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312283, 40.504105, 27.128305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583176, 40.212067, 27.164764>,  <33.745712, 40.036842, 27.186640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583176, 40.212067, 27.164764>,  <33.312283, 40.504105, 27.128305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583176, 40.212067, 27.164764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518691, 0.385892, -0.762920,
		0.521835, 0.563954, 0.640035,
		0.677236, -0.730099, 0.091146,
		33.786346, 39.993038, 27.192108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986160, 40.833687, 27.016911>,  <33.312283, 40.504105, 27.128305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986160, 40.833687, 27.016911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053631, 40.445152, 26.949923>,  <34.094112, 40.212032, 26.909729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053631, 40.445152, 26.949923>,  <33.986160, 40.833687, 27.016911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053631, 40.445152, 26.949923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518949, 0.231965, -0.822730,
		0.837998, 0.051868, 0.543203,
		0.168677, -0.971340, -0.167470,
		34.104233, 40.153751, 26.899681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720215, 40.790447, 26.781664>,  <33.986160, 40.833687, 27.016911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720215, 40.790447, 26.781664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563324, 40.442997, 26.660572>,  <34.469189, 40.234528, 26.587917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563324, 40.442997, 26.660572>,  <34.720215, 40.790447, 26.781664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563324, 40.442997, 26.660572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510647, 0.068129, -0.857087,
		0.765115, -0.490757, 0.416841,
		-0.392222, -0.868629, -0.302730,
		34.445656, 40.182407, 26.569754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247959, 40.544838, 26.434175>,  <34.720215, 40.790447, 26.781664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247959, 40.544838, 26.434175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.950779, 40.307819, 26.309650>,  <34.772472, 40.165607, 26.234936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.950779, 40.307819, 26.309650>,  <35.247959, 40.544838, 26.434175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950779, 40.307819, 26.309650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464612, -0.121723, -0.877109,
		0.481838, -0.796283, 0.365740,
		-0.742946, -0.592551, -0.311312,
		34.727894, 40.130054, 26.216257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642281, 39.985130, 26.184179>,  <35.247959, 40.544838, 26.434175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642281, 39.985130, 26.184179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281200, 40.017788, 26.015200>,  <35.064552, 40.037380, 25.913813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281200, 40.017788, 26.015200>,  <35.642281, 39.985130, 26.184179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281200, 40.017788, 26.015200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429812, 0.126045, -0.894077,
		-0.019748, -0.988659, -0.148872,
		-0.902702, 0.081644, -0.422448,
		35.010391, 40.042282, 25.888466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306339, 39.605598, 26.245956>,  <35.642281, 39.985130, 26.184179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306339, 39.605598, 26.245956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699535, 39.604786, 26.172501>,  <36.935452, 39.604298, 26.128428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699535, 39.604786, 26.172501>,  <36.306339, 39.605598, 26.245956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699535, 39.604786, 26.172501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183616, -0.009152, 0.982956,
		-0.003659, -0.999956, -0.008626,
		0.982991, -0.002013, -0.183641,
		36.994434, 39.604176, 26.117409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528358, 39.003128, 26.588402>,  <36.306339, 39.605598, 26.245956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528358, 39.003128, 26.588402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830269, 39.257542, 26.524183>,  <37.011414, 39.410191, 26.485651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830269, 39.257542, 26.524183>,  <36.528358, 39.003128, 26.588402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830269, 39.257542, 26.524183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315356, -0.137204, 0.939003,
		0.575212, -0.759363, -0.304136,
		0.754773, 0.636037, -0.160548,
		37.056702, 39.448353, 26.476019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089924, 38.594769, 26.714863>,  <36.528358, 39.003128, 26.588402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089924, 38.594769, 26.714863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253529, 38.958828, 26.741226>,  <37.351692, 39.177265, 26.757044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253529, 38.958828, 26.741226>,  <37.089924, 38.594769, 26.714863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253529, 38.958828, 26.741226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424624, -0.253756, 0.869081,
		0.807717, -0.327474, -0.490259,
		0.409008, 0.910148, 0.065910,
		37.376232, 39.231873, 26.761000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871948, 38.646713, 26.855686>,  <37.089924, 38.594769, 26.714863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871948, 38.646713, 26.855686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.730465, 38.998142, 26.984068>,  <37.645576, 39.209000, 27.061096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.730465, 38.998142, 26.984068>,  <37.871948, 38.646713, 26.855686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730465, 38.998142, 26.984068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374915, -0.181196, 0.909179,
		0.856931, 0.441912, -0.265298,
		-0.353706, 0.878568, 0.320952,
		37.624352, 39.261711, 27.080353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445576, 38.996746, 27.287754>,  <37.871948, 38.646713, 26.855686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445576, 38.996746, 27.287754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106834, 39.176434, 27.401625>,  <37.903587, 39.284245, 27.469948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106834, 39.176434, 27.401625>,  <38.445576, 38.996746, 27.287754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106834, 39.176434, 27.401625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294133, -0.050353, 0.954437,
		0.443081, 0.892004, -0.089486,
		-0.846856, 0.449214, 0.284678,
		37.852779, 39.311199, 27.487028>
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
