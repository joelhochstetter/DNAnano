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
	<6.021746, 2.892507, 0.440936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.020100, 3.082146, 0.793121>,  <6.019112, 3.195929, 1.004433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.020100, 3.082146, 0.793121>,  <6.021746, 2.892507, 0.440936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.020100, 3.082146, 0.793121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972789, -0.205868, 0.106304,
		0.231657, -0.856067, 0.462043,
		-0.004116, 0.474096, 0.880464,
		6.018865, 3.224375, 1.057260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.724980, 2.394624, 0.815210>,  <6.021746, 2.892507, 0.440936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.724980, 2.394624, 0.815210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.701080, 2.736122, 1.022110>,  <5.686740, 2.941021, 1.146250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.701080, 2.736122, 1.022110>,  <5.724980, 2.394624, 0.815210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.701080, 2.736122, 1.022110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991926, -0.108847, 0.065076,
		0.111859, -0.509187, 0.853356,
		-0.059750, 0.853746, 0.517251,
		5.683156, 2.992246, 1.177285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.444423, 2.340955, 1.563137>,  <5.724980, 2.394624, 0.815210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.444423, 2.340955, 1.563137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.332241, 2.687149, 1.397110>,  <5.264932, 2.894865, 1.297494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.332241, 2.687149, 1.397110>,  <5.444423, 2.340955, 1.563137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.332241, 2.687149, 1.397110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954126, -0.298589, 0.022084,
		-0.104821, 0.402221, 0.909522,
		-0.280456, 0.865484, -0.415068,
		5.248105, 2.946794, 1.272590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.888752, 2.709704, 2.048175>,  <5.444423, 2.340955, 1.563137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.888752, 2.709704, 2.048175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.860973, 2.778221, 1.655067>,  <4.844306, 2.819331, 1.419203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.860973, 2.778221, 1.655067>,  <4.888752, 2.709704, 2.048175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.860973, 2.778221, 1.655067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870123, -0.492236, -0.024308,
		-0.487918, 0.853442, 0.183229,
		-0.069447, 0.171292, -0.982770,
		4.840139, 2.829609, 1.360237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.213995, 2.978119, 1.891628>,  <4.888752, 2.709704, 2.048175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.213995, 2.978119, 1.891628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.349545, 2.817436, 1.551323>,  <4.430874, 2.721026, 1.347140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.349545, 2.817436, 1.551323>,  <4.213995, 2.978119, 1.891628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.349545, 2.817436, 1.551323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893733, -0.419970, -0.157689,
		-0.293949, 0.813791, -0.501336,
		0.338872, -0.401708, -0.850762,
		4.451206, 2.696924, 1.296094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.674654, 3.104280, 1.396156>,  <4.213995, 2.978119, 1.891628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.674654, 3.104280, 1.396156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.895969, 2.813515, 1.233444>,  <4.028759, 2.639056, 1.135817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.895969, 2.813515, 1.233444>,  <3.674654, 3.104280, 1.396156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.895969, 2.813515, 1.233444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831844, -0.456565, -0.315569,
		0.043670, 0.512979, -0.857290,
		0.553289, -0.726912, -0.406780,
		4.061956, 2.595441, 1.111410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.580632, 3.044346, 0.557424>,  <3.674654, 3.104280, 1.396156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.580632, 3.044346, 0.557424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.673092, 2.698845, 0.736534>,  <3.728568, 2.491544, 0.844000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.673092, 2.698845, 0.736534>,  <3.580632, 3.044346, 0.557424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.673092, 2.698845, 0.736534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810564, -0.425518, -0.402393,
		0.538104, -0.269937, -0.798485,
		0.231149, -0.863752, 0.447774,
		3.742437, 2.439719, 0.870866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.305167, 2.587576, 0.115045>,  <3.580632, 3.044346, 0.557424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.305167, 2.587576, 0.115045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.361679, 2.383873, 0.454620>,  <3.395586, 2.261651, 0.658366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.361679, 2.383873, 0.454620>,  <3.305167, 2.587576, 0.115045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.361679, 2.383873, 0.454620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787253, -0.577729, -0.215550,
		0.600227, -0.637877, -0.482536,
		0.141280, -0.509257, 0.848939,
		3.404063, 2.231096, 0.709302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.131253, 1.995754, 0.829568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.289576, 1.668701, 0.996811>,  <2.384569, 1.472469, 1.097156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.289576, 1.668701, 0.996811>,  <2.131253, 1.995754, 0.829568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.289576, 1.668701, 0.996811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883933, 0.462650, 0.067951,
		-0.248996, 0.342683, 0.905853,
		0.395807, -0.817633, 0.418106,
		2.408318, 1.423411, 1.122243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.530694, 2.088392, 1.454843>,  <2.131253, 1.995754, 0.829568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.530694, 2.088392, 1.454843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.664356, 1.805443, 1.205696>,  <2.744554, 1.635674, 1.056208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.664356, 1.805443, 1.205696>,  <2.530694, 2.088392, 1.454843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.664356, 1.805443, 1.205696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892442, 0.450005, -0.032279,
		0.303127, -0.545088, 0.781661,
		0.334157, -0.707372, -0.622868,
		2.764603, 1.593231, 1.018836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.167490, 1.896682, 1.681784>,  <2.530694, 2.088392, 1.454843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.167490, 1.896682, 1.681784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.163610, 1.774414, 1.300949>,  <3.161283, 1.701053, 1.072448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.163610, 1.774414, 1.300949>,  <3.167490, 1.896682, 1.681784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.163610, 1.774414, 1.300949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932876, 0.340082, -0.118688,
		0.360067, -0.889331, 0.281853,
		-0.009700, -0.305670, -0.952088,
		3.160701, 1.682713, 1.015323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.709558, 1.249875, 1.458175>,  <3.167490, 1.896682, 1.681784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.709558, 1.249875, 1.458175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.626631, 1.560516, 1.220215>,  <3.576875, 1.746902, 1.077439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.626631, 1.560516, 1.220215>,  <3.709558, 1.249875, 1.458175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.626631, 1.560516, 1.220215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973148, 0.225886, -0.044253,
		0.100012, -0.588099, -0.802581,
		-0.207317, 0.776605, -0.594899,
		3.564436, 1.793498, 1.041745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.299309, 1.298833, 1.067516>,  <3.709558, 1.249875, 1.458175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.299309, 1.298833, 1.067516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.100937, 1.639938, 1.001976>,  <3.981914, 1.844602, 0.962652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.100937, 1.639938, 1.001976>,  <4.299309, 1.298833, 1.067516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.100937, 1.639938, 1.001976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866580, 0.498106, -0.030499,
		0.055607, -0.157115, -0.986013,
		-0.495931, 0.852763, -0.163851,
		3.952157, 1.895767, 0.952821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.664072, 1.670514, 0.463987>,  <4.299309, 1.298833, 1.067516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.664072, 1.670514, 0.463987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.473475, 1.950760, 0.676437>,  <4.359117, 2.118907, 0.803907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.473475, 1.950760, 0.676437>,  <4.664072, 1.670514, 0.463987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.473475, 1.950760, 0.676437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813955, 0.579890, -0.034711,
		-0.332313, 0.415773, -0.846582,
		-0.476492, 0.700615, 0.531125,
		4.330527, 2.160944, 0.835775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.773564, 2.286281, 0.139637>,  <4.664072, 1.670514, 0.463987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.773564, 2.286281, 0.139637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.688698, 2.407074, 0.511398>,  <4.637778, 2.479550, 0.734455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.688698, 2.407074, 0.511398>,  <4.773564, 2.286281, 0.139637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.688698, 2.407074, 0.511398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807968, 0.589184, -0.006994,
		-0.549702, 0.749445, -0.368998,
		-0.212166, 0.301983, 0.929404,
		4.625048, 2.497669, 0.790219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.789325, 3.129423, 0.145343>,  <4.773564, 2.286281, 0.139637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.789325, 3.129423, 0.145343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.837400, 2.966606, 0.507530>,  <4.866246, 2.868916, 0.724842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.837400, 2.966606, 0.507530>,  <4.789325, 3.129423, 0.145343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.837400, 2.966606, 0.507530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826739, 0.545975, 0.135698,
		-0.549597, 0.732276, 0.402138,
		0.120189, -0.407043, 0.905467,
		4.873457, 2.844493, 0.779170>
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
