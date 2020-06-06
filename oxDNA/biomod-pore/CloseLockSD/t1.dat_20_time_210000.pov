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
	<4.489544, 14.961603, 15.265388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.246823, 15.033875, 14.955770>,  <4.101191, 15.077239, 14.770000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.246823, 15.033875, 14.955770>,  <4.489544, 14.961603, 15.265388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.246823, 15.033875, 14.955770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294424, -0.853458, -0.430028,
		-0.738313, -0.488839, 0.464683,
		-0.606802, 0.180681, -0.774045,
		4.064783, 15.088079, 14.723557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.892686, 14.530160, 15.165936>,  <4.489544, 14.961603, 15.265388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.892686, 14.530160, 15.165936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.034465, 14.630209, 14.805535>,  <4.119533, 14.690238, 14.589294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.034465, 14.630209, 14.805535>,  <3.892686, 14.530160, 15.165936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.034465, 14.630209, 14.805535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195639, -0.962072, -0.190112,
		-0.914380, -0.108887, -0.389938,
		0.354448, 0.250122, -0.901003,
		4.140800, 14.705246, 14.535234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.567529, 14.174721, 14.568130>,  <3.892686, 14.530160, 15.165936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.567529, 14.174721, 14.568130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.942497, 14.262972, 14.460376>,  <4.167478, 14.315923, 14.395723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.942497, 14.262972, 14.460376>,  <3.567529, 14.174721, 14.568130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.942497, 14.262972, 14.460376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216450, -0.975232, -0.045503,
		-0.272752, -0.015653, -0.961957,
		0.937419, 0.220627, -0.269385,
		4.223723, 14.329160, 14.379560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.651642, 13.927355, 14.001558>,  <3.567529, 14.174721, 14.568130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.651642, 13.927355, 14.001558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.015698, 13.933387, 14.167170>,  <4.234131, 13.937006, 14.266537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.015698, 13.933387, 14.167170>,  <3.651642, 13.927355, 14.001558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.015698, 13.933387, 14.167170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152739, -0.941159, -0.301479,
		0.385121, 0.337626, -0.858889,
		0.910139, 0.015080, 0.414028,
		4.288740, 13.937911, 14.291378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.120813, 13.620067, 13.639138>,  <3.651642, 13.927355, 14.001558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.120813, 13.620067, 13.639138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.330375, 13.589522, 13.978477>,  <4.456112, 13.571196, 14.182081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.330375, 13.589522, 13.978477>,  <4.120813, 13.620067, 13.639138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.330375, 13.589522, 13.978477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210005, -0.953648, -0.215529,
		0.825483, 0.291074, -0.483584,
		0.523904, -0.076360, 0.848348,
		4.487546, 13.566614, 14.232982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.659706, 13.276952, 13.453150>,  <4.120813, 13.620067, 13.639138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.659706, 13.276952, 13.453150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.722996, 13.256257, 13.847569>,  <4.760970, 13.243840, 14.084220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.722996, 13.256257, 13.847569>,  <4.659706, 13.276952, 13.453150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.722996, 13.256257, 13.847569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419552, -0.900472, -0.114569,
		0.893835, 0.431826, -0.120771,
		0.158225, -0.051736, 0.986047,
		4.770463, 13.240736, 14.143383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.450583, 13.068125, 13.563347>,  <4.659706, 13.276952, 13.453150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.450583, 13.068125, 13.563347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.264452, 12.976150, 13.905247>,  <5.152773, 12.920964, 14.110387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.264452, 12.976150, 13.905247>,  <5.450583, 13.068125, 13.563347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.264452, 12.976150, 13.905247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518623, -0.853373, 0.052771,
		0.717287, 0.467849, 0.516350,
		-0.465328, -0.229938, 0.854750,
		5.124854, 12.907168, 14.161672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.978440, 12.746949, 13.898736>,  <5.450583, 13.068125, 13.563347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.978440, 12.746949, 13.898736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.649327, 12.660455, 14.108982>,  <5.451859, 12.608558, 14.235129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.649327, 12.660455, 14.108982>,  <5.978440, 12.746949, 13.898736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.649327, 12.660455, 14.108982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469905, -0.779034, 0.415084,
		0.319715, 0.588513, 0.742587,
		-0.822783, -0.216237, 0.525614,
		5.402492, 12.595584, 14.266666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.226700, 12.753792, 14.515074>,  <5.978440, 12.746949, 13.898736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.226700, 12.753792, 14.515074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.881951, 12.552116, 14.536860>,  <5.675101, 12.431110, 14.549932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.881951, 12.552116, 14.536860>,  <6.226700, 12.753792, 14.515074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.881951, 12.552116, 14.536860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474550, -0.763977, 0.437197,
		-0.178819, 0.402656, 0.897715,
		-0.861874, -0.504190, 0.054467,
		5.623389, 12.400860, 14.553201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.088224, 12.458289, 15.282821>,  <6.226700, 12.753792, 14.515074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.088224, 12.458289, 15.282821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.875571, 12.250525, 15.015216>,  <5.747979, 12.125866, 14.854653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.875571, 12.250525, 15.015216>,  <6.088224, 12.458289, 15.282821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.875571, 12.250525, 15.015216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408368, -0.849203, 0.334797,
		-0.742024, -0.095213, 0.663577,
		-0.531635, -0.519411, -0.669012,
		5.716081, 12.094701, 14.814512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.900471, 11.972509, 15.693023>,  <6.088224, 12.458289, 15.282821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.900471, 11.972509, 15.693023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.875338, 11.834829, 15.318306>,  <5.860258, 11.752221, 15.093476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.875338, 11.834829, 15.318306>,  <5.900471, 11.972509, 15.693023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.875338, 11.834829, 15.318306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301068, -0.901456, 0.311023,
		-0.951530, -0.262496, 0.160269,
		-0.062833, -0.344200, -0.936792,
		5.856488, 11.731569, 15.037269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.482553, 11.447467, 15.763385>,  <5.900471, 11.972509, 15.693023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.482553, 11.447467, 15.763385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.638155, 11.376273, 15.401834>,  <5.731516, 11.333557, 15.184902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.638155, 11.376273, 15.401834>,  <5.482553, 11.447467, 15.763385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.638155, 11.376273, 15.401834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237050, -0.928782, 0.284907,
		-0.890214, -0.325095, -0.319111,
		0.389007, -0.177983, -0.903879,
		5.754856, 11.322878, 15.130670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.283669, 10.831503, 15.655554>,  <5.482553, 11.447467, 15.763385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.283669, 10.831503, 15.655554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.612177, 10.882917, 15.433205>,  <5.809282, 10.913766, 15.299795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.612177, 10.882917, 15.433205>,  <5.283669, 10.831503, 15.655554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.612177, 10.882917, 15.433205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344441, -0.888409, 0.303464,
		-0.454837, -0.440691, -0.773896,
		0.821269, 0.128535, -0.555873,
		5.858558, 10.921478, 15.266442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.354135, 10.163156, 15.384045>,  <5.283669, 10.831503, 15.655554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.354135, 10.163156, 15.384045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.706809, 10.324138, 15.285526>,  <5.918413, 10.420727, 15.226415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.706809, 10.324138, 15.285526>,  <5.354135, 10.163156, 15.384045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.706809, 10.324138, 15.285526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437350, -0.892965, 0.106487,
		-0.177078, -0.201605, -0.963327,
		0.881685, 0.402454, -0.246297,
		5.971314, 10.444874, 15.211637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.782444, 9.649549, 14.913713>,  <5.354135, 10.163156, 15.384045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.782444, 9.649549, 14.913713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.037762, 9.896116, 15.098151>,  <6.190953, 10.044057, 15.208814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.037762, 9.896116, 15.098151>,  <5.782444, 9.649549, 14.913713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.037762, 9.896116, 15.098151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667301, -0.741696, 0.067793,
		0.383780, 0.264416, -0.884758,
		0.638296, 0.616418, 0.461093,
		6.229251, 10.081041, 15.236479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.374036, 9.470245, 14.626196>,  <5.782444, 9.649549, 14.913713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.374036, 9.470245, 14.626196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.505594, 9.697422, 14.927996>,  <6.584529, 9.833728, 15.109076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.505594, 9.697422, 14.927996>,  <6.374036, 9.470245, 14.626196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.505594, 9.697422, 14.927996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843483, -0.535964, 0.035758,
		0.424694, 0.624647, -0.655325,
		0.328895, 0.567942, 0.754500,
		6.604263, 9.867805, 15.154346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.176196, 9.749691, 14.469597>,  <6.374036, 9.470245, 14.626196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.176196, 9.749691, 14.469597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.096487, 9.745976, 14.861557>,  <7.048661, 9.743748, 15.096733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.096487, 9.745976, 14.861557>,  <7.176196, 9.749691, 14.469597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.096487, 9.745976, 14.861557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796614, -0.583888, 0.156466,
		0.570699, 0.811781, 0.123751,
		-0.199273, -0.009286, 0.979900,
		7.036705, 9.743191, 15.155527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.792415, 9.648059, 14.711662>,  <7.176196, 9.749691, 14.469597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.792415, 9.648059, 14.711662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.591534, 9.569715, 15.048573>,  <7.471005, 9.522708, 15.250720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.591534, 9.569715, 15.048573>,  <7.792415, 9.648059, 14.711662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.591534, 9.569715, 15.048573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789210, -0.501940, 0.353842,
		0.353469, 0.842434, 0.406651,
		-0.502203, -0.195861, 0.842277,
		7.440873, 9.510956, 15.301256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.179571, 9.887188, 15.237694>,  <7.792415, 9.648059, 14.711662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.179571, 9.887188, 15.237694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.932925, 9.615961, 15.397698>,  <7.784937, 9.453225, 15.493701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.932925, 9.615961, 15.397698>,  <8.179571, 9.887188, 15.237694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.932925, 9.615961, 15.397698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779806, -0.456287, 0.428608,
		-0.108106, 0.576218, 0.810115,
		-0.616617, -0.678067, 0.400011,
		7.747940, 9.412540, 15.517701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.348323, 9.848947, 16.013521>,  <8.179571, 9.887188, 15.237694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.348323, 9.848947, 16.013521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.176585, 9.506110, 15.899637>,  <8.073543, 9.300408, 15.831306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.176585, 9.506110, 15.899637>,  <8.348323, 9.848947, 16.013521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.176585, 9.506110, 15.899637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707715, -0.515129, 0.483510,
		-0.561074, 0.006098, 0.827743,
		-0.429343, -0.857091, -0.284710,
		8.047782, 9.248982, 15.814224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.606689, 9.309774, 16.508575>,  <8.348323, 9.848947, 16.013521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.606689, 9.309774, 16.508575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.445964, 9.107882, 16.202950>,  <8.349528, 8.986748, 16.019573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.445964, 9.107882, 16.202950>,  <8.606689, 9.309774, 16.508575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.445964, 9.107882, 16.202950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602573, -0.774020, 0.194419,
		-0.689530, -0.382284, 0.615148,
		-0.401814, -0.504729, -0.764064,
		8.325419, 8.956464, 15.973730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.431103, 8.664730, 16.844809>,  <8.606689, 9.309774, 16.508575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.431103, 8.664730, 16.844809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.478203, 8.607876, 16.451681>,  <8.506463, 8.573763, 16.215805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.478203, 8.607876, 16.451681>,  <8.431103, 8.664730, 16.844809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.478203, 8.607876, 16.451681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700127, -0.689992, 0.183668,
		-0.704243, -0.709724, 0.018267,
		0.117749, -0.142136, -0.982819,
		8.513528, 8.565235, 16.156836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.549551, 8.004972, 16.744480>,  <8.431103, 8.664730, 16.844809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.549551, 8.004972, 16.744480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.680711, 8.112694, 16.382275>,  <8.759407, 8.177326, 16.164951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.680711, 8.112694, 16.382275>,  <8.549551, 8.004972, 16.744480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.680711, 8.112694, 16.382275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745283, -0.662766, 0.072769,
		-0.580548, -0.698726, -0.418028,
		0.327900, 0.269303, -0.905515,
		8.779080, 8.193484, 16.110620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.719841, 7.379661, 16.414091>,  <8.549551, 8.004972, 16.744480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.719841, 7.379661, 16.414091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.919263, 7.656256, 16.204985>,  <9.038916, 7.822214, 16.079521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.919263, 7.656256, 16.204985>,  <8.719841, 7.379661, 16.414091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.919263, 7.656256, 16.204985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810706, -0.585453, -0.001250,
		-0.306920, -0.423187, -0.852475,
		0.498555, 0.691490, -0.522767,
		9.068830, 7.863703, 16.048155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.022398, 6.988155, 15.791340>,  <8.719841, 7.379661, 16.414091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.022398, 6.988155, 15.791340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.220194, 7.318779, 15.898879>,  <9.338871, 7.517153, 15.963403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.220194, 7.318779, 15.898879>,  <9.022398, 6.988155, 15.791340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.220194, 7.318779, 15.898879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780606, -0.558357, 0.280876,
		0.382274, 0.070975, -0.921319,
		0.494490, 0.826559, 0.268849,
		9.368541, 7.566747, 15.979534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.769864, 6.976190, 15.583117>,  <9.022398, 6.988155, 15.791340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.769864, 6.976190, 15.583117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.742294, 7.211616, 15.905320>,  <9.725753, 7.352871, 16.098642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.742294, 7.211616, 15.905320>,  <9.769864, 6.976190, 15.583117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.742294, 7.211616, 15.905320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721124, -0.528549, 0.447902,
		0.689369, 0.611741, -0.387998,
		-0.068924, 0.588565, 0.805507,
		9.721617, 7.388185, 16.146973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.272754, 7.489230, 15.360554>,  <9.769864, 6.976190, 15.583117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.272754, 7.489230, 15.360554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.287400, 7.375793, 15.743852>,  <10.296188, 7.307730, 15.973830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.287400, 7.375793, 15.743852>,  <10.272754, 7.489230, 15.360554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.287400, 7.375793, 15.743852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956410, -0.268053, -0.115876,
		0.289723, 0.920718, 0.261418,
		0.036616, -0.283595, 0.958245,
		10.298385, 7.290714, 16.031324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.011000, 7.405958, 15.543515>,  <10.272754, 7.489230, 15.360554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.011000, 7.405958, 15.543515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.849752, 7.325953, 15.900724>,  <10.753004, 7.277951, 16.115049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.849752, 7.325953, 15.900724>,  <11.011000, 7.405958, 15.543515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.849752, 7.325953, 15.900724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882416, -0.343601, 0.321373,
		0.242565, 0.917569, 0.315005,
		-0.403118, -0.200012, 0.893023,
		10.728817, 7.265950, 16.168631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.480198, 7.121796, 15.979482>,  <11.011000, 7.405958, 15.543515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.480198, 7.121796, 15.979482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.230487, 7.073004, 16.288130>,  <11.080660, 7.043729, 16.473318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.230487, 7.073004, 16.288130>,  <11.480198, 7.121796, 15.979482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.230487, 7.073004, 16.288130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722840, -0.464799, 0.511336,
		0.296276, 0.876974, 0.378335,
		-0.624278, -0.121980, 0.771620,
		11.043203, 7.036410, 16.519615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.820478, 7.381440, 16.497066>,  <11.480198, 7.121796, 15.979482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.820478, 7.381440, 16.497066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.573826, 7.074981, 16.569490>,  <11.425835, 6.891105, 16.612944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.573826, 7.074981, 16.569490>,  <11.820478, 7.381440, 16.497066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.573826, 7.074981, 16.569490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766976, -0.532785, 0.357614,
		-0.177521, 0.359383, 0.916149,
		-0.616631, -0.766149, 0.181058,
		11.388837, 6.845136, 16.623808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.765772, 7.233712, 17.257431>,  <11.820478, 7.381440, 16.497066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.765772, 7.233712, 17.257431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.718119, 6.922050, 17.011269>,  <11.689527, 6.735053, 16.863571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.718119, 6.922050, 17.011269>,  <11.765772, 7.233712, 17.257431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.718119, 6.922050, 17.011269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782844, -0.454955, 0.424465,
		-0.610706, -0.431201, 0.664157,
		-0.119132, -0.779155, -0.615407,
		11.682379, 6.688303, 16.826647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.547505, 7.608383, 17.811708>,  <11.765772, 7.233712, 17.257431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.547505, 7.608383, 17.811708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.209017, 7.498486, 17.629095>,  <11.005923, 7.432547, 17.519527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.209017, 7.498486, 17.629095>,  <11.547505, 7.608383, 17.811708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.209017, 7.498486, 17.629095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426048, 0.863443, 0.270090,
		0.319987, 0.423062, -0.847718,
		-0.846222, -0.274743, -0.456535,
		10.955151, 7.416062, 17.492134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.247389, 8.303699, 17.534105>,  <11.547505, 7.608383, 17.811708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.247389, 8.303699, 17.534105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.580685, 8.453418, 17.696888>,  <11.780663, 8.543249, 17.794558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.580685, 8.453418, 17.696888>,  <11.247389, 8.303699, 17.534105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.580685, 8.453418, 17.696888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552762, 0.546709, 0.628939,
		0.012922, -0.749007, 0.662436,
		0.833239, 0.374296, 0.406958,
		11.830656, 8.565706, 17.818975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.305800, 8.145849, 18.366997>,  <11.247389, 8.303699, 17.534105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.305800, 8.145849, 18.366997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.521274, 8.465811, 18.261185>,  <11.650558, 8.657787, 18.197699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.521274, 8.465811, 18.261185>,  <11.305800, 8.145849, 18.366997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.521274, 8.465811, 18.261185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626753, 0.590292, 0.508661,
		0.563026, -0.108218, 0.819323,
		0.538686, 0.799903, -0.264524,
		11.682878, 8.705782, 18.181826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.480330, 8.479041, 19.014074>,  <11.305800, 8.145849, 18.366997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.480330, 8.479041, 19.014074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.462246, 8.697853, 18.679718>,  <11.451395, 8.829140, 18.479103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.462246, 8.697853, 18.679718>,  <11.480330, 8.479041, 19.014074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.462246, 8.697853, 18.679718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603670, 0.651732, 0.459160,
		0.795951, 0.525362, 0.300760,
		-0.045210, 0.547029, -0.835892,
		11.448683, 8.861961, 18.428951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.355950, 9.148256, 19.177679>,  <11.480330, 8.479041, 19.014074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.355950, 9.148256, 19.177679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.283543, 9.178713, 18.785467>,  <11.240098, 9.196986, 18.550140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.283543, 9.178713, 18.785467>,  <11.355950, 9.148256, 19.177679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.283543, 9.178713, 18.785467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594961, 0.785391, 0.170827,
		0.783105, 0.614300, -0.096871,
		-0.181020, 0.076141, -0.980528,
		11.229237, 9.201555, 18.491308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.396031, 9.838465, 19.076204>,  <11.355950, 9.148256, 19.177679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.396031, 9.838465, 19.076204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180919, 9.669977, 18.784077>,  <11.051851, 9.568885, 18.608801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180919, 9.669977, 18.784077>,  <11.396031, 9.838465, 19.076204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.180919, 9.669977, 18.784077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626724, 0.779147, 0.012117,
		0.563922, 0.464225, -0.682998,
		-0.537781, -0.421218, -0.730319,
		11.019585, 9.543612, 18.564981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.091504, 10.395905, 18.635139>,  <11.396031, 9.838465, 19.076204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.091504, 10.395905, 18.635139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.874953, 10.085187, 18.506454>,  <10.745023, 9.898756, 18.429243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.874953, 10.085187, 18.506454>,  <11.091504, 10.395905, 18.635139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.874953, 10.085187, 18.506454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776285, 0.608780, -0.163609,
		0.322942, 0.161165, -0.932595,
		-0.541378, -0.776796, -0.321711,
		10.712540, 9.852148, 18.409941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.818974, 10.643785, 17.990110>,  <11.091504, 10.395905, 18.635139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.818974, 10.643785, 17.990110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.572906, 10.382025, 18.165987>,  <10.425265, 10.224969, 18.271513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.572906, 10.382025, 18.165987>,  <10.818974, 10.643785, 17.990110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.572906, 10.382025, 18.165987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767103, 0.625560, -0.142220,
		-0.181984, -0.424778, -0.886818,
		-0.615170, -0.654399, 0.439691,
		10.388355, 10.185705, 18.297894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.264851, 10.441305, 17.429781>,  <10.818974, 10.643785, 17.990110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.264851, 10.441305, 17.429781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.102896, 10.394228, 17.792484>,  <10.005723, 10.365982, 18.010107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.102896, 10.394228, 17.792484>,  <10.264851, 10.441305, 17.429781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.102896, 10.394228, 17.792484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764548, 0.587513, -0.265131,
		-0.501530, -0.800610, -0.327858,
		-0.404887, -0.117692, 0.906761,
		9.981429, 10.358920, 18.064512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.567861, 10.383327, 17.284142>,  <10.264851, 10.441305, 17.429781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.567861, 10.383327, 17.284142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.596169, 10.426147, 17.680834>,  <9.613155, 10.451838, 17.918850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.596169, 10.426147, 17.680834>,  <9.567861, 10.383327, 17.284142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.596169, 10.426147, 17.680834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792770, 0.609452, -0.009212,
		-0.605399, -0.785563, 0.127999,
		0.070773, 0.107050, 0.991732,
		9.617401, 10.458261, 17.978354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.905737, 10.156078, 17.515985>,  <9.567861, 10.383327, 17.284142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.905737, 10.156078, 17.515985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.091070, 10.395055, 17.777790>,  <9.202271, 10.538441, 17.934874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.091070, 10.395055, 17.777790>,  <8.905737, 10.156078, 17.515985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.091070, 10.395055, 17.777790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797705, 0.602876, 0.014394,
		-0.385989, -0.528776, 0.755915,
		0.463334, 0.597442, 0.654511,
		9.230070, 10.574287, 17.974144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.448028, 10.297567, 17.952190>,  <8.905737, 10.156078, 17.515985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.448028, 10.297567, 17.952190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.705116, 10.601389, 17.992161>,  <8.859369, 10.783682, 18.016142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.705116, 10.601389, 17.992161>,  <8.448028, 10.297567, 17.952190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.705116, 10.601389, 17.992161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716790, 0.642255, -0.271515,
		-0.270408, 0.102884, 0.957233,
		0.642722, 0.759555, 0.099925,
		8.897933, 10.829255, 18.022139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.163210, 10.808372, 18.518356>,  <8.448028, 10.297567, 17.952190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.163210, 10.808372, 18.518356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.425080, 11.015702, 18.298269>,  <8.582202, 11.140100, 18.166216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.425080, 11.015702, 18.298269>,  <8.163210, 10.808372, 18.518356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.425080, 11.015702, 18.298269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627983, 0.778098, -0.014209,
		0.420759, 0.354830, 0.834900,
		0.654675, 0.518324, -0.550219,
		8.621483, 11.171200, 18.133204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.318479, 11.521611, 18.840864>,  <8.163210, 10.808372, 18.518356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.318479, 11.521611, 18.840864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.410824, 11.549490, 18.452669>,  <8.466231, 11.566217, 18.219751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.410824, 11.549490, 18.452669>,  <8.318479, 11.521611, 18.840864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.410824, 11.549490, 18.452669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688543, 0.716441, -0.112341,
		0.687467, 0.694158, 0.213389,
		0.230863, 0.069696, -0.970487,
		8.480083, 11.570399, 18.161524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.110092, 12.116911, 18.696104>,  <8.318479, 11.521611, 18.840864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.110092, 12.116911, 18.696104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.201969, 12.000637, 18.324568>,  <8.257095, 11.930873, 18.101646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.201969, 12.000637, 18.324568>,  <8.110092, 12.116911, 18.696104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.201969, 12.000637, 18.324568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725275, 0.585283, -0.362519,
		0.649013, 0.756932, -0.076391,
		0.229692, -0.290684, -0.928840,
		8.270877, 11.913432, 18.045916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.315708, 12.732759, 18.285604>,  <8.110092, 12.116911, 18.696104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.315708, 12.732759, 18.285604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.151626, 12.445580, 18.060650>,  <8.053176, 12.273272, 17.925676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.151626, 12.445580, 18.060650>,  <8.315708, 12.732759, 18.285604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.151626, 12.445580, 18.060650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667066, 0.656705, -0.351796,
		0.621894, 0.230839, -0.748306,
		-0.410208, -0.717949, -0.562386,
		8.028563, 12.230195, 17.891933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.143265, 13.048182, 17.612226>,  <8.315708, 12.732759, 18.285604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.143265, 13.048182, 17.612226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.930448, 12.709862, 17.596451>,  <7.802757, 12.506870, 17.586987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.930448, 12.709862, 17.596451>,  <8.143265, 13.048182, 17.612226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.930448, 12.709862, 17.596451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796592, 0.515790, -0.315280,
		0.287004, -0.136327, -0.948179,
		-0.532043, -0.845799, -0.039437,
		7.770835, 12.456122, 17.584620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.089649, 13.063591, 16.890707>,  <8.143265, 13.048182, 17.612226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.089649, 13.063591, 16.890707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.807663, 12.834982, 17.058699>,  <7.638471, 12.697817, 17.159494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.807663, 12.834982, 17.058699>,  <8.089649, 13.063591, 16.890707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.807663, 12.834982, 17.058699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673097, 0.352506, -0.650138,
		0.223522, -0.741015, -0.633194,
		-0.704967, -0.571521, 0.419982,
		7.596173, 12.663525, 17.184692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.714921, 12.741359, 16.401800>,  <8.089649, 13.063591, 16.890707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.714921, 12.741359, 16.401800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.463324, 12.706013, 16.710751>,  <7.312366, 12.684805, 16.896120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.463324, 12.706013, 16.710751>,  <7.714921, 12.741359, 16.401800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.463324, 12.706013, 16.710751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734104, 0.394491, -0.552692,
		-0.255856, -0.914641, -0.313001,
		-0.628991, -0.088365, 0.772374,
		7.274627, 12.679503, 16.942463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.097510, 12.618992, 16.021523>,  <7.714921, 12.741359, 16.401800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.097510, 12.618992, 16.021523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.059734, 12.758112, 16.394642>,  <7.037068, 12.841584, 16.618513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.059734, 12.758112, 16.394642>,  <7.097510, 12.618992, 16.021523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.059734, 12.758112, 16.394642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809079, 0.519137, -0.275478,
		-0.580062, -0.780726, 0.232370,
		-0.094441, 0.347800, 0.932800,
		7.031402, 12.862452, 16.674482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.363199, 12.682463, 16.111095>,  <7.097510, 12.618992, 16.021523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.363199, 12.682463, 16.111095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.499957, 12.925017, 16.398262>,  <6.582012, 13.070550, 16.570562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.499957, 12.925017, 16.398262>,  <6.363199, 12.682463, 16.111095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.499957, 12.925017, 16.398262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809255, 0.578340, -0.103100,
		-0.477718, -0.545728, 0.688453,
		0.341895, 0.606386, 0.717916,
		6.602526, 13.106934, 16.613636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.725328, 12.846265, 16.552113>,  <6.363199, 12.682463, 16.111095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.725328, 12.846265, 16.552113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.014043, 13.117043, 16.609760>,  <6.187272, 13.279510, 16.644348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.014043, 13.117043, 16.609760>,  <5.725328, 12.846265, 16.552113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.014043, 13.117043, 16.609760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647637, 0.734040, -0.204330,
		-0.244108, 0.054147, 0.968235,
		0.721788, 0.676944, 0.144118,
		6.230579, 13.320126, 16.652996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.430240, 13.237092, 16.925215>,  <5.725328, 12.846265, 16.552113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.430240, 13.237092, 16.925215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.729323, 13.454644, 16.772833>,  <5.908773, 13.585176, 16.681404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.729323, 13.454644, 16.772833>,  <5.430240, 13.237092, 16.925215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.729323, 13.454644, 16.772833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632385, 0.758224, -0.158699,
		0.202536, 0.359571, 0.910872,
		0.747709, 0.543880, -0.380955,
		5.953636, 13.617808, 16.658546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.311289, 13.982018, 17.176111>,  <5.430240, 13.237092, 16.925215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.311289, 13.982018, 17.176111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.538489, 13.984155, 16.846907>,  <5.674809, 13.985437, 16.649384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.538489, 13.984155, 16.846907>,  <5.311289, 13.982018, 17.176111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.538489, 13.984155, 16.846907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492515, 0.803374, -0.334693,
		0.659397, 0.595451, 0.458949,
		0.568000, 0.005344, -0.823011,
		5.708889, 13.985758, 16.600004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.691630, 14.570500, 17.188745>,  <5.311289, 13.982018, 17.176111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.691630, 14.570500, 17.188745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.630744, 14.453278, 16.811186>,  <5.594213, 14.382944, 16.584650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.630744, 14.453278, 16.811186>,  <5.691630, 14.570500, 17.188745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.630744, 14.453278, 16.811186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428036, 0.880367, -0.204304,
		0.890851, 0.372925, -0.259442,
		-0.152214, -0.293055, -0.943901,
		5.585080, 14.365361, 16.528015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.995682, 15.036155, 16.732618>,  <5.691630, 14.570500, 17.188745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.995682, 15.036155, 16.732618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.698771, 14.843948, 16.545801>,  <5.520624, 14.728624, 16.433710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.698771, 14.843948, 16.545801>,  <5.995682, 15.036155, 16.732618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.698771, 14.843948, 16.545801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391140, 0.876620, -0.280264,
		0.544090, -0.025355, -0.838644,
		-0.742278, -0.480515, -0.467043,
		5.476087, 14.699794, 16.405689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.005419, 15.170761, 16.007967>,  <5.995682, 15.036155, 16.732618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.005419, 15.170761, 16.007967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.632122, 15.052725, 16.089926>,  <5.408144, 14.981903, 16.139101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.632122, 15.052725, 16.089926>,  <6.005419, 15.170761, 16.007967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.632122, 15.052725, 16.089926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355072, 0.844377, -0.401186,
		-0.054623, -0.447157, -0.892786,
		-0.933242, -0.295090, 0.204895,
		5.352149, 14.964198, 16.151394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.604707, 14.833827, 15.818510>,  <6.005419, 15.170761, 16.007967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.604707, 14.833827, 15.818510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.912286, 14.752778, 15.575970>,  <7.096834, 14.704148, 15.430446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.912286, 14.752778, 15.575970>,  <6.604707, 14.833827, 15.818510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.912286, 14.752778, 15.575970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164295, -0.853962, 0.493717,
		-0.617839, -0.479264, -0.623363,
		0.768949, -0.202622, -0.606351,
		7.142971, 14.691992, 15.394064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.338258, 15.075599, 15.887297>,  <6.604707, 14.833827, 15.818510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.338258, 15.075599, 15.887297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.082754, 15.367596, 15.984534>,  <6.929451, 15.542793, 16.042877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.082754, 15.367596, 15.984534>,  <7.338258, 15.075599, 15.887297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.082754, 15.367596, 15.984534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688486, 0.683347, -0.242949,
		-0.343469, 0.012181, -0.939085,
		-0.638762, 0.729992, 0.243095,
		6.891125, 15.586594, 16.057463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.504622, 15.599219, 15.460103>,  <7.338258, 15.075599, 15.887297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.504622, 15.599219, 15.460103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.291099, 15.819503, 15.716781>,  <7.162986, 15.951673, 15.870788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.291099, 15.819503, 15.716781>,  <7.504622, 15.599219, 15.460103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.291099, 15.819503, 15.716781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642019, 0.757818, -0.116290,
		-0.550329, 0.349903, -0.758093,
		-0.533806, 0.550708, 0.641694,
		7.130957, 15.984715, 15.909289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.879060, 16.191193, 15.440129>,  <7.504622, 15.599219, 15.460103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.879060, 16.191193, 15.440129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.624671, 16.299704, 15.729114>,  <7.472038, 16.364809, 15.902504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.624671, 16.299704, 15.729114>,  <7.879060, 16.191193, 15.440129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.624671, 16.299704, 15.729114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582511, 0.782809, 0.218840,
		-0.506183, 0.560017, -0.655866,
		-0.635972, 0.271276, 0.722461,
		7.433879, 16.381086, 15.945851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.861501, 16.905859, 15.461027>,  <7.879060, 16.191193, 15.440129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.861501, 16.905859, 15.461027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.781715, 16.829256, 15.845430>,  <7.733844, 16.783295, 16.076073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.781715, 16.829256, 15.845430>,  <7.861501, 16.905859, 15.461027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.781715, 16.829256, 15.845430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540202, 0.796741, 0.270896,
		-0.817555, 0.573173, -0.055469,
		-0.199465, -0.191508, 0.961009,
		7.721876, 16.771803, 16.133734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.509787, 17.434992, 15.719911>,  <7.861501, 16.905859, 15.461027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.509787, 17.434992, 15.719911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.684654, 17.248714, 16.027679>,  <7.789575, 17.136948, 16.212341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.684654, 17.248714, 16.027679>,  <7.509787, 17.434992, 15.719911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.684654, 17.248714, 16.027679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333439, 0.878460, 0.342237,
		-0.835285, 0.106940, 0.539317,
		0.437170, -0.465694, 0.769423,
		7.815805, 17.109007, 16.258507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.481311, 17.847750, 16.226994>,  <7.509787, 17.434992, 15.719911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.481311, 17.847750, 16.226994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.785297, 17.620832, 16.353884>,  <7.967688, 17.484682, 16.430017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.785297, 17.620832, 16.353884>,  <7.481311, 17.847750, 16.226994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.785297, 17.620832, 16.353884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377047, 0.782333, 0.495772,
		-0.529424, -0.257160, 0.808442,
		0.759964, -0.567295, 0.317225,
		8.013287, 17.450644, 16.449051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.709151, 18.174906, 16.880247>,  <7.481311, 17.847750, 16.226994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.709151, 18.174906, 16.880247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.005964, 17.919493, 16.798597>,  <8.184052, 17.766245, 16.749607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.005964, 17.919493, 16.798597>,  <7.709151, 18.174906, 16.880247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.005964, 17.919493, 16.798597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648895, 0.607716, 0.457839,
		-0.168294, -0.472186, 0.865285,
		0.742032, -0.638531, -0.204124,
		8.228574, 17.727934, 16.737360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.060185, 18.013437, 17.488371>,  <7.709151, 18.174906, 16.880247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.060185, 18.013437, 17.488371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.335846, 17.943453, 17.207100>,  <8.501243, 17.901463, 17.038338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.335846, 17.943453, 17.207100>,  <8.060185, 18.013437, 17.488371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.335846, 17.943453, 17.207100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605604, 0.671919, 0.426343,
		0.397885, -0.719662, 0.569011,
		0.689152, -0.174960, -0.703177,
		8.542592, 17.890965, 16.996147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.606042, 18.086391, 17.826263>,  <8.060185, 18.013437, 17.488371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.606042, 18.086391, 17.826263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.758242, 18.112465, 17.457272>,  <8.849562, 18.128109, 17.235876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.758242, 18.112465, 17.457272>,  <8.606042, 18.086391, 17.826263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.758242, 18.112465, 17.457272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648521, 0.692314, 0.316419,
		0.659272, -0.718646, 0.221151,
		0.380499, 0.065185, -0.922481,
		8.872392, 18.132021, 17.180527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.323633, 17.970018, 17.862543>,  <8.606042, 18.086391, 17.826263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.323633, 17.970018, 17.862543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.291722, 18.193964, 17.532650>,  <9.272575, 18.328331, 17.334713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.291722, 18.193964, 17.532650>,  <9.323633, 17.970018, 17.862543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.291722, 18.193964, 17.532650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724719, 0.600650, 0.337644,
		0.684411, -0.570763, -0.453663,
		-0.079778, 0.559865, -0.824734,
		9.267789, 18.361923, 17.285231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.961123, 18.109791, 17.798912>,  <9.323633, 17.970018, 17.862543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.961123, 18.109791, 17.798912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.758556, 18.360071, 17.561581>,  <9.637016, 18.510239, 17.419182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.758556, 18.360071, 17.561581>,  <9.961123, 18.109791, 17.798912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.758556, 18.360071, 17.561581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638457, 0.734577, 0.229717,
		0.579579, -0.262483, -0.771486,
		-0.506419, 0.625700, -0.593329,
		9.606630, 18.547781, 17.383581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.395351, 18.444563, 17.382523>,  <9.961123, 18.109791, 17.798912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.395351, 18.444563, 17.382523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.089219, 18.700802, 17.407516>,  <9.905540, 18.854546, 17.422512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.089219, 18.700802, 17.407516>,  <10.395351, 18.444563, 17.382523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.089219, 18.700802, 17.407516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617422, 0.703266, 0.352429,
		0.181823, 0.308303, -0.933750,
		-0.765330, 0.640598, 0.062483,
		9.859620, 18.892981, 17.426262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.659586, 19.039324, 17.103966>,  <10.395351, 18.444563, 17.382523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.659586, 19.039324, 17.103966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.332481, 19.177794, 17.287891>,  <10.136219, 19.260876, 17.398247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.332481, 19.177794, 17.287891>,  <10.659586, 19.039324, 17.103966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.332481, 19.177794, 17.287891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555365, 0.684351, 0.472476,
		-0.151115, 0.641738, -0.751889,
		-0.817762, 0.346174, 0.459815,
		10.087152, 19.281647, 17.425837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.754530, 19.789968, 17.099621>,  <10.659586, 19.039324, 17.103966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.754530, 19.789968, 17.099621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.499055, 19.704920, 17.395424>,  <10.345770, 19.653891, 17.572905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.499055, 19.704920, 17.395424>,  <10.754530, 19.789968, 17.099621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.499055, 19.704920, 17.395424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437131, 0.690658, 0.576114,
		-0.633241, 0.691218, -0.348171,
		-0.638687, -0.212623, 0.739507,
		10.307448, 19.641132, 17.617275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.551565, 20.459469, 17.264902>,  <10.754530, 19.789968, 17.099621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.551565, 20.459469, 17.264902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.473361, 20.215113, 17.571779>,  <10.426438, 20.068499, 17.755905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.473361, 20.215113, 17.571779>,  <10.551565, 20.459469, 17.264902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.473361, 20.215113, 17.571779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464363, 0.631372, 0.621077,
		-0.863795, 0.477685, 0.160235,
		-0.195511, -0.610891, 0.767195,
		10.414708, 20.031845, 17.801937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.426607, 20.916412, 17.858746>,  <10.551565, 20.459469, 17.264902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.426607, 20.916412, 17.858746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.494597, 20.589064, 18.078335>,  <10.535392, 20.392654, 18.210089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.494597, 20.589064, 18.078335>,  <10.426607, 20.916412, 17.858746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.494597, 20.589064, 18.078335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124373, 0.570443, 0.811866,
		-0.977568, -0.069720, 0.198745,
		0.169976, -0.818373, 0.548975,
		10.545590, 20.343552, 18.243027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.138372, 21.112288, 18.450851>,  <10.426607, 20.916412, 17.858746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.138372, 21.112288, 18.450851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.378480, 20.800430, 18.522217>,  <10.522545, 20.613316, 18.565035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.378480, 20.800430, 18.522217>,  <10.138372, 21.112288, 18.450851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.378480, 20.800430, 18.522217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323852, 0.440900, 0.837094,
		-0.731298, -0.444704, 0.517148,
		0.600269, -0.779645, 0.178411,
		10.558560, 20.566536, 18.575741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.981333, 20.983461, 19.105852>,  <10.138372, 21.112288, 18.450851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.981333, 20.983461, 19.105852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.339844, 20.821743, 19.032932>,  <10.554951, 20.724712, 18.989180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.339844, 20.821743, 19.032932>,  <9.981333, 20.983461, 19.105852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.339844, 20.821743, 19.032932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323714, 0.315411, 0.892034,
		-0.303145, -0.858523, 0.413571,
		0.896277, -0.404295, -0.182301,
		10.608727, 20.700455, 18.978243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.238980, 20.687073, 19.734451>,  <9.981333, 20.983461, 19.105852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.238980, 20.687073, 19.734451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.555840, 20.761787, 19.502035>,  <10.745956, 20.806616, 19.362585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.555840, 20.761787, 19.502035>,  <10.238980, 20.687073, 19.734451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.555840, 20.761787, 19.502035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415079, 0.533068, 0.737257,
		0.447442, -0.825197, 0.344740,
		0.792152, 0.186785, -0.581039,
		10.793486, 20.817823, 19.327723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.780358, 20.602064, 20.194170>,  <10.238980, 20.687073, 19.734451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.780358, 20.602064, 20.194170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.902661, 20.821163, 19.882662>,  <10.976043, 20.952623, 19.695757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.902661, 20.821163, 19.882662>,  <10.780358, 20.602064, 20.194170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.902661, 20.821163, 19.882662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178796, 0.770357, 0.612031,
		0.935171, -0.326374, 0.137607,
		0.305758, 0.547750, -0.778770,
		10.994389, 20.985489, 19.649031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.351568, 20.839653, 20.453955>,  <10.780358, 20.602064, 20.194170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.351568, 20.839653, 20.453955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.274718, 21.105598, 20.165220>,  <11.228608, 21.265165, 19.991980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.274718, 21.105598, 20.165220>,  <11.351568, 20.839653, 20.453955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.274718, 21.105598, 20.165220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094005, 0.744623, 0.660832,
		0.976858, 0.059107, -0.205561,
		-0.192125, 0.664863, -0.721834,
		11.217081, 21.305058, 19.948669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.729181, 21.341311, 20.645502>,  <11.351568, 20.839653, 20.453955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.729181, 21.341311, 20.645502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.472477, 21.489044, 20.376657>,  <11.318455, 21.577684, 20.215351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.472477, 21.489044, 20.376657>,  <11.729181, 21.341311, 20.645502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.472477, 21.489044, 20.376657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028016, 0.864521, 0.501815,
		0.766394, 0.340875, -0.544468,
		-0.641760, 0.369334, -0.672113,
		11.279949, 21.599844, 20.175024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.075513, 21.978514, 20.488962>,  <11.729181, 21.341311, 20.645502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.075513, 21.978514, 20.488962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.689981, 22.015291, 20.388903>,  <11.458661, 22.037357, 20.328867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.689981, 22.015291, 20.388903>,  <12.075513, 21.978514, 20.488962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.689981, 22.015291, 20.388903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037617, 0.882280, 0.469220,
		0.263844, 0.461659, -0.846911,
		-0.963832, 0.091942, -0.250150,
		11.400831, 22.042873, 20.313858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.036997, 22.613117, 20.293251>,  <12.075513, 21.978514, 20.488962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.036997, 22.613117, 20.293251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.659460, 22.525702, 20.392370>,  <11.432938, 22.473251, 20.451841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.659460, 22.525702, 20.392370>,  <12.036997, 22.613117, 20.293251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.659460, 22.525702, 20.392370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009310, 0.767285, 0.641238,
		-0.330267, 0.602920, -0.726230,
		-0.943841, -0.218541, 0.247796,
		11.376307, 22.460138, 20.466709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.631744, 23.289454, 20.240690>,  <12.036997, 22.613117, 20.293251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.631744, 23.289454, 20.240690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.409869, 23.034111, 20.454165>,  <11.276744, 22.880905, 20.582249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.409869, 23.034111, 20.454165>,  <11.631744, 23.289454, 20.240690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.409869, 23.034111, 20.454165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138592, 0.703329, 0.697224,
		-0.820434, 0.312777, -0.478600,
		-0.554689, -0.638357, 0.533686,
		11.243463, 22.842604, 20.614271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.127343, 23.680437, 20.402996>,  <11.631744, 23.289454, 20.240690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.127343, 23.680437, 20.402996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.086720, 23.391853, 20.676985>,  <11.062346, 23.218704, 20.841377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.086720, 23.391853, 20.676985>,  <11.127343, 23.680437, 20.402996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.086720, 23.391853, 20.676985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124353, 0.692336, 0.710779,
		-0.987027, -0.012991, -0.160029,
		-0.101560, -0.721458, 0.684970,
		11.056252, 23.175415, 20.882475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.396819, 23.804600, 20.767475>,  <11.127343, 23.680437, 20.402996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.396819, 23.804600, 20.767475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.647824, 23.587772, 20.991041>,  <10.798428, 23.457676, 21.125181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.647824, 23.587772, 20.991041>,  <10.396819, 23.804600, 20.767475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.647824, 23.587772, 20.991041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113234, 0.646674, 0.754314,
		-0.770329, -0.536630, 0.344415,
		0.627512, -0.542070, 0.558917,
		10.836078, 23.425152, 21.158716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.076874, 23.792543, 21.434372>,  <10.396819, 23.804600, 20.767475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.076874, 23.792543, 21.434372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.455941, 23.676977, 21.488708>,  <10.683381, 23.607637, 21.521311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.455941, 23.676977, 21.488708>,  <10.076874, 23.792543, 21.434372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.455941, 23.676977, 21.488708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037982, 0.320435, 0.946509,
		-0.316991, -0.902135, 0.292693,
		0.947668, -0.288918, 0.135840,
		10.740242, 23.590302, 21.529461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.116270, 23.378914, 22.051035>,  <10.076874, 23.792543, 21.434372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.116270, 23.378914, 22.051035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.468997, 23.548491, 21.968407>,  <10.680634, 23.650236, 21.918829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.468997, 23.548491, 21.968407>,  <10.116270, 23.378914, 22.051035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.468997, 23.548491, 21.968407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117653, 0.226410, 0.966900,
		0.456679, -0.876933, 0.149775,
		0.881817, 0.423941, -0.206570,
		10.733542, 23.675673, 21.906435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.410467, 23.378555, 22.673519>,  <10.116270, 23.378914, 22.051035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.410467, 23.378555, 22.673519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.671015, 23.607414, 22.474174>,  <10.827344, 23.744730, 22.354568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.671015, 23.607414, 22.474174>,  <10.410467, 23.378555, 22.673519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.671015, 23.607414, 22.474174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356334, 0.349209, 0.866648,
		0.669883, -0.742092, 0.023588,
		0.651370, 0.572148, -0.498362,
		10.866426, 23.779058, 22.324665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.978512, 23.227053, 23.016977>,  <10.410467, 23.378555, 22.673519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.978512, 23.227053, 23.016977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.027772, 23.585905, 22.847275>,  <11.057328, 23.801216, 22.745453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.027772, 23.585905, 22.847275>,  <10.978512, 23.227053, 23.016977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.027772, 23.585905, 22.847275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415278, 0.341693, 0.843084,
		0.901321, -0.280009, -0.330478,
		0.123149, 0.897129, -0.424257,
		11.064716, 23.855043, 22.719997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.734137, 23.419905, 23.219278>,  <10.978512, 23.227053, 23.016977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.734137, 23.419905, 23.219278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.519346, 23.736662, 23.102957>,  <11.390472, 23.926716, 23.033163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.519346, 23.736662, 23.102957>,  <11.734137, 23.419905, 23.219278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.519346, 23.736662, 23.102957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323918, 0.511839, 0.795674,
		0.778932, 0.333061, -0.531353,
		-0.536975, 0.791891, -0.290804,
		11.358253, 23.974230, 23.015717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.187342, 23.984259, 23.033195>,  <11.734137, 23.419905, 23.219278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.187342, 23.984259, 23.033195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.827972, 24.105530, 23.160267>,  <11.612350, 24.178293, 23.236509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.827972, 24.105530, 23.160267>,  <12.187342, 23.984259, 23.033195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.827972, 24.105530, 23.160267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425679, 0.423587, 0.799607,
		0.107861, 0.853614, -0.509617,
		-0.898423, 0.303180, 0.317677,
		11.558446, 24.196484, 23.255569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.195075, 24.660460, 23.252865>,  <12.187342, 23.984259, 23.033195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.195075, 24.660460, 23.252865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.877605, 24.550316, 23.469847>,  <11.687123, 24.484230, 23.600037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.877605, 24.550316, 23.469847>,  <12.195075, 24.660460, 23.252865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.877605, 24.550316, 23.469847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278755, 0.627958, 0.726611,
		-0.540719, 0.727905, -0.421636,
		-0.793674, -0.275359, 0.542456,
		11.639503, 24.467709, 23.632584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.338104, 25.176123, 23.691416>,  <12.195075, 24.660460, 23.252865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.338104, 25.176123, 23.691416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.047713, 24.950068, 23.848171>,  <11.873479, 24.814434, 23.942225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.047713, 24.950068, 23.848171>,  <12.338104, 25.176123, 23.691416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.047713, 24.950068, 23.848171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175190, 0.399071, 0.900028,
		-0.665031, 0.722055, -0.190710,
		-0.725977, -0.565136, 0.391891,
		11.829920, 24.780527, 23.965738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.894195, 25.586388, 24.112877>,  <12.338104, 25.176123, 23.691416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.894195, 25.586388, 24.112877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.829202, 25.229523, 24.281471>,  <11.790206, 25.015404, 24.382627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.829202, 25.229523, 24.281471>,  <11.894195, 25.586388, 24.112877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.829202, 25.229523, 24.281471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197137, 0.389196, 0.899813,
		-0.966818, 0.229295, 0.112640,
		-0.162483, -0.892161, 0.421484,
		11.780457, 24.961874, 24.407917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.272866, 25.515747, 24.466154>,  <11.894195, 25.586388, 24.112877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.272866, 25.515747, 24.466154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.559423, 25.293476, 24.634916>,  <11.731358, 25.160114, 24.736174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.559423, 25.293476, 24.634916>,  <11.272866, 25.515747, 24.466154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.559423, 25.293476, 24.634916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022225, 0.622583, 0.782238,
		-0.697342, -0.551014, 0.458364,
		0.716394, -0.555675, 0.421906,
		11.774342, 25.126774, 24.761488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.456229, 25.860458, 25.002209>,  <11.272866, 25.515747, 24.466154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.456229, 25.860458, 25.002209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.707016, 25.555445, 25.066032>,  <11.857488, 25.372437, 25.104326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.707016, 25.555445, 25.066032>,  <11.456229, 25.860458, 25.002209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.707016, 25.555445, 25.066032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247673, 0.389284, 0.887196,
		-0.738629, -0.516723, 0.432926,
		0.626966, -0.762532, 0.159558,
		11.895105, 25.326685, 25.113899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.246473, 25.594240, 25.603193>,  <11.456229, 25.860458, 25.002209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.246473, 25.594240, 25.603193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.608460, 25.426052, 25.577150>,  <11.825653, 25.325140, 25.561525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.608460, 25.426052, 25.577150>,  <11.246473, 25.594240, 25.603193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.608460, 25.426052, 25.577150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201885, 0.289644, 0.935601,
		-0.374535, -0.859832, 0.347005,
		0.904967, -0.420470, -0.065106,
		11.879951, 25.299911, 25.557619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.261812, 25.187807, 26.187674>,  <11.246473, 25.594240, 25.603193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.261812, 25.187807, 26.187674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631536, 25.282766, 26.068144>,  <11.853370, 25.339743, 25.996426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631536, 25.282766, 26.068144>,  <11.261812, 25.187807, 26.187674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.631536, 25.282766, 26.068144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173533, 0.435936, 0.883089,
		0.339910, -0.868103, 0.361743,
		0.924309, 0.237396, -0.298824,
		11.908828, 25.353985, 25.978497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.662574, 25.088341, 26.731316>,  <11.261812, 25.187807, 26.187674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.662574, 25.088341, 26.731316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.904638, 25.330313, 26.524302>,  <12.049877, 25.475496, 26.400093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.904638, 25.330313, 26.524302>,  <11.662574, 25.088341, 26.731316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.904638, 25.330313, 26.524302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385682, 0.345926, 0.855328,
		0.696440, -0.717215, -0.023969,
		0.605162, 0.604929, -0.517533,
		12.086186, 25.511791, 26.369041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.275232, 25.012356, 27.040798>,  <11.662574, 25.088341, 26.731316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.275232, 25.012356, 27.040798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.298899, 25.369057, 26.861341>,  <12.313098, 25.583076, 26.753668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.298899, 25.369057, 26.861341>,  <12.275232, 25.012356, 27.040798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.298899, 25.369057, 26.861341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312878, 0.410220, 0.856637,
		0.947949, -0.191054, -0.254738,
		0.059165, 0.891750, -0.448644,
		12.316648, 25.636581, 26.726748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.938621, 25.236315, 27.096134>,  <12.275232, 25.012356, 27.040798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.938621, 25.236315, 27.096134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.701674, 25.555233, 27.049801>,  <12.559505, 25.746584, 27.022001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.701674, 25.555233, 27.049801>,  <12.938621, 25.236315, 27.096134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.701674, 25.555233, 27.049801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242668, 0.313664, 0.918002,
		0.768253, 0.515685, -0.379283,
		-0.592368, 0.797298, -0.115833,
		12.523963, 25.794422, 27.015051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.277678, 25.762913, 27.379765>,  <12.938621, 25.236315, 27.096134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.277678, 25.762913, 27.379765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930692, 25.960083, 27.352859>,  <12.722500, 26.078384, 27.336716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930692, 25.960083, 27.352859>,  <13.277678, 25.762913, 27.379765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.930692, 25.960083, 27.352859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238220, 0.530262, 0.813679,
		0.436752, 0.689816, -0.577410,
		-0.867467, 0.492926, -0.067265,
		12.670451, 26.107962, 27.332680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.331241, 26.546976, 27.600788>,  <13.277678, 25.762913, 27.379765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.331241, 26.546976, 27.600788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.935266, 26.502377, 27.635641>,  <12.697680, 26.475616, 27.656553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.935266, 26.502377, 27.635641>,  <13.331241, 26.546976, 27.600788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.935266, 26.502377, 27.635641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011874, 0.679030, 0.734015,
		-0.141010, 0.725594, -0.673521,
		-0.989937, -0.111501, 0.087134,
		12.638285, 26.468925, 27.661781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.129163, 27.146727, 27.600121>,  <13.331241, 26.546976, 27.600788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.129163, 27.146727, 27.600121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.866797, 26.922174, 27.801964>,  <12.709378, 26.787443, 27.923069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.866797, 26.922174, 27.801964>,  <13.129163, 27.146727, 27.600121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.866797, 26.922174, 27.801964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110963, 0.589526, 0.800092,
		-0.746635, 0.580784, -0.324385,
		-0.655914, -0.561381, 0.504606,
		12.670023, 26.753759, 27.953346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.551139, 27.654058, 27.410517>,  <13.129163, 27.146727, 27.600121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.551139, 27.654058, 27.410517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596267, 27.722374, 27.802048>,  <12.623343, 27.763363, 28.036966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596267, 27.722374, 27.802048>,  <12.551139, 27.654058, 27.410517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.596267, 27.722374, 27.802048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957851, -0.243229, 0.152842,
		0.264183, -0.954814, 0.136150,
		0.112820, 0.170790, 0.978827,
		12.630113, 27.773611, 28.095695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.292089, 27.092453, 27.757530>,  <12.551139, 27.654058, 27.410517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.292089, 27.092453, 27.757530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.304010, 27.391479, 28.022938>,  <12.311164, 27.570894, 28.182182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.304010, 27.391479, 28.022938>,  <12.292089, 27.092453, 27.757530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.304010, 27.391479, 28.022938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902866, -0.264693, 0.338777,
		0.428887, -0.609167, 0.667062,
		0.029805, 0.747565, 0.663519,
		12.312952, 27.615749, 28.221994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.291952, 26.969444, 28.490864>,  <12.292089, 27.092453, 27.757530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.291952, 26.969444, 28.490864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.122222, 27.329224, 28.449022>,  <12.020384, 27.545092, 28.423918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.122222, 27.329224, 28.449022>,  <12.291952, 26.969444, 28.490864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.122222, 27.329224, 28.449022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844721, -0.351577, 0.403534,
		0.326181, 0.259591, 0.908965,
		-0.424325, 0.899448, -0.104604,
		11.994925, 27.599058, 28.417641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.786367, 26.984497, 29.062267>,  <12.291952, 26.969444, 28.490864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.786367, 26.984497, 29.062267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699643, 27.268106, 28.793856>,  <11.647609, 27.438272, 28.632809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699643, 27.268106, 28.793856>,  <11.786367, 26.984497, 29.062267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.699643, 27.268106, 28.793856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974178, -0.112781, 0.195593,
		0.063001, 0.696108, 0.715167,
		-0.216811, 0.709023, -0.671028,
		11.634600, 27.480814, 28.592546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.530251, 27.524786, 29.423725>,  <11.786367, 26.984497, 29.062267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.530251, 27.524786, 29.423725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.376328, 27.498848, 29.055439>,  <11.283976, 27.483286, 28.834467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.376328, 27.498848, 29.055439>,  <11.530251, 27.524786, 29.423725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.376328, 27.498848, 29.055439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918969, -0.066191, 0.388736,
		-0.086151, 0.995697, -0.034120,
		-0.384805, -0.064846, -0.920717,
		11.260887, 27.479395, 28.779224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.381351, 27.055044, 30.069595>,  <11.530251, 27.524786, 29.423725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.381351, 27.055044, 30.069595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.351990, 26.766071, 30.344608>,  <11.334373, 26.592688, 30.509617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.351990, 26.766071, 30.344608>,  <11.381351, 27.055044, 30.069595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.351990, 26.766071, 30.344608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314488, -0.670987, -0.671471,
		0.946419, 0.166933, 0.276449,
		-0.073403, -0.722433, 0.687534,
		11.329968, 26.549341, 30.550869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.065934, 26.847425, 30.017834>,  <11.381351, 27.055044, 30.069595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.065934, 26.847425, 30.017834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.829459, 26.580971, 30.199717>,  <11.687574, 26.421097, 30.308846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.829459, 26.580971, 30.199717>,  <12.065934, 26.847425, 30.017834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.829459, 26.580971, 30.199717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314281, -0.709480, -0.630766,
		0.742782, -0.229996, 0.628790,
		-0.591188, -0.666138, 0.454706,
		11.652102, 26.381130, 30.336128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.354197, 26.252798, 29.619274>,  <12.065934, 26.847425, 30.017834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.354197, 26.252798, 29.619274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020437, 26.167498, 29.822569>,  <11.820182, 26.116318, 29.944546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020437, 26.167498, 29.822569>,  <12.354197, 26.252798, 29.619274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.020437, 26.167498, 29.822569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154045, -0.795138, -0.586537,
		0.529196, -0.567697, 0.630612,
		-0.834399, -0.213250, 0.508235,
		11.770118, 26.103523, 29.975039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.225133, 25.541132, 29.580982>,  <12.354197, 26.252798, 29.619274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.225133, 25.541132, 29.580982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.856817, 25.598057, 29.726250>,  <11.635828, 25.632212, 29.813410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.856817, 25.598057, 29.726250>,  <12.225133, 25.541132, 29.580982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.856817, 25.598057, 29.726250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315617, -0.818927, -0.479316,
		0.229197, -0.555972, 0.798977,
		-0.920790, 0.142313, 0.363170,
		11.580580, 25.640751, 29.835201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.004644, 25.026163, 30.146971>,  <12.225133, 25.541132, 29.580982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.004644, 25.026163, 30.146971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735937, 25.164965, 29.885187>,  <11.574713, 25.248245, 29.728117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735937, 25.164965, 29.885187>,  <12.004644, 25.026163, 30.146971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.735937, 25.164965, 29.885187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159884, -0.930590, -0.329300,
		-0.723301, -0.116576, 0.680622,
		-0.671768, 0.347004, -0.654458,
		11.534407, 25.269066, 29.688850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.368256, 24.642027, 30.181568>,  <12.004644, 25.026163, 30.146971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.368256, 24.642027, 30.181568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.375656, 24.796665, 29.812742>,  <11.380096, 24.889448, 29.591448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.375656, 24.796665, 29.812742>,  <11.368256, 24.642027, 30.181568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.375656, 24.796665, 29.812742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140449, -0.912072, -0.385227,
		-0.989915, 0.136631, 0.037422,
		0.018503, 0.386598, -0.922063,
		11.381207, 24.912645, 29.536123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.764247, 24.339239, 29.752090>,  <11.368256, 24.642027, 30.181568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.764247, 24.339239, 29.752090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.063967, 24.455492, 29.514071>,  <11.243799, 24.525244, 29.371260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.063967, 24.455492, 29.514071>,  <10.764247, 24.339239, 29.752090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063967, 24.455492, 29.514071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083768, -0.849737, -0.520509,
		-0.656911, 0.439863, -0.612362,
		0.749300, 0.290632, -0.595048,
		11.288756, 24.542681, 29.335556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.517134, 24.212442, 29.091442>,  <10.764247, 24.339239, 29.752090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.517134, 24.212442, 29.091442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.914731, 24.233027, 29.052805>,  <11.153289, 24.245377, 29.029623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.914731, 24.233027, 29.052805>,  <10.517134, 24.212442, 29.091442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.914731, 24.233027, 29.052805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005261, -0.904010, -0.427480,
		-0.109320, 0.424404, -0.898850,
		0.993993, 0.051461, -0.096593,
		11.212929, 24.248465, 29.023827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.696150, 24.072054, 28.404243>,  <10.517134, 24.212442, 29.091442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.696150, 24.072054, 28.404243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.005312, 23.973730, 28.638233>,  <11.190809, 23.914736, 28.778627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.005312, 23.973730, 28.638233>,  <10.696150, 24.072054, 28.404243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.005312, 23.973730, 28.638233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102896, -0.861157, -0.497817,
		0.626122, 0.444957, -0.640300,
		0.772906, -0.245809, 0.584974,
		11.237184, 23.899988, 28.813725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.122690, 23.781864, 27.983374>,  <10.696150, 24.072054, 28.404243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.122690, 23.781864, 27.983374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.266127, 23.654205, 28.334270>,  <11.352188, 23.577610, 28.544809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.266127, 23.654205, 28.334270>,  <11.122690, 23.781864, 27.983374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.266127, 23.654205, 28.334270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355965, -0.821986, -0.444553,
		0.862961, 0.471681, -0.181150,
		0.358590, -0.319149, 0.877244,
		11.373704, 23.558460, 28.597445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.739546, 23.469332, 27.715712>,  <11.122690, 23.781864, 27.983374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.739546, 23.469332, 27.715712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651196, 23.332823, 28.081169>,  <11.598186, 23.250917, 28.300444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651196, 23.332823, 28.081169>,  <11.739546, 23.469332, 27.715712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.651196, 23.332823, 28.081169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251182, -0.925086, -0.284821,
		0.942402, 0.166581, 0.290050,
		-0.220875, -0.341271, 0.913646,
		11.584933, 23.230442, 28.355263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.405728, 23.211544, 27.946976>,  <11.739546, 23.469332, 27.715712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.405728, 23.211544, 27.946976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.103047, 23.046906, 28.150146>,  <11.921439, 22.948122, 28.272049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.103047, 23.046906, 28.150146>,  <12.405728, 23.211544, 27.946976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.103047, 23.046906, 28.150146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319731, -0.910671, -0.261629,
		0.570240, -0.035576, 0.820707,
		-0.756702, -0.411597, 0.507927,
		11.876037, 22.923426, 28.302525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.701362, 22.690229, 28.045168>,  <12.405728, 23.211544, 27.946976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.701362, 22.690229, 28.045168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.324353, 22.599403, 28.143225>,  <12.098148, 22.544907, 28.202059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.324353, 22.599403, 28.143225>,  <12.701362, 22.690229, 28.045168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.324353, 22.599403, 28.143225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170576, -0.957801, -0.231348,
		0.287327, -0.176235, 0.941480,
		-0.942522, -0.227066, 0.245141,
		12.041596, 22.531284, 28.216766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.739229, 21.997602, 28.278940>,  <12.701362, 22.690229, 28.045168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.739229, 21.997602, 28.278940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.353994, 22.009619, 28.171936>,  <12.122853, 22.016829, 28.107733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.353994, 22.009619, 28.171936>,  <12.739229, 21.997602, 28.278940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.353994, 22.009619, 28.171936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116737, -0.848842, -0.515597,
		-0.242562, -0.527793, 0.814002,
		-0.963087, 0.030040, -0.267510,
		12.065068, 22.018631, 28.091682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.581050, 21.246986, 28.136738>,  <12.739229, 21.997602, 28.278940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.581050, 21.246986, 28.136738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.270856, 21.445660, 27.980825>,  <12.084740, 21.564863, 27.887278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.270856, 21.445660, 27.980825>,  <12.581050, 21.246986, 28.136738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.270856, 21.445660, 27.980825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077008, -0.687162, -0.722411,
		-0.626654, -0.530202, 0.571132,
		-0.775484, 0.496683, -0.389783,
		12.038211, 21.594664, 27.863890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.997572, 20.783020, 27.954536>,  <12.581050, 21.246986, 28.136738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.997572, 20.783020, 27.954536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.912179, 21.084652, 27.706089>,  <11.860943, 21.265631, 27.557020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.912179, 21.084652, 27.706089>,  <11.997572, 20.783020, 27.954536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.912179, 21.084652, 27.706089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224840, -0.656635, -0.719915,
		-0.950722, -0.014036, 0.309727,
		-0.213482, 0.754078, -0.621121,
		11.848134, 21.310875, 27.519753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.354753, 20.717207, 27.687889>,  <11.997572, 20.783020, 27.954536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.354753, 20.717207, 27.687889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.570403, 20.921078, 27.419687>,  <11.699793, 21.043400, 27.258766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.570403, 20.921078, 27.419687>,  <11.354753, 20.717207, 27.687889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.570403, 20.921078, 27.419687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369586, -0.572198, -0.732117,
		-0.756803, 0.642512, -0.120117,
		0.539125, 0.509675, -0.670504,
		11.732141, 21.073980, 27.218536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.953339, 20.761610, 27.076338>,  <11.354753, 20.717207, 27.687889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.953339, 20.761610, 27.076338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.312701, 20.855070, 26.927597>,  <11.528318, 20.911146, 26.838352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.312701, 20.855070, 26.927597>,  <10.953339, 20.761610, 27.076338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.312701, 20.855070, 26.927597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237242, -0.454327, -0.858664,
		-0.369570, 0.859647, -0.352738,
		0.898406, 0.233652, -0.371850,
		11.582223, 20.925165, 26.816042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.843117, 20.973925, 26.352541>,  <10.953339, 20.761610, 27.076338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.843117, 20.973925, 26.352541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.223949, 20.858339, 26.392620>,  <11.452449, 20.788988, 26.416668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.223949, 20.858339, 26.392620>,  <10.843117, 20.973925, 26.352541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.223949, 20.858339, 26.392620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114374, -0.640231, -0.759621,
		0.283653, 0.711761, -0.642602,
		0.952082, -0.288965, 0.100196,
		11.509574, 20.771650, 26.422680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.010608, 21.013903, 25.729607>,  <10.843117, 20.973925, 26.352541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.010608, 21.013903, 25.729607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.303418, 20.791037, 25.886427>,  <11.479104, 20.657316, 25.980520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.303418, 20.791037, 25.886427>,  <11.010608, 21.013903, 25.729607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.303418, 20.791037, 25.886427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012890, -0.564038, -0.825648,
		0.681155, 0.609449, -0.405708,
		0.732026, -0.557165, 0.392053,
		11.523026, 20.623886, 26.004044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.560293, 21.040779, 25.291914>,  <11.010608, 21.013903, 25.729607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.560293, 21.040779, 25.291914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.596031, 20.696331, 25.492111>,  <11.617475, 20.489662, 25.612228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.596031, 20.696331, 25.492111>,  <11.560293, 21.040779, 25.291914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.596031, 20.696331, 25.492111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144257, -0.508391, -0.848957,
		0.985498, 0.003652, -0.169645,
		0.089346, -0.861119, 0.500491,
		11.622835, 20.437996, 25.642260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.943467, 20.617445, 24.829714>,  <11.560293, 21.040779, 25.291914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.943467, 20.617445, 24.829714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.812120, 20.357000, 25.103422>,  <11.733313, 20.200733, 25.267647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.812120, 20.357000, 25.103422>,  <11.943467, 20.617445, 24.829714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.812120, 20.357000, 25.103422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142947, -0.681840, -0.717398,
		0.933671, -0.333384, 0.130818,
		-0.328366, -0.651113, 0.684271,
		11.713611, 20.161667, 25.308704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.166020, 20.003117, 24.605507>,  <11.943467, 20.617445, 24.829714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.166020, 20.003117, 24.605507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.862835, 19.904367, 24.847017>,  <11.680923, 19.845118, 24.991922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.862835, 19.904367, 24.847017>,  <12.166020, 20.003117, 24.605507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.862835, 19.904367, 24.847017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341296, -0.638711, -0.689612,
		0.555884, -0.728768, 0.399863,
		-0.757964, -0.246872, 0.603775,
		11.635446, 19.830305, 25.028151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.093188, 19.223265, 24.563927>,  <12.166020, 20.003117, 24.605507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.093188, 19.223265, 24.563927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.742735, 19.373020, 24.685400>,  <11.532463, 19.462873, 24.758284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.742735, 19.373020, 24.685400>,  <12.093188, 19.223265, 24.563927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.742735, 19.373020, 24.685400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482063, -0.677092, -0.556023,
		-0.002548, -0.633545, 0.773701,
		-0.876133, 0.374389, 0.303684,
		11.479895, 19.485336, 24.776505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.631387, 18.581484, 24.705387>,  <12.093188, 19.223265, 24.563927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.631387, 18.581484, 24.705387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.393770, 18.898016, 24.647543>,  <11.251201, 19.087934, 24.612837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.393770, 18.898016, 24.647543>,  <11.631387, 18.581484, 24.705387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.393770, 18.898016, 24.647543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610148, -0.560380, -0.560084,
		-0.524246, -0.244483, 0.815717,
		-0.594043, 0.791329, -0.144606,
		11.215558, 19.135416, 24.604160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.991055, 18.303167, 24.824015>,  <11.631387, 18.581484, 24.705387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.991055, 18.303167, 24.824015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.907180, 18.629795, 24.608889>,  <10.856854, 18.825771, 24.479813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.907180, 18.629795, 24.608889>,  <10.991055, 18.303167, 24.824015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.907180, 18.629795, 24.608889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595558, -0.542902, -0.592088,
		-0.775462, 0.196147, 0.600154,
		-0.209688, 0.816568, -0.537817,
		10.844274, 18.874765, 24.447544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.417441, 18.174374, 24.535395>,  <10.991055, 18.303167, 24.824015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.417441, 18.174374, 24.535395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.536222, 18.479370, 24.305464>,  <10.607491, 18.662369, 24.167505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.536222, 18.479370, 24.305464>,  <10.417441, 18.174374, 24.535395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.536222, 18.479370, 24.305464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409177, -0.442306, -0.798085,
		-0.862783, 0.472199, 0.180650,
		0.296953, 0.762492, -0.574826,
		10.625308, 18.708118, 24.133017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.931607, 18.250898, 24.170710>,  <10.417441, 18.174374, 24.535395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.931607, 18.250898, 24.170710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.208419, 18.440191, 23.952665>,  <10.374506, 18.553768, 23.821838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.208419, 18.440191, 23.952665>,  <9.931607, 18.250898, 24.170710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.208419, 18.440191, 23.952665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513872, -0.207393, -0.832420,
		-0.506982, 0.856176, 0.099660,
		0.692029, 0.473234, -0.545110,
		10.416028, 18.582161, 23.789133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.561712, 18.607689, 23.743404>,  <9.931607, 18.250898, 24.170710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.561712, 18.607689, 23.743404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.915738, 18.619038, 23.557564>,  <10.128154, 18.625847, 23.446060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.915738, 18.619038, 23.557564>,  <9.561712, 18.607689, 23.743404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.915738, 18.619038, 23.557564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458088, -0.123932, -0.880225,
		-0.082554, 0.991885, -0.096690,
		0.885065, 0.028374, -0.464602,
		10.181257, 18.627550, 23.418182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.399426, 18.932800, 23.120224>,  <9.561712, 18.607689, 23.743404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.399426, 18.932800, 23.120224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.749801, 18.754602, 23.046181>,  <9.960026, 18.647684, 23.001755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.749801, 18.754602, 23.046181>,  <9.399426, 18.932800, 23.120224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.749801, 18.754602, 23.046181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323534, -0.257857, -0.910404,
		0.357851, 0.857347, -0.370000,
		0.875939, -0.445496, -0.185106,
		10.012583, 18.620953, 22.990648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.653529, 19.089899, 22.486065>,  <9.399426, 18.932800, 23.120224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.653529, 19.089899, 22.486065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.814467, 18.729107, 22.548740>,  <9.911031, 18.512632, 22.586346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.814467, 18.729107, 22.548740>,  <9.653529, 19.089899, 22.486065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.814467, 18.729107, 22.548740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223396, -0.262709, -0.938658,
		0.887813, 0.342662, -0.307198,
		0.402346, -0.901979, 0.156687,
		9.935171, 18.458513, 22.595747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.011685, 18.888500, 21.810543>,  <9.653529, 19.089899, 22.486065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.011685, 18.888500, 21.810543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.941503, 18.556398, 22.022163>,  <9.899393, 18.357138, 22.149136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.941503, 18.556398, 22.022163>,  <10.011685, 18.888500, 21.810543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.941503, 18.556398, 22.022163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186645, -0.499589, -0.845917,
		0.966633, -0.247166, -0.067307,
		-0.175456, -0.830253, 0.529051,
		9.888865, 18.307322, 22.180880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.403552, 18.415962, 21.415058>,  <10.011685, 18.888500, 21.810543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.403552, 18.415962, 21.415058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.148177, 18.196344, 21.630817>,  <9.994952, 18.064573, 21.760273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.148177, 18.196344, 21.630817>,  <10.403552, 18.415962, 21.415058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.148177, 18.196344, 21.630817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139517, -0.606647, -0.782633,
		0.756924, -0.574917, 0.310705,
		-0.638437, -0.549045, 0.539396,
		9.956646, 18.031631, 21.792637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.452453, 17.771292, 21.008940>,  <10.403552, 18.415962, 21.415058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.452453, 17.771292, 21.008940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.127960, 17.777925, 21.242737>,  <9.933265, 17.781906, 21.383015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.127960, 17.777925, 21.242737>,  <10.452453, 17.771292, 21.008940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.127960, 17.777925, 21.242737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464562, -0.625307, -0.627036,
		0.355088, -0.780203, 0.514971,
		-0.811230, 0.016583, 0.584492,
		9.884591, 17.782900, 21.418085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.482022, 17.118578, 21.356449>,  <10.452453, 17.771292, 21.008940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.482022, 17.118578, 21.356449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.110099, 17.264444, 21.336557>,  <9.886945, 17.351965, 21.324623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.110099, 17.264444, 21.336557>,  <10.482022, 17.118578, 21.356449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.110099, 17.264444, 21.336557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224973, -0.670082, -0.707373,
		-0.291278, -0.646535, 0.705089,
		-0.929809, 0.364668, -0.049727,
		9.831156, 17.373844, 21.321638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.043564, 16.494370, 21.344324>,  <10.482022, 17.118578, 21.356449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.043564, 16.494370, 21.344324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.808043, 16.777832, 21.188826>,  <9.666732, 16.947908, 21.095526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.808043, 16.777832, 21.188826>,  <10.043564, 16.494370, 21.344324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.808043, 16.777832, 21.188826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253009, -0.618375, -0.744042,
		-0.767660, -0.339735, 0.543395,
		-0.588799, 0.708655, -0.388746,
		9.631404, 16.990429, 21.072203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.385721, 16.230122, 21.241673>,  <10.043564, 16.494370, 21.344324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.385721, 16.230122, 21.241673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.401821, 16.531015, 20.978607>,  <9.411481, 16.711552, 20.820768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.401821, 16.531015, 20.978607>,  <9.385721, 16.230122, 21.241673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.401821, 16.531015, 20.978607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368470, -0.600635, -0.709555,
		-0.928768, 0.270890, 0.253000,
		0.040250, 0.752235, -0.657665,
		9.413897, 16.756685, 20.781307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.812985, 16.160639, 20.742718>,  <9.385721, 16.230122, 21.241673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.812985, 16.160639, 20.742718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.032584, 16.440769, 20.560225>,  <9.164344, 16.608847, 20.450729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.032584, 16.440769, 20.560225>,  <8.812985, 16.160639, 20.742718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.032584, 16.440769, 20.560225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132005, -0.466348, -0.874697,
		-0.825334, 0.540431, -0.163578,
		0.548998, 0.700324, -0.456232,
		9.197284, 16.650866, 20.423355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.457458, 16.246796, 20.174479>,  <8.812985, 16.160639, 20.742718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.457458, 16.246796, 20.174479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.824232, 16.392246, 20.108749>,  <9.044297, 16.479517, 20.069313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.824232, 16.392246, 20.108749>,  <8.457458, 16.246796, 20.174479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.824232, 16.392246, 20.108749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054291, -0.521658, -0.851426,
		-0.395321, 0.771783, -0.498069,
		0.916937, 0.363627, -0.164321,
		9.099314, 16.501335, 20.059454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.560114, 16.391819, 19.403990>,  <8.457458, 16.246796, 20.174479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.560114, 16.391819, 19.403990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.941583, 16.383574, 19.524046>,  <9.170464, 16.378626, 19.596081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.941583, 16.383574, 19.524046>,  <8.560114, 16.391819, 19.403990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.941583, 16.383574, 19.524046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261099, -0.438905, -0.859762,
		0.149458, 0.898297, -0.413188,
		0.953672, -0.020615, 0.300142,
		9.227684, 16.377388, 19.614088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.859044, 16.561781, 18.748871>,  <8.560114, 16.391819, 19.403990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.859044, 16.561781, 18.748871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.139836, 16.395048, 18.979858>,  <9.308311, 16.295008, 19.118452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.139836, 16.395048, 18.979858>,  <8.859044, 16.561781, 18.748871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.139836, 16.395048, 18.979858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259731, -0.605154, -0.752548,
		0.663145, 0.678262, -0.316542,
		0.701981, -0.416833, 0.577471,
		9.350430, 16.269999, 19.153099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.539647, 16.629726, 18.367064>,  <8.859044, 16.561781, 18.748871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.539647, 16.629726, 18.367064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.527567, 16.298912, 18.591597>,  <9.520319, 16.100424, 18.726316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.527567, 16.298912, 18.591597>,  <9.539647, 16.629726, 18.367064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.527567, 16.298912, 18.591597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453582, -0.511778, -0.729621,
		0.890703, 0.232577, 0.390585,
		-0.030200, -0.827038, 0.561335,
		9.518507, 16.050800, 18.759996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.110972, 16.274567, 18.052496>,  <9.539647, 16.629726, 18.367064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.110972, 16.274567, 18.052496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.934423, 16.011789, 18.296991>,  <9.828494, 15.854122, 18.443689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.934423, 16.011789, 18.296991>,  <10.110972, 16.274567, 18.052496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.934423, 16.011789, 18.296991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158292, -0.727499, -0.667599,
		0.883252, -0.197906, 0.425088,
		-0.441373, -0.656946, 0.611238,
		9.802011, 15.814706, 18.480362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.653892, 15.708366, 18.148935>,  <10.110972, 16.274567, 18.052496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.653892, 15.708366, 18.148935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.278131, 15.589271, 18.216909>,  <10.052675, 15.517813, 18.257694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.278131, 15.589271, 18.216909>,  <10.653892, 15.708366, 18.148935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.278131, 15.589271, 18.216909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139093, -0.784085, -0.604866,
		0.313338, -0.544574, 0.777983,
		-0.939400, -0.297740, 0.169937,
		9.996311, 15.499949, 18.267891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.670061, 15.070691, 18.269472>,  <10.653892, 15.708366, 18.148935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.670061, 15.070691, 18.269472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.297456, 15.123179, 18.133789>,  <10.073893, 15.154673, 18.052380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.297456, 15.123179, 18.133789>,  <10.670061, 15.070691, 18.269472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.297456, 15.123179, 18.133789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120151, -0.769260, -0.627537,
		-0.343286, -0.625316, 0.700810,
		-0.931515, 0.131221, -0.339208,
		10.018002, 15.162546, 18.032026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.269209, 15.433233, 17.833824>,  <10.670061, 15.070691, 18.269472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.269209, 15.433233, 17.833824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642982, 15.490280, 17.703293>,  <11.867247, 15.524508, 17.624973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642982, 15.490280, 17.703293>,  <11.269209, 15.433233, 17.833824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.642982, 15.490280, 17.703293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332396, -0.020325, 0.942921,
		0.127846, -0.989569, -0.066399,
		0.934435, 0.142619, -0.326330,
		11.923313, 15.533066, 17.605394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.670513, 15.170840, 18.424475>,  <11.269209, 15.433233, 17.833824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.670513, 15.170840, 18.424475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.962755, 15.362567, 18.229961>,  <12.138101, 15.477603, 18.113253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.962755, 15.362567, 18.229961>,  <11.670513, 15.170840, 18.424475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.962755, 15.362567, 18.229961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531774, 0.047294, 0.845564,
		0.428291, -0.876367, -0.220335,
		0.730604, 0.479317, -0.486285,
		12.181936, 15.506362, 18.084076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214392, 14.949820, 18.769165>,  <11.670513, 15.170840, 18.424475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.214392, 14.949820, 18.769165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.344322, 15.279542, 18.583691>,  <12.422280, 15.477376, 18.472406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.344322, 15.279542, 18.583691>,  <12.214392, 14.949820, 18.769165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.344322, 15.279542, 18.583691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737597, 0.086080, 0.669732,
		0.591979, -0.559561, -0.580045,
		0.324826, 0.824307, -0.463687,
		12.441770, 15.526834, 18.444584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.921906, 14.988983, 18.820152>,  <12.214392, 14.949820, 18.769165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.921906, 14.988983, 18.820152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818246, 15.370787, 18.761158>,  <12.756049, 15.599869, 18.725761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818246, 15.370787, 18.761158>,  <12.921906, 14.988983, 18.820152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.818246, 15.370787, 18.761158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514164, 0.265607, 0.815530,
		0.817604, 0.135514, -0.559607,
		-0.259151, 0.954510, -0.147485,
		12.740500, 15.657140, 18.716913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.553576, 15.393902, 19.001724>,  <12.921906, 14.988983, 18.820152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.553576, 15.393902, 19.001724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.258473, 15.662982, 19.024319>,  <13.081411, 15.824430, 19.037874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.258473, 15.662982, 19.024319>,  <13.553576, 15.393902, 19.001724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.258473, 15.662982, 19.024319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433684, 0.408174, 0.803313,
		0.517332, 0.617146, -0.592873,
		-0.737757, 0.672699, 0.056485,
		13.037147, 15.864792, 19.041264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.829064, 15.964116, 19.060619>,  <13.553576, 15.393902, 19.001724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.829064, 15.964116, 19.060619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.487514, 16.090576, 19.226002>,  <13.282584, 16.166452, 19.325232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.487514, 16.090576, 19.226002>,  <13.829064, 15.964116, 19.060619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.487514, 16.090576, 19.226002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518198, 0.442132, 0.732113,
		0.048655, 0.839386, -0.541354,
		-0.853876, 0.316149, 0.413457,
		13.231352, 16.185421, 19.350039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.012289, 16.547054, 19.249289>,  <13.829064, 15.964116, 19.060619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.012289, 16.547054, 19.249289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.684069, 16.467749, 19.463722>,  <13.487137, 16.420164, 19.592382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.684069, 16.467749, 19.463722>,  <14.012289, 16.547054, 19.249289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.684069, 16.467749, 19.463722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411169, 0.446755, 0.794576,
		-0.397036, 0.872411, -0.285064,
		-0.820550, -0.198266, 0.536086,
		13.437903, 16.408268, 19.624548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.663801, 17.174427, 19.573832>,  <14.012289, 16.547054, 19.249289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.663801, 17.174427, 19.573832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607106, 16.853489, 19.805746>,  <13.573090, 16.660927, 19.944895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607106, 16.853489, 19.805746>,  <13.663801, 17.174427, 19.573832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607106, 16.853489, 19.805746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408539, 0.486080, 0.772543,
		-0.901669, 0.346364, 0.258894,
		-0.141738, -0.802346, 0.579786,
		13.564585, 16.612785, 19.979681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.709112, 17.480156, 20.255205>,  <13.663801, 17.174427, 19.573832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.709112, 17.480156, 20.255205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.665482, 17.109156, 20.398226>,  <13.639303, 16.886555, 20.484037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.665482, 17.109156, 20.398226>,  <13.709112, 17.480156, 20.255205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.665482, 17.109156, 20.398226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176655, 0.335883, 0.925189,
		-0.978210, 0.164079, 0.127211,
		-0.109076, -0.927502, 0.357549,
		13.632759, 16.830904, 20.505491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.263524, 17.451981, 20.904230>,  <13.709112, 17.480156, 20.255205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.263524, 17.451981, 20.904230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.493888, 17.124989, 20.907085>,  <13.632107, 16.928793, 20.908798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.493888, 17.124989, 20.907085>,  <13.263524, 17.451981, 20.904230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.493888, 17.124989, 20.907085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293056, 0.214590, 0.931703,
		-0.763181, -0.534485, 0.363152,
		0.575910, -0.817482, 0.007137,
		13.666661, 16.879744, 20.909227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.090981, 17.003521, 21.543556>,  <13.263524, 17.451981, 20.904230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.090981, 17.003521, 21.543556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.457442, 16.887625, 21.432764>,  <13.677319, 16.818087, 21.366289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.457442, 16.887625, 21.432764>,  <13.090981, 17.003521, 21.543556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.457442, 16.887625, 21.432764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236164, -0.168156, 0.957053,
		-0.323872, -0.942218, -0.085630,
		0.916151, -0.289740, -0.276979,
		13.732287, 16.800703, 21.349670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.244135, 16.562260, 22.099239>,  <13.090981, 17.003521, 21.543556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.244135, 16.562260, 22.099239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.592786, 16.658382, 21.928350>,  <13.801976, 16.716057, 21.825817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.592786, 16.658382, 21.928350>,  <13.244135, 16.562260, 22.099239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.592786, 16.658382, 21.928350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395700, 0.169423, 0.902617,
		0.289287, -0.955797, 0.052584,
		0.871628, 0.240308, -0.427220,
		13.854275, 16.730474, 21.800184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.776066, 16.133276, 22.411234>,  <13.244135, 16.562260, 22.099239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.776066, 16.133276, 22.411234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.957948, 16.454582, 22.257347>,  <14.067077, 16.647366, 22.165014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.957948, 16.454582, 22.257347>,  <13.776066, 16.133276, 22.411234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.957948, 16.454582, 22.257347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394015, 0.205962, 0.895729,
		0.798746, -0.558878, -0.222846,
		0.454706, 0.803265, -0.384718,
		14.094359, 16.695562, 22.141932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.408646, 16.122156, 22.730198>,  <13.776066, 16.133276, 22.411234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.408646, 16.122156, 22.730198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355348, 16.501671, 22.615618>,  <14.323369, 16.729380, 22.546869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355348, 16.501671, 22.615618>,  <14.408646, 16.122156, 22.730198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.355348, 16.501671, 22.615618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244376, 0.311554, 0.918267,
		0.960482, 0.052353, -0.273373,
		-0.133245, 0.948785, -0.286449,
		14.315374, 16.786306, 22.529684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829630, 16.384533, 23.156410>,  <14.408646, 16.122156, 22.730198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829630, 16.384533, 23.156410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630191, 16.712742, 23.044596>,  <14.510528, 16.909668, 22.977507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630191, 16.712742, 23.044596>,  <14.829630, 16.384533, 23.156410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.630191, 16.712742, 23.044596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122987, 0.252256, 0.959813,
		0.858065, 0.512940, -0.024860,
		-0.498597, 0.820524, -0.279537,
		14.480612, 16.958899, 22.960735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.129570, 16.749630, 23.551121>,  <14.829630, 16.384533, 23.156410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.129570, 16.749630, 23.551121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.821679, 16.976490, 23.433912>,  <14.636945, 17.112606, 23.363586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.821679, 16.976490, 23.433912>,  <15.129570, 16.749630, 23.551121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.821679, 16.976490, 23.433912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078136, 0.371861, 0.924994,
		0.633574, 0.734888, -0.241916,
		-0.769726, 0.567150, -0.293023,
		14.590761, 17.146635, 23.346006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.392945, 17.431364, 23.628199>,  <15.129570, 16.749630, 23.551121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.392945, 17.431364, 23.628199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.994724, 17.467470, 23.639004>,  <14.755792, 17.489134, 23.645487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.994724, 17.467470, 23.639004>,  <15.392945, 17.431364, 23.628199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994724, 17.467470, 23.639004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067279, 0.480368, 0.874483,
		0.065959, 0.872410, -0.484304,
		-0.995552, 0.090264, 0.027010,
		14.696059, 17.494549, 23.647106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.194294, 18.176840, 23.818701>,  <15.392945, 17.431364, 23.628199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.194294, 18.176840, 23.818701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889532, 17.945225, 23.934784>,  <14.706676, 17.806255, 24.004435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889532, 17.945225, 23.934784>,  <15.194294, 18.176840, 23.818701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889532, 17.945225, 23.934784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072532, 0.521525, 0.850147,
		-0.643616, 0.626681, -0.439351,
		-0.761904, -0.579035, 0.290208,
		14.660961, 17.771515, 24.021847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.696963, 18.647079, 24.190729>,  <15.194294, 18.176840, 23.818701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.696963, 18.647079, 24.190729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.550146, 18.291208, 24.299356>,  <14.462055, 18.077684, 24.364532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.550146, 18.291208, 24.299356>,  <14.696963, 18.647079, 24.190729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.550146, 18.291208, 24.299356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356513, 0.404197, 0.842332,
		-0.859172, 0.212356, -0.465541,
		-0.367044, -0.889680, 0.271567,
		14.440033, 18.024303, 24.380827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.002578, 18.779564, 24.270569>,  <14.696963, 18.647079, 24.190729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.002578, 18.779564, 24.270569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.119977, 18.466581, 24.490248>,  <14.190416, 18.278791, 24.622055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.119977, 18.466581, 24.490248>,  <14.002578, 18.779564, 24.270569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.119977, 18.466581, 24.490248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395835, 0.423461, 0.814859,
		-0.870157, -0.456552, -0.185439,
		0.293499, -0.782458, 0.549197,
		14.208027, 18.231844, 24.655006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.417924, 18.651081, 24.623354>,  <14.002578, 18.779564, 24.270569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.417924, 18.651081, 24.623354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.715446, 18.473158, 24.822912>,  <13.893960, 18.366404, 24.942648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.715446, 18.473158, 24.822912>,  <13.417924, 18.651081, 24.623354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.715446, 18.473158, 24.822912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342472, 0.387362, 0.855958,
		-0.573990, -0.807525, 0.135788,
		0.743807, -0.444808, 0.498896,
		13.938589, 18.339716, 24.972582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.156696, 18.386362, 25.362881>,  <13.417924, 18.651081, 24.623354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.156696, 18.386362, 25.362881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.549191, 18.385242, 25.439993>,  <13.784689, 18.384571, 25.486261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.549191, 18.385242, 25.439993>,  <13.156696, 18.386362, 25.362881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.549191, 18.385242, 25.439993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170934, 0.449917, 0.876559,
		-0.089189, -0.893066, 0.440997,
		0.981237, -0.002798, 0.192783,
		13.843563, 18.384403, 25.497828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.294414, 18.365404, 26.154432>,  <13.156696, 18.386362, 25.362881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.294414, 18.365404, 26.154432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.645695, 18.516993, 26.037718>,  <13.856463, 18.607946, 25.967690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.645695, 18.516993, 26.037718>,  <13.294414, 18.365404, 26.154432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.645695, 18.516993, 26.037718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001151, 0.611735, 0.791062,
		0.478285, -0.694377, 0.537664,
		0.878204, 0.378972, -0.291785,
		13.909156, 18.630684, 25.950182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.667889, 18.487999, 26.839119>,  <13.294414, 18.365404, 26.154432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.667889, 18.487999, 26.839119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.849869, 18.696783, 26.550514>,  <13.959057, 18.822054, 26.377352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.849869, 18.696783, 26.550514>,  <13.667889, 18.487999, 26.839119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.849869, 18.696783, 26.550514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189893, 0.734720, 0.651251,
		0.870035, -0.433296, 0.235144,
		0.454950, 0.521959, -0.721512,
		13.986354, 18.853371, 26.334061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321392, 18.713503, 27.098530>,  <13.667889, 18.487999, 26.839119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321392, 18.713503, 27.098530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.229931, 18.965414, 26.801586>,  <14.175055, 19.116560, 26.623421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.229931, 18.965414, 26.801586>,  <14.321392, 18.713503, 27.098530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.229931, 18.965414, 26.801586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193999, 0.776743, 0.599195,
		0.953983, -0.007010, -0.299780,
		-0.228652, 0.629778, -0.742359,
		14.161335, 19.154348, 26.578878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887335, 19.207462, 27.123785>,  <14.321392, 18.713503, 27.098530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887335, 19.207462, 27.123785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.557271, 19.360794, 26.957811>,  <14.359233, 19.452793, 26.858227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.557271, 19.360794, 26.957811>,  <14.887335, 19.207462, 27.123785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.557271, 19.360794, 26.957811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084693, 0.810173, 0.580040,
		0.558516, 0.443483, -0.700987,
		-0.825158, 0.383331, -0.414935,
		14.309724, 19.475794, 26.833330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034123, 19.822933, 27.102016>,  <14.887335, 19.207462, 27.123785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.034123, 19.822933, 27.102016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.639201, 19.844168, 27.042137>,  <14.402248, 19.856909, 27.006208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.639201, 19.844168, 27.042137>,  <15.034123, 19.822933, 27.102016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.639201, 19.844168, 27.042137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043704, 0.815310, 0.577372,
		0.152703, 0.576585, -0.802640,
		-0.987305, 0.053088, -0.149700,
		14.343010, 19.860094, 26.997227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912994, 20.468834, 26.946098>,  <15.034123, 19.822933, 27.102016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.912994, 20.468834, 26.946098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.562493, 20.344389, 27.093279>,  <14.352193, 20.269722, 27.181587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.562493, 20.344389, 27.093279>,  <14.912994, 20.468834, 26.946098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.562493, 20.344389, 27.093279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046470, 0.814624, 0.578124,
		-0.479605, 0.489484, -0.728275,
		-0.876253, -0.311114, 0.367952,
		14.299618, 20.251055, 27.203665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.484791, 21.038044, 26.970480>,  <14.912994, 20.468834, 26.946098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.484791, 21.038044, 26.970480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.310909, 20.781273, 27.223133>,  <14.206580, 20.627211, 27.374725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.310909, 20.781273, 27.223133>,  <14.484791, 21.038044, 26.970480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.310909, 20.781273, 27.223133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021559, 0.708584, 0.705297,
		-0.900316, 0.292978, -0.321862,
		-0.434703, -0.641929, 0.631633,
		14.180498, 20.588694, 27.412622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.821627, 21.295696, 27.212547>,  <14.484791, 21.038044, 26.970480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.821627, 21.295696, 27.212547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.908108, 21.009127, 27.477877>,  <13.959996, 20.837185, 27.637074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.908108, 21.009127, 27.477877>,  <13.821627, 21.295696, 27.212547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.908108, 21.009127, 27.477877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023210, 0.675428, 0.737061,
		-0.976072, -0.174750, 0.129402,
		0.216203, -0.716422, 0.663322,
		13.972969, 20.794201, 27.676874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.268298, 21.204031, 27.754030>,  <13.821627, 21.295696, 27.212547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.268298, 21.204031, 27.754030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.616387, 21.078283, 27.905758>,  <13.825241, 21.002834, 27.996796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.616387, 21.078283, 27.905758>,  <13.268298, 21.204031, 27.754030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.616387, 21.078283, 27.905758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080960, 0.668225, 0.739541,
		-0.485961, -0.674275, 0.556053,
		0.870223, -0.314370, 0.379320,
		13.877454, 20.983973, 28.019554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.170061, 20.983347, 28.553804>,  <13.268298, 21.204031, 27.754030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.170061, 20.983347, 28.553804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.542035, 21.098703, 28.462545>,  <13.765220, 21.167917, 28.407791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.542035, 21.098703, 28.462545>,  <13.170061, 20.983347, 28.553804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.542035, 21.098703, 28.462545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008886, 0.637873, 0.770090,
		0.367615, -0.714107, 0.595744,
		0.929936, 0.288390, -0.228146,
		13.821015, 21.185221, 28.394102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.552853, 20.972275, 29.203773>,  <13.170061, 20.983347, 28.553804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.552853, 20.972275, 29.203773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.758442, 21.181011, 28.931446>,  <13.881796, 21.306253, 28.768049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.758442, 21.181011, 28.931446>,  <13.552853, 20.972275, 29.203773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.758442, 21.181011, 28.931446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249736, 0.668263, 0.700754,
		0.820648, -0.530194, 0.213146,
		0.513973, 0.521842, -0.680818,
		13.912634, 21.337564, 28.727201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.308269, 20.997257, 29.386507>,  <13.552853, 20.972275, 29.203773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.308269, 20.997257, 29.386507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.158686, 21.320700, 29.204823>,  <14.068935, 21.514765, 29.095812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.158686, 21.320700, 29.204823>,  <14.308269, 20.997257, 29.386507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.158686, 21.320700, 29.204823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260192, 0.561547, 0.785471,
		0.890200, 0.175551, -0.420388,
		-0.373958, 0.808608, -0.454212,
		14.046498, 21.563282, 29.068560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835505, 21.474083, 29.252243>,  <14.308269, 20.997257, 29.386507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.835505, 21.474083, 29.252243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481143, 21.652512, 29.303146>,  <14.268526, 21.759569, 29.333689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481143, 21.652512, 29.303146>,  <14.835505, 21.474083, 29.252243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.481143, 21.652512, 29.303146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413907, 0.636307, 0.650995,
		0.209415, 0.629392, -0.748339,
		-0.885904, 0.446071, 0.127258,
		14.215372, 21.786333, 29.341324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711355, 22.172504, 28.892040>,  <14.835505, 21.474083, 29.252243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711355, 22.172504, 28.892040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.565797, 22.068016, 29.249664>,  <14.478462, 22.005323, 29.464239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.565797, 22.068016, 29.249664>,  <14.711355, 22.172504, 28.892040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.565797, 22.068016, 29.249664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579534, 0.687950, 0.436881,
		-0.729192, 0.677117, -0.098954,
		-0.363895, -0.261223, 0.894060,
		14.456628, 21.989649, 29.517881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.684136, 22.799572, 29.158237>,  <14.711355, 22.172504, 28.892040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.684136, 22.799572, 29.158237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736545, 22.562441, 29.476076>,  <14.767989, 22.420162, 29.666780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736545, 22.562441, 29.476076>,  <14.684136, 22.799572, 29.158237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.736545, 22.562441, 29.476076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552955, 0.708952, 0.437754,
		-0.822846, 0.382022, 0.420695,
		0.131021, -0.592829, 0.794599,
		14.775851, 22.384592, 29.714457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801051, 23.204075, 29.668171>,  <14.684136, 22.799572, 29.158237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.801051, 23.204075, 29.668171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985334, 22.871681, 29.792887>,  <15.095904, 22.672245, 29.867716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985334, 22.871681, 29.792887>,  <14.801051, 23.204075, 29.668171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985334, 22.871681, 29.792887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769005, 0.549129, 0.327244,
		-0.443146, 0.089002, 0.892020,
		0.460709, -0.830985, 0.311787,
		15.123547, 22.622385, 29.886423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407201, 23.440584, 29.126534>,  <14.801051, 23.204075, 29.668171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407201, 23.440584, 29.126534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.547608, 23.770735, 28.949654>,  <15.631853, 23.968824, 28.843525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.547608, 23.770735, 28.949654>,  <15.407201, 23.440584, 29.126534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.547608, 23.770735, 28.949654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276567, -0.359791, -0.891101,
		-0.894592, 0.435092, 0.101978,
		0.351020, 0.825376, -0.442199,
		15.652914, 24.018347, 28.816994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875346, 23.757940, 28.694096>,  <15.407201, 23.440584, 29.126534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.875346, 23.757940, 28.694096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221034, 23.909729, 28.561958>,  <15.428447, 24.000801, 28.482676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221034, 23.909729, 28.561958>,  <14.875346, 23.757940, 28.694096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.221034, 23.909729, 28.561958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247298, -0.251405, -0.935756,
		-0.438142, 0.890392, -0.123427,
		0.864219, 0.379471, -0.330344,
		15.480300, 24.023571, 28.462854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.694001, 24.156149, 28.160734>,  <14.875346, 23.757940, 28.694096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.694001, 24.156149, 28.160734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.085138, 24.091545, 28.107460>,  <15.319820, 24.052782, 28.075495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.085138, 24.091545, 28.107460>,  <14.694001, 24.156149, 28.160734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.085138, 24.091545, 28.107460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157808, -0.150664, -0.975908,
		0.137554, 0.975302, -0.172814,
		0.977842, -0.161512, -0.133186,
		15.378491, 24.043091, 28.067505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.833561, 24.353136, 27.541803>,  <14.694001, 24.156149, 28.160734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.833561, 24.353136, 27.541803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.141027, 24.105780, 27.607222>,  <15.325507, 23.957367, 27.646473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.141027, 24.105780, 27.607222>,  <14.833561, 24.353136, 27.541803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.141027, 24.105780, 27.607222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033653, -0.216229, -0.975763,
		0.638764, 0.755540, -0.145397,
		0.768666, -0.618389, 0.163545,
		15.371628, 23.920263, 27.656284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241886, 24.282261, 26.854700>,  <14.833561, 24.353136, 27.541803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.241886, 24.282261, 26.854700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.391500, 23.989344, 27.082331>,  <15.481268, 23.813593, 27.218908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.391500, 23.989344, 27.082331>,  <15.241886, 24.282261, 26.854700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.391500, 23.989344, 27.082331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229237, -0.521571, -0.821836,
		0.898637, 0.437847, -0.027216,
		0.374034, -0.732293, 0.569074,
		15.503710, 23.769655, 27.253054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.958014, 24.025551, 26.619522>,  <15.241886, 24.282261, 26.854700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.958014, 24.025551, 26.619522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790114, 23.730911, 26.831648>,  <15.689375, 23.554127, 26.958923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790114, 23.730911, 26.831648>,  <15.958014, 24.025551, 26.619522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.790114, 23.730911, 26.831648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255074, -0.656464, -0.709924,
		0.871062, -0.162720, 0.463437,
		-0.419748, -0.736599, 0.530315,
		15.664190, 23.509932, 26.990742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.440699, 23.460735, 26.553764>,  <15.958014, 24.025551, 26.619522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.440699, 23.460735, 26.553764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.102329, 23.285500, 26.675411>,  <15.899307, 23.180357, 26.748400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.102329, 23.285500, 26.675411>,  <16.440699, 23.460735, 26.553764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102329, 23.285500, 26.675411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231843, -0.815642, -0.530073,
		0.480270, -0.377895, 0.791540,
		-0.845925, -0.438091, 0.304116,
		15.848552, 23.154072, 26.766645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687630, 22.725328, 26.626509>,  <16.440699, 23.460735, 26.553764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687630, 22.725328, 26.626509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288412, 22.743877, 26.609735>,  <16.048882, 22.755007, 26.599672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288412, 22.743877, 26.609735>,  <16.687630, 22.725328, 26.626509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288412, 22.743877, 26.609735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010013, -0.780627, -0.624917,
		-0.061712, -0.623274, 0.779564,
		-0.998044, 0.046371, -0.041933,
		15.988999, 22.757788, 26.597157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.461845, 22.041334, 26.696650>,  <16.687630, 22.725328, 26.626509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.461845, 22.041334, 26.696650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168652, 22.252966, 26.525625>,  <15.992736, 22.379946, 26.423010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168652, 22.252966, 26.525625>,  <16.461845, 22.041334, 26.696650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168652, 22.252966, 26.525625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101446, -0.706530, -0.700374,
		-0.672642, -0.469986, 0.571547,
		-0.732981, 0.529082, -0.427564,
		15.948757, 22.411690, 26.397356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925698, 21.588591, 26.495920>,  <16.461845, 22.041334, 26.696650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.925698, 21.588591, 26.495920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881313, 21.909409, 26.261173>,  <15.854682, 22.101898, 26.120325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881313, 21.909409, 26.261173>,  <15.925698, 21.588591, 26.495920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881313, 21.909409, 26.261173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285048, -0.591389, -0.754326,
		-0.952069, 0.083583, 0.294243,
		-0.110963, 0.802043, -0.586868,
		15.848024, 22.150021, 26.085114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256017, 21.529394, 26.276079>,  <15.925698, 21.588591, 26.495920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.256017, 21.529394, 26.276079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466476, 21.739326, 26.008432>,  <15.592752, 21.865286, 25.847843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466476, 21.739326, 26.008432>,  <15.256017, 21.529394, 26.276079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.466476, 21.739326, 26.008432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421325, -0.522594, -0.741203,
		-0.738683, 0.671900, -0.053838,
		0.526150, 0.524830, -0.669119,
		15.624321, 21.896776, 25.807697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900185, 21.375828, 25.698395>,  <15.256017, 21.529394, 26.276079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.900185, 21.375828, 25.698395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.199121, 21.572437, 25.519560>,  <15.378482, 21.690403, 25.412258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.199121, 21.572437, 25.519560>,  <14.900185, 21.375828, 25.698395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.199121, 21.572437, 25.519560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263243, -0.398785, -0.878449,
		-0.610070, 0.774194, -0.168638,
		0.747340, 0.491523, -0.447088,
		15.423323, 21.719894, 25.385433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680547, 21.759985, 25.078356>,  <14.900185, 21.375828, 25.698395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.680547, 21.759985, 25.078356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.055021, 21.627708, 25.030695>,  <15.279706, 21.548342, 25.002098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.055021, 21.627708, 25.030695>,  <14.680547, 21.759985, 25.078356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.055021, 21.627708, 25.030695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253374, -0.399921, -0.880832,
		0.243633, 0.854813, -0.458190,
		0.936186, -0.330693, -0.119153,
		15.335877, 21.528500, 24.994949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831079, 21.853748, 24.414042>,  <14.680547, 21.759985, 25.078356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.831079, 21.853748, 24.414042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.126560, 21.608450, 24.525936>,  <15.303848, 21.461271, 24.593073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.126560, 21.608450, 24.525936>,  <14.831079, 21.853748, 24.414042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.126560, 21.608450, 24.525936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076329, -0.488459, -0.869242,
		0.669698, 0.620758, -0.407634,
		0.738701, -0.613244, 0.279738,
		15.348170, 21.424477, 24.609858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.267227, 21.841990, 23.788862>,  <14.831079, 21.853748, 24.414042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.267227, 21.841990, 23.788862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.366785, 21.527681, 24.015352>,  <15.426520, 21.339096, 24.151247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.366785, 21.527681, 24.015352>,  <15.267227, 21.841990, 23.788862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.366785, 21.527681, 24.015352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038391, -0.592169, -0.804899,
		0.967769, 0.178598, -0.177555,
		0.248896, -0.785773, 0.566227,
		15.441454, 21.291950, 24.185221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.797565, 21.591419, 23.433073>,  <15.267227, 21.841990, 23.788862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.797565, 21.591419, 23.433073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678683, 21.278193, 23.651606>,  <15.607354, 21.090258, 23.782726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678683, 21.278193, 23.651606>,  <15.797565, 21.591419, 23.433073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.678683, 21.278193, 23.651606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008234, -0.570064, -0.821559,
		0.954778, -0.248669, 0.162977,
		-0.297204, -0.783065, 0.546332,
		15.589522, 21.043274, 23.815506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.250193, 21.041168, 23.321726>,  <15.797565, 21.591419, 23.433073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.250193, 21.041168, 23.321726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.907848, 20.881432, 23.453196>,  <15.702441, 20.785589, 23.532078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.907848, 20.881432, 23.453196>,  <16.250193, 21.041168, 23.321726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.907848, 20.881432, 23.453196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098926, -0.750147, -0.653829,
		0.507656, -0.527072, 0.681528,
		-0.855861, -0.399341, 0.328676,
		15.651090, 20.761629, 23.551798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.417479, 20.289444, 23.426525>,  <16.250193, 21.041168, 23.321726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.417479, 20.289444, 23.426525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.020824, 20.325460, 23.389538>,  <15.782832, 20.347071, 23.367346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.020824, 20.325460, 23.389538>,  <16.417479, 20.289444, 23.426525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.020824, 20.325460, 23.389538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009971, -0.767769, -0.640649,
		-0.128679, -0.634369, 0.762245,
		-0.991636, 0.090039, -0.092470,
		15.723333, 20.352472, 23.361797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112724, 19.625214, 23.567551>,  <16.417479, 20.289444, 23.426525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.112724, 19.625214, 23.567551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.828468, 19.812597, 23.357584>,  <15.657915, 19.925028, 23.231604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.828468, 19.812597, 23.357584>,  <16.112724, 19.625214, 23.567551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828468, 19.812597, 23.357584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032510, -0.767160, -0.640631,
		-0.702804, -0.438193, 0.560404,
		-0.710640, 0.468457, -0.524918,
		15.615276, 19.953135, 23.200109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.726436, 19.063751, 23.423193>,  <16.112724, 19.625214, 23.567551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.726436, 19.063751, 23.423193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.596880, 19.359093, 23.186573>,  <15.519147, 19.536297, 23.044601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.596880, 19.359093, 23.186573>,  <15.726436, 19.063751, 23.423193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.596880, 19.359093, 23.186573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031294, -0.633274, -0.773295,
		-0.945578, -0.231949, 0.228216,
		-0.323888, 0.738352, -0.591551,
		15.499713, 19.580599, 23.009108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.140709, 18.800842, 22.954536>,  <15.726436, 19.063751, 23.423193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.140709, 18.800842, 22.954536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289441, 19.115765, 22.757807>,  <15.378680, 19.304718, 22.639769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289441, 19.115765, 22.757807>,  <15.140709, 18.800842, 22.954536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.289441, 19.115765, 22.757807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034271, -0.517810, -0.854809,
		-0.927668, 0.334699, -0.165555,
		0.371830, 0.787305, -0.491826,
		15.400990, 19.351955, 22.610258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.685598, 18.866432, 22.467012>,  <15.140709, 18.800842, 22.954536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.685598, 18.866432, 22.467012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013016, 19.062145, 22.346619>,  <15.209466, 19.179573, 22.274384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013016, 19.062145, 22.346619>,  <14.685598, 18.866432, 22.467012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013016, 19.062145, 22.346619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077945, -0.424509, -0.902062,
		-0.569131, 0.761838, -0.309343,
		0.818544, 0.489280, -0.300983,
		15.258579, 19.208929, 22.256325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.674683, 18.998329, 21.702152>,  <14.685598, 18.866432, 22.467012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.674683, 18.998329, 21.702152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061935, 19.078299, 21.762484>,  <15.294288, 19.126280, 21.798681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061935, 19.078299, 21.762484>,  <14.674683, 18.998329, 21.702152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061935, 19.078299, 21.762484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219309, -0.386007, -0.896048,
		-0.120922, 0.900571, -0.417552,
		0.968133, 0.199925, 0.150826,
		15.352375, 19.138275, 21.807732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.903536, 19.290216, 21.054928>,  <14.674683, 18.998329, 21.702152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.903536, 19.290216, 21.054928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.218892, 19.151577, 21.258224>,  <15.408106, 19.068394, 21.380201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.218892, 19.151577, 21.258224>,  <14.903536, 19.290216, 21.054928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.218892, 19.151577, 21.258224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361109, -0.408114, -0.838477,
		0.498035, 0.844578, -0.196593,
		0.788392, -0.346599, 0.508240,
		15.455410, 19.047598, 21.410696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.506055, 19.494120, 20.699989>,  <14.903536, 19.290216, 21.054928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.506055, 19.494120, 20.699989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.590259, 19.170940, 20.920137>,  <15.640781, 18.977034, 21.052225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.590259, 19.170940, 20.920137>,  <15.506055, 19.494120, 20.699989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.590259, 19.170940, 20.920137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454660, -0.417476, -0.786764,
		0.865430, 0.415852, 0.279459,
		0.210510, -0.807948, 0.550368,
		15.653412, 18.928556, 21.085247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.083187, 19.176220, 20.305246>,  <15.506055, 19.494120, 20.699989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.083187, 19.176220, 20.305246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.020298, 18.904055, 20.591551>,  <15.982564, 18.740755, 20.763334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.020298, 18.904055, 20.591551>,  <16.083187, 19.176220, 20.305246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.020298, 18.904055, 20.591551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464287, -0.690612, -0.554521,
		0.871618, 0.245135, 0.424490,
		-0.157225, -0.680415, 0.715762,
		15.973130, 18.699930, 20.806280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.719624, 18.889872, 20.511658>,  <16.083187, 19.176220, 20.305246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.719624, 18.889872, 20.511658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435305, 18.620007, 20.591255>,  <16.264713, 18.458088, 20.639013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435305, 18.620007, 20.591255>,  <16.719624, 18.889872, 20.511658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.435305, 18.620007, 20.591255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516278, -0.692538, -0.503834,
		0.477727, -0.255388, 0.840567,
		-0.710798, -0.674662, 0.198993,
		16.222065, 18.417608, 20.650953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071482, 18.234268, 20.569853>,  <16.719624, 18.889872, 20.511658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.071482, 18.234268, 20.569853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689184, 18.117395, 20.556089>,  <16.459806, 18.047272, 20.547832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689184, 18.117395, 20.556089>,  <17.071482, 18.234268, 20.569853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689184, 18.117395, 20.556089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271255, -0.829871, -0.487581,
		0.113910, -0.475335, 0.872399,
		-0.955743, -0.292184, -0.034406,
		16.402462, 18.029741, 20.545767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949490, 17.514826, 20.881155>,  <17.071482, 18.234268, 20.569853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.949490, 17.514826, 20.881155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.665482, 17.605698, 20.614542>,  <16.495077, 17.660221, 20.454575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.665482, 17.605698, 20.614542>,  <16.949490, 17.514826, 20.881155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.665482, 17.605698, 20.614542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262253, -0.793132, -0.549696,
		-0.653527, -0.565094, 0.503559,
		-0.710018, 0.227181, -0.666530,
		16.452477, 17.673853, 20.414583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.562849, 16.918859, 20.723465>,  <16.949490, 17.514826, 20.881155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.562849, 16.918859, 20.723465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.490965, 17.146326, 20.402386>,  <16.447834, 17.282806, 20.209738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.490965, 17.146326, 20.402386>,  <16.562849, 16.918859, 20.723465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.490965, 17.146326, 20.402386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412098, -0.697411, -0.586339,
		-0.893241, -0.436161, -0.109015,
		-0.179710, 0.568666, -0.802697,
		16.437052, 17.316925, 20.161577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294027, 16.499332, 20.188763>,  <16.562849, 16.918859, 20.723465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294027, 16.499332, 20.188763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.377684, 16.806997, 19.947218>,  <16.427877, 16.991596, 19.802292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.377684, 16.806997, 19.947218>,  <16.294027, 16.499332, 20.188763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.377684, 16.806997, 19.947218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288707, -0.638559, -0.713366,
		-0.934295, -0.025145, -0.355612,
		0.209141, 0.769162, -0.603862,
		16.440426, 17.037746, 19.766060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891802, 16.465017, 19.554043>,  <16.294027, 16.499332, 20.188763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891802, 16.465017, 19.554043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.192743, 16.712103, 19.462484>,  <16.373308, 16.860355, 19.407549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.192743, 16.712103, 19.462484>,  <15.891802, 16.465017, 19.554043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.192743, 16.712103, 19.462484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107650, -0.458080, -0.882369,
		-0.649905, 0.639212, -0.411134,
		0.752353, 0.617715, -0.228897,
		16.418449, 16.897417, 19.393816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.733875, 16.647223, 18.901407>,  <15.891802, 16.465017, 19.554043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.733875, 16.647223, 18.901407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125006, 16.724213, 18.934418>,  <16.359684, 16.770407, 18.954224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125006, 16.724213, 18.934418>,  <15.733875, 16.647223, 18.901407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.125006, 16.724213, 18.934418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149634, -0.366429, -0.918335,
		-0.146518, 0.910320, -0.387104,
		0.977825, 0.192477, 0.082526,
		16.418354, 16.781956, 18.959175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.959558, 16.843699, 18.302214>,  <15.733875, 16.647223, 18.901407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.959558, 16.843699, 18.302214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.311157, 16.711823, 18.440006>,  <16.522116, 16.632696, 18.522682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.311157, 16.711823, 18.440006>,  <15.959558, 16.843699, 18.302214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.311157, 16.711823, 18.440006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276876, -0.235273, -0.931658,
		0.388207, 0.914303, -0.115521,
		0.878997, -0.329691, 0.344483,
		16.574856, 16.612915, 18.543352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.399891, 16.779057, 17.622677>,  <15.959558, 16.843699, 18.302214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.399891, 16.779057, 17.622677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606405, 16.574993, 17.897831>,  <16.730314, 16.452555, 18.062923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606405, 16.574993, 17.897831>,  <16.399891, 16.779057, 17.622677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606405, 16.574993, 17.897831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519303, -0.452217, -0.725137,
		0.681010, 0.731598, 0.031455,
		0.516285, -0.510161, 0.687885,
		16.761292, 16.421946, 18.104197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.147463, 16.987574, 17.544903>,  <16.399891, 16.779057, 17.622677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.147463, 16.987574, 17.544903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131390, 16.621084, 17.704363>,  <17.121746, 16.401192, 17.800039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131390, 16.621084, 17.704363>,  <17.147463, 16.987574, 17.544903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131390, 16.621084, 17.704363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596569, -0.342056, -0.726019,
		0.801555, 0.208648, 0.560335,
		-0.040183, -0.916222, 0.398650,
		17.119335, 16.346218, 17.823957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851583, 16.732792, 17.836903>,  <17.147463, 16.987574, 17.544903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851583, 16.732792, 17.836903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.621588, 16.419662, 17.741762>,  <17.483589, 16.231785, 17.684677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.621588, 16.419662, 17.741762>,  <17.851583, 16.732792, 17.836903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.621588, 16.419662, 17.741762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692801, -0.311216, -0.650516,
		0.435215, -0.538826, 0.721287,
		-0.574991, -0.782823, -0.237852,
		17.449091, 16.184816, 17.670406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.341742, 16.430996, 17.483734>,  <17.851583, 16.732792, 17.836903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.341742, 16.430996, 17.483734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028227, 16.193605, 17.410561>,  <17.840118, 16.051172, 17.366655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028227, 16.193605, 17.410561>,  <18.341742, 16.430996, 17.483734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028227, 16.193605, 17.410561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451591, -0.342444, -0.823892,
		0.426315, -0.728368, 0.536411,
		-0.783787, -0.593475, -0.182935,
		17.793091, 16.015562, 17.355680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.603405, 15.718863, 17.339506>,  <18.341742, 16.430996, 17.483734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.603405, 15.718863, 17.339506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.246077, 15.754620, 17.163332>,  <18.031679, 15.776073, 17.057627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.246077, 15.754620, 17.163332>,  <18.603405, 15.718863, 17.339506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.246077, 15.754620, 17.163332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359593, -0.445657, -0.819807,
		-0.269566, -0.890730, 0.365971,
		-0.893323, 0.089391, -0.440434,
		17.978079, 15.781438, 17.031202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.359964, 14.998295, 17.197994>,  <18.603405, 15.718863, 17.339506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.359964, 14.998295, 17.197994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.159027, 15.233736, 16.944635>,  <18.038464, 15.375001, 16.792620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.159027, 15.233736, 16.944635>,  <18.359964, 14.998295, 17.197994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.159027, 15.233736, 16.944635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140416, -0.667279, -0.731452,
		-0.853190, -0.456380, 0.252555,
		-0.502345, 0.588605, -0.633399,
		18.008324, 15.410317, 16.754616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866871, 14.525109, 16.998857>,  <18.359964, 14.998295, 17.197994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866871, 14.525109, 16.998857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.927670, 14.808475, 16.723164>,  <17.964149, 14.978494, 16.557747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.927670, 14.808475, 16.723164>,  <17.866871, 14.525109, 16.998857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.927670, 14.808475, 16.723164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285193, -0.699113, -0.655672,
		-0.946341, -0.096906, -0.308297,
		0.151996, 0.708414, -0.689237,
		17.973269, 15.020999, 16.516392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382765, 14.019840, 16.682713>,  <17.866871, 14.525109, 16.998857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382765, 14.019840, 16.682713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437449, 14.127657, 17.064007>,  <18.470259, 14.192347, 17.292784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437449, 14.127657, 17.064007>,  <18.382765, 14.019840, 16.682713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.437449, 14.127657, 17.064007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579298, -0.758826, 0.297650,
		0.803569, -0.592900, 0.052405,
		0.136710, 0.269541, 0.953235,
		18.478462, 14.208519, 17.349977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.508072, 14.099458, 16.001976>,  <18.382765, 14.019840, 16.682713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.508072, 14.099458, 16.001976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768314, 14.265511, 15.747614>,  <18.924459, 14.365143, 15.594997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768314, 14.265511, 15.747614>,  <18.508072, 14.099458, 16.001976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.768314, 14.265511, 15.747614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132216, -0.886494, -0.443450,
		-0.747816, 0.204436, -0.631647,
		0.650608, 0.415133, -0.635904,
		18.963497, 14.390051, 15.556843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.230934, 14.032743, 15.322555>,  <18.508072, 14.099458, 16.001976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.230934, 14.032743, 15.322555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.627131, 14.008597, 15.372002>,  <18.864849, 13.994110, 15.401670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.627131, 14.008597, 15.372002>,  <18.230934, 14.032743, 15.322555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.627131, 14.008597, 15.372002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019637, -0.951424, -0.307257,
		0.136161, 0.301908, -0.943563,
		0.990492, -0.060365, 0.123618,
		18.924278, 13.990488, 15.409087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.499220, 13.864067, 14.662125>,  <18.230934, 14.032743, 15.322555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.499220, 13.864067, 14.662125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.713207, 13.752375, 14.981082>,  <18.841600, 13.685359, 15.172457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.713207, 13.752375, 14.981082>,  <18.499220, 13.864067, 14.662125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.713207, 13.752375, 14.981082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091994, -0.957446, -0.273558,
		0.839848, 0.072991, -0.537893,
		0.534971, -0.279230, 0.797394,
		18.873699, 13.668606, 15.220301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233765, 13.634224, 14.522149>,  <18.499220, 13.864067, 14.662125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.233765, 13.634224, 14.522149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.062258, 13.443915, 14.829343>,  <18.959354, 13.329730, 15.013659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.062258, 13.443915, 14.829343>,  <19.233765, 13.634224, 14.522149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.062258, 13.443915, 14.829343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147020, -0.875505, -0.460301,
		0.891372, -0.084452, 0.445335,
		-0.428766, -0.475773, 0.767984,
		18.933628, 13.301184, 15.059738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.705843, 13.185447, 14.873957>,  <19.233765, 13.634224, 14.522149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.705843, 13.185447, 14.873957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.323933, 13.069463, 14.900268>,  <19.094786, 12.999872, 14.916055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.323933, 13.069463, 14.900268>,  <19.705843, 13.185447, 14.873957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.323933, 13.069463, 14.900268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249188, -0.901053, -0.354976,
		0.162198, -0.322532, 0.932558,
		-0.954776, -0.289959, 0.065778,
		19.037500, 12.982475, 14.920001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.174316, 13.046013, 15.415720>,  <19.705843, 13.185447, 14.873957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.174316, 13.046013, 15.415720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.488420, 12.850979, 15.263074>,  <20.676882, 12.733958, 15.171486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.488420, 12.850979, 15.263074>,  <20.174316, 13.046013, 15.415720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.488420, 12.850979, 15.263074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569800, 0.327904, 0.753530,
		-0.242277, -0.809160, 0.535316,
		0.785258, -0.487586, -0.381615,
		20.723997, 12.704703, 15.148589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.821886, 13.273454, 15.580103>,  <20.174316, 13.046013, 15.415720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.821886, 13.273454, 15.580103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129028, 13.096928, 15.765850>,  <21.313314, 12.991013, 15.877298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129028, 13.096928, 15.765850>,  <20.821886, 13.273454, 15.580103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129028, 13.096928, 15.765850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516879, -0.001441, -0.856057,
		0.378459, 0.897352, 0.227000,
		0.767857, -0.441314, 0.464368,
		21.359385, 12.964534, 15.905160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.411222, 13.626407, 15.326345>,  <20.821886, 13.273454, 15.580103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.411222, 13.626407, 15.326345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.549061, 13.276486, 15.462568>,  <21.631763, 13.066534, 15.544302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.549061, 13.276486, 15.462568>,  <21.411222, 13.626407, 15.326345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.549061, 13.276486, 15.462568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565197, -0.096318, -0.819314,
		0.749538, 0.474813, 0.461244,
		0.344595, -0.874800, 0.340557,
		21.652439, 13.014047, 15.564735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.067026, 13.765743, 15.336002>,  <21.411222, 13.626407, 15.326345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.067026, 13.765743, 15.336002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.987631, 13.379724, 15.267556>,  <21.939993, 13.148111, 15.226489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.987631, 13.379724, 15.267556>,  <22.067026, 13.765743, 15.336002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.987631, 13.379724, 15.267556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588497, 0.022262, -0.808194,
		0.783756, -0.261118, 0.563510,
		-0.198489, -0.965050, -0.171115,
		21.928083, 13.090208, 15.216222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.693651, 13.589316, 14.968335>,  <22.067026, 13.765743, 15.336002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.693651, 13.589316, 14.968335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.471786, 13.263182, 14.901911>,  <22.338667, 13.067501, 14.862056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.471786, 13.263182, 14.901911>,  <22.693651, 13.589316, 14.968335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.471786, 13.263182, 14.901911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502766, -0.169379, -0.847665,
		0.663006, -0.553657, 0.503872,
		-0.554661, -0.815337, -0.166061,
		22.305387, 13.018580, 14.852093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.135281, 13.197662, 14.717687>,  <22.693651, 13.589316, 14.968335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.135281, 13.197662, 14.717687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.787439, 13.037050, 14.602752>,  <22.578735, 12.940682, 14.533791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.787439, 13.037050, 14.602752>,  <23.135281, 13.197662, 14.717687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.787439, 13.037050, 14.602752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353536, -0.100113, -0.930048,
		0.344678, -0.910357, 0.229015,
		-0.869603, -0.401532, -0.287338,
		22.526558, 12.916591, 14.516550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.303743, 12.508234, 14.405465>,  <23.135281, 13.197662, 14.717687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.303743, 12.508234, 14.405465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.955795, 12.661539, 14.281246>,  <22.747026, 12.753522, 14.206715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.955795, 12.661539, 14.281246>,  <23.303743, 12.508234, 14.405465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.955795, 12.661539, 14.281246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375362, 0.105825, -0.920817,
		-0.320052, -0.917556, -0.235916,
		-0.869868, 0.383264, -0.310546,
		22.694836, 12.776518, 14.188082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.306662, 12.220331, 13.662863>,  <23.303743, 12.508234, 14.405465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.306662, 12.220331, 13.662863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023378, 12.502557, 13.672843>,  <22.853409, 12.671892, 13.678831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023378, 12.502557, 13.672843>,  <23.306662, 12.220331, 13.662863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.023378, 12.502557, 13.672843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233918, 0.267845, -0.934635,
		-0.666128, -0.656077, -0.354733,
		-0.708206, 0.705565, 0.024951,
		22.810917, 12.714227, 13.680328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.833206, 12.137971, 13.019002>,  <23.306662, 12.220331, 13.662863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.833206, 12.137971, 13.019002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.802629, 12.522306, 13.125544>,  <22.784285, 12.752908, 13.189468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.802629, 12.522306, 13.125544>,  <22.833206, 12.137971, 13.019002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.802629, 12.522306, 13.125544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144391, 0.274987, -0.950544,
		-0.986564, -0.034201, -0.159757,
		-0.076440, 0.960839, 0.266354,
		22.779697, 12.810558, 13.205450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.355450, 12.514642, 12.412632>,  <22.833206, 12.137971, 13.019002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.355450, 12.514642, 12.412632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.519304, 12.815405, 12.619256>,  <22.617617, 12.995863, 12.743230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.519304, 12.815405, 12.619256>,  <22.355450, 12.514642, 12.412632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.519304, 12.815405, 12.619256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048106, 0.583265, -0.810856,
		-0.910980, 0.307305, 0.275097,
		0.409635, 0.751908, 0.516559,
		22.642195, 13.040977, 12.774224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.077440, 13.077458, 12.224361>,  <22.355450, 12.514642, 12.412632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.077440, 13.077458, 12.224361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.414865, 13.236638, 12.368606>,  <22.617321, 13.332146, 12.455152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.414865, 13.236638, 12.368606>,  <22.077440, 13.077458, 12.224361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.414865, 13.236638, 12.368606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075088, 0.577489, -0.812938,
		-0.531757, 0.712841, 0.457266,
		0.843562, 0.397950, 0.360609,
		22.667934, 13.356023, 12.476789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.072546, 13.820438, 12.137702>,  <22.077440, 13.077458, 12.224361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.072546, 13.820438, 12.137702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.460327, 13.760205, 12.215146>,  <22.692995, 13.724066, 12.261613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.460327, 13.760205, 12.215146>,  <22.072546, 13.820438, 12.137702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.460327, 13.760205, 12.215146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244069, 0.514075, -0.822288,
		0.024292, 0.844424, 0.535125,
		0.969454, -0.150582, 0.193610,
		22.751163, 13.715031, 12.273229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.390753, 14.446810, 12.014468>,  <22.072546, 13.820438, 12.137702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.390753, 14.446810, 12.014468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.696190, 14.188622, 12.021392>,  <22.879452, 14.033710, 12.025546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.696190, 14.188622, 12.021392>,  <22.390753, 14.446810, 12.014468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.696190, 14.188622, 12.021392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519225, 0.597869, -0.610704,
		0.383840, 0.475316, 0.791670,
		0.763592, -0.645467, 0.017310,
		22.925268, 13.994983, 12.026585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.982302, 14.824182, 12.169951>,  <22.390753, 14.446810, 12.014468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.982302, 14.824182, 12.169951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.108999, 14.502764, 11.968361>,  <23.185019, 14.309914, 11.847406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.108999, 14.502764, 11.968361>,  <22.982302, 14.824182, 12.169951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.108999, 14.502764, 11.968361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319565, 0.590674, -0.740933,
		0.893057, 0.073633, 0.443877,
		0.316744, -0.803544, -0.503975,
		23.204021, 14.261701, 11.817168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.723131, 14.885571, 12.086944>,  <22.982302, 14.824182, 12.169951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.723131, 14.885571, 12.086944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.601175, 14.654673, 11.783937>,  <23.528002, 14.516133, 11.602134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.601175, 14.654673, 11.783937>,  <23.723131, 14.885571, 12.086944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.601175, 14.654673, 11.783937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539449, 0.550820, -0.636861,
		0.784880, -0.602814, 0.143455,
		-0.304891, -0.577246, -0.757515,
		23.509708, 14.481499, 11.556683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.265886, 14.853224, 11.633595>,  <23.723131, 14.885571, 12.086944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.265886, 14.853224, 11.633595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.963171, 14.724144, 11.406215>,  <23.781542, 14.646696, 11.269786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.963171, 14.724144, 11.406215>,  <24.265886, 14.853224, 11.633595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.963171, 14.724144, 11.406215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414623, 0.435319, -0.799115,
		0.505332, -0.840454, -0.195645,
		-0.756787, -0.322700, -0.568452,
		23.736135, 14.627334, 11.235679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604368, 14.758080, 10.997819>,  <24.265886, 14.853224, 11.633595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604368, 14.758080, 10.997819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214863, 14.743118, 10.908035>,  <23.981159, 14.734141, 10.854165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214863, 14.743118, 10.908035>,  <24.604368, 14.758080, 10.997819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.214863, 14.743118, 10.908035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205360, 0.280446, -0.937645,
		0.098021, -0.959141, -0.265407,
		-0.973766, -0.037405, -0.224458,
		23.922733, 14.731896, 10.840697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588854, 14.271024, 10.502445>,  <24.604368, 14.758080, 10.997819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588854, 14.271024, 10.502445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293175, 14.539332, 10.478268>,  <24.115768, 14.700317, 10.463761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293175, 14.539332, 10.478268>,  <24.588854, 14.271024, 10.502445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293175, 14.539332, 10.478268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217309, 0.152600, -0.964101,
		-0.637468, -0.725795, -0.258566,
		-0.739197, 0.670771, -0.060444,
		24.071415, 14.740563, 10.460135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.410894, 14.162165, 9.746444>,  <24.588854, 14.271024, 10.502445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.410894, 14.162165, 9.746444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197603, 14.482803, 9.854599>,  <24.069628, 14.675186, 9.919493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197603, 14.482803, 9.854599>,  <24.410894, 14.162165, 9.746444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.197603, 14.482803, 9.854599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050722, 0.349338, -0.935623,
		-0.844449, -0.485187, -0.226936,
		-0.533230, 0.801596, 0.270389,
		24.037634, 14.723282, 9.935716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.970047, 14.268573, 9.214381>,  <24.410894, 14.162165, 9.746444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.970047, 14.268573, 9.214381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.988224, 14.624960, 9.395097>,  <23.999130, 14.838792, 9.503526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.988224, 14.624960, 9.395097>,  <23.970047, 14.268573, 9.214381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.988224, 14.624960, 9.395097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045672, 0.449929, -0.891896,
		-0.997922, 0.061166, -0.020246,
		0.045445, 0.890967, 0.451788,
		24.001858, 14.892250, 9.530633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.640537, 14.687516, 8.830274>,  <23.970047, 14.268573, 9.214381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.640537, 14.687516, 8.830274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.875763, 14.942421, 9.029503>,  <24.016899, 15.095364, 9.149040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.875763, 14.942421, 9.029503>,  <23.640537, 14.687516, 8.830274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.875763, 14.942421, 9.029503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183168, 0.494880, -0.849437,
		-0.787800, 0.590755, 0.174296,
		0.588065, 0.637262, 0.498073,
		24.052183, 15.133599, 9.178925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.473713, 15.339596, 8.727015>,  <23.640537, 14.687516, 8.830274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.473713, 15.339596, 8.727015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.860758, 15.351810, 8.827247>,  <24.092985, 15.359139, 8.887386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.860758, 15.351810, 8.827247>,  <23.473713, 15.339596, 8.727015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.860758, 15.351810, 8.827247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225977, 0.337618, -0.913755,
		-0.112504, 0.940788, 0.319783,
		0.967614, 0.030537, 0.250580,
		24.151043, 15.360971, 8.902421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.827974, 15.973229, 8.529936>,  <23.473713, 15.339596, 8.727015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.827974, 15.973229, 8.529936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.121822, 15.701904, 8.535983>,  <24.298130, 15.539109, 8.539612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.121822, 15.701904, 8.535983>,  <23.827974, 15.973229, 8.529936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.121822, 15.701904, 8.535983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380202, 0.393101, -0.837209,
		0.561946, 0.620777, 0.546674,
		0.734618, -0.678312, 0.015119,
		24.342207, 15.498410, 8.540519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.415667, 16.653580, 8.299545>,  <23.827974, 15.973229, 8.529936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.415667, 16.653580, 8.299545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.526165, 17.027433, 8.209970>,  <23.592464, 17.251745, 8.156224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.526165, 17.027433, 8.209970>,  <23.415667, 16.653580, 8.299545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.526165, 17.027433, 8.209970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827669, -0.349787, -0.438877,
		-0.488520, -0.064109, -0.870194,
		0.276246, 0.934633, -0.223939,
		23.609039, 17.307823, 8.142788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.451326, 17.155069, 8.794630>,  <23.415667, 16.653580, 8.299545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.451326, 17.155069, 8.794630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.349888, 17.291256, 9.156796>,  <23.289024, 17.372967, 9.374095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.349888, 17.291256, 9.156796>,  <23.451326, 17.155069, 8.794630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.349888, 17.291256, 9.156796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638918, 0.761729, -0.107483,
		-0.726274, 0.551228, -0.410700,
		-0.253594, 0.340465, 0.905413,
		23.273809, 17.393396, 9.428419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.454353, 17.797445, 8.878317>,  <23.451326, 17.155069, 8.794630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.454353, 17.797445, 8.878317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.560669, 17.739773, 9.259592>,  <23.624458, 17.705170, 9.488358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.560669, 17.739773, 9.259592>,  <23.454353, 17.797445, 8.878317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.560669, 17.739773, 9.259592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804617, 0.577782, -0.136964,
		-0.530987, 0.803355, 0.269580,
		0.265789, -0.144183, 0.953188,
		23.640406, 17.696518, 9.545548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.442944, 18.472145, 9.170252>,  <23.454353, 17.797445, 8.878317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.442944, 18.472145, 9.170252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.690298, 18.237478, 9.379410>,  <23.838711, 18.096678, 9.504905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.690298, 18.237478, 9.379410>,  <23.442944, 18.472145, 9.170252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.690298, 18.237478, 9.379410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781009, 0.532695, -0.325976,
		-0.087305, 0.609966, 0.787604,
		0.618387, -0.586666, 0.522896,
		23.875814, 18.061478, 9.536279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.775457, 18.802546, 9.833390>,  <23.442944, 18.472145, 9.170252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.775457, 18.802546, 9.833390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.987368, 18.525761, 9.637218>,  <24.114513, 18.359690, 9.519515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.987368, 18.525761, 9.637218>,  <23.775457, 18.802546, 9.833390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.987368, 18.525761, 9.637218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762306, 0.641962, -0.082301,
		0.371787, -0.330257, 0.867586,
		0.529777, -0.691964, -0.490430,
		24.146301, 18.318171, 9.490089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.536665, 18.609308, 10.134901>,  <23.775457, 18.802546, 9.833390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.536665, 18.609308, 10.134901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.552624, 18.515911, 9.746285>,  <24.562199, 18.459873, 9.513116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.552624, 18.515911, 9.746285>,  <24.536665, 18.609308, 10.134901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.552624, 18.515911, 9.746285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806655, 0.581332, -0.106588,
		0.589674, -0.779445, 0.211541,
		0.039896, -0.233493, -0.971540,
		24.564592, 18.445864, 9.454823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207783, 18.585873, 10.456161>,  <24.536665, 18.609308, 10.134901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207783, 18.585873, 10.456161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548477, 18.441423, 10.608022>,  <25.752893, 18.354753, 10.699139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548477, 18.441423, 10.608022>,  <25.207783, 18.585873, 10.456161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548477, 18.441423, 10.608022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467855, -0.850388, 0.240733,
		0.235919, -0.382664, -0.893258,
		0.851736, -0.361122, 0.379654,
		25.803997, 18.333086, 10.721918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291121, 17.898502, 10.564866>,  <25.207783, 18.585873, 10.456161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291121, 17.898502, 10.564866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552965, 18.008835, 10.846406>,  <25.710072, 18.075035, 11.015329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552965, 18.008835, 10.846406>,  <25.291121, 17.898502, 10.564866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552965, 18.008835, 10.846406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497379, -0.544007, 0.675774,
		0.569299, -0.792448, -0.218919,
		0.654609, 0.275831, 0.703849,
		25.749348, 18.091585, 11.057561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546724, 17.311953, 10.932707>,  <25.291121, 17.898502, 10.564866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546724, 17.311953, 10.932707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592175, 17.626461, 11.175644>,  <25.619444, 17.815166, 11.321406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592175, 17.626461, 11.175644>,  <25.546724, 17.311953, 10.932707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592175, 17.626461, 11.175644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455398, -0.502084, 0.735203,
		0.883008, -0.360119, 0.301018,
		0.113624, 0.786273, 0.607342,
		25.626263, 17.862343, 11.357846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904659, 17.021996, 11.495124>,  <25.546724, 17.311953, 10.932707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904659, 17.021996, 11.495124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719446, 17.358561, 11.606569>,  <25.608318, 17.560499, 11.673436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719446, 17.358561, 11.606569>,  <25.904659, 17.021996, 11.495124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719446, 17.358561, 11.606569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386722, -0.474627, 0.790680,
		0.797526, 0.258364, 0.545160,
		-0.463031, 0.841413, 0.278613,
		25.580536, 17.610985, 11.690153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896303, 16.980000, 12.133163>,  <25.904659, 17.021996, 11.495124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896303, 16.980000, 12.133163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635136, 17.280899, 12.097798>,  <25.478436, 17.461439, 12.076579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635136, 17.280899, 12.097798>,  <25.896303, 16.980000, 12.133163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635136, 17.280899, 12.097798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509793, -0.350118, 0.785830,
		0.560186, 0.558155, 0.612090,
		-0.652919, 0.752250, -0.088412,
		25.439260, 17.506575, 12.071275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781725, 17.208244, 12.838856>,  <25.896303, 16.980000, 12.133163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781725, 17.208244, 12.838856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480576, 17.349297, 12.616564>,  <25.299887, 17.433928, 12.483189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480576, 17.349297, 12.616564>,  <25.781725, 17.208244, 12.838856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480576, 17.349297, 12.616564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653913, -0.304909, 0.692408,
		0.074718, 0.884693, 0.460147,
		-0.752872, 0.352631, -0.555730,
		25.254715, 17.455086, 12.449844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449766, 17.673874, 13.277420>,  <25.781725, 17.208244, 12.838856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449766, 17.673874, 13.277420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205997, 17.535086, 12.992263>,  <25.059736, 17.451813, 12.821169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205997, 17.535086, 12.992263>,  <25.449766, 17.673874, 13.277420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205997, 17.535086, 12.992263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637746, -0.319682, 0.700773,
		-0.471048, 0.881711, -0.026459,
		-0.609421, -0.346972, -0.712893,
		25.023170, 17.430994, 12.778395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800335, 17.853128, 13.488955>,  <25.449766, 17.673874, 13.277420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800335, 17.853128, 13.488955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703785, 17.579807, 13.213322>,  <24.645855, 17.415815, 13.047941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703785, 17.579807, 13.213322>,  <24.800335, 17.853128, 13.488955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.703785, 17.579807, 13.213322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679631, -0.387834, 0.622645,
		-0.692704, 0.618614, -0.370779,
		-0.241376, -0.683302, -0.689084,
		24.631372, 17.374817, 13.006597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.010557, 17.821165, 13.542408>,  <24.800335, 17.853128, 13.488955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.010557, 17.821165, 13.542408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.152018, 17.488264, 13.371629>,  <24.236893, 17.288523, 13.269161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.152018, 17.488264, 13.371629>,  <24.010557, 17.821165, 13.542408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.152018, 17.488264, 13.371629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685745, -0.541112, 0.486776,
		-0.636149, 0.120631, -0.762078,
		0.353649, -0.832253, -0.426950,
		24.258112, 17.238588, 13.243544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.482895, 17.374731, 13.236197>,  <24.010557, 17.821165, 13.542408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.482895, 17.374731, 13.236197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.783634, 17.118376, 13.298150>,  <23.964077, 16.964563, 13.335322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.783634, 17.118376, 13.298150>,  <23.482895, 17.374731, 13.236197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.783634, 17.118376, 13.298150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648150, -0.675317, 0.351921,
		-0.120946, -0.364979, -0.923126,
		0.751846, -0.640888, 0.154884,
		24.009188, 16.926109, 13.344615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.126957, 16.742981, 13.253891>,  <23.482895, 17.374731, 13.236197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.126957, 16.742981, 13.253891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.471411, 16.661684, 13.440284>,  <23.678083, 16.612906, 13.552119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.471411, 16.661684, 13.440284>,  <23.126957, 16.742981, 13.253891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.471411, 16.661684, 13.440284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488519, -0.584503, 0.647846,
		0.140699, -0.785524, -0.602623,
		0.861134, -0.203241, 0.465983,
		23.729752, 16.600712, 13.580079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.098379, 16.029463, 13.332905>,  <23.126957, 16.742981, 13.253891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.098379, 16.029463, 13.332905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.364487, 16.165083, 13.598976>,  <23.524151, 16.246456, 13.758619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.364487, 16.165083, 13.598976>,  <23.098379, 16.029463, 13.332905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.364487, 16.165083, 13.598976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413740, -0.574205, 0.706476,
		0.621481, -0.745207, -0.241720,
		0.665267, 0.339051, 0.665179,
		23.564068, 16.266798, 13.798530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.410980, 15.413076, 13.679058>,  <23.098379, 16.029463, 13.332905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.410980, 15.413076, 13.679058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508373, 15.713339, 13.924735>,  <23.566809, 15.893497, 14.072142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508373, 15.713339, 13.924735>,  <23.410980, 15.413076, 13.679058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.508373, 15.713339, 13.924735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373592, -0.511803, 0.773619,
		0.895067, -0.417820, 0.155824,
		0.243482, 0.750656, 0.614192,
		23.581417, 15.938536, 14.108993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.843849, 15.093158, 14.178011>,  <23.410980, 15.413076, 13.679058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.843849, 15.093158, 14.178011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.707718, 15.429911, 14.345538>,  <23.626040, 15.631963, 14.446054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.707718, 15.429911, 14.345538>,  <23.843849, 15.093158, 14.178011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.707718, 15.429911, 14.345538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054942, -0.462450, 0.884941,
		0.938700, 0.278161, 0.203640,
		-0.340330, 0.841882, 0.418819,
		23.605619, 15.682475, 14.471184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.046310, 15.111725, 14.777575>,  <23.843849, 15.093158, 14.178011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.046310, 15.111725, 14.777575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761209, 15.385126, 14.840579>,  <23.590149, 15.549167, 14.878382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761209, 15.385126, 14.840579>,  <24.046310, 15.111725, 14.777575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.761209, 15.385126, 14.840579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204269, -0.417096, 0.885610,
		0.671013, 0.599046, 0.436904,
		-0.712752, 0.683502, 0.157511,
		23.547384, 15.590177, 14.887833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.055271, 15.159077, 15.479425>,  <24.046310, 15.111725, 14.777575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.055271, 15.159077, 15.479425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.710070, 15.324152, 15.362868>,  <23.502949, 15.423197, 15.292933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.710070, 15.324152, 15.362868>,  <24.055271, 15.159077, 15.479425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.710070, 15.324152, 15.362868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479530, -0.487660, 0.729547,
		0.158974, 0.769335, 0.618750,
		-0.863006, 0.412688, -0.291393,
		23.451168, 15.447958, 15.275451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.184561, 14.531200, 16.025536>,  <24.055271, 15.159077, 15.479425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.184561, 14.531200, 16.025536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497631, 14.416487, 15.804564>,  <24.685472, 14.347659, 15.671982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497631, 14.416487, 15.804564>,  <24.184561, 14.531200, 16.025536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.497631, 14.416487, 15.804564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474561, -0.299345, 0.827758,
		-0.402753, -0.910026, -0.098194,
		0.782676, -0.286783, -0.552426,
		24.732433, 14.330452, 15.638837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.335938, 13.912733, 16.282520>,  <24.184561, 14.531200, 16.025536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.335938, 13.912733, 16.282520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666601, 14.089684, 16.143417>,  <24.865000, 14.195855, 16.059956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666601, 14.089684, 16.143417>,  <24.335938, 13.912733, 16.282520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.666601, 14.089684, 16.143417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497944, -0.287262, 0.818249,
		0.262078, -0.849578, -0.457747,
		0.826660, 0.442378, -0.347757,
		24.914598, 14.222398, 16.039089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874002, 13.473959, 16.268902>,  <24.335938, 13.912733, 16.282520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874002, 13.473959, 16.268902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034500, 13.833293, 16.340454>,  <25.130798, 14.048893, 16.383385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034500, 13.833293, 16.340454>,  <24.874002, 13.473959, 16.268902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034500, 13.833293, 16.340454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583892, -0.401318, 0.705700,
		0.705743, -0.178712, -0.685557,
		0.401244, 0.898335, 0.178879,
		25.154873, 14.102794, 16.394117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531149, 13.255525, 16.418646>,  <24.874002, 13.473959, 16.268902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531149, 13.255525, 16.418646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466537, 13.628538, 16.547823>,  <25.427771, 13.852346, 16.625328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466537, 13.628538, 16.547823>,  <25.531149, 13.255525, 16.418646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466537, 13.628538, 16.547823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285247, -0.269153, 0.919886,
		0.944745, 0.240706, -0.222526,
		-0.161529, 0.932533, 0.322941,
		25.418079, 13.908298, 16.644705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164503, 13.408687, 16.629375>,  <25.531149, 13.255525, 16.418646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164503, 13.408687, 16.629375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868006, 13.599219, 16.818548>,  <25.690107, 13.713539, 16.932051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868006, 13.599219, 16.818548>,  <26.164503, 13.408687, 16.629375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868006, 13.599219, 16.818548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331891, -0.352329, 0.875050,
		0.583441, 0.805588, 0.103073,
		-0.741246, 0.476332, 0.472931,
		25.645632, 13.742119, 16.960428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452656, 14.166808, 16.763115>,  <26.164503, 13.408687, 16.629375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452656, 14.166808, 16.763115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806484, 13.980273, 16.759920>,  <27.018782, 13.868352, 16.758003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806484, 13.980273, 16.759920>,  <26.452656, 14.166808, 16.763115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806484, 13.980273, 16.759920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017610, 0.050509, -0.998568,
		0.466074, 0.883163, 0.052891,
		0.884571, -0.466338, -0.007989,
		27.071856, 13.840372, 16.757523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022648, 14.469378, 16.484280>,  <26.452656, 14.166808, 16.763115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022648, 14.469378, 16.484280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126112, 14.086018, 16.436010>,  <27.188190, 13.856001, 16.407049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126112, 14.086018, 16.436010>,  <27.022648, 14.469378, 16.484280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126112, 14.086018, 16.436010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095477, 0.149681, -0.984114,
		0.961238, 0.243029, 0.130222,
		0.258660, -0.958401, -0.120675,
		27.203711, 13.798497, 16.399807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770218, 15.080703, 16.023081>,  <27.022648, 14.469378, 16.484280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770218, 15.080703, 16.023081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900818, 14.746193, 15.846881>,  <26.979177, 14.545487, 15.741160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900818, 14.746193, 15.846881>,  <26.770218, 15.080703, 16.023081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900818, 14.746193, 15.846881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925121, -0.187197, -0.330314,
		0.193773, 0.515366, -0.834776,
		0.326500, -0.836275, -0.440502,
		26.998768, 14.495311, 15.714730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478840, 14.932217, 15.880264>,  <26.770218, 15.080703, 16.023081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478840, 14.932217, 15.880264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407444, 14.650793, 15.605122>,  <27.364607, 14.481939, 15.440036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407444, 14.650793, 15.605122>,  <27.478840, 14.932217, 15.880264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407444, 14.650793, 15.605122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894033, 0.407914, -0.185235,
		0.410911, 0.581907, -0.701809,
		-0.178488, -0.703555, -0.687860,
		27.353897, 14.439726, 15.398765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342539, 15.216958, 15.144974>,  <27.478840, 14.932217, 15.880264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342539, 15.216958, 15.144974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139893, 14.875022, 15.189854>,  <27.018305, 14.669860, 15.216782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139893, 14.875022, 15.189854>,  <27.342539, 15.216958, 15.144974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139893, 14.875022, 15.189854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829642, 0.447946, -0.333223,
		0.234592, -0.261903, -0.936148,
		-0.506616, -0.854840, 0.112201,
		26.987907, 14.618570, 15.223514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040813, 14.974051, 14.567188>,  <27.342539, 15.216958, 15.144974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040813, 14.974051, 14.567188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787727, 14.924314, 14.872922>,  <26.635876, 14.894471, 15.056362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787727, 14.924314, 14.872922>,  <27.040813, 14.974051, 14.567188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787727, 14.924314, 14.872922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655649, 0.611230, -0.443308,
		-0.412062, -0.781624, -0.468262,
		-0.632716, -0.124345, 0.764335,
		26.597912, 14.887010, 15.102222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.865882, 23.409491, 20.870192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.471827, 23.414635, 20.938702>,  <14.235394, 23.417721, 20.979809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.471827, 23.414635, 20.938702>,  <14.865882, 23.409491, 20.870192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.471827, 23.414635, 20.938702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097209, -0.863863, -0.494258,
		0.141603, -0.503562, 0.852276,
		-0.985139, 0.012861, 0.171276,
		14.176285, 23.418493, 20.990084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.632964, 22.707230, 20.912453>,  <14.865882, 23.409491, 20.870192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.632964, 22.707230, 20.912453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.287488, 22.902002, 20.860397>,  <14.080202, 23.018866, 20.829165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.287488, 22.902002, 20.860397>,  <14.632964, 22.707230, 20.912453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.287488, 22.902002, 20.860397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322798, -0.732687, -0.599141,
		-0.387092, -0.475465, 0.789996,
		-0.863691, 0.486932, -0.130138,
		14.028380, 23.048082, 20.821356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.135267, 22.168201, 20.983505>,  <14.632964, 22.707230, 20.912453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.135267, 22.168201, 20.983505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.966848, 22.466024, 20.776295>,  <13.865797, 22.644718, 20.651968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.966848, 22.466024, 20.776295>,  <14.135267, 22.168201, 20.983505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.966848, 22.466024, 20.776295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259303, -0.646089, -0.717865,
		-0.869185, -0.167928, 0.465100,
		-0.421046, 0.744559, -0.518027,
		13.840534, 22.689392, 20.620886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.669011, 21.800842, 20.699455>,  <14.135267, 22.168201, 20.983505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.669011, 21.800842, 20.699455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.659618, 22.144194, 20.494465>,  <13.653983, 22.350204, 20.371471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.659618, 22.144194, 20.494465>,  <13.669011, 21.800842, 20.699455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.659618, 22.144194, 20.494465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375542, -0.482649, -0.791213,
		-0.926508, 0.173877, 0.333691,
		-0.023481, 0.858380, -0.512476,
		13.652574, 22.401709, 20.340721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.976740, 21.906322, 20.522095>,  <13.669011, 21.800842, 20.699455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.976740, 21.906322, 20.522095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.210181, 22.099819, 20.261204>,  <13.350246, 22.215918, 20.104670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.210181, 22.099819, 20.261204>,  <12.976740, 21.906322, 20.522095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.210181, 22.099819, 20.261204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501833, -0.416607, -0.758025,
		-0.638411, 0.769695, -0.000375,
		0.583605, 0.483743, -0.652225,
		13.385262, 22.244942, 20.065536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.502640, 21.935471, 19.872898>,  <12.976740, 21.906322, 20.522095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.502640, 21.935471, 19.872898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.872088, 22.000074, 19.733852>,  <13.093758, 22.038837, 19.650425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.872088, 22.000074, 19.733852>,  <12.502640, 21.935471, 19.872898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.872088, 22.000074, 19.733852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169861, -0.640512, -0.748927,
		-0.343612, 0.750772, -0.564156,
		0.923622, 0.161512, -0.347614,
		13.149175, 22.048529, 19.629568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.362171, 22.193146, 19.187092>,  <12.502640, 21.935471, 19.872898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.362171, 22.193146, 19.187092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.749954, 22.101582, 19.151878>,  <12.982624, 22.046642, 19.130751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.749954, 22.101582, 19.151878>,  <12.362171, 22.193146, 19.187092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.749954, 22.101582, 19.151878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192964, -0.490368, -0.849885,
		0.151378, 0.840916, -0.519563,
		0.969458, -0.228911, -0.088035,
		13.040792, 22.032907, 19.125467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.713995, 22.482038, 18.525379>,  <12.362171, 22.193146, 19.187092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.713995, 22.482038, 18.525379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.907529, 22.158192, 18.658298>,  <13.023649, 21.963882, 18.738050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.907529, 22.158192, 18.658298>,  <12.713995, 22.482038, 18.525379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.907529, 22.158192, 18.658298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120711, -0.437808, -0.890928,
		0.866794, 0.390951, -0.309557,
		0.483835, -0.809618, 0.332297,
		13.052679, 21.915306, 18.757988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.072190, 22.274574, 17.985340>,  <12.713995, 22.482038, 18.525379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.072190, 22.274574, 17.985340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.080774, 21.957047, 18.228451>,  <13.085924, 21.766529, 18.374317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.080774, 21.957047, 18.228451>,  <13.072190, 22.274574, 17.985340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.080774, 21.957047, 18.228451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084775, -0.607171, -0.790036,
		0.996169, -0.034570, -0.080325,
		0.021459, -0.793819, 0.607776,
		13.087212, 21.718901, 18.410784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.345356, 21.770836, 17.559765>,  <13.072190, 22.274574, 17.985340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.345356, 21.770836, 17.559765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.277496, 21.523127, 17.866415>,  <13.236780, 21.374500, 18.050406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.277496, 21.523127, 17.866415>,  <13.345356, 21.770836, 17.559765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.277496, 21.523127, 17.866415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002942, -0.778218, -0.627987,
		0.985500, -0.104282, 0.133846,
		-0.169649, -0.619275, 0.766627,
		13.226602, 21.337343, 18.096403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.982774, 21.377346, 17.656460>,  <13.345356, 21.770836, 17.559765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.982774, 21.377346, 17.656460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.672682, 21.165035, 17.793453>,  <13.486627, 21.037649, 17.875650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.672682, 21.165035, 17.793453>,  <13.982774, 21.377346, 17.656460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.672682, 21.165035, 17.793453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260524, -0.762577, -0.592118,
		0.575454, -0.369801, 0.729452,
		-0.775229, -0.530777, 0.342486,
		13.440113, 21.005802, 17.896198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.239680, 20.764357, 17.925142>,  <13.982774, 21.377346, 17.656460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.239680, 20.764357, 17.925142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.861762, 20.686478, 17.819725>,  <13.635011, 20.639750, 17.756475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.861762, 20.686478, 17.819725>,  <14.239680, 20.764357, 17.925142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861762, 20.686478, 17.819725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310559, -0.788553, -0.530790,
		-0.104474, -0.583333, 0.805486,
		-0.944796, -0.194697, -0.263542,
		13.578323, 20.628069, 17.740662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233474, 20.126104, 17.720396>,  <14.239680, 20.764357, 17.925142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.233474, 20.126104, 17.720396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.863315, 20.217585, 17.599508>,  <13.641219, 20.272472, 17.526976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.863315, 20.217585, 17.599508>,  <14.233474, 20.126104, 17.720396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.863315, 20.217585, 17.599508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070620, -0.679398, -0.730363,
		-0.372362, -0.697219, 0.612562,
		-0.925397, 0.228700, -0.302220,
		13.585695, 20.286194, 17.508842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.823478, 19.512430, 17.734274>,  <14.233474, 20.126104, 17.720396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.823478, 19.512430, 17.734274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.657312, 19.746283, 17.455523>,  <13.557613, 19.886593, 17.288271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.657312, 19.746283, 17.455523>,  <13.823478, 19.512430, 17.734274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.657312, 19.746283, 17.455523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016958, -0.761000, -0.648531,
		-0.909474, -0.281226, 0.306216,
		-0.415414, 0.584629, -0.696878,
		13.532688, 19.921671, 17.246458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.353483, 19.081749, 17.398428>,  <13.823478, 19.512430, 17.734274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.353483, 19.081749, 17.398428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.340645, 19.391878, 17.146128>,  <13.332942, 19.577955, 16.994747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.340645, 19.391878, 17.146128>,  <13.353483, 19.081749, 17.398428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.340645, 19.391878, 17.146128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035024, -0.631559, -0.774536,
		-0.998871, -0.002768, 0.047425,
		-0.032096, 0.775323, -0.630749,
		13.331017, 19.624475, 16.956903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.962826, 18.909870, 16.898693>,  <13.353483, 19.081749, 17.398428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.962826, 18.909870, 16.898693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.198042, 19.190409, 16.737535>,  <13.339171, 19.358732, 16.640841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.198042, 19.190409, 16.737535>,  <12.962826, 18.909870, 16.898693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.198042, 19.190409, 16.737535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027645, -0.515257, -0.856590,
		-0.808360, 0.492571, -0.322380,
		0.588040, 0.701344, -0.402896,
		13.374454, 19.400812, 16.616667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.736088, 18.977676, 16.306244>,  <12.962826, 18.909870, 16.898693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.736088, 18.977676, 16.306244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.096848, 19.146358, 16.268843>,  <13.313303, 19.247568, 16.246403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.096848, 19.146358, 16.268843>,  <12.736088, 18.977676, 16.306244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.096848, 19.146358, 16.268843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191957, -0.585222, -0.787825,
		-0.386949, 0.692591, -0.608760,
		0.901900, 0.421704, -0.093503,
		13.367417, 19.272869, 16.240791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.742861, 19.284777, 15.586037>,  <12.736088, 18.977676, 16.306244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.742861, 19.284777, 15.586037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.114218, 19.233694, 15.725625>,  <13.337031, 19.203045, 15.809378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.114218, 19.233694, 15.725625>,  <12.742861, 19.284777, 15.586037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.114218, 19.233694, 15.725625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226309, -0.550554, -0.803539,
		0.294744, 0.824974, -0.482229,
		0.928391, -0.127706, 0.348971,
		13.392735, 19.195383, 15.830317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.184990, 19.467789, 15.049598>,  <12.742861, 19.284777, 15.586037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.184990, 19.467789, 15.049598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.376176, 19.216785, 15.295454>,  <13.490888, 19.066183, 15.442968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.376176, 19.216785, 15.295454>,  <13.184990, 19.467789, 15.049598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.376176, 19.216785, 15.295454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315655, -0.530296, -0.786860,
		0.819702, 0.570106, -0.055387,
		0.477965, -0.627507, 0.614641,
		13.519566, 19.028534, 15.479846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.835324, 19.455196, 14.849840>,  <13.184990, 19.467789, 15.049598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.835324, 19.455196, 14.849840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.800425, 19.110357, 15.049508>,  <13.779485, 18.903454, 15.169309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.800425, 19.110357, 15.049508>,  <13.835324, 19.455196, 14.849840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.800425, 19.110357, 15.049508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212677, -0.505648, -0.836115,
		0.973219, 0.033213, 0.227466,
		-0.087248, -0.862100, 0.499170,
		13.774250, 18.851727, 15.199259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.344490, 19.013241, 14.581490>,  <13.835324, 19.455196, 14.849840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.344490, 19.013241, 14.581490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.100990, 18.738939, 14.741074>,  <13.954890, 18.574358, 14.836823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.100990, 18.738939, 14.741074>,  <14.344490, 19.013241, 14.581490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.100990, 18.738939, 14.741074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011284, -0.495337, -0.868628,
		0.793282, -0.533278, 0.293798,
		-0.608750, -0.685752, 0.398959,
		13.918365, 18.533215, 14.860762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.756914, 18.399586, 14.516367>,  <14.344490, 19.013241, 14.581490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.756914, 18.399586, 14.516367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.364769, 18.336510, 14.563736>,  <14.129482, 18.298664, 14.592157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.364769, 18.336510, 14.563736>,  <14.756914, 18.399586, 14.516367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.364769, 18.336510, 14.563736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015648, -0.536412, -0.843811,
		0.196584, -0.829093, 0.523411,
		-0.980362, -0.157689, 0.118424,
		14.070661, 18.289204, 14.599263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.234278, 18.585314, 15.107006>,  <14.756914, 18.399586, 14.516367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.234278, 18.585314, 15.107006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.578849, 18.409216, 15.208297>,  <15.785592, 18.303556, 15.269072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.578849, 18.409216, 15.208297>,  <15.234278, 18.585314, 15.107006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578849, 18.409216, 15.208297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185978, 0.737403, 0.649345,
		-0.472603, -0.512270, 0.717096,
		0.861428, -0.440246, 0.253228,
		15.837277, 18.277142, 15.284266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.226430, 18.676031, 15.902324>,  <15.234278, 18.585314, 15.107006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.226430, 18.676031, 15.902324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.602168, 18.562019, 15.826022>,  <15.827611, 18.493612, 15.780241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.602168, 18.562019, 15.826022>,  <15.226430, 18.676031, 15.902324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.602168, 18.562019, 15.826022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306761, 0.449502, 0.838955,
		-0.153384, -0.846584, 0.509674,
		0.939346, -0.285030, -0.190753,
		15.883972, 18.476511, 15.768796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432247, 18.376104, 16.464025>,  <15.226430, 18.676031, 15.902324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.432247, 18.376104, 16.464025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.759426, 18.505453, 16.273703>,  <15.955733, 18.583063, 16.159510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.759426, 18.505453, 16.273703>,  <15.432247, 18.376104, 16.464025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.759426, 18.505453, 16.273703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357519, 0.362237, 0.860793,
		0.450713, -0.874193, 0.180678,
		0.817947, 0.323374, -0.475805,
		16.004810, 18.602465, 16.130960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.030771, 18.151134, 16.909380>,  <15.432247, 18.376104, 16.464025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.030771, 18.151134, 16.909380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.169260, 18.439407, 16.669132>,  <16.252354, 18.612371, 16.524984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.169260, 18.439407, 16.669132>,  <16.030771, 18.151134, 16.909380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169260, 18.439407, 16.669132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417016, 0.455264, 0.786659,
		0.840373, -0.522828, -0.142914,
		0.346223, 0.720684, -0.600620,
		16.273127, 18.655613, 16.488947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749628, 18.087057, 16.960381>,  <16.030771, 18.151134, 16.909380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749628, 18.087057, 16.960381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.647049, 18.454973, 16.841576>,  <16.585501, 18.675724, 16.770292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.647049, 18.454973, 16.841576>,  <16.749628, 18.087057, 16.960381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.647049, 18.454973, 16.841576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589323, 0.392358, 0.706225,
		0.766116, 0.006074, -0.642674,
		-0.256448, 0.919793, -0.297012,
		16.570114, 18.730911, 16.752472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.367525, 18.414017, 17.028078>,  <16.749628, 18.087057, 16.960381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.367525, 18.414017, 17.028078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.119963, 18.724810, 16.982023>,  <16.971426, 18.911285, 16.954390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.119963, 18.724810, 16.982023>,  <17.367525, 18.414017, 17.028078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.119963, 18.724810, 16.982023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462029, 0.478666, 0.746597,
		0.635204, 0.408877, -0.655237,
		-0.618906, 0.776980, -0.115137,
		16.934290, 18.957903, 16.947481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.755688, 19.036051, 17.149458>,  <17.367525, 18.414017, 17.028078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.755688, 19.036051, 17.149458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.388784, 19.189619, 17.191875>,  <17.168642, 19.281759, 17.217325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.388784, 19.189619, 17.191875>,  <17.755688, 19.036051, 17.149458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.388784, 19.189619, 17.191875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317533, 0.544148, 0.776580,
		0.240442, 0.745995, -0.621031,
		-0.917257, 0.383920, 0.106042,
		17.113607, 19.304794, 17.223688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.778805, 19.861191, 17.146280>,  <17.755688, 19.036051, 17.149458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.778805, 19.861191, 17.146280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.453960, 19.734024, 17.341997>,  <17.259054, 19.657724, 17.459427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.453960, 19.734024, 17.341997>,  <17.778805, 19.861191, 17.146280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.453960, 19.734024, 17.341997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244211, 0.576377, 0.779840,
		-0.529941, 0.752806, -0.390442,
		-0.812110, -0.317919, 0.489290,
		17.210327, 19.638649, 17.488785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.328436, 20.468924, 17.295607>,  <17.778805, 19.861191, 17.146280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.328436, 20.468924, 17.295607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.234774, 20.194653, 17.571293>,  <17.178577, 20.030090, 17.736706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.234774, 20.194653, 17.571293>,  <17.328436, 20.468924, 17.295607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234774, 20.194653, 17.571293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099511, 0.688298, 0.718570,
		-0.967093, 0.236841, -0.092936,
		-0.234155, -0.685677, 0.689217,
		17.164528, 19.988949, 17.778057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.773952, 20.764242, 17.681993>,  <17.328436, 20.468924, 17.295607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.773952, 20.764242, 17.681993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.936039, 20.472067, 17.901907>,  <17.033291, 20.296762, 18.033855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.936039, 20.472067, 17.901907>,  <16.773952, 20.764242, 17.681993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936039, 20.472067, 17.901907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037749, 0.614223, 0.788229,
		-0.913441, -0.298649, 0.276466,
		0.405216, -0.730437, 0.549783,
		17.057604, 20.252935, 18.066841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349752, 20.808647, 18.289509>,  <16.773952, 20.764242, 17.681993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349752, 20.808647, 18.289509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.674778, 20.602736, 18.398867>,  <16.869793, 20.479189, 18.464481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.674778, 20.602736, 18.398867>,  <16.349752, 20.808647, 18.289509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674778, 20.602736, 18.398867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073588, 0.374691, 0.924225,
		-0.578210, -0.771109, 0.266579,
		0.812562, -0.514779, 0.273395,
		16.918547, 20.448301, 18.480885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.143898, 20.379330, 18.887552>,  <16.349752, 20.808647, 18.289509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.143898, 20.379330, 18.887552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.543011, 20.395247, 18.908895>,  <16.782478, 20.404797, 18.921701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.543011, 20.395247, 18.908895>,  <16.143898, 20.379330, 18.887552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543011, 20.395247, 18.908895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064486, 0.379255, 0.923042,
		0.016493, -0.924436, 0.380980,
		0.997782, 0.039791, 0.053358,
		16.842346, 20.407185, 18.924902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243397, 20.544628, 19.519958>,  <16.143898, 20.379330, 18.887552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.243397, 20.544628, 19.519958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.613161, 20.617947, 19.386173>,  <16.835020, 20.661938, 19.305902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.613161, 20.617947, 19.386173>,  <16.243397, 20.544628, 19.519958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.613161, 20.617947, 19.386173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205664, 0.498953, 0.841872,
		0.321191, -0.847023, 0.423542,
		0.924413, 0.183295, -0.334462,
		16.890486, 20.672935, 19.285835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806250, 20.238550, 20.029697>,  <16.243397, 20.544628, 19.519958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806250, 20.238550, 20.029697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.951210, 20.552807, 19.829124>,  <17.038187, 20.741362, 19.708780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.951210, 20.552807, 19.829124>,  <16.806250, 20.238550, 20.029697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.951210, 20.552807, 19.829124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326874, 0.396693, 0.857781,
		0.872823, -0.474765, -0.113043,
		0.362401, 0.785641, -0.501431,
		17.059931, 20.788500, 19.678696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.424000, 20.493521, 20.353373>,  <16.806250, 20.238550, 20.029697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.424000, 20.493521, 20.353373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.317873, 20.801008, 20.120588>,  <17.254196, 20.985500, 19.980917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.317873, 20.801008, 20.120588>,  <17.424000, 20.493521, 20.353373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.317873, 20.801008, 20.120588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242426, 0.637392, 0.731410,
		0.933185, 0.052974, -0.355470,
		-0.265320, 0.768716, -0.581963,
		17.238277, 21.031624, 19.945999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.949409, 20.927824, 20.496590>,  <17.424000, 20.493521, 20.353373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.949409, 20.927824, 20.496590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.641197, 21.137005, 20.350821>,  <17.456270, 21.262512, 20.263359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.641197, 21.137005, 20.350821>,  <17.949409, 20.927824, 20.496590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.641197, 21.137005, 20.350821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090707, 0.655877, 0.749398,
		0.630915, 0.544379, -0.552809,
		-0.770531, 0.522950, -0.364424,
		17.410038, 21.293890, 20.241493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.137377, 21.681448, 20.421822>,  <17.949409, 20.927824, 20.496590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.137377, 21.681448, 20.421822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.738012, 21.687078, 20.443636>,  <17.498394, 21.690456, 20.456724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.738012, 21.687078, 20.443636>,  <18.137377, 21.681448, 20.421822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.738012, 21.687078, 20.443636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048461, 0.708074, 0.704473,
		-0.028698, 0.705998, -0.707633,
		-0.998413, 0.014076, 0.054534,
		17.438488, 21.691301, 20.459995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.969711, 22.412975, 20.706371>,  <18.137377, 21.681448, 20.421822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.969711, 22.412975, 20.706371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.637804, 22.195208, 20.755510>,  <17.438660, 22.064547, 20.784994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.637804, 22.195208, 20.755510>,  <17.969711, 22.412975, 20.706371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.637804, 22.195208, 20.755510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270326, 0.584620, 0.764947,
		-0.488272, 0.601519, -0.632270,
		-0.829768, -0.544421, 0.122848,
		17.388874, 22.031881, 20.792364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.309498, 22.943697, 20.715031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.192558, 22.604469, 20.891806>,  <17.122395, 22.400932, 20.997871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.192558, 22.604469, 20.891806>,  <17.309498, 22.943697, 20.715031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.192558, 22.604469, 20.891806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276648, 0.517369, 0.809812,
		-0.915423, 0.114485, -0.385868,
		-0.292348, -0.848070, 0.441939,
		17.104855, 22.350048, 21.024387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591394, 22.959562, 21.038076>,  <17.309498, 22.943697, 20.715031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591394, 22.959562, 21.038076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.782166, 22.672148, 21.240559>,  <16.896629, 22.499699, 21.362047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.782166, 22.672148, 21.240559>,  <16.591394, 22.959562, 21.038076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.782166, 22.672148, 21.240559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287557, 0.416672, 0.862378,
		-0.830572, -0.556856, -0.007897,
		0.476930, -0.718537, 0.506204,
		16.925245, 22.456587, 21.392420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099943, 22.724470, 21.447458>,  <16.591394, 22.959562, 21.038076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099943, 22.724470, 21.447458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.444262, 22.610540, 21.616175>,  <16.650852, 22.542183, 21.717405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.444262, 22.610540, 21.616175>,  <16.099943, 22.724470, 21.447458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444262, 22.610540, 21.616175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234912, 0.512846, 0.825715,
		-0.451497, -0.809855, 0.374546,
		0.860794, -0.284822, 0.421793,
		16.702499, 22.525093, 21.742712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.844609, 22.706297, 22.085806>,  <16.099943, 22.724470, 21.447458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.844609, 22.706297, 22.085806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.242590, 22.676022, 22.112164>,  <16.481379, 22.657856, 22.127977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.242590, 22.676022, 22.112164>,  <15.844609, 22.706297, 22.085806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242590, 22.676022, 22.112164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024486, 0.453665, 0.890836,
		-0.097319, -0.887953, 0.449521,
		0.994952, -0.075689, 0.065893,
		16.541075, 22.653315, 22.131931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968672, 22.356539, 22.738052>,  <15.844609, 22.706297, 22.085806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.968672, 22.356539, 22.738052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.288824, 22.579561, 22.649940>,  <16.480915, 22.713375, 22.597073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.288824, 22.579561, 22.649940>,  <15.968672, 22.356539, 22.738052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288824, 22.579561, 22.649940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025257, 0.398480, 0.916829,
		0.598961, -0.728248, 0.333017,
		0.800380, 0.557557, -0.220280,
		16.528938, 22.746828, 22.583857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325384, 22.417276, 23.421852>,  <15.968672, 22.356539, 22.738052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325384, 22.417276, 23.421852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.448093, 22.699331, 23.166143>,  <16.521719, 22.868565, 23.012718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.448093, 22.699331, 23.166143>,  <16.325384, 22.417276, 23.421852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448093, 22.699331, 23.166143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002321, 0.672211, 0.740356,
		0.951780, -0.225637, 0.207852,
		0.306772, 0.705139, -0.639274,
		16.540125, 22.910873, 22.974361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791801, 22.852440, 23.836367>,  <16.325384, 22.417276, 23.421852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.791801, 22.852440, 23.836367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.702185, 23.081129, 23.520660>,  <16.648415, 23.218342, 23.331238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.702185, 23.081129, 23.520660>,  <16.791801, 22.852440, 23.836367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702185, 23.081129, 23.520660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113149, 0.789116, 0.603733,
		0.967989, 0.224566, -0.112106,
		-0.224043, 0.571723, -0.789264,
		16.634972, 23.252645, 23.283880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.193714, 23.412712, 23.887297>,  <16.791801, 22.852440, 23.836367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.193714, 23.412712, 23.887297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.897778, 23.518349, 23.639784>,  <16.720217, 23.581730, 23.491276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.897778, 23.518349, 23.639784>,  <17.193714, 23.412712, 23.887297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.897778, 23.518349, 23.639784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174499, 0.812938, 0.555591,
		0.649759, 0.519026, -0.555360,
		-0.739840, 0.264090, -0.618783,
		16.675825, 23.597576, 23.454149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.350645, 23.985880, 23.638985>,  <17.193714, 23.412712, 23.887297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.350645, 23.985880, 23.638985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.959774, 23.989584, 23.554098>,  <16.725250, 23.991806, 23.503166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.959774, 23.989584, 23.554098>,  <17.350645, 23.985880, 23.638985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.959774, 23.989584, 23.554098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072248, 0.925000, 0.373035,
		0.199755, 0.379854, -0.903222,
		-0.977179, 0.009259, -0.212217,
		16.666620, 23.992361, 23.490433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.280701, 24.617342, 23.334463>,  <17.350645, 23.985880, 23.638985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.280701, 24.617342, 23.334463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.925083, 24.502636, 23.477217>,  <16.711712, 24.433813, 23.562868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.925083, 24.502636, 23.477217>,  <17.280701, 24.617342, 23.334463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.925083, 24.502636, 23.477217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035014, 0.819834, 0.571530,
		-0.456480, 0.495619, -0.738909,
		-0.889044, -0.286765, 0.356884,
		16.658369, 24.416607, 23.584282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.824131, 25.134512, 23.213100>,  <17.280701, 24.617342, 23.334463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.824131, 25.134512, 23.213100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.721306, 24.925951, 23.538568>,  <16.659611, 24.800814, 23.733849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.721306, 24.925951, 23.538568>,  <16.824131, 25.134512, 23.213100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.721306, 24.925951, 23.538568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009309, 0.840589, 0.541593,
		-0.966349, 0.146799, -0.211233,
		-0.257065, -0.521402, 0.813669,
		16.644186, 24.769531, 23.782669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449203, 25.574156, 23.614117>,  <16.824131, 25.134512, 23.213100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.449203, 25.574156, 23.614117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.519985, 25.268866, 23.862688>,  <16.562454, 25.085691, 24.011831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.519985, 25.268866, 23.862688>,  <16.449203, 25.574156, 23.614117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.519985, 25.268866, 23.862688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082746, 0.640693, 0.763325,
		-0.980735, -0.083652, 0.176527,
		0.176953, -0.763226, 0.621428,
		16.573071, 25.039898, 24.049116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314451, 25.870356, 24.255825>,  <16.449203, 25.574156, 23.614117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.314451, 25.870356, 24.255825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.491682, 25.531855, 24.374172>,  <16.598021, 25.328754, 24.445181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.491682, 25.531855, 24.374172>,  <16.314451, 25.870356, 24.255825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491682, 25.531855, 24.374172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168539, 0.402778, 0.899647,
		-0.880500, -0.348746, 0.321087,
		0.443075, -0.846254, 0.295868,
		16.624605, 25.277979, 24.462933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105467, 25.734186, 24.856775>,  <16.314451, 25.870356, 24.255825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105467, 25.734186, 24.856775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.475027, 25.596178, 24.790596>,  <16.696762, 25.513374, 24.750889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.475027, 25.596178, 24.790596>,  <16.105467, 25.734186, 24.856775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475027, 25.596178, 24.790596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323680, 0.474113, 0.818809,
		-0.204063, -0.810049, 0.549708,
		0.923899, -0.345018, -0.165448,
		16.752197, 25.492672, 24.740961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229116, 25.360538, 25.465200>,  <16.105467, 25.734186, 24.856775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229116, 25.360538, 25.465200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.576319, 25.455553, 25.290779>,  <16.784639, 25.512562, 25.186127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.576319, 25.455553, 25.290779>,  <16.229116, 25.360538, 25.465200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.576319, 25.455553, 25.290779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273113, 0.505021, 0.818757,
		0.414699, -0.829778, 0.373488,
		0.868006, 0.237533, -0.436055,
		16.836720, 25.526814, 25.159962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.681698, 25.125097, 25.918230>,  <16.229116, 25.360538, 25.465200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.681698, 25.125097, 25.918230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.871149, 25.381184, 25.676306>,  <16.984819, 25.534836, 25.531151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.871149, 25.381184, 25.676306>,  <16.681698, 25.125097, 25.918230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.871149, 25.381184, 25.676306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196274, 0.592723, 0.781125,
		0.858576, -0.488672, 0.155073,
		0.473629, 0.640218, -0.604811,
		17.013237, 25.573250, 25.494862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.201748, 25.284597, 26.421818>,  <16.681698, 25.125097, 25.918230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.201748, 25.284597, 26.421818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.230511, 25.570871, 26.143932>,  <17.247768, 25.742636, 25.977201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.230511, 25.570871, 26.143932>,  <17.201748, 25.284597, 26.421818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.230511, 25.570871, 26.143932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241743, 0.663244, 0.708285,
		0.967672, -0.218874, -0.125320,
		0.071908, 0.715683, -0.694714,
		17.252083, 25.785576, 25.935518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840961, 25.595581, 26.635256>,  <17.201748, 25.284597, 26.421818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.840961, 25.595581, 26.635256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.640425, 25.848505, 26.399006>,  <17.520103, 26.000259, 26.257256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.640425, 25.848505, 26.399006>,  <17.840961, 25.595581, 26.635256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.640425, 25.848505, 26.399006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257213, 0.760661, 0.596017,
		0.826135, 0.146891, -0.543988,
		-0.501340, 0.632312, -0.590626,
		17.490023, 26.038198, 26.221817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.245083, 26.349695, 26.590857>,  <17.840961, 25.595581, 26.635256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.245083, 26.349695, 26.590857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.863317, 26.426657, 26.499573>,  <17.634258, 26.472834, 26.444803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.863317, 26.426657, 26.499573>,  <18.245083, 26.349695, 26.590857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.863317, 26.426657, 26.499573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004780, 0.754589, 0.656180,
		0.298454, 0.627357, -0.719270,
		-0.954412, 0.192402, -0.228209,
		17.576994, 26.484377, 26.431110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.247999, 26.970158, 26.794933>,  <18.245083, 26.349695, 26.590857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.247999, 26.970158, 26.794933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.861677, 26.870522, 26.766167>,  <17.629883, 26.810740, 26.748907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.861677, 26.870522, 26.766167>,  <18.247999, 26.970158, 26.794933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.861677, 26.870522, 26.766167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232142, 0.707324, 0.667684,
		-0.115444, 0.661549, -0.740962,
		-0.965807, -0.249089, -0.071917,
		17.571936, 26.795795, 26.744591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.935574, 27.619896, 26.669861>,  <18.247999, 26.970158, 26.794933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.935574, 27.619896, 26.669861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.664995, 27.366150, 26.819530>,  <17.502649, 27.213903, 26.909332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.664995, 27.366150, 26.819530>,  <17.935574, 27.619896, 26.669861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664995, 27.366150, 26.819530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191686, 0.642181, 0.742200,
		-0.711111, 0.430333, -0.555998,
		-0.676445, -0.634364, 0.374173,
		17.462061, 27.175840, 26.931782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123861, 27.821859, 26.793182>,  <17.935574, 27.619896, 26.669861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.123861, 27.821859, 26.793182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.307274, 27.601517, 27.072126>,  <17.417320, 27.469311, 27.239492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.307274, 27.601517, 27.072126>,  <17.123861, 27.821859, 26.793182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.307274, 27.601517, 27.072126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087194, 0.753040, 0.652172,
		-0.884391, -0.359846, 0.297260,
		0.458530, -0.550856, 0.697358,
		17.444834, 27.436260, 27.281334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687780, 28.020380, 27.317720>,  <17.123861, 27.821859, 26.793182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687780, 28.020380, 27.317720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.039362, 27.886070, 27.453190>,  <17.250311, 27.805485, 27.534472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.039362, 27.886070, 27.453190>,  <16.687780, 28.020380, 27.317720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.039362, 27.886070, 27.453190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120386, 0.843354, 0.523700,
		-0.461466, -0.419536, 0.781690,
		0.878952, -0.335774, 0.338673,
		17.303047, 27.785337, 27.554792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.971484, 27.916857, 27.606138>,  <16.687780, 28.020380, 27.317720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.971484, 27.916857, 27.606138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.669688, 27.833744, 27.855160>,  <15.488610, 27.783876, 28.004572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.669688, 27.833744, 27.855160>,  <15.971484, 27.916857, 27.606138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.669688, 27.833744, 27.855160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453591, -0.520479, -0.723434,
		0.474341, -0.828208, 0.298449,
		-0.754490, -0.207781, 0.622552,
		15.443341, 27.771410, 28.041925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913349, 27.269304, 27.512640>,  <15.971484, 27.916857, 27.606138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.913349, 27.269304, 27.512640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.542790, 27.346262, 27.642115>,  <15.320456, 27.392437, 27.719799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.542790, 27.346262, 27.642115>,  <15.913349, 27.269304, 27.512640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542790, 27.346262, 27.642115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373172, -0.583960, -0.720925,
		0.050318, -0.788654, 0.612775,
		-0.926397, 0.192395, 0.323688,
		15.264872, 27.403980, 27.739222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.617184, 26.702499, 27.451815>,  <15.913349, 27.269304, 27.512640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.617184, 26.702499, 27.451815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.305310, 26.952745, 27.462395>,  <15.118186, 27.102894, 27.468742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.305310, 26.952745, 27.462395>,  <15.617184, 26.702499, 27.451815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305310, 26.952745, 27.462395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416873, -0.487090, -0.767438,
		-0.467230, -0.609390, 0.640577,
		-0.779688, 0.625609, 0.026455,
		15.071405, 27.140430, 27.470329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038023, 26.241093, 27.371704>,  <15.617184, 26.702499, 27.451815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.038023, 26.241093, 27.371704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.922365, 26.608118, 27.262543>,  <14.852971, 26.828333, 27.197046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.922365, 26.608118, 27.262543>,  <15.038023, 26.241093, 27.371704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.922365, 26.608118, 27.262543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640519, -0.397301, -0.657182,
		-0.711429, -0.015222, 0.702593,
		-0.289144, 0.917562, -0.272902,
		14.835622, 26.883387, 27.180672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301773, 26.221823, 27.195066>,  <15.038023, 26.241093, 27.371704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301773, 26.221823, 27.195066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.443175, 26.548416, 27.012466>,  <14.528017, 26.744371, 26.902906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.443175, 26.548416, 27.012466>,  <14.301773, 26.221823, 27.195066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.443175, 26.548416, 27.012466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469322, -0.267336, -0.841587,
		-0.809179, 0.511751, 0.288688,
		0.353506, 0.816482, -0.456499,
		14.549227, 26.793360, 26.875517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.783066, 26.483858, 26.877901>,  <14.301773, 26.221823, 27.195066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.783066, 26.483858, 26.877901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.103031, 26.629913, 26.687403>,  <14.295011, 26.717546, 26.573103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.103031, 26.629913, 26.687403>,  <13.783066, 26.483858, 26.877901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.103031, 26.629913, 26.687403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440258, -0.182229, -0.879185,
		-0.407811, 0.912943, 0.014989,
		0.799914, 0.365140, -0.476245,
		14.343005, 26.739456, 26.544529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.449895, 26.939131, 26.413572>,  <13.783066, 26.483858, 26.877901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.449895, 26.939131, 26.413572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.813629, 26.861233, 26.266502>,  <14.031870, 26.814493, 26.178261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.813629, 26.861233, 26.266502>,  <13.449895, 26.939131, 26.413572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.813629, 26.861233, 26.266502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395741, -0.132033, -0.908821,
		0.128443, 0.971927, -0.197131,
		0.909336, -0.194745, -0.367673,
		14.086430, 26.802809, 26.156200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.568678, 27.349342, 25.646004>,  <13.449895, 26.939131, 26.413572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.568678, 27.349342, 25.646004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.807590, 27.030087, 25.677565>,  <13.950938, 26.838533, 25.696501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.807590, 27.030087, 25.677565>,  <13.568678, 27.349342, 25.646004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.807590, 27.030087, 25.677565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188099, -0.235034, -0.953613,
		0.779663, 0.554733, -0.290511,
		0.597281, -0.798142, 0.078903,
		13.986774, 26.790644, 25.701235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.692119, 27.189476, 24.929756>,  <13.568678, 27.349342, 25.646004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.692119, 27.189476, 24.929756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.849017, 26.867249, 25.107386>,  <13.943156, 26.673912, 25.213963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.849017, 26.867249, 25.107386>,  <13.692119, 27.189476, 24.929756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.849017, 26.867249, 25.107386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013388, -0.487709, -0.872903,
		0.919762, 0.336448, -0.202088,
		0.392247, -0.805569, 0.444072,
		13.966691, 26.625578, 25.240608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.156681, 26.916746, 24.438015>,  <13.692119, 27.189476, 24.929756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.156681, 26.916746, 24.438015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.124658, 26.591066, 24.668030>,  <14.105444, 26.395658, 24.806038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.124658, 26.591066, 24.668030>,  <14.156681, 26.916746, 24.438015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.124658, 26.591066, 24.668030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031922, -0.578686, -0.814926,
		0.996279, -0.046885, 0.072319,
		-0.080058, -0.814202, 0.575036,
		14.100640, 26.346806, 24.840540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710759, 26.594213, 24.278069>,  <14.156681, 26.916746, 24.438015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.710759, 26.594213, 24.278069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.452061, 26.322271, 24.416351>,  <14.296842, 26.159105, 24.499321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.452061, 26.322271, 24.416351>,  <14.710759, 26.594213, 24.278069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.452061, 26.322271, 24.416351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187552, -0.581111, -0.791918,
		0.739285, -0.447332, 0.503340,
		-0.646747, -0.679856, 0.345709,
		14.258037, 26.118315, 24.520063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032726, 25.991295, 24.141668>,  <14.710759, 26.594213, 24.278069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032726, 25.991295, 24.141668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.650317, 25.882666, 24.185970>,  <14.420872, 25.817488, 24.212551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.650317, 25.882666, 24.185970>,  <15.032726, 25.991295, 24.141668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650317, 25.882666, 24.185970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114933, -0.694330, -0.710419,
		0.269831, -0.666449, 0.695009,
		-0.956024, -0.271573, 0.110754,
		14.363510, 25.801193, 24.219196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037740, 25.318127, 24.173750>,  <15.032726, 25.991295, 24.141668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037740, 25.318127, 24.173750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.646918, 25.364950, 24.102573>,  <14.412425, 25.393044, 24.059868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.646918, 25.364950, 24.102573>,  <15.037740, 25.318127, 24.173750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.646918, 25.364950, 24.102573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001139, -0.832556, -0.553940,
		-0.212990, -0.541432, 0.813319,
		-0.977054, 0.117057, -0.177943,
		14.353802, 25.400068, 24.049191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.736730, 24.691263, 24.289526>,  <15.037740, 25.318127, 24.173750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.736730, 24.691263, 24.289526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.502505, 24.889021, 24.032562>,  <14.361971, 25.007675, 23.878384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.502505, 24.889021, 24.032562>,  <14.736730, 24.691263, 24.289526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.502505, 24.889021, 24.032562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034812, -0.807090, -0.589401,
		-0.809868, -0.322777, 0.489825,
		-0.585578, 0.494389, -0.642400,
		14.326838, 25.037340, 23.839840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.151774, 24.276230, 24.104061>,  <14.736730, 24.691263, 24.289526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.151774, 24.276230, 24.104061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.148348, 24.545452, 23.808245>,  <14.146292, 24.706985, 23.630754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.148348, 24.545452, 23.808245>,  <14.151774, 24.276230, 24.104061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.148348, 24.545452, 23.808245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365296, -0.690561, -0.624246,
		-0.930852, 0.264804, 0.251781,
		-0.008567, 0.673055, -0.739543,
		14.145778, 24.747368, 23.586382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.576902, 24.176193, 23.564474>,  <14.151774, 24.276230, 24.104061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.576902, 24.176193, 23.564474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.861071, 24.377550, 23.367743>,  <14.031571, 24.498365, 23.249704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.861071, 24.377550, 23.367743>,  <13.576902, 24.176193, 23.564474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861071, 24.377550, 23.367743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327525, -0.382070, -0.864147,
		-0.622919, 0.774995, -0.106557,
		0.710422, 0.503394, -0.491829,
		14.074197, 24.528568, 23.220194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.300764, 24.389444, 22.902834>,  <13.576902, 24.176193, 23.564474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.300764, 24.389444, 22.902834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.691480, 24.440361, 22.833921>,  <13.925909, 24.470911, 22.792574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.691480, 24.440361, 22.833921>,  <13.300764, 24.389444, 22.902834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691480, 24.440361, 22.833921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119598, -0.343166, -0.931629,
		-0.177709, 0.930609, -0.319977,
		0.976788, 0.127291, -0.172283,
		13.984516, 24.478548, 22.782236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.404320, 24.805557, 22.243763>,  <13.300764, 24.389444, 22.902834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.404320, 24.805557, 22.243763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.756413, 24.622095, 22.292465>,  <13.967669, 24.512018, 22.321688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.756413, 24.622095, 22.292465>,  <13.404320, 24.805557, 22.243763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.756413, 24.622095, 22.292465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008640, -0.241046, -0.970475,
		0.474460, 0.855298, -0.208215,
		0.880235, -0.458653, 0.121757,
		14.020484, 24.484499, 22.328993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.730206, 24.864851, 21.625549>,  <13.404320, 24.805557, 22.243763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.730206, 24.864851, 21.625549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.930287, 24.559204, 21.788481>,  <14.050336, 24.375816, 21.886240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.930287, 24.559204, 21.788481>,  <13.730206, 24.864851, 21.625549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.930287, 24.559204, 21.788481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089426, -0.422307, -0.902031,
		0.861278, 0.487625, -0.142907,
		0.500204, -0.764119, 0.407330,
		14.080349, 24.329967, 21.910679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.363777, 24.651077, 21.210459>,  <13.730206, 24.864851, 21.625549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.363777, 24.651077, 21.210459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.306230, 24.326962, 21.437696>,  <14.271701, 24.132492, 21.574039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.306230, 24.326962, 21.437696>,  <14.363777, 24.651077, 21.210459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306230, 24.326962, 21.437696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069224, -0.580901, -0.811026,
		0.987173, -0.077356, 0.139666,
		-0.143869, -0.810291, 0.568094,
		14.263069, 24.083874, 21.608126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769762, 24.141094, 20.875841>,  <14.363777, 24.651077, 21.210459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.769762, 24.141094, 20.875841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.492085, 23.941860, 21.083691>,  <14.325480, 23.822319, 21.208401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.492085, 23.941860, 21.083691>,  <14.769762, 24.141094, 20.875841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.492085, 23.941860, 21.083691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202600, -0.557514, -0.805066,
		0.690690, -0.664145, 0.286108,
		-0.694190, -0.498085, 0.519626,
		14.283829, 23.792435, 21.239578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.715368, 11.791107, 8.398042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.826628, 12.036454, 8.102364>,  <23.893383, 12.183662, 7.924956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.826628, 12.036454, 8.102364>,  <23.715368, 11.791107, 8.398042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.826628, 12.036454, 8.102364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793174, 0.287381, 0.536924,
		0.541763, -0.735657, -0.406573,
		0.278150, 0.613369, -0.739196,
		23.910072, 12.220465, 7.880605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.464050, 11.784616, 8.390118>,  <23.715368, 11.791107, 8.398042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.464050, 11.784616, 8.390118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.325449, 12.138718, 8.266014>,  <24.242289, 12.351178, 8.191552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.325449, 12.138718, 8.266014>,  <24.464050, 11.784616, 8.390118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.325449, 12.138718, 8.266014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722498, 0.462809, 0.513618,
		0.598273, -0.046190, -0.799960,
		-0.346505, 0.885254, -0.310258,
		24.221498, 12.404294, 8.172936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053576, 12.139244, 7.984706>,  <24.464050, 11.784616, 8.390118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053576, 12.139244, 7.984706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.790014, 12.373207, 8.173907>,  <24.631878, 12.513585, 8.287428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.790014, 12.373207, 8.173907>,  <25.053576, 12.139244, 7.984706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.790014, 12.373207, 8.173907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734328, 0.636510, 0.235836,
		-0.163129, 0.502732, -0.848910,
		-0.658902, 0.584907, 0.473004,
		24.592344, 12.548679, 8.315808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047485, 12.760745, 7.636641>,  <25.053576, 12.139244, 7.984706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047485, 12.760745, 7.636641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.980186, 12.815475, 8.027122>,  <24.939808, 12.848313, 8.261410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.980186, 12.815475, 8.027122>,  <25.047485, 12.760745, 7.636641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.980186, 12.815475, 8.027122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772976, 0.632872, 0.044517,
		-0.611721, 0.762071, -0.212241,
		-0.168247, 0.136825, 0.976203,
		24.929712, 12.856523, 8.319983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.902561, 13.541901, 7.847514>,  <25.047485, 12.760745, 7.636641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.902561, 13.541901, 7.847514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.082872, 13.317973, 8.125623>,  <25.191059, 13.183617, 8.292488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.082872, 13.317973, 8.125623>,  <24.902561, 13.541901, 7.847514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082872, 13.317973, 8.125623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829399, 0.550625, -0.094387,
		-0.329995, 0.619206, 0.712522,
		0.450778, -0.559818, 0.695272,
		25.218105, 13.150027, 8.334205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.100357, 14.118009, 8.224927>,  <24.902561, 13.541901, 7.847514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.100357, 14.118009, 8.224927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.306269, 13.779471, 8.279630>,  <25.429817, 13.576349, 8.312451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.306269, 13.779471, 8.279630>,  <25.100357, 14.118009, 8.224927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306269, 13.779471, 8.279630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825282, 0.445998, -0.346403,
		0.232183, 0.291185, 0.928064,
		0.514781, -0.846344, 0.136756,
		25.460703, 13.525568, 8.320657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722855, 14.359843, 8.512181>,  <25.100357, 14.118009, 8.224927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722855, 14.359843, 8.512181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.765493, 14.004694, 8.333154>,  <25.791077, 13.791604, 8.225737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.765493, 14.004694, 8.333154>,  <25.722855, 14.359843, 8.512181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765493, 14.004694, 8.333154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870147, 0.301115, -0.390096,
		0.481126, -0.347867, 0.804678,
		0.106599, -0.887873, -0.447569,
		25.797472, 13.738332, 8.198883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628983, 15.147766, 8.264647>,  <25.722855, 14.359843, 8.512181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628983, 15.147766, 8.264647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.375275, 15.425036, 8.401589>,  <25.223049, 15.591399, 8.483755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.375275, 15.425036, 8.401589>,  <25.628983, 15.147766, 8.264647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375275, 15.425036, 8.401589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430613, -0.684532, 0.588208,
		0.642087, 0.225659, 0.732668,
		-0.634269, 0.693176, 0.342357,
		25.184994, 15.632989, 8.504296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415932, 15.015671, 8.978387>,  <25.628983, 15.147766, 8.264647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415932, 15.015671, 8.978387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.133123, 15.286997, 8.898374>,  <24.963438, 15.449793, 8.850366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.133123, 15.286997, 8.898374>,  <25.415932, 15.015671, 8.978387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133123, 15.286997, 8.898374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511938, -0.295767, 0.806500,
		0.487898, 0.672615, 0.556368,
		-0.707018, 0.678315, -0.200033,
		24.921019, 15.490492, 8.838364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316685, 15.507561, 9.514973>,  <25.415932, 15.015671, 8.978387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316685, 15.507561, 9.514973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.973230, 15.466413, 9.314108>,  <24.767159, 15.441726, 9.193589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.973230, 15.466413, 9.314108>,  <25.316685, 15.507561, 9.514973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973230, 15.466413, 9.314108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501111, -0.037702, 0.864561,
		-0.107868, 0.993981, -0.019175,
		-0.858634, -0.102867, -0.502162,
		24.715641, 15.435554, 9.163460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.827009, 15.825356, 9.924827>,  <25.316685, 15.507561, 9.514973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.827009, 15.825356, 9.924827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.599771, 15.595098, 9.689574>,  <24.463428, 15.456943, 9.548423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.599771, 15.595098, 9.689574>,  <24.827009, 15.825356, 9.924827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.599771, 15.595098, 9.689574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547052, -0.269754, 0.792444,
		-0.614818, 0.771923, -0.161662,
		-0.568096, -0.575646, -0.588131,
		24.429342, 15.422403, 9.513135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.159445, 16.087641, 9.962545>,  <24.827009, 15.825356, 9.924827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.159445, 16.087641, 9.962545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.154688, 15.697721, 9.873442>,  <24.151834, 15.463768, 9.819980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.154688, 15.697721, 9.873442>,  <24.159445, 16.087641, 9.962545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.154688, 15.697721, 9.873442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674148, -0.156716, 0.721779,
		-0.738501, 0.158755, -0.655296,
		-0.011890, -0.974801, -0.222759,
		24.151121, 15.405280, 9.806614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.555889, 15.905477, 10.095644>,  <24.159445, 16.087641, 9.962545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.555889, 15.905477, 10.095644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.737362, 15.549440, 10.078137>,  <23.846245, 15.335819, 10.067634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.737362, 15.549440, 10.078137>,  <23.555889, 15.905477, 10.095644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.737362, 15.549440, 10.078137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524955, -0.306611, 0.793985,
		-0.720137, -0.337240, -0.606360,
		0.453680, -0.890089, -0.043766,
		23.873466, 15.282413, 10.065007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.073179, 15.568918, 10.466188>,  <23.555889, 15.905477, 10.095644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.073179, 15.568918, 10.466188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.359823, 15.292248, 10.430291>,  <23.531811, 15.126245, 10.408752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.359823, 15.292248, 10.430291>,  <23.073179, 15.568918, 10.466188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.359823, 15.292248, 10.430291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358544, -0.475686, 0.803225,
		-0.598261, -0.543422, -0.588877,
		0.716610, -0.691676, -0.089744,
		23.574806, 15.084745, 10.403368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.684341, 14.862062, 10.472252>,  <23.073179, 15.568918, 10.466188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.684341, 14.862062, 10.472252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.064665, 14.811008, 10.585160>,  <23.292858, 14.780375, 10.652905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.064665, 14.811008, 10.585160>,  <22.684341, 14.862062, 10.472252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.064665, 14.811008, 10.585160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303214, -0.570122, 0.763559,
		0.063471, -0.811585, -0.580777,
		0.950807, -0.127635, 0.282270,
		23.349907, 14.772717, 10.669841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.787502, 14.235151, 10.510309>,  <22.684341, 14.862062, 10.472252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.787502, 14.235151, 10.510309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.077248, 14.358924, 10.756741>,  <23.251095, 14.433187, 10.904599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.077248, 14.358924, 10.756741>,  <22.787502, 14.235151, 10.510309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.077248, 14.358924, 10.756741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395821, -0.545000, 0.739121,
		0.564470, -0.779248, -0.272298,
		0.724361, 0.309431, 0.616079,
		23.294556, 14.451753, 10.941565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.179842, 13.655123, 10.667078>,  <22.787502, 14.235151, 10.510309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.179842, 13.655123, 10.667078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.299065, 13.904216, 10.956454>,  <23.370598, 14.053672, 11.130080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.299065, 13.904216, 10.956454>,  <23.179842, 13.655123, 10.667078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.299065, 13.904216, 10.956454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142752, -0.720286, 0.678830,
		0.943813, -0.305603, -0.125791,
		0.298058, 0.622732, 0.723441,
		23.388483, 14.091035, 11.173487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.733286, 13.301692, 11.144572>,  <23.179842, 13.655123, 10.667078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.733286, 13.301692, 11.144572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.554165, 13.591252, 11.354502>,  <23.446693, 13.764989, 11.480459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.554165, 13.591252, 11.354502>,  <23.733286, 13.301692, 11.144572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.554165, 13.591252, 11.354502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150200, -0.639525, 0.753955,
		0.881428, 0.258793, 0.395110,
		-0.447801, 0.723902, 0.524825,
		23.419825, 13.808423, 11.511950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.863670, 13.130551, 11.864644>,  <23.733286, 13.301692, 11.144572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.863670, 13.130551, 11.864644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.589985, 13.416748, 11.921103>,  <23.425774, 13.588467, 11.954979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.589985, 13.416748, 11.921103>,  <23.863670, 13.130551, 11.864644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.589985, 13.416748, 11.921103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269957, -0.428281, 0.862379,
		0.677478, 0.551947, 0.486188,
		-0.684213, 0.715493, 0.141149,
		23.384722, 13.631396, 11.963449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.980827, 13.374870, 12.555229>,  <23.863670, 13.130551, 11.864644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.980827, 13.374870, 12.555229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.607086, 13.490053, 12.471266>,  <23.382841, 13.559163, 12.420887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.607086, 13.490053, 12.471266>,  <23.980827, 13.374870, 12.555229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.607086, 13.490053, 12.471266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300181, -0.318613, 0.899098,
		0.192021, 0.903087, 0.384137,
		-0.934355, 0.287956, -0.209910,
		23.326780, 13.576440, 12.408293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.755981, 13.758141, 13.130919>,  <23.980827, 13.374870, 12.555229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.755981, 13.758141, 13.130919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.433365, 13.639862, 12.926153>,  <23.239796, 13.568895, 12.803294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.433365, 13.639862, 12.926153>,  <23.755981, 13.758141, 13.130919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.433365, 13.639862, 12.926153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457962, -0.235078, 0.857327,
		-0.373848, 0.925906, 0.054183,
		-0.806541, -0.295696, -0.511913,
		23.191402, 13.551153, 12.772579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.211172, 14.047314, 13.424933>,  <23.755981, 13.758141, 13.130919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.211172, 14.047314, 13.424933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.057199, 13.735158, 13.227826>,  <22.964815, 13.547865, 13.109562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.057199, 13.735158, 13.227826>,  <23.211172, 14.047314, 13.424933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.057199, 13.735158, 13.227826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452385, -0.305839, 0.837741,
		-0.804471, 0.545395, -0.235310,
		-0.384933, -0.780389, -0.492767,
		22.941719, 13.501041, 13.079996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.613274, 14.008430, 13.618489>,  <23.211172, 14.047314, 13.424933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.613274, 14.008430, 13.618489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.686970, 13.631713, 13.506003>,  <22.731188, 13.405683, 13.438512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.686970, 13.631713, 13.506003>,  <22.613274, 14.008430, 13.618489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.686970, 13.631713, 13.506003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463510, -0.335553, 0.820099,
		-0.866725, -0.020752, -0.498354,
		0.184243, -0.941793, -0.281214,
		22.742243, 13.349175, 13.421639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.998762, 13.721538, 13.728537>,  <22.613274, 14.008430, 13.618489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.998762, 13.721538, 13.728537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.222706, 13.390858, 13.706172>,  <22.357073, 13.192450, 13.692754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.222706, 13.390858, 13.706172>,  <21.998762, 13.721538, 13.728537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.222706, 13.390858, 13.706172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407329, -0.333358, 0.850268,
		-0.721554, -0.453256, -0.523372,
		0.559859, -0.826699, -0.055911,
		22.390663, 13.142848, 13.689399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.528770, 13.218364, 13.941945>,  <21.998762, 13.721538, 13.728537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.528770, 13.218364, 13.941945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.898565, 13.076030, 13.996646>,  <22.120443, 12.990629, 14.029467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.898565, 13.076030, 13.996646>,  <21.528770, 13.218364, 13.941945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.898565, 13.076030, 13.996646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227991, -0.228610, 0.946445,
		-0.305516, -0.906156, -0.292475,
		0.924489, -0.355836, 0.136752,
		22.175913, 12.969279, 14.037672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.393530, 12.426379, 14.151187>,  <21.528770, 13.218364, 13.941945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.393530, 12.426379, 14.151187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.752243, 12.560052, 14.267186>,  <21.967472, 12.640256, 14.336785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.752243, 12.560052, 14.267186>,  <21.393530, 12.426379, 14.151187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.752243, 12.560052, 14.267186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222130, -0.226804, 0.948271,
		0.382668, -0.914813, -0.129163,
		0.896785, 0.334182, 0.289999,
		22.021278, 12.660306, 14.354186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.662420, 11.947491, 14.553434>,  <21.393530, 12.426379, 14.151187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.662420, 11.947491, 14.553434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.830513, 12.293099, 14.664335>,  <21.931370, 12.500464, 14.730876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.830513, 12.293099, 14.664335>,  <21.662420, 11.947491, 14.553434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.830513, 12.293099, 14.664335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323092, -0.143046, 0.935494,
		0.847948, -0.482703, 0.219047,
		0.420232, 0.864023, 0.277253,
		21.956583, 12.552306, 14.747511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.839266, 11.860538, 15.311627>,  <21.662420, 11.947491, 14.553434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.839266, 11.860538, 15.311627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.921671, 12.249927, 15.271807>,  <21.971115, 12.483560, 15.247914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.921671, 12.249927, 15.271807>,  <21.839266, 11.860538, 15.311627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.921671, 12.249927, 15.271807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203768, 0.142180, 0.968640,
		0.957098, -0.179269, 0.227653,
		0.206015, 0.973472, -0.099551,
		21.983475, 12.541968, 15.241941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.199955, 11.925496, 15.987522>,  <21.839266, 11.860538, 15.311627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.199955, 11.925496, 15.987522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.016703, 12.251061, 15.844604>,  <21.906752, 12.446401, 15.758854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.016703, 12.251061, 15.844604>,  <22.199955, 11.925496, 15.987522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.016703, 12.251061, 15.844604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229102, 0.280257, 0.932185,
		0.858852, 0.508921, 0.058074,
		-0.458133, 0.813913, -0.357294,
		21.879263, 12.495235, 15.737416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.413902, 12.407757, 16.445126>,  <22.199955, 11.925496, 15.987522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.413902, 12.407757, 16.445126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.088789, 12.559737, 16.268480>,  <21.893721, 12.650926, 16.162493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.088789, 12.559737, 16.268480>,  <22.413902, 12.407757, 16.445126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.088789, 12.559737, 16.268480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469766, 0.020862, 0.882545,
		0.344536, 0.924772, 0.161532,
		-0.812782, 0.379951, -0.441613,
		21.844954, 12.673722, 16.135996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.293667, 13.165511, 16.683348>,  <22.413902, 12.407757, 16.445126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.293667, 13.165511, 16.683348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.967684, 12.949553, 16.599100>,  <21.772095, 12.819979, 16.548552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.967684, 12.949553, 16.599100>,  <22.293667, 13.165511, 16.683348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.967684, 12.949553, 16.599100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373415, 0.211280, 0.903284,
		-0.443179, 0.814785, -0.373788,
		-0.814956, -0.539895, -0.210619,
		21.723196, 12.787585, 16.535915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.590847, 13.393328, 16.901356>,  <22.293667, 13.165511, 16.683348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.590847, 13.393328, 16.901356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.530527, 12.998181, 16.886486>,  <21.494335, 12.761093, 16.877565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.530527, 12.998181, 16.886486>,  <21.590847, 13.393328, 16.901356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530527, 12.998181, 16.886486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006861, -0.038647, 0.999229,
		-0.988541, 0.150427, 0.012606,
		-0.150798, -0.987866, -0.037172,
		21.485289, 12.701821, 16.875334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070702, 13.816811, 16.535763>,  <21.590847, 13.393328, 16.901356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070702, 13.816811, 16.535763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.831490, 13.786741, 16.854939>,  <20.687962, 13.768700, 17.046444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.831490, 13.786741, 16.854939>,  <21.070702, 13.816811, 16.535763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831490, 13.786741, 16.854939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792372, -0.205065, 0.574539,
		0.120440, 0.975857, 0.182200,
		-0.598031, -0.075173, 0.797940,
		20.652081, 13.764190, 17.094320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.182949, 14.363217, 16.064743>,  <21.070702, 13.816811, 16.535763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.182949, 14.363217, 16.064743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.201389, 14.374963, 15.665341>,  <21.212454, 14.382010, 15.425700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.201389, 14.374963, 15.665341>,  <21.182949, 14.363217, 16.064743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.201389, 14.374963, 15.665341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742083, 0.668137, 0.053909,
		0.668721, -0.743458, 0.009017,
		0.046104, 0.029359, -0.998505,
		21.215219, 14.383772, 15.365789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.811363, 14.202792, 15.861793>,  <21.182949, 14.363217, 16.064743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.811363, 14.202792, 15.861793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.658989, 14.466392, 15.602376>,  <21.567564, 14.624551, 15.446726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.658989, 14.466392, 15.602376>,  <21.811363, 14.202792, 15.861793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.658989, 14.466392, 15.602376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744280, 0.634723, 0.207785,
		0.548575, -0.403544, -0.732269,
		-0.380938, 0.658998, -0.648542,
		21.544708, 14.664091, 15.407813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.387396, 14.435848, 15.657596>,  <21.811363, 14.202792, 15.861793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.387396, 14.435848, 15.657596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.112146, 14.690617, 15.518559>,  <21.946997, 14.843477, 15.435137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.112146, 14.690617, 15.518559>,  <22.387396, 14.435848, 15.657596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.112146, 14.690617, 15.518559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717017, 0.670330, -0.191165,
		0.111244, -0.380774, -0.917952,
		-0.688122, 0.636921, -0.347592,
		21.905710, 14.881693, 15.414281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.610371, 14.788218, 15.088371>,  <22.387396, 14.435848, 15.657596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.610371, 14.788218, 15.088371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.379246, 15.048697, 15.285173>,  <22.240570, 15.204986, 15.403255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.379246, 15.048697, 15.285173>,  <22.610371, 14.788218, 15.088371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.379246, 15.048697, 15.285173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618047, 0.742827, -0.257344,
		-0.533058, 0.155387, -0.831688,
		-0.577812, 0.651201, 0.492006,
		22.205902, 15.244058, 15.432775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.168083, 15.288837, 14.717207>,  <22.610371, 14.788218, 15.088371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.168083, 15.288837, 14.717207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.345072, 15.416382, 15.052479>,  <22.451265, 15.492908, 15.253642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.345072, 15.416382, 15.052479>,  <22.168083, 15.288837, 14.717207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.345072, 15.416382, 15.052479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596641, 0.593107, -0.540595,
		-0.669505, 0.739291, 0.072188,
		0.442472, 0.318861, 0.838180,
		22.477814, 15.512040, 15.303933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.312571, 15.984714, 14.853057>,  <22.168083, 15.288837, 14.717207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.312571, 15.984714, 14.853057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.644518, 15.828506, 15.012463>,  <22.843687, 15.734782, 15.108106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.644518, 15.828506, 15.012463>,  <22.312571, 15.984714, 14.853057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.644518, 15.828506, 15.012463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557944, 0.575700, -0.597718,
		0.003996, 0.718376, 0.695643,
		0.829869, -0.390518, 0.398514,
		22.893478, 15.711350, 15.132017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.670292, 16.563343, 14.988197>,  <22.312571, 15.984714, 14.853057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.670292, 16.563343, 14.988197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.922741, 16.254360, 14.959933>,  <23.074211, 16.068972, 14.942975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.922741, 16.254360, 14.959933>,  <22.670292, 16.563343, 14.988197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.922741, 16.254360, 14.959933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544981, 0.506396, -0.668250,
		0.551976, 0.383242, 0.740573,
		0.631125, -0.772456, -0.070659,
		23.112078, 16.022623, 14.938736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.228085, 16.880758, 14.879083>,  <22.670292, 16.563343, 14.988197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.228085, 16.880758, 14.879083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.322536, 16.510769, 14.759972>,  <23.379208, 16.288776, 14.688505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.322536, 16.510769, 14.759972>,  <23.228085, 16.880758, 14.879083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.322536, 16.510769, 14.759972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555464, 0.379924, -0.739674,
		0.797310, 0.009254, 0.603500,
		0.236129, -0.924971, -0.297777,
		23.393375, 16.233278, 14.670638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.908257, 16.895258, 14.878078>,  <23.228085, 16.880758, 14.879083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.908257, 16.895258, 14.878078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.792553, 16.603006, 14.630688>,  <23.723131, 16.427656, 14.482254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.792553, 16.603006, 14.630688>,  <23.908257, 16.895258, 14.878078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.792553, 16.603006, 14.630688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514071, 0.426457, -0.744221,
		0.807502, -0.533212, 0.252239,
		-0.289259, -0.730629, -0.618474,
		23.705776, 16.383818, 14.445146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538286, 16.539793, 14.652393>,  <23.908257, 16.895258, 14.878078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538286, 16.539793, 14.652393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.236097, 16.488119, 14.395467>,  <24.054783, 16.457115, 14.241311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.236097, 16.488119, 14.395467>,  <24.538286, 16.539793, 14.652393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.236097, 16.488119, 14.395467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581133, 0.320609, -0.747994,
		0.302564, -0.938361, -0.167136,
		-0.755473, -0.129188, -0.642317,
		24.009455, 16.449364, 14.202772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892788, 16.304604, 14.066201>,  <24.538286, 16.539793, 14.652393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892788, 16.304604, 14.066201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.533363, 16.385098, 13.910204>,  <24.317709, 16.433393, 13.816606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.533363, 16.385098, 13.910204>,  <24.892788, 16.304604, 14.066201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533363, 16.385098, 13.910204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437373, 0.483509, -0.758237,
		0.035982, -0.851894, -0.522476,
		-0.898560, 0.201234, -0.389993,
		24.263796, 16.445467, 13.793206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897371, 15.972591, 13.390883>,  <24.892788, 16.304604, 14.066201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897371, 15.972591, 13.390883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.634872, 16.274385, 13.387014>,  <24.477373, 16.455462, 13.384693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.634872, 16.274385, 13.387014>,  <24.897371, 15.972591, 13.390883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.634872, 16.274385, 13.387014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367809, 0.308674, -0.877176,
		-0.658830, -0.579201, -0.480073,
		-0.656247, 0.754485, -0.009672,
		24.437998, 16.500731, 13.384112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613295, 16.077641, 12.613369>,  <24.897371, 15.972591, 13.390883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613295, 16.077641, 12.613369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.521399, 16.422281, 12.794415>,  <24.466261, 16.629066, 12.903042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.521399, 16.422281, 12.794415>,  <24.613295, 16.077641, 12.613369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.521399, 16.422281, 12.794415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330389, 0.506482, -0.796442,
		-0.915457, -0.033437, -0.401024,
		-0.229742, 0.861602, 0.452615,
		24.452477, 16.680761, 12.930199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544655, 16.535677, 12.071535>,  <24.613295, 16.077641, 12.613369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544655, 16.535677, 12.071535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.568975, 16.784063, 12.384126>,  <24.583569, 16.933096, 12.571680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.568975, 16.784063, 12.384126>,  <24.544655, 16.535677, 12.071535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.568975, 16.784063, 12.384126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341622, 0.722695, -0.600838,
		-0.937868, 0.303503, -0.168193,
		0.060803, 0.620966, 0.781476,
		24.587217, 16.970352, 12.618568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.159216, 17.115074, 11.852076>,  <24.544655, 16.535677, 12.071535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.159216, 17.115074, 11.852076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.434017, 17.223036, 12.121943>,  <24.598898, 17.287813, 12.283864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.434017, 17.223036, 12.121943>,  <24.159216, 17.115074, 11.852076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.434017, 17.223036, 12.121943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352912, 0.687678, -0.634470,
		-0.635201, 0.673982, 0.377186,
		0.687003, 0.269902, 0.674670,
		24.640118, 17.304007, 12.324345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.168070, 17.865772, 11.884498>,  <24.159216, 17.115074, 11.852076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.168070, 17.865772, 11.884498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.520428, 17.754641, 12.037774>,  <24.731842, 17.687962, 12.129740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.520428, 17.754641, 12.037774>,  <24.168070, 17.865772, 11.884498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520428, 17.754641, 12.037774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451735, 0.735163, -0.505441,
		-0.141282, 0.618342, 0.773106,
		0.880894, -0.277829, 0.383192,
		24.784697, 17.671291, 12.152732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.590860, 18.479881, 11.908275>,  <24.168070, 17.865772, 11.884498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.590860, 18.479881, 11.908275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.865145, 18.197273, 11.978276>,  <25.029716, 18.027708, 12.020277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.865145, 18.197273, 11.978276>,  <24.590860, 18.479881, 11.908275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865145, 18.197273, 11.978276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684377, 0.543955, -0.485532,
		0.247844, 0.452705, 0.856523,
		0.685713, -0.706521, 0.175005,
		25.070858, 17.985317, 12.030778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220413, 18.823629, 12.133434>,  <24.590860, 18.479881, 11.908275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220413, 18.823629, 12.133434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.306515, 18.460854, 11.988586>,  <25.358175, 18.243189, 11.901678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.306515, 18.460854, 11.988586>,  <25.220413, 18.823629, 12.133434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306515, 18.460854, 11.988586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734325, 0.394768, -0.552201,
		0.643764, -0.147049, 0.750962,
		0.215255, -0.906937, -0.362119,
		25.371092, 18.188772, 11.879951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887180, 18.776257, 12.264339>,  <25.220413, 18.823629, 12.133434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887180, 18.776257, 12.264339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.804155, 18.507235, 11.980202>,  <25.754341, 18.345821, 11.809719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.804155, 18.507235, 11.980202>,  <25.887180, 18.776257, 12.264339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804155, 18.507235, 11.980202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784321, 0.319549, -0.531724,
		0.584603, -0.667503, 0.461172,
		-0.207560, -0.672554, -0.710345,
		25.741888, 18.305468, 11.767098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.113232, 20.345528, 19.012915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713379, 20.356277, 19.011580>,  <17.473467, 20.362726, 19.010778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713379, 20.356277, 19.011580>,  <18.113232, 20.345528, 19.012915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713379, 20.356277, 19.011580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010380, -0.494105, -0.869341,
		-0.025010, -0.868987, 0.494202,
		-0.999633, 0.026872, -0.003337,
		17.413488, 20.364340, 19.010578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.936956, 19.709200, 18.897306>,  <18.113232, 20.345528, 19.012915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.936956, 19.709200, 18.897306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622076, 19.922415, 18.773252>,  <17.433147, 20.050344, 18.698820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622076, 19.922415, 18.773252>,  <17.936956, 19.709200, 18.897306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.622076, 19.922415, 18.773252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097640, -0.604285, -0.790763,
		-0.608952, -0.592184, 0.527726,
		-0.787175, 0.533064, -0.310160,
		17.385916, 20.082325, 18.680212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.460737, 19.190477, 18.734001>,  <17.936956, 19.709200, 18.897306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.460737, 19.190477, 18.734001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326260, 19.522192, 18.555447>,  <17.245573, 19.721220, 18.448315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326260, 19.522192, 18.555447>,  <17.460737, 19.190477, 18.734001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.326260, 19.522192, 18.555447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242940, -0.534296, -0.809635,
		-0.909920, -0.163748, 0.381093,
		-0.336192, 0.829286, -0.446386,
		17.225401, 19.770977, 18.421532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770077, 19.029093, 18.515408>,  <17.460737, 19.190477, 18.734001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770077, 19.029093, 18.515408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867559, 19.351324, 18.299389>,  <16.926050, 19.544662, 18.169777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867559, 19.351324, 18.299389>,  <16.770077, 19.029093, 18.515408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.867559, 19.351324, 18.299389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439617, -0.404588, -0.801901,
		-0.864490, 0.432844, 0.255544,
		0.243708, 0.805577, -0.540048,
		16.940672, 19.592997, 18.137375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.130569, 19.390440, 18.189600>,  <16.770077, 19.029093, 18.515408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.130569, 19.390440, 18.189600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453398, 19.463150, 17.964890>,  <16.647095, 19.506777, 17.830063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453398, 19.463150, 17.964890>,  <16.130569, 19.390440, 18.189600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453398, 19.463150, 17.964890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450994, -0.424313, -0.785215,
		-0.381102, 0.887083, -0.260472,
		0.807072, 0.181776, -0.561776,
		16.695518, 19.517683, 17.796356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.954833, 19.670280, 17.582239>,  <16.130569, 19.390440, 18.189600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.954833, 19.670280, 17.582239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.315405, 19.532051, 17.477928>,  <16.531748, 19.449114, 17.415342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.315405, 19.532051, 17.477928>,  <15.954833, 19.670280, 17.582239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.315405, 19.532051, 17.477928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383691, -0.358721, -0.850941,
		0.200515, 0.867122, -0.455954,
		0.901430, -0.345572, -0.260778,
		16.585835, 19.428379, 17.399694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.997149, 19.836458, 16.830639>,  <15.954833, 19.670280, 17.582239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.997149, 19.836458, 16.830639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287642, 19.569494, 16.896549>,  <16.461937, 19.409315, 16.936096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287642, 19.569494, 16.896549>,  <15.997149, 19.836458, 16.830639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.287642, 19.569494, 16.896549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020812, -0.218239, -0.975673,
		0.687137, 0.711992, -0.144601,
		0.726230, -0.667412, 0.164778,
		16.505510, 19.369270, 16.945982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.447493, 19.961226, 16.261145>,  <15.997149, 19.836458, 16.830639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.447493, 19.961226, 16.261145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514585, 19.592113, 16.399908>,  <16.554842, 19.370647, 16.483166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514585, 19.592113, 16.399908>,  <16.447493, 19.961226, 16.261145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.514585, 19.592113, 16.399908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068154, -0.361906, -0.929720,
		0.983474, 0.132301, -0.123595,
		0.167733, -0.922778, 0.346908,
		16.564905, 19.315279, 16.503981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842094, 19.597136, 15.765741>,  <16.447493, 19.961226, 16.261145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.842094, 19.597136, 15.765741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663132, 19.306808, 15.974745>,  <16.555754, 19.132612, 16.100147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663132, 19.306808, 15.974745>,  <16.842094, 19.597136, 15.765741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.663132, 19.306808, 15.974745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074916, -0.551777, -0.830620,
		0.891186, -0.410771, 0.192495,
		-0.447409, -0.725817, 0.522509,
		16.528910, 19.089064, 16.131498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120222, 18.924061, 15.616784>,  <16.842094, 19.597136, 15.765741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120222, 18.924061, 15.616784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765776, 18.813644, 15.765698>,  <16.553108, 18.747395, 15.855047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765776, 18.813644, 15.765698>,  <17.120222, 18.924061, 15.616784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765776, 18.813644, 15.765698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068175, -0.716903, -0.693832,
		0.458418, -0.640197, 0.616441,
		-0.886118, -0.276040, 0.372287,
		16.499941, 18.730833, 15.877384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098999, 18.200193, 15.407929>,  <17.120222, 18.924061, 15.616784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.098999, 18.200193, 15.407929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727297, 18.222490, 15.554014>,  <16.504276, 18.235868, 15.641665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727297, 18.222490, 15.554014>,  <17.098999, 18.200193, 15.407929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.727297, 18.222490, 15.554014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310381, -0.653957, -0.689930,
		0.200375, -0.754475, 0.624994,
		-0.929254, 0.055741, 0.365211,
		16.448521, 18.239212, 15.663577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.890285, 17.550276, 15.634040>,  <17.098999, 18.200193, 15.407929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.890285, 17.550276, 15.634040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575546, 17.774849, 15.531537>,  <16.386703, 17.909592, 15.470036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575546, 17.774849, 15.531537>,  <16.890285, 17.550276, 15.634040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575546, 17.774849, 15.531537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337288, -0.738937, -0.583275,
		-0.516827, -0.372515, 0.770793,
		-0.786846, 0.561431, -0.256258,
		16.339493, 17.943279, 15.454659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222719, 16.933908, 15.723622>,  <16.890285, 17.550276, 15.634040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222719, 16.933908, 15.723622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.561623, 17.140049, 15.672136>,  <17.764965, 17.263733, 15.641245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.561623, 17.140049, 15.672136>,  <17.222719, 16.933908, 15.723622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.561623, 17.140049, 15.672136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530563, -0.832729, 0.158322,
		-0.025593, -0.202431, -0.978962,
		0.847259, 0.515349, -0.128715,
		17.815800, 17.294653, 15.633522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751469, 16.430399, 15.774952>,  <17.222719, 16.933908, 15.723622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751469, 16.430399, 15.774952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003565, 16.737272, 15.727243>,  <18.154821, 16.921396, 15.698618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003565, 16.737272, 15.727243>,  <17.751469, 16.430399, 15.774952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.003565, 16.737272, 15.727243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774833, -0.611741, 0.159396,
		0.049322, -0.192873, -0.979983,
		0.630239, 0.767185, -0.119272,
		18.192636, 16.967428, 15.691462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.144526, 16.158854, 16.132824>,  <17.751469, 16.430399, 15.774952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.144526, 16.158854, 16.132824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399548, 15.901231, 16.301924>,  <17.552561, 15.746657, 16.403383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399548, 15.901231, 16.301924>,  <17.144526, 16.158854, 16.132824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.399548, 15.901231, 16.301924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198001, 0.393317, 0.897829,
		-0.744527, -0.656119, 0.123237,
		0.637554, -0.644057, 0.422748,
		17.590815, 15.708014, 16.428747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770399, 15.758142, 16.563816>,  <17.144526, 16.158854, 16.132824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770399, 15.758142, 16.563816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.144732, 15.748672, 16.704475>,  <17.369331, 15.742990, 16.788872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.144732, 15.748672, 16.704475>,  <16.770399, 15.758142, 16.563816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.144732, 15.748672, 16.704475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341368, 0.187298, 0.921080,
		-0.087671, -0.982018, 0.167197,
		0.935832, -0.023676, 0.351650,
		17.425482, 15.741570, 16.809971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.618187, 15.511616, 17.185625>,  <16.770399, 15.758142, 16.563816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.618187, 15.511616, 17.185625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982651, 15.669872, 17.231672>,  <17.201330, 15.764826, 17.259300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982651, 15.669872, 17.231672>,  <16.618187, 15.511616, 17.185625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982651, 15.669872, 17.231672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210182, 0.205973, 0.955719,
		0.354414, -0.895009, 0.270832,
		0.911161, 0.395644, 0.115115,
		17.255999, 15.788565, 17.266207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941656, 15.048062, 17.687605>,  <16.618187, 15.511616, 17.185625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941656, 15.048062, 17.687605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103630, 15.413610, 17.675810>,  <17.200815, 15.632939, 17.668734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103630, 15.413610, 17.675810>,  <16.941656, 15.048062, 17.687605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.103630, 15.413610, 17.675810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382639, 0.198659, 0.902287,
		0.830431, -0.354086, 0.430126,
		0.404935, 0.913870, -0.029486,
		17.225111, 15.687772, 17.666964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.267448, 15.235250, 18.414537>,  <16.941656, 15.048062, 17.687605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.267448, 15.235250, 18.414537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206837, 15.587423, 18.234818>,  <17.170469, 15.798728, 18.126986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206837, 15.587423, 18.234818>,  <17.267448, 15.235250, 18.414537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.206837, 15.587423, 18.234818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168808, 0.424822, 0.889399,
		0.973931, 0.210617, 0.084251,
		-0.151531, 0.880436, -0.449301,
		17.161377, 15.851554, 18.100027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.477734, 15.692089, 18.936518>,  <17.267448, 15.235250, 18.414537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.477734, 15.692089, 18.936518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272490, 15.919182, 18.679024>,  <17.149343, 16.055437, 18.524527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272490, 15.919182, 18.679024>,  <17.477734, 15.692089, 18.936518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272490, 15.919182, 18.679024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301704, 0.582835, 0.754505,
		0.803549, 0.581363, -0.127773,
		-0.513112, 0.567732, -0.643737,
		17.118555, 16.089500, 18.485903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712839, 16.366449, 19.067549>,  <17.477734, 15.692089, 18.936518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712839, 16.366449, 19.067549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358442, 16.432596, 18.894264>,  <17.145803, 16.472284, 18.790293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358442, 16.432596, 18.894264>,  <17.712839, 16.366449, 19.067549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.358442, 16.432596, 18.894264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262571, 0.591123, 0.762647,
		0.382196, 0.789448, -0.480310,
		-0.885992, 0.165365, -0.433211,
		17.092644, 16.482206, 18.764301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.706247, 17.092203, 19.019636>,  <17.712839, 16.366449, 19.067549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.706247, 17.092203, 19.019636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322598, 16.979948, 19.005106>,  <17.092407, 16.912596, 18.996387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322598, 16.979948, 19.005106>,  <17.706247, 17.092203, 19.019636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322598, 16.979948, 19.005106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220141, 0.659313, 0.718918,
		-0.177805, 0.697530, -0.694145,
		-0.959126, -0.280637, -0.036326,
		17.034859, 16.895758, 18.994207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309338, 17.615156, 18.938824>,  <17.706247, 17.092203, 19.019636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.309338, 17.615156, 18.938824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056625, 17.354269, 19.106380>,  <16.904999, 17.197737, 19.206915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056625, 17.354269, 19.106380>,  <17.309338, 17.615156, 18.938824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.056625, 17.354269, 19.106380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368732, 0.728212, 0.577706,
		-0.681831, 0.210524, -0.700562,
		-0.631779, -0.652217, 0.418891,
		16.867092, 17.158604, 19.232048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.735317, 18.071344, 19.035833>,  <17.309338, 17.615156, 18.938824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.735317, 18.071344, 19.035833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656736, 17.744093, 19.252007>,  <16.609589, 17.547741, 19.381710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656736, 17.744093, 19.252007>,  <16.735317, 18.071344, 19.035833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656736, 17.744093, 19.252007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520767, 0.554069, 0.649469,
		-0.830788, -0.153851, -0.534903,
		-0.196452, -0.818131, 0.540434,
		16.597801, 17.498653, 19.414137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.036280, 18.004318, 19.116102>,  <16.735317, 18.071344, 19.035833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.036280, 18.004318, 19.116102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189096, 17.803091, 19.426191>,  <16.280787, 17.682356, 19.612246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189096, 17.803091, 19.426191>,  <16.036280, 18.004318, 19.116102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.189096, 17.803091, 19.426191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502613, 0.590835, 0.631106,
		-0.775516, -0.630745, -0.027125,
		0.382040, -0.503066, 0.775222,
		16.303709, 17.652172, 19.658758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.474594, 17.821270, 19.535460>,  <16.036280, 18.004318, 19.116102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.474594, 17.821270, 19.535460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776309, 17.797218, 19.796974>,  <15.957338, 17.782787, 19.953882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776309, 17.797218, 19.796974>,  <15.474594, 17.821270, 19.535460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776309, 17.797218, 19.796974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563866, 0.450761, 0.692004,
		-0.336310, -0.890617, 0.306098,
		0.754288, -0.060130, 0.653785,
		16.002596, 17.779179, 19.993109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.149310, 17.794621, 20.157547>,  <15.474594, 17.821270, 19.535460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.149310, 17.794621, 20.157547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517239, 17.863342, 20.298635>,  <15.737996, 17.904575, 20.383289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517239, 17.863342, 20.298635>,  <15.149310, 17.794621, 20.157547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.517239, 17.863342, 20.298635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388788, 0.519792, 0.760697,
		-0.052651, -0.836839, 0.544911,
		0.919822, 0.171804, 0.352721,
		15.793185, 17.914883, 20.404451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.155092, 17.662024, 20.875216>,  <15.149310, 17.794621, 20.157547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.155092, 17.662024, 20.875216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482625, 17.884726, 20.819304>,  <15.679145, 18.018347, 20.785755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482625, 17.884726, 20.819304>,  <15.155092, 17.662024, 20.875216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.482625, 17.884726, 20.819304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202515, 0.508034, 0.837191,
		0.537130, -0.657206, 0.528745,
		0.818828, 0.556760, -0.139786,
		15.728274, 18.051752, 20.777369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.983914, 17.020582, 21.212976>,  <15.155092, 17.662024, 20.875216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.983914, 17.020582, 21.212976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.639387, 16.935879, 21.397711>,  <14.432671, 16.885056, 21.508551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.639387, 16.935879, 21.397711>,  <14.983914, 17.020582, 21.212976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.639387, 16.935879, 21.397711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395765, -0.290368, -0.871239,
		0.318595, -0.933190, 0.166292,
		-0.861317, -0.211760, 0.461834,
		14.380992, 16.872351, 21.536261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.906409, 16.381763, 21.061230>,  <14.983914, 17.020582, 21.212976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.906409, 16.381763, 21.061230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.540394, 16.528795, 21.127666>,  <14.320785, 16.617014, 21.167528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.540394, 16.528795, 21.127666>,  <14.906409, 16.381763, 21.061230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.540394, 16.528795, 21.127666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326782, -0.434150, -0.839480,
		-0.236468, -0.822434, 0.517384,
		-0.915039, 0.367582, 0.166094,
		14.265882, 16.639071, 21.177494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.447845, 15.808111, 20.817101>,  <14.906409, 16.381763, 21.061230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.447845, 15.808111, 20.817101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.224929, 16.138704, 20.848980>,  <14.091179, 16.337061, 20.868109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.224929, 16.138704, 20.848980>,  <14.447845, 15.808111, 20.817101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.224929, 16.138704, 20.848980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450839, -0.220591, -0.864918,
		-0.697259, -0.517943, 0.495544,
		-0.557291, 0.826483, 0.079700,
		14.057741, 16.386650, 20.872890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.677594, 15.571636, 20.724665>,  <14.447845, 15.808111, 20.817101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.677594, 15.571636, 20.724665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.647015, 15.966264, 20.666922>,  <13.628667, 16.203039, 20.632275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.647015, 15.966264, 20.666922>,  <13.677594, 15.571636, 20.724665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.647015, 15.966264, 20.666922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522003, -0.162958, -0.837233,
		-0.849511, 0.011349, 0.527449,
		-0.076450, 0.986568, -0.144359,
		13.624080, 16.262234, 20.623613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.976851, 15.777877, 20.750193>,  <13.677594, 15.571636, 20.724665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.976851, 15.777877, 20.750193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.168511, 16.039026, 20.515530>,  <13.283508, 16.195715, 20.374731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.168511, 16.039026, 20.515530>,  <12.976851, 15.777877, 20.750193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.168511, 16.039026, 20.515530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612671, -0.229841, -0.756180,
		-0.628527, 0.721755, 0.289867,
		0.479153, 0.652873, -0.586659,
		13.312258, 16.234888, 20.339531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.382273, 16.068741, 20.379967>,  <12.976851, 15.777877, 20.750193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.382273, 16.068741, 20.379967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.694623, 16.174934, 20.153780>,  <12.882033, 16.238651, 20.018068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.694623, 16.174934, 20.153780>,  <12.382273, 16.068741, 20.379967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.694623, 16.174934, 20.153780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563895, -0.089943, -0.820934,
		-0.268805, 0.959910, 0.079471,
		0.780875, 0.265485, -0.565466,
		12.928885, 16.254580, 19.984140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.079933, 16.470888, 19.859716>,  <12.382273, 16.068741, 20.379967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.079933, 16.470888, 19.859716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.436233, 16.379435, 19.702595>,  <12.650012, 16.324562, 19.608322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.436233, 16.379435, 19.702595>,  <12.079933, 16.470888, 19.859716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.436233, 16.379435, 19.702595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447119, -0.285702, -0.847620,
		0.081568, 0.930646, -0.356714,
		0.890748, -0.228633, -0.392805,
		12.703457, 16.310844, 19.584753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.975585, 16.605284, 19.189837>,  <12.079933, 16.470888, 19.859716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.975585, 16.605284, 19.189837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.310468, 16.387846, 19.165867>,  <12.511397, 16.257383, 19.151485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.310468, 16.387846, 19.165867>,  <11.975585, 16.605284, 19.189837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.310468, 16.387846, 19.165867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262143, -0.302720, -0.916319,
		0.479965, 0.782858, -0.395939,
		0.837206, -0.543594, -0.059926,
		12.561629, 16.224768, 19.147888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.375440, 16.883160, 18.656960>,  <11.975585, 16.605284, 19.189837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.375440, 16.883160, 18.656960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.462974, 16.494293, 18.690439>,  <12.515494, 16.260973, 18.710527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.462974, 16.494293, 18.690439>,  <12.375440, 16.883160, 18.656960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.462974, 16.494293, 18.690439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185886, -0.125744, -0.974492,
		0.957892, 0.197694, -0.208229,
		0.218835, -0.972165, 0.083701,
		12.528625, 16.202644, 18.715549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.569859, 16.741074, 18.027885>,  <12.375440, 16.883160, 18.656960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.569859, 16.741074, 18.027885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.534019, 16.376823, 18.189245>,  <12.512514, 16.158274, 18.286060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.534019, 16.376823, 18.189245>,  <12.569859, 16.741074, 18.027885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.534019, 16.376823, 18.189245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263546, -0.368913, -0.891317,
		0.960477, -0.186176, -0.206937,
		-0.089600, -0.910627, 0.403398,
		12.507138, 16.103636, 18.310265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.232100, 16.977324, 17.843945>,  <12.569859, 16.741074, 18.027885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.232100, 16.977324, 17.843945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.967138, 16.899015, 17.554699>,  <12.808162, 16.852030, 17.381151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.967138, 16.899015, 17.554699>,  <13.232100, 16.977324, 17.843945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.967138, 16.899015, 17.554699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423556, 0.698296, -0.577047,
		0.617917, -0.688517, -0.379634,
		-0.662404, -0.195771, -0.723115,
		12.768417, 16.840284, 17.337765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995073, 16.315033, 17.448742>,  <13.232100, 16.977324, 17.843945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995073, 16.315033, 17.448742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.745249, 16.112013, 17.686167>,  <12.595354, 15.990200, 17.828621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.745249, 16.112013, 17.686167>,  <12.995073, 16.315033, 17.448742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.745249, 16.112013, 17.686167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571908, -0.220323, -0.790176,
		0.531831, -0.832976, -0.152668,
		-0.624561, -0.507552, 0.593560,
		12.557880, 15.959747, 17.864235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.459476, 20.128592, 26.023369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.725583, 19.963879, 26.272480>,  <13.885247, 19.865051, 26.421947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.725583, 19.963879, 26.272480>,  <13.459476, 20.128592, 26.023369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.725583, 19.963879, 26.272480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114700, -0.767875, -0.630247,
		0.737743, 0.490714, -0.463610,
		0.665266, -0.411785, 0.622780,
		13.925163, 19.840343, 26.459314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.968234, 19.937395, 25.562532>,  <13.459476, 20.128592, 26.023369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.968234, 19.937395, 25.562532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.037649, 19.708630, 25.883232>,  <14.079298, 19.571371, 26.075651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.037649, 19.708630, 25.883232>,  <13.968234, 19.937395, 25.562532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.037649, 19.708630, 25.883232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173790, -0.783541, -0.596540,
		0.969372, 0.242858, -0.036582,
		0.173538, -0.571912, 0.801749,
		14.089710, 19.537056, 26.123756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.640112, 19.643223, 25.479210>,  <13.968234, 19.937395, 25.562532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.640112, 19.643223, 25.479210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.428571, 19.407963, 25.723961>,  <14.301646, 19.266808, 25.870811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.428571, 19.407963, 25.723961>,  <14.640112, 19.643223, 25.479210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.428571, 19.407963, 25.723961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200508, -0.787123, -0.583295,
		0.824688, -0.185791, 0.534201,
		-0.528854, -0.588148, 0.611879,
		14.269915, 19.231518, 25.907524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.024129, 19.082199, 25.373081>,  <14.640112, 19.643223, 25.479210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.024129, 19.082199, 25.373081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.702215, 18.926060, 25.551945>,  <14.509067, 18.832376, 25.659262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.702215, 18.926060, 25.551945>,  <15.024129, 19.082199, 25.373081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.702215, 18.926060, 25.551945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004590, -0.757410, -0.652924,
		0.593548, -0.523411, 0.611344,
		-0.804785, -0.390348, 0.447157,
		14.460779, 18.808956, 25.686092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.149984, 18.392330, 25.540119>,  <15.024129, 19.082199, 25.373081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.149984, 18.392330, 25.540119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.751524, 18.420996, 25.519939>,  <14.512447, 18.438194, 25.507832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.751524, 18.420996, 25.519939>,  <15.149984, 18.392330, 25.540119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.751524, 18.420996, 25.519939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027932, -0.805244, -0.592285,
		-0.083071, -0.588597, 0.804147,
		-0.996152, 0.071663, -0.050451,
		14.452679, 18.442495, 25.504805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981424, 17.701818, 25.529331>,  <15.149984, 18.392330, 25.540119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981424, 17.701818, 25.529331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.662086, 17.889915, 25.378855>,  <14.470484, 18.002773, 25.288568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.662086, 17.889915, 25.378855>,  <14.981424, 17.701818, 25.529331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.662086, 17.889915, 25.378855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064761, -0.688110, -0.722711,
		-0.598708, -0.552610, 0.579802,
		-0.798345, 0.470242, -0.376190,
		14.422584, 18.030989, 25.265997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.646551, 17.176067, 25.228159>,  <14.981424, 17.701818, 25.529331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.646551, 17.176067, 25.228159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.479543, 17.497017, 25.057571>,  <14.379338, 17.689587, 24.955219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.479543, 17.497017, 25.057571>,  <14.646551, 17.176067, 25.228159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.479543, 17.497017, 25.057571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014248, -0.463495, -0.885985,
		-0.908556, -0.375993, 0.182086,
		-0.417520, 0.802372, -0.426469,
		14.354287, 17.737728, 24.929630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.020759, 16.913544, 24.802055>,  <14.646551, 17.176067, 25.228159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.020759, 16.913544, 24.802055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.118188, 17.270420, 24.649916>,  <14.176645, 17.484547, 24.558632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.118188, 17.270420, 24.649916>,  <14.020759, 16.913544, 24.802055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.118188, 17.270420, 24.649916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027845, -0.385564, -0.922261,
		-0.969483, 0.235229, -0.069069,
		0.243573, 0.892193, -0.380348,
		14.191259, 17.538078, 24.535810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.668387, 16.992022, 24.213917>,  <14.020759, 16.913544, 24.802055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.668387, 16.992022, 24.213917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.988310, 17.225878, 24.159506>,  <14.180264, 17.366192, 24.126860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.988310, 17.225878, 24.159506>,  <13.668387, 16.992022, 24.213917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.988310, 17.225878, 24.159506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090874, -0.341938, -0.935318,
		-0.593339, 0.735713, -0.326613,
		0.799807, 0.584641, -0.136028,
		14.228252, 17.401270, 24.118698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.446012, 17.410133, 23.787680>,  <13.668387, 16.992022, 24.213917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.446012, 17.410133, 23.787680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.837180, 17.465269, 23.724850>,  <14.071881, 17.498350, 23.687151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.837180, 17.465269, 23.724850>,  <13.446012, 17.410133, 23.787680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.837180, 17.465269, 23.724850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137122, -0.143983, -0.980034,
		-0.157701, 0.979933, -0.121904,
		0.977920, 0.137837, -0.157076,
		14.130556, 17.506620, 23.677727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.502689, 17.849247, 23.227280>,  <13.446012, 17.410133, 23.787680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.502689, 17.849247, 23.227280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.853764, 17.658548, 23.246801>,  <14.064408, 17.544130, 23.258514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.853764, 17.658548, 23.246801>,  <13.502689, 17.849247, 23.227280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.853764, 17.658548, 23.246801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083100, -0.251699, -0.964231,
		0.471977, 0.842236, -0.260530,
		0.877686, -0.476745, 0.048806,
		14.117069, 17.515524, 23.261444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.852427, 18.069450, 22.653536>,  <13.502689, 17.849247, 23.227280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.852427, 18.069450, 22.653536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.036358, 17.725576, 22.742533>,  <14.146716, 17.519253, 22.795931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.036358, 17.725576, 22.742533>,  <13.852427, 18.069450, 22.653536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.036358, 17.725576, 22.742533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024160, -0.238346, -0.970880,
		0.887680, 0.451812, -0.088828,
		0.459827, -0.859685, 0.222491,
		14.174306, 17.467670, 22.809280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.226633, 17.984232, 22.078634>,  <13.852427, 18.069450, 22.653536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.226633, 17.984232, 22.078634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.245794, 17.614086, 22.229050>,  <14.257291, 17.391998, 22.319300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.245794, 17.614086, 22.229050>,  <14.226633, 17.984232, 22.078634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.245794, 17.614086, 22.229050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151979, -0.378841, -0.912897,
		0.987222, -0.013420, -0.158783,
		0.047902, -0.925364, 0.376040,
		14.260165, 17.336477, 22.341862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.828407, 17.724760, 21.682917>,  <14.226633, 17.984232, 22.078634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.828407, 17.724760, 21.682917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.592232, 17.431751, 21.818443>,  <14.450526, 17.255947, 21.899759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.592232, 17.431751, 21.818443>,  <14.828407, 17.724760, 21.682917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.592232, 17.431751, 21.818443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120407, -0.335159, -0.934436,
		0.798051, -0.592522, 0.109690,
		-0.590438, -0.732520, 0.338818,
		14.415100, 17.211996, 21.920088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.534909, 17.677504, 21.477200>,  <14.828407, 17.724760, 21.682917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.534909, 17.677504, 21.477200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.656990, 18.005310, 21.283192>,  <15.730239, 18.201994, 21.166786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.656990, 18.005310, 21.283192>,  <15.534909, 17.677504, 21.477200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656990, 18.005310, 21.283192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017560, 0.504390, 0.863297,
		0.952126, -0.271997, 0.139550,
		0.305202, 0.819517, -0.485019,
		15.748550, 18.251165, 21.137686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.991030, 17.968052, 21.932257>,  <15.534909, 17.677504, 21.477200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.991030, 17.968052, 21.932257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.880368, 18.265287, 21.688524>,  <15.813972, 18.443628, 21.542286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.880368, 18.265287, 21.688524>,  <15.991030, 17.968052, 21.932257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.880368, 18.265287, 21.688524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133291, 0.657621, 0.741464,
		0.951681, 0.123911, -0.280980,
		-0.276654, 0.743089, -0.609329,
		15.797372, 18.488214, 21.505726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381292, 18.433901, 22.112133>,  <15.991030, 17.968052, 21.932257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381292, 18.433901, 22.112133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.119049, 18.644081, 21.895216>,  <15.961703, 18.770189, 21.765066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.119049, 18.644081, 21.895216>,  <16.381292, 18.433901, 22.112133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119049, 18.644081, 21.895216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027930, 0.700805, 0.712805,
		0.754586, 0.482466, -0.444776,
		-0.655606, 0.525451, -0.542294,
		15.922367, 18.801716, 21.732529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630045, 19.151625, 22.039543>,  <16.381292, 18.433901, 22.112133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630045, 19.151625, 22.039543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.234367, 19.142321, 21.981647>,  <15.996961, 19.136738, 21.946909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.234367, 19.142321, 21.981647>,  <16.630045, 19.151625, 22.039543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.234367, 19.142321, 21.981647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097065, 0.843825, 0.527767,
		0.109861, 0.536114, -0.836966,
		-0.989196, -0.023259, -0.144741,
		15.937609, 19.135344, 21.938225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398527, 19.845432, 21.905598>,  <16.630045, 19.151625, 22.039543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.398527, 19.845432, 21.905598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.060289, 19.654850, 22.001900>,  <15.857347, 19.540501, 22.059681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.060289, 19.654850, 22.001900>,  <16.398527, 19.845432, 21.905598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060289, 19.654850, 22.001900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347644, 0.833745, 0.428966,
		-0.405113, 0.279033, -0.870646,
		-0.845593, -0.476455, 0.240757,
		15.806612, 19.511913, 22.074127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.828220, 20.258301, 21.842520>,  <16.398527, 19.845432, 21.905598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.828220, 20.258301, 21.842520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.714382, 19.977774, 22.103949>,  <15.646079, 19.809458, 22.260805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.714382, 19.977774, 22.103949>,  <15.828220, 20.258301, 21.842520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714382, 19.977774, 22.103949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501197, 0.690018, 0.522184,
		-0.817195, -0.178958, -0.547875,
		-0.284594, -0.701319, 0.653573,
		15.629004, 19.767378, 22.300020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.045115, 20.403204, 22.019268>,  <15.828220, 20.258301, 21.842520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.045115, 20.403204, 22.019268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.212984, 20.188616, 22.312136>,  <15.313706, 20.059864, 22.487856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.212984, 20.188616, 22.312136>,  <15.045115, 20.403204, 22.019268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.212984, 20.188616, 22.312136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321470, 0.666509, 0.672623,
		-0.848840, -0.517654, 0.107258,
		0.419675, -0.536470, 0.732171,
		15.338886, 20.027676, 22.531786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666260, 20.516800, 22.544594>,  <15.045115, 20.403204, 22.019268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666260, 20.516800, 22.544594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.975989, 20.355949, 22.740028>,  <15.161827, 20.259439, 22.857288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.975989, 20.355949, 22.740028>,  <14.666260, 20.516800, 22.544594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.975989, 20.355949, 22.740028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128664, 0.655937, 0.743769,
		-0.619570, -0.638782, 0.456169,
		0.774324, -0.402125, 0.488587,
		15.208286, 20.235312, 22.886604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432139, 20.459511, 23.291193>,  <14.666260, 20.516800, 22.544594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432139, 20.459511, 23.291193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.831149, 20.437145, 23.308256>,  <15.070555, 20.423725, 23.318495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.831149, 20.437145, 23.308256>,  <14.432139, 20.459511, 23.291193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.831149, 20.437145, 23.308256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006021, 0.672224, 0.740323,
		-0.070071, -0.738233, 0.670896,
		0.997524, -0.055915, 0.042658,
		15.130406, 20.420370, 23.321054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627245, 20.104555, 23.911186>,  <14.432139, 20.459511, 23.291193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627245, 20.104555, 23.911186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.948730, 20.323460, 23.817764>,  <15.141623, 20.454802, 23.761711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.948730, 20.323460, 23.817764>,  <14.627245, 20.104555, 23.911186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.948730, 20.323460, 23.817764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079306, 0.290489, 0.953586,
		0.589706, -0.784933, 0.190069,
		0.803715, 0.547262, -0.233554,
		15.189845, 20.487638, 23.747698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.099001, 20.051107, 24.484957>,  <14.627245, 20.104555, 23.911186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.099001, 20.051107, 24.484957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.237719, 20.369932, 24.287199>,  <15.320950, 20.561228, 24.168545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.237719, 20.369932, 24.287199>,  <15.099001, 20.051107, 24.484957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.237719, 20.369932, 24.287199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223037, 0.441907, 0.868892,
		0.911037, -0.411596, -0.024523,
		0.346795, 0.797062, -0.494395,
		15.341757, 20.609051, 24.138880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708233, 20.177755, 24.842659>,  <15.099001, 20.051107, 24.484957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.708233, 20.177755, 24.842659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.629882, 20.518782, 24.648851>,  <15.582871, 20.723398, 24.532566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.629882, 20.518782, 24.648851>,  <15.708233, 20.177755, 24.842659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629882, 20.518782, 24.648851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303856, 0.522543, 0.796631,
		0.932364, 0.008818, -0.361412,
		-0.195878, 0.852567, -0.484521,
		15.571118, 20.774551, 24.503494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330063, 20.635881, 24.861292>,  <15.708233, 20.177755, 24.842659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330063, 20.635881, 24.861292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.007515, 20.867096, 24.811270>,  <15.813986, 21.005825, 24.781256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.007515, 20.867096, 24.811270>,  <16.330063, 20.635881, 24.861292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007515, 20.867096, 24.811270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370019, 0.658059, 0.655778,
		0.461358, 0.482527, -0.744524,
		-0.806372, 0.578036, -0.125057,
		15.765603, 21.040506, 24.773752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590582, 21.327543, 24.950998>,  <16.330063, 20.635881, 24.861292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.590582, 21.327543, 24.950998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.191910, 21.349531, 24.975006>,  <15.952706, 21.362724, 24.989410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.191910, 21.349531, 24.975006>,  <16.590582, 21.327543, 24.950998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.191910, 21.349531, 24.975006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080563, 0.771082, 0.631618,
		-0.011560, 0.634358, -0.772953,
		-0.996682, 0.054970, 0.060019,
		15.892905, 21.366022, 24.993011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.597404, 24.957115, 22.804832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.832761, 24.640694, 22.871805>,  <10.973974, 24.450842, 22.911989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.832761, 24.640694, 22.871805>,  <10.597404, 24.957115, 22.804832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.832761, 24.640694, 22.871805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036373, -0.232755, -0.971855,
		0.807759, 0.565740, -0.165724,
		0.588390, -0.791052, 0.167432,
		11.009277, 24.403378, 22.922035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.051166, 25.052633, 22.211021>,  <10.597404, 24.957115, 22.804832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.051166, 25.052633, 22.211021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.061327, 24.690506, 22.380610>,  <11.067424, 24.473228, 22.482363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.061327, 24.690506, 22.380610>,  <11.051166, 25.052633, 22.211021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.061327, 24.690506, 22.380610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025961, -0.423366, -0.905587,
		0.999340, 0.034012, 0.012748,
		0.025403, -0.905320, 0.423969,
		11.068948, 24.418909, 22.507801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.568020, 24.727333, 21.844963>,  <11.051166, 25.052633, 22.211021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.568020, 24.727333, 21.844963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.333479, 24.433969, 21.982542>,  <11.192754, 24.257952, 22.065090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.333479, 24.433969, 21.982542>,  <11.568020, 24.727333, 21.844963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.333479, 24.433969, 21.982542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008757, -0.430313, -0.902638,
		0.810008, -0.526253, 0.258738,
		-0.586354, -0.733409, 0.343949,
		11.157573, 24.213947, 22.085726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.894045, 24.170790, 21.591230>,  <11.568020, 24.727333, 21.844963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.894045, 24.170790, 21.591230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.533329, 24.018154, 21.672386>,  <11.316899, 23.926573, 21.721079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.533329, 24.018154, 21.672386>,  <11.894045, 24.170790, 21.591230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.533329, 24.018154, 21.672386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022956, -0.511096, -0.859217,
		0.431564, -0.770176, 0.469661,
		-0.901790, -0.381588, 0.202890,
		11.262792, 23.903677, 21.733253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.032948, 23.414469, 21.587746>,  <11.894045, 24.170790, 21.591230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.032948, 23.414469, 21.587746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.641114, 23.489956, 21.560028>,  <11.406014, 23.535248, 21.543398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.641114, 23.489956, 21.560028>,  <12.032948, 23.414469, 21.587746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.641114, 23.489956, 21.560028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115268, -0.809635, -0.575503,
		-0.164713, -0.555766, 0.814858,
		-0.979583, 0.188720, -0.069295,
		11.347239, 23.546572, 21.539240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.662434, 22.788208, 21.870838>,  <12.032948, 23.414469, 21.587746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.662434, 22.788208, 21.870838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.413300, 22.989605, 21.631313>,  <11.263820, 23.110443, 21.487598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.413300, 22.989605, 21.631313>,  <11.662434, 22.788208, 21.870838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.413300, 22.989605, 21.631313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153253, -0.829085, -0.537710,
		-0.767196, -0.243136, 0.593544,
		-0.622835, 0.503492, -0.598809,
		11.226449, 23.140652, 21.451670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.069101, 22.378752, 21.821320>,  <11.662434, 22.788208, 21.870838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.069101, 22.378752, 21.821320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.072082, 22.622307, 21.504030>,  <11.073870, 22.768440, 21.313658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.072082, 22.622307, 21.504030>,  <11.069101, 22.378752, 21.821320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.072082, 22.622307, 21.504030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054827, -0.791802, -0.608312,
		-0.998468, 0.048022, 0.027484,
		0.007451, 0.608887, -0.793222,
		11.074317, 22.804974, 21.266064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.665979, 21.958120, 21.400679>,  <11.069101, 22.378752, 21.821320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.665979, 21.958120, 21.400679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.833401, 22.236544, 21.167332>,  <10.933854, 22.403597, 21.027325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.833401, 22.236544, 21.167332>,  <10.665979, 21.958120, 21.400679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.833401, 22.236544, 21.167332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016105, -0.636549, -0.771068,
		-0.908049, 0.332129, -0.255221,
		0.418554, 0.696057, -0.583366,
		10.958967, 22.445360, 20.992321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.234197, 21.970879, 20.797119>,  <10.665979, 21.958120, 21.400679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.234197, 21.970879, 20.797119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.592765, 22.122732, 20.705633>,  <10.807905, 22.213844, 20.650742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.592765, 22.122732, 20.705633>,  <10.234197, 21.970879, 20.797119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.592765, 22.122732, 20.705633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033056, -0.571873, -0.819676,
		-0.441972, 0.727214, -0.525187,
		0.896420, 0.379634, -0.228713,
		10.861691, 22.236622, 20.637020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.160899, 22.185165, 20.030336>,  <10.234197, 21.970879, 20.797119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.160899, 22.185165, 20.030336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.546678, 22.130976, 20.121101>,  <10.778145, 22.098461, 20.175560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.546678, 22.130976, 20.121101>,  <10.160899, 22.185165, 20.030336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.546678, 22.130976, 20.121101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120280, -0.539518, -0.833338,
		0.235319, 0.831004, -0.504042,
		0.964447, -0.135474, 0.226912,
		10.836012, 22.090334, 20.189175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.443290, 22.214317, 19.389864>,  <10.160899, 22.185165, 20.030336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.443290, 22.214317, 19.389864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.711759, 22.033409, 19.624804>,  <10.872840, 21.924864, 19.765768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.711759, 22.033409, 19.624804>,  <10.443290, 22.214317, 19.389864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.711759, 22.033409, 19.624804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212300, -0.641862, -0.736846,
		0.710251, 0.619244, -0.334782,
		0.671172, -0.452272, 0.587349,
		10.913110, 21.897728, 19.801008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.059607, 22.164738, 19.006243>,  <10.443290, 22.214317, 19.389864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.059607, 22.164738, 19.006243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.116518, 21.897835, 19.298689>,  <11.150664, 21.737694, 19.474155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.116518, 21.897835, 19.298689>,  <11.059607, 22.164738, 19.006243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.116518, 21.897835, 19.298689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365166, -0.651143, -0.665332,
		0.920006, 0.361640, 0.151016,
		0.142278, -0.667255, 0.731114,
		11.159202, 21.697659, 19.518023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.535003, 21.787369, 18.779305>,  <11.059607, 22.164738, 19.006243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.535003, 21.787369, 18.779305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.378264, 21.535896, 19.047997>,  <11.284222, 21.385014, 19.209211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.378264, 21.535896, 19.047997>,  <11.535003, 21.787369, 18.779305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.378264, 21.535896, 19.047997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109211, -0.756737, -0.644532,
		0.913526, -0.179196, 0.365182,
		-0.391845, -0.628679, 0.671729,
		11.260711, 21.347292, 19.249516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.840412, 21.107172, 18.637199>,  <11.535003, 21.787369, 18.779305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.840412, 21.107172, 18.637199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.502691, 21.024256, 18.834860>,  <11.300059, 20.974506, 18.953457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.502691, 21.024256, 18.834860>,  <11.840412, 21.107172, 18.637199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.502691, 21.024256, 18.834860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133898, -0.811292, -0.569102,
		0.518871, -0.546659, 0.657219,
		-0.844301, -0.207290, 0.494152,
		11.249401, 20.962069, 18.983105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.401461, 20.813593, 18.853371>,  <11.840412, 21.107172, 18.637199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.401461, 20.813593, 18.853371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.715679, 20.899799, 18.621347>,  <12.904210, 20.951523, 18.482134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.715679, 20.899799, 18.621347>,  <12.401461, 20.813593, 18.853371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.715679, 20.899799, 18.621347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364865, 0.595786, 0.715481,
		0.499788, -0.773687, 0.389384,
		0.785548, 0.215516, -0.580058,
		12.951344, 20.964455, 18.447330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.091001, 20.677048, 19.187765>,  <12.401461, 20.813593, 18.853371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.091001, 20.677048, 19.187765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.121452, 20.977900, 18.925924>,  <13.139724, 21.158411, 18.768820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.121452, 20.977900, 18.925924>,  <13.091001, 20.677048, 19.187765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.121452, 20.977900, 18.925924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384852, 0.583471, 0.715157,
		0.919833, -0.306370, -0.245039,
		0.076129, 0.752129, -0.654603,
		13.144291, 21.203539, 18.729544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.835549, 20.977467, 19.208109>,  <13.091001, 20.677048, 19.187765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.835549, 20.977467, 19.208109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.574073, 21.247925, 19.072159>,  <13.417187, 21.410200, 18.990589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.574073, 21.247925, 19.072159>,  <13.835549, 20.977467, 19.208109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.574073, 21.247925, 19.072159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273144, 0.629652, 0.727276,
		0.705748, 0.382579, -0.596283,
		-0.653691, 0.676145, -0.339877,
		13.377966, 21.450768, 18.970196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.211678, 21.560804, 19.143814>,  <13.835549, 20.977467, 19.208109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.211678, 21.560804, 19.143814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.830024, 21.672050, 19.188141>,  <13.601031, 21.738798, 19.214737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.830024, 21.672050, 19.188141>,  <14.211678, 21.560804, 19.143814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.830024, 21.672050, 19.188141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264587, 0.610154, 0.746797,
		0.140080, 0.741865, -0.655754,
		-0.954134, 0.278116, 0.110817,
		13.543783, 21.755486, 19.221386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437471, 22.274271, 19.314274>,  <14.211678, 21.560804, 19.143814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.437471, 22.274271, 19.314274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.045635, 22.220129, 19.373714>,  <13.810534, 22.187643, 19.409378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.045635, 22.220129, 19.373714>,  <14.437471, 22.274271, 19.314274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045635, 22.220129, 19.373714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006801, 0.761188, 0.648495,
		-0.200891, 0.634249, -0.746573,
		-0.979590, -0.135355, 0.148602,
		13.751759, 22.179523, 19.418295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.192084, 22.924896, 19.313190>,  <14.437471, 22.274271, 19.314274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.192084, 22.924896, 19.313190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.926693, 22.713371, 19.524908>,  <13.767458, 22.586456, 19.651939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.926693, 22.713371, 19.524908>,  <14.192084, 22.924896, 19.313190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.926693, 22.713371, 19.524908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014173, 0.698418, 0.715550,
		-0.748060, 0.482254, -0.455891,
		-0.663479, -0.528813, 0.529294,
		13.727649, 22.554728, 19.683697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.725035, 23.453716, 19.580173>,  <14.192084, 22.924896, 19.313190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.725035, 23.453716, 19.580173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.693184, 23.131945, 19.815649>,  <13.674073, 22.938881, 19.956934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.693184, 23.131945, 19.815649>,  <13.725035, 23.453716, 19.580173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693184, 23.131945, 19.815649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006237, 0.590952, 0.806682,
		-0.996805, 0.060562, -0.052073,
		-0.079627, -0.804430, 0.588687,
		13.669295, 22.890615, 19.992254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.332317, 23.793009, 20.012424>,  <13.725035, 23.453716, 19.580173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.332317, 23.793009, 20.012424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.466806, 23.456808, 20.182369>,  <13.547500, 23.255087, 20.284336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.466806, 23.456808, 20.182369>,  <13.332317, 23.793009, 20.012424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.466806, 23.456808, 20.182369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061254, 0.469687, 0.880705,
		-0.939788, -0.270089, 0.209404,
		0.336223, -0.840503, 0.424863,
		13.567674, 23.204657, 20.309828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.980299, 23.755289, 20.602255>,  <13.332317, 23.793009, 20.012424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.980299, 23.755289, 20.602255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.309614, 23.532837, 20.647715>,  <13.507203, 23.399366, 20.674990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.309614, 23.532837, 20.647715>,  <12.980299, 23.755289, 20.602255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309614, 23.532837, 20.647715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194557, 0.464561, 0.863904,
		-0.533240, -0.689130, 0.490667,
		0.823287, -0.556131, 0.113648,
		13.556601, 23.365997, 20.681808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.957012, 23.594387, 21.317278>,  <12.980299, 23.755289, 20.602255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.957012, 23.594387, 21.317278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.339073, 23.545046, 21.209597>,  <13.568310, 23.515442, 21.144989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.339073, 23.545046, 21.209597>,  <12.957012, 23.594387, 21.317278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.339073, 23.545046, 21.209597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295910, 0.431488, 0.852206,
		0.011036, -0.893646, 0.448638,
		0.955152, -0.123352, -0.269201,
		13.625619, 23.508041, 21.128836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.284493, 23.245687, 21.892590>,  <12.957012, 23.594387, 21.317278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.284493, 23.245687, 21.892590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.577349, 23.432465, 21.694220>,  <13.753061, 23.544531, 21.575197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.577349, 23.432465, 21.694220>,  <13.284493, 23.245687, 21.892590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.577349, 23.432465, 21.694220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334243, 0.388103, 0.858870,
		0.593513, -0.794569, 0.128072,
		0.732137, 0.466943, -0.495924,
		13.796990, 23.572548, 21.545443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.860428, 23.035711, 22.288038>,  <13.284493, 23.245687, 21.892590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.860428, 23.035711, 22.288038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.959878, 23.364468, 22.083029>,  <14.019548, 23.561722, 21.960022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.959878, 23.364468, 22.083029>,  <13.860428, 23.035711, 22.288038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.959878, 23.364468, 22.083029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189967, 0.477489, 0.857856,
		0.949789, -0.310647, -0.037416,
		0.248625, 0.821890, -0.512526,
		14.034466, 23.611034, 21.929272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.452618, 23.284260, 22.576483>,  <13.860428, 23.035711, 22.288038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.452618, 23.284260, 22.576483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.368351, 23.612324, 22.363707>,  <14.317791, 23.809162, 22.236042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.368351, 23.612324, 22.363707>,  <14.452618, 23.284260, 22.576483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.368351, 23.612324, 22.363707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230059, 0.570463, 0.788445,
		0.950101, 0.043723, -0.308863,
		-0.210668, 0.820159, -0.531938,
		14.305151, 23.858372, 22.204124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.052239, 23.750362, 22.700180>,  <14.452618, 23.284260, 22.576483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.052239, 23.750362, 22.700180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.725654, 23.946115, 22.577614>,  <14.529702, 24.063566, 22.504074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.725654, 23.946115, 22.577614>,  <15.052239, 23.750362, 22.700180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.725654, 23.946115, 22.577614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091659, 0.633811, 0.768038,
		0.570073, 0.598990, -0.562341,
		-0.816465, 0.489381, -0.306416,
		14.480714, 24.092930, 22.485689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687310, 23.975195, 22.620350>,  <15.052239, 23.750362, 22.700180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.687310, 23.975195, 22.620350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.977259, 23.860735, 22.871006>,  <16.151228, 23.792059, 23.021400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.977259, 23.860735, 22.871006>,  <15.687310, 23.975195, 22.620350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.977259, 23.860735, 22.871006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258497, -0.730193, -0.632453,
		0.638547, 0.620431, -0.455326,
		0.724870, -0.286151, 0.626642,
		16.194719, 23.774889, 23.058998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308189, 24.105728, 22.394032>,  <15.687310, 23.975195, 22.620350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.308189, 24.105728, 22.394032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.396511, 23.806162, 22.643951>,  <16.449505, 23.626423, 22.793903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.396511, 23.806162, 22.643951>,  <16.308189, 24.105728, 22.394032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396511, 23.806162, 22.643951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550748, -0.432958, -0.713599,
		0.804936, 0.501672, 0.316865,
		0.220804, -0.748915, 0.624798,
		16.462751, 23.581488, 22.831390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.956957, 23.921202, 22.250923>,  <16.308189, 24.105728, 22.394032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.956957, 23.921202, 22.250923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.848967, 23.601944, 22.466360>,  <16.784172, 23.410389, 22.595621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.848967, 23.601944, 22.466360>,  <16.956957, 23.921202, 22.250923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.848967, 23.601944, 22.466360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426078, -0.600643, -0.676525,
		0.863465, 0.046837, 0.502230,
		-0.269975, -0.798144, 0.538590,
		16.767975, 23.362501, 22.627937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.531181, 23.565733, 22.283346>,  <16.956957, 23.921202, 22.250923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.531181, 23.565733, 22.283346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.230440, 23.318277, 22.374565>,  <17.049995, 23.169804, 22.429296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.230440, 23.318277, 22.374565>,  <17.531181, 23.565733, 22.283346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.230440, 23.318277, 22.374565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246689, -0.584697, -0.772835,
		0.611444, -0.524801, 0.592217,
		-0.751852, -0.618639, 0.228046,
		17.004885, 23.132687, 22.442980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.804245, 22.867346, 22.303820>,  <17.531181, 23.565733, 22.283346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.804245, 22.867346, 22.303820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.415113, 22.790516, 22.252108>,  <17.181635, 22.744417, 22.221081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.415113, 22.790516, 22.252108>,  <17.804245, 22.867346, 22.303820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415113, 22.790516, 22.252108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224917, -0.651514, -0.724528,
		0.054937, -0.733918, 0.677012,
		-0.972828, -0.192076, -0.129279,
		17.123264, 22.732893, 22.213324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.657520, 22.062641, 22.397356>,  <17.804245, 22.867346, 22.303820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.657520, 22.062641, 22.397356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.383869, 22.225100, 22.155029>,  <17.219679, 22.322575, 22.009634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.383869, 22.225100, 22.155029>,  <17.657520, 22.062641, 22.397356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.383869, 22.225100, 22.155029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155455, -0.730329, -0.665171,
		-0.712599, -0.549242, 0.436505,
		-0.684132, 0.406143, -0.605814,
		17.178631, 22.346943, 21.973284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.538975, 21.501202, 21.995869>,  <17.657520, 22.062641, 22.397356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.538975, 21.501202, 21.995869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.344128, 21.800344, 21.815456>,  <17.227219, 21.979830, 21.707209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.344128, 21.800344, 21.815456>,  <17.538975, 21.501202, 21.995869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.344128, 21.800344, 21.815456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048709, -0.538905, -0.840957,
		-0.871977, -0.387676, 0.298938,
		-0.487118, 0.747856, -0.451029,
		17.197992, 22.024702, 21.680147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.948753, 21.166189, 21.646900>,  <17.538975, 21.501202, 21.995869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.948753, 21.166189, 21.646900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.983936, 21.525314, 21.474298>,  <17.005047, 21.740789, 21.370737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.983936, 21.525314, 21.474298>,  <16.948753, 21.166189, 21.646900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.983936, 21.525314, 21.474298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101675, -0.422830, -0.900487,
		-0.990921, 0.123077, 0.054094,
		0.087957, 0.897812, -0.431506,
		17.010323, 21.794659, 21.344847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369202, 21.350008, 21.157127>,  <16.948753, 21.166189, 21.646900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.369202, 21.350008, 21.157127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.681709, 21.560564, 21.022943>,  <16.869213, 21.686897, 20.942434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.681709, 21.560564, 21.022943>,  <16.369202, 21.350008, 21.157127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.681709, 21.560564, 21.022943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138652, -0.377649, -0.915509,
		-0.608599, 0.761771, -0.222060,
		0.781270, 0.526389, -0.335458,
		16.916090, 21.718481, 20.922306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.165644, 21.726168, 20.459673>,  <16.369202, 21.350008, 21.157127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.165644, 21.726168, 20.459673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.564974, 21.704222, 20.466961>,  <16.804573, 21.691053, 20.471334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.564974, 21.704222, 20.466961>,  <16.165644, 21.726168, 20.459673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.564974, 21.704222, 20.466961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000456, -0.307691, -0.951486,
		0.057812, 0.949903, -0.307151,
		0.998327, -0.054867, 0.018221,
		16.864471, 21.687761, 20.472427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379585, 21.925505, 19.776890>,  <16.165644, 21.726168, 20.459673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.379585, 21.925505, 19.776890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.697460, 21.730274, 19.921251>,  <16.888186, 21.613136, 20.007868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.697460, 21.730274, 19.921251>,  <16.379585, 21.925505, 19.776890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697460, 21.730274, 19.921251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116710, -0.460602, -0.879900,
		0.595692, 0.741367, -0.309071,
		0.794688, -0.488078, 0.360902,
		16.935867, 21.583851, 20.029522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826035, 22.011427, 19.229538>,  <16.379585, 21.925505, 19.776890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826035, 22.011427, 19.229538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.986528, 21.716772, 19.447300>,  <17.082825, 21.539980, 19.577957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.986528, 21.716772, 19.447300>,  <16.826035, 22.011427, 19.229538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.986528, 21.716772, 19.447300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119104, -0.547340, -0.828392,
		0.908198, 0.397221, -0.131876,
		0.401235, -0.736637, 0.544404,
		17.106899, 21.495781, 19.610620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.450352, 21.789646, 18.947636>,  <16.826035, 22.011427, 19.229538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.450352, 21.789646, 18.947636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.308659, 21.487137, 19.167662>,  <17.223642, 21.305632, 19.299677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.308659, 21.487137, 19.167662>,  <17.450352, 21.789646, 18.947636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.308659, 21.487137, 19.167662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078538, -0.610188, -0.788354,
		0.931853, -0.236060, 0.275545,
		-0.354233, -0.756271, 0.550066,
		17.202389, 21.260256, 19.332682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857880, 21.302851, 18.767784>,  <17.450352, 21.789646, 18.947636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.857880, 21.302851, 18.767784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.542955, 21.118753, 18.931890>,  <17.354000, 21.008295, 19.030354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.542955, 21.118753, 18.931890>,  <17.857880, 21.302851, 18.767784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.542955, 21.118753, 18.931890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014549, -0.679097, -0.733904,
		0.616385, -0.571841, 0.541357,
		-0.787310, -0.460244, 0.410266,
		17.306763, 20.980680, 19.054970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<11.078791, 4.678271, 18.023911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.802711, 4.958065, 17.949781>,  <10.637064, 5.125942, 17.905304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.802711, 4.958065, 17.949781>,  <11.078791, 4.678271, 18.023911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.802711, 4.958065, 17.949781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013901, -0.243244, -0.969866,
		-0.723486, -0.671976, 0.158163,
		-0.690199, 0.699485, -0.185324,
		10.595652, 5.167911, 17.894184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.624963, 4.326097, 17.480997>,  <11.078791, 4.678271, 18.023911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.624963, 4.326097, 17.480997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.606923, 4.725518, 17.469303>,  <10.596100, 4.965171, 17.462286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.606923, 4.725518, 17.469303>,  <10.624963, 4.326097, 17.480997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.606923, 4.725518, 17.469303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052598, -0.026852, -0.998255,
		-0.997597, -0.046558, -0.051311,
		-0.045098, 0.998555, -0.029237,
		10.593393, 5.025084, 17.460531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.052120, 4.544356, 17.110079>,  <10.624963, 4.326097, 17.480997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.052120, 4.544356, 17.110079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.343696, 4.817792, 17.095367>,  <10.518641, 4.981853, 17.086540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.343696, 4.817792, 17.095367>,  <10.052120, 4.544356, 17.110079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.343696, 4.817792, 17.095367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027203, -0.024758, -0.999323,
		-0.684037, 0.729446, 0.000549,
		0.728939, 0.683589, -0.036779,
		10.562378, 5.022869, 17.084333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.813511, 4.985932, 16.583485>,  <10.052120, 4.544356, 17.110079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.813511, 4.985932, 16.583485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.206058, 5.044332, 16.633448>,  <10.441586, 5.079372, 16.663425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.206058, 5.044332, 16.633448>,  <9.813511, 4.985932, 16.583485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.206058, 5.044332, 16.633448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059173, 0.388840, -0.919403,
		-0.182801, 0.909664, 0.372955,
		0.981368, 0.145999, 0.124907,
		10.500468, 5.088132, 16.670919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.980117, 5.492834, 16.206095>,  <9.813511, 4.985932, 16.583485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.980117, 5.492834, 16.206095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.361838, 5.423702, 16.303610>,  <10.590872, 5.382224, 16.362120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.361838, 5.423702, 16.303610>,  <9.980117, 5.492834, 16.206095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.361838, 5.423702, 16.303610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298662, 0.523843, -0.797740,
		0.010165, 0.834098, 0.551523,
		0.954305, -0.172828, 0.243788,
		10.648129, 5.371854, 16.376747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.362858, 6.032468, 16.085772>,  <9.980117, 5.492834, 16.206095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.362858, 6.032468, 16.085772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.644598, 5.754202, 16.029284>,  <10.813642, 5.587242, 15.995391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.644598, 5.754202, 16.029284>,  <10.362858, 6.032468, 16.085772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.644598, 5.754202, 16.029284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398561, 0.552188, -0.732282,
		0.587402, 0.459498, 0.666198,
		0.704349, -0.695665, -0.141218,
		10.855903, 5.545503, 15.986918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.229171, 6.609282, 16.497246>,  <10.362858, 6.032468, 16.085772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.229171, 6.609282, 16.497246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.459593, 6.877718, 16.683920>,  <10.597846, 7.038780, 16.795925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.459593, 6.877718, 16.683920>,  <10.229171, 6.609282, 16.497246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.459593, 6.877718, 16.683920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611581, 0.732654, -0.298642,
		-0.542336, -0.113383, 0.832476,
		0.576055, 0.671091, 0.466688,
		10.632409, 7.079046, 16.823927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.769537, 7.021719, 16.969650>,  <10.229171, 6.609282, 16.497246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.769537, 7.021719, 16.969650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.103055, 7.194632, 16.832294>,  <10.303166, 7.298379, 16.749882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.103055, 7.194632, 16.832294>,  <9.769537, 7.021719, 16.969650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.103055, 7.194632, 16.832294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544464, 0.746786, -0.381928,
		0.091338, 0.505414, 0.858029,
		0.833796, 0.432282, -0.343390,
		10.353194, 7.324317, 16.729277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.619763, 7.669873, 17.076815>,  <9.769537, 7.021719, 16.969650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.619763, 7.669873, 17.076815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.875655, 7.643383, 16.770517>,  <10.029190, 7.627488, 16.586739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.875655, 7.643383, 16.770517>,  <9.619763, 7.669873, 17.076815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.875655, 7.643383, 16.770517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617707, 0.548550, -0.563499,
		0.457366, 0.833491, 0.310015,
		0.639730, -0.066227, -0.765741,
		10.067575, 7.623515, 16.540794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.751664, 8.352868, 16.869862>,  <9.619763, 7.669873, 17.076815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.751664, 8.352868, 16.869862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.808887, 8.103915, 16.562050>,  <9.843220, 7.954543, 16.377363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.808887, 8.103915, 16.562050>,  <9.751664, 8.352868, 16.869862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.808887, 8.103915, 16.562050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625383, 0.545789, -0.557684,
		0.767093, 0.561029, -0.311150,
		0.143055, -0.622383, -0.769529,
		9.851803, 7.917201, 16.331192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.956328, 8.711118, 16.193865>,  <9.751664, 8.352868, 16.869862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.956328, 8.711118, 16.193865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.800238, 8.355330, 16.098730>,  <9.706583, 8.141857, 16.041649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.800238, 8.355330, 16.098730>,  <9.956328, 8.711118, 16.193865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.800238, 8.355330, 16.098730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780737, 0.456590, -0.426587,
		0.488031, 0.019224, -0.872615,
		-0.390226, -0.889470, -0.237839,
		9.683169, 8.088489, 16.027378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.796703, 8.753454, 15.531060>,  <9.956328, 8.711118, 16.193865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.796703, 8.753454, 15.531060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.551247, 8.487875, 15.701996>,  <9.403973, 8.328527, 15.804557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.551247, 8.487875, 15.701996>,  <9.796703, 8.753454, 15.531060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.551247, 8.487875, 15.701996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789370, 0.528482, -0.312414,
		-0.018414, -0.529038, -0.848398,
		-0.613642, -0.663947, 0.427338,
		9.367154, 8.288691, 15.830197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.308891, 8.622855, 14.997103>,  <9.796703, 8.753454, 15.531060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.308891, 8.622855, 14.997103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.144045, 8.509915, 15.343615>,  <9.045137, 8.442151, 15.551521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.144045, 8.509915, 15.343615>,  <9.308891, 8.622855, 14.997103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.144045, 8.509915, 15.343615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850541, 0.460143, -0.254653,
		-0.326711, -0.841753, -0.429782,
		-0.412115, -0.282349, 0.866279,
		9.020411, 8.425211, 15.603498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.645380, 8.348545, 14.803538>,  <9.308891, 8.622855, 14.997103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.645380, 8.348545, 14.803538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.602555, 8.429616, 15.192888>,  <8.576860, 8.478258, 15.426498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.602555, 8.429616, 15.192888>,  <8.645380, 8.348545, 14.803538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.602555, 8.429616, 15.192888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821648, 0.533227, -0.201403,
		-0.559850, -0.821334, 0.109441,
		-0.107062, 0.202678, 0.973375,
		8.570436, 8.490419, 15.484900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.003462, 8.162045, 14.992272>,  <8.645380, 8.348545, 14.803538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.003462, 8.162045, 14.992272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.077737, 8.417951, 15.290594>,  <8.122302, 8.571493, 15.469587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.077737, 8.417951, 15.290594>,  <8.003462, 8.162045, 14.992272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.077737, 8.417951, 15.290594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952923, 0.302404, -0.022150,
		-0.239705, -0.706581, 0.665797,
		0.185689, 0.639762, 0.745804,
		8.133444, 8.609879, 15.514336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.419768, 8.159492, 15.477305>,  <8.003462, 8.162045, 14.992272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.419768, 8.159492, 15.477305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.622246, 8.493070, 15.565216>,  <7.743733, 8.693216, 15.617963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.622246, 8.493070, 15.565216>,  <7.419768, 8.159492, 15.477305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.622246, 8.493070, 15.565216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841704, 0.533244, -0.084764,
		-0.187884, -0.142080, 0.971861,
		0.506196, 0.833944, 0.219777,
		7.774105, 8.743253, 15.631149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.936636, 8.511954, 15.970715>,  <7.419768, 8.159492, 15.477305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.936636, 8.511954, 15.970715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.199806, 8.773283, 15.820886>,  <7.357708, 8.930080, 15.730989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.199806, 8.773283, 15.820886>,  <6.936636, 8.511954, 15.970715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.199806, 8.773283, 15.820886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752303, 0.547554, -0.366367,
		-0.034257, 0.522834, 0.851746,
		0.657926, 0.653322, -0.374572,
		7.397184, 8.969279, 15.708514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.844201, 9.118421, 16.376287>,  <6.936636, 8.511954, 15.970715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.844201, 9.118421, 16.376287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.017851, 9.266895, 16.047956>,  <7.122041, 9.355980, 15.850958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.017851, 9.266895, 16.047956>,  <6.844201, 9.118421, 16.376287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.017851, 9.266895, 16.047956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714010, 0.697360, -0.062277,
		0.549295, 0.613115, 0.567773,
		0.434125, 0.371187, -0.820826,
		7.148088, 9.378251, 15.801708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.890439, 9.859929, 16.441698>,  <6.844201, 9.118421, 16.376287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.890439, 9.859929, 16.441698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.944811, 9.823709, 16.047070>,  <6.977435, 9.801977, 15.810292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.944811, 9.823709, 16.047070>,  <6.890439, 9.859929, 16.441698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.944811, 9.823709, 16.047070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515968, 0.843634, -0.148521,
		0.845754, 0.529227, 0.067955,
		0.135930, -0.090550, -0.986572,
		6.985590, 9.796544, 15.751098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.990311, 10.569800, 16.194595>,  <6.890439, 9.859929, 16.441698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.990311, 10.569800, 16.194595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.904266, 10.351003, 15.870984>,  <6.852639, 10.219724, 15.676818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.904266, 10.351003, 15.870984>,  <6.990311, 10.569800, 16.194595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.904266, 10.351003, 15.870984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534392, 0.759318, -0.371296,
		0.817405, 0.352467, -0.455648,
		-0.215112, -0.546995, -0.809026,
		6.839732, 10.186904, 15.628276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.113511, 10.936379, 15.639522>,  <6.990311, 10.569800, 16.194595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.113511, 10.936379, 15.639522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.838435, 10.688887, 15.487598>,  <6.673389, 10.540391, 15.396444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.838435, 10.688887, 15.487598>,  <7.113511, 10.936379, 15.639522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.838435, 10.688887, 15.487598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431966, 0.769183, -0.470918,
		0.583513, -0.159782, -0.796230,
		-0.687691, -0.618731, -0.379808,
		6.632128, 10.503267, 15.373656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.995110, 11.224007, 14.948472>,  <7.113511, 10.936379, 15.639522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.995110, 11.224007, 14.948472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.704835, 10.958762, 15.021864>,  <6.530671, 10.799616, 15.065899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.704835, 10.958762, 15.021864>,  <6.995110, 11.224007, 14.948472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.704835, 10.958762, 15.021864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633141, 0.539241, -0.555295,
		0.269282, -0.519138, -0.811161,
		-0.725686, -0.663110, 0.183480,
		6.487130, 10.759830, 15.076908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.793827, 11.144815, 14.350101>,  <6.995110, 11.224007, 14.948472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.793827, 11.144815, 14.350101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.513844, 11.029894, 14.611640>,  <6.345854, 10.960941, 14.768563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.513844, 11.029894, 14.611640>,  <6.793827, 11.144815, 14.350101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.513844, 11.029894, 14.611640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687629, 0.518444, -0.508313,
		-0.192944, -0.805403, -0.560446,
		-0.699957, -0.287303, 0.653849,
		6.303857, 10.943703, 14.807795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.208797, 11.179540, 13.934200>,  <6.793827, 11.144815, 14.350101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.208797, 11.179540, 13.934200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.060646, 11.209271, 14.304561>,  <5.971755, 11.227110, 14.526777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.060646, 11.209271, 14.304561>,  <6.208797, 11.179540, 13.934200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.060646, 11.209271, 14.304561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571332, 0.767710, -0.290174,
		-0.732393, -0.636472, -0.241877,
		-0.370379, 0.074329, 0.925902,
		5.949533, 11.231570, 14.582332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.635921, 11.507369, 13.792114>,  <6.208797, 11.179540, 13.934200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.635921, 11.507369, 13.792114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.694098, 11.547816, 14.185788>,  <5.729004, 11.572084, 14.421992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.694098, 11.547816, 14.185788>,  <5.635921, 11.507369, 13.792114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.694098, 11.547816, 14.185788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608016, 0.793882, 0.008285,
		-0.780489, -0.599605, 0.176945,
		0.145441, 0.101119, 0.984186,
		5.737731, 11.578152, 14.481044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.970551, 11.380692, 14.055524>,  <5.635921, 11.507369, 13.792114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.970551, 11.380692, 14.055524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.200268, 11.598992, 14.299603>,  <5.338098, 11.729973, 14.446051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.200268, 11.598992, 14.299603>,  <4.970551, 11.380692, 14.055524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.200268, 11.598992, 14.299603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693154, 0.720747, 0.007743,
		-0.435573, -0.427409, 0.792211,
		0.574293, 0.545752, 0.610199,
		5.372556, 11.762718, 14.482663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.453651, 11.701939, 14.394238>,  <4.970551, 11.380692, 14.055524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.453651, 11.701939, 14.394238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.778462, 11.919926, 14.477782>,  <4.973348, 12.050718, 14.527909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.778462, 11.919926, 14.477782>,  <4.453651, 11.701939, 14.394238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.778462, 11.919926, 14.477782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540100, 0.837308, -0.084895,
		-0.221146, -0.043869, 0.974253,
		0.812026, 0.544969, 0.208861,
		5.022070, 12.083416, 14.540441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.426848, 12.120925, 14.928794>,  <4.453651, 11.701939, 14.394238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.426848, 12.120925, 14.928794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.726076, 12.291175, 14.725134>,  <4.905613, 12.393325, 14.602938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.726076, 12.291175, 14.725134>,  <4.426848, 12.120925, 14.928794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.726076, 12.291175, 14.725134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509097, 0.860224, -0.028888,
		0.425689, 0.280817, 0.860192,
		0.748070, 0.425624, -0.509151,
		4.950497, 12.418862, 14.572389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.698104, 12.583963, 15.340914>,  <4.426848, 12.120925, 14.928794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.698104, 12.583963, 15.340914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.813513, 12.694188, 14.974129>,  <4.882758, 12.760323, 14.754058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.813513, 12.694188, 14.974129>,  <4.698104, 12.583963, 15.340914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.813513, 12.694188, 14.974129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305558, 0.934113, 0.184572,
		0.907408, 0.226932, 0.353711,
		0.288521, 0.275561, -0.916963,
		4.900069, 12.776856, 14.699039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.989028, 13.253087, 15.408143>,  <4.698104, 12.583963, 15.340914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.989028, 13.253087, 15.408143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.901002, 13.233678, 15.018432>,  <4.848186, 13.222033, 14.784605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.901002, 13.233678, 15.018432>,  <4.989028, 13.253087, 15.408143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.901002, 13.233678, 15.018432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172053, 0.985035, -0.010195,
		0.960192, 0.165384, -0.225122,
		-0.220067, -0.048522, -0.974277,
		4.834982, 13.219121, 14.726149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.386775, 13.732096, 15.130506>,  <4.989028, 13.253087, 15.408143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.386775, 13.732096, 15.130506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.074632, 13.658804, 14.891351>,  <4.887346, 13.614829, 14.747858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.074632, 13.658804, 14.891351>,  <5.386775, 13.732096, 15.130506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.074632, 13.658804, 14.891351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288286, 0.953857, 0.083950,
		0.554917, 0.237874, -0.797172,
		-0.780358, -0.183229, -0.597887,
		4.840525, 13.603835, 14.711985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.988491, 14.113717, 15.369184>,  <5.386775, 13.732096, 15.130506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.988491, 14.113717, 15.369184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.841455, 14.217431, 15.726428>,  <5.753234, 14.279659, 15.940775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.841455, 14.217431, 15.726428>,  <5.988491, 14.113717, 15.369184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.841455, 14.217431, 15.726428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543344, -0.719517, 0.432518,
		0.754755, 0.644257, 0.123606,
		-0.367589, 0.259285, 0.893112,
		5.731179, 14.295217, 15.994362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.555060, 14.050200, 15.651876>,  <5.988491, 14.113717, 15.369184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.555060, 14.050200, 15.651876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.289248, 14.051639, 15.950777>,  <6.129761, 14.052502, 16.130117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.289248, 14.051639, 15.950777>,  <6.555060, 14.050200, 15.651876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.289248, 14.051639, 15.950777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636889, -0.520326, 0.568888,
		0.390859, 0.853960, 0.343483,
		-0.664531, 0.003594, 0.747252,
		6.089889, 14.052717, 16.174953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.005028, 14.123854, 16.158407>,  <6.555060, 14.050200, 15.651876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.005028, 14.123854, 16.158407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.673460, 14.002719, 16.346525>,  <6.474518, 13.930037, 16.459396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.673460, 14.002719, 16.346525>,  <7.005028, 14.123854, 16.158407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.673460, 14.002719, 16.346525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551181, -0.585503, 0.594463,
		0.095334, 0.751981, 0.652254,
		-0.828922, -0.302838, 0.470296,
		6.424783, 13.911868, 16.487614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.162390, 14.197961, 16.878586>,  <7.005028, 14.123854, 16.158407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.162390, 14.197961, 16.878586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.866201, 13.935931, 16.818483>,  <6.688488, 13.778713, 16.782421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.866201, 13.935931, 16.818483>,  <7.162390, 14.197961, 16.878586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.866201, 13.935931, 16.818483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487503, -0.677411, 0.550868,
		-0.462646, 0.334651, 0.820955,
		-0.740472, -0.655075, -0.150258,
		6.644060, 13.739408, 16.773405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.046295, 13.899517, 17.533848>,  <7.162390, 14.197961, 16.878586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.046295, 13.899517, 17.533848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.901771, 13.651068, 17.255665>,  <6.815057, 13.501998, 17.088755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.901771, 13.651068, 17.255665>,  <7.046295, 13.899517, 17.533848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.901771, 13.651068, 17.255665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394693, -0.777605, 0.489436,
		-0.844792, -0.097654, 0.526109,
		-0.361310, -0.621123, -0.695458,
		6.793378, 13.464731, 17.047028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.838997, 13.223820, 17.936550>,  <7.046295, 13.899517, 17.533848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.838997, 13.223820, 17.936550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.900520, 13.141795, 17.549915>,  <6.937434, 13.092581, 17.317934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.900520, 13.141795, 17.549915>,  <6.838997, 13.223820, 17.936550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.900520, 13.141795, 17.549915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384866, -0.888541, 0.249745,
		-0.910067, -0.410420, -0.057743,
		0.153808, -0.205061, -0.966588,
		6.946663, 13.080276, 17.259939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.477026, 12.659695, 17.957365>,  <6.838997, 13.223820, 17.936550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.477026, 12.659695, 17.957365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.728404, 12.661798, 17.646231>,  <6.879230, 12.663061, 17.459549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.728404, 12.661798, 17.646231>,  <6.477026, 12.659695, 17.957365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.728404, 12.661798, 17.646231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435777, -0.830700, 0.346463,
		-0.644326, -0.556696, -0.524341,
		0.628445, 0.005260, -0.777836,
		6.916937, 12.663377, 17.412880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.677555, 11.962854, 17.896322>,  <6.477026, 12.659695, 17.957365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.677555, 11.962854, 17.896322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.953255, 12.163247, 17.686962>,  <7.118676, 12.283483, 17.561346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.953255, 12.163247, 17.686962>,  <6.677555, 11.962854, 17.896322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.953255, 12.163247, 17.686962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662004, -0.729031, 0.173970,
		-0.294421, -0.466403, -0.834137,
		0.689251, 0.500981, -0.523402,
		7.160031, 12.313541, 17.529942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.085059, 11.402844, 17.652193>,  <6.677555, 11.962854, 17.896322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.085059, 11.402844, 17.652193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.316408, 11.727322, 17.617664>,  <7.455217, 11.922008, 17.596947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.316408, 11.727322, 17.617664>,  <7.085059, 11.402844, 17.652193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.316408, 11.727322, 17.617664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801778, -0.584774, -0.123248,
		-0.150456, 0.002073, -0.988614,
		0.578372, 0.811193, -0.086321,
		7.489920, 11.970679, 17.591768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.519931, 11.361314, 17.042093>,  <7.085059, 11.402844, 17.652193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.519931, 11.361314, 17.042093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.686625, 11.623680, 17.293840>,  <7.786642, 11.781100, 17.444889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.686625, 11.623680, 17.293840>,  <7.519931, 11.361314, 17.042093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.686625, 11.623680, 17.293840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877242, -0.471668, -0.089301,
		0.238280, 0.589325, -0.771958,
		0.416735, 0.655915, 0.629370,
		7.811646, 11.820455, 17.482651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.299218, 11.431868, 16.859589>,  <7.519931, 11.361314, 17.042093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.299218, 11.431868, 16.859589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.289532, 11.579330, 17.231289>,  <8.283720, 11.667809, 17.454309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.289532, 11.579330, 17.231289>,  <8.299218, 11.431868, 16.859589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.289532, 11.579330, 17.231289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840534, -0.495713, 0.218566,
		0.541217, 0.786359, -0.297866,
		-0.024215, 0.368658, 0.929250,
		8.282268, 11.689928, 17.510063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.907184, 11.726686, 16.961033>,  <8.299218, 11.431868, 16.859589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.907184, 11.726686, 16.961033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.775728, 11.674645, 17.335213>,  <8.696855, 11.643421, 17.559721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.775728, 11.674645, 17.335213>,  <8.907184, 11.726686, 16.961033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.775728, 11.674645, 17.335213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885572, -0.386706, 0.257334,
		0.328266, 0.912980, 0.242300,
		-0.328639, -0.130100, 0.935452,
		8.677136, 11.635615, 17.615849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.530190, 11.761738, 17.362656>,  <8.907184, 11.726686, 16.961033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.530190, 11.761738, 17.362656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.260432, 11.604362, 17.612581>,  <9.098577, 11.509935, 17.762537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.260432, 11.604362, 17.612581>,  <9.530190, 11.761738, 17.362656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.260432, 11.604362, 17.612581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729986, -0.482433, 0.484126,
		0.110957, 0.782600, 0.612557,
		-0.674395, -0.393441, 0.624816,
		9.058114, 11.486329, 17.800026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.795643, 11.791241, 18.168310>,  <9.530190, 11.761738, 17.362656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.795643, 11.791241, 18.168310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.523725, 11.499511, 18.137419>,  <9.360574, 11.324472, 18.118885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.523725, 11.499511, 18.137419>,  <9.795643, 11.791241, 18.168310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.523725, 11.499511, 18.137419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622610, -0.629544, 0.464792,
		-0.387602, 0.267881, 0.882046,
		-0.679796, -0.729324, -0.077227,
		9.319786, 11.280713, 18.114250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.658288, 11.379785, 18.903667>,  <9.795643, 11.791241, 18.168310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.658288, 11.379785, 18.903667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.552543, 11.128585, 18.610893>,  <9.489096, 10.977865, 18.435228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.552543, 11.128585, 18.610893>,  <9.658288, 11.379785, 18.903667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.552543, 11.128585, 18.610893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549726, -0.721696, 0.420662,
		-0.792410, -0.291155, 0.536018,
		-0.264365, -0.628000, -0.731934,
		9.473233, 10.940185, 18.391314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.800446, 10.722239, 19.228626>,  <9.658288, 11.379785, 18.903667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.800446, 10.722239, 19.228626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.717594, 10.618995, 18.851166>,  <9.667884, 10.557048, 18.624689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.717594, 10.618995, 18.851166>,  <9.800446, 10.722239, 19.228626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.717594, 10.618995, 18.851166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491023, -0.861703, 0.127921,
		-0.846165, -0.436858, 0.305222,
		-0.207128, -0.258113, -0.943650,
		9.655456, 10.541561, 18.568071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.560610, 9.945176, 19.214134>,  <9.800446, 10.722239, 19.228626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.560610, 9.945176, 19.214134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.700617, 10.092992, 18.869825>,  <9.784621, 10.181681, 18.663240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.700617, 10.092992, 18.869825>,  <9.560610, 9.945176, 19.214134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.700617, 10.092992, 18.869825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659989, -0.749379, -0.053344,
		-0.664757, -0.549429, -0.506187,
		0.350017, 0.369539, -0.860773,
		9.805622, 10.203854, 18.611593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.678465, 9.299494, 18.868418>,  <9.560610, 9.945176, 19.214134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.678465, 9.299494, 18.868418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.891538, 9.575221, 18.672014>,  <10.019382, 9.740658, 18.554173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.891538, 9.575221, 18.672014>,  <9.678465, 9.299494, 18.868418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.891538, 9.575221, 18.672014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699882, -0.684992, -0.202366,
		-0.475831, -0.235851, -0.847325,
		0.532682, 0.689319, -0.491008,
		10.051342, 9.782017, 18.524712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.810112, 8.944271, 18.246124>,  <9.678465, 9.299494, 18.868418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.810112, 8.944271, 18.246124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.080295, 9.237977, 18.273302>,  <10.242404, 9.414200, 18.289610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.080295, 9.237977, 18.273302>,  <9.810112, 8.944271, 18.246124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.080295, 9.237977, 18.273302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704392, -0.615215, -0.354036,
		-0.218154, 0.286997, -0.932760,
		0.675456, 0.734264, 0.067947,
		10.282931, 9.458256, 18.293686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.212862, 8.926195, 17.609682>,  <9.810112, 8.944271, 18.246124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.212862, 8.926195, 17.609682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.444976, 9.110600, 17.878229>,  <10.584244, 9.221244, 18.039358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.444976, 9.110600, 17.878229>,  <10.212862, 8.926195, 17.609682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.444976, 9.110600, 17.878229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798642, -0.483570, -0.358234,
		0.159504, 0.744061, -0.648792,
		0.580284, 0.461013, 0.671370,
		10.619061, 9.248904, 18.079639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.844318, 9.133325, 17.259060>,  <10.212862, 8.926195, 17.609682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.844318, 9.133325, 17.259060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.948855, 9.136846, 17.645142>,  <11.011578, 9.138958, 17.876791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.948855, 9.136846, 17.645142>,  <10.844318, 9.133325, 17.259060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.948855, 9.136846, 17.645142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801029, -0.559911, -0.211783,
		0.538565, 0.828506, -0.153380,
		0.261343, 0.008803, 0.965206,
		11.027258, 9.139486, 17.934704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.448589, 22.348244, 24.815771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.115780, 22.189001, 24.970303>,  <15.916095, 22.093456, 25.063023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.115780, 22.189001, 24.970303>,  <16.448589, 22.348244, 24.815771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115780, 22.189001, 24.970303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276526, 0.306087, 0.910958,
		-0.480907, 0.864768, -0.144585,
		-0.832023, -0.398104, 0.386330,
		15.866173, 22.069571, 25.086201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.049150, 22.886295, 25.127127>,  <16.448589, 22.348244, 24.815771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.049150, 22.886295, 25.127127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.919803, 22.572206, 25.338354>,  <15.842194, 22.383753, 25.465092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.919803, 22.572206, 25.338354>,  <16.049150, 22.886295, 25.127127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919803, 22.572206, 25.338354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090216, 0.581093, 0.808821,
		-0.941962, 0.213908, -0.258748,
		-0.323370, -0.785222, 0.528070,
		15.822792, 22.336639, 25.496775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.479910, 23.143353, 25.389400>,  <16.049150, 22.886295, 25.127127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.479910, 23.143353, 25.389400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.581985, 22.834562, 25.622272>,  <15.643230, 22.649288, 25.761995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.581985, 22.834562, 25.622272>,  <15.479910, 23.143353, 25.389400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581985, 22.834562, 25.622272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124341, 0.570915, 0.811539,
		-0.958863, -0.279484, 0.049703,
		0.255188, -0.771974, 0.582181,
		15.658542, 22.602970, 25.796926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.945137, 23.074814, 25.842890>,  <15.479910, 23.143353, 25.389400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.945137, 23.074814, 25.842890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.260788, 22.877167, 25.988836>,  <15.450178, 22.758579, 26.076405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.260788, 22.877167, 25.988836>,  <14.945137, 23.074814, 25.842890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.260788, 22.877167, 25.988836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125053, 0.452336, 0.883037,
		-0.601365, -0.742456, 0.295159,
		0.789127, -0.494117, 0.364866,
		15.497526, 22.728931, 26.098295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688311, 22.736517, 26.466152>,  <14.945137, 23.074814, 25.842890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688311, 22.736517, 26.466152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.085184, 22.736675, 26.516066>,  <15.323308, 22.736771, 26.546013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.085184, 22.736675, 26.516066>,  <14.688311, 22.736517, 26.466152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.085184, 22.736675, 26.516066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112977, 0.427457, 0.896949,
		-0.052983, -0.904036, 0.424161,
		0.992184, 0.000397, 0.124783,
		15.382839, 22.736795, 26.553501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.779952, 22.576839, 27.204632>,  <14.688311, 22.736517, 26.466152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.779952, 22.576839, 27.204632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.114443, 22.755487, 27.077349>,  <15.315138, 22.862677, 27.000978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.114443, 22.755487, 27.077349>,  <14.779952, 22.576839, 27.204632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.114443, 22.755487, 27.077349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068678, 0.490406, 0.868784,
		0.544070, -0.748353, 0.379416,
		0.836225, 0.446622, -0.318210,
		15.365311, 22.889473, 26.981886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245994, 22.519356, 27.722105>,  <14.779952, 22.576839, 27.204632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245994, 22.519356, 27.722105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.384244, 22.819368, 27.496542>,  <15.467195, 22.999376, 27.361204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.384244, 22.819368, 27.496542>,  <15.245994, 22.519356, 27.722105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.384244, 22.819368, 27.496542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172505, 0.539915, 0.823853,
		0.922380, -0.382022, 0.057224,
		0.345626, 0.750034, -0.563908,
		15.487932, 23.044378, 27.327370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885057, 22.776636, 28.011154>,  <15.245994, 22.519356, 27.722105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885057, 22.776636, 28.011154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.765789, 23.086937, 27.788694>,  <15.694228, 23.273117, 27.655218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.765789, 23.086937, 27.788694>,  <15.885057, 22.776636, 28.011154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.765789, 23.086937, 27.788694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099179, 0.604681, 0.790269,
		0.949346, 0.180477, -0.257237,
		-0.298171, 0.775751, -0.556152,
		15.676337, 23.319662, 27.621849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.515152, 23.263187, 27.885189>,  <15.885057, 22.776636, 28.011154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.515152, 23.263187, 27.885189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.166470, 23.451118, 27.829489>,  <15.957260, 23.563877, 27.796068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.166470, 23.451118, 27.829489>,  <16.515152, 23.263187, 27.885189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166470, 23.451118, 27.829489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213775, 0.620308, 0.754664,
		0.440940, 0.628077, -0.641164,
		-0.871706, 0.469827, -0.139252,
		15.904958, 23.592066, 27.787714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670679, 23.897261, 27.934025>,  <16.515152, 23.263187, 27.885189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670679, 23.897261, 27.934025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.271717, 23.909956, 27.959879>,  <16.032341, 23.917574, 27.975391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.271717, 23.909956, 27.959879>,  <16.670679, 23.897261, 27.934025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.271717, 23.909956, 27.959879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071890, 0.490017, 0.868743,
		-0.004099, 0.871135, -0.491027,
		-0.997404, 0.031739, 0.064634,
		15.972496, 23.919477, 27.979269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521524, 24.610449, 27.912216>,  <16.670679, 23.897261, 27.934025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.521524, 24.610449, 27.912216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.194429, 24.442995, 28.070227>,  <15.998172, 24.342522, 28.165033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.194429, 24.442995, 28.070227>,  <16.521524, 24.610449, 27.912216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.194429, 24.442995, 28.070227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023170, 0.661801, 0.749321,
		-0.575121, 0.621903, -0.531482,
		-0.817740, -0.418636, 0.395025,
		15.949107, 24.317404, 28.188734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011793, 25.134918, 28.111525>,  <16.521524, 24.610449, 27.912216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011793, 25.134918, 28.111525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.930411, 24.815523, 28.338160>,  <15.881582, 24.623886, 28.474140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.930411, 24.815523, 28.338160>,  <16.011793, 25.134918, 28.111525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.930411, 24.815523, 28.338160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281975, 0.506387, 0.814900,
		-0.937601, 0.325559, 0.122127,
		-0.203455, -0.798488, 0.566589,
		15.869375, 24.575977, 28.508137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.814955, 25.269342, 28.222097>,  <16.011793, 25.134918, 28.111525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.814955, 25.269342, 28.222097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.771225, 25.143719, 27.844862>,  <16.744987, 25.068344, 27.618521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.771225, 25.143719, 27.844862>,  <16.814955, 25.269342, 28.222097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.771225, 25.143719, 27.844862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343703, 0.902195, -0.260601,
		0.932693, 0.295651, -0.206578,
		-0.109327, -0.314062, -0.943087,
		16.738426, 25.049500, 27.561935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086515, 25.732466, 27.856623>,  <16.814955, 25.269342, 28.222097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086515, 25.732466, 27.856623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.804417, 25.528559, 27.659538>,  <16.635157, 25.406216, 27.541288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.804417, 25.528559, 27.659538>,  <17.086515, 25.732466, 27.856623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.804417, 25.528559, 27.659538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387315, 0.859132, -0.334484,
		0.593811, -0.045061, -0.803342,
		-0.705249, -0.509766, -0.492709,
		16.592842, 25.375629, 27.511726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104168, 26.424244, 27.832027>,  <17.086515, 25.732466, 27.856623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.104168, 26.424244, 27.832027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.093792, 26.760433, 27.615534>,  <17.087566, 26.962147, 27.485638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.093792, 26.760433, 27.615534>,  <17.104168, 26.424244, 27.832027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.093792, 26.760433, 27.615534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009994, -0.541606, -0.840573,
		-0.999614, -0.016395, 0.022448,
		-0.025939, 0.840472, -0.541233,
		17.086010, 27.012575, 27.453163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628096, 26.269115, 27.333826>,  <17.104168, 26.424244, 27.832027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628096, 26.269115, 27.333826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.875319, 26.557451, 27.208355>,  <17.023651, 26.730453, 27.133072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.875319, 26.557451, 27.208355>,  <16.628096, 26.269115, 27.333826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.875319, 26.557451, 27.208355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124507, -0.483736, -0.866313,
		-0.776212, 0.496374, -0.388726,
		0.618056, 0.720841, -0.313680,
		17.060736, 26.773705, 27.114250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325497, 26.485746, 26.780338>,  <16.628096, 26.269115, 27.333826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325497, 26.485746, 26.780338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.706690, 26.600565, 26.741503>,  <16.935406, 26.669456, 26.718203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.706690, 26.600565, 26.741503>,  <16.325497, 26.485746, 26.780338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706690, 26.600565, 26.741503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037182, -0.428747, -0.902659,
		-0.300731, 0.856610, -0.419262,
		0.952984, 0.287047, -0.097087,
		16.992584, 26.686680, 26.712378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.315655, 26.662306, 26.136209>,  <16.325497, 26.485746, 26.780338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.315655, 26.662306, 26.136209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.700235, 26.611807, 26.233925>,  <16.930983, 26.581507, 26.292555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.700235, 26.611807, 26.233925>,  <16.315655, 26.662306, 26.136209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.700235, 26.611807, 26.233925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151343, -0.498782, -0.853412,
		0.229588, 0.857484, -0.460446,
		0.961449, -0.126248, 0.244289,
		16.988670, 26.573933, 26.307211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712135, 26.918749, 25.554916>,  <16.315655, 26.662306, 26.136209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.712135, 26.918749, 25.554916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.945957, 26.667246, 25.760036>,  <17.086250, 26.516344, 25.883108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.945957, 26.667246, 25.760036>,  <16.712135, 26.918749, 25.554916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.945957, 26.667246, 25.760036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026520, -0.616885, -0.786606,
		0.810922, 0.473412, -0.343928,
		0.584553, -0.628756, 0.512800,
		17.121323, 26.478619, 25.913877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235395, 26.660076, 25.004786>,  <16.712135, 26.918749, 25.554916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.235395, 26.660076, 25.004786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.244740, 26.399534, 25.308151>,  <17.250345, 26.243210, 25.490171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.244740, 26.399534, 25.308151>,  <17.235395, 26.660076, 25.004786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.244740, 26.399534, 25.308151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224240, -0.735877, -0.638906,
		0.974254, 0.184991, 0.128871,
		0.023358, -0.651355, 0.758414,
		17.251747, 26.204128, 25.535675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.841782, 26.315125, 24.824003>,  <17.235395, 26.660076, 25.004786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.841782, 26.315125, 24.824003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.607145, 26.085711, 25.052727>,  <17.466364, 25.948061, 25.189960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.607145, 26.085711, 25.052727>,  <17.841782, 26.315125, 24.824003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607145, 26.085711, 25.052727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000685, -0.706391, -0.707822,
		0.809883, -0.414810, 0.414756,
		-0.586591, -0.573537, 0.571810,
		17.431168, 25.913649, 25.224270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.077379, 25.668802, 24.609829>,  <17.841782, 26.315125, 24.824003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.077379, 25.668802, 24.609829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.715916, 25.634529, 24.777666>,  <17.499037, 25.613966, 24.878368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.715916, 25.634529, 24.777666>,  <18.077379, 25.668802, 24.609829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715916, 25.634529, 24.777666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188071, -0.800843, -0.568576,
		0.384746, -0.592712, 0.707575,
		-0.903659, -0.085683, 0.419594,
		17.444818, 25.608824, 24.903543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.924217, 24.911474, 24.777515>,  <18.077379, 25.668802, 24.609829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.924217, 24.911474, 24.777515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.569559, 25.094873, 24.753386>,  <17.356764, 25.204912, 24.738907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.569559, 25.094873, 24.753386>,  <17.924217, 24.911474, 24.777515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.569559, 25.094873, 24.753386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305091, -0.677981, -0.668776,
		-0.347531, -0.574563, 0.741012,
		-0.886646, 0.458496, -0.060325,
		17.303566, 25.232422, 24.735289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397642, 24.334833, 24.781240>,  <17.924217, 24.911474, 24.777515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397642, 24.334833, 24.781240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.146231, 24.628031, 24.677183>,  <16.995384, 24.803949, 24.614750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.146231, 24.628031, 24.677183>,  <17.397642, 24.334833, 24.781240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.146231, 24.628031, 24.677183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422729, -0.602682, -0.676811,
		-0.652884, -0.315421, 0.688659,
		-0.628523, 0.732996, -0.260144,
		16.957672, 24.847929, 24.599140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.617834, 24.164774, 24.972729>,  <17.397642, 24.334833, 24.781240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.617834, 24.164774, 24.972729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.632639, 24.428436, 24.672291>,  <16.641521, 24.586634, 24.492027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.632639, 24.428436, 24.672291>,  <16.617834, 24.164774, 24.972729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.632639, 24.428436, 24.672291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638254, -0.562744, -0.525310,
		-0.768936, 0.498832, 0.399880,
		0.037011, 0.659155, -0.751096,
		16.643742, 24.626183, 24.446962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.996491, 24.102419, 24.655458>,  <16.617834, 24.164774, 24.972729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.996491, 24.102419, 24.655458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.202467, 24.290657, 24.368856>,  <16.326052, 24.403601, 24.196896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.202467, 24.290657, 24.368856>,  <15.996491, 24.102419, 24.655458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202467, 24.290657, 24.368856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331359, -0.661597, -0.672674,
		-0.790594, 0.583806, -0.184746,
		0.514938, 0.470595, -0.716505,
		16.356949, 24.431835, 24.153906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468321, 24.198465, 24.071600>,  <15.996491, 24.102419, 24.655458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.468321, 24.198465, 24.071600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.844507, 24.234703, 23.940563>,  <16.070219, 24.256445, 23.861940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.844507, 24.234703, 23.940563>,  <15.468321, 24.198465, 24.071600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.844507, 24.234703, 23.940563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169817, -0.709661, -0.683772,
		-0.294426, 0.698695, -0.652027,
		0.940466, 0.090595, -0.327593,
		16.126646, 24.261881, 23.842285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.396219, 24.014761, 23.310804>,  <15.468321, 24.198465, 24.071600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.396219, 24.014761, 23.310804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.792289, 24.010693, 23.366596>,  <16.029930, 24.008251, 23.400070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.792289, 24.010693, 23.366596>,  <15.396219, 24.014761, 23.310804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.792289, 24.010693, 23.366596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091723, -0.705634, -0.702615,
		0.105569, 0.708504, -0.697766,
		0.990173, -0.010173, 0.139479,
		16.089340, 24.007641, 23.408440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256979, 24.589020, 22.774578>,  <15.396219, 24.014761, 23.310804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.256979, 24.589020, 22.774578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.861647, 24.555458, 22.723728>,  <14.624447, 24.535320, 22.693218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.861647, 24.555458, 22.723728>,  <15.256979, 24.589020, 22.774578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.861647, 24.555458, 22.723728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139466, 0.834037, 0.533789,
		0.061239, 0.545290, -0.836008,
		-0.988331, -0.083906, -0.127125,
		14.565147, 24.530287, 22.685591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.920524, 25.315493, 22.635517>,  <15.256979, 24.589020, 22.774578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.920524, 25.315493, 22.635517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.650683, 25.062458, 22.787701>,  <14.488779, 24.910637, 22.879011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.650683, 25.062458, 22.787701>,  <14.920524, 25.315493, 22.635517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650683, 25.062458, 22.787701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192429, 0.648277, 0.736687,
		-0.712660, 0.423759, -0.559056,
		-0.674601, -0.632586, 0.380458,
		14.448303, 24.872683, 22.901838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278247, 25.723114, 22.752287>,  <14.920524, 25.315493, 22.635517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.278247, 25.723114, 22.752287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.203815, 25.414549, 22.995695>,  <14.159155, 25.229410, 23.141741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.203815, 25.414549, 22.995695>,  <14.278247, 25.723114, 22.752287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.203815, 25.414549, 22.995695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243993, 0.636218, 0.731912,
		-0.951757, -0.012280, -0.306607,
		-0.186081, -0.771412, 0.608521,
		14.147990, 25.183125, 23.178251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.574469, 25.691519, 23.059992>,  <14.278247, 25.723114, 22.752287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.574469, 25.691519, 23.059992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.801991, 25.482992, 23.314453>,  <13.938504, 25.357876, 23.467131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.801991, 25.482992, 23.314453>,  <13.574469, 25.691519, 23.059992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801991, 25.482992, 23.314453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378040, 0.521206, 0.765134,
		-0.730442, -0.675704, 0.099387,
		0.568806, -0.521314, 0.636154,
		13.972632, 25.326597, 23.505299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.178432, 25.671097, 23.693762>,  <13.574469, 25.691519, 23.059992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.178432, 25.671097, 23.693762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.543437, 25.568317, 23.821070>,  <13.762441, 25.506649, 23.897455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.543437, 25.568317, 23.821070>,  <13.178432, 25.671097, 23.693762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.543437, 25.568317, 23.821070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139505, 0.535935, 0.832654,
		-0.384522, -0.804208, 0.453202,
		0.912513, -0.256950, 0.318270,
		13.817191, 25.491232, 23.916552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.162144, 25.305746, 24.427868>,  <13.178432, 25.671097, 23.693762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.162144, 25.305746, 24.427868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.522413, 25.466389, 24.361534>,  <13.738575, 25.562775, 24.321733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.522413, 25.466389, 24.361534>,  <13.162144, 25.305746, 24.427868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.522413, 25.466389, 24.361534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046556, 0.468670, 0.882145,
		0.431992, -0.786806, 0.440816,
		0.900675, 0.401603, -0.165832,
		13.792615, 25.586870, 24.311785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.612628, 25.077633, 24.930332>,  <13.162144, 25.305746, 24.427868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.612628, 25.077633, 24.930332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.792657, 25.406111, 24.790003>,  <13.900674, 25.603197, 24.705805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.792657, 25.406111, 24.790003>,  <13.612628, 25.077633, 24.930332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.792657, 25.406111, 24.790003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011309, 0.398075, 0.917283,
		0.892921, -0.408875, 0.188449,
		0.450071, 0.821193, -0.350826,
		13.927678, 25.652468, 24.684755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.126574, 24.952503, 25.413656>,  <13.612628, 25.077633, 24.930332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.126574, 24.952503, 25.413656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.742756, 25.053272, 25.463955>,  <12.512465, 25.113733, 25.494133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.742756, 25.053272, 25.463955>,  <13.126574, 24.952503, 25.413656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.742756, 25.053272, 25.463955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262537, -0.639144, -0.722890,
		-0.101743, -0.726657, 0.679425,
		-0.959543, 0.251923, 0.125746,
		12.454893, 25.128849, 25.501678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.749108, 24.367060, 25.399504>,  <13.126574, 24.952503, 25.413656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.749108, 24.367060, 25.399504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.460540, 24.632690, 25.320965>,  <12.287398, 24.792068, 25.273842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.460540, 24.632690, 25.320965>,  <12.749108, 24.367060, 25.399504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.460540, 24.632690, 25.320965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269480, -0.530404, -0.803774,
		-0.637913, -0.526947, 0.561600,
		-0.721421, 0.664078, -0.196350,
		12.244113, 24.831913, 25.262060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394523, 24.034967, 25.030424>,  <12.749108, 24.367060, 25.399504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.394523, 24.034967, 25.030424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.172605, 24.366671, 25.003490>,  <12.039454, 24.565693, 24.987331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.172605, 24.366671, 25.003490>,  <12.394523, 24.034967, 25.030424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.172605, 24.366671, 25.003490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530806, -0.415115, -0.738867,
		-0.640663, -0.374178, 0.670479,
		-0.554793, 0.829259, -0.067333,
		12.006166, 24.615448, 24.983292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.577315, 23.832659, 25.020243>,  <12.394523, 24.034967, 25.030424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.577315, 23.832659, 25.020243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.645689, 24.172968, 24.821461>,  <11.686713, 24.377153, 24.702192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.645689, 24.172968, 24.821461>,  <11.577315, 23.832659, 25.020243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.645689, 24.172968, 24.821461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644972, -0.284675, -0.709204,
		-0.744844, 0.441749, 0.500066,
		0.170934, 0.850775, -0.496954,
		11.696969, 24.428200, 24.672375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.040467, 23.849098, 24.569529>,  <11.577315, 23.832659, 25.020243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.040467, 23.849098, 24.569529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.291035, 24.110249, 24.399187>,  <11.441375, 24.266939, 24.296982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.291035, 24.110249, 24.399187>,  <11.040467, 23.849098, 24.569529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.291035, 24.110249, 24.399187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426073, -0.170697, -0.888440,
		-0.652734, 0.737979, 0.171245,
		0.626419, 0.652878, -0.425853,
		11.478960, 24.306112, 24.271431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.548844, 24.245489, 24.217251>,  <11.040467, 23.849098, 24.569529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.548844, 24.245489, 24.217251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.913225, 24.289930, 24.058342>,  <11.131853, 24.316595, 23.962997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.913225, 24.289930, 24.058342>,  <10.548844, 24.245489, 24.217251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.913225, 24.289930, 24.058342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404333, 0.049641, -0.913263,
		-0.081747, 0.992568, 0.090144,
		0.910951, 0.111105, -0.397270,
		11.186510, 24.323261, 23.939161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.409779, 24.776039, 23.585585>,  <10.548844, 24.245489, 24.217251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.409779, 24.776039, 23.585585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.754431, 24.589508, 23.505455>,  <10.961222, 24.477589, 23.457376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.754431, 24.589508, 23.505455>,  <10.409779, 24.776039, 23.585585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.754431, 24.589508, 23.505455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183045, 0.082616, -0.979627,
		0.473379, 0.880745, -0.014175,
		0.861630, -0.466330, -0.200325,
		11.012919, 24.449610, 23.445358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.281742, 18.910135, 28.349934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.076410, 18.593893, 28.483463>,  <15.953212, 18.404148, 28.563581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.076410, 18.593893, 28.483463>,  <16.281742, 18.910135, 28.349934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.076410, 18.593893, 28.483463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114357, 0.448532, 0.886420,
		-0.850539, 0.416849, -0.320656,
		-0.513328, -0.790604, 0.333825,
		15.922412, 18.356712, 28.583611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978491, 18.618616, 28.416079>,  <16.281742, 18.910135, 28.349934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.978491, 18.618616, 28.416079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.816730, 18.665602, 28.778881>,  <16.719675, 18.693792, 28.996563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.816730, 18.665602, 28.778881>,  <16.978491, 18.618616, 28.416079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.816730, 18.665602, 28.778881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880489, 0.318256, 0.351359,
		-0.247388, 0.940700, -0.232128,
		-0.404399, 0.117464, 0.907008,
		16.695410, 18.700840, 29.050983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037498, 19.425142, 28.691345>,  <16.978491, 18.618616, 28.416079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.037498, 19.425142, 28.691345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.719461, 19.531771, 28.473440>,  <16.528639, 19.595749, 28.342697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.719461, 19.531771, 28.473440>,  <17.037498, 19.425142, 28.691345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719461, 19.531771, 28.473440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605927, -0.310491, 0.732426,
		0.026100, 0.912433, 0.408393,
		-0.795092, 0.266573, -0.544764,
		16.480934, 19.611742, 28.310011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612085, 19.909765, 29.095552>,  <17.037498, 19.425142, 28.691345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.612085, 19.909765, 29.095552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.386948, 19.732464, 28.816488>,  <16.251865, 19.626083, 28.649050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.386948, 19.732464, 28.816488>,  <16.612085, 19.909765, 29.095552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.386948, 19.732464, 28.816488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603768, -0.355976, 0.713264,
		-0.564507, 0.822683, -0.067263,
		-0.562846, -0.443253, -0.697661,
		16.218094, 19.599487, 28.607189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.173580, 19.622263, 29.456402>,  <16.612085, 19.909765, 29.095552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.173580, 19.622263, 29.456402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.007074, 19.535679, 29.103161>,  <15.907171, 19.483728, 28.891216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.007074, 19.535679, 29.103161>,  <16.173580, 19.622263, 29.456402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007074, 19.535679, 29.103161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671054, -0.582225, 0.459021,
		-0.613524, 0.783683, 0.097103,
		-0.416263, -0.216459, -0.883103,
		15.882195, 19.470741, 28.838230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.493613, 19.864485, 29.294487>,  <16.173580, 19.622263, 29.456402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.493613, 19.864485, 29.294487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.575477, 19.502287, 29.145788>,  <15.624595, 19.284969, 29.056568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.575477, 19.502287, 29.145788>,  <15.493613, 19.864485, 29.294487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575477, 19.502287, 29.145788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797004, -0.374633, 0.473745,
		-0.568242, 0.199330, -0.798354,
		0.204658, -0.905493, -0.371749,
		15.636874, 19.230639, 29.034264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.077972, 19.677958, 28.799589>,  <15.493613, 19.864485, 29.294487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.077972, 19.677958, 28.799589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.203304, 19.344845, 28.982147>,  <15.278503, 19.144978, 29.091682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.203304, 19.344845, 28.982147>,  <15.077972, 19.677958, 28.799589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.203304, 19.344845, 28.982147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948359, -0.249411, 0.195980,
		-0.049379, -0.494233, -0.867926,
		0.313330, -0.832783, 0.456394,
		15.297303, 19.095009, 29.119066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894636, 20.315596, 28.429770>,  <15.077972, 19.677958, 28.799589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894636, 20.315596, 28.429770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.574454, 20.525854, 28.314554>,  <14.382345, 20.652010, 28.245424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.574454, 20.525854, 28.314554>,  <14.894636, 20.315596, 28.429770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.574454, 20.525854, 28.314554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296525, -0.764900, -0.571840,
		-0.520906, -0.372322, 0.768136,
		-0.800456, 0.525647, -0.288038,
		14.334317, 20.683548, 28.228142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.314322, 19.858717, 28.496944>,  <14.894636, 20.315596, 28.429770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.314322, 19.858717, 28.496944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.209948, 20.164583, 28.261250>,  <14.147324, 20.348103, 28.119833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.209948, 20.164583, 28.261250>,  <14.314322, 19.858717, 28.496944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.209948, 20.164583, 28.261250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240945, -0.642655, -0.727283,
		-0.934804, -0.047799, 0.351932,
		-0.260934, 0.764663, -0.589239,
		14.131667, 20.393982, 28.084478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.660934, 19.704792, 28.198635>,  <14.314322, 19.858717, 28.496944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.660934, 19.704792, 28.198635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.816171, 19.978760, 27.951971>,  <13.909312, 20.143141, 27.803972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.816171, 19.978760, 27.951971>,  <13.660934, 19.704792, 28.198635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.816171, 19.978760, 27.951971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188221, -0.596100, -0.780537,
		-0.902196, 0.418988, -0.102425,
		0.388091, 0.684919, -0.616662,
		13.932598, 20.184235, 27.766973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.202096, 19.704086, 27.630863>,  <13.660934, 19.704792, 28.198635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.202096, 19.704086, 27.630863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.546762, 19.862349, 27.503748>,  <13.753562, 19.957306, 27.427479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.546762, 19.862349, 27.503748>,  <13.202096, 19.704086, 27.630863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.546762, 19.862349, 27.503748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146699, -0.405272, -0.902349,
		-0.485811, 0.824142, -0.291166,
		0.861665, 0.395657, -0.317787,
		13.805262, 19.981047, 27.408411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.097603, 20.064558, 27.014133>,  <13.202096, 19.704086, 27.630863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.097603, 20.064558, 27.014133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.483242, 19.958427, 27.018429>,  <13.714625, 19.894749, 27.021006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.483242, 19.958427, 27.018429>,  <13.097603, 20.064558, 27.014133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.483242, 19.958427, 27.018429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072673, -0.302528, -0.950366,
		0.255407, 0.915466, -0.310950,
		0.964099, -0.265328, 0.010738,
		13.772471, 19.878830, 27.021650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.746758, 20.514515, 26.456545>,  <13.097603, 20.064558, 27.014133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.746758, 20.514515, 26.456545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.358757, 20.610418, 26.440496>,  <12.125957, 20.667959, 26.430868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.358757, 20.610418, 26.440496>,  <12.746758, 20.514515, 26.456545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.358757, 20.610418, 26.440496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156214, 0.741244, 0.652805,
		0.186253, 0.626956, -0.756463,
		-0.970004, 0.239757, -0.040120,
		12.067756, 20.682346, 26.428461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.789186, 21.190142, 26.411835>,  <12.746758, 20.514515, 26.456545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.789186, 21.190142, 26.411835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.411018, 21.116850, 26.519617>,  <12.184117, 21.072874, 26.584288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.411018, 21.116850, 26.519617>,  <12.789186, 21.190142, 26.411835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.411018, 21.116850, 26.519617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028231, 0.777761, 0.627926,
		-0.324628, 0.601261, -0.730138,
		-0.945420, -0.183229, 0.269457,
		12.127392, 21.061882, 26.600454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.245611, 21.817083, 26.284363>,  <12.789186, 21.190142, 26.411835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.245611, 21.817083, 26.284363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.106923, 21.597090, 26.588285>,  <12.023710, 21.465094, 26.770638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.106923, 21.597090, 26.588285>,  <12.245611, 21.817083, 26.284363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.106923, 21.597090, 26.588285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017960, 0.806012, 0.591627,
		-0.937796, 0.218776, -0.269583,
		-0.346720, -0.549984, 0.759804,
		12.002907, 21.432095, 26.816227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.906837, 22.277040, 26.662539>,  <12.245611, 21.817083, 26.284363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.906837, 22.277040, 26.662539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.862050, 21.968821, 26.913525>,  <11.835177, 21.783888, 27.064117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.862050, 21.968821, 26.913525>,  <11.906837, 22.277040, 26.662539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.862050, 21.968821, 26.913525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017939, 0.629768, 0.776576,
		-0.993550, 0.098209, -0.056691,
		-0.111969, -0.770550, 0.627467,
		11.828460, 21.737656, 27.101765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.320135, 22.481407, 27.124306>,  <11.906837, 22.277040, 26.662539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.320135, 22.481407, 27.124306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.569072, 22.230715, 27.311880>,  <11.718433, 22.080299, 27.424425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.569072, 22.230715, 27.311880>,  <11.320135, 22.481407, 27.124306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.569072, 22.230715, 27.311880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189379, 0.460732, 0.867100,
		-0.759491, -0.628439, 0.168043,
		0.622341, -0.626730, 0.468935,
		11.755774, 22.042696, 27.452560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.919696, 22.290905, 27.711294>,  <11.320135, 22.481407, 27.124306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.919696, 22.290905, 27.711294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.280705, 22.178951, 27.842207>,  <11.497312, 22.111778, 27.920753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.280705, 22.178951, 27.842207>,  <10.919696, 22.290905, 27.711294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.280705, 22.178951, 27.842207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096930, 0.608460, 0.787642,
		-0.419587, -0.742590, 0.522021,
		0.902525, -0.279885, 0.327281,
		11.551463, 22.094986, 27.940392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.770294, 22.183084, 28.413229>,  <10.919696, 22.290905, 27.711294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.770294, 22.183084, 28.413229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.149239, 22.298271, 28.357256>,  <11.376605, 22.367382, 28.323671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.149239, 22.298271, 28.357256>,  <10.770294, 22.183084, 28.413229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.149239, 22.298271, 28.357256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138317, 0.762294, 0.632279,
		0.288745, -0.579642, 0.761998,
		0.947362, 0.287965, -0.139934,
		11.433447, 22.384661, 28.315275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.013758, 22.376465, 29.133774>,  <10.770294, 22.183084, 28.413229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.013758, 22.376465, 29.133774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.261284, 22.545189, 28.868702>,  <11.409800, 22.646423, 28.709660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.261284, 22.545189, 28.868702>,  <11.013758, 22.376465, 29.133774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.261284, 22.545189, 28.868702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082781, 0.803888, 0.588992,
		0.781164, -0.419335, 0.462539,
		0.618814, 0.421810, -0.662681,
		11.446928, 22.671732, 28.669897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.531654, 22.701862, 29.576185>,  <11.013758, 22.376465, 29.133774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.531654, 22.701862, 29.576185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.536503, 22.847994, 29.203865>,  <11.539412, 22.935673, 28.980473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.536503, 22.847994, 29.203865>,  <11.531654, 22.701862, 29.576185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.536503, 22.847994, 29.203865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099608, 0.925797, 0.364662,
		0.994953, -0.097136, -0.025168,
		0.012121, 0.365328, -0.930800,
		11.540139, 22.957592, 28.924625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.852275, 23.325472, 29.688370>,  <11.531654, 22.701862, 29.576185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.852275, 23.325472, 29.688370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.743849, 23.374439, 29.306471>,  <11.678793, 23.403820, 29.077332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.743849, 23.374439, 29.306471>,  <11.852275, 23.325472, 29.688370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.743849, 23.374439, 29.306471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074455, 0.991575, 0.106000,
		0.959677, -0.042353, -0.277896,
		-0.271066, 0.122416, -0.954745,
		11.662529, 23.411163, 29.020048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.378684, 23.676077, 29.346136>,  <11.852275, 23.325472, 29.688370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.378684, 23.676077, 29.346136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.040712, 23.743822, 29.143192>,  <11.837930, 23.784470, 29.021427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.040712, 23.743822, 29.143192>,  <12.378684, 23.676077, 29.346136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.040712, 23.743822, 29.143192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170048, 0.984389, 0.045416,
		0.507129, -0.047902, -0.860538,
		-0.844928, 0.169365, -0.507358,
		11.787234, 23.794632, 28.990986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.469134, 24.272694, 28.756195>,  <12.378684, 23.676077, 29.346136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.469134, 24.272694, 28.756195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.086300, 24.261944, 28.871616>,  <11.856599, 24.255495, 28.940868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.086300, 24.261944, 28.871616>,  <12.469134, 24.272694, 28.756195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.086300, 24.261944, 28.871616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044735, 0.970058, 0.238719,
		-0.286327, 0.241383, -0.927228,
		-0.957087, -0.026873, 0.288552,
		11.799173, 24.253881, 28.958181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.153307, 24.954102, 28.473509>,  <12.469134, 24.272694, 28.756195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.153307, 24.954102, 28.473509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.885618, 24.814228, 28.735765>,  <11.725005, 24.730305, 28.893120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.885618, 24.814228, 28.735765>,  <12.153307, 24.954102, 28.473509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.885618, 24.814228, 28.735765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361927, 0.924004, 0.123390,
		-0.648962, -0.154719, -0.744924,
		-0.669222, -0.349683, 0.655640,
		11.684852, 24.709324, 28.932457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.432883, 25.331459, 28.324314>,  <12.153307, 24.954102, 28.473509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.432883, 25.331459, 28.324314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.457793, 25.189787, 28.697556>,  <11.472739, 25.104784, 28.921499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.457793, 25.189787, 28.697556>,  <11.432883, 25.331459, 28.324314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.457793, 25.189787, 28.697556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168351, 0.917793, 0.359603,
		-0.983758, -0.179483, -0.002472,
		0.062274, -0.354178, 0.933102,
		11.476476, 25.083534, 28.977486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.906905, 25.820852, 28.102821>,  <11.432883, 25.331459, 28.324314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.906905, 25.820852, 28.102821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.963873, 26.213272, 28.050270>,  <11.998054, 26.448723, 28.018740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.963873, 26.213272, 28.050270>,  <11.906905, 25.820852, 28.102821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.963873, 26.213272, 28.050270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065721, -0.141810, -0.987710,
		-0.987622, 0.132036, -0.084672,
		0.142420, 0.981049, -0.131377,
		12.006599, 26.507587, 28.010857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.446518, 26.264286, 27.663124>,  <11.906905, 25.820852, 28.102821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.446518, 26.264286, 27.663124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.829263, 26.378597, 27.642166>,  <12.058909, 26.447184, 27.629591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.829263, 26.378597, 27.642166>,  <11.446518, 26.264286, 27.663124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.829263, 26.378597, 27.642166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047909, -0.333069, -0.941685,
		-0.286564, 0.898553, -0.332392,
		0.956863, 0.285777, -0.052396,
		12.116322, 26.464331, 27.626448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.561724, 26.754206, 27.113491>,  <11.446518, 26.264286, 27.663124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.561724, 26.754206, 27.113491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.906566, 26.561371, 27.175934>,  <12.113471, 26.445671, 27.213400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.906566, 26.561371, 27.175934>,  <11.561724, 26.754206, 27.113491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.906566, 26.561371, 27.175934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059956, -0.208861, -0.976106,
		0.503171, 0.850865, -0.151156,
		0.862105, -0.482085, 0.156107,
		12.165197, 26.416746, 27.222765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.967927, 26.853556, 26.563772>,  <11.561724, 26.754206, 27.113491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.967927, 26.853556, 26.563772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.141006, 26.528099, 26.719084>,  <12.244853, 26.332825, 26.812271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.141006, 26.528099, 26.719084>,  <11.967927, 26.853556, 26.563772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.141006, 26.528099, 26.719084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003601, -0.429122, -0.903239,
		0.901533, 0.392226, -0.182749,
		0.432696, -0.813642, 0.388280,
		12.270814, 26.284006, 26.835567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.366769, 26.740107, 26.080448>,  <11.967927, 26.853556, 26.563772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.366769, 26.740107, 26.080448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.380037, 26.396370, 26.284580>,  <12.387999, 26.190128, 26.407059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.380037, 26.396370, 26.284580>,  <12.366769, 26.740107, 26.080448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380037, 26.396370, 26.284580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097869, -0.510949, -0.854022,
		0.994646, -0.021616, -0.101051,
		0.033172, -0.859339, 0.510329,
		12.389989, 26.138569, 26.437679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.922578, 26.322132, 25.731716>,  <12.366769, 26.740107, 26.080448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.922578, 26.322132, 25.731716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.677693, 26.067947, 25.919924>,  <12.530763, 25.915438, 26.032848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.677693, 26.067947, 25.919924>,  <12.922578, 26.322132, 25.731716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.677693, 26.067947, 25.919924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161981, -0.481657, -0.861260,
		0.773925, -0.603488, 0.191943,
		-0.612211, -0.635460, 0.470520,
		12.494030, 25.877310, 26.061079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.123772, 25.666069, 25.558052>,  <12.922578, 26.322132, 25.731716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.123772, 25.666069, 25.558052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.740779, 25.617086, 25.662539>,  <12.510983, 25.587696, 25.725231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.740779, 25.617086, 25.662539>,  <13.123772, 25.666069, 25.558052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.740779, 25.617086, 25.662539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148400, -0.567410, -0.809953,
		0.247403, -0.814279, 0.525111,
		-0.957481, -0.122458, 0.261218,
		12.453535, 25.580349, 25.740904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.846964, 25.447002, 25.709427>,  <13.123772, 25.666069, 25.558052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.846964, 25.447002, 25.709427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.959139, 25.696928, 25.417959>,  <14.026443, 25.846884, 25.243078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.959139, 25.696928, 25.417959>,  <13.846964, 25.447002, 25.709427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.959139, 25.696928, 25.417959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250542, 0.685170, 0.683938,
		0.926598, -0.374364, 0.035605,
		0.280438, 0.624815, -0.728671,
		14.043270, 25.884373, 25.199358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.534396, 25.611334, 25.819221>,  <13.846964, 25.447002, 25.709427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.534396, 25.611334, 25.819221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.363638, 25.932497, 25.652802>,  <14.261183, 26.125195, 25.552950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.363638, 25.932497, 25.652802>,  <14.534396, 25.611334, 25.819221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.363638, 25.932497, 25.652802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270651, 0.552433, 0.788394,
		0.862849, 0.223957, -0.453139,
		-0.426896, 0.802908, -0.416052,
		14.235569, 26.173368, 25.527987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.028515, 25.983927, 25.812460>,  <14.534396, 25.611334, 25.819221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.028515, 25.983927, 25.812460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.702652, 26.213837, 25.781561>,  <14.507134, 26.351782, 25.763021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.702652, 26.213837, 25.781561>,  <15.028515, 25.983927, 25.812460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.702652, 26.213837, 25.781561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311364, 0.545857, 0.777877,
		0.489270, 0.609652, -0.623651,
		-0.814658, 0.574774, -0.077247,
		14.458255, 26.386269, 25.758387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364088, 26.561205, 25.817875>,  <15.028515, 25.983927, 25.812460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364088, 26.561205, 25.817875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.985023, 26.618629, 25.931944>,  <14.757584, 26.653084, 26.000385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.985023, 26.618629, 25.931944>,  <15.364088, 26.561205, 25.817875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985023, 26.618629, 25.931944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319264, 0.420701, 0.849165,
		0.001933, 0.895769, -0.444516,
		-0.947664, 0.143559, 0.285173,
		14.700724, 26.661697, 26.017496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382215, 27.303989, 26.095043>,  <15.364088, 26.561205, 25.817875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382215, 27.303989, 26.095043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.049096, 27.115534, 26.211304>,  <14.849225, 27.002460, 26.281059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.049096, 27.115534, 26.211304>,  <15.382215, 27.303989, 26.095043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.049096, 27.115534, 26.211304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056119, 0.450481, 0.891020,
		-0.550725, 0.758351, -0.348720,
		-0.832798, -0.471138, 0.290650,
		14.799256, 26.974192, 26.298498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.021072, 27.882458, 26.417383>,  <15.382215, 27.303989, 26.095043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.021072, 27.882458, 26.417383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.857501, 27.545570, 26.557922>,  <14.759358, 27.343437, 26.642246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.857501, 27.545570, 26.557922>,  <15.021072, 27.882458, 26.417383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.857501, 27.545570, 26.557922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041141, 0.401635, 0.914875,
		-0.911638, 0.359665, -0.198890,
		-0.408929, -0.842218, 0.351349,
		14.734822, 27.292906, 26.663326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.531985, 28.069792, 26.973621>,  <15.021072, 27.882458, 26.417383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.531985, 28.069792, 26.973621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.632156, 27.688017, 27.038536>,  <14.692259, 27.458952, 27.077484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.632156, 27.688017, 27.038536>,  <14.531985, 28.069792, 26.973621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632156, 27.688017, 27.038536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024205, 0.173748, 0.984493,
		-0.967833, -0.242616, 0.066614,
		0.250428, -0.954437, 0.162286,
		14.707285, 27.401686, 27.087221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.049564, 27.900942, 27.490679>,  <14.531985, 28.069792, 26.973621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.049564, 27.900942, 27.490679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.375603, 27.669353, 27.482569>,  <14.571225, 27.530399, 27.477703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.375603, 27.669353, 27.482569>,  <14.049564, 27.900942, 27.490679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.375603, 27.669353, 27.482569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251032, 0.321434, 0.913051,
		-0.522114, -0.749314, 0.407340,
		0.815095, -0.578972, -0.020276,
		14.620131, 27.495663, 27.476486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040296, 27.553011, 28.164312>,  <14.049564, 27.900942, 27.490679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.040296, 27.553011, 28.164312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.418516, 27.496677, 28.046942>,  <14.645449, 27.462877, 27.976521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.418516, 27.496677, 28.046942>,  <14.040296, 27.553011, 28.164312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.418516, 27.496677, 28.046942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324901, 0.354977, 0.876602,
		-0.019297, -0.924206, 0.381406,
		0.945551, -0.140835, -0.293425,
		14.702182, 27.454428, 27.958914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.838430, 17.938847, 14.796680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.226455, 18.011543, 14.732243>,  <13.459270, 18.055162, 14.693580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.226455, 18.011543, 14.732243>,  <12.838430, 17.938847, 14.796680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.226455, 18.011543, 14.732243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102186, 0.296306, 0.949611,
		0.220316, -0.937642, 0.268864,
		0.970061, 0.181741, -0.161095,
		13.517473, 18.066067, 14.683914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.243766, 17.594370, 15.390701>,  <12.838430, 17.938847, 14.796680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.243766, 17.594370, 15.390701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.464087, 17.882717, 15.222432>,  <13.596279, 18.055725, 15.121470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.464087, 17.882717, 15.222432>,  <13.243766, 17.594370, 15.390701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.464087, 17.882717, 15.222432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049725, 0.474782, 0.878698,
		0.833154, -0.504906, 0.225665,
		0.550801, 0.720869, -0.420673,
		13.629327, 18.098978, 15.096231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.888891, 17.789845, 15.803843>,  <13.243766, 17.594370, 15.390701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.888891, 17.789845, 15.803843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.779213, 18.123241, 15.611965>,  <13.713406, 18.323280, 15.496839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.779213, 18.123241, 15.611965>,  <13.888891, 17.789845, 15.803843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.779213, 18.123241, 15.611965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230059, 0.541179, 0.808825,
		0.933750, 0.111419, -0.340142,
		-0.274196, 0.833493, -0.479693,
		13.696954, 18.373289, 15.468058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.309543, 18.273197, 16.256374>,  <13.888891, 17.789845, 15.803843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.309543, 18.273197, 16.256374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.080629, 18.498508, 16.017977>,  <13.943281, 18.633696, 15.874938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.080629, 18.498508, 16.017977>,  <14.309543, 18.273197, 16.256374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.080629, 18.498508, 16.017977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153412, 0.787481, 0.596941,
		0.805578, 0.250187, -0.537076,
		-0.572284, 0.563276, -0.595996,
		13.908944, 18.667492, 15.839178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602051, 18.960567, 16.185335>,  <14.309543, 18.273197, 16.256374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602051, 18.960567, 16.185335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.213996, 19.003513, 16.098335>,  <13.981163, 19.029282, 16.046135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.213996, 19.003513, 16.098335>,  <14.602051, 18.960567, 16.185335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.213996, 19.003513, 16.098335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085961, 0.686313, 0.722209,
		0.226815, 0.719338, -0.656588,
		-0.970137, 0.107367, -0.217501,
		13.922955, 19.035723, 16.033085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.539977, 19.751451, 16.094488>,  <14.602051, 18.960567, 16.185335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.539977, 19.751451, 16.094488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163881, 19.622587, 16.138601>,  <13.938224, 19.545269, 16.165070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163881, 19.622587, 16.138601>,  <14.539977, 19.751451, 16.094488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.163881, 19.622587, 16.138601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178375, 0.741870, 0.646384,
		-0.290054, 0.588084, -0.755001,
		-0.940240, -0.322159, 0.110282,
		13.881809, 19.525940, 16.171686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201157, 20.356361, 16.134621>,  <14.539977, 19.751451, 16.094488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201157, 20.356361, 16.134621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.947150, 20.081791, 16.276365>,  <13.794746, 19.917048, 16.361412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.947150, 20.081791, 16.276365>,  <14.201157, 20.356361, 16.134621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.947150, 20.081791, 16.276365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276905, 0.630501, 0.725116,
		-0.721165, 0.362335, -0.590453,
		-0.635016, -0.686427, 0.354362,
		13.756645, 19.875862, 16.382673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.485390, 20.637178, 16.081146>,  <14.201157, 20.356361, 16.134621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.485390, 20.637178, 16.081146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.483720, 20.343451, 16.352661>,  <13.482718, 20.167213, 16.515570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.483720, 20.343451, 16.352661>,  <13.485390, 20.637178, 16.081146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.483720, 20.343451, 16.352661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278660, 0.652761, 0.704451,
		-0.960381, -0.186210, -0.207351,
		-0.004174, -0.734321, 0.678789,
		13.482468, 20.123154, 16.556297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.954438, 20.724798, 16.493320>,  <13.485390, 20.637178, 16.081146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.954438, 20.724798, 16.493320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.164228, 20.477716, 16.727711>,  <13.290103, 20.329468, 16.868345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.164228, 20.477716, 16.727711>,  <12.954438, 20.724798, 16.493320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.164228, 20.477716, 16.727711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148079, 0.611561, 0.777216,
		-0.838450, -0.494402, 0.229280,
		0.524476, -0.617705, 0.585974,
		13.321571, 20.292404, 16.903503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.479776, 20.780594, 17.064476>,  <12.954438, 20.724798, 16.493320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.479776, 20.780594, 17.064476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818026, 20.606165, 17.187611>,  <13.020975, 20.501507, 17.261492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818026, 20.606165, 17.187611>,  <12.479776, 20.780594, 17.064476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.818026, 20.606165, 17.187611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143342, 0.370007, 0.917904,
		-0.514175, -0.820326, 0.250378,
		0.845622, -0.436074, 0.307836,
		13.071712, 20.475342, 17.279961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213968, 20.516291, 17.636797>,  <12.479776, 20.780594, 17.064476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213968, 20.516291, 17.636797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.610271, 20.565901, 17.658766>,  <12.848053, 20.595667, 17.671947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.610271, 20.565901, 17.658766>,  <12.213968, 20.516291, 17.636797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.610271, 20.565901, 17.658766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106629, 0.461880, 0.880509,
		0.083838, -0.878228, 0.470836,
		0.990758, 0.124025, 0.054921,
		12.907499, 20.603109, 17.675241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.372874, 20.355137, 18.308924>,  <12.213968, 20.516291, 17.636797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.372874, 20.355137, 18.308924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.697068, 20.549042, 18.177399>,  <12.891584, 20.665384, 18.098484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.697068, 20.549042, 18.177399>,  <12.372874, 20.355137, 18.308924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.697068, 20.549042, 18.177399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026288, 0.530680, 0.847165,
		0.585172, -0.695257, 0.417363,
		0.810484, 0.484765, -0.328815,
		12.940213, 20.694471, 18.078754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.846008, 20.372593, 18.751389>,  <12.372874, 20.355137, 18.308924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.846008, 20.372593, 18.751389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.462195, 20.467052, 18.812746>,  <11.231908, 20.523729, 18.849560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.462195, 20.467052, 18.812746>,  <11.846008, 20.372593, 18.751389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.462195, 20.467052, 18.812746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276573, -0.687898, -0.671047,
		-0.052949, -0.686316, 0.725373,
		-0.959533, 0.236150, 0.153393,
		11.174335, 20.537897, 18.858765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.489383, 19.696426, 18.789986>,  <11.846008, 20.372593, 18.751389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.489383, 19.696426, 18.789986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.188310, 19.955694, 18.743776>,  <11.007666, 20.111256, 18.716051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.188310, 19.955694, 18.743776>,  <11.489383, 19.696426, 18.789986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.188310, 19.955694, 18.743776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544953, -0.711803, -0.443129,
		-0.369451, -0.270581, 0.888984,
		-0.752683, 0.648169, -0.115522,
		10.962504, 20.150145, 18.709120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873290, 19.353022, 18.944178>,  <11.489383, 19.696426, 18.789986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873290, 19.353022, 18.944178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.761680, 19.651936, 18.702944>,  <10.694714, 19.831284, 18.558203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.761680, 19.651936, 18.702944>,  <10.873290, 19.353022, 18.944178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.761680, 19.651936, 18.702944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483752, -0.651903, -0.583957,
		-0.829535, 0.128805, 0.543397,
		-0.279026, 0.747283, -0.603087,
		10.677972, 19.876120, 18.522018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.107187, 19.265354, 18.882992>,  <10.873290, 19.353022, 18.944178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.107187, 19.265354, 18.882992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.217134, 19.472658, 18.559052>,  <10.283103, 19.597040, 18.364687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.217134, 19.472658, 18.559052>,  <10.107187, 19.265354, 18.882992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.217134, 19.472658, 18.559052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643986, -0.526214, -0.555321,
		-0.713954, 0.674170, 0.189113,
		0.274867, 0.518259, -0.809849,
		10.299595, 19.628136, 18.316097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.530407, 19.332432, 18.565434>,  <10.107187, 19.265354, 18.882992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.530407, 19.332432, 18.565434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.769736, 19.457302, 18.270258>,  <9.913334, 19.532225, 18.093153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.769736, 19.457302, 18.270258>,  <9.530407, 19.332432, 18.565434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.769736, 19.457302, 18.270258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589275, -0.452604, -0.669256,
		-0.542921, 0.835281, -0.086846,
		0.598324, 0.312177, -0.737939,
		9.949234, 19.550955, 18.048876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.079891, 19.659456, 18.110479>,  <9.530407, 19.332432, 18.565434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.079891, 19.659456, 18.110479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.397376, 19.546413, 17.895016>,  <9.587867, 19.478588, 17.765738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.397376, 19.546413, 17.895016>,  <9.079891, 19.659456, 18.110479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.397376, 19.546413, 17.895016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604725, -0.462361, -0.648483,
		-0.065790, 0.840450, -0.537881,
		0.793712, -0.282607, -0.538659,
		9.635489, 19.461632, 17.733418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.909842, 19.728872, 17.327267>,  <9.079891, 19.659456, 18.110479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.909842, 19.728872, 17.327267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.178015, 19.439741, 17.394253>,  <9.338918, 19.266262, 17.434444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.178015, 19.439741, 17.394253>,  <8.909842, 19.728872, 17.327267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.178015, 19.439741, 17.394253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539926, -0.630088, -0.558094,
		0.508924, 0.283744, -0.812703,
		0.670430, -0.722827, 0.167466,
		9.379144, 19.222893, 17.444492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.886853, 19.395454, 16.705132>,  <8.909842, 19.728872, 17.327267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.886853, 19.395454, 16.705132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.112162, 19.132217, 16.904987>,  <9.247347, 18.974276, 17.024900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.112162, 19.132217, 16.904987>,  <8.886853, 19.395454, 16.705132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.112162, 19.132217, 16.904987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436647, -0.750435, -0.496171,
		0.701473, 0.061313, -0.710054,
		0.563271, -0.658094, 0.499638,
		9.281143, 18.934790, 17.054878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.085077, 18.957615, 16.148619>,  <8.886853, 19.395454, 16.705132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.085077, 18.957615, 16.148619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.121861, 18.782623, 16.506424>,  <9.143932, 18.677628, 16.721107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.121861, 18.782623, 16.506424>,  <9.085077, 18.957615, 16.148619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.121861, 18.782623, 16.506424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314582, -0.865077, -0.390742,
		0.944765, -0.245465, -0.217176,
		0.091961, -0.437479, 0.894514,
		9.149449, 18.651379, 16.774778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.390041, 18.261257, 16.053469>,  <9.085077, 18.957615, 16.148619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.390041, 18.261257, 16.053469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.194725, 18.240582, 16.401928>,  <9.077536, 18.228176, 16.611004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.194725, 18.240582, 16.401928>,  <9.390041, 18.261257, 16.053469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.194725, 18.240582, 16.401928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291553, -0.931224, -0.218673,
		0.822539, -0.360762, 0.439637,
		-0.488290, -0.051690, 0.871150,
		9.048238, 18.225075, 16.663273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.591172, 17.623072, 16.352030>,  <9.390041, 18.261257, 16.053469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.591172, 17.623072, 16.352030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.230852, 17.717781, 16.497631>,  <9.014660, 17.774607, 16.584991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.230852, 17.717781, 16.497631>,  <9.591172, 17.623072, 16.352030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.230852, 17.717781, 16.497631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316937, -0.931518, -0.178397,
		0.296836, -0.276066, 0.914153,
		-0.900799, 0.236774, 0.364004,
		8.960612, 17.788813, 16.606833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.109988, 16.951334, 16.200012>,  <9.591172, 17.623072, 16.352030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.109988, 16.951334, 16.200012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.864728, 17.192303, 16.404417>,  <8.717571, 17.336884, 16.527060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.864728, 17.192303, 16.404417>,  <9.109988, 16.951334, 16.200012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.864728, 17.192303, 16.404417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674288, -0.736129, 0.058742,
		0.411559, -0.308552, 0.857563,
		-0.613152, 0.602420, 0.511014,
		8.680782, 17.373030, 16.557720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.000802, 16.717495, 16.875174>,  <9.109988, 16.951334, 16.200012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.000802, 16.717495, 16.875174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.691125, 16.935246, 16.746004>,  <8.505319, 17.065895, 16.668503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.691125, 16.935246, 16.746004>,  <9.000802, 16.717495, 16.875174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.691125, 16.935246, 16.746004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605675, -0.785314, 0.128219,
		-0.183798, 0.294854, 0.937699,
		-0.774194, 0.544374, -0.322925,
		8.458867, 17.098558, 16.649126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.474924, 16.420704, 17.178642>,  <9.000802, 16.717495, 16.875174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.474924, 16.420704, 17.178642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.299145, 16.634834, 16.890112>,  <8.193677, 16.763311, 16.716993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.299145, 16.634834, 16.890112>,  <8.474924, 16.420704, 17.178642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.299145, 16.634834, 16.890112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621188, -0.761160, -0.186445,
		-0.648854, 0.366146, 0.667028,
		-0.439448, 0.535325, -0.721327,
		8.167310, 16.795431, 16.673714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.652739, 15.753044, 16.996021>,  <8.474924, 16.420704, 17.178642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.652739, 15.753044, 16.996021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.346486, 15.656533, 16.757496>,  <8.162734, 15.598627, 16.614380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.346486, 15.656533, 16.757496>,  <8.652739, 15.753044, 16.996021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.346486, 15.656533, 16.757496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458849, -0.854532, -0.243378,
		-0.450849, -0.459957, 0.764967,
		-0.765632, -0.241277, -0.596316,
		8.116796, 15.584150, 16.578602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.219699, 15.306520, 17.258905>,  <8.652739, 15.753044, 16.996021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.219699, 15.306520, 17.258905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.438887, 15.050657, 17.474522>,  <9.570399, 14.897140, 17.603891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.438887, 15.050657, 17.474522>,  <9.219699, 15.306520, 17.258905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.438887, 15.050657, 17.474522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245468, 0.493073, 0.834640,
		-0.799672, -0.589675, 0.113174,
		0.547970, -0.639658, 0.539042,
		9.603277, 14.858760, 17.636234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.765222, 15.183352, 17.786581>,  <9.219699, 15.306520, 17.258905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.765222, 15.183352, 17.786581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.151690, 15.152149, 17.884912>,  <9.383570, 15.133428, 17.943911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.151690, 15.152149, 17.884912>,  <8.765222, 15.183352, 17.786581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.151690, 15.152149, 17.884912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188165, 0.438665, 0.878730,
		-0.176383, -0.895259, 0.409146,
		0.966169, -0.078006, 0.245829,
		9.441541, 15.128747, 17.958662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.776002, 15.028102, 18.498735>,  <8.765222, 15.183352, 17.786581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.776002, 15.028102, 18.498735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.147334, 15.166589, 18.444569>,  <9.370133, 15.249681, 18.412067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.147334, 15.166589, 18.444569>,  <8.776002, 15.028102, 18.498735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.147334, 15.166589, 18.444569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009952, 0.387279, 0.921909,
		0.371611, -0.854493, 0.362970,
		0.928335, 0.346204, -0.135413,
		9.425833, 15.270453, 18.403944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.170780, 14.841273, 19.131535>,  <8.776002, 15.028102, 18.498735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.170780, 14.841273, 19.131535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.377158, 15.129368, 18.946035>,  <9.500985, 15.302224, 18.834736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.377158, 15.129368, 18.946035>,  <9.170780, 14.841273, 19.131535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.377158, 15.129368, 18.946035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109785, 0.481307, 0.869650,
		0.849558, -0.499603, 0.169256,
		0.515943, 0.720236, -0.463748,
		9.531941, 15.345439, 18.806911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.705943, 15.138228, 19.637167>,  <9.170780, 14.841273, 19.131535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.705943, 15.138228, 19.637167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.647111, 15.430501, 19.370491>,  <9.611812, 15.605865, 19.210485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.647111, 15.430501, 19.370491>,  <9.705943, 15.138228, 19.637167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.647111, 15.430501, 19.370491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056759, 0.666673, 0.743185,
		0.987495, 0.147149, -0.056582,
		-0.147080, 0.730680, -0.666688,
		9.602987, 15.649705, 19.170485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.177873, 15.705064, 19.895826>,  <9.705943, 15.138228, 19.637167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.177873, 15.705064, 19.895826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.921082, 15.892724, 19.653252>,  <9.767009, 16.005320, 19.507706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.921082, 15.892724, 19.653252>,  <10.177873, 15.705064, 19.895826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.921082, 15.892724, 19.653252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123313, 0.717472, 0.685586,
		0.756745, 0.514911, -0.402746,
		-0.641975, 0.469149, -0.606438,
		9.728490, 16.033468, 19.471319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.482653, 16.302792, 19.853333>,  <10.177873, 15.705064, 19.895826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.482653, 16.302792, 19.853333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.091284, 16.341446, 19.780283>,  <9.856462, 16.364639, 19.736454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.091284, 16.341446, 19.780283>,  <10.482653, 16.302792, 19.853333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.091284, 16.341446, 19.780283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062246, 0.704955, 0.706515,
		0.197016, 0.702637, -0.683729,
		-0.978422, 0.096635, -0.182624,
		9.797757, 16.370436, 19.725496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.278688, 17.024656, 19.868155>,  <10.482653, 16.302792, 19.853333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.278688, 17.024656, 19.868155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.919549, 16.862444, 19.936756>,  <9.704065, 16.765116, 19.977917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.919549, 16.862444, 19.936756>,  <10.278688, 17.024656, 19.868155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.919549, 16.862444, 19.936756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204503, 0.729025, 0.653223,
		-0.389932, 0.551423, -0.737486,
		-0.897848, -0.405531, 0.171503,
		9.650194, 16.740786, 19.988207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.817032, 17.599779, 19.851879>,  <10.278688, 17.024656, 19.868155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.817032, 17.599779, 19.851879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.664248, 17.287743, 20.050098>,  <9.572578, 17.100521, 20.169029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.664248, 17.287743, 20.050098>,  <9.817032, 17.599779, 19.851879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.664248, 17.287743, 20.050098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155474, 0.582800, 0.797604,
		-0.911008, 0.227607, -0.343889,
		-0.381959, -0.780089, 0.495548,
		9.549661, 17.053717, 20.198763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.348099, 17.927601, 20.181503>,  <9.817032, 17.599779, 19.851879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.348099, 17.927601, 20.181503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.390470, 17.568409, 20.352341>,  <9.415893, 17.352894, 20.454844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.390470, 17.568409, 20.352341>,  <9.348099, 17.927601, 20.181503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.390470, 17.568409, 20.352341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111841, 0.416024, 0.902450,
		-0.988064, -0.143361, -0.056362,
		0.105928, -0.897982, 0.427092,
		9.422248, 17.299015, 20.480469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.864122, 17.914503, 20.585312>,  <9.348099, 17.927601, 20.181503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.864122, 17.914503, 20.585312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.090930, 17.624611, 20.741901>,  <9.227015, 17.450676, 20.835855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.090930, 17.624611, 20.741901>,  <8.864122, 17.914503, 20.585312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.090930, 17.624611, 20.741901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003056, 0.473406, 0.880839,
		-0.823698, -0.500650, 0.266216,
		0.567020, -0.724733, 0.391474,
		9.261036, 17.407190, 20.859343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.564251, 17.787180, 21.215158>,  <8.864122, 17.914503, 20.585312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.564251, 17.787180, 21.215158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.942446, 17.658875, 21.237665>,  <9.169362, 17.581890, 21.251169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.942446, 17.658875, 21.237665>,  <8.564251, 17.787180, 21.215158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.942446, 17.658875, 21.237665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099097, 0.447964, 0.888543,
		-0.310219, -0.834529, 0.455331,
		0.945486, -0.320765, 0.056267,
		9.226091, 17.562645, 21.254545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.703209, 17.699369, 21.880817>,  <8.564251, 17.787180, 21.215158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.703209, 17.699369, 21.880817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.082066, 17.721582, 21.754429>,  <9.309380, 17.734911, 21.678596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.082066, 17.721582, 21.754429>,  <8.703209, 17.699369, 21.880817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.082066, 17.721582, 21.754429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278278, 0.347871, 0.895292,
		0.159633, -0.935896, 0.314030,
		0.947143, 0.055531, -0.315971,
		9.366208, 17.738241, 21.659637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.091867, 17.329870, 22.457876>,  <8.703209, 17.699369, 21.880817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.091867, 17.329870, 22.457876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.340302, 17.563238, 22.248545>,  <9.489362, 17.703259, 22.122946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.340302, 17.563238, 22.248545>,  <9.091867, 17.329870, 22.457876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.340302, 17.563238, 22.248545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353553, 0.387365, 0.851439,
		0.699465, -0.713842, 0.034318,
		0.621087, 0.583419, -0.523330,
		9.526628, 17.738264, 22.091545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.821903, 17.202709, 22.752228>,  <9.091867, 17.329870, 22.457876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.821903, 17.202709, 22.752228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.842498, 17.556585, 22.566895>,  <9.854855, 17.768911, 22.455694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.842498, 17.556585, 22.566895>,  <9.821903, 17.202709, 22.752228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.842498, 17.556585, 22.566895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522340, 0.371572, 0.767525,
		0.851181, -0.281534, -0.442977,
		0.051486, 0.884688, -0.463331,
		9.857944, 17.821991, 22.427895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.547118, 17.348984, 22.772644>,  <9.821903, 17.202709, 22.752228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.547118, 17.348984, 22.772644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.341508, 17.689983, 22.734644>,  <10.218142, 17.894583, 22.711843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.341508, 17.689983, 22.734644>,  <10.547118, 17.348984, 22.772644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.341508, 17.689983, 22.734644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518625, 0.397091, 0.757196,
		0.683231, 0.339950, -0.646242,
		-0.514026, 0.852498, -0.094998,
		10.187300, 17.945732, 22.706144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.003042, 17.842758, 22.719234>,  <10.547118, 17.348984, 22.772644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.003042, 17.842758, 22.719234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.687116, 18.068983, 22.814169>,  <10.497560, 18.204718, 22.871130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.687116, 18.068983, 22.814169>,  <11.003042, 17.842758, 22.719234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.687116, 18.068983, 22.814169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594696, 0.611452, 0.521981,
		0.150092, 0.553413, -0.819272,
		-0.789816, 0.565563, 0.237338,
		10.450171, 18.238651, 22.885370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.310045, 18.616375, 22.766989>,  <11.003042, 17.842758, 22.719234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.310045, 18.616375, 22.766989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.961995, 18.627888, 22.963783>,  <10.753165, 18.634796, 23.081860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.961995, 18.627888, 22.963783>,  <11.310045, 18.616375, 22.766989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.961995, 18.627888, 22.963783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441329, 0.489809, 0.751875,
		-0.219339, 0.871355, -0.438898,
		-0.870126, 0.028783, 0.491988,
		10.700957, 18.636522, 23.111380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.418149, 19.216265, 23.248085>,  <11.310045, 18.616375, 22.766989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.418149, 19.216265, 23.248085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.104335, 19.024620, 23.405542>,  <10.916046, 18.909634, 23.500017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.104335, 19.024620, 23.405542>,  <11.418149, 19.216265, 23.248085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.104335, 19.024620, 23.405542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304148, 0.255890, 0.917613,
		-0.540367, 0.839627, -0.055035,
		-0.784536, -0.479110, 0.393645,
		10.868974, 18.880888, 23.523636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.984725, 19.744558, 23.473557>,  <11.418149, 19.216265, 23.248085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.984725, 19.744558, 23.473557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.878601, 19.416964, 23.677073>,  <10.814927, 19.220406, 23.799183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.878601, 19.416964, 23.677073>,  <10.984725, 19.744558, 23.473557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.878601, 19.416964, 23.677073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119640, 0.495659, 0.860238,
		-0.956712, 0.289101, -0.033520,
		-0.265310, -0.818989, 0.508790,
		10.799008, 19.171267, 23.829710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.509672, 20.029469, 23.956539>,  <10.984725, 19.744558, 23.473557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.509672, 20.029469, 23.956539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.622317, 19.672079, 24.096479>,  <10.689904, 19.457645, 24.180443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.622317, 19.672079, 24.096479>,  <10.509672, 20.029469, 23.956539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.622317, 19.672079, 24.096479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135697, 0.398026, 0.907282,
		-0.949884, -0.208030, 0.233332,
		0.281614, -0.893476, 0.349850,
		10.706801, 19.404036, 24.201435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.306015, 20.147854, 24.711533>,  <10.509672, 20.029469, 23.956539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.306015, 20.147854, 24.711533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.545988, 19.829227, 24.681686>,  <10.689972, 19.638052, 24.663778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.545988, 19.829227, 24.681686>,  <10.306015, 20.147854, 24.711533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.545988, 19.829227, 24.681686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539658, 0.334058, 0.772771,
		-0.590636, -0.503876, 0.630284,
		0.599931, -0.796564, -0.074614,
		10.725967, 19.590258, 24.659302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.317675, 19.778143, 25.302197>,  <10.306015, 20.147854, 24.711533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.317675, 19.778143, 25.302197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.676560, 19.698318, 25.144623>,  <10.891891, 19.650423, 25.050079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.676560, 19.698318, 25.144623>,  <10.317675, 19.778143, 25.302197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.676560, 19.698318, 25.144623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441161, 0.444712, 0.779492,
		0.019631, -0.873159, 0.487040,
		0.897213, -0.199561, -0.393934,
		10.945724, 19.638451, 25.026443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.634801, 19.552147, 25.840153>,  <10.317675, 19.778143, 25.302197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.634801, 19.552147, 25.840153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.941667, 19.629087, 25.595381>,  <11.125786, 19.675253, 25.448517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.941667, 19.629087, 25.595381>,  <10.634801, 19.552147, 25.840153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.941667, 19.629087, 25.595381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540015, 0.321181, 0.777963,
		0.346187, -0.927276, 0.142523,
		0.767163, 0.192356, -0.611932,
		11.171816, 19.686792, 25.411800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.286284, 19.246408, 26.101988>,  <10.634801, 19.552147, 25.840153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.286284, 19.246408, 26.101988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.385153, 19.554834, 25.867256>,  <11.444473, 19.739889, 25.726418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.385153, 19.554834, 25.867256>,  <11.286284, 19.246408, 26.101988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.385153, 19.554834, 25.867256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639853, 0.324919, 0.696431,
		0.727664, -0.547621, -0.413057,
		0.247170, 0.771064, -0.586829,
		11.459304, 19.786154, 25.691208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.943031, 19.351429, 26.264744>,  <11.286284, 19.246408, 26.101988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.943031, 19.351429, 26.264744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.833088, 19.681334, 26.067070>,  <11.767121, 19.879276, 25.948465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.833088, 19.681334, 26.067070>,  <11.943031, 19.351429, 26.264744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.833088, 19.681334, 26.067070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372506, 0.565185, 0.736074,
		0.886392, 0.018229, -0.462576,
		-0.274859, 0.824763, -0.494185,
		11.750630, 19.928762, 25.918814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.439641, 19.873148, 26.465212>,  <11.943031, 19.351429, 26.264744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.439641, 19.873148, 26.465212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.144500, 20.117588, 26.350582>,  <11.967415, 20.264252, 26.281803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.144500, 20.117588, 26.350582>,  <12.439641, 19.873148, 26.465212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.144500, 20.117588, 26.350582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127554, 0.543178, 0.829872,
		0.662798, 0.575771, -0.478734,
		-0.737854, 0.611102, -0.286576,
		11.923143, 20.300919, 26.264610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
