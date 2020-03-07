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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<5.008444, 2.005755, 1.090682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.688511, 2.069038, 1.322281>,  <4.496551, 2.107008, 1.461240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.688511, 2.069038, 1.322281>,  <5.008444, 2.005755, 1.090682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.688511, 2.069038, 1.322281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029866, -0.973932, 0.224867,
		0.599479, 0.162564, 0.783708,
		-0.799833, 0.158209, 0.578996,
		4.448561, 2.116501, 1.495980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.208842, 1.731838, 1.726545>,  <5.008444, 2.005755, 1.090682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.208842, 1.731838, 1.726545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.809383, 1.737770, 1.746492>,  <4.569708, 1.741329, 1.758461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.809383, 1.737770, 1.746492>,  <5.208842, 1.731838, 1.726545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.809383, 1.737770, 1.746492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005547, -0.983400, 0.181365,
		0.051732, 0.180842, 0.982151,
		-0.998646, 0.014830, 0.049870,
		4.509789, 1.742219, 1.761453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.055804, 1.479500, 2.385676>,  <5.208842, 1.731838, 1.726545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.055804, 1.479500, 2.385676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.779133, 1.400269, 2.107872>,  <4.613130, 1.352730, 1.941189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.779133, 1.400269, 2.107872>,  <5.055804, 1.479500, 2.385676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.779133, 1.400269, 2.107872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045313, -0.971661, 0.231995,
		-0.720782, 0.128996, 0.681053,
		-0.691679, -0.198078, -0.694511,
		4.571629, 1.340845, 1.899519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.382465, 1.202706, 2.689678>,  <5.055804, 1.479500, 2.385676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.382465, 1.202706, 2.689678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.446262, 1.084389, 2.312941>,  <4.484541, 1.013399, 2.086898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.446262, 1.084389, 2.312941>,  <4.382465, 1.202706, 2.689678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.446262, 1.084389, 2.312941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179820, -0.946800, 0.266897,
		-0.970684, 0.126794, -0.204197,
		0.159493, -0.295792, -0.941844,
		4.494111, 0.995651, 2.030388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.918478, 0.627977, 2.636872>,  <4.382465, 1.202706, 2.689678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.918478, 0.627977, 2.636872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192757, 0.576416, 2.350319>,  <4.357324, 0.545479, 2.178387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192757, 0.576416, 2.350319>,  <3.918478, 0.627977, 2.636872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.192757, 0.576416, 2.350319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041700, -0.975621, 0.215463,
		-0.726691, -0.177615, -0.663606,
		0.685697, -0.128903, -0.716382,
		4.398466, 0.537745, 2.135404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.798066, -0.054007, 2.343870>,  <3.918478, 0.627977, 2.636872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.798066, -0.054007, 2.343870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.170830, -0.010452, 2.205486>,  <4.394488, 0.015680, 2.122456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.170830, -0.010452, 2.205486>,  <3.798066, -0.054007, 2.343870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.170830, -0.010452, 2.205486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189790, -0.959252, 0.209323,
		-0.309069, -0.260730, -0.914602,
		0.931910, 0.108886, -0.345959,
		4.450403, 0.022214, 2.101699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.960702, -0.576201, 1.775536>,  <3.798066, -0.054007, 2.343870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.960702, -0.576201, 1.775536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.304569, -0.478439, 1.954975>,  <4.510890, -0.419782, 2.062639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.304569, -0.478439, 1.954975>,  <3.960702, -0.576201, 1.775536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.304569, -0.478439, 1.954975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133277, -0.955019, 0.264908,
		0.493163, -0.167945, -0.853572,
		0.859667, 0.244404, 0.448597,
		4.562469, -0.405118, 2.089554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.553913, -0.910826, 1.407075>,  <3.960702, -0.576201, 1.775536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.553913, -0.910826, 1.407075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.596943, -0.833961, 1.797255>,  <4.622761, -0.787843, 2.031362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.596943, -0.833961, 1.797255>,  <4.553913, -0.910826, 1.407075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.596943, -0.833961, 1.797255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151400, -0.972866, 0.174956,
		0.982601, 0.128862, -0.133750,
		0.107576, 0.192162, 0.975449,
		4.629216, -0.776313, 2.089889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.474195, 3.316701, 2.249075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.713593, 3.267136, 2.565670>,  <4.857231, 3.237396, 2.755627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.713593, 3.267136, 2.565670>,  <4.474195, 3.316701, 2.249075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.713593, 3.267136, 2.565670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228498, 0.973331, -0.020400,
		-0.767851, 0.193062, 0.610846,
		0.598493, -0.123913, 0.791487,
		4.893140, 3.229962, 2.803116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.316645, 3.773998, 2.858676>,  <4.474195, 3.316701, 2.249075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.316645, 3.773998, 2.858676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.692024, 3.691475, 2.747858>,  <4.917252, 3.641961, 2.681367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.692024, 3.691475, 2.747858>,  <4.316645, 3.773998, 2.858676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.692024, 3.691475, 2.747858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164608, 0.972222, -0.166399,
		0.303679, 0.110553, 0.946339,
		0.938447, -0.206307, -0.277045,
		4.973558, 3.629583, 2.664744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.693182, 4.284492, 3.174139>,  <4.316645, 3.773998, 2.858676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.693182, 4.284492, 3.174139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.849632, 4.155609, 2.829302>,  <4.943503, 4.078279, 2.622400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.849632, 4.155609, 2.829302>,  <4.693182, 4.284492, 3.174139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.849632, 4.155609, 2.829302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189394, 0.944844, -0.267209,
		0.900638, -0.058763, 0.430578,
		0.391127, -0.322207, -0.862092,
		4.966970, 4.058947, 2.570674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.284278, 4.599292, 3.116121>,  <4.693182, 4.284492, 3.174139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.284278, 4.599292, 3.116121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.216629, 4.502350, 2.733988>,  <5.176040, 4.444184, 2.504708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.216629, 4.502350, 2.733988>,  <5.284278, 4.599292, 3.116121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.216629, 4.502350, 2.733988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055094, 0.965456, -0.254677,
		0.984054, -0.095705, -0.149928,
		-0.169122, -0.242356, -0.955333,
		5.165892, 4.429643, 2.447388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.676094, 5.015521, 2.634995>,  <5.284278, 4.599292, 3.116121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.676094, 5.015521, 2.634995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.344131, 4.890709, 2.450001>,  <5.144954, 4.815822, 2.339004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.344131, 4.890709, 2.450001>,  <5.676094, 5.015521, 2.634995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.344131, 4.890709, 2.450001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164730, 0.929062, -0.331221,
		0.533028, -0.198697, -0.822435,
		-0.829906, -0.312030, -0.462485,
		5.095160, 4.797100, 2.311255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.698010, 5.278161, 1.857950>,  <5.676094, 5.015521, 2.634995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.698010, 5.278161, 1.857950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.312714, 5.197899, 1.929396>,  <5.081535, 5.149742, 1.972263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.312714, 5.197899, 1.929396>,  <5.698010, 5.278161, 1.857950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.312714, 5.197899, 1.929396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250842, 0.909785, -0.330711,
		-0.096142, -0.363358, -0.926675,
		-0.963242, -0.200654, 0.178614,
		5.023741, 5.137703, 1.982980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.288154, 5.293063, 1.210188>,  <5.698010, 5.278161, 1.857950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.288154, 5.293063, 1.210188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.019691, 5.374222, 1.495392>,  <4.858614, 5.422917, 1.666514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.019691, 5.374222, 1.495392>,  <5.288154, 5.293063, 1.210188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.019691, 5.374222, 1.495392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239307, 0.851025, -0.467429,
		-0.701629, -0.484345, -0.522615,
		-0.671155, 0.202896, 0.713011,
		4.818345, 5.435091, 1.709295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.706532, 5.593111, 0.804062>,  <5.288154, 5.293063, 1.210188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.706532, 5.593111, 0.804062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.692177, 5.704651, 1.187927>,  <4.683564, 5.771575, 1.418247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.692177, 5.704651, 1.187927>,  <4.706532, 5.593111, 0.804062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.692177, 5.704651, 1.187927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191766, 0.940516, -0.280457,
		-0.980785, -0.194095, 0.019722,
		-0.035886, 0.278850, 0.959664,
		4.681411, 5.788306, 1.475827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
