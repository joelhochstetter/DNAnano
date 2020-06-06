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
	<24.233831, 34.486118, 35.033066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326931, 34.873375, 34.996120>,  <24.382792, 35.105728, 34.973953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326931, 34.873375, 34.996120>,  <24.233831, 34.486118, 35.033066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326931, 34.873375, 34.996120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461356, 0.193522, 0.865852,
		0.856141, -0.158914, 0.491700,
		0.232751, 0.968140, -0.092366,
		24.396757, 35.163818, 34.968410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567329, 34.635223, 35.663563>,  <24.233831, 34.486118, 35.033066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567329, 34.635223, 35.663563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353903, 34.928909, 35.495640>,  <24.225847, 35.105122, 35.394886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353903, 34.928909, 35.495640>,  <24.567329, 34.635223, 35.663563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353903, 34.928909, 35.495640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679728, -0.076902, 0.729421,
		0.503265, 0.674553, 0.540096,
		-0.533567, 0.734210, -0.419811,
		24.193832, 35.149174, 35.369698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692087, 33.912094, 35.487255>,  <24.567329, 34.635223, 35.663563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692087, 33.912094, 35.487255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901323, 33.626530, 35.301048>,  <25.026865, 33.455189, 35.189323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901323, 33.626530, 35.301048>,  <24.692087, 33.912094, 35.487255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.901323, 33.626530, 35.301048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764851, 0.152254, 0.625956,
		-0.376002, -0.683481, 0.625680,
		0.523091, -0.713913, -0.465514,
		25.058250, 33.412357, 35.161392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944267, 33.301231, 36.063660>,  <24.692087, 33.912094, 35.487255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944267, 33.301231, 36.063660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184898, 33.386452, 35.755707>,  <25.329277, 33.437584, 35.570934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184898, 33.386452, 35.755707>,  <24.944267, 33.301231, 36.063660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184898, 33.386452, 35.755707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661219, 0.407967, 0.629565,
		0.448212, -0.887792, 0.104554,
		0.601578, 0.213046, -0.769880,
		25.365372, 33.450367, 35.524742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649799, 32.949299, 36.022057>,  <24.944267, 33.301231, 36.063660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649799, 32.949299, 36.022057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632652, 33.310394, 35.850842>,  <25.622364, 33.527054, 35.748112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632652, 33.310394, 35.850842>,  <25.649799, 32.949299, 36.022057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632652, 33.310394, 35.850842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518817, 0.386253, 0.762651,
		0.853809, -0.189380, -0.484917,
		-0.042870, 0.902742, -0.428040,
		25.619791, 33.581219, 35.722431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317606, 33.192509, 35.805424>,  <25.649799, 32.949299, 36.022057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317606, 33.192509, 35.805424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063356, 33.484795, 35.905052>,  <25.910807, 33.660168, 35.964828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063356, 33.484795, 35.905052>,  <26.317606, 33.192509, 35.805424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063356, 33.484795, 35.905052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681501, 0.379542, 0.625703,
		0.362678, 0.567454, -0.739230,
		-0.635626, 0.730715, 0.249069,
		25.872669, 33.704010, 35.979774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571280, 33.881104, 35.576466>,  <26.317606, 33.192509, 35.805424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571280, 33.881104, 35.576466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338764, 33.890667, 35.901802>,  <26.199255, 33.896404, 36.097004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338764, 33.890667, 35.901802>,  <26.571280, 33.881104, 35.576466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338764, 33.890667, 35.901802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813478, 0.040265, 0.580200,
		-0.018878, 0.998903, -0.042854,
		-0.581289, 0.023907, 0.813346,
		26.164377, 33.897839, 36.145805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649559, 34.450859, 36.194168>,  <26.571280, 33.881104, 35.576466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649559, 34.450859, 36.194168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515902, 34.106094, 36.346725>,  <26.435707, 33.899235, 36.438259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515902, 34.106094, 36.346725>,  <26.649559, 34.450859, 36.194168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515902, 34.106094, 36.346725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740361, 0.010398, 0.672129,
		-0.583279, 0.506958, 0.634649,
		-0.334142, -0.861908, 0.381396,
		26.415659, 33.847523, 36.461143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646118, 35.153961, 36.025642>,  <26.649559, 34.450859, 36.194168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646118, 35.153961, 36.025642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358410, 35.092876, 36.296738>,  <26.185785, 35.056225, 36.459393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358410, 35.092876, 36.296738>,  <26.646118, 35.153961, 36.025642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358410, 35.092876, 36.296738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599981, 0.628357, -0.495167,
		-0.350242, -0.762789, -0.543584,
		-0.719273, -0.152712, 0.677736,
		26.142628, 35.047062, 36.500057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878830, 35.053455, 35.713882>,  <26.646118, 35.153961, 36.025642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878830, 35.053455, 35.713882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894745, 35.210045, 36.081615>,  <25.904293, 35.303997, 36.302254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894745, 35.210045, 36.081615>,  <25.878830, 35.053455, 35.713882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894745, 35.210045, 36.081615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558354, 0.771718, -0.304453,
		-0.828648, -0.501198, 0.249284,
		0.039786, 0.391473, 0.919329,
		25.906681, 35.327488, 36.357414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176971, 35.156971, 36.016777>,  <25.878830, 35.053455, 35.713882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176971, 35.156971, 36.016777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.436300, 35.403099, 36.196136>,  <25.591898, 35.550777, 36.303753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.436300, 35.403099, 36.196136>,  <25.176971, 35.156971, 36.016777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.436300, 35.403099, 36.196136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601862, 0.774891, -0.193148,
		-0.466308, -0.144653, 0.872715,
		0.648320, 0.615320, 0.448400,
		25.630796, 35.587696, 36.330658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.744614, 35.632301, 36.336006>,  <25.176971, 35.156971, 36.016777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.744614, 35.632301, 36.336006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086512, 35.812344, 36.232609>,  <25.291651, 35.920368, 36.170570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086512, 35.812344, 36.232609>,  <24.744614, 35.632301, 36.336006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086512, 35.812344, 36.232609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495151, 0.856457, -0.145968,
		0.155689, 0.252759, 0.954921,
		0.854744, 0.450105, -0.258495,
		25.342936, 35.947376, 36.155060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.088953, 35.851990, 36.141830>,  <24.744614, 35.632301, 36.336006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.088953, 35.851990, 36.141830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.132055, 36.219036, 36.294861>,  <24.157917, 36.439266, 36.386677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.132055, 36.219036, 36.294861>,  <24.088953, 35.851990, 36.141830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.132055, 36.219036, 36.294861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960852, -0.194924, 0.196896,
		0.255249, 0.346380, -0.902701,
		0.107757, 0.917619, 0.382574,
		24.164383, 36.494324, 36.409634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630322, 36.270302, 35.773800>,  <24.088953, 35.851990, 36.141830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630322, 36.270302, 35.773800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600847, 36.303638, 36.171318>,  <24.583162, 36.323639, 36.409828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600847, 36.303638, 36.171318>,  <24.630322, 36.270302, 35.773800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600847, 36.303638, 36.171318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926119, -0.363959, 0.099189,
		0.369966, 0.927679, -0.050363,
		-0.073686, 0.083339, 0.993793,
		24.578741, 36.328640, 36.469456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166996, 36.665863, 36.024380>,  <24.630322, 36.270302, 35.773800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166996, 36.665863, 36.024380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013334, 36.409851, 36.290550>,  <24.921137, 36.256245, 36.450253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013334, 36.409851, 36.290550>,  <25.166996, 36.665863, 36.024380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013334, 36.409851, 36.290550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894811, -0.435658, 0.097547,
		0.227463, 0.632901, 0.740066,
		-0.384153, -0.640031, 0.665423,
		24.898088, 36.217842, 36.490177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671503, 36.655045, 36.616444>,  <25.166996, 36.665863, 36.024380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671503, 36.655045, 36.616444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485743, 36.300964, 36.627460>,  <25.374287, 36.088516, 36.634071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485743, 36.300964, 36.627460>,  <25.671503, 36.655045, 36.616444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485743, 36.300964, 36.627460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855086, -0.440074, 0.274159,
		-0.230564, 0.150870, 0.961290,
		-0.464401, -0.885197, 0.027541,
		25.346422, 36.035404, 36.635723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690256, 36.326923, 37.285873>,  <25.671503, 36.655045, 36.616444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690256, 36.326923, 37.285873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670708, 36.020538, 37.029465>,  <25.658979, 35.836708, 36.875618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670708, 36.020538, 37.029465>,  <25.690256, 36.326923, 37.285873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670708, 36.020538, 37.029465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755213, -0.448348, 0.478161,
		-0.653656, -0.460740, 0.600377,
		-0.048870, -0.765965, -0.641022,
		25.656046, 35.790749, 36.837158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846678, 35.697094, 37.644382>,  <25.690256, 36.326923, 37.285873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846678, 35.697094, 37.644382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935797, 35.616356, 37.262886>,  <25.989267, 35.567913, 37.033989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935797, 35.616356, 37.262886>,  <25.846678, 35.697094, 37.644382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935797, 35.616356, 37.262886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834920, -0.465539, 0.293567,
		-0.503259, -0.861702, 0.064807,
		0.222797, -0.201849, -0.953739,
		26.002636, 35.555801, 36.976765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853733, 34.892796, 37.370842>,  <25.846678, 35.697094, 37.644382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853733, 34.892796, 37.370842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123384, 35.138866, 37.207325>,  <26.285175, 35.286507, 37.109215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123384, 35.138866, 37.207325>,  <25.853733, 34.892796, 37.370842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123384, 35.138866, 37.207325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732336, -0.484698, 0.478281,
		0.096087, -0.621794, -0.777264,
		0.674131, 0.615174, -0.408789,
		26.325624, 35.323418, 37.084690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408937, 34.525295, 37.044373>,  <25.853733, 34.892796, 37.370842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408937, 34.525295, 37.044373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549770, 34.868275, 37.194481>,  <26.634270, 35.074062, 37.284546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549770, 34.868275, 37.194481>,  <26.408937, 34.525295, 37.044373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549770, 34.868275, 37.194481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698177, -0.507631, 0.504836,
		0.623368, 0.084263, -0.777375,
		0.352081, 0.857444, 0.375272,
		26.655396, 35.125507, 37.307064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121380, 34.653255, 36.996628>,  <26.408937, 34.525295, 37.044373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121380, 34.653255, 36.996628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935448, 34.809872, 37.314274>,  <26.823889, 34.903843, 37.504864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935448, 34.809872, 37.314274>,  <27.121380, 34.653255, 36.996628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935448, 34.809872, 37.314274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563427, -0.561062, 0.606432,
		0.682994, 0.729317, 0.040194,
		-0.464833, 0.391543, 0.794119,
		26.795998, 34.927334, 37.552509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569519, 34.814369, 37.568623>,  <27.121380, 34.653255, 36.996628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569519, 34.814369, 37.568623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213438, 34.784706, 37.748417>,  <26.999790, 34.766911, 37.856293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213438, 34.784706, 37.748417>,  <27.569519, 34.814369, 37.568623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213438, 34.784706, 37.748417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440382, -0.392680, 0.807382,
		0.116635, 0.916681, 0.382221,
		-0.890203, -0.074154, 0.449489,
		26.946377, 34.762459, 37.883263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392780, 35.047878, 37.305515>,  <27.569519, 34.814369, 37.568623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392780, 35.047878, 37.305515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660629, 35.313686, 37.172844>,  <28.821339, 35.473171, 37.093239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660629, 35.313686, 37.172844>,  <28.392780, 35.047878, 37.305515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660629, 35.313686, 37.172844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731805, -0.666567, 0.141953,
		-0.126756, -0.337781, -0.932650,
		0.669623, 0.664525, -0.331681,
		28.861517, 35.513042, 37.073341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854258, 34.770226, 36.754162>,  <28.392780, 35.047878, 37.305515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854258, 34.770226, 36.754162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099216, 35.026913, 36.938839>,  <29.246193, 35.180927, 37.049644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099216, 35.026913, 36.938839>,  <28.854258, 34.770226, 36.754162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099216, 35.026913, 36.938839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701839, -0.710124, 0.056088,
		0.363853, 0.289686, -0.885264,
		0.612399, 0.641721, 0.461694,
		29.282936, 35.219429, 37.077347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556786, 34.740097, 36.433136>,  <28.854258, 34.770226, 36.754162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556786, 34.740097, 36.433136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559315, 34.847157, 36.818535>,  <29.560831, 34.911392, 37.049774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559315, 34.847157, 36.818535>,  <29.556786, 34.740097, 36.433136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559315, 34.847157, 36.818535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663020, -0.722400, 0.196324,
		0.748575, 0.637576, -0.182021,
		0.006320, 0.267647, 0.963496,
		29.561211, 34.927452, 37.107582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217350, 35.043625, 36.685410>,  <29.556786, 34.740097, 36.433136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217350, 35.043625, 36.685410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010576, 34.842392, 36.962448>,  <29.886513, 34.721653, 37.128670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010576, 34.842392, 36.962448>,  <30.217350, 35.043625, 36.685410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010576, 34.842392, 36.962448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775556, -0.617713, 0.130163,
		0.362344, 0.604433, 0.709484,
		-0.516933, -0.503081, 0.692597,
		29.855495, 34.691467, 37.170227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655411, 34.840096, 37.232346>,  <30.217350, 35.043625, 36.685410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655411, 34.840096, 37.232346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341097, 34.599823, 37.291306>,  <30.152508, 34.455662, 37.326679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341097, 34.599823, 37.291306>,  <30.655411, 34.840096, 37.232346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341097, 34.599823, 37.291306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615458, -0.735787, 0.282539,
		-0.061263, 0.312731, 0.947864,
		-0.785785, -0.600679, 0.147397,
		30.105362, 34.419621, 37.335526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267042, 34.805401, 36.889877>,  <30.655411, 34.840096, 37.232346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267042, 34.805401, 36.889877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346123, 35.098392, 36.629295>,  <31.393572, 35.274185, 36.472946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346123, 35.098392, 36.629295>,  <31.267042, 34.805401, 36.889877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346123, 35.098392, 36.629295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976678, -0.203965, 0.067067,
		-0.083749, -0.649520, -0.755718,
		0.197701, 0.732477, -0.651454,
		31.405434, 35.318134, 36.433861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646294, 34.636124, 36.293747>,  <31.267042, 34.805401, 36.889877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646294, 34.636124, 36.293747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696487, 34.993244, 36.466797>,  <31.726604, 35.207516, 36.570625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696487, 34.993244, 36.466797>,  <31.646294, 34.636124, 36.293747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696487, 34.993244, 36.466797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960598, -0.218347, 0.171977,
		0.248002, 0.393994, -0.885022,
		0.125484, 0.892801, 0.432620,
		31.734133, 35.261086, 36.596584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179825, 35.062260, 35.996437>,  <31.646294, 34.636124, 36.293747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179825, 35.062260, 35.996437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130398, 35.136017, 36.386459>,  <32.100742, 35.180271, 36.620472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130398, 35.136017, 36.386459>,  <32.179825, 35.062260, 35.996437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130398, 35.136017, 36.386459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988948, -0.058249, 0.136343,
		0.081936, 0.981126, -0.175153,
		-0.123567, 0.184389, 0.975055,
		32.093327, 35.191334, 36.678974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871410, 35.022282, 36.319527>,  <32.179825, 35.062260, 35.996437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871410, 35.022282, 36.319527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898254, 35.383396, 36.149597>,  <32.914360, 35.600063, 36.047638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898254, 35.383396, 36.149597>,  <32.871410, 35.022282, 36.319527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898254, 35.383396, 36.149597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418583, 0.361025, 0.833336,
		0.905695, -0.233752, -0.353661,
		0.067114, 0.902785, -0.424823,
		32.918388, 35.654232, 36.022152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129982, 34.488468, 36.734150>,  <32.871410, 35.022282, 36.319527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129982, 34.488468, 36.734150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030598, 34.105621, 36.793743>,  <32.970966, 33.875912, 36.829498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030598, 34.105621, 36.793743>,  <33.129982, 34.488468, 36.734150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030598, 34.105621, 36.793743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123323, 0.183813, 0.975194,
		-0.960760, 0.223920, -0.163705,
		-0.248457, -0.957117, 0.148986,
		32.956062, 33.818485, 36.838440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395229, 34.391956, 36.944500>,  <33.129982, 34.488468, 36.734150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395229, 34.391956, 36.944500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698883, 34.163391, 37.069210>,  <32.881073, 34.026253, 37.144035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698883, 34.163391, 37.069210>,  <32.395229, 34.391956, 36.944500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698883, 34.163391, 37.069210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054708, 0.533274, 0.844172,
		-0.648634, -0.623781, 0.436086,
		0.759131, -0.571416, 0.311774,
		32.926624, 33.991966, 37.162743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419350, 34.461082, 37.670456>,  <32.395229, 34.391956, 36.944500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419350, 34.461082, 37.670456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769947, 34.287857, 37.586342>,  <32.980305, 34.183922, 37.535873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769947, 34.287857, 37.586342>,  <32.419350, 34.461082, 37.670456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769947, 34.287857, 37.586342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441511, 0.548976, 0.709714,
		-0.191907, -0.714902, 0.672374,
		0.876493, -0.433059, -0.210285,
		33.032894, 34.157940, 37.523258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668179, 34.027126, 38.186893>,  <32.419350, 34.461082, 37.670456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668179, 34.027126, 38.186893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957439, 34.209251, 37.979145>,  <33.130997, 34.318527, 37.854496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957439, 34.209251, 37.979145>,  <32.668179, 34.027126, 38.186893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957439, 34.209251, 37.979145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294913, 0.476423, 0.828279,
		0.624564, -0.752140, 0.210249,
		0.723150, 0.455309, -0.519373,
		33.174385, 34.345844, 37.823334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070126, 34.261906, 38.716248>,  <32.668179, 34.027126, 38.186893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070126, 34.261906, 38.716248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234058, 34.460800, 38.410362>,  <33.332417, 34.580139, 38.226830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234058, 34.460800, 38.410362>,  <33.070126, 34.261906, 38.716248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234058, 34.460800, 38.410362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351653, 0.687427, 0.635440,
		0.841653, -0.529338, 0.106872,
		0.409830, 0.497238, -0.764718,
		33.357006, 34.609970, 38.180946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758354, 34.323452, 38.606812>,  <33.070126, 34.261906, 38.716248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758354, 34.323452, 38.606812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631683, 34.673500, 38.460457>,  <33.555679, 34.883530, 38.372643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631683, 34.673500, 38.460457>,  <33.758354, 34.323452, 38.606812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631683, 34.673500, 38.460457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532049, 0.483228, 0.695280,
		0.785263, 0.025511, -0.618637,
		-0.316680, 0.875123, -0.365888,
		33.536678, 34.936035, 38.350689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328182, 34.783310, 38.529587>,  <33.758354, 34.323452, 38.606812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328182, 34.783310, 38.529587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985634, 34.981792, 38.586731>,  <33.780106, 35.100880, 38.621017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985634, 34.981792, 38.586731>,  <34.328182, 34.783310, 38.529587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985634, 34.981792, 38.586731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408601, 0.482057, 0.775027,
		0.315705, 0.722084, -0.615569,
		-0.856374, 0.496202, 0.142856,
		33.728722, 35.130653, 38.629589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574440, 35.534576, 38.605152>,  <34.328182, 34.783310, 38.529587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574440, 35.534576, 38.605152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199398, 35.502129, 38.740391>,  <33.974373, 35.482662, 38.821533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199398, 35.502129, 38.740391>,  <34.574440, 35.534576, 38.605152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199398, 35.502129, 38.740391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271667, 0.435959, 0.857984,
		-0.216993, 0.896303, -0.386723,
		-0.937609, -0.081117, 0.338096,
		33.918114, 35.477795, 38.841820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349285, 36.216576, 38.887291>,  <34.574440, 35.534576, 38.605152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349285, 36.216576, 38.887291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140862, 35.912556, 39.042637>,  <34.015808, 35.730145, 39.135845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140862, 35.912556, 39.042637>,  <34.349285, 36.216576, 38.887291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140862, 35.912556, 39.042637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225483, 0.316270, 0.921483,
		-0.823196, 0.567719, 0.006581,
		-0.521062, -0.760045, 0.388363,
		33.984543, 35.684544, 39.159145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750107, 36.459042, 39.257690>,  <34.349285, 36.216576, 38.887291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750107, 36.459042, 39.257690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895683, 36.120216, 39.412628>,  <33.983028, 35.916920, 39.505589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895683, 36.120216, 39.412628>,  <33.750107, 36.459042, 39.257690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895683, 36.120216, 39.412628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241567, 0.315792, 0.917562,
		-0.899552, -0.427505, -0.089694,
		0.363938, -0.847063, 0.387342,
		34.004864, 35.866096, 39.528831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286572, 36.168789, 39.801861>,  <33.750107, 36.459042, 39.257690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286572, 36.168789, 39.801861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648800, 36.016777, 39.877251>,  <33.866135, 35.925571, 39.922485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648800, 36.016777, 39.877251>,  <33.286572, 36.168789, 39.801861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648800, 36.016777, 39.877251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154357, 0.118639, 0.980866,
		-0.395120, -0.917334, 0.048775,
		0.905568, -0.380031, 0.188473,
		33.920471, 35.902767, 39.933792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159851, 35.595074, 40.228672>,  <33.286572, 36.168789, 39.801861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159851, 35.595074, 40.228672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494431, 35.808823, 40.277332>,  <33.695179, 35.937073, 40.306526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494431, 35.808823, 40.277332>,  <33.159851, 35.595074, 40.228672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494431, 35.808823, 40.277332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341087, 0.333861, 0.878747,
		0.428967, -0.776519, 0.461526,
		0.836449, 0.534374, 0.121645,
		33.745365, 35.969135, 40.313828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769123, 35.360493, 39.517056>,  <33.159851, 35.595074, 40.228672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769123, 35.360493, 39.517056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115528, 35.392117, 39.319561>,  <33.323372, 35.411091, 39.201065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115528, 35.392117, 39.319561>,  <32.769123, 35.360493, 39.517056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115528, 35.392117, 39.319561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476577, -0.168329, -0.862867,
		-0.151330, 0.982555, -0.108095,
		0.866010, 0.079062, -0.493736,
		33.375332, 35.415836, 39.171440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607971, 35.717251, 38.860161>,  <32.769123, 35.360493, 39.517056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607971, 35.717251, 38.860161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943794, 35.507725, 38.802528>,  <33.145287, 35.382008, 38.767948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943794, 35.507725, 38.802528>,  <32.607971, 35.717251, 38.860161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943794, 35.507725, 38.802528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362709, -0.343005, -0.866481,
		0.404454, 0.779722, -0.477965,
		0.839559, -0.523814, -0.144083,
		33.195663, 35.350582, 38.759304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115704, 35.935184, 38.341957>,  <32.607971, 35.717251, 38.860161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115704, 35.935184, 38.341957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049862, 35.547016, 38.412598>,  <33.010357, 35.314114, 38.454983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049862, 35.547016, 38.412598>,  <33.115704, 35.935184, 38.341957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049862, 35.547016, 38.412598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399736, -0.098048, -0.911371,
		0.901729, -0.220613, -0.371773,
		-0.164609, -0.970421, 0.176600,
		33.000481, 35.255890, 38.465576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235718, 35.702068, 37.636658>,  <33.115704, 35.935184, 38.341957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235718, 35.702068, 37.636658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029449, 35.457775, 37.877022>,  <32.905689, 35.311199, 38.021240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029449, 35.457775, 37.877022>,  <33.235718, 35.702068, 37.636658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029449, 35.457775, 37.877022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592932, -0.251899, -0.764839,
		0.618481, -0.750700, -0.232228,
		-0.515667, -0.610734, 0.600909,
		32.874748, 35.274555, 38.057293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526379, 36.007061, 37.871746>,  <33.235718, 35.702068, 37.636658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526379, 36.007061, 37.871746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380344, 35.964287, 37.501823>,  <32.292725, 35.938622, 37.279869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380344, 35.964287, 37.501823>,  <32.526379, 36.007061, 37.871746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380344, 35.964287, 37.501823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079757, 0.993322, -0.083371,
		0.927550, 0.043323, -0.371179,
		-0.365088, -0.106935, -0.924811,
		32.270817, 35.932205, 37.224380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797272, 36.483738, 37.332916>,  <32.526379, 36.007061, 37.871746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797272, 36.483738, 37.332916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432049, 36.376984, 37.209568>,  <32.212914, 36.312931, 37.135559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432049, 36.376984, 37.209568>,  <32.797272, 36.483738, 37.332916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432049, 36.376984, 37.209568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231216, 0.961633, -0.147655,
		0.335950, -0.063516, -0.939736,
		-0.913059, -0.266887, -0.308374,
		32.158131, 36.296917, 37.117054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715923, 36.577160, 36.622143>,  <32.797272, 36.483738, 37.332916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715923, 36.577160, 36.622143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403408, 36.665520, 36.855652>,  <32.215900, 36.718536, 36.995758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403408, 36.665520, 36.855652>,  <32.715923, 36.577160, 36.622143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403408, 36.665520, 36.855652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177113, 0.975297, -0.132008,
		-0.598516, 0.000258, -0.801111,
		-0.781287, 0.220896, 0.583777,
		32.169022, 36.731789, 37.030785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227898, 36.973866, 36.172810>,  <32.715923, 36.577160, 36.622143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227898, 36.973866, 36.172810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203804, 37.032654, 36.567730>,  <32.189346, 37.067928, 36.804684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203804, 37.032654, 36.567730>,  <32.227898, 36.973866, 36.172810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203804, 37.032654, 36.567730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160611, 0.977640, -0.135736,
		-0.985178, 0.150396, -0.082493,
		-0.060234, 0.146973, 0.987305,
		32.185734, 37.076744, 36.863922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661690, 37.480034, 36.266273>,  <32.227898, 36.973866, 36.172810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661690, 37.480034, 36.266273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919338, 37.476727, 36.572224>,  <32.073929, 37.474743, 36.755795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919338, 37.476727, 36.572224>,  <31.661690, 37.480034, 36.266273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919338, 37.476727, 36.572224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205472, 0.965061, -0.162598,
		-0.736811, 0.261894, 0.623315,
		0.644121, -0.008270, 0.764879,
		32.112576, 37.474247, 36.801689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888103, 38.088634, 36.480217>,  <31.661690, 37.480034, 36.266273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888103, 38.088634, 36.480217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205818, 37.970028, 36.692326>,  <32.396446, 37.898865, 36.819592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205818, 37.970028, 36.692326>,  <31.888103, 38.088634, 36.480217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205818, 37.970028, 36.692326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445031, 0.878137, -0.175563,
		-0.413593, 0.375434, 0.829451,
		0.794284, -0.296520, 0.530272,
		32.444103, 37.881073, 36.851406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088314, 38.751041, 36.190598>,  <31.888103, 38.088634, 36.480217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088314, 38.751041, 36.190598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463474, 38.793194, 36.322803>,  <32.688572, 38.818485, 36.402126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463474, 38.793194, 36.322803>,  <32.088314, 38.751041, 36.190598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463474, 38.793194, 36.322803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321682, -0.620843, -0.714895,
		0.129863, 0.776820, -0.616186,
		0.937900, 0.105378, 0.330514,
		32.744843, 38.824806, 36.421959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534508, 39.052723, 35.729332>,  <32.088314, 38.751041, 36.190598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534508, 39.052723, 35.729332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694942, 38.769661, 35.962006>,  <32.791203, 38.599823, 36.101612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694942, 38.769661, 35.962006>,  <32.534508, 39.052723, 35.729332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694942, 38.769661, 35.962006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287687, -0.505565, -0.813413,
		0.869693, 0.493593, 0.000806,
		0.401087, -0.707651, 0.581686,
		32.815269, 38.557365, 36.136513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193066, 39.005798, 35.471615>,  <32.534508, 39.052723, 35.729332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193066, 39.005798, 35.471615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125607, 38.650726, 35.642998>,  <33.085129, 38.437683, 35.745827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125607, 38.650726, 35.642998>,  <33.193066, 39.005798, 35.471615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125607, 38.650726, 35.642998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520604, -0.449327, -0.726000,
		0.836976, 0.100617, 0.537911,
		-0.168650, -0.887683, 0.428457,
		33.075012, 38.384422, 35.771534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914948, 38.638481, 35.705441>,  <33.193066, 39.005798, 35.471615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914948, 38.638481, 35.705441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604301, 38.404610, 35.611618>,  <33.417915, 38.264286, 35.555325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604301, 38.404610, 35.611618>,  <33.914948, 38.638481, 35.705441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604301, 38.404610, 35.611618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521090, -0.386961, -0.760741,
		0.354028, -0.713026, 0.605192,
		-0.776614, -0.584683, -0.234555,
		33.371319, 38.229206, 35.541252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188332, 38.017693, 35.493992>,  <33.914948, 38.638481, 35.705441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188332, 38.017693, 35.493992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808197, 37.997570, 35.371136>,  <33.580116, 37.985497, 35.297424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808197, 37.997570, 35.371136>,  <34.188332, 38.017693, 35.493992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808197, 37.997570, 35.371136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270180, -0.623203, -0.733908,
		-0.154491, -0.780440, 0.605843,
		-0.950335, -0.050304, -0.307138,
		33.523098, 37.982479, 35.278996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824928, 37.347404, 35.588913>,  <34.188332, 38.017693, 35.493992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824928, 37.347404, 35.588913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729549, 37.574654, 35.273857>,  <33.672321, 37.711002, 35.084824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729549, 37.574654, 35.273857>,  <33.824928, 37.347404, 35.588913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729549, 37.574654, 35.273857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422725, -0.669452, -0.610849,
		-0.874325, -0.478613, -0.080529,
		-0.238450, 0.568122, -0.787641,
		33.658016, 37.745090, 35.037563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623104, 36.960712, 34.964371>,  <33.824928, 37.347404, 35.588913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623104, 36.960712, 34.964371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784515, 37.308113, 34.849220>,  <33.881363, 37.516552, 34.780128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784515, 37.308113, 34.849220>,  <33.623104, 36.960712, 34.964371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784515, 37.308113, 34.849220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677839, -0.495103, -0.543514,
		-0.614569, 0.024191, -0.788492,
		0.403532, 0.868498, -0.287877,
		33.905575, 37.568661, 34.762856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721035, 37.171368, 34.225773>,  <33.623104, 36.960712, 34.964371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721035, 37.171368, 34.225773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032879, 37.300747, 34.440281>,  <34.219986, 37.378372, 34.568985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032879, 37.300747, 34.440281>,  <33.721035, 37.171368, 34.225773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032879, 37.300747, 34.440281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617607, -0.538968, -0.572779,
		0.103772, 0.777751, -0.619947,
		0.779611, 0.323445, 0.536275,
		34.266762, 37.397781, 34.601162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318890, 37.304813, 33.816143>,  <33.721035, 37.171368, 34.225773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318890, 37.304813, 33.816143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492054, 37.258469, 34.173729>,  <34.595951, 37.230659, 34.388279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492054, 37.258469, 34.173729>,  <34.318890, 37.304813, 33.816143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492054, 37.258469, 34.173729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643686, -0.654538, -0.396546,
		0.631077, 0.747098, -0.208774,
		0.432909, -0.115866, 0.893960,
		34.621925, 37.223709, 34.441917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985931, 37.218464, 33.618191>,  <34.318890, 37.304813, 33.816143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985931, 37.218464, 33.618191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917629, 37.059883, 33.979004>,  <34.876648, 36.964737, 34.195492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917629, 37.059883, 33.979004>,  <34.985931, 37.218464, 33.618191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917629, 37.059883, 33.979004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501928, -0.822794, -0.266606,
		0.847885, 0.407233, 0.339487,
		-0.170758, -0.396450, 0.902036,
		34.866402, 36.940948, 34.249615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543465, 37.191639, 34.004444>,  <34.985931, 37.218464, 33.618191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543465, 37.191639, 34.004444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249325, 36.925125, 34.053978>,  <35.072842, 36.765217, 34.083698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249325, 36.925125, 34.053978>,  <35.543465, 37.191639, 34.004444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249325, 36.925125, 34.053978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562669, -0.702105, -0.436408,
		0.377717, -0.251231, 0.891186,
		-0.735346, -0.666281, 0.123837,
		35.028721, 36.725243, 34.091129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754105, 36.544811, 34.347527>,  <35.543465, 37.191639, 34.004444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754105, 36.544811, 34.347527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443329, 36.478020, 34.104717>,  <35.256863, 36.437946, 33.959030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443329, 36.478020, 34.104717>,  <35.754105, 36.544811, 34.347527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443329, 36.478020, 34.104717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542437, -0.666966, -0.510801,
		-0.319573, -0.726136, 0.608769,
		-0.776940, -0.166981, -0.607028,
		35.210247, 36.427925, 33.922607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768379, 35.837593, 34.151821>,  <35.754105, 36.544811, 34.347527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768379, 35.837593, 34.151821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567669, 36.024212, 33.860466>,  <35.447243, 36.136185, 33.685654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567669, 36.024212, 33.860466>,  <35.768379, 35.837593, 34.151821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567669, 36.024212, 33.860466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345196, -0.664108, -0.663174,
		-0.793131, -0.584205, 0.172187,
		-0.501780, 0.466546, -0.728390,
		35.417133, 36.164177, 33.641949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429241, 35.238464, 33.794151>,  <35.768379, 35.837593, 34.151821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429241, 35.238464, 33.794151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483952, 35.573891, 33.583210>,  <35.516777, 35.775146, 33.456646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483952, 35.573891, 33.583210>,  <35.429241, 35.238464, 33.794151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483952, 35.573891, 33.583210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117222, -0.542320, -0.831955,
		-0.983642, 0.051977, -0.172476,
		0.136779, 0.838563, -0.527355,
		35.524986, 35.825459, 33.425003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092056, 35.198288, 33.196106>,  <35.429241, 35.238464, 33.794151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092056, 35.198288, 33.196106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416508, 35.417381, 33.114071>,  <35.611179, 35.548840, 33.064850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416508, 35.417381, 33.114071>,  <35.092056, 35.198288, 33.196106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416508, 35.417381, 33.114071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099737, -0.475056, -0.874285,
		-0.576306, 0.688700, -0.439959,
		0.811125, 0.547736, -0.205089,
		35.659843, 35.581703, 33.052544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043968, 35.413937, 32.514923>,  <35.092056, 35.198288, 33.196106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043968, 35.413937, 32.514923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433090, 35.403427, 32.606972>,  <35.666565, 35.397121, 32.662201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433090, 35.403427, 32.606972>,  <35.043968, 35.413937, 32.514923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433090, 35.403427, 32.606972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162036, -0.632742, -0.757219,
		0.165501, 0.773916, -0.611279,
		0.972807, -0.026272, 0.230122,
		35.724934, 35.395546, 32.676010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191753, 35.263004, 31.891092>,  <35.043968, 35.413937, 32.514923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191753, 35.263004, 31.891092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514835, 35.187130, 32.114388>,  <35.708683, 35.141605, 32.248363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514835, 35.187130, 32.114388>,  <35.191753, 35.263004, 31.891092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514835, 35.187130, 32.114388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328291, -0.641775, -0.693073,
		0.489731, 0.743064, -0.456092,
		0.807706, -0.189688, 0.558238,
		35.757149, 35.130222, 32.281860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703983, 35.266327, 31.490181>,  <35.191753, 35.263004, 31.891092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703983, 35.266327, 31.490181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854725, 35.021862, 31.768597>,  <35.945168, 34.875183, 31.935646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854725, 35.021862, 31.768597>,  <35.703983, 35.266327, 31.490181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854725, 35.021862, 31.768597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395971, -0.573022, -0.717533,
		0.837371, 0.546014, 0.026057,
		0.376851, -0.611159, 0.696037,
		35.967781, 34.838516, 31.977407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395428, 35.068054, 31.223267>,  <35.703983, 35.266327, 31.490181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395428, 35.068054, 31.223267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292400, 34.799267, 31.501007>,  <36.230583, 34.637997, 31.667652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292400, 34.799267, 31.501007>,  <36.395428, 35.068054, 31.223267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292400, 34.799267, 31.501007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339820, -0.735683, -0.585912,
		0.904535, 0.085044, 0.417833,
		-0.257564, -0.671966, 0.694351,
		36.215130, 34.597675, 31.709312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940506, 34.580200, 31.225304>,  <36.395428, 35.068054, 31.223267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940506, 34.580200, 31.225304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641724, 34.367855, 31.385429>,  <36.462456, 34.240448, 31.481504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641724, 34.367855, 31.385429>,  <36.940506, 34.580200, 31.225304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641724, 34.367855, 31.385429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198655, -0.752773, -0.627590,
		0.634507, -0.389255, 0.667743,
		-0.746951, -0.530861, 0.400312,
		36.417637, 34.208595, 31.505524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082146, 33.865955, 30.993589>,  <36.940506, 34.580200, 31.225304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082146, 33.865955, 30.993589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726536, 33.774929, 31.152514>,  <36.513172, 33.720314, 31.247868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726536, 33.774929, 31.152514>,  <37.082146, 33.865955, 30.993589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726536, 33.774929, 31.152514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034776, -0.831675, -0.554173,
		0.456545, -0.506488, 0.731462,
		-0.889021, -0.227567, 0.397311,
		36.459831, 33.706657, 31.271708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064110, 33.133354, 31.228615>,  <37.082146, 33.865955, 30.993589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064110, 33.133354, 31.228615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693584, 33.245193, 31.127598>,  <36.471272, 33.312298, 31.066988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693584, 33.245193, 31.127598>,  <37.064110, 33.133354, 31.228615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693584, 33.245193, 31.127598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037408, -0.735234, -0.676780,
		-0.374902, -0.617461, 0.691514,
		-0.926310, 0.279594, -0.252543,
		36.415691, 33.329071, 31.051834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610764, 32.459553, 31.108019>,  <37.064110, 33.133354, 31.228615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610764, 32.459553, 31.108019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431217, 32.769810, 30.930525>,  <36.323490, 32.955963, 30.824028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431217, 32.769810, 30.930525>,  <36.610764, 32.459553, 31.108019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431217, 32.769810, 30.930525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217334, -0.576419, -0.787723,
		-0.866770, -0.257139, 0.427306,
		-0.448861, 0.775642, -0.443737,
		36.296558, 33.002502, 30.797403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035892, 32.184845, 30.724081>,  <36.610764, 32.459553, 31.108019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035892, 32.184845, 30.724081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104000, 32.525009, 30.524956>,  <36.144863, 32.729107, 30.405479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104000, 32.525009, 30.524956>,  <36.035892, 32.184845, 30.724081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104000, 32.525009, 30.524956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039422, -0.510665, -0.858876,
		-0.984609, 0.126614, -0.120474,
		0.170267, 0.850406, -0.497814,
		36.155079, 32.780132, 30.375612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712303, 32.144131, 30.036026>,  <36.035892, 32.184845, 30.724081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712303, 32.144131, 30.036026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993313, 32.424839, 29.988733>,  <36.161919, 32.593266, 29.960358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993313, 32.424839, 29.988733>,  <35.712303, 32.144131, 30.036026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993313, 32.424839, 29.988733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153713, -0.311845, -0.937617,
		-0.694861, 0.640525, -0.326950,
		0.702524, 0.701770, -0.118232,
		36.204071, 32.635368, 29.953264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473957, 32.498421, 29.508904>,  <35.712303, 32.144131, 30.036026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473957, 32.498421, 29.508904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865307, 32.579140, 29.527081>,  <36.100117, 32.627571, 29.537987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865307, 32.579140, 29.527081>,  <35.473957, 32.498421, 29.508904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865307, 32.579140, 29.527081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070682, -0.119679, -0.990293,
		-0.194405, 0.972087, -0.131354,
		0.978372, 0.201802, 0.045443,
		36.158817, 32.639679, 29.540714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501766, 32.862709, 28.841227>,  <35.473957, 32.498421, 29.508904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501766, 32.862709, 28.841227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881924, 32.819592, 28.957935>,  <36.110020, 32.793720, 29.027960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881924, 32.819592, 28.957935>,  <35.501766, 32.862709, 28.841227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881924, 32.819592, 28.957935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300766, 0.079306, -0.950395,
		0.079306, 0.991005, 0.107792,
		0.950395, -0.107792, 0.291772,
		36.167042, 32.787254, 29.045467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868401, 33.527725, 28.678686>,  <35.501766, 32.862709, 28.841227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868401, 33.527725, 28.678686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144196, 33.238060, 28.684336>,  <36.309673, 33.064262, 28.687725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144196, 33.238060, 28.684336>,  <35.868401, 33.527725, 28.678686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144196, 33.238060, 28.684336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305266, 0.272858, -0.912338,
		0.656824, 0.633358, 0.409194,
		0.689489, -0.724159, 0.014123,
		36.351044, 33.020813, 28.688572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538486, 33.816990, 28.423573>,  <35.868401, 33.527725, 28.678686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538486, 33.816990, 28.423573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585892, 33.424450, 28.363033>,  <36.614334, 33.188927, 28.326710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585892, 33.424450, 28.363033>,  <36.538486, 33.816990, 28.423573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585892, 33.424450, 28.363033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388234, 0.186088, -0.902577,
		0.913908, 0.048212, 0.403048,
		0.118517, -0.981350, -0.151350,
		36.621449, 33.130047, 28.317629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089672, 33.768974, 27.987616>,  <36.538486, 33.816990, 28.423573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089672, 33.768974, 27.987616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912083, 33.411636, 27.959862>,  <36.805527, 33.197231, 27.943211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912083, 33.411636, 27.959862>,  <37.089672, 33.768974, 27.987616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912083, 33.411636, 27.959862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113213, 0.020885, -0.993351,
		0.888857, -0.448880, 0.091866,
		-0.443977, -0.893348, -0.069383,
		36.778889, 33.143631, 27.939047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579166, 33.353321, 27.661922>,  <37.089672, 33.768974, 27.987616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579166, 33.353321, 27.661922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228161, 33.172146, 27.598907>,  <37.017559, 33.063442, 27.561098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228161, 33.172146, 27.598907>,  <37.579166, 33.353321, 27.661922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228161, 33.172146, 27.598907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208716, -0.064961, -0.975816,
		0.431748, -0.889174, 0.151539,
		-0.877515, -0.452936, -0.157538,
		36.964905, 33.036266, 27.551645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752995, 32.870792, 27.168173>,  <37.579166, 33.353321, 27.661922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752995, 32.870792, 27.168173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355019, 32.892914, 27.134604>,  <37.116234, 32.906185, 27.114462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355019, 32.892914, 27.134604>,  <37.752995, 32.870792, 27.168173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355019, 32.892914, 27.134604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075257, -0.143510, -0.986783,
		-0.066615, -0.988102, 0.138622,
		-0.994937, 0.055302, -0.083921,
		37.056538, 32.909504, 27.109426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583000, 32.340473, 26.726276>,  <37.752995, 32.870792, 27.168173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583000, 32.340473, 26.726276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289326, 32.610451, 26.696812>,  <37.113121, 32.772438, 26.679132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289326, 32.610451, 26.696812>,  <37.583000, 32.340473, 26.726276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289326, 32.610451, 26.696812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004347, -0.103819, -0.994587,
		-0.678938, -0.730528, 0.073288,
		-0.734182, 0.674945, -0.073662,
		37.069073, 32.812935, 26.674713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010788, 32.093864, 26.167751>,  <37.583000, 32.340473, 26.726276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010788, 32.093864, 26.167751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983074, 32.489632, 26.218744>,  <36.966446, 32.727093, 26.249340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983074, 32.489632, 26.218744>,  <37.010788, 32.093864, 26.167751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983074, 32.489632, 26.218744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131496, 0.117616, -0.984315,
		-0.988892, -0.084966, 0.121955,
		-0.069289, 0.989418, 0.127482,
		36.962288, 32.786457, 26.256989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526989, 32.150688, 25.719347>,  <37.010788, 32.093864, 26.167751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526989, 32.150688, 25.719347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662243, 32.524044, 25.767422>,  <36.743397, 32.748058, 25.796267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662243, 32.524044, 25.767422>,  <36.526989, 32.150688, 25.719347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662243, 32.524044, 25.767422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035168, 0.115087, -0.992733,
		-0.940439, 0.339907, 0.006089,
		0.338137, 0.933391, 0.120186,
		36.763683, 32.804062, 25.803478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254707, 32.642479, 25.196947>,  <36.526989, 32.150688, 25.719347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254707, 32.642479, 25.196947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571762, 32.856369, 25.314112>,  <36.761997, 32.984703, 25.384411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571762, 32.856369, 25.314112>,  <36.254707, 32.642479, 25.196947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571762, 32.856369, 25.314112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170886, 0.266323, -0.948615,
		-0.585253, 0.801963, 0.119722,
		0.792639, 0.534721, 0.292910,
		36.809555, 33.016785, 25.401985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200695, 33.271782, 24.836199>,  <36.254707, 32.642479, 25.196947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200695, 33.271782, 24.836199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577011, 33.168358, 24.923887>,  <36.802799, 33.106304, 24.976501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577011, 33.168358, 24.923887>,  <36.200695, 33.271782, 24.836199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577011, 33.168358, 24.923887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279795, 0.227175, -0.932795,
		0.191381, 0.938903, 0.286068,
		0.940791, -0.258559, 0.219223,
		36.859249, 33.090790, 24.989655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468773, 33.667675, 24.421013>,  <36.200695, 33.271782, 24.836199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468773, 33.667675, 24.421013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755051, 33.411354, 24.532124>,  <36.926815, 33.257561, 24.598791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755051, 33.411354, 24.532124>,  <36.468773, 33.667675, 24.421013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755051, 33.411354, 24.532124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470002, 0.147703, -0.870219,
		0.516608, 0.753365, 0.406887,
		0.715692, -0.640800, 0.277779,
		36.969757, 33.219112, 24.615458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095383, 33.976799, 24.138819>,  <36.468773, 33.667675, 24.421013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095383, 33.976799, 24.138819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203827, 33.600960, 24.222387>,  <37.268894, 33.375454, 24.272528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203827, 33.600960, 24.222387>,  <37.095383, 33.976799, 24.138819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203827, 33.600960, 24.222387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675524, 0.031112, -0.736681,
		0.685687, 0.340852, 0.643158,
		0.271109, -0.939602, 0.208921,
		37.285160, 33.319080, 24.285063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802174, 33.934601, 24.280062>,  <37.095383, 33.976799, 24.138819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802174, 33.934601, 24.280062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715778, 33.555603, 24.185741>,  <37.663940, 33.328205, 24.129148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715778, 33.555603, 24.185741>,  <37.802174, 33.934601, 24.280062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715778, 33.555603, 24.185741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771864, -0.017786, -0.635539,
		0.597975, -0.319277, 0.735179,
		-0.215989, -0.947495, -0.235803,
		37.650982, 33.271355, 24.115000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483917, 33.621136, 24.114401>,  <37.802174, 33.934601, 24.280062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483917, 33.621136, 24.114401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232407, 33.366772, 23.935402>,  <38.081501, 33.214153, 23.828003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232407, 33.366772, 23.935402>,  <38.483917, 33.621136, 24.114401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232407, 33.366772, 23.935402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652868, -0.119136, -0.748044,
		0.422376, -0.762512, 0.490076,
		-0.628778, -0.635911, -0.447499,
		38.043774, 33.175999, 23.801151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915562, 33.024544, 24.013842>,  <38.483917, 33.621136, 24.114401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915562, 33.024544, 24.013842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599293, 33.005386, 23.769697>,  <38.409531, 32.993893, 23.623211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599293, 33.005386, 23.769697>,  <38.915562, 33.024544, 24.013842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599293, 33.005386, 23.769697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593548, -0.304399, -0.745011,
		-0.150108, -0.951340, 0.269110,
		-0.790676, -0.047898, -0.610359,
		38.362091, 32.991016, 23.586590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045574, 32.513939, 23.551699>,  <38.915562, 33.024544, 24.013842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045574, 32.513939, 23.551699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773800, 32.687767, 23.315222>,  <38.610733, 32.792065, 23.173336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773800, 32.687767, 23.315222>,  <39.045574, 32.513939, 23.551699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773800, 32.687767, 23.315222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480073, -0.346030, -0.806097,
		-0.554879, -0.831509, 0.026479,
		-0.679440, 0.434575, -0.591190,
		38.569969, 32.818138, 23.137865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715515, 31.990210, 23.107750>,  <39.045574, 32.513939, 23.551699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715515, 31.990210, 23.107750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685390, 32.350292, 22.936188>,  <38.667316, 32.566341, 22.833250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685390, 32.350292, 22.936188>,  <38.715515, 31.990210, 23.107750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685390, 32.350292, 22.936188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402208, -0.366160, -0.839139,
		-0.912445, -0.235709, -0.334493,
		-0.075315, 0.900204, -0.428905,
		38.662796, 32.620354, 22.807516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943920, 31.842236, 22.410412>,  <38.715515, 31.990210, 23.107750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943920, 31.842236, 22.410412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908619, 32.240643, 22.405390>,  <38.887440, 32.479687, 22.402376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908619, 32.240643, 22.405390>,  <38.943920, 31.842236, 22.410412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908619, 32.240643, 22.405390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549656, 0.038181, -0.834518,
		-0.830717, -0.080546, -0.550838,
		-0.088248, 0.996020, -0.012555,
		38.882145, 32.539448, 22.401623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658844, 32.091995, 21.748859>,  <38.943920, 31.842236, 22.410412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658844, 32.091995, 21.748859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873623, 32.393738, 21.899931>,  <39.002491, 32.574783, 21.990574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873623, 32.393738, 21.899931>,  <38.658844, 32.091995, 21.748859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873623, 32.393738, 21.899931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466263, 0.107732, -0.878062,
		-0.703057, 0.647568, -0.293881,
		0.536945, 0.754354, 0.377678,
		39.034706, 32.620045, 22.013235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676517, 32.531479, 21.162910>,  <38.658844, 32.091995, 21.748859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676517, 32.531479, 21.162910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962074, 32.645111, 21.418926>,  <39.133408, 32.713291, 21.572536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962074, 32.645111, 21.418926>,  <38.676517, 32.531479, 21.162910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962074, 32.645111, 21.418926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656243, 0.047500, -0.753053,
		-0.244330, 0.957623, -0.152517,
		0.713896, 0.284081, 0.640039,
		39.176243, 32.730335, 21.610937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009087, 33.141102, 20.840052>,  <38.676517, 32.531479, 21.162910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009087, 33.141102, 20.840052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261562, 33.028572, 21.129173>,  <39.413048, 32.961052, 21.302647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261562, 33.028572, 21.129173>,  <39.009087, 33.141102, 20.840052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261562, 33.028572, 21.129173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771913, 0.136783, -0.620838,
		0.075792, 0.949813, 0.303497,
		0.631194, -0.281328, 0.722806,
		39.450920, 32.944172, 21.346016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594818, 33.626377, 20.877197>,  <39.009087, 33.141102, 20.840052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594818, 33.626377, 20.877197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722321, 33.281521, 21.034737>,  <39.798820, 33.074608, 21.129261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722321, 33.281521, 21.034737>,  <39.594818, 33.626377, 20.877197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722321, 33.281521, 21.034737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669860, -0.089076, -0.737125,
		0.670585, 0.498785, 0.549117,
		0.318754, -0.862136, 0.393849,
		39.817947, 33.022881, 21.152891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326077, 33.747967, 20.899572>,  <39.594818, 33.626377, 20.877197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326077, 33.747967, 20.899572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303684, 33.352615, 20.956091>,  <40.290249, 33.115402, 20.990002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303684, 33.352615, 20.956091>,  <40.326077, 33.747967, 20.899572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303684, 33.352615, 20.956091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716231, -0.138353, -0.684011,
		0.695614, 0.062909, 0.715656,
		-0.055983, -0.988383, 0.141298,
		40.286888, 33.056099, 20.998480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960693, 33.479706, 21.095308>,  <40.326077, 33.747967, 20.899572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960693, 33.479706, 21.095308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762379, 33.172325, 20.933481>,  <40.643391, 32.987896, 20.836386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762379, 33.172325, 20.933481>,  <40.960693, 33.479706, 21.095308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762379, 33.172325, 20.933481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709112, -0.089279, -0.699421,
		0.501351, -0.633650, 0.589181,
		-0.495790, -0.768451, -0.404568,
		40.613640, 32.941792, 20.812111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410835, 32.856972, 21.133303>,  <40.960693, 33.479706, 21.095308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410835, 32.856972, 21.133303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133160, 32.775101, 20.857269>,  <40.966557, 32.725979, 20.691650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133160, 32.775101, 20.857269>,  <41.410835, 32.856972, 21.133303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133160, 32.775101, 20.857269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718201, -0.133140, -0.682980,
		0.047916, -0.969731, 0.239427,
		-0.694184, -0.204682, -0.690082,
		40.924904, 32.713696, 20.650244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692036, 32.316132, 20.765472>,  <41.410835, 32.856972, 21.133303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692036, 32.316132, 20.765472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398418, 32.444294, 20.525967>,  <41.222248, 32.521191, 20.382263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398418, 32.444294, 20.525967>,  <41.692036, 32.316132, 20.765472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398418, 32.444294, 20.525967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581641, -0.158479, -0.797858,
		-0.350531, -0.933929, -0.070031,
		-0.734045, 0.320407, -0.598764,
		41.178204, 32.540417, 20.346338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711040, 31.956364, 20.187084>,  <41.692036, 32.316132, 20.765472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711040, 31.956364, 20.187084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485523, 32.248463, 20.032742>,  <41.350212, 32.423721, 19.940136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485523, 32.248463, 20.032742>,  <41.711040, 31.956364, 20.187084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485523, 32.248463, 20.032742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553647, -0.012522, -0.832657,
		-0.612876, -0.683070, -0.397238,
		-0.563789, 0.730245, -0.385854,
		41.316387, 32.467537, 19.916985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361271, 31.678413, 19.568838>,  <41.711040, 31.956364, 20.187084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361271, 31.678413, 19.568838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405323, 32.075848, 19.558561>,  <41.431755, 32.314308, 19.552395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405323, 32.075848, 19.558561>,  <41.361271, 31.678413, 19.568838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405323, 32.075848, 19.558561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545021, -0.081986, -0.834404,
		-0.831158, 0.077893, -0.550554,
		0.110132, 0.993585, -0.025690,
		41.438362, 32.373924, 19.550854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038692, 31.940054, 18.964647>,  <41.361271, 31.678413, 19.568838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038692, 31.940054, 18.964647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316196, 32.205704, 19.076101>,  <41.482697, 32.365093, 19.142975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316196, 32.205704, 19.076101>,  <41.038692, 31.940054, 18.964647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316196, 32.205704, 19.076101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510011, -0.179856, -0.841155,
		-0.508519, 0.725664, -0.463488,
		0.693756, 0.664127, 0.278636,
		41.524323, 32.404942, 19.159693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207127, 32.278065, 18.294498>,  <41.038692, 31.940054, 18.964647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207127, 32.278065, 18.294498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514938, 32.382339, 18.527689>,  <41.699627, 32.444904, 18.667603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514938, 32.382339, 18.527689>,  <41.207127, 32.278065, 18.294498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514938, 32.382339, 18.527689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593448, 0.045273, -0.803598,
		-0.235879, 0.964362, -0.119864,
		0.769533, 0.260686, 0.582977,
		41.745800, 32.460545, 18.702581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531254, 32.911568, 18.027605>,  <41.207127, 32.278065, 18.294498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531254, 32.911568, 18.027605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795460, 32.670033, 18.206087>,  <41.953983, 32.525112, 18.313175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795460, 32.670033, 18.206087>,  <41.531254, 32.911568, 18.027605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795460, 32.670033, 18.206087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550093, -0.015271, -0.834964,
		0.511000, 0.796958, 0.322082,
		0.660513, -0.603842, 0.446204,
		41.993614, 32.488880, 18.339949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221478, 33.095669, 17.992542>,  <41.531254, 32.911568, 18.027605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221478, 33.095669, 17.992542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131611, 32.709705, 17.938158>,  <42.077690, 32.478127, 17.905527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131611, 32.709705, 17.938158>,  <42.221478, 33.095669, 17.992542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131611, 32.709705, 17.938158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421799, 0.029477, -0.906210,
		0.878413, -0.260943, 0.400374,
		-0.224667, -0.964904, -0.135959,
		42.064209, 32.420235, 17.897371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517342, 33.341652, 18.688866>,  <42.221478, 33.095669, 17.992542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517342, 33.341652, 18.688866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816296, 33.607368, 18.684420>,  <42.995670, 33.766800, 18.681751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816296, 33.607368, 18.684420>,  <42.517342, 33.341652, 18.688866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816296, 33.607368, 18.684420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124201, 0.123261, -0.984571,
		-0.652674, 0.737239, 0.174630,
		0.747389, 0.664293, -0.011117,
		43.040512, 33.806656, 18.681086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218712, 33.792889, 18.188093>,  <42.517342, 33.341652, 18.688866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218712, 33.792889, 18.188093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606625, 33.886490, 18.215704>,  <42.839371, 33.942650, 18.232269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606625, 33.886490, 18.215704>,  <42.218712, 33.792889, 18.188093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606625, 33.886490, 18.215704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074501, -0.014626, -0.997114,
		-0.232322, 0.972125, -0.031618,
		0.969782, 0.234007, 0.069026,
		42.897560, 33.956692, 18.236412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285198, 34.222057, 17.727028>,  <42.218712, 33.792889, 18.188093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285198, 34.222057, 17.727028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648315, 34.070889, 17.799793>,  <42.866184, 33.980186, 17.843452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648315, 34.070889, 17.799793>,  <42.285198, 34.222057, 17.727028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648315, 34.070889, 17.799793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172779, -0.058257, -0.983236,
		0.382183, 0.924003, 0.012412,
		0.907790, -0.377921, 0.181913,
		42.920654, 33.957512, 17.854366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600155, 33.625267, 17.439116>,  <42.285198, 34.222057, 17.727028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600155, 33.625267, 17.439116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941078, 33.757881, 17.277300>,  <43.145634, 33.837448, 17.180210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941078, 33.757881, 17.277300>,  <42.600155, 33.625267, 17.439116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941078, 33.757881, 17.277300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177391, 0.544373, 0.819872,
		0.492031, -0.770549, 0.405167,
		0.852314, 0.331529, -0.404536,
		43.196774, 33.857342, 17.155939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234520, 33.257843, 17.734486>,  <42.600155, 33.625267, 17.439116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234520, 33.257843, 17.734486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301983, 33.630424, 17.605518>,  <43.342461, 33.853973, 17.528137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301983, 33.630424, 17.605518>,  <43.234520, 33.257843, 17.734486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301983, 33.630424, 17.605518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023813, 0.323160, 0.946045,
		0.985387, -0.167234, 0.032322,
		0.168656, 0.931451, -0.322420,
		43.352581, 33.909859, 17.508793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895660, 33.618568, 17.989872>,  <43.234520, 33.257843, 17.734486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895660, 33.618568, 17.989872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601021, 33.879288, 17.917669>,  <43.424236, 34.035721, 17.874348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601021, 33.879288, 17.917669>,  <43.895660, 33.618568, 17.989872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601021, 33.879288, 17.917669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057224, 0.325996, 0.943637,
		0.673907, 0.684751, -0.277426,
		-0.736597, 0.651799, -0.180507,
		43.380043, 34.074829, 17.863518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162586, 34.290165, 18.308094>,  <43.895660, 33.618568, 17.989872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162586, 34.290165, 18.308094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776691, 34.186729, 18.288460>,  <43.545155, 34.124668, 18.276680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776691, 34.186729, 18.288460>,  <44.162586, 34.290165, 18.308094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776691, 34.186729, 18.288460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120731, 0.269042, 0.955532,
		-0.233885, 0.927765, -0.290775,
		-0.964739, -0.258590, -0.049085,
		43.487270, 34.109154, 18.273735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891308, 34.843056, 18.693319>,  <44.162586, 34.290165, 18.308094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891308, 34.843056, 18.693319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642639, 34.530632, 18.669773>,  <43.493439, 34.343178, 18.655645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642639, 34.530632, 18.669773>,  <43.891308, 34.843056, 18.693319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642639, 34.530632, 18.669773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322491, 0.186744, 0.927969,
		-0.713809, 0.595875, -0.367979,
		-0.621672, -0.781063, -0.058865,
		43.456139, 34.296314, 18.652113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100822, 35.095943, 18.726376>,  <43.891308, 34.843056, 18.693319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100822, 35.095943, 18.726376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147778, 34.712345, 18.829559>,  <43.175949, 34.482185, 18.891470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147778, 34.712345, 18.829559>,  <43.100822, 35.095943, 18.726376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147778, 34.712345, 18.829559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453254, 0.179384, 0.873145,
		-0.883618, -0.219417, -0.413612,
		0.117388, -0.958998, 0.257959,
		43.182995, 34.424644, 18.906946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421867, 34.818901, 18.919117>,  <43.100822, 35.095943, 18.726376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421867, 34.818901, 18.919117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721931, 34.606106, 19.076214>,  <42.901970, 34.478428, 19.170473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721931, 34.606106, 19.076214>,  <42.421867, 34.818901, 18.919117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721931, 34.606106, 19.076214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294216, 0.263383, 0.918731,
		-0.592199, -0.804745, 0.041058,
		0.750158, -0.531991, 0.392744,
		42.946980, 34.446510, 19.194036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102947, 34.497673, 19.490768>,  <42.421867, 34.818901, 18.919117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102947, 34.497673, 19.490768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491486, 34.456635, 19.576517>,  <42.724609, 34.432011, 19.627966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491486, 34.456635, 19.576517>,  <42.102947, 34.497673, 19.490768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491486, 34.456635, 19.576517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193653, 0.181188, 0.964194,
		-0.137767, -0.978082, 0.156128,
		0.971349, -0.102600, 0.214370,
		42.782890, 34.425854, 19.640829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183250, 33.878944, 19.982019>,  <42.102947, 34.497673, 19.490768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183250, 33.878944, 19.982019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513702, 34.101700, 20.016405>,  <42.711975, 34.235352, 20.037037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513702, 34.101700, 20.016405>,  <42.183250, 33.878944, 19.982019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513702, 34.101700, 20.016405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173239, 0.105843, 0.979176,
		0.536189, -0.823818, 0.183914,
		0.826129, 0.556885, 0.085965,
		42.761539, 34.268764, 20.042194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585941, 33.476696, 20.411728>,  <42.183250, 33.878944, 19.982019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585941, 33.476696, 20.411728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719673, 33.853531, 20.422266>,  <42.799911, 34.079632, 20.428589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719673, 33.853531, 20.422266>,  <42.585941, 33.476696, 20.411728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719673, 33.853531, 20.422266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041932, -0.013057, 0.999035,
		0.941523, -0.335111, 0.035138,
		0.334329, 0.942088, 0.026345,
		42.819973, 34.136158, 20.430170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178112, 33.445526, 20.861450>,  <42.585941, 33.476696, 20.411728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178112, 33.445526, 20.861450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039654, 33.820507, 20.846699>,  <42.956577, 34.045498, 20.837849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039654, 33.820507, 20.846699>,  <43.178112, 33.445526, 20.861450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039654, 33.820507, 20.846699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045920, 0.056190, 0.997364,
		0.937055, 0.343542, -0.062498,
		-0.346148, 0.937455, -0.036877,
		42.935810, 34.101742, 20.835636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590771, 33.784111, 21.400955>,  <43.178112, 33.445526, 20.861450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590771, 33.784111, 21.400955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257610, 33.992592, 21.326534>,  <43.057713, 34.117680, 21.281881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257610, 33.992592, 21.326534>,  <43.590771, 33.784111, 21.400955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257610, 33.992592, 21.326534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116366, 0.163734, 0.979617,
		0.541045, 0.837578, -0.075724,
		-0.832904, 0.521205, -0.186053,
		43.007740, 34.148952, 21.270718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704384, 34.275906, 21.847517>,  <43.590771, 33.784111, 21.400955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704384, 34.275906, 21.847517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315403, 34.280888, 21.754402>,  <43.082016, 34.283875, 21.698534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315403, 34.280888, 21.754402>,  <43.704384, 34.275906, 21.847517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315403, 34.280888, 21.754402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232080, 0.042517, 0.971767,
		0.021999, 0.999018, -0.038455,
		-0.972448, 0.012453, -0.232788,
		43.023670, 34.284622, 21.684566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432255, 34.806030, 22.078051>,  <43.704384, 34.275906, 21.847517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432255, 34.806030, 22.078051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119591, 34.559208, 22.041706>,  <42.931992, 34.411114, 22.019899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119591, 34.559208, 22.041706>,  <43.432255, 34.806030, 22.078051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119591, 34.559208, 22.041706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088644, -0.034296, 0.995473,
		-0.617379, 0.786172, -0.027891,
		-0.781656, -0.617056, -0.090863,
		42.885094, 34.374092, 22.014446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839008, 35.092697, 22.462963>,  <43.432255, 34.806030, 22.078051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839008, 35.092697, 22.462963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757809, 34.702465, 22.429407>,  <42.709087, 34.468327, 22.409273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757809, 34.702465, 22.429407>,  <42.839008, 35.092697, 22.462963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757809, 34.702465, 22.429407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199991, -0.042560, 0.978873,
		-0.958537, 0.215492, -0.186467,
		-0.203003, -0.975578, -0.083892,
		42.696907, 34.409790, 22.404240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074081, 35.045170, 22.723574>,  <42.839008, 35.092697, 22.462963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074081, 35.045170, 22.723574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199436, 34.665356, 22.718334>,  <42.274651, 34.437466, 22.715191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199436, 34.665356, 22.718334>,  <42.074081, 35.045170, 22.723574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199436, 34.665356, 22.718334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463638, -0.165029, 0.870520,
		-0.828751, -0.266736, -0.491959,
		0.313386, -0.949536, -0.013099,
		42.293453, 34.380493, 22.714405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492329, 34.687675, 22.953331>,  <42.074081, 35.045170, 22.723574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492329, 34.687675, 22.953331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777714, 34.410770, 22.996675>,  <41.948944, 34.244625, 23.022682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777714, 34.410770, 22.996675>,  <41.492329, 34.687675, 22.953331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777714, 34.410770, 22.996675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429503, -0.309876, 0.848236,
		-0.553626, -0.651724, -0.518415,
		0.713460, -0.692267, 0.108362,
		41.991753, 34.203091, 23.029184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166706, 34.000645, 23.043657>,  <41.492329, 34.687675, 22.953331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166706, 34.000645, 23.043657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528507, 33.996449, 23.214193>,  <41.745586, 33.993931, 23.316515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528507, 33.996449, 23.214193>,  <41.166706, 34.000645, 23.043657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528507, 33.996449, 23.214193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407937, -0.312776, 0.857764,
		0.124346, -0.949769, -0.287188,
		0.904503, -0.010495, 0.426338,
		41.799858, 33.993301, 23.342094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222046, 33.373608, 23.367523>,  <41.166706, 34.000645, 23.043657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222046, 33.373608, 23.367523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463093, 33.639122, 23.544718>,  <41.607723, 33.798431, 23.651035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463093, 33.639122, 23.544718>,  <41.222046, 33.373608, 23.367523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463093, 33.639122, 23.544718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437254, -0.189717, 0.879100,
		0.667575, -0.723462, 0.175915,
		0.602622, 0.663785, 0.442987,
		41.643879, 33.838257, 23.677614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373676, 33.068428, 23.969530>,  <41.222046, 33.373608, 23.367523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373676, 33.068428, 23.969530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552391, 33.407948, 24.082615>,  <41.659618, 33.611660, 24.150465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552391, 33.407948, 24.082615>,  <41.373676, 33.068428, 23.969530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552391, 33.407948, 24.082615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659890, 0.099287, 0.744773,
		0.604092, -0.519312, 0.604473,
		0.446786, 0.848798, 0.282711,
		41.686428, 33.662586, 24.167429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670967, 32.997021, 24.697527>,  <41.373676, 33.068428, 23.969530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670967, 32.997021, 24.697527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679375, 33.394596, 24.654360>,  <41.684418, 33.633141, 24.628460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679375, 33.394596, 24.654360>,  <41.670967, 32.997021, 24.697527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679375, 33.394596, 24.654360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466315, 0.105229, 0.878338,
		0.884369, 0.031864, 0.465699,
		0.021018, 0.993937, -0.107920,
		41.685680, 33.692776, 24.621984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049412, 33.314270, 25.293774>,  <41.670967, 32.997021, 24.697527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049412, 33.314270, 25.293774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806061, 33.592918, 25.141672>,  <41.660049, 33.760109, 25.050411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806061, 33.592918, 25.141672>,  <42.049412, 33.314270, 25.293774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806061, 33.592918, 25.141672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487802, 0.049724, 0.871537,
		0.626041, 0.715711, 0.309564,
		-0.608376, 0.696624, -0.380254,
		41.623547, 33.801907, 25.027596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951805, 33.802223, 25.826002>,  <42.049412, 33.314270, 25.293774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951805, 33.802223, 25.826002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644894, 33.880100, 25.581581>,  <41.460747, 33.926826, 25.434929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644894, 33.880100, 25.581581>,  <41.951805, 33.802223, 25.826002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644894, 33.880100, 25.581581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565112, 0.245231, 0.787724,
		0.303212, 0.949714, -0.078137,
		-0.767275, 0.194692, -0.611052,
		41.414711, 33.938507, 25.398266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702457, 34.462128, 26.007780>,  <41.951805, 33.802223, 25.826002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702457, 34.462128, 26.007780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409061, 34.273407, 25.812065>,  <41.233025, 34.160175, 25.694635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409061, 34.273407, 25.812065>,  <41.702457, 34.462128, 26.007780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409061, 34.273407, 25.812065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669154, 0.374881, 0.641636,
		-0.119299, 0.798041, -0.590677,
		-0.733486, -0.471800, -0.489289,
		41.189014, 34.131866, 25.665279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118031, 34.956905, 25.896460>,  <41.702457, 34.462128, 26.007780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118031, 34.956905, 25.896460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981586, 34.582115, 25.866186>,  <40.899719, 34.357243, 25.848022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981586, 34.582115, 25.866186>,  <41.118031, 34.956905, 25.896460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981586, 34.582115, 25.866186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631813, 0.168910, 0.756493,
		-0.696030, 0.305863, -0.649608,
		-0.341108, -0.936972, -0.075681,
		40.879253, 34.301022, 25.843481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352795, 35.008636, 25.817980>,  <41.118031, 34.956905, 25.896460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352795, 35.008636, 25.817980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427128, 34.637569, 25.947533>,  <40.471725, 34.414928, 26.025265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427128, 34.637569, 25.947533>,  <40.352795, 35.008636, 25.817980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427128, 34.637569, 25.947533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702414, 0.105074, 0.703970,
		-0.687082, -0.358320, -0.632080,
		0.185831, -0.927667, 0.323884,
		40.482876, 34.359268, 26.044697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676239, 34.723171, 25.949041>,  <40.352795, 35.008636, 25.817980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676239, 34.723171, 25.949041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939644, 34.530827, 26.180603>,  <40.097687, 34.415421, 26.319540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939644, 34.530827, 26.180603>,  <39.676239, 34.723171, 25.949041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939644, 34.530827, 26.180603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630472, 0.067533, 0.773268,
		-0.410928, -0.874194, -0.258696,
		0.658515, -0.480858, 0.578906,
		40.137199, 34.386570, 26.354275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232018, 34.440727, 26.403458>,  <39.676239, 34.723171, 25.949041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232018, 34.440727, 26.403458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580482, 34.364857, 26.584608>,  <39.789562, 34.319336, 26.693298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580482, 34.364857, 26.584608>,  <39.232018, 34.440727, 26.403458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580482, 34.364857, 26.584608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476501, -0.104166, 0.872981,
		-0.118421, -0.976303, -0.181133,
		0.871162, -0.189690, 0.452873,
		39.841831, 34.307953, 26.720470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054478, 33.853432, 26.754259>,  <39.232018, 34.440727, 26.403458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054478, 33.853432, 26.754259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386734, 33.988876, 26.931063>,  <39.586090, 34.070145, 27.037146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386734, 33.988876, 26.931063>,  <39.054478, 33.853432, 26.754259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386734, 33.988876, 26.931063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400176, -0.188916, 0.896755,
		0.387158, -0.921765, -0.021415,
		0.830643, 0.338616, 0.442009,
		39.635925, 34.090462, 27.063665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082031, 33.375324, 27.314711>,  <39.054478, 33.853432, 26.754259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082031, 33.375324, 27.314711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296970, 33.697502, 27.414730>,  <39.425934, 33.890808, 27.474741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296970, 33.697502, 27.414730>,  <39.082031, 33.375324, 27.314711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296970, 33.697502, 27.414730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387149, -0.027823, 0.921597,
		0.749249, -0.592023, 0.296875,
		0.537346, 0.805441, 0.250048,
		39.458176, 33.939133, 27.489744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366257, 33.277374, 28.077057>,  <39.082031, 33.375324, 27.314711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366257, 33.277374, 28.077057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364658, 33.671738, 28.010164>,  <39.363697, 33.908356, 27.970030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364658, 33.671738, 28.010164>,  <39.366257, 33.277374, 28.077057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364658, 33.671738, 28.010164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380270, 0.153170, 0.912104,
		0.924867, 0.067239, 0.374299,
		-0.003997, 0.985910, -0.167230,
		39.363461, 33.967510, 27.959995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680355, 33.534397, 28.762320>,  <39.366257, 33.277374, 28.077057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680355, 33.534397, 28.762320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528194, 33.857811, 28.582731>,  <39.436897, 34.051857, 28.474979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528194, 33.857811, 28.582731>,  <39.680355, 33.534397, 28.762320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528194, 33.857811, 28.582731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276143, 0.364018, 0.889515,
		0.882634, 0.462349, 0.084799,
		-0.380398, 0.808532, -0.448969,
		39.414074, 34.100372, 28.448040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908058, 33.997559, 29.209806>,  <39.680355, 33.534397, 28.762320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908058, 33.997559, 29.209806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612244, 34.166031, 28.999784>,  <39.434753, 34.267117, 28.873772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612244, 34.166031, 28.999784>,  <39.908058, 33.997559, 29.209806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612244, 34.166031, 28.999784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119964, 0.685082, 0.718520,
		0.662335, 0.594363, -0.456120,
		-0.739541, 0.421183, -0.525056,
		39.390381, 34.292385, 28.842268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969910, 34.668438, 29.295034>,  <39.908058, 33.997559, 29.209806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969910, 34.668438, 29.295034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579540, 34.642967, 29.211584>,  <39.345318, 34.627686, 29.161514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579540, 34.642967, 29.211584>,  <39.969910, 34.668438, 29.295034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579540, 34.642967, 29.211584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201728, 0.627322, 0.752179,
		0.082978, 0.776153, -0.625062,
		-0.975920, -0.063678, -0.208625,
		39.286762, 34.623863, 29.148996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734360, 35.375931, 29.228281>,  <39.969910, 34.668438, 29.295034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734360, 35.375931, 29.228281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395634, 35.170143, 29.282293>,  <39.192398, 35.046673, 29.314701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395634, 35.170143, 29.282293>,  <39.734360, 35.375931, 29.228281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395634, 35.170143, 29.282293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341918, 0.720994, 0.602710,
		-0.407431, 0.464212, -0.786452,
		-0.846813, -0.514465, 0.135033,
		39.141590, 35.015804, 29.322803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209682, 35.791035, 29.077105>,  <39.734360, 35.375931, 29.228281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209682, 35.791035, 29.077105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074112, 35.497395, 29.312469>,  <38.992771, 35.321213, 29.453690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074112, 35.497395, 29.312469>,  <39.209682, 35.791035, 29.077105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074112, 35.497395, 29.312469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134372, 0.656789, 0.742006,
		-0.931169, 0.172417, -0.321243,
		-0.338923, -0.734098, 0.588413,
		38.972435, 35.277164, 29.488993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596012, 36.032963, 29.405466>,  <39.209682, 35.791035, 29.077105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596012, 36.032963, 29.405466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686150, 35.713718, 29.628981>,  <38.740234, 35.522171, 29.763090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686150, 35.713718, 29.628981>,  <38.596012, 36.032963, 29.405466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686150, 35.713718, 29.628981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316286, 0.482547, 0.816769,
		-0.921510, -0.360794, -0.143690,
		0.225348, -0.798108, 0.558786,
		38.753754, 35.474285, 29.796616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018913, 35.976276, 29.922684>,  <38.596012, 36.032963, 29.405466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018913, 35.976276, 29.922684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299961, 35.756344, 30.103352>,  <38.468590, 35.624386, 30.211752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299961, 35.756344, 30.103352>,  <38.018913, 35.976276, 29.922684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299961, 35.756344, 30.103352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314662, 0.329231, 0.890278,
		-0.638206, -0.767654, 0.058315,
		0.702624, -0.549832, 0.451669,
		38.510750, 35.591393, 30.238852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635963, 35.544258, 30.297447>,  <38.018913, 35.976276, 29.922684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635963, 35.544258, 30.297447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993366, 35.593567, 30.470169>,  <38.207806, 35.623150, 30.573801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993366, 35.593567, 30.470169>,  <37.635963, 35.544258, 30.297447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993366, 35.593567, 30.470169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448604, 0.202048, 0.870592,
		0.020071, -0.971587, 0.235829,
		0.893505, 0.123268, 0.431803,
		38.261417, 35.630547, 30.599710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584717, 35.359085, 31.076395>,  <37.635963, 35.544258, 30.297447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584717, 35.359085, 31.076395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935982, 35.549019, 31.053175>,  <38.146740, 35.662979, 31.039242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935982, 35.549019, 31.053175>,  <37.584717, 35.359085, 31.076395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935982, 35.549019, 31.053175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156846, 0.400442, 0.902799,
		0.451929, -0.783694, 0.426127,
		0.878157, 0.474837, -0.058052,
		38.199429, 35.691471, 31.035759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014652, 35.127247, 31.652363>,  <37.584717, 35.359085, 31.076395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014652, 35.127247, 31.652363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102322, 35.497276, 31.528292>,  <38.154922, 35.719292, 31.453850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102322, 35.497276, 31.528292>,  <38.014652, 35.127247, 31.652363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102322, 35.497276, 31.528292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274940, 0.363581, 0.890066,
		0.936146, -0.109802, 0.334027,
		0.219177, 0.925069, -0.310176,
		38.168076, 35.774796, 31.435240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226524, 35.440819, 32.280403>,  <38.014652, 35.127247, 31.652363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226524, 35.440819, 32.280403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121227, 35.729546, 32.024376>,  <38.058048, 35.902782, 31.870760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121227, 35.729546, 32.024376>,  <38.226524, 35.440819, 32.280403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121227, 35.729546, 32.024376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480057, 0.477487, 0.735902,
		0.836809, 0.500989, 0.220817,
		-0.263242, 0.721814, -0.640068,
		38.042255, 35.946091, 31.832355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466183, 35.993366, 32.702148>,  <38.226524, 35.440819, 32.280403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466183, 35.993366, 32.702148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215492, 36.117153, 32.416084>,  <38.065079, 36.191425, 32.244446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215492, 36.117153, 32.416084>,  <38.466183, 35.993366, 32.702148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215492, 36.117153, 32.416084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572372, 0.439958, 0.691973,
		0.528781, 0.843011, -0.098603,
		-0.626722, 0.309465, -0.715158,
		38.027477, 36.209991, 32.201538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129692, 35.625374, 32.471275>,  <38.466183, 35.993366, 32.702148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129692, 35.625374, 32.471275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435978, 35.701824, 32.716927>,  <39.619747, 35.747696, 32.864319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435978, 35.701824, 32.716927>,  <39.129692, 35.625374, 32.471275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435978, 35.701824, 32.716927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628422, -0.425713, -0.651041,
		0.137009, 0.884442, -0.446084,
		0.765712, 0.191130, 0.614129,
		39.665691, 35.759163, 32.901165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616352, 35.937408, 32.049774>,  <39.129692, 35.625374, 32.471275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616352, 35.937408, 32.049774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779640, 35.749119, 32.362640>,  <39.877613, 35.636147, 32.550358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779640, 35.749119, 32.362640>,  <39.616352, 35.937408, 32.049774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779640, 35.749119, 32.362640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711211, -0.373155, -0.595763,
		0.572307, 0.799484, 0.182454,
		0.408219, -0.470723, 0.782161,
		39.902107, 35.607903, 32.597290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327148, 36.001564, 32.078804>,  <39.616352, 35.937408, 32.049774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327148, 36.001564, 32.078804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287800, 35.644783, 32.255325>,  <40.264191, 35.430714, 32.361237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287800, 35.644783, 32.255325>,  <40.327148, 36.001564, 32.078804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287800, 35.644783, 32.255325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812099, -0.328255, -0.482435,
		0.575168, 0.310923, 0.756644,
		-0.098372, -0.891951, 0.441301,
		40.258289, 35.377197, 32.387714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959457, 35.740601, 32.060276>,  <40.327148, 36.001564, 32.078804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959457, 35.740601, 32.060276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764767, 35.402653, 32.149078>,  <40.647953, 35.199883, 32.202362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764767, 35.402653, 32.149078>,  <40.959457, 35.740601, 32.060276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764767, 35.402653, 32.149078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658985, -0.521954, -0.541575,
		0.573439, -0.117300, 0.810807,
		-0.486731, -0.844870, 0.222009,
		40.618748, 35.149193, 32.215683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495541, 35.130466, 32.220779>,  <40.959457, 35.740601, 32.060276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495541, 35.130466, 32.220779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144951, 34.968178, 32.117100>,  <40.934597, 34.870804, 32.054893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144951, 34.968178, 32.117100>,  <41.495541, 35.130466, 32.220779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144951, 34.968178, 32.117100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481294, -0.724682, -0.493145,
		0.012243, -0.556979, 0.830436,
		-0.876474, -0.405721, -0.259198,
		40.882008, 34.846462, 32.039341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622944, 34.442753, 32.358940>,  <41.495541, 35.130466, 32.220779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622944, 34.442753, 32.358940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315983, 34.454609, 32.102745>,  <41.131805, 34.461723, 31.949030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315983, 34.454609, 32.102745>,  <41.622944, 34.442753, 32.358940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315983, 34.454609, 32.102745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505208, -0.587130, -0.632490,
		-0.394795, -0.808950, 0.435588,
		-0.767399, 0.029642, -0.640483,
		41.085762, 34.463501, 31.910601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665421, 33.736252, 32.078388>,  <41.622944, 34.442753, 32.358940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665421, 33.736252, 32.078388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413918, 33.916935, 31.825209>,  <41.263016, 34.025345, 31.673300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413918, 33.916935, 31.825209>,  <41.665421, 33.736252, 32.078388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413918, 33.916935, 31.825209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242283, -0.659658, -0.711442,
		-0.738893, -0.600678, 0.305325,
		-0.628757, 0.451705, -0.632951,
		41.225288, 34.052448, 31.635323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198761, 33.195114, 31.906069>,  <41.665421, 33.736252, 32.078388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198761, 33.195114, 31.906069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224598, 33.477581, 31.624031>,  <41.240101, 33.647060, 31.454809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224598, 33.477581, 31.624031>,  <41.198761, 33.195114, 31.906069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224598, 33.477581, 31.624031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209142, -0.700455, -0.682365,
		-0.975750, -0.103389, -0.192933,
		0.064592, 0.706168, -0.705092,
		41.243977, 33.689430, 31.412504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295170, 32.667313, 31.413195>,  <41.198761, 33.195114, 31.906069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295170, 32.667313, 31.413195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391071, 33.021271, 31.253454>,  <41.448612, 33.233646, 31.157610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391071, 33.021271, 31.253454>,  <41.295170, 32.667313, 31.413195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391071, 33.021271, 31.253454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394069, -0.464643, -0.792980,
		-0.887258, 0.032748, -0.460109,
		0.239755, 0.884893, -0.399353,
		41.462997, 33.286739, 31.133648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047138, 32.619740, 30.752544>,  <41.295170, 32.667313, 31.413195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047138, 32.619740, 30.752544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308399, 32.921078, 30.721910>,  <41.465157, 33.101879, 30.703529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308399, 32.921078, 30.721910>,  <41.047138, 32.619740, 30.752544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308399, 32.921078, 30.721910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308402, -0.357021, -0.881717,
		-0.691579, 0.552276, -0.465522,
		0.653152, 0.753344, -0.076586,
		41.504345, 33.147079, 30.698935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998905, 32.863949, 30.036854>,  <41.047138, 32.619740, 30.752544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998905, 32.863949, 30.036854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361324, 32.990131, 30.149687>,  <41.578773, 33.065842, 30.217386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361324, 32.990131, 30.149687>,  <40.998905, 32.863949, 30.036854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361324, 32.990131, 30.149687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376038, -0.294404, -0.878591,
		-0.194108, 0.902117, -0.385366,
		0.906045, 0.315453, 0.282084,
		41.633137, 33.084766, 30.234312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326962, 33.279434, 29.413414>,  <40.998905, 32.863949, 30.036854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326962, 33.279434, 29.413414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618729, 33.127922, 29.641262>,  <41.793789, 33.037014, 29.777971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618729, 33.127922, 29.641262>,  <41.326962, 33.279434, 29.413414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618729, 33.127922, 29.641262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485856, -0.299309, -0.821193,
		0.481548, 0.875749, -0.034287,
		0.729421, -0.378785, 0.569619,
		41.837555, 33.014286, 29.812147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007702, 33.548912, 29.271889>,  <41.326962, 33.279434, 29.413414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007702, 33.548912, 29.271889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070663, 33.184155, 29.423504>,  <42.108440, 32.965298, 29.514473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070663, 33.184155, 29.423504>,  <42.007702, 33.548912, 29.271889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070663, 33.184155, 29.423504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578756, -0.225818, -0.783612,
		0.800166, 0.342713, 0.492221,
		0.157402, -0.911896, 0.379039,
		42.117886, 32.910587, 29.537216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662148, 33.554806, 29.023899>,  <42.007702, 33.548912, 29.271889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662148, 33.554806, 29.023899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627872, 33.185863, 29.174587>,  <42.607307, 32.964497, 29.264999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627872, 33.185863, 29.174587>,  <42.662148, 33.554806, 29.023899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627872, 33.185863, 29.174587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622108, -0.344878, -0.702880,
		0.778227, 0.174130, 0.603358,
		-0.085692, -0.922355, 0.376721,
		42.602165, 32.909157, 29.287603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301849, 33.388390, 29.081575>,  <42.662148, 33.554806, 29.023899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301849, 33.388390, 29.081575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091881, 33.049072, 29.053701>,  <42.965900, 32.845482, 29.036978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091881, 33.049072, 29.053701>,  <43.301849, 33.388390, 29.081575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091881, 33.049072, 29.053701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606263, -0.315176, -0.730143,
		0.597413, -0.425515, 0.679732,
		-0.524922, -0.848293, -0.069684,
		42.934402, 32.794586, 29.032797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888706, 32.819031, 28.967129>,  <43.301849, 33.388390, 29.081575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888706, 32.819031, 28.967129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524826, 32.710537, 28.841352>,  <43.306496, 32.645439, 28.765886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524826, 32.710537, 28.841352>,  <43.888706, 32.819031, 28.967129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524826, 32.710537, 28.841352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375724, -0.215160, -0.901409,
		0.176837, -0.938157, 0.297641,
		-0.909703, -0.271233, -0.314440,
		43.251915, 32.629166, 28.747021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973019, 32.294994, 28.478584>,  <43.888706, 32.819031, 28.967129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973019, 32.294994, 28.478584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594936, 32.375854, 28.376047>,  <43.368088, 32.424370, 28.314524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594936, 32.375854, 28.376047>,  <43.973019, 32.294994, 28.478584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594936, 32.375854, 28.376047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214419, -0.207695, -0.954404,
		-0.246178, -0.957077, 0.152970,
		-0.945210, 0.202154, -0.256345,
		43.311375, 32.436501, 28.299143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760593, 31.726294, 27.994648>,  <43.973019, 32.294994, 28.478584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760593, 31.726294, 27.994648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509743, 32.031895, 27.933973>,  <43.359230, 32.215256, 27.897570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509743, 32.031895, 27.933973>,  <43.760593, 31.726294, 27.994648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509743, 32.031895, 27.933973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211979, -0.019985, -0.977070,
		-0.749515, -0.644904, -0.149420,
		-0.627130, 0.764003, -0.151685,
		43.321602, 32.261097, 27.888468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337078, 31.531393, 27.391750>,  <43.760593, 31.726294, 27.994648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337078, 31.531393, 27.391750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329891, 31.930933, 27.409536>,  <43.325577, 32.170658, 27.420208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329891, 31.930933, 27.409536>,  <43.337078, 31.531393, 27.391750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329891, 31.930933, 27.409536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187365, 0.047049, -0.981163,
		-0.982126, -0.009302, -0.187995,
		-0.017972, 0.998849, 0.044465,
		43.324501, 32.230587, 27.422876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949818, 31.730204, 26.829391>,  <43.337078, 31.531393, 27.391750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949818, 31.730204, 26.829391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150955, 32.059860, 26.933651>,  <43.271637, 32.257652, 26.996206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150955, 32.059860, 26.933651>,  <42.949818, 31.730204, 26.829391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150955, 32.059860, 26.933651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117514, 0.233566, -0.965214,
		-0.856351, 0.515982, 0.020599,
		0.502844, 0.824141, 0.260650,
		43.301807, 32.307102, 27.011847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701481, 32.266468, 26.329721>,  <42.949818, 31.730204, 26.829391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701481, 32.266468, 26.329721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036102, 32.415424, 26.490471>,  <43.236874, 32.504799, 26.586922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036102, 32.415424, 26.490471>,  <42.701481, 32.266468, 26.329721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036102, 32.415424, 26.490471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181068, 0.504373, -0.844288,
		-0.517104, 0.779057, 0.354505,
		0.836551, 0.372395, 0.401876,
		43.287067, 32.527142, 26.611034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615112, 32.861465, 26.220055>,  <42.701481, 32.266468, 26.329721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615112, 32.861465, 26.220055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006165, 32.825489, 26.296099>,  <43.240795, 32.803905, 26.341726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006165, 32.825489, 26.296099>,  <42.615112, 32.861465, 26.220055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006165, 32.825489, 26.296099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208266, 0.539819, -0.815611,
		-0.029271, 0.836963, 0.546476,
		0.977634, -0.089939, 0.190111,
		43.299454, 32.798508, 26.353132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802273, 33.457150, 26.042751>,  <42.615112, 32.861465, 26.220055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802273, 33.457150, 26.042751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148937, 33.258224, 26.058630>,  <43.356937, 33.138870, 26.068157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148937, 33.258224, 26.058630>,  <42.802273, 33.457150, 26.042751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148937, 33.258224, 26.058630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379270, 0.605068, -0.700034,
		0.324120, 0.621747, 0.713006,
		0.866661, -0.497316, 0.039696,
		43.408936, 33.109028, 26.070539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392799, 33.906612, 25.880604>,  <42.802273, 33.457150, 26.042751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392799, 33.906612, 25.880604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547478, 33.546478, 25.800743>,  <43.640285, 33.330399, 25.752827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547478, 33.546478, 25.800743>,  <43.392799, 33.906612, 25.880604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547478, 33.546478, 25.800743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371730, 0.350304, -0.859711,
		0.843968, 0.258231, 0.470143,
		0.386697, -0.900335, -0.199653,
		43.663486, 33.276379, 25.740847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103214, 34.030663, 25.763826>,  <43.392799, 33.906612, 25.880604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103214, 34.030663, 25.763826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981670, 33.690071, 25.592876>,  <43.908745, 33.485714, 25.490307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981670, 33.690071, 25.592876>,  <44.103214, 34.030663, 25.763826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981670, 33.690071, 25.592876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455738, 0.264027, -0.850054,
		0.836644, -0.453066, 0.307826,
		-0.303857, -0.851481, -0.427376,
		43.890514, 33.434628, 25.464664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637806, 33.859367, 25.353821>,  <44.103214, 34.030663, 25.763826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637806, 33.859367, 25.353821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330200, 33.639446, 25.223381>,  <44.145638, 33.507492, 25.145117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330200, 33.639446, 25.223381>,  <44.637806, 33.859367, 25.353821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330200, 33.639446, 25.223381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306427, 0.130642, -0.942887,
		0.561005, -0.825014, 0.068010,
		-0.769010, -0.549805, -0.326097,
		44.099499, 33.474506, 25.125551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023937, 33.461948, 24.859913>,  <44.637806, 33.859367, 25.353821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023937, 33.461948, 24.859913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644238, 33.432964, 24.737492>,  <44.416416, 33.415573, 24.664038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644238, 33.432964, 24.737492>,  <45.023937, 33.461948, 24.859913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644238, 33.432964, 24.737492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300710, 0.076047, -0.950679,
		0.092172, -0.994467, -0.050395,
		-0.949252, -0.072472, -0.306055,
		44.359463, 33.411224, 24.645676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012444, 32.929222, 24.277334>,  <45.023937, 33.461948, 24.859913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012444, 32.929222, 24.277334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713428, 33.186218, 24.209940>,  <44.534019, 33.340416, 24.169502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713428, 33.186218, 24.209940>,  <45.012444, 32.929222, 24.277334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713428, 33.186218, 24.209940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138033, -0.097857, -0.985581,
		-0.649715, -0.760019, -0.015532,
		-0.747541, 0.642491, -0.168487,
		44.489166, 33.378967, 24.159393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573193, 32.623787, 23.909048>,  <45.012444, 32.929222, 24.277334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573193, 32.623787, 23.909048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489414, 33.007938, 23.835503>,  <44.439148, 33.238430, 23.791374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489414, 33.007938, 23.835503>,  <44.573193, 32.623787, 23.909048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489414, 33.007938, 23.835503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144947, -0.155465, -0.977149,
		-0.967017, -0.231312, -0.106642,
		-0.209447, 0.960378, -0.183865,
		44.426579, 33.296051, 23.780342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066414, 32.640263, 23.390190>,  <44.573193, 32.623787, 23.909048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066414, 32.640263, 23.390190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243519, 32.998768, 23.400501>,  <44.349781, 33.213871, 23.406689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243519, 32.998768, 23.400501>,  <44.066414, 32.640263, 23.390190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243519, 32.998768, 23.400501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128863, -0.035156, -0.991039,
		-0.887329, 0.442121, -0.131062,
		0.442767, 0.896266, 0.025778,
		44.376350, 33.267647, 23.408236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787079, 32.957874, 22.864000>,  <44.066414, 32.640263, 23.390190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787079, 32.957874, 22.864000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134239, 33.143356, 22.935246>,  <44.342537, 33.254646, 22.977993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134239, 33.143356, 22.935246>,  <43.787079, 32.957874, 22.864000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134239, 33.143356, 22.935246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220586, -0.038514, -0.974607,
		-0.445066, 0.885154, -0.135712,
		0.867904, 0.463701, 0.178111,
		44.394611, 33.282467, 22.988678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869232, 33.350086, 22.135782>,  <43.787079, 32.957874, 22.864000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869232, 33.350086, 22.135782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215160, 33.343201, 22.336498>,  <44.422718, 33.339069, 22.456928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215160, 33.343201, 22.336498>,  <43.869232, 33.350086, 22.135782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215160, 33.343201, 22.336498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469801, -0.324861, -0.820824,
		0.177142, 0.945605, -0.272859,
		0.864817, -0.017213, 0.501792,
		44.474606, 33.338036, 22.487036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322479, 33.543568, 21.715420>,  <43.869232, 33.350086, 22.135782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322479, 33.543568, 21.715420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559788, 33.338837, 21.963957>,  <44.702171, 33.216000, 22.113079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559788, 33.338837, 21.963957>,  <44.322479, 33.543568, 21.715420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559788, 33.338837, 21.963957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358335, -0.523260, -0.773172,
		0.720854, 0.681347, -0.127028,
		0.593267, -0.511826, 0.621344,
		44.737766, 33.185287, 22.150360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883442, 33.516171, 21.295544>,  <44.322479, 33.543568, 21.715420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883442, 33.516171, 21.295544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951313, 33.231945, 21.568689>,  <44.992035, 33.061409, 21.732576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951313, 33.231945, 21.568689>,  <44.883442, 33.516171, 21.295544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951313, 33.231945, 21.568689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453763, -0.558759, -0.694182,
		0.874819, 0.427648, 0.227617,
		0.169682, -0.710567, 0.682863,
		45.002216, 33.018776, 21.773548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575321, 33.100025, 21.069921>,  <44.883442, 33.516171, 21.295544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575321, 33.100025, 21.069921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390255, 32.872902, 21.342255>,  <45.279217, 32.736629, 21.505655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390255, 32.872902, 21.342255>,  <45.575321, 33.100025, 21.069921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390255, 32.872902, 21.342255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155501, -0.808044, -0.568229,
		0.872788, -0.157030, 0.462149,
		-0.462666, -0.567808, 0.680834,
		45.251453, 32.702560, 21.546505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973301, 32.508869, 21.178144>,  <45.575321, 33.100025, 21.069921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973301, 32.508869, 21.178144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607407, 32.389332, 21.286919>,  <45.387871, 32.317608, 21.352182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607407, 32.389332, 21.286919>,  <45.973301, 32.508869, 21.178144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607407, 32.389332, 21.286919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063309, -0.770719, -0.634022,
		0.399058, -0.562748, 0.723925,
		-0.914738, -0.298843, 0.271934,
		45.332985, 32.299679, 21.368500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025475, 31.777943, 21.128691>,  <45.973301, 32.508869, 21.178144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025475, 31.777943, 21.128691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629860, 31.836391, 21.137299>,  <45.392490, 31.871462, 21.142464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629860, 31.836391, 21.137299>,  <46.025475, 31.777943, 21.128691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629860, 31.836391, 21.137299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141392, -0.894568, -0.423976,
		-0.042703, -0.422369, 0.905418,
		-0.989032, 0.146124, 0.021518,
		45.333149, 31.880228, 21.143755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655308, 31.153952, 21.483246>,  <46.025475, 31.777943, 21.128691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655308, 31.153952, 21.483246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409897, 31.335238, 21.224579>,  <45.262650, 31.444010, 21.069380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409897, 31.335238, 21.224579>,  <45.655308, 31.153952, 21.483246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409897, 31.335238, 21.224579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165741, -0.874571, -0.455692,
		-0.772081, -0.172402, 0.611693,
		-0.613531, 0.453214, -0.646666,
		45.225838, 31.471201, 21.030579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098621, 30.652351, 21.277689>,  <45.655308, 31.153952, 21.483246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098621, 30.652351, 21.277689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054523, 30.926037, 20.989328>,  <45.028065, 31.090248, 20.816313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054523, 30.926037, 20.989328>,  <45.098621, 30.652351, 21.277689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.054523, 30.926037, 20.989328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328021, -0.709727, -0.623450,
		-0.938216, 0.167741, 0.302678,
		-0.110241, 0.684215, -0.720900,
		45.021450, 31.131302, 20.773058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484379, 30.349260, 21.171452>,  <45.098621, 30.652351, 21.277689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.484379, 30.349260, 21.171452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344521, 30.017441, 20.997278>,  <44.260605, 29.818350, 20.892775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344521, 30.017441, 20.997278>,  <44.484379, 30.349260, 21.171452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344521, 30.017441, 20.997278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472902, -0.244946, 0.846384,
		-0.808772, 0.501850, -0.306651,
		-0.349644, -0.829547, -0.435431,
		44.239628, 29.768578, 20.866650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724560, 30.402611, 21.307339>,  <44.484379, 30.349260, 21.171452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724560, 30.402611, 21.307339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853157, 30.026352, 21.263842>,  <43.930317, 29.800596, 21.237743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853157, 30.026352, 21.263842>,  <43.724560, 30.402611, 21.307339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853157, 30.026352, 21.263842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212125, -0.183464, 0.959866,
		-0.922845, -0.285526, -0.258518,
		0.321496, -0.940646, -0.108741,
		43.949604, 29.744158, 21.231218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201477, 30.014683, 21.576103>,  <43.724560, 30.402611, 21.307339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201477, 30.014683, 21.576103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536297, 29.795845, 21.578327>,  <43.737190, 29.664543, 21.579660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536297, 29.795845, 21.578327>,  <43.201477, 30.014683, 21.576103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536297, 29.795845, 21.578327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190284, -0.281581, 0.940481,
		-0.512965, -0.788290, -0.339802,
		0.837053, -0.547093, 0.005558,
		43.787415, 29.631718, 21.579994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978878, 29.322802, 21.783352>,  <43.201477, 30.014683, 21.576103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978878, 29.322802, 21.783352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372662, 29.305614, 21.851467>,  <43.608932, 29.295303, 21.892336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372662, 29.305614, 21.851467>,  <42.978878, 29.322802, 21.783352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372662, 29.305614, 21.851467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173531, -0.387310, 0.905471,
		0.027051, -0.920948, -0.388746,
		0.984457, -0.042965, 0.170290,
		43.667999, 29.292725, 21.902554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281204, 28.559704, 21.954927>,  <42.978878, 29.322802, 21.783352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281204, 28.559704, 21.954927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516869, 28.846315, 22.104313>,  <43.658268, 29.018282, 22.193945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516869, 28.846315, 22.104313>,  <43.281204, 28.559704, 21.954927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516869, 28.846315, 22.104313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006480, -0.457994, 0.888932,
		0.807991, -0.526142, -0.265188,
		0.589159, 0.716530, 0.373464,
		43.693615, 29.061275, 22.216352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592182, 28.175001, 22.459229>,  <43.281204, 28.559704, 21.954927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592182, 28.175001, 22.459229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706451, 28.553442, 22.520256>,  <43.775013, 28.780506, 22.556873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706451, 28.553442, 22.520256>,  <43.592182, 28.175001, 22.459229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706451, 28.553442, 22.520256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180566, -0.209493, 0.960993,
		0.941162, -0.246980, -0.230681,
		0.285672, 0.946104, 0.152571,
		43.792152, 28.837273, 22.566027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238094, 28.136341, 22.861933>,  <43.592182, 28.175001, 22.459229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238094, 28.136341, 22.861933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053295, 28.485266, 22.925974>,  <43.942417, 28.694620, 22.964399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053295, 28.485266, 22.925974>,  <44.238094, 28.136341, 22.861933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053295, 28.485266, 22.925974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027833, -0.194697, 0.980469,
		0.886445, 0.448517, 0.114228,
		-0.461997, 0.872311, 0.160105,
		43.914696, 28.746960, 22.974005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538288, 28.496357, 23.446321>,  <44.238094, 28.136341, 22.861933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538288, 28.496357, 23.446321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170448, 28.651604, 23.421984>,  <43.949745, 28.744753, 23.407381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170448, 28.651604, 23.421984>,  <44.538288, 28.496357, 23.446321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170448, 28.651604, 23.421984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172082, -0.258725, 0.950500,
		0.353165, 0.884548, 0.304711,
		-0.919599, 0.388119, -0.060842,
		43.894569, 28.768040, 23.403730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521233, 28.980864, 24.011137>,  <44.538288, 28.496357, 23.446321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521233, 28.980864, 24.011137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130642, 28.984716, 23.924976>,  <43.896286, 28.987028, 23.873280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130642, 28.984716, 23.924976>,  <44.521233, 28.980864, 24.011137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130642, 28.984716, 23.924976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214209, -0.157281, 0.964042,
		-0.024591, 0.987507, 0.155645,
		-0.976478, 0.009634, -0.215400,
		43.837700, 28.987606, 23.860355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242249, 29.493605, 24.250160>,  <44.521233, 28.980864, 24.011137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242249, 29.493605, 24.250160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965900, 29.204569, 24.240753>,  <43.800091, 29.031147, 24.235109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965900, 29.204569, 24.240753>,  <44.242249, 29.493605, 24.250160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965900, 29.204569, 24.240753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108893, 0.071844, 0.991454,
		-0.714727, 0.687532, -0.128320,
		-0.690875, -0.722592, -0.023518,
		43.758636, 28.987791, 24.233698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666447, 29.751017, 24.619190>,  <44.242249, 29.493605, 24.250160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666447, 29.751017, 24.619190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604935, 29.356689, 24.592308>,  <43.568027, 29.120094, 24.576178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604935, 29.356689, 24.592308>,  <43.666447, 29.751017, 24.619190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604935, 29.356689, 24.592308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375574, -0.004593, 0.926781,
		-0.913945, 0.167765, -0.369540,
		-0.153784, -0.985816, -0.067206,
		43.558800, 29.060944, 24.572145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046551, 29.601074, 24.881245>,  <43.666447, 29.751017, 24.619190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046551, 29.601074, 24.881245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217838, 29.240211, 24.902208>,  <43.320610, 29.023695, 24.914787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217838, 29.240211, 24.902208>,  <43.046551, 29.601074, 24.881245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217838, 29.240211, 24.902208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361420, -0.117817, 0.924929,
		-0.828255, -0.415012, -0.376508,
		0.428216, -0.902155, 0.052411,
		43.346302, 28.969564, 24.917933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502670, 29.179367, 25.190584>,  <43.046551, 29.601074, 24.881245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502670, 29.179367, 25.190584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857334, 29.003613, 25.248243>,  <43.070133, 28.898159, 25.282839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857334, 29.003613, 25.248243>,  <42.502670, 29.179367, 25.190584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857334, 29.003613, 25.248243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207746, -0.099994, 0.973059,
		-0.413136, -0.892715, -0.179941,
		0.886657, -0.439387, 0.144147,
		43.123333, 28.871796, 25.291487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377045, 28.630064, 25.683983>,  <42.502670, 29.179367, 25.190584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377045, 28.630064, 25.683983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776611, 28.634377, 25.702124>,  <43.016350, 28.636965, 25.713009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776611, 28.634377, 25.702124>,  <42.377045, 28.630064, 25.683983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776611, 28.634377, 25.702124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043705, -0.121748, 0.991598,
		0.016215, -0.992503, -0.121144,
		0.998913, 0.010784, 0.045352,
		43.076286, 28.637611, 25.715729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618610, 28.086550, 26.151402>,  <42.377045, 28.630064, 25.683983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618610, 28.086550, 26.151402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910995, 28.359337, 26.141502>,  <43.086426, 28.523010, 26.135563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910995, 28.359337, 26.141502>,  <42.618610, 28.086550, 26.151402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910995, 28.359337, 26.141502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029816, 0.068149, 0.997229,
		0.681767, -0.728198, 0.070148,
		0.730961, 0.681970, -0.024749,
		43.130283, 28.563929, 26.134077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090717, 28.016737, 26.700268>,  <42.618610, 28.086550, 26.151402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090717, 28.016737, 26.700268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141365, 28.404984, 26.618416>,  <43.171753, 28.637932, 26.569305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141365, 28.404984, 26.618416>,  <43.090717, 28.016737, 26.700268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141365, 28.404984, 26.618416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035357, 0.201742, 0.978800,
		0.991321, -0.131171, -0.008773,
		0.126620, 0.970616, -0.204629,
		43.179352, 28.696169, 26.557028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671726, 28.255375, 27.176086>,  <43.090717, 28.016737, 26.700268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671726, 28.255375, 27.176086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.471008, 28.579416, 27.054802>,  <43.350578, 28.773840, 26.982031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.471008, 28.579416, 27.054802>,  <43.671726, 28.255375, 27.176086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471008, 28.579416, 27.054802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076635, 0.307521, 0.948450,
		0.861584, 0.499166, -0.092231,
		-0.501797, 0.810101, -0.303209,
		43.320469, 28.822447, 26.963839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792526, 28.633251, 27.791288>,  <43.671726, 28.255375, 27.176086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792526, 28.633251, 27.791288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556774, 28.887154, 27.591402>,  <43.415321, 29.039495, 27.471470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556774, 28.887154, 27.591402>,  <43.792526, 28.633251, 27.791288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556774, 28.887154, 27.591402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153869, 0.519044, 0.840784,
		0.793067, 0.572432, -0.208246,
		-0.589381, 0.634755, -0.499716,
		43.379959, 29.077579, 27.441486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001408, 29.384867, 27.976603>,  <43.792526, 28.633251, 27.791288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001408, 29.384867, 27.976603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625340, 29.381901, 27.840351>,  <43.399700, 29.380121, 27.758600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625340, 29.381901, 27.840351>,  <44.001408, 29.384867, 27.976603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625340, 29.381901, 27.840351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285059, 0.564708, 0.774498,
		0.186615, 0.825258, -0.533034,
		-0.940168, -0.007413, -0.340630,
		43.343288, 29.379677, 27.738163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771580, 30.129139, 27.987333>,  <44.001408, 29.384867, 27.976603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771580, 30.129139, 27.987333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457779, 29.881247, 27.996243>,  <43.269501, 29.732512, 28.001587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457779, 29.881247, 27.996243>,  <43.771580, 30.129139, 27.987333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457779, 29.881247, 27.996243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443601, 0.585912, 0.678179,
		-0.433338, 0.522150, -0.734560,
		-0.784498, -0.619731, 0.022271,
		43.222431, 29.695328, 28.002924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202114, 30.552822, 27.924482>,  <43.771580, 30.129139, 27.987333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202114, 30.552822, 27.924482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109818, 30.205338, 28.099798>,  <43.054440, 29.996847, 28.204987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109818, 30.205338, 28.099798>,  <43.202114, 30.552822, 27.924482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109818, 30.205338, 28.099798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484276, 0.493221, 0.722641,
		-0.843940, -0.045510, -0.534503,
		-0.230741, -0.868713, 0.438289,
		43.040596, 29.944723, 28.231285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566807, 30.670227, 28.010656>,  <43.202114, 30.552822, 27.924482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566807, 30.670227, 28.010656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643993, 30.374195, 28.268353>,  <42.690308, 30.196575, 28.422970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643993, 30.374195, 28.268353>,  <42.566807, 30.670227, 28.010656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643993, 30.374195, 28.268353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471172, 0.506035, 0.722444,
		-0.860674, -0.442957, -0.251055,
		0.192969, -0.740079, 0.644240,
		42.701885, 30.152172, 28.461624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227589, 30.857718, 28.637451>,  <42.566807, 30.670227, 28.010656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227589, 30.857718, 28.637451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428558, 30.540398, 28.774998>,  <42.549141, 30.350006, 28.857527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428558, 30.540398, 28.774998>,  <42.227589, 30.857718, 28.637451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428558, 30.540398, 28.774998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221035, 0.266646, 0.938106,
		-0.835889, -0.547336, -0.041377,
		0.502426, -0.793298, 0.343867,
		42.579285, 30.302408, 28.878159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797066, 30.642874, 29.129250>,  <42.227589, 30.857718, 28.637451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797066, 30.642874, 29.129250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149136, 30.475754, 29.219343>,  <42.360378, 30.375483, 29.273399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149136, 30.475754, 29.219343>,  <41.797066, 30.642874, 29.129250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149136, 30.475754, 29.219343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167905, 0.169774, 0.971074,
		-0.443954, -0.892536, 0.079281,
		0.880178, -0.417800, 0.225234,
		42.413189, 30.350414, 29.286913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715809, 30.088076, 29.648314>,  <41.797066, 30.642874, 29.129250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715809, 30.088076, 29.648314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098206, 30.201084, 29.679976>,  <42.327644, 30.268890, 29.698973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098206, 30.201084, 29.679976>,  <41.715809, 30.088076, 29.648314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098206, 30.201084, 29.679976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100150, 0.060637, 0.993123,
		0.275780, -0.957342, 0.086263,
		0.955989, 0.282523, 0.079156,
		42.385002, 30.285841, 29.703722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039501, 29.575237, 30.170433>,  <41.715809, 30.088076, 29.648314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039501, 29.575237, 30.170433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244175, 29.917797, 30.142843>,  <42.366982, 30.123333, 30.126289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244175, 29.917797, 30.142843>,  <42.039501, 29.575237, 30.170433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244175, 29.917797, 30.142843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288658, 0.246971, 0.925031,
		0.809229, -0.453418, 0.373578,
		0.511689, 0.856398, -0.068973,
		42.397682, 30.174717, 30.122150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501656, 29.552826, 30.761528>,  <42.039501, 29.575237, 30.170433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501656, 29.552826, 30.761528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451954, 29.930656, 30.639980>,  <42.422134, 30.157354, 30.567053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451954, 29.930656, 30.639980>,  <42.501656, 29.552826, 30.761528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451954, 29.930656, 30.639980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267887, 0.262935, 0.926877,
		0.955405, 0.196568, 0.220370,
		-0.124251, 0.944577, -0.303867,
		42.414680, 30.214029, 30.548820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882797, 30.024084, 31.287552>,  <42.501656, 29.552826, 30.761528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882797, 30.024084, 31.287552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618690, 30.234436, 31.073076>,  <42.460228, 30.360647, 30.944391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618690, 30.234436, 31.073076>,  <42.882797, 30.024084, 31.287552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618690, 30.234436, 31.073076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428190, 0.322948, 0.844013,
		0.617011, 0.786864, 0.011945,
		-0.660266, 0.525880, -0.536189,
		42.420612, 30.392200, 30.912220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775982, 30.669748, 31.695795>,  <42.882797, 30.024084, 31.287552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775982, 30.669748, 31.695795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460785, 30.705843, 31.452179>,  <42.271667, 30.727501, 31.306009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460785, 30.705843, 31.452179>,  <42.775982, 30.669748, 31.695795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460785, 30.705843, 31.452179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562405, 0.297041, 0.771665,
		0.250543, 0.950591, -0.183316,
		-0.787990, 0.090238, -0.609039,
		42.224388, 30.732914, 31.269466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540264, 31.368473, 31.651390>,  <42.775982, 30.669748, 31.695795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540264, 31.368473, 31.651390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215637, 31.155172, 31.555885>,  <42.020863, 31.027193, 31.498583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215637, 31.155172, 31.555885>,  <42.540264, 31.368473, 31.651390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215637, 31.155172, 31.555885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488542, 0.395219, 0.777900,
		-0.320452, 0.747961, -0.581261,
		-0.811565, -0.533250, -0.238762,
		41.972168, 30.995197, 31.484257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120205, 31.792831, 31.959400>,  <42.540264, 31.368473, 31.651390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120205, 31.792831, 31.959400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885551, 31.487583, 31.850952>,  <41.744759, 31.304434, 31.785883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885551, 31.487583, 31.850952>,  <42.120205, 31.792831, 31.959400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885551, 31.487583, 31.850952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677565, 0.279126, 0.680437,
		-0.443578, 0.582871, -0.680809,
		-0.586638, -0.763119, -0.271119,
		41.709560, 31.258648, 31.769617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376560, 32.052895, 32.010040>,  <42.120205, 31.792831, 31.959400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376560, 32.052895, 32.010040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370022, 31.653702, 32.034561>,  <41.366100, 31.414185, 32.049274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370022, 31.653702, 32.034561>,  <41.376560, 32.052895, 32.010040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370022, 31.653702, 32.034561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692333, 0.055534, 0.719438,
		-0.721393, -0.030684, -0.691846,
		-0.016346, -0.997985, 0.061306,
		41.365120, 31.354305, 32.052952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647221, 31.809835, 32.351337>,  <41.376560, 32.052895, 32.010040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647221, 31.809835, 32.351337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899143, 31.500170, 32.376682>,  <41.050297, 31.314371, 32.391888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899143, 31.500170, 32.376682>,  <40.647221, 31.809835, 32.351337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899143, 31.500170, 32.376682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225433, -0.104121, 0.968679,
		-0.743318, -0.624364, -0.240098,
		0.629808, -0.774163, 0.063357,
		41.088085, 31.267921, 32.395691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191471, 31.364191, 32.446560>,  <40.647221, 31.809835, 32.351337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191471, 31.364191, 32.446560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551861, 31.274796, 32.595310>,  <40.768093, 31.221157, 32.684563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551861, 31.274796, 32.595310>,  <40.191471, 31.364191, 32.446560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551861, 31.274796, 32.595310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379743, 0.008368, 0.925054,
		-0.209853, -0.974670, -0.077330,
		0.900975, -0.223491, 0.371880,
		40.822155, 31.207748, 32.706875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109318, 30.680548, 32.743305>,  <40.191471, 31.364191, 32.446560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109318, 30.680548, 32.743305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401894, 30.887438, 32.921059>,  <40.577438, 31.011572, 33.027710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401894, 30.887438, 32.921059>,  <40.109318, 30.680548, 32.743305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401894, 30.887438, 32.921059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442557, -0.135734, 0.886408,
		0.518790, -0.845018, 0.129621,
		0.731437, 0.517224, 0.444386,
		40.621326, 31.042604, 33.054375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080349, 30.354319, 33.409348>,  <40.109318, 30.680548, 32.743305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080349, 30.354319, 33.409348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318176, 30.670898, 33.466049>,  <40.460873, 30.860846, 33.500069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318176, 30.670898, 33.466049>,  <40.080349, 30.354319, 33.409348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318176, 30.670898, 33.466049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272064, 0.032135, 0.961742,
		0.756614, -0.610391, 0.234431,
		0.594573, 0.791448, 0.141752,
		40.496548, 30.908333, 33.508575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466301, 30.207188, 34.131683>,  <40.080349, 30.354319, 33.409348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466301, 30.207188, 34.131683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481392, 30.600195, 34.058765>,  <40.490448, 30.836000, 34.015015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481392, 30.600195, 34.058765>,  <40.466301, 30.207188, 34.131683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481392, 30.600195, 34.058765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008464, 0.182735, 0.983126,
		0.999252, -0.035551, 0.015211,
		0.037731, 0.982519, -0.182298,
		40.492710, 30.894951, 34.004078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028492, 30.446817, 34.546852>,  <40.466301, 30.207188, 34.131683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028492, 30.446817, 34.546852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813030, 30.773741, 34.465015>,  <40.683754, 30.969894, 34.415913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813030, 30.773741, 34.465015>,  <41.028492, 30.446817, 34.546852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813030, 30.773741, 34.465015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015197, 0.252214, 0.967552,
		0.842388, 0.518070, -0.148278,
		-0.538657, 0.817308, -0.204589,
		40.651432, 31.018932, 34.403641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237228, 30.935390, 34.992100>,  <41.028492, 30.446817, 34.546852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237228, 30.935390, 34.992100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878696, 31.073654, 34.881027>,  <40.663578, 31.156612, 34.814384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878696, 31.073654, 34.881027>,  <41.237228, 30.935390, 34.992100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878696, 31.073654, 34.881027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189225, 0.268157, 0.944609,
		0.400977, 0.899227, -0.174950,
		-0.896332, 0.345662, -0.277681,
		40.609798, 31.177353, 34.797722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174652, 31.629333, 35.218765>,  <41.237228, 30.935390, 34.992100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174652, 31.629333, 35.218765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813999, 31.458700, 35.190224>,  <40.597607, 31.356319, 35.173100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813999, 31.458700, 35.190224>,  <41.174652, 31.629333, 35.218765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813999, 31.458700, 35.190224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168519, 0.194539, 0.966310,
		-0.398331, 0.883278, -0.247290,
		-0.901628, -0.426584, -0.071358,
		40.543510, 31.330725, 35.168816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212437, 31.826374, 35.943821>,  <41.174652, 31.629333, 35.218765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212437, 31.826374, 35.943821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269638, 32.169411, 35.746201>,  <41.303959, 32.375233, 35.627628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269638, 32.169411, 35.746201>,  <41.212437, 31.826374, 35.943821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269638, 32.169411, 35.746201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617548, 0.467404, 0.632588,
		0.773424, 0.214642, 0.596442,
		0.142999, 0.857591, -0.494054,
		41.312538, 32.426689, 35.597984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287567, 32.259399, 36.486000>,  <41.212437, 31.826374, 35.943821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287567, 32.259399, 36.486000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185863, 32.492050, 36.176922>,  <41.124840, 32.631641, 35.991474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185863, 32.492050, 36.176922>,  <41.287567, 32.259399, 36.486000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185863, 32.492050, 36.176922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560915, 0.562175, 0.607729,
		0.787863, 0.587939, 0.183305,
		-0.254258, 0.581625, -0.772700,
		41.109585, 32.666538, 35.945110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351418, 32.966228, 36.658485>,  <41.287567, 32.259399, 36.486000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351418, 32.966228, 36.658485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091717, 32.952198, 36.354580>,  <40.935898, 32.943779, 36.172237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091717, 32.952198, 36.354580>,  <41.351418, 32.966228, 36.658485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091717, 32.952198, 36.354580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642803, 0.559259, 0.523483,
		0.406541, 0.828251, -0.385650,
		-0.649253, -0.035079, -0.759763,
		40.896942, 32.941673, 36.126652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028248, 33.613716, 36.730148>,  <41.351418, 32.966228, 36.658485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028248, 33.613716, 36.730148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800175, 33.447544, 36.446651>,  <40.663330, 33.347843, 36.276554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800175, 33.447544, 36.446651>,  <41.028248, 33.613716, 36.730148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800175, 33.447544, 36.446651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761857, 0.590162, 0.266988,
		0.307358, 0.692191, -0.652995,
		-0.570179, -0.415428, -0.708742,
		40.629120, 33.322914, 36.234028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588364, 34.149364, 36.407192>,  <41.028248, 33.613716, 36.730148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588364, 34.149364, 36.407192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395969, 33.802723, 36.354042>,  <40.280533, 33.594738, 36.322151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395969, 33.802723, 36.354042>,  <40.588364, 34.149364, 36.407192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395969, 33.802723, 36.354042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853591, 0.428291, 0.296563,
		-0.200094, 0.256061, -0.945725,
		-0.480984, -0.866602, -0.132873,
		40.251675, 33.542744, 36.314178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941841, 34.476196, 36.429008>,  <40.588364, 34.149364, 36.407192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941841, 34.476196, 36.429008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896435, 34.079487, 36.405331>,  <39.869190, 33.841461, 36.391125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896435, 34.079487, 36.405331>,  <39.941841, 34.476196, 36.429008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896435, 34.079487, 36.405331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977844, 0.100974, 0.183369,
		-0.175882, 0.078702, -0.981260,
		-0.113513, -0.991771, -0.059198,
		39.862381, 33.781956, 36.387569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585457, 34.301991, 35.961563>,  <39.941841, 34.476196, 36.429008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585457, 34.301991, 35.961563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505638, 34.008682, 36.221565>,  <39.457748, 33.832699, 36.377567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505638, 34.008682, 36.221565>,  <39.585457, 34.301991, 35.961563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505638, 34.008682, 36.221565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917185, 0.373247, 0.139496,
		-0.344899, -0.568336, -0.747020,
		-0.199543, -0.733267, 0.650002,
		39.445774, 33.788704, 36.416565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891506, 34.089180, 35.879230>,  <39.585457, 34.301991, 35.961563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891506, 34.089180, 35.879230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969563, 34.008297, 36.263111>,  <39.016396, 33.959766, 36.493439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969563, 34.008297, 36.263111>,  <38.891506, 34.089180, 35.879230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969563, 34.008297, 36.263111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856741, 0.441159, 0.267159,
		-0.477405, -0.874350, -0.087156,
		0.195140, -0.202213, 0.959703,
		39.028107, 33.947632, 36.551022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251522, 33.878651, 36.177498>,  <38.891506, 34.089180, 35.879230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251522, 33.878651, 36.177498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506931, 34.039722, 36.439835>,  <38.660179, 34.136364, 36.597237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506931, 34.039722, 36.439835>,  <38.251522, 33.878651, 36.177498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506931, 34.039722, 36.439835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716044, 0.623192, 0.314504,
		-0.282073, -0.670434, 0.686260,
		0.638526, 0.402679, 0.655846,
		38.698490, 34.160526, 36.636589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799435, 34.357292, 36.458351>,  <38.251522, 33.878651, 36.177498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799435, 34.357292, 36.458351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128208, 34.434536, 36.672691>,  <38.325474, 34.480881, 36.801296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128208, 34.434536, 36.672691>,  <37.799435, 34.357292, 36.458351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128208, 34.434536, 36.672691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471188, 0.759087, 0.449187,
		-0.320015, -0.621687, 0.714909,
		0.821932, 0.193110, 0.535851,
		38.374786, 34.492470, 36.833447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683308, 34.327988, 37.205807>,  <37.799435, 34.357292, 36.458351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683308, 34.327988, 37.205807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972919, 34.589230, 37.117058>,  <38.146687, 34.745975, 37.063808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972919, 34.589230, 37.117058>,  <37.683308, 34.327988, 37.205807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972919, 34.589230, 37.117058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492619, 0.714766, 0.496423,
		0.482806, -0.250127, 0.839247,
		0.724034, 0.653105, -0.221876,
		38.190128, 34.785160, 37.050495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892082, 34.549545, 37.821419>,  <37.683308, 34.327988, 37.205807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892082, 34.549545, 37.821419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998985, 34.829262, 37.556221>,  <38.063129, 34.997089, 37.397102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998985, 34.829262, 37.556221>,  <37.892082, 34.549545, 37.821419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998985, 34.829262, 37.556221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538075, 0.679071, 0.499338,
		0.799404, 0.223290, 0.557758,
		0.267260, 0.699289, -0.662999,
		38.079163, 35.039047, 37.357323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827240, 35.134560, 38.170841>,  <37.892082, 34.549545, 37.821419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827240, 35.134560, 38.170841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925175, 35.292389, 37.816582>,  <37.983936, 35.387085, 37.604027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925175, 35.292389, 37.816582>,  <37.827240, 35.134560, 38.170841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925175, 35.292389, 37.816582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589857, 0.785576, 0.186919,
		0.769494, 0.476638, 0.425082,
		0.244842, 0.394571, -0.885644,
		37.998627, 35.410759, 37.550888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135647, 35.797577, 38.390781>,  <37.827240, 35.134560, 38.170841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135647, 35.797577, 38.390781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936863, 35.857628, 38.048904>,  <37.817593, 35.893658, 37.843777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936863, 35.857628, 38.048904>,  <38.135647, 35.797577, 38.390781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936863, 35.857628, 38.048904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500631, 0.754889, 0.423688,
		0.708805, 0.638438, -0.299987,
		-0.496955, 0.150130, -0.854691,
		37.787777, 35.902668, 37.792496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271111, 36.609688, 38.255039>,  <38.135647, 35.797577, 38.390781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271111, 36.609688, 38.255039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941082, 36.461071, 38.084759>,  <37.743065, 36.371902, 37.982590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941082, 36.461071, 38.084759>,  <38.271111, 36.609688, 38.255039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941082, 36.461071, 38.084759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525519, 0.781373, 0.336580,
		0.207576, 0.501414, -0.839938,
		-0.825071, -0.371537, -0.425697,
		37.693562, 36.349609, 37.957050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957153, 37.180248, 37.939056>,  <38.271111, 36.609688, 38.255039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957153, 37.180248, 37.939056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674465, 36.901798, 37.989582>,  <37.504852, 36.734726, 38.019897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674465, 36.901798, 37.989582>,  <37.957153, 37.180248, 37.939056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674465, 36.901798, 37.989582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636458, 0.703517, 0.316205,
		-0.308983, 0.143074, -0.940244,
		-0.706719, -0.696128, 0.126314,
		37.462448, 36.692959, 38.027477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338478, 37.633308, 37.649464>,  <37.957153, 37.180248, 37.939056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338478, 37.633308, 37.649464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193218, 37.297939, 37.812031>,  <37.106064, 37.096718, 37.909569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193218, 37.297939, 37.812031>,  <37.338478, 37.633308, 37.649464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193218, 37.297939, 37.812031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860461, 0.469098, 0.198879,
		-0.357393, -0.277482, -0.891781,
		-0.363148, -0.838421, 0.406415,
		37.084274, 37.046413, 37.933956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680180, 37.558018, 37.366508>,  <37.338478, 37.633308, 37.649464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680180, 37.558018, 37.366508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682911, 37.330177, 37.695263>,  <36.684551, 37.193474, 37.892517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682911, 37.330177, 37.695263>,  <36.680180, 37.558018, 37.366508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682911, 37.330177, 37.695263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896918, 0.359922, 0.256895,
		-0.442145, -0.738923, -0.508430,
		0.006830, -0.569605, 0.821890,
		36.684959, 37.159294, 37.941830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040157, 37.220051, 37.374950>,  <36.680180, 37.558018, 37.366508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040157, 37.220051, 37.374950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192989, 37.280670, 37.739597>,  <36.284691, 37.317039, 37.958385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192989, 37.280670, 37.739597>,  <36.040157, 37.220051, 37.374950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192989, 37.280670, 37.739597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822734, 0.505026, 0.260877,
		-0.420857, -0.849696, 0.317643,
		0.382084, 0.151544, 0.911617,
		36.307613, 37.326134, 38.013084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559685, 37.002785, 37.819443>,  <36.040157, 37.220051, 37.374950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559685, 37.002785, 37.819443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766613, 37.266754, 38.037392>,  <35.890770, 37.425137, 38.168159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766613, 37.266754, 38.037392>,  <35.559685, 37.002785, 37.819443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766613, 37.266754, 38.037392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855259, 0.376143, 0.356440,
		0.030273, -0.650398, 0.758990,
		0.517316, 0.659923, 0.544872,
		35.921806, 37.464729, 38.200851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179390, 37.011101, 38.351841>,  <35.559685, 37.002785, 37.819443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179390, 37.011101, 38.351841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416351, 37.332310, 38.377773>,  <35.558529, 37.525036, 38.393333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416351, 37.332310, 38.377773>,  <35.179390, 37.011101, 38.351841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416351, 37.332310, 38.377773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746181, 0.516564, 0.419971,
		0.303755, -0.297173, 0.905219,
		0.592408, 0.803025, 0.064835,
		35.594074, 37.573219, 38.397224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323448, 37.172379, 39.105076>,  <35.179390, 37.011101, 38.351841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323448, 37.172379, 39.105076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339333, 37.495018, 38.869171>,  <35.348862, 37.688602, 38.727627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339333, 37.495018, 38.869171>,  <35.323448, 37.172379, 39.105076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339333, 37.495018, 38.869171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634514, 0.476307, 0.608706,
		0.771890, 0.350039, 0.530715,
		0.039712, 0.806600, -0.589762,
		35.351246, 37.737000, 38.692242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396873, 37.895714, 39.467331>,  <35.323448, 37.172379, 39.105076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396873, 37.895714, 39.467331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286556, 38.053577, 39.116745>,  <35.220367, 38.148296, 38.906395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286556, 38.053577, 39.116745>,  <35.396873, 37.895714, 39.467331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286556, 38.053577, 39.116745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441695, 0.757822, 0.480220,
		0.853724, 0.519570, -0.034685,
		-0.275793, 0.394655, -0.876462,
		35.203819, 38.171974, 38.853806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677475, 38.620705, 39.393433>,  <35.396873, 37.895714, 39.467331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677475, 38.620705, 39.393433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339745, 38.570683, 39.185020>,  <35.137104, 38.540668, 39.059975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339745, 38.570683, 39.185020>,  <35.677475, 38.620705, 39.393433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339745, 38.570683, 39.185020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415271, 0.767221, 0.488797,
		0.338615, 0.629073, -0.699719,
		-0.844328, -0.125059, -0.521028,
		35.086445, 38.533165, 39.028713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293812, 38.408772, 38.866970>,  <35.677475, 38.620705, 39.393433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293812, 38.408772, 38.866970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056686, 38.087425, 38.889488>,  <35.914410, 37.894619, 38.903000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056686, 38.087425, 38.889488>,  <36.293812, 38.408772, 38.866970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056686, 38.087425, 38.889488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703932, -0.550861, -0.448367,
		0.391212, -0.226174, 0.892075,
		-0.592818, -0.803367, 0.056293,
		35.878841, 37.846416, 38.906376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705860, 37.903687, 39.029461>,  <36.293812, 38.408772, 38.866970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705860, 37.903687, 39.029461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421558, 37.699760, 38.835583>,  <36.250977, 37.577404, 38.719257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421558, 37.699760, 38.835583>,  <36.705860, 37.903687, 39.029461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421558, 37.699760, 38.835583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695915, -0.610137, -0.378728,
		-0.102649, -0.606486, 0.788440,
		-0.710750, -0.509811, -0.484692,
		36.208332, 37.546818, 38.690174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718292, 37.212738, 39.235313>,  <36.705860, 37.903687, 39.029461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718292, 37.212738, 39.235313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602383, 37.242130, 38.853607>,  <36.532837, 37.259766, 38.624584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602383, 37.242130, 38.853607>,  <36.718292, 37.212738, 39.235313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602383, 37.242130, 38.853607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776194, -0.565290, -0.279231,
		-0.559958, -0.821612, 0.106768,
		-0.289774, 0.073485, -0.954270,
		36.515450, 37.264175, 38.567326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637371, 36.550991, 39.060528>,  <36.718292, 37.212738, 39.235313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637371, 36.550991, 39.060528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670185, 36.764923, 38.724140>,  <36.689873, 36.893284, 38.522308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670185, 36.764923, 38.724140>,  <36.637371, 36.550991, 39.060528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670185, 36.764923, 38.724140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528000, -0.738985, -0.418469,
		-0.845273, -0.409704, -0.343010,
		0.082031, 0.534830, -0.840968,
		36.694794, 36.925373, 38.471851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452343, 36.105576, 38.588165>,  <36.637371, 36.550991, 39.060528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452343, 36.105576, 38.588165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660698, 36.382427, 38.388309>,  <36.785709, 36.548538, 38.268398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660698, 36.382427, 38.388309>,  <36.452343, 36.105576, 38.588165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660698, 36.382427, 38.388309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551878, -0.719583, -0.421463,
		-0.651236, -0.056205, -0.756791,
		0.520885, 0.692128, -0.499637,
		36.816963, 36.590065, 38.238419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412811, 35.969341, 37.938835>,  <36.452343, 36.105576, 38.588165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412811, 35.969341, 37.938835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743229, 36.194683, 37.932083>,  <36.941479, 36.329887, 37.928032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743229, 36.194683, 37.932083>,  <36.412811, 35.969341, 37.938835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743229, 36.194683, 37.932083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431014, -0.650721, -0.625131,
		-0.363152, 0.509111, -0.780338,
		0.826043, 0.563354, -0.016877,
		36.991043, 36.363689, 37.927021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683983, 35.803574, 37.386509>,  <36.412811, 35.969341, 37.938835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683983, 35.803574, 37.386509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998337, 35.981236, 37.558609>,  <37.186951, 36.087833, 37.661869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998337, 35.981236, 37.558609>,  <36.683983, 35.803574, 37.386509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998337, 35.981236, 37.558609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617325, -0.603997, -0.504080,
		0.035981, 0.661753, -0.748858,
		0.785885, 0.444152, 0.430249,
		37.234100, 36.114483, 37.687683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992714, 36.136799, 36.839680>,  <36.683983, 35.803574, 37.386509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992714, 36.136799, 36.839680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268612, 36.070454, 37.121597>,  <37.434151, 36.030647, 37.290749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268612, 36.070454, 37.121597>,  <36.992714, 36.136799, 36.839680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268612, 36.070454, 37.121597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588072, -0.439540, -0.678952,
		0.422399, 0.882776, -0.205633,
		0.689747, -0.165862, 0.704797,
		37.475536, 36.020695, 37.333038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512901, 36.045177, 36.372742>,  <36.992714, 36.136799, 36.839680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512901, 36.045177, 36.372742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629261, 35.965813, 36.747124>,  <37.699078, 35.918194, 36.971752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629261, 35.965813, 36.747124>,  <37.512901, 36.045177, 36.372742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629261, 35.965813, 36.747124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673899, -0.651922, -0.347645,
		0.679146, 0.731869, -0.055935,
		0.290896, -0.198408, 0.935956,
		37.716530, 35.906292, 37.027912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193363, 35.871212, 36.302738>,  <37.512901, 36.045177, 36.372742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193363, 35.871212, 36.302738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135216, 35.745487, 36.677986>,  <38.100327, 35.670052, 36.903137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135216, 35.745487, 36.677986>,  <38.193363, 35.871212, 36.302738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135216, 35.745487, 36.677986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674794, -0.724928, -0.138317,
		0.723546, 0.612932, 0.317482,
		-0.145373, -0.314314, 0.938122,
		38.091602, 35.651192, 36.959423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866638, 35.755547, 36.516079>,  <38.193363, 35.871212, 36.302738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866638, 35.755547, 36.516079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619041, 35.572929, 36.771709>,  <38.470482, 35.463360, 36.925087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619041, 35.572929, 36.771709>,  <38.866638, 35.755547, 36.516079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619041, 35.572929, 36.771709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620563, -0.783049, 0.041670,
		0.481402, 0.422378, 0.768016,
		-0.618995, -0.456542, 0.639073,
		38.433342, 35.435966, 36.963432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253391, 35.532860, 37.018429>,  <38.866638, 35.755547, 36.516079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253391, 35.532860, 37.018429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927773, 35.300564, 37.014824>,  <38.732403, 35.161186, 37.012661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927773, 35.300564, 37.014824>,  <39.253391, 35.532860, 37.018429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927773, 35.300564, 37.014824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580659, -0.814087, 0.009853,
		-0.013057, 0.002789, 0.999911,
		-0.814042, -0.580736, -0.009011,
		38.683559, 35.126343, 37.012119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368080, 34.965218, 37.521034>,  <39.253391, 35.532860, 37.018429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368080, 34.965218, 37.521034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101097, 34.826229, 37.257591>,  <38.940907, 34.742836, 37.099525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101097, 34.826229, 37.257591>,  <39.368080, 34.965218, 37.521034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101097, 34.826229, 37.257591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382070, -0.918962, 0.097626,
		-0.639153, -0.186470, 0.746131,
		-0.667462, -0.347472, -0.658603,
		38.900860, 34.721989, 37.060009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317657, 34.291321, 37.850113>,  <39.368080, 34.965218, 37.521034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317657, 34.291321, 37.850113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151176, 34.283768, 37.486481>,  <39.051289, 34.279236, 37.268303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151176, 34.283768, 37.486481>,  <39.317657, 34.291321, 37.850113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151176, 34.283768, 37.486481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450585, -0.872677, -0.188168,
		-0.789778, -0.487933, 0.371716,
		-0.416201, -0.018879, -0.909076,
		39.026318, 34.278103, 37.213757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219864, 33.553909, 37.714615>,  <39.317657, 34.291321, 37.850113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219864, 33.553909, 37.714615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225685, 33.718254, 37.349983>,  <39.229179, 33.816860, 37.131203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225685, 33.718254, 37.349983>,  <39.219864, 33.553909, 37.714615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225685, 33.718254, 37.349983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439398, -0.821562, -0.363268,
		-0.898174, -0.395261, -0.192488,
		0.014556, 0.410858, -0.911583,
		39.230053, 33.841511, 37.076508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301132, 32.970371, 37.372772>,  <39.219864, 33.553909, 37.714615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301132, 32.970371, 37.372772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361225, 33.242325, 37.085667>,  <39.397282, 33.405499, 36.913403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361225, 33.242325, 37.085667>,  <39.301132, 32.970371, 37.372772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361225, 33.242325, 37.085667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740283, -0.558567, -0.374144,
		-0.655295, -0.475142, -0.587221,
		0.150230, 0.679884, -0.717766,
		39.406296, 33.446289, 36.870338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977951, 32.756859, 37.065853>,  <39.301132, 32.970371, 37.372772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977951, 32.756859, 37.065853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854694, 33.000462, 36.773510>,  <39.780743, 33.146626, 36.598103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854694, 33.000462, 36.773510>,  <39.977951, 32.756859, 37.065853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854694, 33.000462, 36.773510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841424, -0.184008, -0.508081,
		-0.443911, -0.771523, -0.455736,
		-0.308137, 0.609010, -0.730861,
		39.762253, 33.183167, 36.554253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736210, 32.368950, 36.423100>,  <39.977951, 32.756859, 37.065853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736210, 32.368950, 36.423100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888527, 32.734966, 36.369873>,  <39.979916, 32.954575, 36.337936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888527, 32.734966, 36.369873>,  <39.736210, 32.368950, 36.423100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888527, 32.734966, 36.369873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737911, -0.387442, -0.552608,
		-0.557212, 0.112238, -0.822750,
		0.380791, 0.915036, -0.133066,
		40.002766, 33.009476, 36.329952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721359, 32.579865, 35.752171>,  <39.736210, 32.368950, 36.423100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721359, 32.579865, 35.752171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009003, 32.820293, 35.891655>,  <40.181587, 32.964550, 35.975346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009003, 32.820293, 35.891655>,  <39.721359, 32.579865, 35.752171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009003, 32.820293, 35.891655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609548, -0.304657, -0.731871,
		-0.333668, 0.738851, -0.585462,
		0.719108, 0.601069, 0.348711,
		40.224735, 33.000614, 35.996269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051701, 32.971561, 35.196445>,  <39.721359, 32.579865, 35.752171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051701, 32.971561, 35.196445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332298, 32.968098, 35.481491>,  <40.500656, 32.966019, 35.652519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332298, 32.968098, 35.481491>,  <40.051701, 32.971561, 35.196445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332298, 32.968098, 35.481491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676197, -0.307706, -0.669384,
		0.225074, 0.951442, -0.210000,
		0.701498, -0.008660, 0.712619,
		40.542747, 32.965500, 35.695278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632702, 33.346638, 34.920166>,  <40.051701, 32.971561, 35.196445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632702, 33.346638, 34.920166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783195, 33.137772, 35.226315>,  <40.873489, 33.012451, 35.410004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783195, 33.137772, 35.226315>,  <40.632702, 33.346638, 34.920166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783195, 33.137772, 35.226315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772244, -0.279710, -0.570440,
		0.511945, 0.805671, 0.298003,
		0.376232, -0.522165, 0.765371,
		40.896065, 32.981121, 35.455925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359283, 33.575268, 35.035858>,  <40.632702, 33.346638, 34.920166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359283, 33.575268, 35.035858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335136, 33.209225, 35.195320>,  <41.320648, 32.989597, 35.290997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335136, 33.209225, 35.195320>,  <41.359283, 33.575268, 35.035858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335136, 33.209225, 35.195320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796029, -0.285102, -0.533905,
		0.602240, 0.285111, 0.745667,
		-0.060369, -0.915111, 0.398657,
		41.317024, 32.934692, 35.314919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593418, 34.229076, 34.914646>,  <41.359283, 33.575268, 35.035858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593418, 34.229076, 34.914646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768509, 34.536594, 35.101128>,  <41.873566, 34.721104, 35.213017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768509, 34.536594, 35.101128>,  <41.593418, 34.229076, 34.914646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768509, 34.536594, 35.101128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751219, -0.027819, -0.659466,
		-0.494025, 0.638890, -0.589711,
		0.437732, 0.768795, 0.466203,
		41.899830, 34.767231, 35.240990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705196, 34.828266, 34.462391>,  <41.593418, 34.229076, 34.914646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705196, 34.828266, 34.462391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995193, 34.842655, 34.737518>,  <42.169189, 34.851288, 34.902596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995193, 34.842655, 34.737518>,  <41.705196, 34.828266, 34.462391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995193, 34.842655, 34.737518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669402, 0.198285, -0.715950,
		-0.162142, 0.979484, 0.119672,
		0.724991, 0.035976, 0.687819,
		42.212692, 34.853447, 34.943863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614994, 35.565311, 34.260750>,  <41.705196, 34.828266, 34.462391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614994, 35.565311, 34.260750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328007, 35.509666, 34.533772>,  <41.155815, 35.476280, 34.697586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328007, 35.509666, 34.533772>,  <41.614994, 35.565311, 34.260750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328007, 35.509666, 34.533772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680817, -0.347355, 0.644850,
		0.147380, 0.927357, 0.343930,
		-0.717473, -0.139116, 0.682554,
		41.112766, 35.467930, 34.738537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534637, 35.941982, 33.547157>,  <41.614994, 35.565311, 34.260750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534637, 35.941982, 33.547157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606266, 35.592087, 33.367043>,  <41.649242, 35.382149, 33.258972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606266, 35.592087, 33.367043>,  <41.534637, 35.941982, 33.547157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606266, 35.592087, 33.367043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223080, -0.481868, 0.847372,
		-0.958212, -0.051286, -0.281424,
		0.179068, -0.874742, -0.450291,
		41.659988, 35.329666, 33.231956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246910, 36.296650, 33.705521>,  <41.534637, 35.941982, 33.547157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246910, 36.296650, 33.705521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048038, 36.278423, 34.052101>,  <41.928715, 36.267487, 34.260048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048038, 36.278423, 34.052101>,  <42.246910, 36.296650, 33.705521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048038, 36.278423, 34.052101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297234, -0.947139, 0.120747,
		0.815144, 0.317571, 0.484446,
		-0.497183, -0.045568, 0.866448,
		41.898884, 36.264751, 34.312035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763081, 35.980396, 34.069984>,  <42.246910, 36.296650, 33.705521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763081, 35.980396, 34.069984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420303, 35.916458, 34.265980>,  <42.214638, 35.878094, 34.383579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420303, 35.916458, 34.265980>,  <42.763081, 35.980396, 34.069984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420303, 35.916458, 34.265980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263467, -0.952951, 0.149897,
		0.442977, 0.257550, 0.858743,
		-0.856946, -0.159849, 0.489991,
		42.163219, 35.868504, 34.412975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516560, 35.734711, 34.069592>,  <42.763081, 35.980396, 34.069984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516560, 35.734711, 34.069592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902031, 35.633442, 34.035564>,  <44.133312, 35.572681, 34.015148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902031, 35.633442, 34.035564>,  <43.516560, 35.734711, 34.069592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902031, 35.633442, 34.035564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193381, 0.441710, 0.876069,
		-0.184217, -0.860696, 0.474623,
		0.963674, -0.253170, -0.085072,
		44.191132, 35.557491, 34.010044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760712, 35.315140, 34.638401>,  <43.516560, 35.734711, 34.069592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760712, 35.315140, 34.638401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021240, 35.568180, 34.470787>,  <44.177559, 35.720005, 34.370216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021240, 35.568180, 34.470787>,  <43.760712, 35.315140, 34.638401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021240, 35.568180, 34.470787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119682, 0.459678, 0.879984,
		0.749304, -0.623303, 0.223686,
		0.651321, 0.632605, -0.419037,
		44.216637, 35.757961, 34.345078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463123, 35.278084, 34.933640>,  <43.760712, 35.315140, 34.638401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463123, 35.278084, 34.933640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396603, 35.657799, 34.826904>,  <44.356689, 35.885628, 34.762863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396603, 35.657799, 34.826904>,  <44.463123, 35.278084, 34.933640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396603, 35.657799, 34.826904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162703, 0.293317, 0.942069,
		0.972560, 0.113250, -0.203229,
		-0.166300, 0.949284, -0.266842,
		44.346714, 35.942585, 34.746853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602623, 34.609264, 34.681965>,  <44.463123, 35.278084, 34.933640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602623, 34.609264, 34.681965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607685, 34.220909, 34.586281>,  <44.610722, 33.987896, 34.528870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607685, 34.220909, 34.586281>,  <44.602623, 34.609264, 34.681965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607685, 34.220909, 34.586281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697328, 0.180018, -0.693778,
		0.716641, -0.158028, 0.679303,
		0.012651, -0.970886, -0.239206,
		44.611481, 33.929642, 34.514519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229496, 34.394444, 34.827568>,  <44.602623, 34.609264, 34.681965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229496, 34.394444, 34.827568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054363, 34.184597, 34.535519>,  <44.949284, 34.058689, 34.360287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054363, 34.184597, 34.535519>,  <45.229496, 34.394444, 34.827568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.054363, 34.184597, 34.535519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617095, 0.415240, -0.668408,
		0.653834, -0.743207, 0.141932,
		-0.437829, -0.524614, -0.730127,
		44.923016, 34.027214, 34.316479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708412, 33.959694, 34.399811>,  <45.229496, 34.394444, 34.827568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708412, 33.959694, 34.399811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403194, 34.120861, 34.197655>,  <45.220062, 34.217560, 34.076363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403194, 34.120861, 34.197655>,  <45.708412, 33.959694, 34.399811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403194, 34.120861, 34.197655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642350, 0.385902, -0.662167,
		-0.071768, -0.829901, -0.553275,
		-0.763044, 0.402919, -0.505392,
		45.174282, 34.241737, 34.046036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929543, 34.094727, 33.788940>,  <45.708412, 33.959694, 34.399811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929543, 34.094727, 33.788940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646496, 34.368443, 33.859402>,  <45.476669, 34.532673, 33.901680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646496, 34.368443, 33.859402>,  <45.929543, 34.094727, 33.788940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646496, 34.368443, 33.859402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643913, 0.727132, -0.238024,
		-0.290967, -0.054999, -0.955151,
		-0.707612, 0.684291, 0.176157,
		45.434212, 34.573730, 33.912251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678223, 34.594501, 33.245514>,  <45.929543, 34.094727, 33.788940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678223, 34.594501, 33.245514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702145, 34.693733, 33.632271>,  <45.716499, 34.753273, 33.864326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702145, 34.693733, 33.632271>,  <45.678223, 34.594501, 33.245514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702145, 34.693733, 33.632271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854631, 0.487768, -0.178013,
		-0.515780, 0.836982, -0.182844,
		0.059808, 0.248079, 0.966892,
		45.720089, 34.768158, 33.922337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615494, 35.314487, 33.382336>,  <45.678223, 34.594501, 33.245514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615494, 35.314487, 33.382336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854256, 35.137409, 33.649986>,  <45.997513, 35.031162, 33.810577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854256, 35.137409, 33.649986>,  <45.615494, 35.314487, 33.382336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.854256, 35.137409, 33.649986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738557, 0.628992, -0.242699,
		-0.313431, 0.639053, 0.702405,
		0.596905, -0.442696, 0.669122,
		46.033329, 35.004601, 33.850723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809128, 35.751595, 33.891678>,  <45.615494, 35.314487, 33.382336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809128, 35.751595, 33.891678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089333, 35.483421, 33.793861>,  <46.257458, 35.322517, 33.735172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089333, 35.483421, 33.793861>,  <45.809128, 35.751595, 33.891678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089333, 35.483421, 33.793861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607934, 0.740092, -0.287542,
		0.373760, 0.052762, 0.926024,
		0.700514, -0.670433, -0.244541,
		46.299488, 35.282291, 33.720501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028423, 35.202511, 34.377811>,  <45.809128, 35.751595, 33.891678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028423, 35.202511, 34.377811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376102, 35.089886, 34.540401>,  <46.584709, 35.022312, 34.637955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376102, 35.089886, 34.540401>,  <46.028423, 35.202511, 34.377811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.376102, 35.089886, 34.540401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475319, 0.702323, -0.529919,
		-0.136275, 0.653809, 0.744287,
		0.869196, -0.281559, 0.406477,
		46.636860, 35.005417, 34.662346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398602, 35.707829, 34.695034>,  <46.028423, 35.202511, 34.377811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398602, 35.707829, 34.695034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683437, 35.465267, 34.553497>,  <46.854340, 35.319729, 34.468575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683437, 35.465267, 34.553497>,  <46.398602, 35.707829, 34.695034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683437, 35.465267, 34.553497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523422, 0.794419, -0.308102,
		0.467931, 0.034189, 0.883103,
		0.712088, -0.606406, -0.353839,
		46.897064, 35.283344, 34.447346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.011398, 35.996967, 34.797684>,  <46.398602, 35.707829, 34.695034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.011398, 35.996967, 34.797684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.997822, 35.762516, 34.473881>,  <46.989674, 35.621845, 34.279598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.997822, 35.762516, 34.473881>,  <47.011398, 35.996967, 34.797684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.997822, 35.762516, 34.473881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580643, 0.647685, -0.493314,
		0.813450, -0.486778, 0.318348,
		-0.033945, -0.586133, -0.809504,
		46.987637, 35.586678, 34.231030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.729031, 35.783096, 34.640343>,  <47.011398, 35.996967, 34.797684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.729031, 35.783096, 34.640343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479866, 35.818180, 34.329399>,  <47.330368, 35.839230, 34.142834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479866, 35.818180, 34.329399>,  <47.729031, 35.783096, 34.640343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479866, 35.818180, 34.329399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662964, 0.586694, -0.465048,
		0.415283, -0.805045, -0.423607,
		-0.622912, 0.087710, -0.777359,
		47.292992, 35.844494, 34.096191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.084641, 35.156136, 34.632236>,  <47.729031, 35.783096, 34.640343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.084641, 35.156136, 34.632236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.938602, 35.097401, 34.999962>,  <47.850979, 35.062160, 35.220596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.938602, 35.097401, 34.999962>,  <48.084641, 35.156136, 34.632236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.938602, 35.097401, 34.999962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906591, 0.168421, 0.386946,
		-0.211649, 0.974717, 0.071629,
		-0.365099, -0.146835, 0.919316,
		47.829071, 35.053349, 35.275757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.888691, 29.173845, 25.755713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.859982, 29.566559, 25.685347>,  <37.842754, 29.802187, 25.643127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.859982, 29.566559, 25.685347>,  <37.888691, 29.173845, 25.755713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859982, 29.566559, 25.685347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512056, 0.115084, 0.851207,
		0.855948, 0.151172, 0.494470,
		-0.071773, 0.981785, -0.175914,
		37.838451, 29.861095, 25.632572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080082, 29.449886, 26.402269>,  <37.888691, 29.173845, 25.755713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080082, 29.449886, 26.402269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867996, 29.718985, 26.195858>,  <37.740746, 29.880444, 26.072012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867996, 29.718985, 26.195858>,  <38.080082, 29.449886, 26.402269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867996, 29.718985, 26.195858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584008, 0.151443, 0.797496,
		0.614662, 0.724208, 0.312592,
		-0.530213, 0.672747, -0.516029,
		37.708931, 29.920809, 26.041050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065880, 30.005671, 26.823795>,  <38.080082, 29.449886, 26.402269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065880, 30.005671, 26.823795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767513, 30.075920, 26.566807>,  <37.588493, 30.118071, 26.412615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767513, 30.075920, 26.566807>,  <38.065880, 30.005671, 26.823795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767513, 30.075920, 26.566807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629731, 0.128179, 0.766165,
		0.216910, 0.976076, 0.014986,
		-0.745915, 0.175626, -0.642469,
		37.543739, 30.128609, 26.374065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907597, 30.680098, 26.901442>,  <38.065880, 30.005671, 26.823795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907597, 30.680098, 26.901442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591988, 30.468960, 26.775696>,  <37.402622, 30.342278, 26.700249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591988, 30.468960, 26.775696>,  <37.907597, 30.680098, 26.901442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591988, 30.468960, 26.775696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513150, 0.284855, 0.809651,
		-0.337823, 0.800147, -0.495621,
		-0.789020, -0.527846, -0.314365,
		37.355282, 30.310606, 26.681387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412960, 31.058796, 27.144011>,  <37.907597, 30.680098, 26.901442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412960, 31.058796, 27.144011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176228, 30.747576, 27.059752>,  <37.034187, 30.560844, 27.009197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176228, 30.747576, 27.059752>,  <37.412960, 31.058796, 27.144011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176228, 30.747576, 27.059752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524426, 0.173212, 0.833652,
		-0.612136, 0.603852, -0.510542,
		-0.591834, -0.778049, -0.210646,
		36.998676, 30.514160, 26.996557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682636, 31.292706, 27.324421>,  <37.412960, 31.058796, 27.144011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682636, 31.292706, 27.324421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667423, 30.894516, 27.289579>,  <36.658295, 30.655603, 27.268675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667423, 30.894516, 27.289579>,  <36.682636, 31.292706, 27.324421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667423, 30.894516, 27.289579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516066, -0.055078, 0.854776,
		-0.855704, 0.077462, -0.511635,
		-0.038033, -0.995473, -0.087106,
		36.656013, 30.595875, 27.263447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981842, 31.107086, 27.432430>,  <36.682636, 31.292706, 27.324421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981842, 31.107086, 27.432430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207577, 30.791063, 27.528210>,  <36.343018, 30.601450, 27.585678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207577, 30.791063, 27.528210>,  <35.981842, 31.107086, 27.432430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207577, 30.791063, 27.528210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420289, -0.025306, 0.907037,
		-0.710552, -0.612511, -0.346333,
		0.564334, -0.790057, 0.239451,
		36.376877, 30.554047, 27.600044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517460, 30.529406, 27.755093>,  <35.981842, 31.107086, 27.432430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517460, 30.529406, 27.755093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896748, 30.472805, 27.868835>,  <36.124321, 30.438845, 27.937080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896748, 30.472805, 27.868835>,  <35.517460, 30.529406, 27.755093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896748, 30.472805, 27.868835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284632, 0.018730, 0.958454,
		-0.140953, -0.989760, -0.022517,
		0.948218, -0.141506, 0.284358,
		36.181213, 30.430353, 27.954144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433384, 30.281012, 28.373728>,  <35.517460, 30.529406, 27.755093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433384, 30.281012, 28.373728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828041, 30.331984, 28.414337>,  <36.064835, 30.362568, 28.438702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828041, 30.331984, 28.414337>,  <35.433384, 30.281012, 28.373728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828041, 30.331984, 28.414337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107656, 0.042197, 0.993292,
		0.122296, -0.990949, 0.055352,
		0.986638, 0.127435, 0.101521,
		36.124031, 30.370213, 28.444794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598896, 29.793945, 28.925344>,  <35.433384, 30.281012, 28.373728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598896, 29.793945, 28.925344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881630, 30.076775, 28.917082>,  <36.051270, 30.246471, 28.912125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881630, 30.076775, 28.917082>,  <35.598896, 29.793945, 28.925344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881630, 30.076775, 28.917082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015872, 0.013338, 0.999785,
		0.707198, -0.707014, -0.001795,
		0.706838, 0.707074, -0.020655,
		36.093681, 30.288897, 28.910885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074993, 29.658243, 29.414019>,  <35.598896, 29.793945, 28.925344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074993, 29.658243, 29.414019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171589, 30.043148, 29.363842>,  <36.229546, 30.274092, 29.333736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171589, 30.043148, 29.363842>,  <36.074993, 29.658243, 29.414019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171589, 30.043148, 29.363842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234307, 0.067624, 0.969808,
		0.941692, -0.263590, -0.209134,
		0.241489, 0.962262, -0.125442,
		36.244034, 30.331827, 29.326210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754734, 29.768759, 29.763594>,  <36.074993, 29.658243, 29.414019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754734, 29.768759, 29.763594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591129, 30.131926, 29.726942>,  <36.492966, 30.349825, 29.704950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591129, 30.131926, 29.726942>,  <36.754734, 29.768759, 29.763594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591129, 30.131926, 29.726942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185548, 0.181061, 0.965810,
		0.893464, 0.378030, -0.242519,
		-0.409016, 0.907915, -0.091629,
		36.468426, 30.404301, 29.699453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219788, 30.235146, 30.079048>,  <36.754734, 29.768759, 29.763594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219788, 30.235146, 30.079048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865578, 30.420938, 30.075052>,  <36.653053, 30.532413, 30.072655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865578, 30.420938, 30.075052>,  <37.219788, 30.235146, 30.079048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865578, 30.420938, 30.075052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140671, 0.288558, 0.947072,
		0.442781, 0.837252, -0.320864,
		-0.885526, 0.464482, -0.009991,
		36.599918, 30.560284, 30.072056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355370, 30.863811, 30.496239>,  <37.219788, 30.235146, 30.079048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355370, 30.863811, 30.496239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960567, 30.799570, 30.498322>,  <36.723686, 30.761026, 30.499571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960567, 30.799570, 30.498322>,  <37.355370, 30.863811, 30.496239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960567, 30.799570, 30.498322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038553, 0.268142, 0.962608,
		-0.155993, 0.949898, -0.270849,
		-0.987006, -0.160602, 0.005207,
		36.664467, 30.751389, 30.499884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045250, 31.441692, 30.790951>,  <37.355370, 30.863811, 30.496239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045250, 31.441692, 30.790951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778118, 31.144800, 30.813202>,  <36.617840, 30.966665, 30.826551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778118, 31.144800, 30.813202>,  <37.045250, 31.441692, 30.790951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778118, 31.144800, 30.813202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023981, 0.053241, 0.998294,
		-0.743924, 0.668029, -0.017757,
		-0.667834, -0.742229, 0.055627,
		36.577766, 30.922132, 30.829889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602161, 31.628489, 31.323521>,  <37.045250, 31.441692, 30.790951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602161, 31.628489, 31.323521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530907, 31.235357, 31.304281>,  <36.488155, 30.999477, 31.292738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530907, 31.235357, 31.304281>,  <36.602161, 31.628489, 31.323521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530907, 31.235357, 31.304281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028022, -0.053926, 0.998152,
		-0.983606, 0.176460, 0.037147,
		-0.178137, -0.982829, -0.048098,
		36.477467, 30.940508, 31.289852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151691, 31.526129, 31.842411>,  <36.602161, 31.628489, 31.323521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151691, 31.526129, 31.842411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286034, 31.161165, 31.748848>,  <36.366638, 30.942188, 31.692711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286034, 31.161165, 31.748848>,  <36.151691, 31.526129, 31.842411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286034, 31.161165, 31.748848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147650, -0.194265, 0.969773,
		-0.930268, -0.360242, 0.069472,
		0.335857, -0.912407, -0.233908,
		36.386791, 30.887444, 31.678675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800610, 31.095963, 32.289497>,  <36.151691, 31.526129, 31.842411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800610, 31.095963, 32.289497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131748, 30.899052, 32.181915>,  <36.330429, 30.780905, 32.117367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131748, 30.899052, 32.181915>,  <35.800610, 31.095963, 32.289497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131748, 30.899052, 32.181915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174250, -0.230064, 0.957449,
		-0.533208, -0.839483, -0.104678,
		0.827845, -0.492279, -0.268952,
		36.380100, 30.751368, 32.101231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872391, 30.479530, 32.695274>,  <35.800610, 31.095963, 32.289497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872391, 30.479530, 32.695274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.248932, 30.499458, 32.561783>,  <36.474857, 30.511415, 32.481689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.248932, 30.499458, 32.561783>,  <35.872391, 30.479530, 32.695274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248932, 30.499458, 32.561783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337118, -0.180810, 0.923937,
		-0.014310, -0.982256, -0.187001,
		0.941354, 0.049820, -0.333724,
		36.531338, 30.514404, 32.461666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266693, 29.817759, 32.778366>,  <35.872391, 30.479530, 32.695274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266693, 29.817759, 32.778366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.544773, 30.104424, 32.756115>,  <36.711620, 30.276423, 32.742764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.544773, 30.104424, 32.756115>,  <36.266693, 29.817759, 32.778366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544773, 30.104424, 32.756115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310654, -0.229756, 0.922337,
		0.648223, -0.658489, -0.382360,
		0.695199, 0.716662, -0.055629,
		36.753334, 30.319422, 32.739426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945427, 29.488636, 32.834980>,  <36.266693, 29.817759, 32.778366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945427, 29.488636, 32.834980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980747, 29.867386, 32.958679>,  <37.001942, 30.094635, 33.032898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980747, 29.867386, 32.958679>,  <36.945427, 29.488636, 32.834980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980747, 29.867386, 32.958679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258192, -0.321607, 0.910992,
		0.962050, -0.000599, -0.272874,
		0.088304, 0.946873, 0.309247,
		37.007236, 30.151447, 33.051453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441242, 29.583120, 33.391647>,  <36.945427, 29.488636, 32.834980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441242, 29.583120, 33.391647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684784, 29.815725, 33.607479>,  <37.830910, 29.955288, 33.736977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684784, 29.815725, 33.607479>,  <37.441242, 29.583120, 33.391647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684784, 29.815725, 33.607479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710265, -0.096674, -0.697265,
		-0.353305, 0.807773, -0.471888,
		0.608851, 0.581513, 0.539577,
		37.867439, 29.990179, 33.769352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659630, 30.110226, 32.977314>,  <37.441242, 29.583120, 33.391647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659630, 30.110226, 32.977314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.927292, 30.056259, 33.269623>,  <38.087891, 30.023880, 33.445007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.927292, 30.056259, 33.269623>,  <37.659630, 30.110226, 32.977314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927292, 30.056259, 33.269623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668351, -0.320627, -0.671197,
		0.324859, 0.937548, -0.124380,
		0.669159, -0.134915, 0.730770,
		38.128040, 30.015785, 33.488853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180454, 30.290058, 32.728851>,  <37.659630, 30.110226, 32.977314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180454, 30.290058, 32.728851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367054, 30.072588, 33.007935>,  <38.479012, 29.942106, 33.175385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367054, 30.072588, 33.007935>,  <38.180454, 30.290058, 32.728851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367054, 30.072588, 33.007935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686612, -0.274698, -0.673130,
		0.557624, 0.793069, 0.245149,
		0.466496, -0.543676, 0.697709,
		38.507004, 29.909485, 33.217247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854527, 30.557329, 32.793289>,  <38.180454, 30.290058, 32.728851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854527, 30.557329, 32.793289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854820, 30.181559, 32.930389>,  <38.854996, 29.956097, 33.012650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854820, 30.181559, 32.930389>,  <38.854527, 30.557329, 32.793289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854820, 30.181559, 32.930389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596028, -0.274804, -0.754476,
		0.802963, 0.204846, 0.559721,
		0.000738, -0.939426, 0.342752,
		38.855042, 29.899731, 33.033215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479786, 30.311491, 32.589554>,  <38.854527, 30.557329, 32.793289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479786, 30.311491, 32.589554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264931, 29.983042, 32.666748>,  <39.136017, 29.785973, 32.713066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264931, 29.983042, 32.666748>,  <39.479786, 30.311491, 32.589554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264931, 29.983042, 32.666748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263319, -0.380591, -0.886461,
		0.801342, -0.425332, 0.420646,
		-0.537134, -0.821123, 0.192985,
		39.103790, 29.736706, 32.724644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872646, 29.746370, 32.445332>,  <39.479786, 30.311491, 32.589554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872646, 29.746370, 32.445332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494846, 29.616869, 32.423027>,  <39.268166, 29.539167, 32.409645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.494846, 29.616869, 32.423027>,  <39.872646, 29.746370, 32.445332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494846, 29.616869, 32.423027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201265, -0.436100, -0.877102,
		0.259650, -0.839643, 0.477056,
		-0.944497, -0.323755, -0.055757,
		39.211498, 29.519743, 32.406300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014851, 29.064070, 32.260109>,  <39.872646, 29.746370, 32.445332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014851, 29.064070, 32.260109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.629410, 29.133726, 32.178978>,  <39.398144, 29.175520, 32.130299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.629410, 29.133726, 32.178978>,  <40.014851, 29.064070, 32.260109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629410, 29.133726, 32.178978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058285, -0.603609, -0.795147,
		-0.260897, -0.778030, 0.571491,
		-0.963606, 0.174142, -0.202827,
		39.340328, 29.185968, 32.118130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642986, 28.334187, 32.173035>,  <40.014851, 29.064070, 32.260109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642986, 28.334187, 32.173035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.446636, 28.623154, 31.978241>,  <39.328827, 28.796534, 31.861364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.446636, 28.623154, 31.978241>,  <39.642986, 28.334187, 32.173035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446636, 28.623154, 31.978241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228789, -0.432456, -0.872145,
		-0.840653, -0.539531, 0.047000,
		-0.490875, 0.722418, -0.486984,
		39.299374, 28.839880, 31.832146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497292, 27.991472, 31.557880>,  <39.642986, 28.334187, 32.173035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497292, 27.991472, 31.557880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378315, 28.362656, 31.468060>,  <39.306931, 28.585365, 31.414167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378315, 28.362656, 31.468060>,  <39.497292, 27.991472, 31.557880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378315, 28.362656, 31.468060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196124, -0.170795, -0.965590,
		-0.934380, -0.331243, -0.131195,
		-0.297438, 0.927959, -0.224552,
		39.289085, 28.641043, 31.400694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024593, 27.973106, 31.025314>,  <39.497292, 27.991472, 31.557880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024593, 27.973106, 31.025314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.219379, 28.322100, 31.009134>,  <39.336250, 28.531496, 30.999426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.219379, 28.322100, 31.009134>,  <39.024593, 27.973106, 31.025314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219379, 28.322100, 31.009134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212351, -0.163191, -0.963471,
		-0.847214, 0.460587, -0.264741,
		0.486965, 0.872484, -0.040451,
		39.365467, 28.583845, 30.997000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734528, 28.348915, 30.438251>,  <39.024593, 27.973106, 31.025314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734528, 28.348915, 30.438251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.088482, 28.515835, 30.521048>,  <39.300854, 28.615986, 30.570726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.088482, 28.515835, 30.521048>,  <38.734528, 28.348915, 30.438251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088482, 28.515835, 30.521048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284158, -0.131469, -0.949721,
		-0.369106, 0.899209, -0.234914,
		0.884881, 0.417300, 0.206992,
		39.353947, 28.641026, 30.583145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870468, 28.801355, 29.930166>,  <38.734528, 28.348915, 30.438251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870468, 28.801355, 29.930166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240433, 28.816717, 30.081467>,  <39.462410, 28.825933, 30.172247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240433, 28.816717, 30.081467>,  <38.870468, 28.801355, 29.930166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240433, 28.816717, 30.081467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334177, 0.392326, -0.856975,
		-0.181309, 0.919024, 0.350031,
		0.924907, 0.038405, 0.378249,
		39.517906, 28.828239, 30.194941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059696, 29.454636, 29.720726>,  <38.870468, 28.801355, 29.930166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059696, 29.454636, 29.720726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402702, 29.263092, 29.795940>,  <39.608505, 29.148165, 29.841070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402702, 29.263092, 29.795940>,  <39.059696, 29.454636, 29.720726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402702, 29.263092, 29.795940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371963, 0.324602, -0.869642,
		0.355399, 0.815675, 0.456470,
		0.857517, -0.478860, 0.188038,
		39.659958, 29.119434, 29.852352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659462, 29.939432, 29.790249>,  <39.059696, 29.454636, 29.720726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659462, 29.939432, 29.790249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777176, 29.574253, 29.677172>,  <39.847805, 29.355145, 29.609325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777176, 29.574253, 29.677172>,  <39.659462, 29.939432, 29.790249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777176, 29.574253, 29.677172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328002, 0.374308, -0.867357,
		0.897668, 0.162530, 0.409604,
		0.294290, -0.912950, -0.282695,
		39.865463, 29.300367, 29.592363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354431, 29.935028, 29.529884>,  <39.659462, 29.939432, 29.790249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354431, 29.935028, 29.529884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.226128, 29.590855, 29.371508>,  <40.149147, 29.384350, 29.276482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.226128, 29.590855, 29.371508>,  <40.354431, 29.935028, 29.529884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226128, 29.590855, 29.371508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355537, 0.278081, -0.892337,
		0.877899, -0.426996, 0.216719,
		-0.320759, -0.860433, -0.395940,
		40.129898, 29.332726, 29.252726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867664, 29.557932, 29.174601>,  <40.354431, 29.935028, 29.529884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867664, 29.557932, 29.174601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.537880, 29.395044, 29.017403>,  <40.340012, 29.297312, 28.923084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.537880, 29.395044, 29.017403>,  <40.867664, 29.557932, 29.174601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537880, 29.395044, 29.017403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419591, 0.026137, -0.907337,
		0.379757, -0.912956, 0.149317,
		-0.824456, -0.407220, -0.392993,
		40.290543, 29.272879, 28.899506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097004, 29.372419, 28.592537>,  <40.867664, 29.557932, 29.174601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097004, 29.372419, 28.592537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706085, 29.313389, 28.531729>,  <40.471535, 29.277971, 28.495245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706085, 29.313389, 28.531729>,  <41.097004, 29.372419, 28.592537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706085, 29.313389, 28.531729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159868, -0.042799, -0.986210,
		0.139034, -0.988124, 0.065420,
		-0.977298, -0.147576, -0.152019,
		40.412895, 29.269117, 28.486122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987175, 28.739622, 28.178303>,  <41.097004, 29.372419, 28.592537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987175, 28.739622, 28.178303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669537, 28.975626, 28.119923>,  <40.478954, 29.117228, 28.084894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669537, 28.975626, 28.119923>,  <40.987175, 28.739622, 28.178303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669537, 28.975626, 28.119923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161995, -0.025987, -0.986449,
		-0.585806, -0.806979, -0.074942,
		-0.794096, 0.590009, -0.145950,
		40.431309, 29.152628, 28.076138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564171, 28.482655, 27.657656>,  <40.987175, 28.739622, 28.178303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564171, 28.482655, 27.657656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.468494, 28.870758, 27.672527>,  <40.411087, 29.103621, 27.681450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.468494, 28.870758, 27.672527>,  <40.564171, 28.482655, 27.657656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468494, 28.870758, 27.672527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149745, 0.000969, -0.988724,
		-0.959356, -0.242062, 0.145060,
		-0.239192, 0.970260, 0.037177,
		40.396736, 29.161837, 27.683681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.909386, 28.510784, 27.251427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.033283, 28.889870, 27.282156>,  <40.107620, 29.117321, 27.300594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.033283, 28.889870, 27.282156>,  <39.909386, 28.510784, 27.251427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033283, 28.889870, 27.282156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187026, 0.139946, -0.972335,
		-0.932246, 0.286803, 0.220594,
		0.309740, 0.947712, 0.076824,
		40.126205, 29.174183, 27.305202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377853, 28.906401, 26.946577>,  <39.909386, 28.510784, 27.251427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377853, 28.906401, 26.946577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709728, 29.129030, 26.929411>,  <39.908855, 29.262608, 26.919111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709728, 29.129030, 26.929411>,  <39.377853, 28.906401, 26.946577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709728, 29.129030, 26.929411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102273, 0.075978, -0.991851,
		-0.548776, 0.827318, 0.119960,
		0.829690, 0.556572, -0.042917,
		39.958633, 29.296001, 26.916536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262260, 29.504908, 26.503469>,  <39.377853, 28.906401, 26.946577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262260, 29.504908, 26.503469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.650215, 29.408899, 26.520010>,  <39.882988, 29.351294, 26.529934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.650215, 29.408899, 26.520010>,  <39.262260, 29.504908, 26.503469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650215, 29.408899, 26.520010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048268, 0.023004, -0.998569,
		0.238727, 0.970495, 0.033897,
		0.969886, -0.240021, 0.041352,
		39.941181, 29.336893, 26.532415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458488, 29.784824, 25.934608>,  <39.262260, 29.504908, 26.503469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458488, 29.784824, 25.934608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.801380, 29.598131, 26.021616>,  <40.007114, 29.486115, 26.073820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.801380, 29.598131, 26.021616>,  <39.458488, 29.784824, 25.934608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801380, 29.598131, 26.021616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135265, -0.203487, -0.969689,
		0.496848, 0.860670, -0.111303,
		0.857231, -0.466733, 0.217521,
		40.058548, 29.458111, 26.086872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046101, 30.054955, 25.415562>,  <39.458488, 29.784824, 25.934608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046101, 30.054955, 25.415562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.157776, 29.690458, 25.536686>,  <40.224781, 29.471760, 25.609360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.157776, 29.690458, 25.536686>,  <40.046101, 30.054955, 25.415562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157776, 29.690458, 25.536686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318381, -0.209666, -0.924486,
		0.905918, 0.354514, 0.231586,
		0.279188, -0.911241, 0.302811,
		40.241531, 29.417086, 25.627529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819107, 30.058813, 25.262823>,  <40.046101, 30.054955, 25.415562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819107, 30.058813, 25.262823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688461, 29.682911, 25.303190>,  <40.610073, 29.457369, 25.327410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688461, 29.682911, 25.303190>,  <40.819107, 30.058813, 25.262823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688461, 29.682911, 25.303190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303352, -0.205351, -0.930488,
		0.895154, -0.273297, 0.352147,
		-0.326613, -0.939755, 0.100916,
		40.590477, 29.400984, 25.333466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359871, 29.672598, 24.942240>,  <40.819107, 30.058813, 25.262823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359871, 29.672598, 24.942240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.037395, 29.437841, 24.912235>,  <40.843910, 29.296988, 24.894232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.037395, 29.437841, 24.912235>,  <41.359871, 29.672598, 24.942240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037395, 29.437841, 24.912235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367289, -0.397022, -0.841114,
		0.463860, -0.705644, 0.535632,
		-0.806184, -0.586890, -0.075012,
		40.795540, 29.261774, 24.889732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622997, 28.984074, 24.717278>,  <41.359871, 29.672598, 24.942240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622997, 28.984074, 24.717278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.235683, 28.980501, 24.617405>,  <41.003296, 28.978357, 24.557482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.235683, 28.980501, 24.617405>,  <41.622997, 28.984074, 24.717278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235683, 28.980501, 24.617405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231948, -0.403509, -0.885088,
		-0.092845, -0.914932, 0.392784,
		-0.968287, -0.008930, -0.249681,
		40.945198, 28.977823, 24.542501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642448, 28.371893, 24.212864>,  <41.622997, 28.984074, 24.717278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642448, 28.371893, 24.212864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.274376, 28.528240, 24.204092>,  <41.053532, 28.622049, 24.198830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.274376, 28.528240, 24.204092>,  <41.642448, 28.371893, 24.212864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274376, 28.528240, 24.204092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018413, -0.099164, -0.994901,
		-0.391052, -0.915089, 0.098446,
		-0.920185, 0.390870, -0.021929,
		40.998322, 28.645500, 24.197514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171642, 27.965748, 23.901442>,  <41.642448, 28.371893, 24.212864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171642, 27.965748, 23.901442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.033375, 28.336071, 23.840260>,  <40.950413, 28.558264, 23.803551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.033375, 28.336071, 23.840260>,  <41.171642, 27.965748, 23.901442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033375, 28.336071, 23.840260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039034, -0.177051, -0.983427,
		-0.937544, -0.333972, 0.097339,
		-0.345671, 0.925806, -0.152957,
		40.929672, 28.613813, 23.794373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672680, 27.856579, 23.385706>,  <41.171642, 27.965748, 23.901442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672680, 27.856579, 23.385706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.767147, 28.244698, 23.364731>,  <40.823826, 28.477570, 23.352146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.767147, 28.244698, 23.364731>,  <40.672680, 27.856579, 23.385706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767147, 28.244698, 23.364731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035080, -0.045418, -0.998352,
		-0.971080, 0.237614, 0.023312,
		0.236164, 0.970297, -0.052440,
		40.837997, 28.535788, 23.348999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219341, 28.102375, 22.884495>,  <40.672680, 27.856579, 23.385706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219341, 28.102375, 22.884495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521240, 28.363230, 22.912981>,  <40.702381, 28.519743, 22.930073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521240, 28.363230, 22.912981>,  <40.219341, 28.102375, 22.884495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521240, 28.363230, 22.912981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064795, 0.033923, -0.997322,
		-0.652806, 0.757342, -0.016652,
		0.754749, 0.652137, 0.071217,
		40.747665, 28.558870, 22.934345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141113, 28.483126, 22.353155>,  <40.219341, 28.102375, 22.884495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141113, 28.483126, 22.353155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.523407, 28.545799, 22.452778>,  <40.752781, 28.583405, 22.512550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.523407, 28.545799, 22.452778>,  <40.141113, 28.483126, 22.353155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523407, 28.545799, 22.452778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224938, 0.156607, -0.961705,
		-0.189690, 0.975153, 0.114429,
		0.955731, 0.156686, 0.249055,
		40.810127, 28.592806, 22.527494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264072, 28.976923, 21.893057>,  <40.141113, 28.483126, 22.353155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264072, 28.976923, 21.893057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.618080, 28.829714, 22.007105>,  <40.830486, 28.741388, 22.075533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.618080, 28.829714, 22.007105>,  <40.264072, 28.976923, 21.893057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618080, 28.829714, 22.007105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358802, 0.148968, -0.921450,
		0.296643, 0.917805, 0.263888,
		0.885022, -0.368025, 0.285120,
		40.883587, 28.719307, 22.092642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784897, 29.397528, 21.623293>,  <40.264072, 28.976923, 21.893057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784897, 29.397528, 21.623293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.020569, 29.086288, 21.710403>,  <41.161972, 28.899544, 21.762671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.020569, 29.086288, 21.710403>,  <40.784897, 29.397528, 21.623293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020569, 29.086288, 21.710403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501015, 0.140358, -0.853981,
		0.633916, 0.612259, 0.472536,
		0.589182, -0.778099, 0.217775,
		41.197323, 28.852859, 21.775736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423592, 29.673403, 21.543755>,  <40.784897, 29.397528, 21.623293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423592, 29.673403, 21.543755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.446865, 29.275820, 21.506523>,  <41.460827, 29.037270, 21.484184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.446865, 29.275820, 21.506523>,  <41.423592, 29.673403, 21.543755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446865, 29.275820, 21.506523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427919, 0.109066, -0.897212,
		0.901942, 0.012372, 0.431679,
		0.058182, -0.993958, -0.093077,
		41.464321, 28.977633, 21.478600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139828, 29.505144, 21.491034>,  <41.423592, 29.673403, 21.543755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139828, 29.505144, 21.491034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.988892, 29.172625, 21.327789>,  <41.898331, 28.973112, 21.229843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.988892, 29.172625, 21.327789>,  <42.139828, 29.505144, 21.491034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988892, 29.172625, 21.327789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413979, 0.242785, -0.877312,
		0.828393, -0.499994, 0.252528,
		-0.377341, -0.831301, -0.408109,
		41.875690, 28.923235, 21.205357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694530, 29.148256, 21.118776>,  <42.139828, 29.505144, 21.491034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694530, 29.148256, 21.118776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.366196, 28.989370, 20.954609>,  <42.169193, 28.894039, 20.856110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.366196, 28.989370, 20.954609>,  <42.694530, 29.148256, 21.118776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366196, 28.989370, 20.954609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483368, -0.100317, -0.869651,
		0.304267, -0.912226, 0.274346,
		-0.820840, -0.397215, -0.410417,
		42.119946, 28.870205, 20.831484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868996, 28.598747, 20.711077>,  <42.694530, 29.148256, 21.118776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868996, 28.598747, 20.711077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.509560, 28.717335, 20.581682>,  <42.293900, 28.788486, 20.504045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.509560, 28.717335, 20.581682>,  <42.868996, 28.598747, 20.711077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509560, 28.717335, 20.581682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352715, 0.049493, -0.934421,
		-0.261016, -0.953759, -0.149043,
		-0.898590, 0.296468, -0.323487,
		42.239983, 28.806274, 20.484636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858349, 28.292690, 20.146791>,  <42.868996, 28.598747, 20.711077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858349, 28.292690, 20.146791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.586685, 28.578838, 20.081085>,  <42.423687, 28.750526, 20.041662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.586685, 28.578838, 20.081085>,  <42.858349, 28.292690, 20.146791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586685, 28.578838, 20.081085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306978, 0.073561, -0.948869,
		-0.666710, -0.694863, -0.269563,
		-0.679163, 0.715370, -0.164264,
		42.382935, 28.793449, 20.031805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471218, 28.088177, 19.470947>,  <42.858349, 28.292690, 20.146791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471218, 28.088177, 19.470947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.455410, 28.479685, 19.551395>,  <42.445927, 28.714590, 19.599665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.455410, 28.479685, 19.551395>,  <42.471218, 28.088177, 19.470947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455410, 28.479685, 19.551395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292026, 0.203803, -0.934444,
		-0.955593, 0.021802, -0.293881,
		-0.039521, 0.978769, 0.201119,
		42.443554, 28.773315, 19.611731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372253, 28.360655, 18.816769>,  <42.471218, 28.088177, 19.470947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372253, 28.360655, 18.816769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.471943, 28.678436, 19.038301>,  <42.531757, 28.869104, 19.171221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.471943, 28.678436, 19.038301>,  <42.372253, 28.360655, 18.816769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471943, 28.678436, 19.038301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257410, 0.496967, -0.828712,
		-0.933611, 0.349093, -0.080647,
		0.249219, 0.794454, 0.553834,
		42.546707, 28.916773, 19.204453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914528, 28.950716, 18.749813>,  <42.372253, 28.360655, 18.816769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914528, 28.950716, 18.749813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.302402, 29.019417, 18.819347>,  <42.535126, 29.060637, 18.861067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.302402, 29.019417, 18.819347>,  <41.914528, 28.950716, 18.749813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302402, 29.019417, 18.819347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106606, 0.342781, -0.933347,
		-0.219891, 0.923581, 0.314079,
		0.969682, 0.171752, 0.173834,
		42.593307, 29.070942, 18.871498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770172, 29.613148, 18.387148>,  <41.914528, 28.950716, 18.749813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770172, 29.613148, 18.387148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104729, 29.580639, 18.603979>,  <42.305462, 29.561134, 18.734077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104729, 29.580639, 18.603979>,  <41.770172, 29.613148, 18.387148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104729, 29.580639, 18.603979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546471, 0.200716, -0.813070,
		-0.042725, 0.976273, 0.212288,
		0.836388, -0.081271, 0.542080,
		42.355644, 29.556257, 18.766603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075848, 29.857536, 18.068243>,  <41.770172, 29.613148, 18.387148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075848, 29.857536, 18.068243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.859524, 30.191866, 18.030443>,  <40.729729, 30.392464, 18.007763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.859524, 30.191866, 18.030443>,  <41.075848, 29.857536, 18.068243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859524, 30.191866, 18.030443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050995, 0.079560, 0.995525,
		0.839600, 0.543205, -0.000404,
		-0.540807, 0.835822, -0.094500,
		40.697281, 30.442612, 18.002092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298145, 30.230312, 18.574787>,  <41.075848, 29.857536, 18.068243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298145, 30.230312, 18.574787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.947037, 30.406582, 18.499609>,  <40.736370, 30.512342, 18.454502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.947037, 30.406582, 18.499609>,  <41.298145, 30.230312, 18.574787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947037, 30.406582, 18.499609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163476, 0.093245, 0.982131,
		0.450322, 0.892812, -0.009809,
		-0.877773, 0.440672, -0.187944,
		40.683704, 30.538784, 18.443226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248482, 30.901672, 18.904028>,  <41.298145, 30.230312, 18.574787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248482, 30.901672, 18.904028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881672, 30.750700, 18.852467>,  <40.661587, 30.660116, 18.821529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881672, 30.750700, 18.852467>,  <41.248482, 30.901672, 18.904028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881672, 30.750700, 18.852467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200566, 0.157044, 0.967011,
		-0.344736, 0.912625, -0.219713,
		-0.917023, -0.377430, -0.128903,
		40.606564, 30.637470, 18.813795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823517, 31.319218, 19.274986>,  <41.248482, 30.901672, 18.904028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823517, 31.319218, 19.274986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.565956, 31.021151, 19.205570>,  <40.411419, 30.842310, 19.163921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.565956, 31.021151, 19.205570>,  <40.823517, 31.319218, 19.274986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565956, 31.021151, 19.205570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401839, 0.136350, 0.905502,
		-0.651087, 0.652791, -0.387233,
		-0.643903, -0.745166, -0.173541,
		40.372784, 30.797602, 19.153507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246246, 31.532238, 19.547396>,  <40.823517, 31.319218, 19.274986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246246, 31.532238, 19.547396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.196369, 31.135445, 19.539173>,  <40.166443, 30.897369, 19.534239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.196369, 31.135445, 19.539173>,  <40.246246, 31.532238, 19.547396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196369, 31.135445, 19.539173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499992, 0.044926, 0.864864,
		-0.857006, 0.118122, -0.501585,
		-0.124694, -0.991982, -0.020558,
		40.158962, 30.837851, 19.533005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539864, 31.368847, 19.724819>,  <40.246246, 31.532238, 19.547396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539864, 31.368847, 19.724819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.732975, 31.028011, 19.805681>,  <39.848843, 30.823509, 19.854198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.732975, 31.028011, 19.805681>,  <39.539864, 31.368847, 19.724819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732975, 31.028011, 19.805681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328102, 0.038035, 0.943876,
		-0.811956, -0.522012, -0.261210,
		0.482780, -0.852089, 0.202156,
		39.877808, 30.772385, 19.866327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154842, 31.121115, 20.107830>,  <39.539864, 31.368847, 19.724819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154842, 31.121115, 20.107830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452187, 30.861710, 20.173376>,  <39.630592, 30.706066, 20.212704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452187, 30.861710, 20.173376>,  <39.154842, 31.121115, 20.107830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452187, 30.861710, 20.173376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344159, -0.160749, 0.925048,
		-0.573565, -0.744036, -0.342686,
		0.743355, -0.648514, 0.163867,
		39.675194, 30.667156, 20.222536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846741, 30.497995, 20.338480>,  <39.154842, 31.121115, 20.107830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846741, 30.497995, 20.338480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226685, 30.506952, 20.463226>,  <39.454651, 30.512327, 20.538074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226685, 30.506952, 20.463226>,  <38.846741, 30.497995, 20.338480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226685, 30.506952, 20.463226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303969, -0.167492, 0.937843,
		0.073236, -0.985619, -0.152287,
		0.949863, 0.022394, 0.311864,
		39.511642, 30.513670, 20.556786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832401, 29.977400, 20.852217>,  <38.846741, 30.497995, 20.338480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832401, 29.977400, 20.852217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.159096, 30.197096, 20.922962>,  <39.355110, 30.328915, 20.965408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.159096, 30.197096, 20.922962>,  <38.832401, 29.977400, 20.852217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159096, 30.197096, 20.922962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124095, -0.132145, 0.983432,
		0.563513, -0.825149, -0.039769,
		0.816733, 0.549241, 0.176863,
		39.404118, 30.361868, 20.976021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267128, 29.567583, 21.257315>,  <38.832401, 29.977400, 20.852217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267128, 29.567583, 21.257315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353111, 29.953197, 21.319834>,  <39.404701, 30.184566, 21.357346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353111, 29.953197, 21.319834>,  <39.267128, 29.567583, 21.257315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353111, 29.953197, 21.319834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056134, -0.147580, 0.987456,
		0.975008, -0.221038, 0.022391,
		0.214960, 0.964035, 0.156299,
		39.417599, 30.242409, 21.366724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710590, 29.591421, 21.853601>,  <39.267128, 29.567583, 21.257315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710590, 29.591421, 21.853601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.572113, 29.965542, 21.824305>,  <39.489025, 30.190014, 21.806726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.572113, 29.965542, 21.824305>,  <39.710590, 29.591421, 21.853601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572113, 29.965542, 21.824305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110404, 0.036913, 0.993201,
		0.931645, 0.351926, 0.090482,
		-0.346193, 0.935300, -0.073243,
		39.468254, 30.246132, 21.802332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077629, 29.918472, 22.349518>,  <39.710590, 29.591421, 21.853601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077629, 29.918472, 22.349518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743317, 30.120728, 22.263914>,  <39.542728, 30.242081, 22.212553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743317, 30.120728, 22.263914>,  <40.077629, 29.918472, 22.349518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743317, 30.120728, 22.263914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193483, 0.093540, 0.976634,
		0.513841, 0.857660, 0.019653,
		-0.835782, 0.505637, -0.214007,
		39.492580, 30.272419, 22.199713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039730, 30.517056, 22.884771>,  <40.077629, 29.918472, 22.349518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039730, 30.517056, 22.884771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.668442, 30.508999, 22.736177>,  <39.445667, 30.504166, 22.647022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.668442, 30.508999, 22.736177>,  <40.039730, 30.517056, 22.884771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668442, 30.508999, 22.736177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371823, 0.017043, 0.928147,
		-0.012361, 0.999652, -0.023308,
		-0.928221, -0.020139, -0.371483,
		39.389977, 30.502956, 22.624733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653637, 31.125620, 23.230534>,  <40.039730, 30.517056, 22.884771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653637, 31.125620, 23.230534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.396305, 30.837450, 23.126907>,  <39.241905, 30.664549, 23.064732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.396305, 30.837450, 23.126907>,  <39.653637, 31.125620, 23.230534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396305, 30.837450, 23.126907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459798, 0.093019, 0.883138,
		-0.612135, 0.687269, -0.391092,
		-0.643332, -0.720423, -0.259065,
		39.203304, 30.621323, 23.049189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071701, 31.320814, 23.528402>,  <39.653637, 31.125620, 23.230534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071701, 31.320814, 23.528402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.013824, 30.929932, 23.466261>,  <38.979099, 30.695402, 23.428976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.013824, 30.929932, 23.466261>,  <39.071701, 31.320814, 23.528402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013824, 30.929932, 23.466261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443587, -0.076286, 0.892979,
		-0.884475, 0.198119, -0.422437,
		-0.144690, -0.977205, -0.155356,
		38.970417, 30.636770, 23.419655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405674, 31.265659, 23.801861>,  <39.071701, 31.320814, 23.528402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405674, 31.265659, 23.801861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528599, 30.886347, 23.770071>,  <38.602356, 30.658758, 23.750998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528599, 30.886347, 23.770071>,  <38.405674, 31.265659, 23.801861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528599, 30.886347, 23.770071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492139, -0.229858, 0.839622,
		-0.814468, -0.218915, -0.537326,
		0.307315, -0.948284, -0.079475,
		38.620792, 30.601862, 23.746229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876122, 30.881485, 23.808941>,  <38.405674, 31.265659, 23.801861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876122, 30.881485, 23.808941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143719, 30.599144, 23.902082>,  <38.304276, 30.429739, 23.957968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143719, 30.599144, 23.902082>,  <37.876122, 30.881485, 23.808941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143719, 30.599144, 23.902082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539928, -0.246205, 0.804898,
		-0.510809, -0.664196, -0.545819,
		0.668993, -0.705852, 0.232855,
		38.344418, 30.387388, 23.971939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492607, 30.371235, 23.982201>,  <37.876122, 30.881485, 23.808941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492607, 30.371235, 23.982201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.840290, 30.294601, 24.164530>,  <38.048901, 30.248621, 24.273928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.840290, 30.294601, 24.164530>,  <37.492607, 30.371235, 23.982201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840290, 30.294601, 24.164530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492558, -0.416017, 0.764406,
		0.043181, -0.888946, -0.455972,
		0.869208, -0.191584, 0.455822,
		38.101051, 30.237125, 24.301275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437088, 29.699100, 24.258358>,  <37.492607, 30.371235, 23.982201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437088, 29.699100, 24.258358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724255, 29.882185, 24.468155>,  <37.896557, 29.992035, 24.594032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724255, 29.882185, 24.468155>,  <37.437088, 29.699100, 24.258358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724255, 29.882185, 24.468155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365648, -0.393193, 0.843623,
		0.592362, -0.797434, -0.114921,
		0.717920, 0.457709, 0.524493,
		37.939632, 30.019497, 24.625504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478886, 29.190285, 24.731543>,  <37.437088, 29.699100, 24.258358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478886, 29.190285, 24.731543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650692, 29.527283, 24.861601>,  <37.753777, 29.729483, 24.939636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650692, 29.527283, 24.861601>,  <37.478886, 29.190285, 24.731543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650692, 29.527283, 24.861601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361442, -0.169571, 0.916845,
		0.827573, -0.511318, 0.231680,
		0.429513, 0.842496, 0.325144,
		37.779545, 29.780031, 24.959145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.631908, 28.207254, 29.929621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339401, 28.479282, 29.908619>,  <40.163898, 28.642500, 29.896019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339401, 28.479282, 29.908619>,  <40.631908, 28.207254, 29.929621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339401, 28.479282, 29.908619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145171, -0.079965, 0.986170,
		0.666466, 0.728773, 0.157201,
		-0.731265, 0.680070, -0.052503,
		40.120022, 28.683304, 29.892868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710217, 28.622154, 30.590961>,  <40.631908, 28.207254, 29.929621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710217, 28.622154, 30.590961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.340733, 28.720200, 30.473198>,  <40.119041, 28.779026, 30.402540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.340733, 28.720200, 30.473198>,  <40.710217, 28.622154, 30.590961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340733, 28.720200, 30.473198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267224, 0.138404, 0.953644,
		0.274497, 0.959565, -0.062346,
		-0.923712, 0.245112, -0.294410,
		40.063618, 28.793734, 30.384874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440857, 29.239639, 30.934755>,  <40.710217, 28.622154, 30.590961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440857, 29.239639, 30.934755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.099400, 29.099930, 30.780195>,  <39.894527, 29.016104, 30.687460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.099400, 29.099930, 30.780195>,  <40.440857, 29.239639, 30.934755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099400, 29.099930, 30.780195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476886, 0.225761, 0.849478,
		-0.209466, 0.909418, -0.359282,
		-0.853642, -0.349273, -0.386399,
		39.843307, 28.995148, 30.664276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880272, 29.745108, 30.978693>,  <40.440857, 29.239639, 30.934755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880272, 29.745108, 30.978693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717789, 29.379770, 30.967381>,  <39.620300, 29.160568, 30.960592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717789, 29.379770, 30.967381>,  <39.880272, 29.745108, 30.978693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717789, 29.379770, 30.967381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436307, 0.166667, 0.884228,
		-0.802890, 0.371519, -0.466199,
		-0.406207, -0.913343, -0.028281,
		39.595928, 29.105768, 30.958897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077965, 29.887304, 31.053989>,  <39.880272, 29.745108, 30.978693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077965, 29.887304, 31.053989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.149155, 29.509859, 31.165642>,  <39.191868, 29.283392, 31.232634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.149155, 29.509859, 31.165642>,  <39.077965, 29.887304, 31.053989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149155, 29.509859, 31.165642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519357, 0.150861, 0.841136,
		-0.835818, -0.294675, -0.463222,
		0.177979, -0.943614, 0.279133,
		39.202549, 29.226774, 31.249382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437416, 29.609522, 31.261410>,  <39.077965, 29.887304, 31.053989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437416, 29.609522, 31.261410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.693726, 29.365852, 31.448307>,  <38.847511, 29.219650, 31.560446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.693726, 29.365852, 31.448307>,  <38.437416, 29.609522, 31.261410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693726, 29.365852, 31.448307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392330, 0.263309, 0.881332,
		-0.659913, -0.748048, -0.070276,
		0.640774, -0.609174, 0.467243,
		38.885960, 29.183100, 31.588480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056774, 29.437096, 31.879313>,  <38.437416, 29.609522, 31.261410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056774, 29.437096, 31.879313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.435566, 29.331285, 31.952259>,  <38.662842, 29.267799, 31.996027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.435566, 29.331285, 31.952259>,  <38.056774, 29.437096, 31.879313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435566, 29.331285, 31.952259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116057, 0.247645, 0.961875,
		-0.299601, -0.932040, 0.203815,
		0.946979, -0.264525, 0.182364,
		38.719658, 29.251928, 32.006969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040001, 28.873806, 32.465908>,  <38.056774, 29.437096, 31.879313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040001, 28.873806, 32.465908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394215, 29.058960, 32.450115>,  <38.606743, 29.170052, 32.440639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394215, 29.058960, 32.450115>,  <38.040001, 28.873806, 32.465908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394215, 29.058960, 32.450115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018938, 0.120893, 0.992485,
		0.464181, -0.878135, 0.115822,
		0.885538, 0.462886, -0.039486,
		38.659878, 29.197826, 32.438271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476292, 28.579144, 33.062336>,  <38.040001, 28.873806, 32.465908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476292, 28.579144, 33.062336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.661598, 28.920097, 32.965317>,  <38.772781, 29.124670, 32.907104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.661598, 28.920097, 32.965317>,  <38.476292, 28.579144, 33.062336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661598, 28.920097, 32.965317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118946, 0.331013, 0.936099,
		0.878200, -0.404814, 0.254735,
		0.463267, 0.852383, -0.242545,
		38.800579, 29.175812, 32.892551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858700, 28.719645, 33.684868>,  <38.476292, 28.579144, 33.062336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858700, 28.719645, 33.684868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.861927, 29.062096, 33.478188>,  <38.863861, 29.267567, 33.354179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.861927, 29.062096, 33.478188>,  <38.858700, 28.719645, 33.684868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861927, 29.062096, 33.478188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231686, 0.504254, 0.831895,
		0.972757, 0.113004, 0.202419,
		0.008064, 0.856129, -0.516698,
		38.864346, 29.318935, 33.323177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238136, 29.193369, 34.088779>,  <38.858700, 28.719645, 33.684868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238136, 29.193369, 34.088779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.016743, 29.407249, 33.833359>,  <38.883907, 29.535578, 33.680107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.016743, 29.407249, 33.833359>,  <39.238136, 29.193369, 34.088779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016743, 29.407249, 33.833359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308246, 0.580746, 0.753471,
		0.773720, 0.613865, -0.156613,
		-0.553482, 0.534699, -0.638556,
		38.850697, 29.567659, 33.641792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016930, 29.863997, 34.390789>,  <39.238136, 29.193369, 34.088779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016930, 29.863997, 34.390789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.720898, 29.869808, 34.121845>,  <38.543278, 29.873295, 33.960480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.720898, 29.869808, 34.121845>,  <39.016930, 29.863997, 34.390789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720898, 29.869808, 34.121845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584632, 0.480238, 0.653894,
		0.332393, 0.877018, -0.346922,
		-0.740082, 0.014528, -0.672360,
		38.498875, 29.874166, 33.920135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815880, 30.498695, 34.446377>,  <39.016930, 29.863997, 34.390789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815880, 30.498695, 34.446377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.505337, 30.298676, 34.292900>,  <38.319012, 30.178663, 34.200813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.505337, 30.298676, 34.292900>,  <38.815880, 30.498695, 34.446377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505337, 30.298676, 34.292900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575332, 0.313619, 0.755405,
		-0.257408, 0.807214, -0.531176,
		-0.776360, -0.500049, -0.383687,
		38.272430, 30.148661, 34.177795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535187, 31.090839, 34.964268>,  <38.815880, 30.498695, 34.446377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535187, 31.090839, 34.964268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.137066, 31.053286, 34.954838>,  <37.898193, 31.030752, 34.949181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.137066, 31.053286, 34.954838>,  <38.535187, 31.090839, 34.964268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137066, 31.053286, 34.954838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088961, -0.791176, -0.605083,
		0.038160, -0.604339, 0.795813,
		-0.995304, -0.093887, -0.023571,
		37.838474, 31.025120, 34.947765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284275, 31.114258, 35.024052>,  <38.535187, 31.090839, 34.964268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284275, 31.114258, 35.024052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677128, 31.174812, 35.068760>,  <39.912842, 31.211145, 35.095585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677128, 31.174812, 35.068760>,  <39.284275, 31.114258, 35.024052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677128, 31.174812, 35.068760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117271, -0.027886, -0.992708,
		-0.147166, 0.988081, -0.045141,
		0.982135, 0.151386, 0.111770,
		39.971767, 31.220228, 35.102291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468910, 31.720070, 34.595341>,  <39.284275, 31.114258, 35.024052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468910, 31.720070, 34.595341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.814980, 31.523037, 34.632927>,  <40.022621, 31.404816, 34.655479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.814980, 31.523037, 34.632927>,  <39.468910, 31.720070, 34.595341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814980, 31.523037, 34.632927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143246, 0.063197, -0.987667,
		0.480572, 0.867967, 0.125237,
		0.865177, -0.492585, 0.093962,
		40.074532, 31.375261, 34.661114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892181, 32.031834, 34.087021>,  <39.468910, 31.720070, 34.595341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892181, 32.031834, 34.087021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.129772, 31.725750, 34.186329>,  <40.272327, 31.542099, 34.245914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.129772, 31.725750, 34.186329>,  <39.892181, 32.031834, 34.087021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129772, 31.725750, 34.186329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412442, 0.024689, -0.910649,
		0.690711, 0.643303, 0.330271,
		0.593978, -0.765213, 0.248273,
		40.307964, 31.496185, 34.260811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543144, 32.148186, 33.781406>,  <39.892181, 32.031834, 34.087021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543144, 32.148186, 33.781406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551422, 31.758537, 33.871437>,  <40.556389, 31.524748, 33.925453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551422, 31.758537, 33.871437>,  <40.543144, 32.148186, 33.781406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551422, 31.758537, 33.871437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507321, -0.183756, -0.841938,
		0.861509, 0.131607, 0.490390,
		0.020692, -0.974122, 0.225074,
		40.557629, 31.466301, 33.938961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203079, 31.954323, 33.623627>,  <40.543144, 32.148186, 33.781406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203079, 31.954323, 33.623627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.983959, 31.619846, 33.613037>,  <40.852486, 31.419161, 33.606686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.983959, 31.619846, 33.613037>,  <41.203079, 31.954323, 33.623627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983959, 31.619846, 33.613037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411393, -0.241689, -0.878830,
		0.728470, -0.492315, 0.476400,
		-0.547802, -0.836189, -0.026472,
		40.819618, 31.368990, 33.605095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802856, 31.551741, 33.470699>,  <41.203079, 31.954323, 33.623627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802856, 31.551741, 33.470699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.447746, 31.402473, 33.362919>,  <41.234680, 31.312914, 33.298252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.447746, 31.402473, 33.362919>,  <41.802856, 31.551741, 33.470699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447746, 31.402473, 33.362919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355667, -0.184581, -0.916205,
		0.292162, -0.909218, 0.296589,
		-0.887774, -0.373167, -0.269451,
		41.181416, 31.290524, 33.282082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007790, 30.967628, 33.183453>,  <41.802856, 31.551741, 33.470699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007790, 30.967628, 33.183453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.633400, 31.009525, 33.048996>,  <41.408768, 31.034662, 32.968323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.633400, 31.009525, 33.048996>,  <42.007790, 30.967628, 33.183453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633400, 31.009525, 33.048996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288495, -0.319106, -0.902741,
		-0.201816, -0.941914, 0.268457,
		-0.935970, 0.104739, -0.336138,
		41.352608, 31.040947, 32.948154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948925, 30.400673, 32.759823>,  <42.007790, 30.967628, 33.183453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948925, 30.400673, 32.759823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.663067, 30.651365, 32.635571>,  <41.491550, 30.801781, 32.561020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.663067, 30.651365, 32.635571>,  <41.948925, 30.400673, 32.759823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663067, 30.651365, 32.635571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246366, -0.190106, -0.950349,
		-0.654664, -0.755692, -0.018546,
		-0.714646, 0.626729, -0.310632,
		41.448673, 30.839384, 32.542381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606182, 30.040812, 32.282360>,  <41.948925, 30.400673, 32.759823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606182, 30.040812, 32.282360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509590, 30.423676, 32.218441>,  <41.451633, 30.653395, 32.180092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509590, 30.423676, 32.218441>,  <41.606182, 30.040812, 32.282360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509590, 30.423676, 32.218441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153953, -0.124794, -0.980166,
		-0.958116, -0.261290, -0.117222,
		-0.241479, 0.957159, -0.159793,
		41.437145, 30.710823, 32.170502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186359, 30.070173, 31.770006>,  <41.606182, 30.040812, 32.282360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186359, 30.070173, 31.770006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.352772, 30.433231, 31.747761>,  <41.452621, 30.651066, 31.734413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.352772, 30.433231, 31.747761>,  <41.186359, 30.070173, 31.770006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352772, 30.433231, 31.747761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353896, -0.217944, -0.909537,
		-0.837659, 0.358718, -0.411885,
		0.416036, 0.907646, -0.055614,
		41.477581, 30.705524, 31.731077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895386, 30.372797, 31.124485>,  <41.186359, 30.070173, 31.770006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895386, 30.372797, 31.124485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237320, 30.552097, 31.229040>,  <41.442482, 30.659678, 31.291773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237320, 30.552097, 31.229040>,  <40.895386, 30.372797, 31.124485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237320, 30.552097, 31.229040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361946, -0.154137, -0.919367,
		-0.371817, 0.880519, -0.294005,
		0.854837, 0.448250, 0.261390,
		41.493771, 30.686573, 31.307457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125076, 30.738270, 30.535955>,  <40.895386, 30.372797, 31.124485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125076, 30.738270, 30.535955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454784, 30.707733, 30.760365>,  <41.652611, 30.689411, 30.895010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454784, 30.707733, 30.760365>,  <41.125076, 30.738270, 30.535955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454784, 30.707733, 30.760365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552316, -0.109601, -0.826399,
		0.124577, 0.991040, -0.048177,
		0.824274, -0.076341, 0.561021,
		41.702068, 30.684832, 30.928671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607342, 31.216366, 30.209057>,  <41.125076, 30.738270, 30.535955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607342, 31.216366, 30.209057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.835339, 30.964186, 30.419823>,  <41.972137, 30.812878, 30.546282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.835339, 30.964186, 30.419823>,  <41.607342, 31.216366, 30.209057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835339, 30.964186, 30.419823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668753, -0.016604, -0.743299,
		0.477363, 0.776051, 0.412152,
		0.569995, -0.630451, 0.526913,
		42.006336, 30.775051, 30.577896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307774, 31.478666, 30.236601>,  <41.607342, 31.216366, 30.209057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307774, 31.478666, 30.236601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336395, 31.089750, 30.325626>,  <42.353569, 30.856401, 30.379042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336395, 31.089750, 30.325626>,  <42.307774, 31.478666, 30.236601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336395, 31.089750, 30.325626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708142, -0.107620, -0.697820,
		0.702435, 0.207538, 0.680818,
		0.071554, -0.972289, 0.222563,
		42.357861, 30.798063, 30.392395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779659, 32.095493, 30.210812>,  <42.307774, 31.478666, 30.236601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779659, 32.095493, 30.210812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.578400, 32.368855, 29.999228>,  <42.457645, 32.532871, 29.872278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.578400, 32.368855, 29.999228>,  <42.779659, 32.095493, 30.210812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578400, 32.368855, 29.999228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234746, 0.480986, 0.844717,
		0.831708, 0.549188, -0.081580,
		-0.503147, 0.683407, -0.528959,
		42.427456, 32.573875, 29.840540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865364, 32.672901, 30.578213>,  <42.779659, 32.095493, 30.210812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865364, 32.672901, 30.578213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.565308, 32.779396, 30.336088>,  <42.385273, 32.843292, 30.190813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.565308, 32.779396, 30.336088>,  <42.865364, 32.672901, 30.578213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565308, 32.779396, 30.336088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483684, 0.403281, 0.776797,
		0.450924, 0.875489, -0.173743,
		-0.750145, 0.266240, -0.605309,
		42.340263, 32.859268, 30.154495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836315, 33.371391, 30.593321>,  <42.865364, 32.672901, 30.578213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836315, 33.371391, 30.593321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.463425, 33.269222, 30.490784>,  <42.239689, 33.207920, 30.429262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.463425, 33.269222, 30.490784>,  <42.836315, 33.371391, 30.593321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463425, 33.269222, 30.490784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358539, 0.555994, 0.749880,
		-0.049013, 0.790967, -0.609892,
		-0.932227, -0.255424, -0.256342,
		42.183758, 33.192596, 30.413881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596348, 33.985249, 30.844183>,  <42.836315, 33.371391, 30.593321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596348, 33.985249, 30.844183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.271107, 33.761215, 30.780727>,  <42.075962, 33.626797, 30.742655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.271107, 33.761215, 30.780727>,  <42.596348, 33.985249, 30.844183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271107, 33.761215, 30.780727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505643, 0.544536, 0.669183,
		-0.288413, 0.624331, -0.725967,
		-0.813107, -0.560081, -0.158637,
		42.027176, 33.593189, 30.733135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906815, 34.386822, 30.615597>,  <42.596348, 33.985249, 30.844183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906815, 34.386822, 30.615597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753822, 34.056721, 30.781813>,  <41.662029, 33.858662, 30.881542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753822, 34.056721, 30.781813>,  <41.906815, 34.386822, 30.615597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753822, 34.056721, 30.781813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667555, 0.557752, 0.493237,
		-0.638812, -0.088743, -0.764228,
		-0.382478, -0.825250, 0.415540,
		41.639080, 33.809147, 30.906475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225845, 34.596809, 30.458344>,  <41.906815, 34.386822, 30.615597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225845, 34.596809, 30.458344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.234493, 34.335052, 30.760683>,  <41.239681, 34.177998, 30.942087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.234493, 34.335052, 30.760683>,  <41.225845, 34.596809, 30.458344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234493, 34.335052, 30.760683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653980, 0.562585, 0.505775,
		-0.756202, -0.505247, -0.415793,
		0.021622, -0.654388, 0.755849,
		41.240978, 34.138737, 30.987438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576466, 34.701496, 30.726454>,  <41.225845, 34.596809, 30.458344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576466, 34.701496, 30.726454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.775146, 34.511753, 31.017183>,  <40.894356, 34.397907, 31.191620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.775146, 34.511753, 31.017183>,  <40.576466, 34.701496, 30.726454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775146, 34.511753, 31.017183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590232, 0.429358, 0.683577,
		-0.636327, -0.768529, -0.066717,
		0.496704, -0.474357, 0.726822,
		40.924156, 34.369446, 31.235229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081631, 34.424324, 31.138218>,  <40.576466, 34.701496, 30.726454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081631, 34.424324, 31.138218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393074, 34.424538, 31.389221>,  <40.579941, 34.424667, 31.539824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393074, 34.424538, 31.389221>,  <40.081631, 34.424324, 31.138218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393074, 34.424538, 31.389221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563220, 0.441511, 0.698464,
		-0.276676, -0.897256, 0.344068,
		0.778610, 0.000538, 0.627508,
		40.626656, 34.424698, 31.577473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858234, 34.116310, 31.775715>,  <40.081631, 34.424324, 31.138218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858234, 34.116310, 31.775715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.176144, 34.345947, 31.854450>,  <40.366890, 34.483730, 31.901691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.176144, 34.345947, 31.854450>,  <39.858234, 34.116310, 31.775715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176144, 34.345947, 31.854450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532612, 0.504298, 0.679712,
		0.290952, -0.645058, 0.706574,
		0.794778, 0.574093, 0.196839,
		40.414577, 34.518177, 31.913502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992455, 34.055786, 32.548740>,  <39.858234, 34.116310, 31.775715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992455, 34.055786, 32.548740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.180622, 34.394695, 32.450081>,  <40.293522, 34.598042, 32.390884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.180622, 34.394695, 32.450081>,  <39.992455, 34.055786, 32.548740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180622, 34.394695, 32.450081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519313, 0.491789, 0.698898,
		0.713456, -0.200686, 0.671346,
		0.470420, 0.847271, -0.246651,
		40.321747, 34.648876, 32.376087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005695, 34.388229, 33.163452>,  <39.992455, 34.055786, 32.548740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005695, 34.388229, 33.163452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.085922, 34.693626, 32.917900>,  <40.134060, 34.876865, 32.770569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.085922, 34.693626, 32.917900>,  <40.005695, 34.388229, 33.163452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085922, 34.693626, 32.917900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437888, 0.630400, 0.640975,
		0.876371, 0.140250, 0.460765,
		0.200570, 0.763495, -0.613878,
		40.146091, 34.922676, 32.733738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304775, 34.862659, 33.567188>,  <40.005695, 34.388229, 33.163452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304775, 34.862659, 33.567188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.160778, 35.074749, 33.260132>,  <40.074379, 35.202003, 33.075897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.160778, 35.074749, 33.260132>,  <40.304775, 34.862659, 33.567188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160778, 35.074749, 33.260132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505308, 0.580854, 0.638179,
		0.784264, 0.617632, 0.058825,
		-0.359991, 0.530226, -0.767637,
		40.052780, 35.233818, 33.029842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.575031, 32.647919, 26.649363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192120, 32.693237, 26.542944>,  <43.962372, 32.720428, 26.479094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192120, 32.693237, 26.542944>,  <44.575031, 32.647919, 26.649363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192120, 32.693237, 26.542944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282614, -0.171821, 0.943720,
		0.061208, 0.978591, 0.196500,
		-0.957279, 0.113297, -0.266046,
		43.904938, 32.727226, 26.463131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309273, 32.994591, 27.227789>,  <44.575031, 32.647919, 26.649363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309273, 32.994591, 27.227789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989418, 32.874866, 27.019558>,  <43.797504, 32.803032, 26.894619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989418, 32.874866, 27.019558>,  <44.309273, 32.994591, 27.227789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989418, 32.874866, 27.019558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445666, -0.285215, 0.848548,
		-0.402454, 0.910531, 0.094676,
		-0.799633, -0.299308, -0.520578,
		43.749527, 32.785072, 26.863384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814850, 33.466110, 27.288979>,  <44.309273, 32.994591, 27.227789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814850, 33.466110, 27.288979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649025, 33.111610, 27.206326>,  <43.549530, 32.898911, 27.156734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649025, 33.111610, 27.206326>,  <43.814850, 33.466110, 27.288979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649025, 33.111610, 27.206326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501723, 0.033157, 0.864392,
		-0.759216, 0.462019, -0.458398,
		-0.414565, -0.886250, -0.206633,
		43.524654, 32.845734, 27.144335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169350, 33.482021, 27.557699>,  <43.814850, 33.466110, 27.288979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169350, 33.482021, 27.557699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224518, 33.088661, 27.510544>,  <43.257618, 32.852646, 27.482250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224518, 33.088661, 27.510544>,  <43.169350, 33.482021, 27.557699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224518, 33.088661, 27.510544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558819, -0.175536, 0.810499,
		-0.817740, -0.045906, -0.573754,
		0.137921, -0.983402, -0.117890,
		43.265896, 32.793640, 27.475178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498795, 33.186626, 27.523960>,  <43.169350, 33.482021, 27.557699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498795, 33.186626, 27.523960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768639, 32.922852, 27.656652>,  <42.930546, 32.764587, 27.736267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768639, 32.922852, 27.656652>,  <42.498795, 33.186626, 27.523960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768639, 32.922852, 27.656652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491407, -0.065847, 0.868437,
		-0.550837, -0.748870, -0.368474,
		0.674609, -0.659438, 0.331729,
		42.971020, 32.725021, 27.756172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131439, 32.726757, 27.971930>,  <42.498795, 33.186626, 27.523960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131439, 32.726757, 27.971930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515064, 32.661045, 28.064192>,  <42.745239, 32.621616, 28.119549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515064, 32.661045, 28.064192>,  <42.131439, 32.726757, 27.971930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515064, 32.661045, 28.064192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259361, -0.182604, 0.948361,
		-0.113672, -0.969366, -0.217736,
		0.959067, -0.164275, 0.230658,
		42.802784, 32.611759, 28.133389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061859, 32.187038, 28.483492>,  <42.131439, 32.726757, 27.971930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061859, 32.187038, 28.483492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430901, 32.331661, 28.537266>,  <42.652325, 32.418434, 28.569530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430901, 32.331661, 28.537266>,  <42.061859, 32.187038, 28.483492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430901, 32.331661, 28.537266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129622, -0.037657, 0.990848,
		0.363310, -0.931589, 0.012123,
		0.922607, 0.361556, 0.134436,
		42.707684, 32.440128, 28.577597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258305, 31.723984, 29.033487>,  <42.061859, 32.187038, 28.483492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258305, 31.723984, 29.033487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480900, 32.056301, 29.029381>,  <42.614456, 32.255692, 29.026917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480900, 32.056301, 29.029381>,  <42.258305, 31.723984, 29.033487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480900, 32.056301, 29.029381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207245, 0.150765, 0.966602,
		0.804594, -0.535774, 0.256076,
		0.556488, 0.830792, -0.010268,
		42.647846, 32.305538, 29.026300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668880, 31.684454, 29.619543>,  <42.258305, 31.723984, 29.033487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668880, 31.684454, 29.619543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611263, 32.069374, 29.527258>,  <42.576691, 32.300327, 29.471886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611263, 32.069374, 29.527258>,  <42.668880, 31.684454, 29.619543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611263, 32.069374, 29.527258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296027, 0.180566, 0.937957,
		0.944256, 0.203408, 0.258857,
		-0.144047, 0.962300, -0.230715,
		42.568050, 32.358063, 29.458044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140793, 31.261715, 30.129574>,  <42.668880, 31.684454, 29.619543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140793, 31.261715, 30.129574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909477, 30.935450, 30.122944>,  <42.770687, 30.739691, 30.118967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909477, 30.935450, 30.122944>,  <43.140793, 31.261715, 30.129574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909477, 30.935450, 30.122944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499789, -0.338136, -0.797418,
		0.644823, -0.469419, 0.603200,
		-0.578286, -0.815666, -0.016573,
		42.735992, 30.690750, 30.117971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602264, 30.781929, 29.841208>,  <43.140793, 31.261715, 30.129574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602264, 30.781929, 29.841208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240795, 30.617336, 29.793793>,  <43.023914, 30.518579, 29.765345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240795, 30.617336, 29.793793>,  <43.602264, 30.781929, 29.841208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240795, 30.617336, 29.793793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283203, -0.366666, -0.886201,
		0.321194, -0.834408, 0.447881,
		-0.903676, -0.411483, -0.118536,
		42.969692, 30.493891, 29.758232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701286, 30.196146, 29.521336>,  <43.602264, 30.781929, 29.841208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701286, 30.196146, 29.521336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308025, 30.233032, 29.458216>,  <43.072067, 30.255165, 29.420343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308025, 30.233032, 29.458216>,  <43.701286, 30.196146, 29.521336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308025, 30.233032, 29.458216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112010, -0.378246, -0.918903,
		-0.144426, -0.921100, 0.361546,
		-0.983156, 0.092217, -0.157801,
		43.013077, 30.260696, 29.410875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462540, 29.510637, 29.376730>,  <43.701286, 30.196146, 29.521336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462540, 29.510637, 29.376730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206772, 29.764448, 29.203058>,  <43.053310, 29.916735, 29.098856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206772, 29.764448, 29.203058>,  <43.462540, 29.510637, 29.376730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206772, 29.764448, 29.203058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033107, -0.586908, -0.808976,
		-0.768143, -0.502903, 0.396289,
		-0.639422, 0.634529, -0.434180,
		43.014946, 29.954807, 29.072803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961086, 29.022926, 29.224680>,  <43.462540, 29.510637, 29.376730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961086, 29.022926, 29.224680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896770, 29.351723, 29.006147>,  <42.858181, 29.549000, 28.875027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896770, 29.351723, 29.006147>,  <42.961086, 29.022926, 29.224680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896770, 29.351723, 29.006147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078273, -0.562410, -0.823145,
		-0.983881, -0.089588, 0.154768,
		-0.160787, 0.821990, -0.546332,
		42.848534, 29.598320, 28.842247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475159, 28.866892, 28.693182>,  <42.961086, 29.022926, 29.224680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475159, 28.866892, 28.693182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659847, 29.193512, 28.554586>,  <42.770660, 29.389484, 28.471430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659847, 29.193512, 28.554586>,  <42.475159, 28.866892, 28.693182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659847, 29.193512, 28.554586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062038, -0.359935, -0.930912,
		-0.884851, 0.451321, -0.115534,
		0.461725, 0.816551, -0.346488,
		42.798367, 29.438477, 28.450640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181927, 28.956964, 28.047937>,  <42.475159, 28.866892, 28.693182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181927, 28.956964, 28.047937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509274, 29.185316, 28.021503>,  <42.705681, 29.322327, 28.005642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509274, 29.185316, 28.021503>,  <42.181927, 28.956964, 28.047937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509274, 29.185316, 28.021503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074369, -0.219228, -0.972835,
		-0.569859, 0.791225, -0.221865,
		0.818371, 0.570879, -0.066086,
		42.754784, 29.356579, 28.001678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079544, 29.464111, 27.405582>,  <42.181927, 28.956964, 28.047937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079544, 29.464111, 27.405582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467342, 29.414747, 27.490299>,  <42.700020, 29.385130, 27.541130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467342, 29.414747, 27.490299>,  <42.079544, 29.464111, 27.405582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467342, 29.414747, 27.490299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183098, -0.209865, -0.960433,
		0.162974, 0.969911, -0.180866,
		0.969492, -0.123409, 0.211791,
		42.758190, 29.377724, 27.553837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391296, 29.613981, 26.764084>,  <42.079544, 29.464111, 27.405582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391296, 29.613981, 26.764084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698429, 29.473797, 26.978600>,  <42.882710, 29.389687, 27.107309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698429, 29.473797, 26.978600>,  <42.391296, 29.613981, 26.764084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698429, 29.473797, 26.978600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395577, -0.399104, -0.827185,
		0.503932, 0.847285, -0.167812,
		0.767836, -0.350462, 0.536288,
		42.928780, 29.368658, 27.139486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857727, 29.896788, 26.451441>,  <42.391296, 29.613981, 26.764084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857727, 29.896788, 26.451441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026432, 29.586134, 26.638611>,  <43.127655, 29.399742, 26.750912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026432, 29.586134, 26.638611>,  <42.857727, 29.896788, 26.451441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026432, 29.586134, 26.638611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400943, -0.303124, -0.864500,
		0.813239, 0.552228, 0.183538,
		0.421766, -0.776634, 0.467924,
		43.152962, 29.353144, 26.778988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596508, 29.833630, 26.100584>,  <42.857727, 29.896788, 26.451441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596508, 29.833630, 26.100584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470055, 29.483452, 26.246820>,  <43.394180, 29.273346, 26.334562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470055, 29.483452, 26.246820>,  <43.596508, 29.833630, 26.100584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470055, 29.483452, 26.246820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234481, -0.445502, -0.864030,
		0.919281, -0.187427, 0.346114,
		-0.316136, -0.875442, 0.365593,
		43.375214, 29.220819, 26.356499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062595, 29.439489, 25.932848>,  <43.596508, 29.833630, 26.100584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062595, 29.439489, 25.932848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762016, 29.183487, 25.996994>,  <43.581669, 29.029884, 26.035482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762016, 29.183487, 25.996994>,  <44.062595, 29.439489, 25.932848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762016, 29.183487, 25.996994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036018, -0.282482, -0.958596,
		0.658810, -0.714558, 0.235322,
		-0.751447, -0.640008, 0.160365,
		43.536583, 28.991484, 26.045103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345276, 28.838583, 25.719217>,  <44.062595, 29.439489, 25.932848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345276, 28.838583, 25.719217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954742, 28.752363, 25.712193>,  <43.720421, 28.700630, 25.707977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954742, 28.752363, 25.712193>,  <44.345276, 28.838583, 25.719217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954742, 28.752363, 25.712193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066136, -0.220267, -0.973195,
		0.205905, -0.951325, 0.229310,
		-0.976335, -0.215552, -0.017562,
		43.661842, 28.687698, 25.706924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291393, 28.208040, 25.380547>,  <44.345276, 28.838583, 25.719217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291393, 28.208040, 25.380547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947399, 28.409887, 25.350101>,  <43.741005, 28.530994, 25.331835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947399, 28.409887, 25.350101>,  <44.291393, 28.208040, 25.380547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947399, 28.409887, 25.350101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007006, -0.137459, -0.990483,
		-0.510277, -0.852330, 0.114677,
		-0.859982, 0.504617, -0.076114,
		43.689404, 28.561272, 25.327267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.366673, 32.985973, 22.772335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681583, 32.988522, 23.018963>,  <37.870529, 32.990051, 23.166941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681583, 32.988522, 23.018963>,  <37.366673, 32.985973, 22.772335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681583, 32.988522, 23.018963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614948, -0.065117, 0.785874,
		0.045158, -0.997857, -0.047345,
		0.787273, 0.006374, 0.616571,
		37.917767, 32.990433, 23.203934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235245, 32.328846, 23.273035>,  <37.366673, 32.985973, 22.772335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235245, 32.328846, 23.273035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478180, 32.606209, 23.428120>,  <37.623940, 32.772629, 23.521172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478180, 32.606209, 23.428120>,  <37.235245, 32.328846, 23.273035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478180, 32.606209, 23.428120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395664, -0.159186, 0.904494,
		0.688904, -0.702738, 0.177678,
		0.607339, 0.693411, 0.387712,
		37.660381, 32.814232, 23.544434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397976, 32.011116, 23.882074>,  <37.235245, 32.328846, 23.273035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397976, 32.011116, 23.882074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465885, 32.401913, 23.933704>,  <37.506630, 32.636391, 23.964684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465885, 32.401913, 23.933704>,  <37.397976, 32.011116, 23.882074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465885, 32.401913, 23.933704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353548, -0.061879, 0.933367,
		0.919882, -0.204092, 0.334909,
		0.169769, 0.976994, 0.129077,
		37.516815, 32.695011, 23.972427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560219, 32.069729, 24.517948>,  <37.397976, 32.011116, 23.882074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560219, 32.069729, 24.517948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503582, 32.460964, 24.456886>,  <37.469601, 32.695705, 24.420248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503582, 32.460964, 24.456886>,  <37.560219, 32.069729, 24.517948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503582, 32.460964, 24.456886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220758, 0.119128, 0.968026,
		0.964996, 0.170765, 0.199052,
		-0.141593, 0.978084, -0.152656,
		37.461105, 32.754391, 24.411089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995300, 32.521446, 24.899973>,  <37.560219, 32.069729, 24.517948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995300, 32.521446, 24.899973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.661392, 32.732445, 24.836843>,  <37.461048, 32.859043, 24.798965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.661392, 32.732445, 24.836843>,  <37.995300, 32.521446, 24.899973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661392, 32.732445, 24.836843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139231, 0.075095, 0.987408,
		0.532706, 0.846232, 0.010757,
		-0.834769, 0.527496, -0.157826,
		37.410961, 32.890694, 24.789495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047390, 32.891659, 25.526798>,  <37.995300, 32.521446, 24.899973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047390, 32.891659, 25.526798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.692673, 32.960258, 25.355129>,  <37.479843, 33.001419, 25.252129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.692673, 32.960258, 25.355129>,  <38.047390, 32.891659, 25.526798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692673, 32.960258, 25.355129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409788, 0.137629, 0.901739,
		0.213713, 0.975524, -0.051770,
		-0.886792, 0.171499, -0.429171,
		37.426636, 33.011707, 25.226377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857265, 33.548077, 25.865829>,  <38.047390, 32.891659, 25.526798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857265, 33.548077, 25.865829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.525864, 33.384869, 25.712416>,  <37.327023, 33.286945, 25.620367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.525864, 33.384869, 25.712416>,  <37.857265, 33.548077, 25.865829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525864, 33.384869, 25.712416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467743, 0.127673, 0.874595,
		-0.307883, 0.904003, -0.296625,
		-0.828507, -0.408017, -0.383533,
		37.277313, 33.262463, 25.597355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280270, 33.983509, 26.082281>,  <37.857265, 33.548077, 25.865829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280270, 33.983509, 26.082281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.130699, 33.626816, 25.980312>,  <37.040955, 33.412800, 25.919130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.130699, 33.626816, 25.980312>,  <37.280270, 33.983509, 26.082281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130699, 33.626816, 25.980312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444130, -0.069132, 0.893291,
		-0.814203, 0.447246, -0.370196,
		-0.373928, -0.891735, -0.254923,
		37.018520, 33.359295, 25.903835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632465, 34.042889, 26.447247>,  <37.280270, 33.983509, 26.082281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632465, 34.042889, 26.447247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720211, 33.656818, 26.390240>,  <36.772858, 33.425175, 26.356035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720211, 33.656818, 26.390240>,  <36.632465, 34.042889, 26.447247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720211, 33.656818, 26.390240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425234, -0.226056, 0.876399,
		-0.878097, -0.131649, -0.460015,
		0.219366, -0.965177, -0.142518,
		36.786022, 33.367264, 26.347485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122486, 33.643730, 26.707903>,  <36.632465, 34.042889, 26.447247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122486, 33.643730, 26.707903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.408314, 33.364021, 26.716030>,  <36.579811, 33.196194, 26.720907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.408314, 33.364021, 26.716030>,  <36.122486, 33.643730, 26.707903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408314, 33.364021, 26.716030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407387, -0.392331, 0.824690,
		-0.568712, -0.597572, -0.565220,
		0.714565, -0.699274, 0.020320,
		36.622684, 33.154240, 26.722126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758045, 33.057274, 26.959219>,  <36.122486, 33.643730, 26.707903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758045, 33.057274, 26.959219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.148174, 32.987263, 27.013044>,  <36.382252, 32.945255, 27.045340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.148174, 32.987263, 27.013044>,  <35.758045, 33.057274, 26.959219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148174, 32.987263, 27.013044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180360, -0.280149, 0.942861,
		-0.127332, -0.943865, -0.304805,
		0.975324, -0.175031, 0.134564,
		36.440773, 32.934753, 27.053413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778709, 32.484268, 27.400829>,  <35.758045, 33.057274, 26.959219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778709, 32.484268, 27.400829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147476, 32.632751, 27.445126>,  <36.368736, 32.721844, 27.471703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147476, 32.632751, 27.445126>,  <35.778709, 32.484268, 27.400829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147476, 32.632751, 27.445126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006527, -0.300714, 0.953692,
		0.387322, -0.878506, -0.279658,
		0.921921, 0.371211, 0.110739,
		36.424053, 32.744114, 27.478348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071922, 32.061428, 27.952595>,  <35.778709, 32.484268, 27.400829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071922, 32.061428, 27.952595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331635, 32.364655, 27.928061>,  <36.487461, 32.546593, 27.913340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331635, 32.364655, 27.928061>,  <36.071922, 32.061428, 27.952595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331635, 32.364655, 27.928061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142585, -0.042113, 0.988886,
		0.747062, -0.650812, -0.135432,
		0.649283, 0.758070, -0.061335,
		36.526421, 32.592075, 27.909660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746288, 31.849028, 28.298162>,  <36.071922, 32.061428, 27.952595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746288, 31.849028, 28.298162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685234, 32.244312, 28.293446>,  <36.648602, 32.481483, 28.290615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685234, 32.244312, 28.293446>,  <36.746288, 31.849028, 28.298162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685234, 32.244312, 28.293446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058332, 0.002903, 0.998293,
		0.986560, 0.153063, 0.057202,
		-0.152635, 0.988212, -0.011792,
		36.639442, 32.540775, 28.289907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978790, 31.315437, 28.713253>,  <36.746288, 31.849028, 28.298162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978790, 31.315437, 28.713253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729893, 31.010536, 28.784569>,  <36.580555, 30.827595, 28.827358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729893, 31.010536, 28.784569>,  <36.978790, 31.315437, 28.713253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729893, 31.010536, 28.784569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264199, -0.418870, -0.868762,
		0.736896, -0.493475, 0.462024,
		-0.622240, -0.762254, 0.178288,
		36.543221, 30.781860, 28.838055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340130, 30.670452, 28.580208>,  <36.978790, 31.315437, 28.713253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340130, 30.670452, 28.580208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951641, 30.589954, 28.529247>,  <36.718548, 30.541656, 28.498671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951641, 30.589954, 28.529247>,  <37.340130, 30.670452, 28.580208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951641, 30.589954, 28.529247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196981, -0.377962, -0.904623,
		0.133896, -0.903685, 0.406725,
		-0.971221, -0.201242, -0.127401,
		36.660275, 30.529581, 28.491028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417206, 30.086941, 28.268723>,  <37.340130, 30.670452, 28.580208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417206, 30.086941, 28.268723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044350, 30.203754, 28.183098>,  <36.820637, 30.273844, 28.131723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044350, 30.203754, 28.183098>,  <37.417206, 30.086941, 28.268723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044350, 30.203754, 28.183098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140878, -0.252093, -0.957394,
		-0.333558, -0.922585, 0.193845,
		-0.932144, 0.292038, -0.214060,
		36.764706, 30.291365, 28.118879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103138, 29.471472, 27.913046>,  <37.417206, 30.086941, 28.268723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103138, 29.471472, 27.913046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905815, 29.804947, 27.813755>,  <36.787422, 30.005032, 27.754181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905815, 29.804947, 27.813755>,  <37.103138, 29.471472, 27.913046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905815, 29.804947, 27.813755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180486, -0.181053, -0.966770,
		-0.850926, -0.521713, -0.061154,
		-0.493304, 0.833688, -0.248225,
		36.757824, 30.055054, 27.739288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609543, 29.278717, 27.252943>,  <37.103138, 29.471472, 27.913046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609543, 29.278717, 27.252943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.629875, 29.677914, 27.237823>,  <36.642075, 29.917431, 27.228752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.629875, 29.677914, 27.237823>,  <36.609543, 29.278717, 27.252943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629875, 29.677914, 27.237823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116234, -0.043501, -0.992269,
		-0.991920, 0.046042, -0.118212,
		0.050828, 0.997992, -0.037798,
		36.645123, 29.977312, 27.226484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413548, 29.395052, 26.643269>,  <36.609543, 29.278717, 27.252943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413548, 29.395052, 26.643269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571865, 29.745266, 26.754112>,  <36.666855, 29.955395, 26.820618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571865, 29.745266, 26.754112>,  <36.413548, 29.395052, 26.643269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571865, 29.745266, 26.754112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411488, 0.100684, -0.905837,
		-0.820991, 0.472550, -0.320422,
		0.395792, 0.875534, 0.277109,
		36.690601, 30.007927, 26.837244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311218, 29.710842, 26.094408>,  <36.413548, 29.395052, 26.643269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311218, 29.710842, 26.094408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.602238, 29.904463, 26.288877>,  <36.776848, 30.020636, 26.405560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.602238, 29.904463, 26.288877>,  <36.311218, 29.710842, 26.094408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602238, 29.904463, 26.288877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496595, 0.117380, -0.860009,
		-0.473355, 0.867131, -0.154977,
		0.727549, 0.484051, 0.486176,
		36.820503, 30.049679, 26.434731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505459, 30.286785, 25.689800>,  <36.311218, 29.710842, 26.094408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505459, 30.286785, 25.689800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844604, 30.230160, 25.894186>,  <37.048092, 30.196184, 26.016817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844604, 30.230160, 25.894186>,  <36.505459, 30.286785, 25.689800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844604, 30.230160, 25.894186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530212, 0.225678, -0.817279,
		0.000381, 0.963862, 0.266402,
		0.847865, -0.141561, 0.510965,
		37.098965, 30.187691, 26.047476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968525, 30.773430, 25.353844>,  <36.505459, 30.286785, 25.689800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968525, 30.773430, 25.353844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.198795, 30.522524, 25.563658>,  <37.336956, 30.371981, 25.689547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.198795, 30.522524, 25.563658>,  <36.968525, 30.773430, 25.353844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198795, 30.522524, 25.563658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694966, 0.037339, -0.718072,
		0.430837, 0.777909, 0.457424,
		0.575674, -0.627266, 0.524534,
		37.371498, 30.334345, 25.721018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573574, 31.132530, 25.371496>,  <36.968525, 30.773430, 25.353844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573574, 31.132530, 25.371496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633793, 30.740381, 25.422413>,  <37.669922, 30.505091, 25.452963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633793, 30.740381, 25.422413>,  <37.573574, 31.132530, 25.371496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633793, 30.740381, 25.422413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793664, 0.043082, -0.606829,
		0.589435, 0.192383, 0.784573,
		0.150545, -0.980374, 0.127294,
		37.678955, 30.446270, 25.460602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292660, 30.961514, 25.466314>,  <37.573574, 31.132530, 25.371496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292660, 30.961514, 25.466314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155933, 30.614168, 25.322588>,  <38.073898, 30.405762, 25.236353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155933, 30.614168, 25.322588>,  <38.292660, 30.961514, 25.466314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155933, 30.614168, 25.322588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769953, -0.039555, -0.636873,
		0.538824, -0.494350, 0.682119,
		-0.341820, -0.868362, -0.359314,
		38.053387, 30.353659, 25.214794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893059, 30.509319, 25.360649>,  <38.292660, 30.961514, 25.466314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893059, 30.509319, 25.360649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.606102, 30.356293, 25.127754>,  <38.433929, 30.264477, 24.988018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.606102, 30.356293, 25.127754>,  <38.893059, 30.509319, 25.360649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606102, 30.356293, 25.127754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680038, -0.202985, -0.704518,
		0.151339, -0.901355, 0.405778,
		-0.717388, -0.382566, -0.582236,
		38.390884, 30.241524, 24.953083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128067, 29.796383, 25.041182>,  <38.893059, 30.509319, 25.360649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128067, 29.796383, 25.041182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834438, 29.939585, 24.810368>,  <38.658260, 30.025507, 24.671879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834438, 29.939585, 24.810368>,  <39.128067, 29.796383, 25.041182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834438, 29.939585, 24.810368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529561, -0.230136, -0.816458,
		-0.425094, -0.904914, -0.020650,
		-0.734071, 0.358006, -0.577036,
		38.614216, 30.046986, 24.637257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283104, 29.582479, 24.377466>,  <39.128067, 29.796383, 25.041182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283104, 29.582479, 24.377466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.005104, 29.843430, 24.256546>,  <38.838306, 30.000000, 24.183994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.005104, 29.843430, 24.256546>,  <39.283104, 29.582479, 24.377466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005104, 29.843430, 24.256546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419794, 0.026826, -0.907223,
		-0.583740, -0.757422, -0.292507,
		-0.694997, 0.652375, -0.302302,
		38.796604, 30.039143, 24.165855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665260, 28.922592, 24.472284>,  <39.283104, 29.582479, 24.377466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665260, 28.922592, 24.472284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.064137, 28.901211, 24.493299>,  <40.303463, 28.888382, 24.505909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.064137, 28.901211, 24.493299>,  <39.665260, 28.922592, 24.472284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064137, 28.901211, 24.493299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051927, 0.012783, 0.998569,
		-0.054049, -0.998489, 0.009971,
		0.997187, -0.053454, 0.052540,
		40.363293, 28.885174, 24.509062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824539, 28.432814, 24.905449>,  <39.665260, 28.922592, 24.472284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824539, 28.432814, 24.905449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.131580, 28.688829, 24.918955>,  <40.315804, 28.842440, 24.927059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.131580, 28.688829, 24.918955>,  <39.824539, 28.432814, 24.905449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131580, 28.688829, 24.918955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117655, 0.088925, 0.989065,
		0.630040, -0.763177, 0.143563,
		0.767598, 0.640042, 0.033765,
		40.361858, 28.880842, 24.929085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288651, 28.153234, 25.400478>,  <39.824539, 28.432814, 24.905449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288651, 28.153234, 25.400478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.339901, 28.549406, 25.379934>,  <40.370651, 28.787109, 25.367609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.339901, 28.549406, 25.379934>,  <40.288651, 28.153234, 25.400478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339901, 28.549406, 25.379934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116061, 0.066404, 0.991020,
		0.984944, -0.121012, 0.123458,
		0.128123, 0.990427, -0.051359,
		40.378338, 28.846535, 25.364527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638935, 28.259592, 26.022438>,  <40.288651, 28.153234, 25.400478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638935, 28.259592, 26.022438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.513309, 28.619053, 25.899937>,  <40.437935, 28.834728, 25.826437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.513309, 28.619053, 25.899937>,  <40.638935, 28.259592, 26.022438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513309, 28.619053, 25.899937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247851, 0.233781, 0.940168,
		0.916479, 0.371178, 0.149309,
		-0.314064, 0.898651, -0.306252,
		40.419090, 28.888649, 25.808062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139969, 28.697632, 26.324860>,  <40.638935, 28.259592, 26.022438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139969, 28.697632, 26.324860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.804634, 28.905748, 26.259758>,  <40.603432, 29.030619, 26.220697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.804634, 28.905748, 26.259758>,  <41.139969, 28.697632, 26.324860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804634, 28.905748, 26.259758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067045, 0.394680, 0.916369,
		0.541012, 0.757315, -0.365758,
		-0.838338, 0.520290, -0.162752,
		40.553131, 29.061834, 26.210932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161781, 29.317417, 26.781351>,  <41.139969, 28.697632, 26.324860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161781, 29.317417, 26.781351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.781116, 29.369946, 26.670286>,  <40.552719, 29.401463, 26.603647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.781116, 29.369946, 26.670286>,  <41.161781, 29.317417, 26.781351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781116, 29.369946, 26.670286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198011, 0.428759, 0.881452,
		0.234804, 0.893823, -0.382030,
		-0.951661, 0.131322, -0.277662,
		40.495617, 29.409342, 26.586988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949986, 30.159821, 26.900637>,  <41.161781, 29.317417, 26.781351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949986, 30.159821, 26.900637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.669670, 29.875051, 26.918762>,  <40.501480, 29.704189, 26.929638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.669670, 29.875051, 26.918762>,  <40.949986, 30.159821, 26.900637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669670, 29.875051, 26.918762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186373, 0.244031, 0.951690,
		-0.688589, 0.658492, -0.303699,
		-0.700792, -0.711925, 0.045312,
		40.459431, 29.661474, 26.932356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430233, 30.423725, 27.341761>,  <40.949986, 30.159821, 26.900637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430233, 30.423725, 27.341761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.365860, 30.028973, 27.336683>,  <40.327236, 29.792120, 27.333637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.365860, 30.028973, 27.336683>,  <40.430233, 30.423725, 27.341761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365860, 30.028973, 27.336683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441644, 0.060508, 0.895148,
		-0.882638, 0.149667, -0.445589,
		-0.160935, -0.986883, -0.012693,
		40.317581, 29.732908, 27.332876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812458, 30.319580, 27.706215>,  <40.430233, 30.423725, 27.341761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812458, 30.319580, 27.706215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005650, 29.969448, 27.715429>,  <40.121563, 29.759369, 27.720959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005650, 29.969448, 27.715429>,  <39.812458, 30.319580, 27.706215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005650, 29.969448, 27.715429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242473, -0.108417, 0.964081,
		-0.841390, -0.471218, -0.264607,
		0.482980, -0.875329, 0.023036,
		40.150543, 29.706850, 27.722340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322403, 29.905590, 28.083349>,  <39.812458, 30.319580, 27.706215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322403, 29.905590, 28.083349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.664917, 29.699394, 28.070387>,  <39.870426, 29.575676, 28.062609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.664917, 29.699394, 28.070387>,  <39.322403, 29.905590, 28.083349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664917, 29.699394, 28.070387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082043, -0.197688, 0.976826,
		-0.509952, -0.833779, -0.211569,
		0.856282, -0.515492, -0.032405,
		39.921803, 29.544746, 28.060665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095234, 29.184130, 28.296597>,  <39.322403, 29.905590, 28.083349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095234, 29.184130, 28.296597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.489407, 29.201393, 28.362394>,  <39.725910, 29.211750, 28.401873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.489407, 29.201393, 28.362394>,  <39.095234, 29.184130, 28.296597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489407, 29.201393, 28.362394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118867, -0.516949, 0.847723,
		0.121621, -0.854927, -0.504289,
		0.985434, 0.043157, 0.164494,
		39.785038, 29.214340, 28.411743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276344, 28.581713, 28.497541>,  <39.095234, 29.184130, 28.296597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276344, 28.581713, 28.497541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583744, 28.798702, 28.633263>,  <39.768185, 28.928896, 28.714695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583744, 28.798702, 28.633263>,  <39.276344, 28.581713, 28.497541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583744, 28.798702, 28.633263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080004, -0.444656, 0.892121,
		0.634824, -0.712744, -0.298320,
		0.768504, 0.542473, 0.339301,
		39.814297, 28.961445, 28.735052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685936, 28.180025, 28.907803>,  <39.276344, 28.581713, 28.497541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685936, 28.180025, 28.907803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.842411, 28.532454, 29.014149>,  <39.936298, 28.743910, 29.077955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.842411, 28.532454, 29.014149>,  <39.685936, 28.180025, 28.907803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842411, 28.532454, 29.014149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035004, -0.274432, 0.960969,
		0.919644, -0.385228, -0.076514,
		0.391190, 0.881071, 0.265864,
		39.959766, 28.796776, 29.093908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219410, 28.060072, 29.327799>,  <39.685936, 28.180025, 28.907803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219410, 28.060072, 29.327799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.124809, 28.439505, 29.411951>,  <40.068047, 28.667164, 29.462442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.124809, 28.439505, 29.411951>,  <40.219410, 28.060072, 29.327799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124809, 28.439505, 29.411951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271570, -0.272431, 0.923055,
		0.932907, 0.161173, 0.322038,
		-0.236505, 0.948580, 0.210383,
		40.053860, 28.724079, 29.475065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.847584, 27.794924, 24.980644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.699444, 28.165695, 24.956507>,  <43.610558, 28.388159, 24.942024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.699444, 28.165695, 24.956507>,  <43.847584, 27.794924, 24.980644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699444, 28.165695, 24.956507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030018, -0.076875, -0.996589,
		-0.928406, -0.367278, 0.056295,
		-0.370353, 0.926929, -0.060346,
		43.588337, 28.443773, 24.938402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262455, 27.746208, 24.525253>,  <43.847584, 27.794924, 24.980644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262455, 27.746208, 24.525253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.374405, 28.129953, 24.539627>,  <43.441574, 28.360201, 24.548250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.374405, 28.129953, 24.539627>,  <43.262455, 27.746208, 24.525253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374405, 28.129953, 24.539627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102373, 0.067038, -0.992485,
		-0.954563, 0.274092, 0.116976,
		0.279874, 0.959364, 0.035933,
		43.458366, 28.417763, 24.550407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835972, 28.074675, 23.997684>,  <43.262455, 27.746208, 24.525253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835972, 28.074675, 23.997684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.118954, 28.345921, 24.077347>,  <43.288742, 28.508669, 24.125145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.118954, 28.345921, 24.077347>,  <42.835972, 28.074675, 23.997684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118954, 28.345921, 24.077347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054148, 0.332965, -0.941383,
		-0.704678, 0.655205, 0.272278,
		0.707458, 0.678115, 0.199155,
		43.331192, 28.549355, 24.137093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605556, 28.661821, 23.599903>,  <42.835972, 28.074675, 23.997684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605556, 28.661821, 23.599903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.983604, 28.765661, 23.679258>,  <43.210434, 28.827965, 23.726871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.983604, 28.765661, 23.679258>,  <42.605556, 28.661821, 23.599903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983604, 28.765661, 23.679258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115763, 0.301746, -0.946334,
		-0.305534, 0.917364, 0.255133,
		0.945118, 0.259602, 0.198390,
		43.267139, 28.843542, 23.738775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706760, 29.276855, 23.320038>,  <42.605556, 28.661821, 23.599903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706760, 29.276855, 23.320038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.075901, 29.125538, 23.348986>,  <43.297386, 29.034748, 23.366354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.075901, 29.125538, 23.348986>,  <42.706760, 29.276855, 23.320038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075901, 29.125538, 23.348986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220047, 0.363643, -0.905176,
		0.316104, 0.851269, 0.418831,
		0.922853, -0.378292, 0.072370,
		43.352757, 29.012051, 23.370697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209610, 29.880648, 23.122488>,  <42.706760, 29.276855, 23.320038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209610, 29.880648, 23.122488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.420231, 29.541388, 23.099207>,  <43.546604, 29.337831, 23.085239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.420231, 29.541388, 23.099207>,  <43.209610, 29.880648, 23.122488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420231, 29.541388, 23.099207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549852, 0.391973, -0.737577,
		0.648390, 0.356369, 0.672750,
		0.526549, -0.848150, -0.058201,
		43.578197, 29.286943, 23.081747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958057, 30.039705, 22.994320>,  <43.209610, 29.880648, 23.122488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958057, 30.039705, 22.994320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.923100, 29.667934, 22.850918>,  <43.902126, 29.444872, 22.764877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.923100, 29.667934, 22.850918>,  <43.958057, 30.039705, 22.994320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923100, 29.667934, 22.850918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415986, 0.292952, -0.860892,
		0.905162, -0.224369, 0.361028,
		-0.087393, -0.929429, -0.358503,
		43.896881, 29.389107, 22.743366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617298, 29.870283, 22.584316>,  <43.958057, 30.039705, 22.994320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617298, 29.870283, 22.584316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.324505, 29.623047, 22.469660>,  <44.148830, 29.474705, 22.400866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.324505, 29.623047, 22.469660>,  <44.617298, 29.870283, 22.584316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324505, 29.623047, 22.469660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316300, 0.064348, -0.946474,
		0.603452, -0.783468, 0.148401,
		-0.731983, -0.618091, -0.286643,
		44.104908, 29.437620, 22.383667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941940, 29.341410, 22.034735>,  <44.617298, 29.870283, 22.584316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941940, 29.341410, 22.034735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.543583, 29.346859, 21.998953>,  <44.304569, 29.350128, 21.977484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.543583, 29.346859, 21.998953>,  <44.941940, 29.341410, 22.034735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543583, 29.346859, 21.998953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090107, 0.058898, -0.994189,
		-0.008275, -0.998171, -0.059884,
		-0.995898, 0.013623, -0.089455,
		44.244812, 29.350946, 21.972116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716946, 28.776981, 21.630341>,  <44.941940, 29.341410, 22.034735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716946, 28.776981, 21.630341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.417736, 29.040991, 21.602528>,  <44.238213, 29.199396, 21.585840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.417736, 29.040991, 21.602528>,  <44.716946, 28.776981, 21.630341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417736, 29.040991, 21.602528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057240, -0.040216, -0.997550,
		-0.661204, -0.750167, -0.007697,
		-0.748019, 0.660025, -0.069531,
		44.193329, 29.238998, 21.581669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193172, 28.482883, 21.126156>,  <44.716946, 28.776981, 21.630341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193172, 28.482883, 21.126156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.149830, 28.879490, 21.154873>,  <44.123825, 29.117455, 21.172104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.149830, 28.879490, 21.154873>,  <44.193172, 28.482883, 21.126156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149830, 28.879490, 21.154873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012974, 0.073624, -0.997202,
		-0.994027, -0.107124, -0.020842,
		-0.108358, 0.991516, 0.071795,
		44.117321, 29.176945, 21.176411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739445, 28.654242, 20.560755>,  <44.193172, 28.482883, 21.126156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739445, 28.654242, 20.560755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.912868, 29.001451, 20.657549>,  <44.016922, 29.209778, 20.715626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.912868, 29.001451, 20.657549>,  <43.739445, 28.654242, 20.560755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912868, 29.001451, 20.657549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094056, 0.223481, -0.970159,
		-0.896203, 0.443382, 0.015249,
		0.433559, 0.868026, 0.241987,
		44.042934, 29.261860, 20.730145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632145, 29.148975, 20.024776>,  <43.739445, 28.654242, 20.560755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632145, 29.148975, 20.024776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.947430, 29.294319, 20.223452>,  <44.136600, 29.381525, 20.342657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.947430, 29.294319, 20.223452>,  <43.632145, 29.148975, 20.024776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947430, 29.294319, 20.223452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407513, 0.296614, -0.863686,
		-0.461152, 0.883171, 0.085720,
		0.788208, 0.363358, 0.496688,
		44.183891, 29.403326, 20.372458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589237, 29.453928, 19.363188>,  <43.632145, 29.148975, 20.024776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589237, 29.453928, 19.363188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.225101, 29.500755, 19.204401>,  <43.006622, 29.528852, 19.109129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.225101, 29.500755, 19.204401>,  <43.589237, 29.453928, 19.363188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225101, 29.500755, 19.204401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382987, -0.601851, 0.700783,
		-0.156874, 0.789981, 0.592723,
		-0.910336, 0.117071, -0.396968,
		42.952000, 29.535877, 19.085310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134041, 29.908173, 19.838747>,  <43.589237, 29.453928, 19.363188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134041, 29.908173, 19.838747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.917309, 29.634918, 19.642891>,  <42.787270, 29.470966, 19.525377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.917309, 29.634918, 19.642891>,  <43.134041, 29.908173, 19.838747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917309, 29.634918, 19.642891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438011, -0.267701, 0.858186,
		-0.717334, 0.679458, -0.154172,
		-0.541829, -0.683134, -0.489641,
		42.754761, 29.429977, 19.495998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368359, 30.023933, 19.932684>,  <43.134041, 29.908173, 19.838747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368359, 30.023933, 19.932684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.403412, 29.644451, 19.811178>,  <42.424446, 29.416761, 19.738274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.403412, 29.644451, 19.811178>,  <42.368359, 30.023933, 19.932684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403412, 29.644451, 19.811178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580925, -0.296390, 0.758076,
		-0.809226, 0.110030, -0.577102,
		0.087636, -0.948708, -0.303766,
		42.429703, 29.359838, 19.720049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621929, 29.834194, 19.833433>,  <42.368359, 30.023933, 19.932684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621929, 29.834194, 19.833433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.823990, 29.494009, 19.892128>,  <41.945225, 29.289898, 19.927345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.823990, 29.494009, 19.892128>,  <41.621929, 29.834194, 19.833433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823990, 29.494009, 19.892128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640129, -0.255190, 0.724647,
		-0.578840, -0.459988, -0.673317,
		0.505152, -0.850464, 0.146738,
		41.975536, 29.238871, 19.936150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180061, 29.320114, 20.116974>,  <41.621929, 29.834194, 19.833433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180061, 29.320114, 20.116974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.504143, 29.100630, 20.199419>,  <41.698593, 28.968939, 20.248886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.504143, 29.100630, 20.199419>,  <41.180061, 29.320114, 20.116974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504143, 29.100630, 20.199419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480694, -0.420790, 0.769330,
		-0.335407, -0.722395, -0.604688,
		0.810206, -0.548709, 0.206115,
		41.747204, 28.936016, 20.261253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015476, 28.575174, 20.183170>,  <41.180061, 29.320114, 20.116974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015476, 28.575174, 20.183170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.352192, 28.651257, 20.385248>,  <41.554222, 28.696905, 20.506495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.352192, 28.651257, 20.385248>,  <41.015476, 28.575174, 20.183170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352192, 28.651257, 20.385248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388344, -0.436661, 0.811490,
		0.374949, -0.879288, -0.293709,
		0.841785, 0.190207, 0.505192,
		41.604729, 28.708319, 20.536806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087250, 28.000212, 20.730644>,  <41.015476, 28.575174, 20.183170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087250, 28.000212, 20.730644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.318020, 28.297825, 20.865446>,  <41.456482, 28.476393, 20.946327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.318020, 28.297825, 20.865446>,  <41.087250, 28.000212, 20.730644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318020, 28.297825, 20.865446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164171, -0.298546, 0.940169,
		0.800127, -0.597736, -0.050091,
		0.576927, 0.744031, 0.337005,
		41.491096, 28.521034, 20.966547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549709, 27.701965, 21.267838>,  <41.087250, 28.000212, 20.730644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549709, 27.701965, 21.267838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.514820, 28.093412, 21.342352>,  <41.493889, 28.328279, 21.387060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.514820, 28.093412, 21.342352>,  <41.549709, 27.701965, 21.267838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514820, 28.093412, 21.342352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295798, -0.204006, 0.933212,
		0.951260, 0.026292, 0.307267,
		-0.087220, 0.978617, 0.186285,
		41.488655, 28.386997, 21.398237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797424, 27.782431, 22.016581>,  <41.549709, 27.701965, 21.267838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797424, 27.782431, 22.016581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.595253, 28.119612, 21.942858>,  <41.473949, 28.321920, 21.898624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.595253, 28.119612, 21.942858>,  <41.797424, 27.782431, 22.016581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595253, 28.119612, 21.942858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317480, 0.016942, 0.948114,
		0.802339, 0.537719, 0.259058,
		-0.505430, 0.842954, -0.184308,
		41.443623, 28.372498, 21.887566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095562, 28.247833, 22.402552>,  <41.797424, 27.782431, 22.016581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095562, 28.247833, 22.402552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.728256, 28.389967, 22.332659>,  <41.507874, 28.475246, 22.290724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.728256, 28.389967, 22.332659>,  <42.095562, 28.247833, 22.402552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728256, 28.389967, 22.332659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127887, 0.151487, 0.980151,
		0.374751, 0.922382, -0.093662,
		-0.918263, 0.355335, -0.174731,
		41.452778, 28.496567, 22.280239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080200, 28.909708, 22.677031>,  <42.095562, 28.247833, 22.402552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080200, 28.909708, 22.677031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.693790, 28.812666, 22.641386>,  <41.461945, 28.754440, 22.619999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.693790, 28.812666, 22.641386>,  <42.080200, 28.909708, 22.677031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693790, 28.812666, 22.641386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143126, 0.215072, 0.966053,
		-0.215204, 0.945985, -0.242488,
		-0.966024, -0.242605, -0.089110,
		41.403984, 28.739885, 22.614653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708374, 29.414516, 23.070114>,  <42.080200, 28.909708, 22.677031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708374, 29.414516, 23.070114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.396481, 29.172310, 23.006414>,  <41.209343, 29.026985, 22.968195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.396481, 29.172310, 23.006414>,  <41.708374, 29.414516, 23.070114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396481, 29.172310, 23.006414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366728, 0.235541, 0.900017,
		-0.507465, 0.760178, -0.405720,
		-0.779737, -0.605516, -0.159250,
		41.162560, 28.990656, 22.958639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069641, 29.790617, 23.257061>,  <41.708374, 29.414516, 23.070114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069641, 29.790617, 23.257061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.011154, 29.397190, 23.299431>,  <40.976063, 29.161135, 23.324852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.011154, 29.397190, 23.299431>,  <41.069641, 29.790617, 23.257061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011154, 29.397190, 23.299431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279677, 0.143807, 0.949263,
		-0.948895, 0.109174, -0.296108,
		-0.146217, -0.983565, 0.105924,
		40.967289, 29.102121, 23.331207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404396, 29.738932, 23.549379>,  <41.069641, 29.790617, 23.257061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404396, 29.738932, 23.549379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.593918, 29.398773, 23.640884>,  <40.707630, 29.194677, 23.695787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.593918, 29.398773, 23.640884>,  <40.404396, 29.738932, 23.549379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593918, 29.398773, 23.640884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496018, -0.043069, 0.867244,
		-0.727649, -0.524376, -0.442218,
		0.473807, -0.850397, 0.228761,
		40.736061, 29.143654, 23.709513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941154, 29.416344, 23.992386>,  <40.404396, 29.738932, 23.549379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941154, 29.416344, 23.992386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.266216, 29.194777, 24.064789>,  <40.461254, 29.061836, 24.108231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.266216, 29.194777, 24.064789>,  <39.941154, 29.416344, 23.992386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266216, 29.194777, 24.064789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334547, -0.189137, 0.923204,
		-0.477143, -0.810804, -0.339015,
		0.812658, -0.553917, 0.181007,
		40.510014, 29.028603, 24.119091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196281, 29.419186, 23.656214>,  <39.941154, 29.416344, 23.992386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196281, 29.419186, 23.656214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.999722, 29.766325, 23.685534>,  <38.881786, 29.974607, 23.703125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.999722, 29.766325, 23.685534>,  <39.196281, 29.419186, 23.656214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999722, 29.766325, 23.685534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149720, 0.167082, -0.974509,
		-0.857971, -0.467895, -0.212037,
		-0.491395, 0.867847, 0.073298,
		38.852303, 30.026678, 23.707523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868694, 29.438190, 22.963505>,  <39.196281, 29.419186, 23.656214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868694, 29.438190, 22.963505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.871403, 29.810301, 23.110222>,  <38.873028, 30.033567, 23.198252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.871403, 29.810301, 23.110222>,  <38.868694, 29.438190, 22.963505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871403, 29.810301, 23.110222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120669, 0.363360, -0.923801,
		-0.992670, 0.050519, -0.109794,
		0.006775, 0.930278, 0.366793,
		38.873436, 30.089384, 23.220261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333973, 29.826271, 22.584929>,  <38.868694, 29.438190, 22.963505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333973, 29.826271, 22.584929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.607231, 30.076334, 22.735924>,  <38.771187, 30.226372, 22.826521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.607231, 30.076334, 22.735924>,  <38.333973, 29.826271, 22.584929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607231, 30.076334, 22.735924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166218, 0.370230, -0.913948,
		-0.711118, 0.687101, 0.149007,
		0.683141, 0.625158, 0.377486,
		38.812172, 30.263882, 22.849169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196777, 30.409386, 22.284378>,  <38.333973, 29.826271, 22.584929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196777, 30.409386, 22.284378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.579899, 30.449877, 22.391983>,  <38.809772, 30.474171, 22.456545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.579899, 30.449877, 22.391983>,  <38.196777, 30.409386, 22.284378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579899, 30.449877, 22.391983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230223, 0.290138, -0.928879,
		-0.172079, 0.951616, 0.254590,
		0.957803, 0.101228, 0.269011,
		38.867241, 30.480246, 22.472687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450642, 31.133038, 21.997869>,  <38.196777, 30.409386, 22.284378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450642, 31.133038, 21.997869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745209, 30.866987, 22.047340>,  <38.921947, 30.707357, 22.077023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745209, 30.866987, 22.047340>,  <38.450642, 31.133038, 21.997869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745209, 30.866987, 22.047340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355772, 0.225246, -0.907023,
		0.575427, 0.711949, 0.402509,
		0.736417, -0.665126, 0.123678,
		38.966133, 30.667450, 22.084444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087543, 31.490316, 21.738493>,  <38.450642, 31.133038, 21.997869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087543, 31.490316, 21.738493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.175220, 31.100382, 21.754723>,  <39.227829, 30.866421, 21.764460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.175220, 31.100382, 21.754723>,  <39.087543, 31.490316, 21.738493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175220, 31.100382, 21.754723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583171, 0.097561, -0.806469,
		0.782218, 0.200436, 0.589882,
		0.219195, -0.974837, 0.040575,
		39.240978, 30.807930, 21.766895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718212, 31.509611, 21.548973>,  <39.087543, 31.490316, 21.738493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718212, 31.509611, 21.548973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.628399, 31.122421, 21.504063>,  <39.574509, 30.890106, 21.477116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.628399, 31.122421, 21.504063>,  <39.718212, 31.509611, 21.548973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628399, 31.122421, 21.504063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566981, -0.036066, -0.822941,
		0.792538, -0.248439, 0.556922,
		-0.224536, -0.967976, -0.112277,
		39.561039, 30.832029, 21.470379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250683, 31.950411, 21.760946>,  <39.718212, 31.509611, 21.548973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250683, 31.950411, 21.760946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118187, 32.273018, 21.565063>,  <40.038689, 32.466583, 21.447535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118187, 32.273018, 21.565063>,  <40.250683, 31.950411, 21.760946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118187, 32.273018, 21.565063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620711, 0.204629, 0.756865,
		0.710633, 0.554669, 0.432833,
		-0.331239, 0.806517, -0.489705,
		40.018814, 32.514973, 21.418152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266701, 32.477089, 22.276495>,  <40.250683, 31.950411, 21.760946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266701, 32.477089, 22.276495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.034435, 32.629528, 21.988720>,  <39.895077, 32.720993, 21.816055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.034435, 32.629528, 21.988720>,  <40.266701, 32.477089, 22.276495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034435, 32.629528, 21.988720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585165, 0.419032, 0.694259,
		0.566048, 0.824122, -0.020312,
		-0.580665, 0.381098, -0.719439,
		39.860237, 32.743858, 21.772888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182610, 33.124500, 22.423466>,  <40.266701, 32.477089, 22.276495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182610, 33.124500, 22.423466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.872646, 33.042969, 22.184145>,  <39.686668, 32.994049, 22.040552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.872646, 33.042969, 22.184145>,  <40.182610, 33.124500, 22.423466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872646, 33.042969, 22.184145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632058, 0.256379, 0.731282,
		0.004334, 0.944840, -0.327504,
		-0.774909, -0.203832, -0.598304,
		39.640175, 32.981819, 22.004654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668854, 33.566696, 22.498459>,  <40.182610, 33.124500, 22.423466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668854, 33.566696, 22.498459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.458996, 33.261818, 22.346773>,  <39.333084, 33.078888, 22.255762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.458996, 33.261818, 22.346773>,  <39.668854, 33.566696, 22.498459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458996, 33.261818, 22.346773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776981, 0.246651, 0.579192,
		-0.347926, 0.598510, -0.721619,
		-0.524640, -0.762200, -0.379214,
		39.301605, 33.033157, 22.233009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001038, 33.819828, 22.574921>,  <39.668854, 33.566696, 22.498459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001038, 33.819828, 22.574921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.948563, 33.435959, 22.475470>,  <38.917076, 33.205639, 22.415798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.948563, 33.435959, 22.475470>,  <39.001038, 33.819828, 22.574921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948563, 33.435959, 22.475470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832010, -0.029780, 0.553961,
		-0.539026, 0.279537, -0.794551,
		-0.131191, -0.959673, -0.248629,
		38.909206, 33.148056, 22.400881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355713, 33.801620, 22.264177>,  <39.001038, 33.819828, 22.574921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355713, 33.801620, 22.264177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454113, 33.444782, 22.415783>,  <38.513153, 33.230679, 22.506746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454113, 33.444782, 22.415783>,  <38.355713, 33.801620, 22.264177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454113, 33.444782, 22.415783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731797, 0.085469, 0.676142,
		-0.635577, -0.443692, -0.631806,
		0.245999, -0.892094, 0.379014,
		38.527912, 33.177155, 22.529488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706749, 33.429054, 22.331261>,  <38.355713, 33.801620, 22.264177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706749, 33.429054, 22.331261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.963661, 33.273125, 22.595232>,  <38.117809, 33.179565, 22.753614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.963661, 33.273125, 22.595232>,  <37.706749, 33.429054, 22.331261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963661, 33.273125, 22.595232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691954, 0.075403, 0.717993,
		-0.329652, -0.917797, -0.221310,
		0.642284, -0.389824, 0.659931,
		38.156345, 33.156178, 22.793211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.771439, 32.003750, 19.878288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.815617, 31.734648, 20.170919>,  <44.842121, 31.573187, 20.346498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.815617, 31.734648, 20.170919>,  <44.771439, 32.003750, 19.878288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815617, 31.734648, 20.170919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078965, 0.727813, 0.681214,
		-0.990741, -0.133004, 0.027257,
		0.110442, -0.672754, 0.731577,
		44.848751, 31.532822, 20.390392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216267, 32.001663, 20.383566>,  <44.771439, 32.003750, 19.878288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216267, 32.001663, 20.383566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.542969, 31.864235, 20.568985>,  <44.738991, 31.781778, 20.680237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.542969, 31.864235, 20.568985>,  <44.216267, 32.001663, 20.383566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542969, 31.864235, 20.568985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154882, 0.643357, 0.749736,
		-0.555812, -0.684143, 0.472251,
		0.816752, -0.343569, 0.463547,
		44.787994, 31.761164, 20.708050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997391, 32.074543, 21.093910>,  <44.216267, 32.001663, 20.383566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997391, 32.074543, 21.093910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.393639, 32.019882, 21.094818>,  <44.631386, 31.987087, 21.095364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.393639, 32.019882, 21.094818>,  <43.997391, 32.074543, 21.093910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393639, 32.019882, 21.094818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079211, 0.587611, 0.805257,
		-0.111370, -0.797522, 0.592921,
		0.990617, -0.136648, 0.002270,
		44.690823, 31.978888, 21.095499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206234, 31.938818, 21.847321>,  <43.997391, 32.074543, 21.093910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206234, 31.938818, 21.847321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.565903, 32.034576, 21.700798>,  <44.781704, 32.092030, 21.612885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.565903, 32.034576, 21.700798>,  <44.206234, 31.938818, 21.847321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565903, 32.034576, 21.700798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211339, 0.495423, 0.842551,
		0.383177, -0.835013, 0.394877,
		0.899172, 0.239393, -0.366306,
		44.835655, 32.106396, 21.590906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646496, 31.876255, 22.350225>,  <44.206234, 31.938818, 21.847321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646496, 31.876255, 22.350225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.800083, 32.151646, 22.104116>,  <44.892235, 32.316879, 21.956451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.800083, 32.151646, 22.104116>,  <44.646496, 31.876255, 22.350225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800083, 32.151646, 22.104116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211181, 0.583210, 0.784390,
		0.898870, -0.431119, 0.078543,
		0.383972, 0.688478, -0.615275,
		44.915276, 32.358189, 21.919535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229607, 32.027672, 22.679333>,  <44.646496, 31.876255, 22.350225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229607, 32.027672, 22.679333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.144356, 32.326118, 22.427021>,  <45.093204, 32.505188, 22.275635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.144356, 32.326118, 22.427021>,  <45.229607, 32.027672, 22.679333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144356, 32.326118, 22.427021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032178, 0.650622, 0.758719,
		0.976495, 0.141405, -0.162672,
		-0.213125, 0.746120, -0.630780,
		45.080418, 32.549953, 22.237787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473190, 32.582787, 23.005400>,  <45.229607, 32.027672, 22.679333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473190, 32.582787, 23.005400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.264740, 32.784649, 22.730080>,  <45.139671, 32.905766, 22.564888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.264740, 32.784649, 22.730080>,  <45.473190, 32.582787, 23.005400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264740, 32.784649, 22.730080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241973, 0.686009, 0.686179,
		0.818463, 0.524132, -0.235381,
		-0.521121, 0.504656, -0.688298,
		45.108402, 32.936047, 22.523590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494160, 33.278046, 23.241787>,  <45.473190, 32.582787, 23.005400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494160, 33.278046, 23.241787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.198185, 33.309334, 22.974539>,  <45.020599, 33.328106, 22.814190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.198185, 33.309334, 22.974539>,  <45.494160, 33.278046, 23.241787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198185, 33.309334, 22.974539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592492, 0.394512, 0.702363,
		0.318518, 0.915556, -0.245569,
		-0.739932, 0.078217, -0.668118,
		44.976204, 33.332798, 22.774103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467262, 33.913925, 23.223396>,  <45.494160, 33.278046, 23.241787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467262, 33.913925, 23.223396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.115585, 33.745346, 23.134487>,  <44.904579, 33.644199, 23.081142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.115585, 33.745346, 23.134487>,  <45.467262, 33.913925, 23.223396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115585, 33.745346, 23.134487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414616, 0.446847, 0.792730,
		-0.234774, 0.789119, -0.567603,
		-0.879190, -0.421449, -0.222273,
		44.851830, 33.618912, 23.067804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987225, 34.451748, 23.300419>,  <45.467262, 33.913925, 23.223396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987225, 34.451748, 23.300419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.820889, 34.092026, 23.354561>,  <44.721085, 33.876194, 23.387047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.820889, 34.092026, 23.354561>,  <44.987225, 34.451748, 23.300419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820889, 34.092026, 23.354561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362831, 0.300536, 0.882061,
		-0.833923, 0.317688, -0.451273,
		-0.415844, -0.899306, 0.135357,
		44.696136, 33.822235, 23.395168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339924, 34.569069, 23.565437>,  <44.987225, 34.451748, 23.300419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339924, 34.569069, 23.565437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.345039, 34.173481, 23.624475>,  <44.348106, 33.936131, 23.659899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.345039, 34.173481, 23.624475>,  <44.339924, 34.569069, 23.565437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345039, 34.173481, 23.624475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397661, 0.130402, 0.908218,
		-0.917443, -0.070305, -0.391606,
		0.012786, -0.988965, 0.147594,
		44.348877, 33.876793, 23.668755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656322, 34.355644, 23.792915>,  <44.339924, 34.569069, 23.565437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656322, 34.355644, 23.792915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.916245, 34.078964, 23.918959>,  <44.072197, 33.912956, 23.994585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.916245, 34.078964, 23.918959>,  <43.656322, 34.355644, 23.792915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916245, 34.078964, 23.918959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359941, 0.085111, 0.929085,
		-0.669471, -0.717148, -0.193666,
		0.649809, -0.691704, 0.315111,
		44.111187, 33.871452, 24.013493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021946, 33.993328, 23.774483>,  <43.656322, 34.355644, 23.792915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021946, 33.993328, 23.774483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.644444, 33.963276, 23.645691>,  <42.417942, 33.945244, 23.568415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.644444, 33.963276, 23.645691>,  <43.021946, 33.993328, 23.774483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644444, 33.963276, 23.645691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328185, -0.094634, -0.939861,
		0.040145, -0.992673, 0.113970,
		-0.943760, -0.075134, -0.321981,
		42.361317, 33.940735, 23.549097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923737, 33.361584, 23.245621>,  <43.021946, 33.993328, 23.774483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923737, 33.361584, 23.245621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.644276, 33.637466, 23.169527>,  <42.476601, 33.802998, 23.123871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.644276, 33.637466, 23.169527>,  <42.923737, 33.361584, 23.245621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644276, 33.637466, 23.169527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265922, 0.003485, -0.963988,
		-0.664210, -0.724077, -0.185844,
		-0.698649, 0.689710, -0.190233,
		42.434681, 33.844379, 23.112457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947189, 33.269012, 22.549919>,  <42.923737, 33.361584, 23.245621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947189, 33.269012, 22.549919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.726719, 33.596050, 22.616554>,  <42.594437, 33.792271, 22.656534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.726719, 33.596050, 22.616554>,  <42.947189, 33.269012, 22.549919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726719, 33.596050, 22.616554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068991, 0.243623, -0.967413,
		-0.831532, -0.521722, -0.190686,
		-0.551176, 0.817590, 0.166586,
		42.561367, 33.841328, 22.666531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291424, 33.220005, 22.057653>,  <42.947189, 33.269012, 22.549919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291424, 33.220005, 22.057653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.387066, 33.591972, 22.169432>,  <42.444450, 33.815151, 22.236498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.387066, 33.591972, 22.169432>,  <42.291424, 33.220005, 22.057653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387066, 33.591972, 22.169432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095119, 0.308841, -0.946345,
		-0.966324, 0.199693, 0.162298,
		0.239103, 0.929914, 0.279445,
		42.458797, 33.870945, 22.253265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757767, 33.734177, 21.851650>,  <42.291424, 33.220005, 22.057653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757767, 33.734177, 21.851650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.110359, 33.917461, 21.897314>,  <42.321915, 34.027431, 21.924713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.110359, 33.917461, 21.897314>,  <41.757767, 33.734177, 21.851650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110359, 33.917461, 21.897314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025661, 0.194918, -0.980484,
		-0.471520, 0.867208, 0.160058,
		0.881482, 0.458211, 0.114161,
		42.374805, 34.054924, 21.931562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723503, 34.367596, 21.536608>,  <41.757767, 33.734177, 21.851650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723503, 34.367596, 21.536608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.120731, 34.323792, 21.553679>,  <42.359070, 34.297508, 21.563921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.120731, 34.323792, 21.553679>,  <41.723503, 34.367596, 21.536608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120731, 34.323792, 21.553679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082584, 0.391799, -0.916337,
		0.083628, 0.913511, 0.398127,
		0.993069, -0.109510, 0.042676,
		42.418652, 34.290939, 21.566481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004208, 34.978542, 21.202679>,  <41.723503, 34.367596, 21.536608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004208, 34.978542, 21.202679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.320557, 34.734528, 21.222183>,  <42.510365, 34.588120, 21.233887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.320557, 34.734528, 21.222183>,  <42.004208, 34.978542, 21.202679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320557, 34.734528, 21.222183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166670, 0.138037, -0.976303,
		0.588854, 0.780253, 0.210844,
		0.790868, -0.610041, 0.048761,
		42.557816, 34.551514, 21.236811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513981, 35.329639, 20.792534>,  <42.004208, 34.978542, 21.202679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513981, 35.329639, 20.792534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.648918, 34.953438, 20.808842>,  <42.729881, 34.727718, 20.818626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.648918, 34.953438, 20.808842>,  <42.513981, 35.329639, 20.792534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648918, 34.953438, 20.808842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270951, 0.055527, -0.960990,
		0.901547, 0.335226, 0.273561,
		0.337339, -0.940500, 0.040769,
		42.750118, 34.671288, 20.821072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038639, 35.377728, 20.304432>,  <42.513981, 35.329639, 20.792534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038639, 35.377728, 20.304432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.001522, 34.987885, 20.385939>,  <42.979252, 34.753979, 20.434843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.001522, 34.987885, 20.385939>,  <43.038639, 35.377728, 20.304432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001522, 34.987885, 20.385939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452732, -0.223573, -0.863162,
		0.886805, 0.012153, 0.461985,
		-0.092797, -0.974612, 0.203768,
		42.973682, 34.695499, 20.447069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796597, 35.003857, 20.180286>,  <43.038639, 35.377728, 20.304432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796597, 35.003857, 20.180286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.476715, 34.769035, 20.129948>,  <43.284786, 34.628143, 20.099745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.476715, 34.769035, 20.129948>,  <43.796597, 35.003857, 20.180286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476715, 34.769035, 20.129948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362028, -0.304282, -0.881106,
		0.478964, -0.750186, 0.455866,
		-0.799706, -0.587054, -0.125848,
		43.236805, 34.592918, 20.092194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060146, 34.323090, 19.979708>,  <43.796597, 35.003857, 20.180286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060146, 34.323090, 19.979708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.681538, 34.370564, 19.859701>,  <43.454372, 34.399048, 19.787697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.681538, 34.370564, 19.859701>,  <44.060146, 34.323090, 19.979708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681538, 34.370564, 19.859701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212418, -0.470679, -0.856353,
		-0.242846, -0.874286, 0.420298,
		-0.946523, 0.118683, -0.300016,
		43.397579, 34.406170, 19.769695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788750, 33.655918, 19.768816>,  <44.060146, 34.323090, 19.979708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788750, 33.655918, 19.768816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.544304, 33.923374, 19.599367>,  <43.397636, 34.083847, 19.497698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.544304, 33.923374, 19.599367>,  <43.788750, 33.655918, 19.768816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544304, 33.923374, 19.599367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019289, -0.547611, -0.836511,
		-0.791306, -0.503034, 0.347551,
		-0.611116, 0.668640, -0.423625,
		43.360970, 34.123966, 19.472281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323044, 33.207203, 19.307453>,  <43.788750, 33.655918, 19.768816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323044, 33.207203, 19.307453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.262020, 33.582779, 19.184084>,  <43.225407, 33.808125, 19.110062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.262020, 33.582779, 19.184084>,  <43.323044, 33.207203, 19.307453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262020, 33.582779, 19.184084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067029, -0.321188, -0.944641,
		-0.986018, -0.123443, 0.111937,
		-0.152562, 0.938935, -0.308423,
		43.216251, 33.864460, 19.091557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771271, 32.787804, 19.505894>,  <43.323044, 33.207203, 19.307453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771271, 32.787804, 19.505894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.465290, 32.725941, 19.255795>,  <42.281704, 32.688824, 19.105734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.465290, 32.725941, 19.255795>,  <42.771271, 32.787804, 19.505894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465290, 32.725941, 19.255795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642235, 0.256822, 0.722202,
		0.048884, 0.954004, -0.295781,
		-0.764947, -0.154657, -0.625250,
		42.235806, 32.679543, 19.068220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280819, 33.384182, 19.476534>,  <42.771271, 32.787804, 19.505894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280819, 33.384182, 19.476534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.050652, 33.077553, 19.362507>,  <41.912552, 32.893574, 19.294090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.050652, 33.077553, 19.362507>,  <42.280819, 33.384182, 19.476534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050652, 33.077553, 19.362507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723427, 0.314465, 0.614626,
		-0.381513, 0.559890, -0.735508,
		-0.575414, -0.766574, -0.285067,
		41.878029, 32.847580, 19.276987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585468, 33.639038, 19.331858>,  <42.280819, 33.384182, 19.476534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585468, 33.639038, 19.331858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.563171, 33.250610, 19.424732>,  <41.549793, 33.017551, 19.480457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.563171, 33.250610, 19.424732>,  <41.585468, 33.639038, 19.331858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563171, 33.250610, 19.424732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739673, 0.196366, 0.643680,
		-0.670654, -0.135861, -0.729223,
		-0.055743, -0.971073, 0.232186,
		41.546448, 32.959290, 19.494389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805225, 33.448357, 19.285807>,  <41.585468, 33.639038, 19.331858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805225, 33.448357, 19.285807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.972027, 33.162010, 19.509823>,  <41.072105, 32.990204, 19.644232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.972027, 33.162010, 19.509823>,  <40.805225, 33.448357, 19.285807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972027, 33.162010, 19.509823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824184, -0.038051, 0.565042,
		-0.383185, -0.697199, -0.605874,
		0.417001, -0.715867, 0.560040,
		41.097126, 32.947250, 19.677835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244865, 33.014046, 19.535227>,  <40.805225, 33.448357, 19.285807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244865, 33.014046, 19.535227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534481, 32.881924, 19.777439>,  <40.708252, 32.802650, 19.922766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534481, 32.881924, 19.777439>,  <40.244865, 33.014046, 19.535227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534481, 32.881924, 19.777439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689183, -0.382301, 0.615526,
		0.028183, -0.862986, -0.504442,
		0.724039, -0.330306, 0.605529,
		40.751694, 32.782833, 19.959099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929760, 32.405289, 19.826370>,  <40.244865, 33.014046, 19.535227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929760, 32.405289, 19.826370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.238625, 32.503845, 20.060658>,  <40.423943, 32.562981, 20.201229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.238625, 32.503845, 20.060658>,  <39.929760, 32.405289, 19.826370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238625, 32.503845, 20.060658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550845, -0.199955, 0.810301,
		0.316770, -0.948319, -0.018673,
		0.772157, 0.246393, 0.585717,
		40.470272, 32.577763, 20.236372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946968, 31.842400, 20.374514>,  <39.929760, 32.405289, 19.826370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946968, 31.842400, 20.374514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.122162, 32.181374, 20.494534>,  <40.227276, 32.384758, 20.566545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.122162, 32.181374, 20.494534>,  <39.946968, 31.842400, 20.374514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122162, 32.181374, 20.494534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476631, -0.064095, 0.876764,
		0.762231, -0.527018, 0.375840,
		0.437981, 0.847433, 0.300048,
		40.253555, 32.435604, 20.584549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244289, 31.772652, 21.014008>,  <39.946968, 31.842400, 20.374514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244289, 31.772652, 21.014008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.214855, 32.171562, 21.016031>,  <40.197197, 32.410908, 21.017244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.214855, 32.171562, 21.016031>,  <40.244289, 31.772652, 21.014008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214855, 32.171562, 21.016031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634901, -0.050756, 0.770924,
		0.769081, 0.053516, 0.636907,
		-0.073584, 0.997276, 0.005058,
		40.192780, 32.470745, 21.017550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455097, 31.088034, 21.305754>,  <40.244289, 31.772652, 21.014008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455097, 31.088034, 21.305754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.142124, 30.859528, 21.206593>,  <39.954342, 30.722424, 21.147095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.142124, 30.859528, 21.206593>,  <40.455097, 31.088034, 21.305754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142124, 30.859528, 21.206593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286698, 0.022948, -0.957746,
		0.552818, -0.820443, 0.145826,
		-0.782430, -0.571268, -0.247905,
		39.907394, 30.688147, 21.132221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716423, 30.459576, 20.933701>,  <40.455097, 31.088034, 21.305754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716423, 30.459576, 20.933701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.334606, 30.488197, 20.817963>,  <40.105515, 30.505371, 20.748520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.334606, 30.488197, 20.817963>,  <40.716423, 30.459576, 20.933701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334606, 30.488197, 20.817963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282141, -0.096114, -0.954546,
		-0.096114, -0.992795, 0.071556,
		0.954546, -0.071556, 0.289346,
		40.048241, 30.509665, 20.731159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709270, 29.925703, 20.491352>,  <40.716423, 30.459576, 20.933701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709270, 29.925703, 20.491352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378796, 30.134899, 20.407547>,  <40.180511, 30.260416, 20.357264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378796, 30.134899, 20.407547>,  <40.709270, 29.925703, 20.491352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378796, 30.134899, 20.407547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189999, -0.091448, -0.977516,
		-0.530389, -0.847420, -0.023813,
		-0.826189, 0.522988, -0.209512,
		40.130939, 30.291796, 20.344694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346321, 29.624903, 19.956976>,  <40.709270, 29.925703, 20.491352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346321, 29.624903, 19.956976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.203617, 29.998199, 19.940094>,  <40.117996, 30.222178, 19.929964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.203617, 29.998199, 19.940094>,  <40.346321, 29.624903, 19.956976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203617, 29.998199, 19.940094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010721, -0.041086, -0.999098,
		-0.934136, -0.356888, 0.004652,
		-0.356757, 0.933243, -0.042206,
		40.096588, 30.278172, 19.927433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884922, 29.571438, 19.453861>,  <40.346321, 29.624903, 19.956976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884922, 29.571438, 19.453861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.965183, 29.962738, 19.474892>,  <40.013340, 30.197519, 19.487511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.965183, 29.962738, 19.474892>,  <39.884922, 29.571438, 19.453861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965183, 29.962738, 19.474892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157997, 0.020652, -0.987224,
		-0.966839, 0.206392, -0.150417,
		0.200649, 0.978252, 0.052576,
		40.025379, 30.256214, 19.490665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439110, 29.907984, 18.947157>,  <39.884922, 29.571438, 19.453861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439110, 29.907984, 18.947157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.736900, 30.166086, 19.015743>,  <39.915573, 30.320948, 19.056894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.736900, 30.166086, 19.015743>,  <39.439110, 29.907984, 18.947157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736900, 30.166086, 19.015743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096865, 0.149713, -0.983973,
		-0.660584, 0.749154, 0.048956,
		0.744477, 0.645255, 0.171465,
		39.960243, 30.359663, 19.067183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318321, 30.377611, 18.488541>,  <39.439110, 29.907984, 18.947157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318321, 30.377611, 18.488541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.690838, 30.475182, 18.596766>,  <39.914349, 30.533724, 18.661701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.690838, 30.475182, 18.596766>,  <39.318321, 30.377611, 18.488541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690838, 30.475182, 18.596766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207066, 0.256604, -0.944075,
		-0.299711, 0.935230, 0.188464,
		0.931288, 0.243926, 0.270561,
		39.970222, 30.548359, 18.677935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474262, 30.951815, 18.253298>,  <39.318321, 30.377611, 18.488541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474262, 30.951815, 18.253298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851528, 30.834435, 18.315676>,  <40.077888, 30.764006, 18.353102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851528, 30.834435, 18.315676>,  <39.474262, 30.951815, 18.253298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851528, 30.834435, 18.315676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261370, 0.365257, -0.893462,
		0.205227, 0.883445, 0.421198,
		0.943169, -0.293451, 0.155945,
		40.134480, 30.746399, 18.362459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967152, 31.519411, 18.089676>,  <39.474262, 30.951815, 18.253298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967152, 31.519411, 18.089676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.150887, 31.169846, 18.026079>,  <40.261127, 30.960106, 17.987921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.150887, 31.169846, 18.026079>,  <39.967152, 31.519411, 18.089676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150887, 31.169846, 18.026079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247613, 0.297874, -0.921932,
		0.853050, 0.384112, 0.353218,
		0.459340, -0.873916, -0.158991,
		40.288689, 30.907671, 17.978382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.465504, 31.291588, 33.249401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587109, 31.406563, 33.612709>,  <36.660072, 31.475548, 33.830692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587109, 31.406563, 33.612709>,  <36.465504, 31.291588, 33.249401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587109, 31.406563, 33.612709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262194, -0.891332, 0.369839,
		0.915878, -0.350578, -0.195608,
		0.304009, 0.287440, 0.908271,
		36.678310, 31.492794, 33.885189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270733, 31.338760, 33.303085>,  <36.465504, 31.291588, 33.249401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270733, 31.338760, 33.303085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.239525, 30.956263, 33.190296>,  <37.220798, 30.726765, 33.122623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.239525, 30.956263, 33.190296>,  <37.270733, 31.338760, 33.303085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239525, 30.956263, 33.190296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460322, 0.285435, -0.840613,
		0.884317, 0.064209, -0.462451,
		-0.078025, -0.956245, -0.281972,
		37.216118, 30.669390, 33.105705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623684, 31.242062, 32.598392>,  <37.270733, 31.338760, 33.303085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623684, 31.242062, 32.598392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.334255, 30.972769, 32.659317>,  <37.160599, 30.811193, 32.695873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.334255, 30.972769, 32.659317>,  <37.623684, 31.242062, 32.598392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334255, 30.972769, 32.659317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371597, 0.193975, -0.907904,
		0.581686, -0.713534, -0.390526,
		-0.723572, -0.673233, 0.152314,
		37.117184, 30.770800, 32.705009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698986, 30.780544, 32.003925>,  <37.623684, 31.242062, 32.598392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698986, 30.780544, 32.003925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339073, 30.664536, 32.134331>,  <37.123127, 30.594931, 32.212574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339073, 30.664536, 32.134331>,  <37.698986, 30.780544, 32.003925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339073, 30.664536, 32.134331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349044, 0.030047, -0.936625,
		0.261846, -0.956548, -0.128267,
		-0.899780, -0.290023, 0.326009,
		37.069138, 30.577528, 32.232132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446087, 30.131044, 31.685835>,  <37.698986, 30.780544, 32.003925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446087, 30.131044, 31.685835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127884, 30.328650, 31.826183>,  <36.936962, 30.447212, 31.910393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127884, 30.328650, 31.826183>,  <37.446087, 30.131044, 31.685835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127884, 30.328650, 31.826183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443237, -0.079590, -0.892864,
		-0.413162, -0.865803, 0.282280,
		-0.795511, 0.494015, 0.350873,
		36.889229, 30.476854, 31.931446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927658, 29.785774, 31.430132>,  <37.446087, 30.131044, 31.685835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927658, 29.785774, 31.430132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740055, 30.126390, 31.523867>,  <36.627495, 30.330759, 31.580107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740055, 30.126390, 31.523867>,  <36.927658, 29.785774, 31.430132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740055, 30.126390, 31.523867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530988, -0.059845, -0.845263,
		-0.705751, -0.520864, 0.480225,
		-0.469006, 0.851539, 0.234337,
		36.599354, 30.381853, 31.594168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212914, 29.692097, 31.298298>,  <36.927658, 29.785774, 31.430132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212914, 29.692097, 31.298298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296829, 30.083067, 31.288239>,  <36.347179, 30.317648, 31.282202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296829, 30.083067, 31.288239>,  <36.212914, 29.692097, 31.298298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296829, 30.083067, 31.288239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385716, 0.059096, -0.920723,
		-0.898450, 0.202857, 0.389405,
		0.209787, 0.977423, -0.025150,
		36.359764, 30.376293, 31.280693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698357, 29.998640, 31.025581>,  <36.212914, 29.692097, 31.298298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698357, 29.998640, 31.025581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955048, 30.299551, 30.965895>,  <36.109062, 30.480097, 30.930082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955048, 30.299551, 30.965895>,  <35.698357, 29.998640, 31.025581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955048, 30.299551, 30.965895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298056, 0.065363, -0.952308,
		-0.706645, 0.655598, 0.266166,
		0.641729, 0.752275, -0.149217,
		36.147568, 30.525234, 30.921129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364002, 30.527966, 30.566191>,  <35.698357, 29.998640, 31.025581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364002, 30.527966, 30.566191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741722, 30.649834, 30.516420>,  <35.968353, 30.722954, 30.486557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741722, 30.649834, 30.516420>,  <35.364002, 30.527966, 30.566191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741722, 30.649834, 30.516420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156751, 0.083942, -0.984064,
		-0.289370, 0.948752, 0.127024,
		0.944296, 0.304670, -0.124427,
		36.025009, 30.741234, 30.479092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424866, 31.118391, 30.085283>,  <35.364002, 30.527966, 30.566191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424866, 31.118391, 30.085283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789974, 30.955069, 30.080626>,  <36.009041, 30.857075, 30.077831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789974, 30.955069, 30.080626>,  <35.424866, 31.118391, 30.085283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789974, 30.955069, 30.080626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000979, 0.030699, -0.999528,
		0.408473, 0.912328, 0.028421,
		0.912770, -0.408308, -0.011647,
		36.063805, 30.832577, 30.077131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673527, 31.396957, 29.378494>,  <35.424866, 31.118391, 30.085283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673527, 31.396957, 29.378494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945427, 31.120888, 29.477774>,  <36.108566, 30.955246, 29.537340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945427, 31.120888, 29.477774>,  <35.673527, 31.396957, 29.378494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945427, 31.120888, 29.477774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211923, -0.139144, -0.967330,
		0.702161, 0.710140, 0.051681,
		0.679749, -0.690174, 0.248197,
		36.149353, 30.913836, 29.552233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440121, 31.617887, 29.143604>,  <35.673527, 31.396957, 29.378494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440121, 31.617887, 29.143604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423370, 31.220848, 29.189209>,  <36.413319, 30.982624, 29.216572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423370, 31.220848, 29.189209>,  <36.440121, 31.617887, 29.143604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423370, 31.220848, 29.189209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213827, -0.120374, -0.969427,
		0.975974, -0.016217, 0.217285,
		-0.041877, -0.992596, 0.114014,
		36.410809, 30.923069, 29.223413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111046, 32.044945, 28.944757>,  <36.440121, 31.617887, 29.143604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111046, 32.044945, 28.944757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869202, 32.337509, 28.818590>,  <36.724094, 32.513046, 28.742889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869202, 32.337509, 28.818590>,  <37.111046, 32.044945, 28.944757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869202, 32.337509, 28.818590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154825, 0.280526, 0.947278,
		0.781329, 0.621568, -0.056368,
		-0.604610, 0.731409, -0.315417,
		36.687820, 32.556931, 28.723965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432987, 32.726795, 29.079172>,  <37.111046, 32.044945, 28.944757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432987, 32.726795, 29.079172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.033188, 32.714649, 29.082935>,  <36.793308, 32.707363, 29.085194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.033188, 32.714649, 29.082935>,  <37.432987, 32.726795, 29.079172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033188, 32.714649, 29.082935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004747, 0.435205, 0.900319,
		-0.031429, 0.899819, -0.435129,
		-0.999495, -0.030361, 0.009406,
		36.733341, 32.705540, 29.085756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384239, 33.068989, 29.662798>,  <37.432987, 32.726795, 29.079172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384239, 33.068989, 29.662798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009941, 32.946728, 29.592413>,  <36.785362, 32.873371, 29.550182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009941, 32.946728, 29.592413>,  <37.384239, 33.068989, 29.662798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009941, 32.946728, 29.592413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278870, 0.335785, 0.899711,
		-0.215916, 0.890967, -0.399446,
		-0.935741, -0.305655, -0.175963,
		36.729218, 32.855030, 29.539623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935040, 33.692410, 29.730831>,  <37.384239, 33.068989, 29.662798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935040, 33.692410, 29.730831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723846, 33.360928, 29.805115>,  <36.597130, 33.162041, 29.849686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723846, 33.360928, 29.805115>,  <36.935040, 33.692410, 29.730831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723846, 33.360928, 29.805115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305135, 0.389181, 0.869155,
		-0.792546, 0.402230, -0.458346,
		-0.527980, -0.828703, 0.185709,
		36.565453, 33.112316, 29.860826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253063, 33.912754, 29.769695>,  <36.935040, 33.692410, 29.730831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253063, 33.912754, 29.769695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225571, 33.558060, 29.952553>,  <36.209076, 33.345245, 30.062267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225571, 33.558060, 29.952553>,  <36.253063, 33.912754, 29.769695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225571, 33.558060, 29.952553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426285, 0.440394, 0.790149,
		-0.901974, -0.140563, -0.408271,
		-0.068734, -0.886733, 0.457144,
		36.204952, 33.292038, 30.089697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667904, 33.946705, 30.179083>,  <36.253063, 33.912754, 29.769695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667904, 33.946705, 30.179083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870728, 33.644127, 30.344339>,  <35.992420, 33.462582, 30.443493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870728, 33.644127, 30.344339>,  <35.667904, 33.946705, 30.179083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870728, 33.644127, 30.344339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277708, 0.310389, 0.909141,
		-0.815949, -0.575718, -0.052686,
		0.507056, -0.756444, 0.413143,
		36.022846, 33.417194, 30.468283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243877, 33.852779, 30.800459>,  <35.667904, 33.946705, 30.179083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243877, 33.852779, 30.800459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586357, 33.667328, 30.891653>,  <35.791843, 33.556057, 30.946369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586357, 33.667328, 30.891653>,  <35.243877, 33.852779, 30.800459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586357, 33.667328, 30.891653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163931, 0.174685, 0.970882,
		-0.489953, -0.868640, 0.073562,
		0.856197, -0.463627, 0.227985,
		35.843216, 33.528240, 30.960049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228249, 33.532383, 31.491821>,  <35.243877, 33.852779, 30.800459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228249, 33.532383, 31.491821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615299, 33.617805, 31.438026>,  <35.847530, 33.669060, 31.405750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615299, 33.617805, 31.438026>,  <35.228249, 33.532383, 31.491821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615299, 33.617805, 31.438026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033405, 0.419809, 0.906997,
		0.250156, -0.882129, 0.399086,
		0.967629, 0.213560, -0.134485,
		35.905586, 33.681873, 31.397680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535187, 33.443680, 32.113754>,  <35.228249, 33.532383, 31.491821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535187, 33.443680, 32.113754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782063, 33.705315, 31.938828>,  <35.930187, 33.862297, 31.833872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782063, 33.705315, 31.938828>,  <35.535187, 33.443680, 32.113754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782063, 33.705315, 31.938828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034374, 0.577688, 0.815533,
		0.786061, -0.488309, 0.379029,
		0.617193, 0.654087, -0.437313,
		35.967220, 33.901543, 31.807634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986389, 33.603416, 32.588814>,  <35.535187, 33.443680, 32.113754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986389, 33.603416, 32.588814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014084, 33.896088, 32.317566>,  <36.030701, 34.071693, 32.154816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014084, 33.896088, 32.317566>,  <35.986389, 33.603416, 32.588814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014084, 33.896088, 32.317566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006738, 0.680079, 0.733108,
		0.997578, -0.046189, 0.052016,
		0.069237, 0.731683, -0.678120,
		36.034855, 34.115593, 32.114128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437119, 34.144054, 32.945950>,  <35.986389, 33.603416, 32.588814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437119, 34.144054, 32.945950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.283756, 34.364250, 32.649311>,  <36.191738, 34.496368, 32.471329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.283756, 34.364250, 32.649311>,  <36.437119, 34.144054, 32.945950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283756, 34.364250, 32.649311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067908, 0.817585, 0.571790,
		0.921079, 0.168869, -0.350851,
		-0.383408, 0.550489, -0.741593,
		36.168736, 34.529396, 32.426834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782421, 34.789421, 33.147903>,  <36.437119, 34.144054, 32.945950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782421, 34.789421, 33.147903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484016, 34.889156, 32.900906>,  <36.304974, 34.948997, 32.752705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484016, 34.889156, 32.900906>,  <36.782421, 34.789421, 33.147903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484016, 34.889156, 32.900906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099300, 0.875242, 0.473382,
		0.658492, 0.414464, -0.628178,
		-0.746008, 0.249340, -0.617497,
		36.260216, 34.963959, 32.715656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004158, 35.455265, 32.800114>,  <36.782421, 34.789421, 33.147903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004158, 35.455265, 32.800114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606232, 35.440762, 32.762123>,  <36.367474, 35.432060, 32.739330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606232, 35.440762, 32.762123>,  <37.004158, 35.455265, 32.800114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606232, 35.440762, 32.762123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082397, 0.834779, 0.544385,
		0.059541, 0.549390, -0.833442,
		-0.994819, -0.036260, -0.094972,
		36.307785, 35.429882, 32.733631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776394, 36.140598, 32.757553>,  <37.004158, 35.455265, 32.800114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776394, 36.140598, 32.757553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431519, 35.950924, 32.828850>,  <36.224594, 35.837120, 32.871628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431519, 35.950924, 32.828850>,  <36.776394, 36.140598, 32.757553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431519, 35.950924, 32.828850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358189, 0.819460, 0.447421,
		-0.358223, 0.321919, -0.876382,
		-0.862193, -0.474187, 0.178241,
		36.172859, 35.808666, 32.882320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893143, 36.161976, 31.983091>,  <36.776394, 36.140598, 32.757553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893143, 36.161976, 31.983091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114841, 35.846893, 32.090672>,  <37.247860, 35.657845, 32.155220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114841, 35.846893, 32.090672>,  <36.893143, 36.161976, 31.983091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114841, 35.846893, 32.090672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706599, 0.616049, 0.348140,
		-0.439916, -0.002916, 0.898034,
		0.554248, -0.787702, 0.268949,
		37.281116, 35.610584, 32.171356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291550, 36.485264, 32.194382>,  <36.893143, 36.161976, 31.983091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291550, 36.485264, 32.194382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.674046, 36.531147, 32.302048>,  <36.903542, 36.558678, 32.366646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.674046, 36.531147, 32.302048>,  <36.291550, 36.485264, 32.194382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674046, 36.531147, 32.302048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290302, -0.257264, -0.921705,
		-0.036485, 0.959508, -0.279307,
		0.956239, 0.114712, 0.269161,
		36.960918, 36.565559, 32.382797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761520, 36.851620, 31.719753>,  <36.291550, 36.485264, 32.194382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761520, 36.851620, 31.719753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079979, 36.708221, 31.914742>,  <37.271053, 36.622181, 32.031734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079979, 36.708221, 31.914742>,  <36.761520, 36.851620, 31.719753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079979, 36.708221, 31.914742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460654, -0.163275, -0.872433,
		0.392357, 0.919141, 0.035153,
		0.796149, -0.358499, 0.487468,
		37.318825, 36.600674, 32.060982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237606, 36.698803, 31.190727>,  <36.761520, 36.851620, 31.719753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237606, 36.698803, 31.190727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479336, 36.579170, 31.486116>,  <37.624374, 36.507389, 31.663349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479336, 36.579170, 31.486116>,  <37.237606, 36.698803, 31.190727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479336, 36.579170, 31.486116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642313, -0.365517, -0.673670,
		0.471406, 0.881446, -0.028788,
		0.604327, -0.299081, 0.738471,
		37.660633, 36.489445, 31.707657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906971, 36.982693, 31.139027>,  <37.237606, 36.698803, 31.190727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906971, 36.982693, 31.139027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.967697, 36.654037, 31.358793>,  <38.004135, 36.456844, 31.490654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.967697, 36.654037, 31.358793>,  <37.906971, 36.982693, 31.139027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967697, 36.654037, 31.358793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599345, -0.365482, -0.712186,
		0.785962, 0.437414, 0.436958,
		0.151820, -0.821640, 0.549417,
		38.013245, 36.407547, 31.523619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641487, 36.854458, 30.975031>,  <37.906971, 36.982693, 31.139027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641487, 36.854458, 30.975031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.490654, 36.518757, 31.131729>,  <38.400154, 36.317337, 31.225748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.490654, 36.518757, 31.131729>,  <38.641487, 36.854458, 30.975031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490654, 36.518757, 31.131729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524218, -0.542097, -0.656754,
		0.763546, -0.042291, 0.644367,
		-0.377084, -0.839251, 0.391746,
		38.377529, 36.266983, 31.249252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254501, 36.434505, 31.070583>,  <38.641487, 36.854458, 30.975031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254501, 36.434505, 31.070583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937016, 36.191910, 31.051882>,  <38.746525, 36.046352, 31.040661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937016, 36.191910, 31.051882>,  <39.254501, 36.434505, 31.070583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937016, 36.191910, 31.051882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521546, -0.638970, -0.565427,
		0.313050, -0.473174, 0.823472,
		-0.793719, -0.606485, -0.046752,
		38.698898, 36.009964, 31.037857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548954, 35.735538, 31.072983>,  <39.254501, 36.434505, 31.070583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548954, 35.735538, 31.072983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.178677, 35.711815, 30.923542>,  <38.956512, 35.697582, 30.833878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.178677, 35.711815, 30.923542>,  <39.548954, 35.735538, 31.072983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178677, 35.711815, 30.923542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334725, -0.588513, -0.735943,
		-0.176221, -0.806309, 0.564634,
		-0.925692, -0.059309, -0.373600,
		38.900970, 35.694023, 30.811462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480270, 35.041458, 30.874388>,  <39.548954, 35.735538, 31.072983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480270, 35.041458, 30.874388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.185436, 35.210739, 30.663633>,  <39.008537, 35.312309, 30.537180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.185436, 35.210739, 30.663633>,  <39.480270, 35.041458, 30.874388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185436, 35.210739, 30.663633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140615, -0.666541, -0.732087,
		-0.660987, -0.613711, 0.431805,
		-0.737105, 0.423181, -0.526872,
		38.964310, 35.337700, 30.505568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090546, 34.580151, 30.729416>,  <39.480270, 35.041458, 30.874388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090546, 34.580151, 30.729416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995468, 34.848934, 30.448854>,  <38.938423, 35.010204, 30.280518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995468, 34.848934, 30.448854>,  <39.090546, 34.580151, 30.729416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995468, 34.848934, 30.448854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132380, -0.737772, -0.661943,
		-0.962277, -0.064488, 0.264319,
		-0.237695, 0.671962, -0.701404,
		38.924160, 35.050522, 30.238434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529705, 34.349499, 30.288643>,  <39.090546, 34.580151, 30.729416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529705, 34.349499, 30.288643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.675289, 34.630737, 30.044285>,  <38.762638, 34.799480, 29.897671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.675289, 34.630737, 30.044285>,  <38.529705, 34.349499, 30.288643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675289, 34.630737, 30.044285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187102, -0.587319, -0.787432,
		-0.912429, 0.400894, -0.082211,
		0.363960, 0.703094, -0.610895,
		38.784477, 34.841667, 29.861017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196301, 34.147896, 29.565332>,  <38.529705, 34.349499, 30.288643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196301, 34.147896, 29.565332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.473831, 34.423141, 29.480375>,  <38.640350, 34.588287, 29.429401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.473831, 34.423141, 29.480375>,  <38.196301, 34.147896, 29.565332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473831, 34.423141, 29.480375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078893, -0.365784, -0.927350,
		-0.715811, 0.626660, -0.308077,
		0.693823, 0.688113, -0.212394,
		38.681976, 34.629574, 29.416656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012379, 34.491829, 28.919573>,  <38.196301, 34.147896, 29.565332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012379, 34.491829, 28.919573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407234, 34.520023, 28.976982>,  <38.644146, 34.536938, 29.011427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407234, 34.520023, 28.976982>,  <38.012379, 34.491829, 28.919573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407234, 34.520023, 28.976982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152745, -0.150266, -0.976775,
		-0.047280, 0.986130, -0.159099,
		0.987134, 0.070483, 0.143522,
		38.703373, 34.541168, 29.020039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248325, 34.746300, 28.276831>,  <38.012379, 34.491829, 28.919573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248325, 34.746300, 28.276831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.574059, 34.571701, 28.429846>,  <38.769497, 34.466942, 28.521656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.574059, 34.571701, 28.429846>,  <38.248325, 34.746300, 28.276831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574059, 34.571701, 28.429846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319344, -0.213395, -0.923300,
		0.484647, 0.874034, -0.034382,
		0.814332, -0.436495, 0.382539,
		38.818359, 34.440754, 28.544607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716656, 35.039391, 27.856112>,  <38.248325, 34.746300, 28.276831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716656, 35.039391, 27.856112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934887, 34.765472, 28.049358>,  <39.065826, 34.601120, 28.165306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934887, 34.765472, 28.049358>,  <38.716656, 35.039391, 27.856112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934887, 34.765472, 28.049358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481411, -0.215787, -0.849517,
		0.685996, 0.696054, 0.211940,
		0.545576, -0.684795, 0.483117,
		39.098560, 34.560032, 28.194294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382389, 35.218784, 27.777456>,  <38.716656, 35.039391, 27.856112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382389, 35.218784, 27.777456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387260, 34.829029, 27.867277>,  <39.390182, 34.595177, 27.921169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387260, 34.829029, 27.867277>,  <39.382389, 35.218784, 27.777456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387260, 34.829029, 27.867277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588090, -0.174641, -0.789715,
		0.808704, 0.141676, 0.570900,
		0.012181, -0.974386, 0.224551,
		39.390915, 34.536713, 27.934643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046570, 35.047325, 27.873796>,  <39.382389, 35.218784, 27.777456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046570, 35.047325, 27.873796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.881691, 34.700497, 27.761875>,  <39.782764, 34.492401, 27.694723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.881691, 34.700497, 27.761875>,  <40.046570, 35.047325, 27.873796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881691, 34.700497, 27.761875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559791, 0.001281, -0.828633,
		0.718840, -0.498188, 0.484848,
		-0.412194, -0.867068, -0.279802,
		39.758034, 34.440376, 27.677935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624565, 34.523678, 27.757957>,  <40.046570, 35.047325, 27.873796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624565, 34.523678, 27.757957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.327393, 34.377087, 27.533903>,  <40.149090, 34.289131, 27.399471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.327393, 34.377087, 27.533903>,  <40.624565, 34.523678, 27.757957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327393, 34.377087, 27.533903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613767, -0.039041, -0.788521,
		0.267109, -0.929607, 0.253938,
		-0.742929, -0.366480, -0.560134,
		40.104515, 34.267143, 27.365864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950405, 34.064369, 27.234335>,  <40.624565, 34.523678, 27.757957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950405, 34.064369, 27.234335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.580727, 34.091721, 27.084040>,  <40.358917, 34.108131, 26.993862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.580727, 34.091721, 27.084040>,  <40.950405, 34.064369, 27.234335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580727, 34.091721, 27.084040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340466, -0.298206, -0.891715,
		-0.173023, -0.952049, 0.252321,
		-0.924200, 0.068380, -0.375736,
		40.303467, 34.112236, 26.971319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728134, 33.386417, 26.898563>,  <40.950405, 34.064369, 27.234335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728134, 33.386417, 26.898563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.573105, 33.710033, 26.721819>,  <40.480087, 33.904202, 26.615772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.573105, 33.710033, 26.721819>,  <40.728134, 33.386417, 26.898563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573105, 33.710033, 26.721819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343778, -0.317896, -0.883606,
		-0.855337, -0.494366, -0.154921,
		-0.387576, 0.809039, -0.441860,
		40.456833, 33.952744, 26.589260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527065, 33.099880, 26.328390>,  <40.728134, 33.386417, 26.898563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527065, 33.099880, 26.328390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.511589, 33.492790, 26.255032>,  <40.502304, 33.728539, 26.211016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.511589, 33.492790, 26.255032>,  <40.527065, 33.099880, 26.328390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511589, 33.492790, 26.255032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453995, -0.146218, -0.878925,
		-0.890164, -0.117267, -0.440292,
		-0.038690, 0.982277, -0.183396,
		40.499981, 33.787472, 26.200012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222740, 33.149948, 25.786793>,  <40.527065, 33.099880, 26.328390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222740, 33.149948, 25.786793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.433022, 33.489426, 25.809958>,  <40.559193, 33.693111, 25.823856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.433022, 33.489426, 25.809958>,  <40.222740, 33.149948, 25.786793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433022, 33.489426, 25.809958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394276, -0.182769, -0.900634,
		-0.753776, 0.496303, -0.430702,
		0.525707, 0.848692, 0.057914,
		40.590733, 33.744034, 25.827332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273861, 33.435886, 25.139275>,  <40.222740, 33.149948, 25.786793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273861, 33.435886, 25.139275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.565063, 33.653316, 25.306385>,  <40.739784, 33.783775, 25.406651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.565063, 33.653316, 25.306385>,  <40.273861, 33.435886, 25.139275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565063, 33.653316, 25.306385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460705, 0.063387, -0.885287,
		-0.507701, 0.836964, -0.204281,
		0.728005, 0.543575, 0.417775,
		40.783466, 33.816387, 25.431717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409870, 34.076714, 24.615578>,  <40.273861, 33.435886, 25.139275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409870, 34.076714, 24.615578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.724586, 34.047462, 24.860727>,  <40.913414, 34.029911, 25.007818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.724586, 34.047462, 24.860727>,  <40.409870, 34.076714, 24.615578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724586, 34.047462, 24.860727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617223, 0.092960, -0.781278,
		0.000163, 0.992980, 0.118279,
		0.786789, -0.073132, 0.612875,
		40.960625, 34.025524, 25.044590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839058, 34.744282, 24.562794>,  <40.409870, 34.076714, 24.615578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839058, 34.744282, 24.562794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.064583, 34.445004, 24.702692>,  <41.199898, 34.265438, 24.786631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.064583, 34.445004, 24.702692>,  <40.839058, 34.744282, 24.562794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064583, 34.445004, 24.702692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662927, 0.157405, -0.731951,
		0.492591, 0.644536, 0.584745,
		0.563810, -0.748196, 0.349744,
		41.233727, 34.220543, 24.807615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543499, 34.973160, 24.498335>,  <40.839058, 34.744282, 24.562794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543499, 34.973160, 24.498335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.559280, 34.574047, 24.519817>,  <41.568748, 34.334579, 24.532707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.559280, 34.574047, 24.519817>,  <41.543499, 34.973160, 24.498335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559280, 34.574047, 24.519817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693765, -0.011329, -0.720112,
		0.719120, 0.065667, 0.691776,
		0.039451, -0.997777, 0.053704,
		41.571117, 34.274715, 24.535929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287857, 34.754768, 24.576937>,  <41.543499, 34.973160, 24.498335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287857, 34.754768, 24.576937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.089283, 34.437973, 24.434782>,  <41.970139, 34.247894, 24.349489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.089283, 34.437973, 24.434782>,  <42.287857, 34.754768, 24.576937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089283, 34.437973, 24.434782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573944, 0.007685, -0.818859,
		0.651261, -0.610483, 0.450744,
		-0.496435, -0.791992, -0.355388,
		41.940353, 34.200375, 24.328165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714420, 34.319820, 24.365345>,  <42.287857, 34.754768, 24.576937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714420, 34.319820, 24.365345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.398960, 34.195873, 24.152925>,  <42.209682, 34.121506, 24.025475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.398960, 34.195873, 24.152925>,  <42.714420, 34.319820, 24.365345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398960, 34.195873, 24.152925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582654, -0.100870, -0.806436,
		0.196319, -0.945415, 0.260095,
		-0.788653, -0.309865, -0.531047,
		42.162365, 34.102913, 23.993610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104069, 33.572941, 24.489630>,  <42.714420, 34.319820, 24.365345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104069, 33.572941, 24.489630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.488613, 33.463604, 24.502687>,  <43.719341, 33.398003, 24.510523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.488613, 33.463604, 24.502687>,  <43.104069, 33.572941, 24.489630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488613, 33.463604, 24.502687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122068, -0.316987, 0.940542,
		-0.246741, -0.908187, -0.338106,
		0.961363, -0.273342, 0.032647,
		43.777023, 33.381599, 24.512482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143566, 32.791557, 24.649519>,  <43.104069, 33.572941, 24.489630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143566, 32.791557, 24.649519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.457329, 33.001011, 24.782494>,  <43.645588, 33.126682, 24.862278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.457329, 33.001011, 24.782494>,  <43.143566, 32.791557, 24.649519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457329, 33.001011, 24.782494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102748, -0.418865, 0.902217,
		0.611678, -0.741861, -0.274757,
		0.784405, 0.523636, 0.332436,
		43.692650, 33.158100, 24.882225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600952, 32.282917, 24.895985>,  <43.143566, 32.791557, 24.649519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600952, 32.282917, 24.895985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.680801, 32.634510, 25.069208>,  <43.728710, 32.845467, 25.173141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.680801, 32.634510, 25.069208>,  <43.600952, 32.282917, 24.895985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680801, 32.634510, 25.069208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207688, -0.393958, 0.895356,
		0.957609, -0.268676, 0.103911,
		0.199624, 0.878983, 0.433059,
		43.740688, 32.898205, 25.199125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230740, 32.194847, 25.437840>,  <43.600952, 32.282917, 24.895985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230740, 32.194847, 25.437840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.042023, 32.535858, 25.527826>,  <43.928795, 32.740463, 25.581820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.042023, 32.535858, 25.527826>,  <44.230740, 32.194847, 25.437840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042023, 32.535858, 25.527826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140326, -0.324497, 0.935420,
		0.870474, 0.409751, 0.272725,
		-0.471788, 0.852529, 0.224968,
		43.900486, 32.791618, 25.595316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458729, 32.249184, 26.063103>,  <44.230740, 32.194847, 25.437840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458729, 32.249184, 26.063103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.165039, 32.520721, 26.066648>,  <43.988823, 32.683643, 26.068775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.165039, 32.520721, 26.066648>,  <44.458729, 32.249184, 26.063103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165039, 32.520721, 26.066648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183150, -0.210630, 0.960256,
		0.653732, 0.703423, 0.278981,
		-0.734228, 0.678845, 0.008863,
		43.944771, 32.724377, 26.069307>
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
