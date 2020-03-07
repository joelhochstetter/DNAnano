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
	<4.643886, 5.185713, 2.569852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.708432, 5.231049, 2.961998>,  <4.747160, 5.258250, 3.197286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.708432, 5.231049, 2.961998>,  <4.643886, 5.185713, 2.569852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.708432, 5.231049, 2.961998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617940, -0.762943, 0.189915,
		0.769488, -0.636452, -0.053075,
		0.161365, 0.113340, 0.980365,
		4.756842, 5.265050, 3.256108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.909839, 4.528610, 2.759688>,  <4.643886, 5.185713, 2.569852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.909839, 4.528610, 2.759688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.750753, 4.659729, 3.102470>,  <4.655302, 4.738400, 3.308140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.750753, 4.659729, 3.102470>,  <4.909839, 4.528610, 2.759688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.750753, 4.659729, 3.102470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358584, -0.915249, 0.183677,
		0.844536, -0.234239, 0.481551,
		-0.397714, 0.327798, 0.856955,
		4.631439, 4.758069, 3.359557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.123248, 4.040230, 3.284202>,  <4.909839, 4.528610, 2.759688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.123248, 4.040230, 3.284202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.796744, 4.240662, 3.399193>,  <4.600842, 4.360920, 3.468187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.796744, 4.240662, 3.399193>,  <5.123248, 4.040230, 3.284202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.796744, 4.240662, 3.399193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452511, -0.863938, 0.221008,
		0.359105, 0.050313, 0.931940,
		-0.816258, 0.501078, 0.287477,
		4.551867, 4.390985, 3.485436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.970751, 3.823138, 3.964178>,  <5.123248, 4.040230, 3.284202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.970751, 3.823138, 3.964178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.647358, 3.944542, 3.762489>,  <4.453322, 4.017384, 3.641476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.647358, 3.944542, 3.762489>,  <4.970751, 3.823138, 3.964178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.647358, 3.944542, 3.762489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493102, -0.817030, 0.298852,
		-0.321260, 0.490249, 0.810215,
		-0.808482, 0.303510, -0.504221,
		4.404813, 4.035595, 3.611223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.346728, 3.910538, 4.468941>,  <4.970751, 3.823138, 3.964178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.346728, 3.910538, 4.468941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.150079, 3.866138, 4.123459>,  <4.032090, 3.839499, 3.916170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.150079, 3.866138, 4.123459>,  <4.346728, 3.910538, 4.468941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.150079, 3.866138, 4.123459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699082, -0.541082, 0.467456,
		-0.519223, 0.833613, 0.188410,
		-0.491622, -0.111000, -0.863705,
		4.002593, 3.832839, 3.864347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.563124, 4.018338, 4.643332>,  <4.346728, 3.910538, 4.468941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.563124, 4.018338, 4.643332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.563476, 3.829590, 4.290665>,  <3.563687, 3.716341, 4.079064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.563476, 3.829590, 4.290665>,  <3.563124, 4.018338, 4.643332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.563476, 3.829590, 4.290665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734891, -0.598238, 0.319447,
		-0.678185, 0.647648, -0.347300,
		0.000879, -0.471871, -0.881667,
		3.563739, 3.688028, 4.026165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.858926, 3.842777, 4.456605>,  <3.563124, 4.018338, 4.643332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.858926, 3.842777, 4.456605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.078220, 3.592804, 4.234291>,  <3.209797, 3.442820, 4.100903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.078220, 3.592804, 4.234291>,  <2.858926, 3.842777, 4.456605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.078220, 3.592804, 4.234291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535280, -0.772808, 0.340944,
		-0.642582, 0.110584, -0.758195,
		0.548236, -0.624931, -0.555786,
		3.242691, 3.405324, 4.067555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.392065, 3.520114, 3.849076>,  <2.858926, 3.842777, 4.456605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.392065, 3.520114, 3.849076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.699684, 3.283493, 3.945930>,  <2.884256, 3.141521, 4.004044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.699684, 3.283493, 3.945930>,  <2.392065, 3.520114, 3.849076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.699684, 3.283493, 3.945930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635335, -0.748985, 0.188072,
		0.070103, -0.298475, -0.951839,
		0.769048, -0.591552, 0.242137,
		2.930399, 3.106027, 4.018572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.355231, 2.228426, 4.760335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.644310, 2.005810, 4.596397>,  <2.817758, 1.872240, 4.498035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.644310, 2.005810, 4.596397>,  <2.355231, 2.228426, 4.760335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.644310, 2.005810, 4.596397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417057, 0.824001, -0.383519,
		0.551154, 0.106241, 0.827612,
		0.722698, -0.556539, -0.409843,
		2.861120, 1.838848, 4.473444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.023158, 2.425927, 5.014603>,  <2.355231, 2.228426, 4.760335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.023158, 2.425927, 5.014603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.062366, 2.275024, 4.646240>,  <3.085892, 2.184483, 4.425222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.062366, 2.275024, 4.646240>,  <3.023158, 2.425927, 5.014603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.062366, 2.275024, 4.646240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369846, 0.872897, -0.318221,
		0.923908, -0.309401, 0.225089,
		0.098021, -0.377256, -0.920907,
		3.091773, 2.161848, 4.369968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.759701, 2.358300, 4.788768>,  <3.023158, 2.425927, 5.014603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.759701, 2.358300, 4.788768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.488308, 2.423012, 4.502136>,  <3.325472, 2.461839, 4.330157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.488308, 2.423012, 4.502136>,  <3.759701, 2.358300, 4.788768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.488308, 2.423012, 4.502136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522373, 0.792094, -0.315773,
		0.516513, -0.588569, -0.621933,
		-0.678484, 0.161780, -0.716580,
		3.284763, 2.471546, 4.287162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.018707, 2.461148, 4.182220>,  <3.759701, 2.358300, 4.788768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.018707, 2.461148, 4.182220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.671989, 2.658215, 4.151367>,  <3.463959, 2.776454, 4.132855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.671989, 2.658215, 4.151367>,  <4.018707, 2.461148, 4.182220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.671989, 2.658215, 4.151367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467392, 0.748735, -0.470043,
		-0.173822, -0.443481, -0.879267,
		-0.866793, 0.492666, -0.077133,
		3.411952, 2.806015, 4.128227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.094708, 2.638860, 3.462360>,  <4.018707, 2.461148, 4.182220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.094708, 2.638860, 3.462360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.806896, 2.861050, 3.629082>,  <3.634209, 2.994364, 3.729115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.806896, 2.861050, 3.629082>,  <4.094708, 2.638860, 3.462360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.806896, 2.861050, 3.629082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266300, 0.774994, -0.573121,
		-0.641375, -0.301383, -0.705554,
		-0.719529, 0.555475, 0.416803,
		3.591037, 3.027692, 3.754123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.834549, 3.113967, 2.877715>,  <4.094708, 2.638860, 3.462360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.834549, 3.113967, 2.877715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.727314, 3.297642, 3.216484>,  <3.662973, 3.407846, 3.419745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.727314, 3.297642, 3.216484>,  <3.834549, 3.113967, 2.877715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.727314, 3.297642, 3.216484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436468, 0.841597, -0.318137,
		-0.858850, 0.284366, -0.426042,
		-0.268089, 0.459186, 0.846922,
		3.646887, 3.435397, 3.470561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.479188, 3.728017, 2.719978>,  <3.834549, 3.113967, 2.877715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.479188, 3.728017, 2.719978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.645161, 3.778023, 3.080467>,  <3.744744, 3.808026, 3.296761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.645161, 3.778023, 3.080467>,  <3.479188, 3.728017, 2.719978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.645161, 3.778023, 3.080467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516328, 0.783221, -0.346367,
		-0.749158, 0.609046, 0.260435,
		0.414931, 0.125014, 0.901223,
		3.769640, 3.815527, 3.350834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.346684, 4.364496, 2.883191>,  <3.479188, 3.728017, 2.719978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.346684, 4.364496, 2.883191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.664913, 4.264065, 3.103745>,  <3.855850, 4.203806, 3.236077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.664913, 4.264065, 3.103745>,  <3.346684, 4.364496, 2.883191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.664913, 4.264065, 3.103745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434832, 0.870359, -0.231075,
		-0.421884, 0.423596, 0.801611,
		0.795572, -0.251079, 0.551384,
		3.903585, 4.188741, 3.269160>
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
