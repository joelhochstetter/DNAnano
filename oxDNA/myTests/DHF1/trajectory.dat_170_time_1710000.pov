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
	<4.642676, -0.097206, 1.246478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.685425, 0.032471, 1.622452>,  <4.711074, 0.110277, 1.848036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.685425, 0.032471, 1.622452>,  <4.642676, -0.097206, 1.246478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.685425, 0.032471, 1.622452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206667, 0.931945, -0.297938,
		-0.972557, -0.162413, 0.166598,
		0.106872, 0.324192, 0.939935,
		4.717486, 0.129728, 1.904432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.105559, 0.336462, 1.538455>,  <4.642676, -0.097206, 1.246478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.105559, 0.336462, 1.538455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.469391, 0.445587, 1.663826>,  <4.687690, 0.511062, 1.739049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.469391, 0.445587, 1.663826>,  <4.105559, 0.336462, 1.538455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.469391, 0.445587, 1.663826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121971, 0.896352, -0.426235,
		-0.397224, 0.349466, 0.848579,
		0.909580, 0.272813, 0.313427,
		4.742265, 0.527431, 1.757854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.058855, 0.951953, 1.847404>,  <4.105559, 0.336462, 1.538455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.058855, 0.951953, 1.847404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.437653, 0.936661, 1.719818>,  <4.664931, 0.927485, 1.643267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.437653, 0.936661, 1.719818>,  <4.058855, 0.951953, 1.847404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.437653, 0.936661, 1.719818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054731, 0.959177, -0.277462,
		0.316550, 0.280212, 0.906244,
		0.946996, -0.038230, -0.318964,
		4.721751, 0.925192, 1.624129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.556879, 1.504267, 1.938314>,  <4.058855, 0.951953, 1.847404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.556879, 1.504267, 1.938314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.592545, 1.350388, 1.570824>,  <4.613944, 1.258060, 1.350329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.592545, 1.350388, 1.570824>,  <4.556879, 1.504267, 1.938314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.592545, 1.350388, 1.570824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284914, 0.874005, -0.393623,
		0.954397, 0.296855, -0.031676,
		0.089165, -0.384698, -0.918726,
		4.619294, 1.234978, 1.295206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.920879, 1.935054, 1.396297>,  <4.556879, 1.504267, 1.938314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.920879, 1.935054, 1.396297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.649399, 1.724106, 1.191849>,  <4.486510, 1.597537, 1.069180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.649399, 1.724106, 1.191849>,  <4.920879, 1.935054, 1.396297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.649399, 1.724106, 1.191849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338728, 0.842296, -0.419286,
		0.651634, -0.111439, -0.750302,
		-0.678701, -0.527370, -0.511121,
		4.445788, 1.565895, 1.038512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.004461, 2.022082, 0.625170>,  <4.920879, 1.935054, 1.396297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.004461, 2.022082, 0.625170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.621216, 1.934937, 0.699524>,  <4.391269, 1.882649, 0.744137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.621216, 1.934937, 0.699524>,  <5.004461, 2.022082, 0.625170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.621216, 1.934937, 0.699524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263389, 0.925181, -0.273250,
		-0.112447, -0.310765, -0.943812,
		-0.958113, -0.217864, 0.185886,
		4.333782, 1.869577, 0.755290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.743091, 2.192840, -0.003275>,  <5.004461, 2.022082, 0.625170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.743091, 2.192840, -0.003275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.451538, 2.206482, 0.270241>,  <4.276606, 2.214667, 0.434350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.451538, 2.206482, 0.270241>,  <4.743091, 2.192840, -0.003275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.451538, 2.206482, 0.270241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245068, 0.919583, -0.307097,
		-0.639274, -0.391413, -0.661910,
		-0.728883, 0.034106, 0.683788,
		4.232873, 2.216714, 0.475377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.994059, 2.181168, -0.295712>,  <4.743091, 2.192840, -0.003275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.994059, 2.181168, -0.295712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.046112, 2.377365, 0.048958>,  <4.077344, 2.495083, 0.255760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.046112, 2.377365, 0.048958>,  <3.994059, 2.181168, -0.295712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.046112, 2.377365, 0.048958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197679, 0.864452, -0.462219,
		-0.971591, -0.110185, 0.209453,
		0.130133, 0.490492, 0.861674,
		4.085152, 2.524513, 0.307460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.933144, 3.931803, 0.057333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.050629, 4.018494, 0.429733>,  <3.121119, 4.070508, 0.653174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.050629, 4.018494, 0.429733>,  <2.933144, 3.931803, 0.057333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.050629, 4.018494, 0.429733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434799, -0.897661, 0.071794,
		0.851283, 0.383711, -0.357886,
		0.293712, 0.216725, 0.931001,
		3.138742, 4.083511, 0.709034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.662273, 3.794454, 0.071347>,  <2.933144, 3.931803, 0.057333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.662273, 3.794454, 0.071347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.503674, 3.754547, 0.436386>,  <3.408514, 3.730603, 0.655410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.503674, 3.754547, 0.436386>,  <3.662273, 3.794454, 0.071347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.503674, 3.754547, 0.436386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275955, -0.961056, 0.014830,
		0.875578, 0.257716, 0.408589,
		-0.396499, -0.099768, 0.912598,
		3.384724, 3.724617, 0.710166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.218203, 3.624766, 0.538006>,  <3.662273, 3.794454, 0.071347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.218203, 3.624766, 0.538006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.855358, 3.464081, 0.588242>,  <3.637651, 3.367669, 0.618383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.855358, 3.464081, 0.588242>,  <4.218203, 3.624766, 0.538006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.855358, 3.464081, 0.588242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405974, -0.913838, 0.009260,
		0.111048, 0.059386, 0.992039,
		-0.907113, -0.401714, 0.125589,
		3.583224, 3.343567, 0.625918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.267488, 3.218075, 1.203022>,  <4.218203, 3.624766, 0.538006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.267488, 3.218075, 1.203022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.981060, 3.069260, 0.966774>,  <3.809203, 2.979970, 0.825025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.981060, 3.069260, 0.966774>,  <4.267488, 3.218075, 1.203022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.981060, 3.069260, 0.966774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400977, -0.911830, 0.088225,
		-0.571368, -0.173650, 0.802112,
		-0.716070, -0.372038, -0.590620,
		3.766239, 2.957648, 0.789588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.841213, 2.672526, 1.628385>,  <4.267488, 3.218075, 1.203022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.841213, 2.672526, 1.628385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.802933, 2.630142, 1.232483>,  <3.779965, 2.604712, 0.994942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.802933, 2.630142, 1.232483>,  <3.841213, 2.672526, 1.628385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.802933, 2.630142, 1.232483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225827, -0.970703, 0.082086,
		-0.969455, -0.215657, 0.116826,
		-0.095701, -0.105961, -0.989754,
		3.774223, 2.598354, 0.935557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.368004, 2.110402, 1.480270>,  <3.841213, 2.672526, 1.628385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.368004, 2.110402, 1.480270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.601170, 2.152695, 1.158020>,  <3.741069, 2.178070, 0.964670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.601170, 2.152695, 1.158020>,  <3.368004, 2.110402, 1.480270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.601170, 2.152695, 1.158020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203238, -0.978953, 0.018575,
		-0.786705, -0.174561, -0.592135,
		0.582915, 0.105732, -0.805625,
		3.776044, 2.184414, 0.916333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.119354, 1.611141, 0.892472>,  <3.368004, 2.110402, 1.480270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.119354, 1.611141, 0.892472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.507244, 1.694000, 0.840744>,  <3.739978, 1.743716, 0.809707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.507244, 1.694000, 0.840744>,  <3.119354, 1.611141, 0.892472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.507244, 1.694000, 0.840744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220170, -0.970722, 0.096038,
		-0.105640, -0.121603, -0.986941,
		0.969724, 0.207149, -0.129321,
		3.798162, 1.756145, 0.801948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.457247, 0.977020, 0.474330>,  <3.119354, 1.611141, 0.892472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.457247, 0.977020, 0.474330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.735279, 1.157166, 0.698486>,  <3.902098, 1.265253, 0.832980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.735279, 1.157166, 0.698486>,  <3.457247, 0.977020, 0.474330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.735279, 1.157166, 0.698486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509240, -0.858640, 0.058419,
		0.507483, 0.244767, -0.826166,
		0.695080, 0.450363, 0.560390,
		3.943803, 1.292274, 0.866603>
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
