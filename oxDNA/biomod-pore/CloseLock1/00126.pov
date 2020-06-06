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
	<24.065559, 35.261524, 35.412865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.380617, 35.150444, 35.192867>,  <24.569653, 35.083794, 35.060867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.380617, 35.150444, 35.192867>,  <24.065559, 35.261524, 35.412865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.380617, 35.150444, 35.192867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606340, 0.507867, 0.611901,
		0.109398, -0.815445, 0.568402,
		0.787644, -0.277704, -0.549997,
		24.616911, 35.067131, 35.027866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720993, 35.075577, 35.863049>,  <24.065559, 35.261524, 35.412865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720993, 35.075577, 35.863049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819159, 35.201302, 35.496227>,  <24.878057, 35.276737, 35.276134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819159, 35.201302, 35.496227>,  <24.720993, 35.075577, 35.863049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819159, 35.201302, 35.496227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743093, 0.546516, 0.386178,
		0.622563, -0.776226, -0.099442,
		0.245415, 0.314315, -0.917049,
		24.892782, 35.295597, 35.221111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422737, 35.008900, 35.820766>,  <24.720993, 35.075577, 35.863049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422737, 35.008900, 35.820766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312307, 35.287605, 35.555946>,  <25.246050, 35.454826, 35.397057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312307, 35.287605, 35.555946>,  <25.422737, 35.008900, 35.820766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312307, 35.287605, 35.555946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715610, 0.608844, 0.342361,
		0.641628, -0.379251, -0.666695,
		-0.276072, 0.696762, -0.662047,
		25.229486, 35.496635, 35.357330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973560, 35.396770, 35.819462>,  <25.422737, 35.008900, 35.820766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973560, 35.396770, 35.819462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709820, 35.640083, 35.642712>,  <25.551575, 35.786072, 35.536663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709820, 35.640083, 35.642712>,  <25.973560, 35.396770, 35.819462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709820, 35.640083, 35.642712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617086, 0.773587, 0.144112,
		0.429488, -0.177653, -0.885426,
		-0.659352, 0.608279, -0.441873,
		25.512014, 35.822567, 35.510151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525164, 35.831474, 35.708408>,  <25.973560, 35.396770, 35.819462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525164, 35.831474, 35.708408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906361, 35.731739, 35.777271>,  <27.135078, 35.671898, 35.818588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906361, 35.731739, 35.777271>,  <26.525164, 35.831474, 35.708408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906361, 35.731739, 35.777271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262598, -0.963115, 0.058752,
		0.151159, -0.101198, -0.983316,
		0.952992, -0.249336, 0.172158,
		27.192259, 35.656937, 35.828918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654404, 35.120693, 35.287762>,  <26.525164, 35.831474, 35.708408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654404, 35.120693, 35.287762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874889, 35.150669, 35.620159>,  <27.007181, 35.168655, 35.819595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874889, 35.150669, 35.620159>,  <26.654404, 35.120693, 35.287762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874889, 35.150669, 35.620159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116966, -0.979184, 0.165886,
		0.826124, -0.188636, -0.530976,
		0.551216, 0.074936, 0.830991,
		27.040255, 35.173149, 35.869457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360661, 34.774517, 35.378315>,  <26.654404, 35.120693, 35.287762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360661, 34.774517, 35.378315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126537, 34.820877, 35.699306>,  <26.986063, 34.848694, 35.891903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126537, 34.820877, 35.699306>,  <27.360661, 34.774517, 35.378315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126537, 34.820877, 35.699306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019937, -0.987374, 0.157145,
		0.810564, 0.107978, 0.575609,
		-0.585310, 0.115900, 0.802483,
		26.950945, 34.855648, 35.940052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828852, 34.575260, 34.990738>,  <27.360661, 34.774517, 35.378315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828852, 34.575260, 34.990738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915428, 34.353432, 34.669342>,  <27.967375, 34.220333, 34.476505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915428, 34.353432, 34.669342>,  <27.828852, 34.575260, 34.990738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915428, 34.353432, 34.669342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077007, 0.830136, -0.552218,
		0.973254, 0.057649, 0.222383,
		0.216442, -0.554573, -0.803493,
		27.980360, 34.187061, 34.428295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460535, 34.867657, 34.563709>,  <27.828852, 34.575260, 34.990738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460535, 34.867657, 34.563709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229586, 34.648518, 34.321552>,  <28.091015, 34.517033, 34.176258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229586, 34.648518, 34.321552>,  <28.460535, 34.867657, 34.563709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229586, 34.648518, 34.321552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003969, 0.743337, -0.668905,
		0.816470, -0.383806, -0.431358,
		-0.577375, -0.547853, -0.605389,
		28.056374, 34.484161, 34.139935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735619, 34.911484, 33.928455>,  <28.460535, 34.867657, 34.563709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735619, 34.911484, 33.928455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360607, 34.793507, 33.854641>,  <28.135601, 34.722721, 33.810352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360607, 34.793507, 33.854641>,  <28.735619, 34.911484, 33.928455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360607, 34.793507, 33.854641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034473, 0.606538, -0.794307,
		0.346199, -0.738323, -0.578814,
		-0.937527, -0.294942, -0.184531,
		28.079350, 34.705025, 33.799282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647804, 34.716888, 33.133724>,  <28.735619, 34.911484, 33.928455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647804, 34.716888, 33.133724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282959, 34.814285, 33.265644>,  <28.064053, 34.872723, 33.344795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282959, 34.814285, 33.265644>,  <28.647804, 34.716888, 33.133724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282959, 34.814285, 33.265644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207798, 0.418869, -0.883951,
		-0.353374, -0.874792, -0.331459,
		-0.912111, 0.243489, 0.329798,
		28.009325, 34.887333, 33.364582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391844, 34.710991, 32.572029>,  <28.647804, 34.716888, 33.133724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391844, 34.710991, 32.572029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101994, 34.883137, 32.787327>,  <27.928083, 34.986423, 32.916504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101994, 34.883137, 32.787327>,  <28.391844, 34.710991, 32.572029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101994, 34.883137, 32.787327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274414, 0.536246, -0.798209,
		-0.632149, -0.726105, -0.270481,
		-0.724627, 0.430363, 0.538241,
		27.884605, 35.012245, 32.948799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771839, 34.675076, 32.179089>,  <28.391844, 34.710991, 32.572029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771839, 34.675076, 32.179089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671200, 34.966904, 32.433464>,  <27.610817, 35.142002, 32.586090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671200, 34.966904, 32.433464>,  <27.771839, 34.675076, 32.179089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671200, 34.966904, 32.433464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469832, 0.482391, -0.739295,
		-0.846142, -0.484790, 0.221409,
		-0.251597, 0.729574, 0.635941,
		27.595720, 35.185776, 32.624245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071405, 34.824245, 32.055439>,  <27.771839, 34.675076, 32.179089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071405, 34.824245, 32.055439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173851, 35.149818, 32.264023>,  <27.235317, 35.345161, 32.389172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173851, 35.149818, 32.264023>,  <27.071405, 34.824245, 32.055439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173851, 35.149818, 32.264023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578893, 0.561166, -0.591587,
		-0.774138, -0.150357, 0.614901,
		0.256112, 0.813932, 0.521460,
		27.250685, 35.393997, 32.420460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433329, 35.218559, 32.209480>,  <27.071405, 34.824245, 32.055439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433329, 35.218559, 32.209480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736502, 35.478935, 32.226536>,  <26.918406, 35.635162, 32.236771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736502, 35.478935, 32.226536>,  <26.433329, 35.218559, 32.209480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736502, 35.478935, 32.226536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502263, 0.624030, -0.598597,
		-0.416261, 0.432277, 0.799914,
		0.757930, 0.650940, 0.042642,
		26.963881, 35.674217, 32.239330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150198, 35.932644, 32.268116>,  <26.433329, 35.218559, 32.209480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150198, 35.932644, 32.268116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533329, 36.003483, 32.177601>,  <26.763208, 36.045986, 32.123291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533329, 36.003483, 32.177601>,  <26.150198, 35.932644, 32.268116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533329, 36.003483, 32.177601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264020, 0.853203, -0.449820,
		0.113406, 0.490593, 0.863978,
		0.957827, 0.177095, -0.226285,
		26.820677, 36.056610, 32.109715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234797, 36.608490, 32.542042>,  <26.150198, 35.932644, 32.268116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234797, 36.608490, 32.542042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501303, 36.522598, 32.256390>,  <26.661207, 36.471066, 32.084999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501303, 36.522598, 32.256390>,  <26.234797, 36.608490, 32.542042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501303, 36.522598, 32.256390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314427, 0.787463, -0.530129,
		0.676185, 0.577749, 0.457144,
		0.666265, -0.214728, -0.714131,
		26.701181, 36.458179, 32.042149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663454, 37.189823, 32.491165>,  <26.234797, 36.608490, 32.542042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663454, 37.189823, 32.491165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672161, 36.996422, 32.141136>,  <26.677385, 36.880383, 31.931118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672161, 36.996422, 32.141136>,  <26.663454, 37.189823, 32.491165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672161, 36.996422, 32.141136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255687, 0.843479, -0.472406,
		0.966515, 0.234028, -0.105264,
		0.021769, -0.483502, -0.875073,
		26.678692, 36.851372, 31.878614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037378, 37.723751, 32.026978>,  <26.663454, 37.189823, 32.491165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037378, 37.723751, 32.026978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853756, 37.455971, 31.793364>,  <26.743584, 37.295303, 31.653194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853756, 37.455971, 31.793364>,  <27.037378, 37.723751, 32.026978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853756, 37.455971, 31.793364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085780, 0.687727, -0.720883,
		0.884257, -0.280826, -0.373130,
		-0.459054, -0.669453, -0.584039,
		26.716040, 37.255135, 31.618153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369230, 37.735931, 31.334345>,  <27.037378, 37.723751, 32.026978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369230, 37.735931, 31.334345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003569, 37.583778, 31.278297>,  <26.784172, 37.492485, 31.244669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003569, 37.583778, 31.278297>,  <27.369230, 37.735931, 31.334345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003569, 37.583778, 31.278297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150492, 0.639412, -0.753993,
		0.376401, -0.668177, -0.641764,
		-0.914152, -0.380384, -0.140120,
		26.729322, 37.469662, 31.236261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234001, 37.716671, 30.561007>,  <27.369230, 37.735931, 31.334345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234001, 37.716671, 30.561007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881662, 37.698696, 30.749510>,  <26.670259, 37.687912, 30.862612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881662, 37.698696, 30.749510>,  <27.234001, 37.716671, 30.561007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881662, 37.698696, 30.749510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366390, 0.695092, -0.618551,
		-0.299774, -0.717515, -0.628735,
		-0.880849, -0.044937, 0.471260,
		26.617407, 37.685215, 30.890888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836712, 37.661552, 30.022020>,  <27.234001, 37.716671, 30.561007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836712, 37.661552, 30.022020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595970, 37.753487, 30.327948>,  <26.451525, 37.808647, 30.511503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595970, 37.753487, 30.327948>,  <26.836712, 37.661552, 30.022020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595970, 37.753487, 30.327948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385333, 0.755258, -0.530192,
		-0.699494, -0.613807, -0.365990,
		-0.601853, 0.229838, 0.764819,
		26.415415, 37.822437, 30.557394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114756, 37.715351, 29.803814>,  <26.836712, 37.661552, 30.022020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114756, 37.715351, 29.803814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132641, 37.957336, 30.121813>,  <26.143372, 38.102528, 30.312613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132641, 37.957336, 30.121813>,  <26.114756, 37.715351, 29.803814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132641, 37.957336, 30.121813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328326, 0.760485, -0.560235,
		-0.943506, -0.235970, 0.232627,
		0.044711, 0.604963, 0.794997,
		26.146053, 38.138824, 30.360312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437580, 38.158634, 29.798985>,  <26.114756, 37.715351, 29.803814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437580, 38.158634, 29.798985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656343, 38.351166, 30.072981>,  <25.787601, 38.466686, 30.237379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656343, 38.351166, 30.072981>,  <25.437580, 38.158634, 29.798985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656343, 38.351166, 30.072981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389393, 0.870559, -0.300832,
		-0.741125, -0.102204, 0.663542,
		0.546907, 0.481333, 0.684991,
		25.820415, 38.495567, 30.278479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087994, 38.704998, 30.174904>,  <25.437580, 38.158634, 29.798985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087994, 38.704998, 30.174904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468283, 38.828964, 30.178520>,  <25.696455, 38.903343, 30.180689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468283, 38.828964, 30.178520>,  <25.087994, 38.704998, 30.174904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468283, 38.828964, 30.178520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286481, 0.889232, -0.356645,
		-0.118568, 0.336480, 0.934196,
		0.950721, 0.309917, 0.009039,
		25.753498, 38.921940, 30.181232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.009531, 39.474957, 30.364511>,  <25.087994, 38.704998, 30.174904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.009531, 39.474957, 30.364511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379335, 39.464855, 30.212385>,  <25.601217, 39.458794, 30.121109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379335, 39.464855, 30.212385>,  <25.009531, 39.474957, 30.364511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379335, 39.464855, 30.212385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206823, 0.804887, -0.556220,
		0.320162, 0.592890, 0.738904,
		0.924511, -0.025258, -0.380317,
		25.656689, 39.457279, 30.098289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484615, 40.092937, 30.454599>,  <25.009531, 39.474957, 30.364511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484615, 40.092937, 30.454599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529213, 39.901287, 30.106344>,  <25.555971, 39.786297, 29.897392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529213, 39.901287, 30.106344>,  <25.484615, 40.092937, 30.454599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529213, 39.901287, 30.106344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313570, 0.814380, -0.488324,
		0.942997, 0.327449, -0.059443,
		0.111492, -0.479127, -0.870636,
		25.562660, 39.757549, 29.845154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190115, 40.277325, 31.166639>,  <25.484615, 40.092937, 30.454599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190115, 40.277325, 31.166639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430546, 40.074181, 31.413469>,  <25.574804, 39.952293, 31.561567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430546, 40.074181, 31.413469>,  <25.190115, 40.277325, 31.166639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430546, 40.074181, 31.413469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639968, 0.768349, 0.008985,
		-0.478693, 0.389508, 0.786853,
		0.601078, -0.507861, 0.617076,
		25.610868, 39.921822, 31.598593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392487, 40.737591, 31.576521>,  <25.190115, 40.277325, 31.166639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392487, 40.737591, 31.576521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665611, 40.445366, 31.579151>,  <25.829485, 40.270031, 31.580730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665611, 40.445366, 31.579151>,  <25.392487, 40.737591, 31.576521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665611, 40.445366, 31.579151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730105, 0.682654, 0.030502,
		-0.026774, -0.016025, 0.999513,
		0.682810, -0.730567, 0.006577,
		25.870455, 40.226196, 31.581123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972328, 41.046349, 31.827333>,  <25.392487, 40.737591, 31.576521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972328, 41.046349, 31.827333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129124, 40.688934, 31.739754>,  <26.223200, 40.474487, 31.687206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129124, 40.688934, 31.739754>,  <25.972328, 41.046349, 31.827333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129124, 40.688934, 31.739754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916679, 0.399477, 0.010863,
		0.077759, -0.204966, 0.975675,
		0.391987, -0.893536, -0.218951,
		26.246719, 40.420872, 31.674068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479944, 40.869469, 32.325008>,  <25.972328, 41.046349, 31.827333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479944, 40.869469, 32.325008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573511, 40.664585, 31.994453>,  <26.629650, 40.541653, 31.796120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573511, 40.664585, 31.994453>,  <26.479944, 40.869469, 32.325008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573511, 40.664585, 31.994453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922429, 0.385533, 0.022140,
		0.307261, -0.767466, 0.562660,
		0.233915, -0.512211, -0.826392,
		26.643686, 40.510921, 31.746536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950249, 40.419643, 32.530067>,  <26.479944, 40.869469, 32.325008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950249, 40.419643, 32.530067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008192, 40.532993, 32.150864>,  <27.042957, 40.601006, 31.923342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008192, 40.532993, 32.150864>,  <26.950249, 40.419643, 32.530067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008192, 40.532993, 32.150864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886987, 0.387406, 0.251337,
		0.438486, -0.877276, -0.195235,
		0.144857, 0.283379, -0.948005,
		27.051649, 40.618008, 31.866463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583319, 40.192917, 32.334858>,  <26.950249, 40.419643, 32.530067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583319, 40.192917, 32.334858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508495, 40.511948, 32.105465>,  <27.463600, 40.703365, 31.967829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508495, 40.511948, 32.105465>,  <27.583319, 40.192917, 32.334858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508495, 40.511948, 32.105465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962738, 0.264908, 0.054396,
		0.195305, -0.541937, -0.817411,
		-0.187059, 0.797576, -0.573481,
		27.452377, 40.751221, 31.933420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919935, 40.024143, 31.670809>,  <27.583319, 40.192917, 32.334858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919935, 40.024143, 31.670809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938463, 40.400528, 31.804939>,  <27.949579, 40.626358, 31.885418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938463, 40.400528, 31.804939>,  <27.919935, 40.024143, 31.670809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938463, 40.400528, 31.804939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995570, -0.015990, -0.092650,
		-0.081818, 0.338130, -0.937536,
		0.046319, 0.940963, 0.335324,
		27.952358, 40.682816, 31.905537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322477, 40.348343, 31.220127>,  <27.919935, 40.024143, 31.670809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322477, 40.348343, 31.220127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318384, 40.577469, 31.547976>,  <28.315928, 40.714947, 31.744684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318384, 40.577469, 31.547976>,  <28.322477, 40.348343, 31.220127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318384, 40.577469, 31.547976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999045, -0.028968, 0.032719,
		0.042485, 0.819171, -0.571974,
		-0.010233, 0.572817, 0.819619,
		28.315313, 40.749313, 31.793861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762566, 40.754963, 30.993151>,  <28.322477, 40.348343, 31.220127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762566, 40.754963, 30.993151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736448, 40.756493, 31.392294>,  <28.720778, 40.757408, 31.631781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736448, 40.756493, 31.392294>,  <28.762566, 40.754963, 30.993151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736448, 40.756493, 31.392294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887421, -0.457063, 0.059816,
		0.456313, 0.889426, 0.026451,
		-0.065292, 0.003821, 0.997859,
		28.716862, 40.757641, 31.691652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498440, 40.999729, 31.399538>,  <28.762566, 40.754963, 30.993151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498440, 40.999729, 31.399538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290520, 40.781094, 31.662157>,  <29.165768, 40.649914, 31.819729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290520, 40.781094, 31.662157>,  <29.498440, 40.999729, 31.399538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290520, 40.781094, 31.662157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842549, -0.454968, 0.288297,
		0.141128, 0.703029, 0.697017,
		-0.519802, -0.546584, 0.656545,
		29.134579, 40.617119, 31.859121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958399, 40.908928, 31.866066>,  <29.498440, 40.999729, 31.399538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958399, 40.908928, 31.866066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683086, 40.651310, 31.999619>,  <29.517899, 40.496738, 32.079750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683086, 40.651310, 31.999619>,  <29.958399, 40.908928, 31.866066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683086, 40.651310, 31.999619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721537, -0.560044, 0.407106,
		-0.075206, 0.521110, 0.850170,
		-0.688280, -0.644046, 0.333881,
		29.476603, 40.458096, 32.099781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145420, 40.722557, 32.636738>,  <29.958399, 40.908928, 31.866066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145420, 40.722557, 32.636738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926983, 40.426334, 32.480095>,  <29.795921, 40.248600, 32.386108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926983, 40.426334, 32.480095>,  <30.145420, 40.722557, 32.636738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926983, 40.426334, 32.480095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564349, -0.670687, 0.481341,
		-0.619106, 0.041855, 0.784192,
		-0.546093, -0.740559, -0.391605,
		29.763155, 40.204166, 32.362614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030886, 40.214020, 33.213268>,  <30.145420, 40.722557, 32.636738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030886, 40.214020, 33.213268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992771, 40.032803, 32.858715>,  <29.969902, 39.924072, 32.645985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992771, 40.032803, 32.858715>,  <30.030886, 40.214020, 33.213268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992771, 40.032803, 32.858715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522593, -0.780627, 0.342809,
		-0.847241, -0.430551, 0.311141,
		-0.095289, -0.453042, -0.886382,
		29.964184, 39.896889, 32.592800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740679, 39.567879, 33.317425>,  <30.030886, 40.214020, 33.213268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740679, 39.567879, 33.317425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942947, 39.583420, 32.972683>,  <30.064308, 39.592743, 32.765839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942947, 39.583420, 32.972683>,  <29.740679, 39.567879, 33.317425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942947, 39.583420, 32.972683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300158, -0.944497, 0.133534,
		-0.808828, -0.326216, -0.489265,
		0.505670, 0.038851, -0.861852,
		30.094648, 39.595074, 32.714127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603241, 38.909962, 33.098179>,  <29.740679, 39.567879, 33.317425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603241, 38.909962, 33.098179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893143, 39.001244, 32.838131>,  <30.067083, 39.056011, 32.682102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893143, 39.001244, 32.838131>,  <29.603241, 38.909962, 33.098179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893143, 39.001244, 32.838131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348173, -0.935523, 0.059761,
		-0.594567, -0.269667, -0.757476,
		0.724752, 0.228201, -0.650122,
		30.110569, 39.069702, 32.643093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619089, 38.398037, 32.611748>,  <29.603241, 38.909962, 33.098179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619089, 38.398037, 32.611748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984997, 38.553196, 32.566612>,  <30.204542, 38.646290, 32.539532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984997, 38.553196, 32.566612>,  <29.619089, 38.398037, 32.611748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984997, 38.553196, 32.566612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396605, -0.915447, 0.068280,
		-0.076815, -0.107214, -0.991264,
		0.914770, 0.387895, -0.112842,
		30.259428, 38.669563, 32.532761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793295, 38.131485, 32.031994>,  <29.619089, 38.398037, 32.611748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793295, 38.131485, 32.031994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094244, 38.225082, 32.278305>,  <30.274813, 38.281239, 32.426094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094244, 38.225082, 32.278305>,  <29.793295, 38.131485, 32.031994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094244, 38.225082, 32.278305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256881, -0.964998, 0.052828,
		0.606588, 0.118436, -0.786145,
		0.752371, 0.233991, 0.615780,
		30.319956, 38.295280, 32.463039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463718, 37.648567, 31.887007>,  <29.793295, 38.131485, 32.031994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463718, 37.648567, 31.887007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568859, 37.809349, 32.237854>,  <30.631945, 37.905819, 32.448364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568859, 37.809349, 32.237854>,  <30.463718, 37.648567, 31.887007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568859, 37.809349, 32.237854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288773, -0.900189, 0.325990,
		0.920608, 0.167601, -0.352692,
		0.262853, 0.401957, 0.877120,
		30.647715, 37.929935, 32.500988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162201, 37.511639, 32.041222>,  <30.463718, 37.648567, 31.887007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162201, 37.511639, 32.041222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964607, 37.580059, 32.382214>,  <30.846050, 37.621113, 32.586807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964607, 37.580059, 32.382214>,  <31.162201, 37.511639, 32.041222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964607, 37.580059, 32.382214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223169, -0.922667, 0.314454,
		0.840343, 0.345582, 0.417609,
		-0.493984, 0.171052, 0.852479,
		30.816412, 37.631374, 32.637959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552956, 37.165909, 32.486778>,  <31.162201, 37.511639, 32.041222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552956, 37.165909, 32.486778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222397, 37.227852, 32.703327>,  <31.024061, 37.265018, 32.833256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222397, 37.227852, 32.703327>,  <31.552956, 37.165909, 32.486778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222397, 37.227852, 32.703327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037788, -0.944021, 0.327714,
		0.561820, 0.291279, 0.774283,
		-0.826396, 0.154857, 0.541377,
		30.974478, 37.274307, 32.865742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711384, 37.012436, 33.180164>,  <31.552956, 37.165909, 32.486778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711384, 37.012436, 33.180164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316288, 36.969357, 33.134968>,  <31.079229, 36.943508, 33.107849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316288, 36.969357, 33.134968>,  <31.711384, 37.012436, 33.180164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316288, 36.969357, 33.134968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058279, -0.925950, 0.373121,
		-0.144810, 0.361962, 0.920876,
		-0.987742, -0.107699, -0.112992,
		31.019966, 36.937046, 33.101070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572449, 36.652122, 33.833359>,  <31.711384, 37.012436, 33.180164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572449, 36.652122, 33.833359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248680, 36.607533, 33.602737>,  <31.054419, 36.580780, 33.464363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248680, 36.607533, 33.602737>,  <31.572449, 36.652122, 33.833359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248680, 36.607533, 33.602737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041140, -0.968639, 0.245043,
		-0.585787, 0.222062, 0.779450,
		-0.809420, -0.111476, -0.576552,
		31.005854, 36.574089, 33.429771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008951, 36.223679, 34.272339>,  <31.572449, 36.652122, 33.833359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008951, 36.223679, 34.272339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914881, 36.186012, 33.885387>,  <30.858438, 36.163410, 33.653217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914881, 36.186012, 33.885387>,  <31.008951, 36.223679, 34.272339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914881, 36.186012, 33.885387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155441, -0.978841, 0.133073,
		-0.959443, 0.181666, 0.215561,
		-0.235174, -0.094169, -0.967381,
		30.844328, 36.157761, 33.595173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474243, 35.755817, 34.328930>,  <31.008951, 36.223679, 34.272339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474243, 35.755817, 34.328930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590219, 35.725079, 33.947350>,  <30.659805, 35.706635, 33.718399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590219, 35.725079, 33.947350>,  <30.474243, 35.755817, 34.328930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590219, 35.725079, 33.947350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202484, -0.979132, 0.017329,
		-0.935379, 0.188137, -0.299449,
		0.289940, -0.076843, -0.953955,
		30.677202, 35.702026, 33.661163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927122, 35.453171, 33.983524>,  <30.474243, 35.755817, 34.328930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927122, 35.453171, 33.983524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241404, 35.380585, 33.746971>,  <30.429974, 35.337032, 33.605038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241404, 35.380585, 33.746971>,  <29.927122, 35.453171, 33.983524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241404, 35.380585, 33.746971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185683, -0.981105, 0.054357,
		-0.590075, 0.067102, -0.804555,
		0.785706, -0.181467, -0.591385,
		30.477116, 35.326145, 33.569557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699999, 35.155357, 33.419472>,  <29.927122, 35.453171, 33.983524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699999, 35.155357, 33.419472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080536, 35.033531, 33.438175>,  <30.308857, 34.960434, 33.449398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080536, 35.033531, 33.438175>,  <29.699999, 35.155357, 33.419472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080536, 35.033531, 33.438175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271868, -0.901072, -0.337870,
		0.145041, 0.308717, -0.940030,
		0.951342, -0.304569, 0.046762,
		30.365938, 34.942162, 33.452206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668068, 34.632729, 32.856297>,  <29.699999, 35.155357, 33.419472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668068, 34.632729, 32.856297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992151, 34.538120, 33.070820>,  <30.186602, 34.481358, 33.199532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992151, 34.538120, 33.070820>,  <29.668068, 34.632729, 32.856297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992151, 34.538120, 33.070820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251880, -0.966674, -0.045796,
		0.529264, -0.097981, -0.842781,
		0.810207, -0.236518, 0.536305,
		30.235214, 34.467163, 33.231712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838064, 34.103443, 32.485191>,  <29.668068, 34.632729, 32.856297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838064, 34.103443, 32.485191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041475, 34.076283, 32.828537>,  <30.163523, 34.059986, 33.034546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041475, 34.076283, 32.828537>,  <29.838064, 34.103443, 32.485191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041475, 34.076283, 32.828537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169290, -0.985313, 0.022355,
		0.844238, -0.156681, -0.512555,
		0.508529, -0.067898, 0.858363,
		30.194035, 34.055912, 33.086044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341751, 33.607273, 32.316944>,  <29.838064, 34.103443, 32.485191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341751, 33.607273, 32.316944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274488, 33.626827, 32.710762>,  <30.234131, 33.638557, 32.947052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274488, 33.626827, 32.710762>,  <30.341751, 33.607273, 32.316944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274488, 33.626827, 32.710762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224426, -0.974440, 0.010049,
		0.959874, -0.219268, 0.174826,
		-0.168154, 0.048882, 0.984548,
		30.224043, 33.641491, 33.006126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646236, 33.071548, 32.520317>,  <30.341751, 33.607273, 32.316944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646236, 33.071548, 32.520317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400011, 33.149750, 32.825699>,  <30.252275, 33.196671, 33.008926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400011, 33.149750, 32.825699>,  <30.646236, 33.071548, 32.520317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400011, 33.149750, 32.825699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301735, -0.953391, 0.000857,
		0.728039, -0.229833, 0.645861,
		-0.615561, 0.195503, 0.763455,
		30.215343, 33.208401, 33.054737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611288, 32.491776, 32.946667>,  <30.646236, 33.071548, 32.520317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611288, 32.491776, 32.946667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270262, 32.687374, 33.020439>,  <30.065645, 32.804733, 33.064701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270262, 32.687374, 33.020439>,  <30.611288, 32.491776, 32.946667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270262, 32.687374, 33.020439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460809, -0.869851, 0.176110,
		0.246544, 0.065159, 0.966939,
		-0.852567, 0.488993, 0.184430,
		30.014492, 32.834072, 33.075768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398865, 32.662689, 32.856678>,  <30.611288, 32.491776, 32.946667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398865, 32.662689, 32.856678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744446, 32.862526, 32.881947>,  <31.951796, 32.982430, 32.897110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744446, 32.862526, 32.881947>,  <31.398865, 32.662689, 32.856678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744446, 32.862526, 32.881947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041333, -0.195386, 0.979855,
		0.501871, -0.843939, -0.189454,
		0.863954, 0.499591, 0.063176,
		32.003632, 33.012402, 32.900898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657490, 32.529648, 33.472504>,  <31.398865, 32.662689, 32.856678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657490, 32.529648, 33.472504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921381, 32.815983, 33.380997>,  <32.079716, 32.987785, 33.326092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921381, 32.815983, 33.380997>,  <31.657490, 32.529648, 33.472504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921381, 32.815983, 33.380997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176859, 0.147977, 0.973049,
		0.730397, -0.682408, -0.028978,
		0.659728, 0.715837, -0.228772,
		32.119301, 33.030735, 33.312366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296566, 32.454685, 33.756584>,  <31.657490, 32.529648, 33.472504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296566, 32.454685, 33.756584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228905, 32.848648, 33.741940>,  <32.188309, 33.085026, 33.733154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228905, 32.848648, 33.741940>,  <32.296566, 32.454685, 33.756584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228905, 32.848648, 33.741940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195004, 0.069857, 0.978311,
		0.966106, 0.158345, -0.203878,
		-0.169153, 0.984910, -0.036612,
		32.178158, 33.144119, 33.730957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835827, 32.838875, 34.191998>,  <32.296566, 32.454685, 33.756584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835827, 32.838875, 34.191998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511036, 33.070808, 34.165195>,  <32.316162, 33.209969, 34.149117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511036, 33.070808, 34.165195>,  <32.835827, 32.838875, 34.191998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511036, 33.070808, 34.165195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074349, 0.216599, 0.973426,
		0.578937, 0.785416, -0.218983,
		-0.811976, 0.579833, -0.067002,
		32.267445, 33.244759, 34.145096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862377, 33.632397, 34.524696>,  <32.835827, 32.838875, 34.191998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862377, 33.632397, 34.524696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492352, 33.484859, 34.560959>,  <32.270336, 33.396336, 34.582714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492352, 33.484859, 34.560959>,  <32.862377, 33.632397, 34.524696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492352, 33.484859, 34.560959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023895, 0.294717, 0.955286,
		-0.379070, 0.881530, -0.281444,
		-0.925059, -0.368845, 0.090654,
		32.214832, 33.374207, 34.588154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397209, 34.121784, 34.897751>,  <32.862377, 33.632397, 34.524696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397209, 34.121784, 34.897751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238873, 33.760323, 34.963127>,  <32.143871, 33.543446, 35.002354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238873, 33.760323, 34.963127>,  <32.397209, 34.121784, 34.897751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238873, 33.760323, 34.963127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115692, 0.225633, 0.967318,
		-0.911000, 0.364000, -0.193862,
		-0.395846, -0.903656, 0.163440,
		32.120117, 33.489227, 35.012157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673342, 34.121395, 35.247936>,  <32.397209, 34.121784, 34.897751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673342, 34.121395, 35.247936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835474, 33.768665, 35.344345>,  <31.932753, 33.557026, 35.402191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835474, 33.768665, 35.344345>,  <31.673342, 34.121395, 35.247936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835474, 33.768665, 35.344345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196593, 0.173405, 0.965030,
		-0.892782, -0.438539, -0.103074,
		0.405329, -0.881825, 0.241027,
		31.957073, 33.504120, 35.416653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253988, 33.891975, 35.806862>,  <31.673342, 34.121395, 35.247936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253988, 33.891975, 35.806862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587315, 33.673737, 35.842434>,  <31.787310, 33.542793, 35.863777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587315, 33.673737, 35.842434>,  <31.253988, 33.891975, 35.806862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587315, 33.673737, 35.842434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054848, 0.241688, 0.968803,
		-0.550071, -0.802439, 0.231327,
		0.833315, -0.545598, 0.088933,
		31.837309, 33.510056, 35.869114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179493, 33.514542, 36.411663>,  <31.253988, 33.891975, 35.806862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179493, 33.514542, 36.411663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575186, 33.482128, 36.362919>,  <31.812601, 33.462681, 36.333672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575186, 33.482128, 36.362919>,  <31.179493, 33.514542, 36.411663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575186, 33.482128, 36.362919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126343, 0.052650, 0.990588,
		-0.073856, -0.995320, 0.062321,
		0.989234, -0.081035, -0.121863,
		31.871956, 33.457817, 36.326359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399538, 33.344784, 37.047600>,  <31.179493, 33.514542, 36.411663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399538, 33.344784, 37.047600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767641, 33.359867, 36.891804>,  <31.988503, 33.368916, 36.798325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767641, 33.359867, 36.891804>,  <31.399538, 33.344784, 37.047600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767641, 33.359867, 36.891804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386603, 0.066385, 0.919854,
		0.060522, -0.997082, 0.046522,
		0.920258, 0.037686, -0.389492,
		32.043716, 33.371181, 36.774956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775042, 32.742500, 37.385853>,  <31.399538, 33.344784, 37.047600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775042, 32.742500, 37.385853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012798, 33.025921, 37.233719>,  <32.155453, 33.195972, 37.142437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012798, 33.025921, 37.233719>,  <31.775042, 32.742500, 37.385853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012798, 33.025921, 37.233719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492893, 0.052708, 0.868492,
		0.635415, -0.703692, -0.317909,
		0.594394, 0.708548, -0.380336,
		32.191116, 33.238483, 37.119617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524414, 32.536606, 37.453148>,  <31.775042, 32.742500, 37.385853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524414, 32.536606, 37.453148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520695, 32.935036, 37.417927>,  <32.518463, 33.174091, 37.396793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520695, 32.935036, 37.417927>,  <32.524414, 32.536606, 37.453148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520695, 32.935036, 37.417927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464739, 0.082268, 0.881618,
		0.885399, -0.032725, -0.463679,
		-0.009295, 0.996073, -0.088049,
		32.517906, 33.233856, 37.391514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289864, 32.746761, 37.603741>,  <32.524414, 32.536606, 37.453148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289864, 32.746761, 37.603741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041016, 33.055599, 37.655647>,  <32.891708, 33.240902, 37.686790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041016, 33.055599, 37.655647>,  <33.289864, 32.746761, 37.603741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041016, 33.055599, 37.655647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379143, 0.152084, 0.912755,
		0.684999, 0.617040, -0.387349,
		-0.622115, 0.772096, 0.129769,
		32.854382, 33.287228, 37.694576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726528, 33.335922, 37.868546>,  <33.289864, 32.746761, 37.603741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726528, 33.335922, 37.868546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346222, 33.407562, 37.969719>,  <33.118038, 33.450546, 38.030422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346222, 33.407562, 37.969719>,  <33.726528, 33.335922, 37.868546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346222, 33.407562, 37.969719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281243, 0.155721, 0.946918,
		0.130206, 0.971429, -0.198424,
		-0.950762, 0.179100, 0.252932,
		33.060993, 33.461292, 38.045597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710938, 34.002975, 38.143707>,  <33.726528, 33.335922, 37.868546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710938, 34.002975, 38.143707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379017, 33.831417, 38.286522>,  <33.179863, 33.728481, 38.372211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379017, 33.831417, 38.286522>,  <33.710938, 34.002975, 38.143707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379017, 33.831417, 38.286522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190779, 0.383215, 0.903742,
		-0.524428, 0.818045, -0.236170,
		-0.829806, -0.428892, 0.357035,
		33.130074, 33.702751, 38.393631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289803, 34.510880, 38.549400>,  <33.710938, 34.002975, 38.143707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289803, 34.510880, 38.549400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183086, 34.144295, 38.668678>,  <33.119057, 33.924343, 38.740246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183086, 34.144295, 38.668678>,  <33.289803, 34.510880, 38.549400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183086, 34.144295, 38.668678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015098, 0.313346, 0.949519,
		-0.963637, 0.248818, -0.097434,
		-0.266788, -0.916463, 0.298195,
		33.103050, 33.869354, 38.758137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876194, 34.565868, 39.179043>,  <33.289803, 34.510880, 38.549400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876194, 34.565868, 39.179043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983227, 34.181183, 39.202740>,  <33.047447, 33.950371, 39.216957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983227, 34.181183, 39.202740>,  <32.876194, 34.565868, 39.179043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983227, 34.181183, 39.202740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005071, 0.060083, 0.998180,
		-0.963522, -0.267395, 0.011200,
		0.267582, -0.961712, 0.059247,
		33.063499, 33.892670, 39.220512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338001, 34.209721, 39.526978>,  <32.876194, 34.565868, 39.179043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338001, 34.209721, 39.526978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669823, 33.998455, 39.599514>,  <32.868916, 33.871696, 39.643036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669823, 33.998455, 39.599514>,  <32.338001, 34.209721, 39.526978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669823, 33.998455, 39.599514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179347, 0.055544, 0.982217,
		-0.528843, -0.847324, -0.048648,
		0.829554, -0.528163, 0.181339,
		32.918690, 33.840008, 39.653915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117573, 33.767990, 40.101429>,  <32.338001, 34.209721, 39.526978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117573, 33.767990, 40.101429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515705, 33.729424, 40.099480>,  <32.754585, 33.706284, 40.098312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515705, 33.729424, 40.099480>,  <32.117573, 33.767990, 40.101429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515705, 33.729424, 40.099480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005884, -0.110946, 0.993809,
		-0.096358, -0.989139, -0.110995,
		0.995329, -0.096414, -0.004871,
		32.814304, 33.700500, 40.098019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242023, 33.138397, 40.439270>,  <32.117573, 33.767990, 40.101429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242023, 33.138397, 40.439270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579067, 33.353165, 40.455875>,  <32.781296, 33.482025, 40.465839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579067, 33.353165, 40.455875>,  <32.242023, 33.138397, 40.439270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579067, 33.353165, 40.455875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029585, -0.030816, 0.999087,
		0.537705, -0.843073, -0.010081,
		0.842614, 0.536916, 0.041512,
		32.831852, 33.514240, 40.468330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557323, 32.876339, 40.966808>,  <32.242023, 33.138397, 40.439270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557323, 32.876339, 40.966808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729961, 33.235970, 40.937428>,  <32.833542, 33.451748, 40.919800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729961, 33.235970, 40.937428>,  <32.557323, 32.876339, 40.966808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729961, 33.235970, 40.937428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009729, 0.076787, 0.997000,
		0.902017, -0.431011, 0.024394,
		0.431591, 0.899073, -0.073456,
		32.859440, 33.505692, 40.915390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065666, 32.834034, 41.559155>,  <32.557323, 32.876339, 40.966808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065666, 32.834034, 41.559155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056515, 33.221977, 41.462112>,  <33.051025, 33.454742, 41.403889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056515, 33.221977, 41.462112>,  <33.065666, 32.834034, 41.559155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056515, 33.221977, 41.462112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039728, 0.241590, 0.969565,
		0.998949, 0.031818, 0.033004,
		-0.022876, 0.969856, -0.242600,
		33.049652, 33.512936, 41.389332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525127, 33.229496, 41.994568>,  <33.065666, 32.834034, 41.559155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525127, 33.229496, 41.994568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268509, 33.509499, 41.869083>,  <33.114536, 33.677502, 41.793793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268509, 33.509499, 41.869083>,  <33.525127, 33.229496, 41.994568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268509, 33.509499, 41.869083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067314, 0.356008, 0.932055,
		0.764126, 0.619073, -0.181275,
		-0.641546, 0.700005, -0.313707,
		33.076046, 33.719501, 41.774971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795910, 33.875721, 42.221336>,  <33.525127, 33.229496, 41.994568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795910, 33.875721, 42.221336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399208, 33.887627, 42.171467>,  <33.161186, 33.894772, 42.141544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399208, 33.887627, 42.171467>,  <33.795910, 33.875721, 42.221336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399208, 33.887627, 42.171467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115947, 0.206299, 0.971595,
		0.054640, 0.978036, -0.201146,
		-0.991751, 0.029765, -0.124673,
		33.101681, 33.896557, 42.134064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595657, 34.252392, 42.740738>,  <33.795910, 33.875721, 42.221336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595657, 34.252392, 42.740738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250046, 34.078842, 42.638599>,  <33.042679, 33.974712, 42.577316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250046, 34.078842, 42.638599>,  <33.595657, 34.252392, 42.740738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250046, 34.078842, 42.638599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249215, -0.072085, 0.965762,
		-0.437425, 0.898085, -0.045844,
		-0.864032, -0.433873, -0.255348,
		32.990837, 33.948681, 42.561996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207771, 34.365822, 43.239986>,  <33.595657, 34.252392, 42.740738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207771, 34.365822, 43.239986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937531, 34.114048, 43.086433>,  <32.775387, 33.962982, 42.994301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937531, 34.114048, 43.086433>,  <33.207771, 34.365822, 43.239986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937531, 34.114048, 43.086433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304450, -0.236036, 0.922820,
		-0.671470, 0.740333, -0.032166,
		-0.675602, -0.629439, -0.383886,
		32.734848, 33.925217, 42.971268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526520, 34.583778, 43.406677>,  <33.207771, 34.365822, 43.239986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526520, 34.583778, 43.406677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488434, 34.197052, 43.311855>,  <32.465584, 33.965015, 43.254963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488434, 34.197052, 43.311855>,  <32.526520, 34.583778, 43.406677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488434, 34.197052, 43.311855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457892, -0.168913, 0.872814,
		-0.883895, 0.191646, -0.426616,
		-0.095211, -0.966819, -0.237055,
		32.459869, 33.907005, 43.240738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717453, 34.412331, 43.398678>,  <32.526520, 34.583778, 43.406677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717453, 34.412331, 43.398678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937536, 34.083042, 43.454655>,  <32.069588, 33.885471, 43.488243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937536, 34.083042, 43.454655>,  <31.717453, 34.412331, 43.398678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937536, 34.083042, 43.454655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502113, -0.192260, 0.843160,
		-0.667197, -0.534182, -0.519131,
		0.550209, -0.823216, 0.139945,
		32.102600, 33.836079, 43.496639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302345, 33.937210, 43.604500>,  <31.717453, 34.412331, 43.398678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302345, 33.937210, 43.604500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652494, 33.787876, 43.727360>,  <31.862585, 33.698277, 43.801075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652494, 33.787876, 43.727360>,  <31.302345, 33.937210, 43.604500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652494, 33.787876, 43.727360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393238, -0.180296, 0.901586,
		-0.281221, -0.910006, -0.304637,
		0.875374, -0.373339, 0.307146,
		31.915106, 33.675873, 43.819504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026123, 33.592041, 44.081200>,  <31.302345, 33.937210, 43.604500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026123, 33.592041, 44.081200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419094, 33.584236, 44.155445>,  <31.654877, 33.579552, 44.199993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419094, 33.584236, 44.155445>,  <31.026123, 33.592041, 44.081200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419094, 33.584236, 44.155445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186029, -0.182430, 0.965460,
		0.015020, -0.983025, -0.182855,
		0.982430, -0.019515, 0.185611,
		31.713823, 33.578381, 44.211128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057070, 33.008541, 44.414658>,  <31.026123, 33.592041, 44.081200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057070, 33.008541, 44.414658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398212, 33.195751, 44.507252>,  <31.602898, 33.308079, 44.562809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398212, 33.195751, 44.507252>,  <31.057070, 33.008541, 44.414658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398212, 33.195751, 44.507252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186521, -0.141001, 0.972280,
		0.487692, -0.872393, -0.032957,
		0.852858, 0.468026, 0.231484,
		31.654070, 33.336159, 44.576698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379583, 32.589035, 44.934586>,  <31.057070, 33.008541, 44.414658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379583, 32.589035, 44.934586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512444, 32.962807, 44.985989>,  <31.592159, 33.187069, 45.016830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512444, 32.962807, 44.985989>,  <31.379583, 32.589035, 44.934586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512444, 32.962807, 44.985989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322104, -0.015687, 0.946574,
		0.886524, -0.355801, 0.295773,
		0.332152, 0.934430, 0.128512,
		31.612089, 33.243137, 45.024544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832237, 32.617950, 45.581776>,  <31.379583, 32.589035, 44.934586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832237, 32.617950, 45.581776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717064, 32.995544, 45.517292>,  <31.647959, 33.222099, 45.478603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717064, 32.995544, 45.517292>,  <31.832237, 32.617950, 45.581776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717064, 32.995544, 45.517292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138871, 0.125400, 0.982339,
		0.947528, 0.305237, 0.094985,
		-0.287935, 0.943984, -0.161208,
		31.630684, 33.278740, 45.468929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232929, 32.878384, 46.066895>,  <31.832237, 32.617950, 45.581776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232929, 32.878384, 46.066895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931637, 33.118099, 45.958454>,  <31.750862, 33.261929, 45.893391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931637, 33.118099, 45.958454>,  <32.232929, 32.878384, 46.066895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931637, 33.118099, 45.958454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228996, 0.147455, 0.962194,
		0.616612, 0.786832, 0.026169,
		-0.753226, 0.599293, -0.271104,
		31.705669, 33.297886, 45.877125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230545, 33.566273, 46.453129>,  <32.232929, 32.878384, 46.066895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230545, 33.566273, 46.453129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855110, 33.520985, 46.322750>,  <31.629850, 33.493813, 46.244522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855110, 33.520985, 46.322750>,  <32.230545, 33.566273, 46.453129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855110, 33.520985, 46.322750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343880, 0.229326, 0.910580,
		-0.028345, 0.966743, -0.254175,
		-0.938586, -0.113216, -0.325943,
		31.573534, 33.487019, 46.224968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951950, 34.136272, 46.721867>,  <32.230545, 33.566273, 46.453129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951950, 34.136272, 46.721867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662878, 33.869926, 46.647717>,  <31.489435, 33.710121, 46.603226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662878, 33.869926, 46.647717>,  <31.951950, 34.136272, 46.721867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662878, 33.869926, 46.647717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332320, 0.099567, 0.937896,
		-0.606052, 0.739401, -0.293234,
		-0.722678, -0.665862, -0.185376,
		31.446075, 33.670166, 46.592102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635426, 34.200459, 47.326008>,  <31.951950, 34.136272, 46.721867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635426, 34.200459, 47.326008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480118, 33.876488, 47.150162>,  <31.386932, 33.682106, 47.044655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480118, 33.876488, 47.150162>,  <31.635426, 34.200459, 47.326008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480118, 33.876488, 47.150162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289362, -0.345767, 0.892589,
		-0.874937, 0.473774, -0.100111,
		-0.388271, -0.809928, -0.439617,
		31.363636, 33.633511, 47.018276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998001, 34.026886, 47.633759>,  <31.635426, 34.200459, 47.326008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998001, 34.026886, 47.633759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099245, 33.678860, 47.464561>,  <31.159992, 33.470043, 47.363041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099245, 33.678860, 47.464561>,  <30.998001, 34.026886, 47.633759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099245, 33.678860, 47.464561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183903, -0.472534, 0.861911,
		-0.949797, -0.140369, -0.279610,
		0.253111, -0.870062, -0.422998,
		31.175179, 33.417843, 47.337662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561163, 33.572044, 47.940281>,  <30.998001, 34.026886, 47.633759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561163, 33.572044, 47.940281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844950, 33.329590, 47.796471>,  <31.015221, 33.184116, 47.710186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844950, 33.329590, 47.796471>,  <30.561163, 33.572044, 47.940281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844950, 33.329590, 47.796471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060963, -0.561021, 0.825554,
		-0.702099, -0.563783, -0.434976,
		0.709464, -0.606138, -0.359523,
		31.057789, 33.147747, 47.688614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406536, 32.936771, 48.194118>,  <30.561163, 33.572044, 47.940281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406536, 32.936771, 48.194118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797592, 32.897499, 48.119732>,  <31.032225, 32.873936, 48.075100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797592, 32.897499, 48.119732>,  <30.406536, 32.936771, 48.194118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797592, 32.897499, 48.119732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106039, -0.533507, 0.839122,
		-0.181598, -0.840078, -0.511166,
		0.977639, -0.098179, -0.185965,
		31.090883, 32.868046, 48.063942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569920, 32.229206, 48.274914>,  <30.406536, 32.936771, 48.194118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569920, 32.229206, 48.274914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933939, 32.392273, 48.304909>,  <31.152349, 32.490112, 48.322906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933939, 32.392273, 48.304909>,  <30.569920, 32.229206, 48.274914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933939, 32.392273, 48.304909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151820, -0.496148, 0.854861,
		0.385702, -0.766580, -0.513410,
		0.910047, 0.407667, 0.074984,
		31.206953, 32.514572, 48.327404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978115, 31.784340, 48.455025>,  <30.569920, 32.229206, 48.274914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978115, 31.784340, 48.455025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175604, 32.108421, 48.581394>,  <31.294098, 32.302872, 48.657215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175604, 32.108421, 48.581394>,  <30.978115, 31.784340, 48.455025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175604, 32.108421, 48.581394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072068, -0.400161, 0.913607,
		0.866628, -0.428301, -0.255958,
		0.493723, 0.810203, 0.315923,
		31.323721, 32.351482, 48.676170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731834, 31.563848, 48.829418>,  <30.978115, 31.784340, 48.455025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731834, 31.563848, 48.829418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647379, 31.935898, 48.949612>,  <31.596704, 32.159126, 49.021729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647379, 31.935898, 48.949612>,  <31.731834, 31.563848, 48.829418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647379, 31.935898, 48.949612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426405, -0.188974, 0.884572,
		0.879544, 0.314898, -0.356709,
		-0.211141, 0.930123, 0.300486,
		31.584036, 32.214935, 49.039757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429558, 31.765522, 49.052608>,  <31.731834, 31.563848, 48.829418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429558, 31.765522, 49.052608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119770, 31.964550, 49.208874>,  <31.933897, 32.083965, 49.302631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119770, 31.964550, 49.208874>,  <32.429558, 31.765522, 49.052608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119770, 31.964550, 49.208874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336076, -0.199572, 0.920448,
		0.535952, 0.844153, -0.012658,
		-0.774473, 0.497570, 0.390661,
		31.887428, 32.113823, 49.326073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608456, 32.056873, 49.744953>,  <32.429558, 31.765522, 49.052608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608456, 32.056873, 49.744953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209797, 32.068691, 49.775490>,  <31.970602, 32.075783, 49.793812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209797, 32.068691, 49.775490>,  <32.608456, 32.056873, 49.744953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209797, 32.068691, 49.775490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066797, -0.245628, 0.967060,
		0.047320, 0.968914, 0.242831,
		-0.996644, 0.029541, 0.076344,
		31.910803, 32.077553, 49.798393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452278, 32.503929, 50.378761>,  <32.608456, 32.056873, 49.744953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452278, 32.503929, 50.378761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136322, 32.271584, 50.300106>,  <31.946747, 32.132175, 50.252911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136322, 32.271584, 50.300106>,  <32.452278, 32.503929, 50.378761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136322, 32.271584, 50.300106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050512, -0.257940, 0.964840,
		-0.611160, 0.772053, 0.174404,
		-0.789894, -0.580862, -0.196640,
		31.899353, 32.097324, 50.241116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990568, 32.650570, 50.956184>,  <32.452278, 32.503929, 50.378761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990568, 32.650570, 50.956184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895508, 32.307739, 50.773346>,  <31.838470, 32.102039, 50.663643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895508, 32.307739, 50.773346>,  <31.990568, 32.650570, 50.956184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895508, 32.307739, 50.773346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117777, -0.441683, 0.889407,
		-0.964184, 0.265205, 0.004023,
		-0.237653, -0.857078, -0.457099,
		31.824211, 32.050617, 50.636215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326992, 32.370277, 51.310974>,  <31.990568, 32.650570, 50.956184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326992, 32.370277, 51.310974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568888, 32.097980, 51.145626>,  <31.714025, 31.934603, 51.046417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568888, 32.097980, 51.145626>,  <31.326992, 32.370277, 51.310974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568888, 32.097980, 51.145626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239795, -0.650587, 0.720580,
		-0.759466, -0.336638, -0.556674,
		0.604740, -0.680743, -0.413375,
		31.750309, 31.893757, 51.021614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991621, 31.622581, 51.330002>,  <31.326992, 32.370277, 51.310974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991621, 31.622581, 51.330002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386805, 31.592844, 51.275730>,  <31.623915, 31.575001, 51.243168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386805, 31.592844, 51.275730>,  <30.991621, 31.622581, 51.330002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386805, 31.592844, 51.275730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048085, -0.685982, 0.726027,
		-0.147047, -0.723810, -0.674148,
		0.987960, -0.074344, -0.135676,
		31.683193, 31.570541, 51.235027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278811, 30.963152, 51.233597>,  <30.991621, 31.622581, 51.330002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278811, 30.963152, 51.233597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609421, 31.154202, 51.352749>,  <31.807787, 31.268831, 51.424240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609421, 31.154202, 51.352749>,  <31.278811, 30.963152, 51.233597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609421, 31.154202, 51.352749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187004, -0.732116, 0.655008,
		0.530932, -0.485674, -0.694429,
		0.826523, 0.477626, 0.297880,
		31.857378, 31.297489, 51.442112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805786, 30.973146, 51.720642>,  <31.278811, 30.963152, 51.233597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805786, 30.973146, 51.720642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815067, 31.030048, 51.324818>,  <30.820635, 31.064190, 51.087322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815067, 31.030048, 51.324818>,  <30.805786, 30.973146, 51.720642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815067, 31.030048, 51.324818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759568, -0.641065, -0.109967,
		-0.650014, 0.754188, 0.093180,
		0.023201, 0.142257, -0.989558,
		30.822027, 31.072725, 51.027950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951454, 31.095512, 52.480843>,  <30.805786, 30.973146, 51.720642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951454, 31.095512, 52.480843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277914, 31.064295, 52.709862>,  <31.473789, 31.045565, 52.847275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277914, 31.064295, 52.709862>,  <30.951454, 31.095512, 52.480843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277914, 31.064295, 52.709862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513523, -0.356349, -0.780583,
		0.264945, 0.931088, -0.250757,
		0.816149, -0.078043, 0.572548,
		31.522758, 31.040882, 52.881626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514368, 31.599710, 52.329250>,  <30.951454, 31.095512, 52.480843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514368, 31.599710, 52.329250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590986, 31.224880, 52.446007>,  <31.636957, 30.999981, 52.516060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590986, 31.224880, 52.446007>,  <31.514368, 31.599710, 52.329250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590986, 31.224880, 52.446007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450392, -0.180312, -0.874434,
		0.872042, 0.298956, 0.387514,
		0.191543, -0.937077, 0.291888,
		31.648449, 30.943758, 52.533573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249378, 31.510101, 52.197098>,  <31.514368, 31.599710, 52.329250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249378, 31.510101, 52.197098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083630, 31.146395, 52.212772>,  <31.984180, 30.928171, 52.222179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083630, 31.146395, 52.212772>,  <32.249378, 31.510101, 52.197098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083630, 31.146395, 52.212772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597590, -0.304304, -0.741812,
		0.686429, -0.283965, 0.669462,
		-0.414368, -0.909265, 0.039188,
		31.959318, 30.873615, 52.224529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613605, 31.093641, 51.812103>,  <32.249378, 31.510101, 52.197098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613605, 31.093641, 51.812103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306160, 30.838099, 51.825306>,  <32.121693, 30.684772, 51.833229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306160, 30.838099, 51.825306>,  <32.613605, 31.093641, 51.812103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306160, 30.838099, 51.825306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401642, -0.522095, -0.752396,
		0.497908, -0.565046, 0.657883,
		-0.768616, -0.638858, 0.033009,
		32.075577, 30.646441, 51.835209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708115, 30.381468, 51.913208>,  <32.613605, 31.093641, 51.812103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708115, 30.381468, 51.913208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356319, 30.324203, 51.731655>,  <32.145241, 30.289845, 51.622723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356319, 30.324203, 51.731655>,  <32.708115, 30.381468, 51.913208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356319, 30.324203, 51.731655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475725, -0.237062, -0.847046,
		0.013666, -0.960889, 0.276598,
		-0.879488, -0.143160, -0.453879,
		32.092472, 30.281256, 51.595490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744835, 29.773516, 51.460663>,  <32.708115, 30.381468, 51.913208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744835, 29.773516, 51.460663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413570, 29.955814, 51.330162>,  <32.214813, 30.065193, 51.251862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413570, 29.955814, 51.330162>,  <32.744835, 29.773516, 51.460663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413570, 29.955814, 51.330162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256957, -0.208596, -0.943642,
		-0.498120, -0.865321, 0.055643,
		-0.828161, 0.455749, -0.326256,
		32.165123, 30.092539, 51.232285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448853, 29.276020, 50.970169>,  <32.744835, 29.773516, 51.460663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448853, 29.276020, 50.970169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361073, 29.660252, 50.901894>,  <32.308403, 29.890791, 50.860928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361073, 29.660252, 50.901894>,  <32.448853, 29.276020, 50.970169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361073, 29.660252, 50.901894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086863, -0.155019, -0.984085,
		-0.971750, -0.230782, -0.049420,
		-0.219448, 0.960577, -0.170687,
		32.295238, 29.948425, 50.850689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804659, 29.404257, 50.496960>,  <32.448853, 29.276020, 50.970169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804659, 29.404257, 50.496960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025265, 29.732374, 50.436367>,  <32.157627, 29.929245, 50.400013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025265, 29.732374, 50.436367>,  <31.804659, 29.404257, 50.496960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025265, 29.732374, 50.436367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031683, -0.202062, -0.978860,
		-0.833562, 0.535058, -0.137430,
		0.551517, 0.820295, -0.151479,
		32.190720, 29.978462, 50.390923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661188, 29.486246, 49.832825>,  <31.804659, 29.404257, 50.496960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661188, 29.486246, 49.832825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981234, 29.720922, 49.882797>,  <32.173260, 29.861729, 49.912781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981234, 29.720922, 49.882797>,  <31.661188, 29.486246, 49.832825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981234, 29.720922, 49.882797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218590, -0.091232, -0.971543,
		-0.558599, 0.804655, -0.201241,
		0.800116, 0.586692, 0.124928,
		32.221268, 29.896931, 49.920277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672577, 29.918892, 49.328594>,  <31.661188, 29.486246, 49.832825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672577, 29.918892, 49.328594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058407, 29.940157, 49.431953>,  <32.289906, 29.952915, 49.493969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058407, 29.940157, 49.431953>,  <31.672577, 29.918892, 49.328594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058407, 29.940157, 49.431953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252756, 0.094303, -0.962923,
		-0.075557, 0.994123, 0.077525,
		0.964575, 0.053160, 0.258396,
		32.347778, 29.956104, 49.509472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957998, 30.392574, 48.873589>,  <31.672577, 29.918892, 49.328594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957998, 30.392574, 48.873589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287033, 30.202133, 48.997963>,  <32.484455, 30.087868, 49.072586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287033, 30.202133, 48.997963>,  <31.957998, 30.392574, 48.873589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287033, 30.202133, 48.997963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396971, 0.089286, -0.913478,
		0.407147, 0.874845, 0.262444,
		0.822585, -0.476102, 0.310935,
		32.533810, 30.059303, 49.091244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589001, 30.851454, 48.652790>,  <31.957998, 30.392574, 48.873589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589001, 30.851454, 48.652790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710770, 30.473560, 48.701462>,  <32.783829, 30.246824, 48.730663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710770, 30.473560, 48.701462>,  <32.589001, 30.851454, 48.652790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710770, 30.473560, 48.701462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405888, 0.013089, -0.913829,
		0.861732, 0.327577, 0.387441,
		0.304421, -0.944734, 0.121680,
		32.802097, 30.190140, 48.737965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308281, 30.851273, 48.455341>,  <32.589001, 30.851454, 48.652790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308281, 30.851273, 48.455341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185219, 30.472733, 48.415806>,  <33.111382, 30.245609, 48.392082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185219, 30.472733, 48.415806>,  <33.308281, 30.851273, 48.455341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185219, 30.472733, 48.415806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535281, -0.086254, -0.840259,
		0.786654, -0.311417, 0.533100,
		-0.307653, -0.946351, -0.098843,
		33.092922, 30.188828, 48.386154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594204, 30.662132, 47.844337>,  <33.308281, 30.851273, 48.455341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594204, 30.662132, 47.844337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441311, 30.308773, 47.952785>,  <33.349575, 30.096758, 48.017853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441311, 30.308773, 47.952785>,  <33.594204, 30.662132, 47.844337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441311, 30.308773, 47.952785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216508, -0.370848, -0.903103,
		0.898343, -0.286499, 0.333014,
		-0.382236, -0.883397, 0.271120,
		33.326641, 30.043755, 48.034122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072350, 30.074316, 47.683674>,  <33.594204, 30.662132, 47.844337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072350, 30.074316, 47.683674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680817, 29.997875, 47.654358>,  <33.445896, 29.952011, 47.636768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680817, 29.997875, 47.654358>,  <34.072350, 30.074316, 47.683674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680817, 29.997875, 47.654358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117563, -0.231820, -0.965629,
		0.167542, -0.953803, 0.249378,
		-0.978830, -0.191102, -0.073292,
		33.387169, 29.940544, 47.632370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124931, 29.481871, 47.264614>,  <34.072350, 30.074316, 47.683674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124931, 29.481871, 47.264614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743095, 29.600893, 47.270603>,  <33.513996, 29.672306, 47.274197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743095, 29.600893, 47.270603>,  <34.124931, 29.481871, 47.264614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743095, 29.600893, 47.270603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088415, -0.234933, -0.967982,
		-0.284512, -0.925347, 0.250572,
		-0.954587, 0.297557, 0.014973,
		33.456718, 29.690161, 47.275097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777161, 28.961939, 46.909809>,  <34.124931, 29.481871, 47.264614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777161, 28.961939, 46.909809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549549, 29.289438, 46.879204>,  <33.412983, 29.485937, 46.860840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549549, 29.289438, 46.879204>,  <33.777161, 28.961939, 46.909809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549549, 29.289438, 46.879204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022507, -0.077507, -0.996738,
		-0.822007, -0.568899, 0.025677,
		-0.569033, 0.818747, -0.076515,
		33.378838, 29.535063, 46.856251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396111, 28.811247, 46.398277>,  <33.777161, 28.961939, 46.909809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396111, 28.811247, 46.398277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398327, 29.210953, 46.413460>,  <33.399658, 29.450777, 46.422569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398327, 29.210953, 46.413460>,  <33.396111, 28.811247, 46.398277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398327, 29.210953, 46.413460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081770, 0.038282, -0.995916,
		-0.996636, 0.002415, 0.081922,
		0.005541, 0.999264, 0.037956,
		33.399990, 29.510733, 46.424847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718754, 29.105398, 46.155693>,  <33.396111, 28.811247, 46.398277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718754, 29.105398, 46.155693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023529, 29.359104, 46.103294>,  <33.206394, 29.511328, 46.071854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023529, 29.359104, 46.103294>,  <32.718754, 29.105398, 46.155693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023529, 29.359104, 46.103294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148964, -0.025212, -0.988521,
		-0.630288, 0.772704, 0.075272,
		0.761936, 0.634266, -0.130996,
		33.252110, 29.549383, 46.063995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545776, 29.293964, 45.464867>,  <32.718754, 29.105398, 46.155693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545776, 29.293964, 45.464867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897011, 29.466963, 45.546761>,  <33.107750, 29.570763, 45.595898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897011, 29.466963, 45.546761>,  <32.545776, 29.293964, 45.464867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897011, 29.466963, 45.546761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117523, 0.219826, -0.968434,
		-0.463851, 0.874427, 0.142198,
		0.878084, 0.432498, 0.204731,
		33.160435, 29.596712, 45.608181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682854, 30.021055, 45.225513>,  <32.545776, 29.293964, 45.464867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682854, 30.021055, 45.225513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028057, 29.819286, 45.236637>,  <33.235180, 29.698225, 45.243309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028057, 29.819286, 45.236637>,  <32.682854, 30.021055, 45.225513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028057, 29.819286, 45.236637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219306, 0.324486, -0.920116,
		0.455106, 0.800166, 0.390657,
		0.863008, -0.504424, 0.027805,
		33.286961, 29.667959, 45.244980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199394, 30.498270, 45.048405>,  <32.682854, 30.021055, 45.225513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199394, 30.498270, 45.048405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342766, 30.135498, 44.959854>,  <33.428787, 29.917835, 44.906723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342766, 30.135498, 44.959854>,  <33.199394, 30.498270, 45.048405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342766, 30.135498, 44.959854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152104, 0.290699, -0.944647,
		0.921083, 0.304916, 0.242143,
		0.358429, -0.906929, -0.221379,
		33.450294, 29.863419, 44.893440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714886, 30.606148, 44.527355>,  <33.199394, 30.498270, 45.048405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714886, 30.606148, 44.527355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638931, 30.217461, 44.471199>,  <33.593361, 29.984249, 44.437504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638931, 30.217461, 44.471199>,  <33.714886, 30.606148, 44.527355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638931, 30.217461, 44.471199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138613, 0.115026, -0.983644,
		0.971973, -0.206236, 0.112851,
		-0.189882, -0.971718, -0.140389,
		33.581966, 29.925945, 44.429081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241005, 30.256172, 44.014774>,  <33.714886, 30.606148, 44.527355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241005, 30.256172, 44.014774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917660, 30.021442, 43.996075>,  <33.723652, 29.880604, 43.984856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917660, 30.021442, 43.996075>,  <34.241005, 30.256172, 44.014774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917660, 30.021442, 43.996075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004067, 0.073849, -0.997261,
		0.588670, -0.806339, -0.057310,
		-0.808363, -0.586825, -0.046753,
		33.675152, 29.845394, 43.982048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456844, 29.736549, 43.516968>,  <34.241005, 30.256172, 44.014774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456844, 29.736549, 43.516968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063198, 29.668709, 43.537964>,  <33.827011, 29.628004, 43.550560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063198, 29.668709, 43.537964>,  <34.456844, 29.736549, 43.516968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063198, 29.668709, 43.537964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039447, -0.079356, -0.996065,
		0.173100, -0.982312, 0.071405,
		-0.984114, -0.169602, 0.052486,
		33.767963, 29.617828, 43.553711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314590, 29.169558, 43.143688>,  <34.456844, 29.736549, 43.516968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314590, 29.169558, 43.143688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954346, 29.340271, 43.176552>,  <33.738197, 29.442699, 43.196270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954346, 29.340271, 43.176552>,  <34.314590, 29.169558, 43.143688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954346, 29.340271, 43.176552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166016, -0.163116, -0.972539,
		-0.401662, -0.889522, 0.217757,
		-0.900615, 0.426783, 0.082157,
		33.684162, 29.468306, 43.201199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809551, 28.686729, 42.828773>,  <34.314590, 29.169558, 43.143688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809551, 28.686729, 42.828773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630310, 29.044298, 42.832943>,  <33.522766, 29.258841, 42.835445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630310, 29.044298, 42.832943>,  <33.809551, 28.686729, 42.828773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630310, 29.044298, 42.832943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146288, -0.061813, -0.987309,
		-0.881933, -0.443939, 0.158468,
		-0.448100, 0.893923, 0.010428,
		33.495880, 29.312475, 42.836071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172726, 28.647404, 42.328476>,  <33.809551, 28.686729, 42.828773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172726, 28.647404, 42.328476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243828, 29.037682, 42.379738>,  <33.286488, 29.271849, 42.410496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243828, 29.037682, 42.379738>,  <33.172726, 28.647404, 42.328476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243828, 29.037682, 42.379738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097501, 0.147049, -0.984312,
		-0.979233, 0.162472, 0.121270,
		0.177755, 0.975695, 0.128154,
		33.297153, 29.330389, 42.418182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638378, 28.961521, 42.014587>,  <33.172726, 28.647404, 42.328476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638378, 28.961521, 42.014587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937496, 29.225842, 42.040321>,  <33.116966, 29.384434, 42.055763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937496, 29.225842, 42.040321>,  <32.638378, 28.961521, 42.014587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937496, 29.225842, 42.040321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115899, 0.225345, -0.967361,
		-0.653732, 0.715933, 0.245099,
		0.747798, 0.660802, 0.064339,
		33.161835, 29.424082, 42.059624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398308, 29.657381, 41.762474>,  <32.638378, 28.961521, 42.014587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398308, 29.657381, 41.762474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796993, 29.680387, 41.739628>,  <33.036205, 29.694191, 41.725922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796993, 29.680387, 41.739628>,  <32.398308, 29.657381, 41.762474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796993, 29.680387, 41.739628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077255, 0.460934, -0.884065,
		-0.024523, 0.885568, 0.463861,
		0.996710, 0.057516, -0.057111,
		33.096004, 29.697641, 41.722496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459316, 30.318472, 41.444141>,  <32.398308, 29.657381, 41.762474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459316, 30.318472, 41.444141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799442, 30.111496, 41.405720>,  <33.003517, 29.987310, 41.382668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799442, 30.111496, 41.405720>,  <32.459316, 30.318472, 41.444141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799442, 30.111496, 41.405720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129749, 0.382999, -0.914591,
		0.510036, 0.765224, 0.392806,
		0.850311, -0.517441, -0.096056,
		33.054535, 29.956264, 41.376904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987144, 30.847271, 41.392494>,  <32.459316, 30.318472, 41.444141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987144, 30.847271, 41.392494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119667, 30.508070, 41.227028>,  <33.199181, 30.304548, 41.127747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119667, 30.508070, 41.227028>,  <32.987144, 30.847271, 41.392494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119667, 30.508070, 41.227028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184273, 0.488143, -0.853088,
		0.925352, 0.206410, 0.317992,
		0.331311, -0.848004, -0.413669,
		33.219059, 30.253668, 41.102928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515480, 31.056236, 40.845001>,  <32.987144, 30.847271, 41.392494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515480, 31.056236, 40.845001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414791, 30.682737, 40.743214>,  <33.354378, 30.458637, 40.682140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414791, 30.682737, 40.743214>,  <33.515480, 31.056236, 40.845001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414791, 30.682737, 40.743214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055252, 0.276368, -0.959462,
		0.966221, -0.227460, -0.121160,
		-0.251724, -0.933747, -0.254465,
		33.339275, 30.402613, 40.666874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070301, 30.725098, 40.393627>,  <33.515480, 31.056236, 40.845001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070301, 30.725098, 40.393627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732327, 30.526485, 40.314083>,  <33.529541, 30.407318, 40.266357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732327, 30.526485, 40.314083>,  <34.070301, 30.725098, 40.393627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732327, 30.526485, 40.314083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146218, 0.143199, -0.978833,
		0.514495, -0.856127, -0.048393,
		-0.844935, -0.496529, -0.198856,
		33.478848, 30.377527, 40.254425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274029, 30.253489, 39.896984>,  <34.070301, 30.725098, 40.393627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274029, 30.253489, 39.896984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876186, 30.286320, 39.871632>,  <33.637482, 30.306019, 39.856419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876186, 30.286320, 39.871632>,  <34.274029, 30.253489, 39.896984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876186, 30.286320, 39.871632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065205, 0.019714, -0.997677,
		-0.080640, -0.996431, -0.024960,
		-0.994608, 0.082080, -0.063382,
		33.577805, 30.310944, 39.852615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179592, 29.932600, 39.316952>,  <34.274029, 30.253489, 39.896984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179592, 29.932600, 39.316952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837349, 30.130304, 39.378452>,  <33.632004, 30.248926, 39.415352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837349, 30.130304, 39.378452>,  <34.179592, 29.932600, 39.316952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837349, 30.130304, 39.378452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088003, 0.153806, -0.984174,
		-0.510085, -0.855600, -0.088102,
		-0.855610, 0.494260, 0.153749,
		33.580666, 30.278582, 39.424576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780193, 29.541500, 38.763771>,  <34.179592, 29.932600, 39.316952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780193, 29.541500, 38.763771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558372, 29.859905, 38.860794>,  <33.425282, 30.050949, 38.919006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558372, 29.859905, 38.860794>,  <33.780193, 29.541500, 38.763771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558372, 29.859905, 38.860794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324768, 0.061339, -0.943803,
		-0.766160, -0.602160, 0.224505,
		-0.554550, 0.796015, 0.242557,
		33.392006, 30.098709, 38.933559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218819, 29.321045, 38.469490>,  <33.780193, 29.541500, 38.763771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218819, 29.321045, 38.469490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203564, 29.720181, 38.490910>,  <33.194412, 29.959661, 38.503761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203564, 29.720181, 38.490910>,  <33.218819, 29.321045, 38.469490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203564, 29.720181, 38.490910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449509, 0.030725, -0.892747,
		-0.892461, -0.058115, 0.447365,
		-0.038136, 0.997837, 0.053544,
		33.192123, 30.019531, 38.506973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627804, 29.512011, 38.065247>,  <33.218819, 29.321045, 38.469490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627804, 29.512011, 38.065247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820477, 29.860147, 38.106216>,  <32.936081, 30.069029, 38.130798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820477, 29.860147, 38.106216>,  <32.627804, 29.512011, 38.065247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820477, 29.860147, 38.106216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237732, 0.242264, -0.940634,
		-0.843486, 0.428735, 0.323602,
		0.481680, 0.870342, 0.102422,
		32.964981, 30.121250, 38.136944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220566, 29.940872, 37.698292>,  <32.627804, 29.512011, 38.065247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220566, 29.940872, 37.698292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549141, 30.168560, 37.712318>,  <32.746284, 30.305174, 37.720734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549141, 30.168560, 37.712318>,  <32.220566, 29.940872, 37.698292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549141, 30.168560, 37.712318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121427, 0.234650, -0.964466,
		-0.557223, 0.787989, 0.261869,
		0.821436, 0.569221, 0.035070,
		32.795570, 30.339327, 37.722839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114101, 30.583336, 37.261173>,  <32.220566, 29.940872, 37.698292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114101, 30.583336, 37.261173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511345, 30.538231, 37.273991>,  <32.749691, 30.511168, 37.281681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511345, 30.538231, 37.273991>,  <32.114101, 30.583336, 37.261173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511345, 30.538231, 37.273991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051693, 0.175907, -0.983049,
		0.105213, 0.977927, 0.180523,
		0.993105, -0.112761, 0.032044,
		32.809277, 30.504402, 37.283604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293945, 31.164726, 36.911743>,  <32.114101, 30.583336, 37.261173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293945, 31.164726, 36.911743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599922, 30.908192, 36.935589>,  <32.783508, 30.754271, 36.949898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599922, 30.908192, 36.935589>,  <32.293945, 31.164726, 36.911743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599922, 30.908192, 36.935589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226760, 0.181517, -0.956886,
		0.602866, 0.745478, 0.284279,
		0.764939, -0.641337, 0.059615,
		32.829403, 30.715790, 36.953472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733772, 31.517433, 36.418545>,  <32.293945, 31.164726, 36.911743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733772, 31.517433, 36.418545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878452, 31.148851, 36.475243>,  <32.965260, 30.927702, 36.509262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878452, 31.148851, 36.475243>,  <32.733772, 31.517433, 36.418545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878452, 31.148851, 36.475243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309824, -0.024589, -0.950476,
		0.879306, 0.387705, 0.276595,
		0.361704, -0.921455, 0.141741,
		32.986965, 30.872416, 36.517765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395432, 31.442381, 36.308872>,  <32.733772, 31.517433, 36.418545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395432, 31.442381, 36.308872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268040, 31.067343, 36.253036>,  <33.191605, 30.842319, 36.219536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268040, 31.067343, 36.253036>,  <33.395432, 31.442381, 36.308872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268040, 31.067343, 36.253036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279890, 0.047679, -0.958847,
		0.905668, -0.344439, 0.247240,
		-0.318476, -0.937597, -0.139586,
		33.172497, 30.786064, 36.211159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916328, 31.026854, 35.893513>,  <33.395432, 31.442381, 36.308872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916328, 31.026854, 35.893513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557026, 30.862497, 35.831161>,  <33.341442, 30.763884, 35.793751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557026, 30.862497, 35.831161>,  <33.916328, 31.026854, 35.893513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557026, 30.862497, 35.831161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187319, -0.037109, -0.981598,
		0.397543, -0.910930, 0.110301,
		-0.898260, -0.410889, -0.155882,
		33.287548, 30.739231, 35.784397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961388, 30.538528, 35.354382>,  <33.916328, 31.026854, 35.893513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961388, 30.538528, 35.354382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563107, 30.575300, 35.358894>,  <33.324139, 30.597363, 35.361603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563107, 30.575300, 35.358894>,  <33.961388, 30.538528, 35.354382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563107, 30.575300, 35.358894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024294, -0.141650, -0.989619,
		-0.089373, -0.985639, 0.143274,
		-0.995702, 0.091926, 0.011285,
		33.264397, 30.602879, 35.362278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973984, 30.306826, 36.035900>,  <33.961388, 30.538528, 35.354382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973984, 30.306826, 36.035900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343266, 30.324722, 35.883217>,  <34.564835, 30.335461, 35.791607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343266, 30.324722, 35.883217>,  <33.973984, 30.306826, 36.035900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343266, 30.324722, 35.883217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384087, -0.141874, 0.912331,
		-0.013332, -0.988873, -0.148164,
		0.923201, 0.044745, -0.381705,
		34.620224, 30.338146, 35.768703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316677, 29.756866, 36.353863>,  <33.973984, 30.306826, 36.035900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316677, 29.756866, 36.353863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589012, 30.027905, 36.242630>,  <34.752411, 30.190527, 36.175892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589012, 30.027905, 36.242630>,  <34.316677, 29.756866, 36.353863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589012, 30.027905, 36.242630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478415, -0.123931, 0.869345,
		0.554604, -0.724916, -0.408549,
		0.680834, 0.677597, -0.278078,
		34.793262, 30.231184, 36.159206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010441, 29.398983, 36.309536>,  <34.316677, 29.756866, 36.353863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010441, 29.398983, 36.309536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129978, 29.780666, 36.314861>,  <35.201702, 30.009676, 36.318058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129978, 29.780666, 36.314861>,  <35.010441, 29.398983, 36.309536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129978, 29.780666, 36.314861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680026, -0.222723, 0.698541,
		0.669521, -0.199697, -0.715446,
		0.298843, 0.954209, 0.013318,
		35.219631, 30.066929, 36.318855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705883, 29.326382, 36.314896>,  <35.010441, 29.398983, 36.309536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705883, 29.326382, 36.314896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639259, 29.686296, 36.476212>,  <35.599285, 29.902245, 36.573002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639259, 29.686296, 36.476212>,  <35.705883, 29.326382, 36.314896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639259, 29.686296, 36.476212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618125, -0.223380, 0.753673,
		0.768232, 0.374813, -0.518975,
		-0.166557, 0.899787, 0.403289,
		35.589291, 29.956232, 36.597198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325657, 29.566132, 36.467445>,  <35.705883, 29.326382, 36.314896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325657, 29.566132, 36.467445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089222, 29.794783, 36.695080>,  <35.947361, 29.931974, 36.831661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089222, 29.794783, 36.695080>,  <36.325657, 29.566132, 36.467445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089222, 29.794783, 36.695080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516987, -0.273075, 0.811267,
		0.619147, 0.773738, -0.134115,
		-0.591084, 0.571629, 0.569086,
		35.911896, 29.966272, 36.865807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633694, 30.178314, 36.825119>,  <36.325657, 29.566132, 36.467445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633694, 30.178314, 36.825119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312538, 30.062347, 37.033474>,  <36.119846, 29.992767, 37.158485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312538, 30.062347, 37.033474>,  <36.633694, 30.178314, 36.825119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312538, 30.062347, 37.033474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590560, -0.267617, 0.761328,
		-0.081322, 0.918875, 0.386078,
		-0.802886, -0.289915, 0.520887,
		36.071671, 29.975372, 37.189739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795624, 30.359962, 37.484573>,  <36.633694, 30.178314, 36.825119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795624, 30.359962, 37.484573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495125, 30.103920, 37.548950>,  <36.314827, 29.950294, 37.587574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495125, 30.103920, 37.548950>,  <36.795624, 30.359962, 37.484573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495125, 30.103920, 37.548950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305126, -0.120596, 0.944645,
		-0.585263, 0.758764, 0.285910,
		-0.751243, -0.640104, 0.160938,
		36.269753, 29.911888, 37.597233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454906, 30.616623, 38.132698>,  <36.795624, 30.359962, 37.484573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454906, 30.616623, 38.132698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359768, 30.234758, 38.061092>,  <36.302685, 30.005640, 38.018127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359768, 30.234758, 38.061092>,  <36.454906, 30.616623, 38.132698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359768, 30.234758, 38.061092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125596, -0.212986, 0.968949,
		-0.963147, 0.207981, 0.170561,
		-0.237850, -0.954663, -0.179015,
		36.288414, 29.948360, 38.007389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922470, 30.527887, 38.515575>,  <36.454906, 30.616623, 38.132698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922470, 30.527887, 38.515575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103279, 30.176075, 38.456108>,  <36.211765, 29.964987, 38.420429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103279, 30.176075, 38.456108>,  <35.922470, 30.527887, 38.515575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103279, 30.176075, 38.456108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058431, -0.195502, 0.978961,
		-0.890091, -0.433825, -0.139763,
		0.452022, -0.879531, -0.148666,
		36.238884, 29.912216, 38.411507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656017, 30.087271, 39.073189>,  <35.922470, 30.527887, 38.515575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656017, 30.087271, 39.073189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961468, 29.869312, 38.934650>,  <36.144737, 29.738537, 38.851528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961468, 29.869312, 38.934650>,  <35.656017, 30.087271, 39.073189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961468, 29.869312, 38.934650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120671, -0.406531, 0.905633,
		-0.634277, -0.733363, -0.244686,
		0.763630, -0.544895, -0.346349,
		36.190556, 29.705843, 38.830746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549107, 29.369205, 39.302853>,  <35.656017, 30.087271, 39.073189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549107, 29.369205, 39.302853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935246, 29.459614, 39.250656>,  <36.166927, 29.513859, 39.219337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935246, 29.459614, 39.250656>,  <35.549107, 29.369205, 39.302853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935246, 29.459614, 39.250656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205783, -0.351669, 0.913227,
		0.160517, -0.908430, -0.385992,
		0.965344, 0.226019, -0.130490,
		36.224850, 29.527420, 39.211510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960464, 28.757944, 39.455990>,  <35.549107, 29.369205, 39.302853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960464, 28.757944, 39.455990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224209, 29.054987, 39.502941>,  <36.382454, 29.233213, 39.531113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224209, 29.054987, 39.502941>,  <35.960464, 28.757944, 39.455990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224209, 29.054987, 39.502941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074788, -0.220130, 0.972600,
		0.748099, -0.632515, -0.200683,
		0.659360, 0.742609, 0.117374,
		36.422016, 29.277769, 39.538155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464657, 28.434738, 39.802326>,  <35.960464, 28.757944, 39.455990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464657, 28.434738, 39.802326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516758, 28.824778, 39.874126>,  <36.548019, 29.058802, 39.917206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516758, 28.824778, 39.874126>,  <36.464657, 28.434738, 39.802326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516758, 28.824778, 39.874126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089206, -0.168781, 0.981608,
		0.987459, -0.143874, 0.065000,
		0.130257, 0.975097, 0.179499,
		36.555836, 29.117306, 39.927975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759457, 28.489307, 40.451424>,  <36.464657, 28.434738, 39.802326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759457, 28.489307, 40.451424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674034, 28.876934, 40.401939>,  <36.622780, 29.109510, 40.372250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674034, 28.876934, 40.401939>,  <36.759457, 28.489307, 40.451424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674034, 28.876934, 40.401939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016754, 0.122984, 0.992267,
		0.976787, 0.213978, -0.010028,
		-0.213557, 0.969066, -0.123714,
		36.609966, 29.167654, 40.364826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160698, 28.899267, 41.072266>,  <36.759457, 28.489307, 40.451424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160698, 28.899267, 41.072266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847984, 29.110300, 40.939312>,  <36.660358, 29.236919, 40.859539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847984, 29.110300, 40.939312>,  <37.160698, 28.899267, 41.072266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847984, 29.110300, 40.939312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236139, 0.242852, 0.940883,
		0.577112, 0.814052, -0.065274,
		-0.781780, 0.527581, -0.332382,
		36.613449, 29.268574, 40.839596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304371, 29.523626, 41.479671>,  <37.160698, 28.899267, 41.072266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304371, 29.523626, 41.479671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923523, 29.486364, 41.363197>,  <36.695015, 29.464006, 41.293312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923523, 29.486364, 41.363197>,  <37.304371, 29.523626, 41.479671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923523, 29.486364, 41.363197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304018, 0.187923, 0.933947,
		-0.032281, 0.977756, -0.207246,
		-0.952119, -0.093155, -0.291189,
		36.637886, 29.458418, 41.275841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877148, 30.136465, 41.643372>,  <37.304371, 29.523626, 41.479671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877148, 30.136465, 41.643372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592060, 29.861353, 41.588261>,  <36.421005, 29.696285, 41.555195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592060, 29.861353, 41.588261>,  <36.877148, 30.136465, 41.643372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592060, 29.861353, 41.588261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364149, 0.194925, 0.910714,
		-0.599517, 0.699257, -0.389383,
		-0.712723, -0.687782, -0.137773,
		36.378242, 29.655018, 41.546928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331623, 30.502279, 41.909962>,  <36.877148, 30.136465, 41.643372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331623, 30.502279, 41.909962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227596, 30.116121, 41.902222>,  <36.165180, 29.884426, 41.897579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227596, 30.116121, 41.902222>,  <36.331623, 30.502279, 41.909962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227596, 30.116121, 41.902222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429206, 0.097627, 0.897915,
		-0.864956, 0.241821, -0.439743,
		-0.260066, -0.965397, -0.019348,
		36.149578, 29.826502, 41.896416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660183, 30.515846, 42.057178>,  <36.331623, 30.502279, 41.909962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660183, 30.515846, 42.057178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772671, 30.142319, 42.145630>,  <35.840164, 29.918201, 42.198700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772671, 30.142319, 42.145630>,  <35.660183, 30.515846, 42.057178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772671, 30.142319, 42.145630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404418, 0.093642, 0.909768,
		-0.870265, -0.345275, -0.351318,
		0.281222, -0.933818, 0.221129,
		35.857037, 29.862173, 42.211967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180897, 30.223108, 42.466354>,  <35.660183, 30.515846, 42.057178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180897, 30.223108, 42.466354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489670, 29.981688, 42.546196>,  <35.674934, 29.836836, 42.594101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489670, 29.981688, 42.546196>,  <35.180897, 30.223108, 42.466354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489670, 29.981688, 42.546196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277477, -0.037409, 0.960004,
		-0.571944, -0.796446, -0.196349,
		0.771937, -0.603551, 0.199600,
		35.721252, 29.800623, 42.606075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908154, 29.685135, 42.914490>,  <35.180897, 30.223108, 42.466354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908154, 29.685135, 42.914490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304142, 29.694250, 42.970245>,  <35.541737, 29.699718, 43.003700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304142, 29.694250, 42.970245>,  <34.908154, 29.685135, 42.914490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304142, 29.694250, 42.970245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133206, -0.177466, 0.975070,
		0.046958, -0.983863, -0.172651,
		0.989976, 0.022789, 0.139390,
		35.601135, 29.701086, 43.012062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010395, 29.108854, 43.303093>,  <34.908154, 29.685135, 42.914490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010395, 29.108854, 43.303093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336304, 29.334173, 43.357998>,  <35.531849, 29.469364, 43.390942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336304, 29.334173, 43.357998>,  <35.010395, 29.108854, 43.303093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336304, 29.334173, 43.357998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072638, -0.135714, 0.988082,
		0.575212, -0.815033, -0.069659,
		0.814773, 0.563296, 0.137267,
		35.580734, 29.503162, 43.399178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391632, 28.753855, 43.791264>,  <35.010395, 29.108854, 43.303093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391632, 28.753855, 43.791264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532207, 29.127808, 43.811234>,  <35.616550, 29.352179, 43.823215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532207, 29.127808, 43.811234>,  <35.391632, 28.753855, 43.791264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532207, 29.127808, 43.811234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097578, -0.089613, 0.991185,
		0.931113, -0.343465, -0.122717,
		0.351435, 0.934881, 0.049925,
		35.637638, 29.408272, 43.826210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976494, 28.744535, 44.254753>,  <35.391632, 28.753855, 43.791264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976494, 28.744535, 44.254753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878445, 29.131361, 44.227322>,  <35.819614, 29.363457, 44.210861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878445, 29.131361, 44.227322>,  <35.976494, 28.744535, 44.254753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878445, 29.131361, 44.227322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151380, 0.108050, 0.982552,
		0.957601, 0.230462, -0.172879,
		-0.245121, 0.967064, -0.068582,
		35.804909, 29.421480, 44.206749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518646, 29.171780, 44.540680>,  <35.976494, 28.744535, 44.254753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518646, 29.171780, 44.540680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185318, 29.389671, 44.578293>,  <35.985321, 29.520407, 44.600861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185318, 29.389671, 44.578293>,  <36.518646, 29.171780, 44.540680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185318, 29.389671, 44.578293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227313, 0.182617, 0.956546,
		0.503884, 0.818488, -0.276003,
		-0.833324, 0.544727, 0.094035,
		35.935322, 29.553089, 44.606503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742035, 29.724863, 44.897034>,  <36.518646, 29.171780, 44.540680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742035, 29.724863, 44.897034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346497, 29.730415, 44.956341>,  <36.109173, 29.733746, 44.991924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346497, 29.730415, 44.956341>,  <36.742035, 29.724863, 44.897034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346497, 29.730415, 44.956341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139994, 0.426140, 0.893760,
		-0.050779, 0.904551, -0.423331,
		-0.988850, 0.013879, 0.148271,
		36.049843, 29.734579, 45.000820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655632, 30.304827, 45.224701>,  <36.742035, 29.724863, 44.897034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655632, 30.304827, 45.224701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309788, 30.117952, 45.298660>,  <36.102280, 30.005827, 45.343037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309788, 30.117952, 45.298660>,  <36.655632, 30.304827, 45.224701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309788, 30.117952, 45.298660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106834, 0.530518, 0.840915,
		-0.490956, 0.707309, -0.508602,
		-0.864609, -0.467188, 0.184896,
		36.050404, 29.977797, 45.354130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239433, 30.750807, 45.535679>,  <36.655632, 30.304827, 45.224701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239433, 30.750807, 45.535679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087833, 30.397362, 45.645649>,  <35.996876, 30.185295, 45.711632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087833, 30.397362, 45.645649>,  <36.239433, 30.750807, 45.535679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087833, 30.397362, 45.645649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152672, 0.352726, 0.923188,
		-0.912717, 0.307912, -0.268585,
		-0.378997, -0.883614, 0.274929,
		35.974133, 30.132277, 45.728127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651207, 30.836033, 45.901676>,  <36.239433, 30.750807, 45.535679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651207, 30.836033, 45.901676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683250, 30.454906, 46.018791>,  <35.702477, 30.226231, 46.089062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683250, 30.454906, 46.018791>,  <35.651207, 30.836033, 45.901676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683250, 30.454906, 46.018791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155768, 0.278161, 0.947820,
		-0.984540, -0.121534, -0.126135,
		0.080106, -0.952815, 0.292792,
		35.707283, 30.169062, 46.106628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083324, 30.659681, 46.277817>,  <35.651207, 30.836033, 45.901676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083324, 30.659681, 46.277817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372086, 30.412823, 46.403034>,  <35.545341, 30.264708, 46.478165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372086, 30.412823, 46.403034>,  <35.083324, 30.659681, 46.277817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372086, 30.412823, 46.403034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186221, 0.262430, 0.946812,
		-0.666471, -0.741797, 0.074523,
		0.721899, -0.617145, 0.313040,
		35.588654, 30.227680, 46.496944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796326, 30.379660, 46.946167>,  <35.083324, 30.659681, 46.277817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796326, 30.379660, 46.946167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184437, 30.284054, 46.961288>,  <35.417305, 30.226690, 46.970360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184437, 30.284054, 46.961288>,  <34.796326, 30.379660, 46.946167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184437, 30.284054, 46.961288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016751, 0.089503, 0.995846,
		-0.241408, -0.966881, 0.082839,
		0.970279, -0.239017, 0.037803,
		35.475521, 30.212349, 46.972630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953011, 29.830910, 47.489601>,  <34.796326, 30.379660, 46.946167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953011, 29.830910, 47.489601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303051, 30.020168, 47.448933>,  <35.513073, 30.133722, 47.424530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303051, 30.020168, 47.448933>,  <34.953011, 29.830910, 47.489601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303051, 30.020168, 47.448933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098801, 0.030991, 0.994624,
		0.473752, -0.880440, -0.019627,
		0.875098, 0.473145, -0.101671,
		35.565582, 30.162111, 47.418430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304146, 29.522697, 48.022812>,  <34.953011, 29.830910, 47.489601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304146, 29.522697, 48.022812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536392, 29.838783, 47.944382>,  <35.675739, 30.028435, 47.897324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536392, 29.838783, 47.944382>,  <35.304146, 29.522697, 48.022812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536392, 29.838783, 47.944382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234251, 0.068511, 0.969759,
		0.779751, -0.608989, -0.145329,
		0.580616, 0.790214, -0.196078,
		35.710579, 30.075848, 47.885559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881683, 29.492586, 48.520939>,  <35.304146, 29.522697, 48.022812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881683, 29.492586, 48.520939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874767, 29.874311, 48.401619>,  <35.870617, 30.103348, 48.330025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874767, 29.874311, 48.401619>,  <35.881683, 29.492586, 48.520939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874767, 29.874311, 48.401619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238635, 0.293663, 0.925643,
		0.970955, -0.055182, -0.232810,
		-0.017289, 0.954315, -0.298302,
		35.869579, 30.160606, 48.312130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487404, 29.758097, 48.732422>,  <35.881683, 29.492586, 48.520939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487404, 29.758097, 48.732422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240406, 30.072044, 48.711700>,  <36.092209, 30.260414, 48.699268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240406, 30.072044, 48.711700>,  <36.487404, 29.758097, 48.732422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240406, 30.072044, 48.711700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234789, 0.246773, 0.940201,
		0.750719, 0.568402, -0.336659,
		-0.617491, 0.784871, -0.051803,
		36.055161, 30.307505, 48.696159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799370, 30.262247, 49.203003>,  <36.487404, 29.758097, 48.732422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799370, 30.262247, 49.203003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448807, 30.442097, 49.134018>,  <36.238468, 30.550007, 49.092628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448807, 30.442097, 49.134018>,  <36.799370, 30.262247, 49.203003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448807, 30.442097, 49.134018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054256, 0.263652, 0.963091,
		0.478501, 0.853419, -0.206672,
		-0.876409, 0.449626, -0.172461,
		36.185883, 30.576984, 49.082279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907833, 30.885822, 49.428555>,  <36.799370, 30.262247, 49.203003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907833, 30.885822, 49.428555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513523, 30.831692, 49.468422>,  <36.276936, 30.799213, 49.492344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513523, 30.831692, 49.468422>,  <36.907833, 30.885822, 49.428555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513523, 30.831692, 49.468422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063370, 0.249989, 0.966173,
		-0.155665, 0.958745, -0.237858,
		-0.985775, -0.135326, 0.099671,
		36.217789, 30.791094, 49.498322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719009, 31.411098, 49.928608>,  <36.907833, 30.885822, 49.428555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719009, 31.411098, 49.928608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460312, 31.106247, 49.916752>,  <36.305092, 30.923336, 49.909637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460312, 31.106247, 49.916752>,  <36.719009, 31.411098, 49.928608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460312, 31.106247, 49.916752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057308, -0.087312, 0.994531,
		-0.760551, 0.641509, 0.100145,
		-0.646744, -0.762131, -0.029642,
		36.266289, 30.877607, 49.907860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966045, 32.175797, 50.043823>,  <36.719009, 31.411098, 49.928608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966045, 32.175797, 50.043823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182510, 32.511623, 50.062847>,  <37.312389, 32.713120, 50.074261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182510, 32.511623, 50.062847>,  <36.966045, 32.175797, 50.043823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182510, 32.511623, 50.062847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211306, -0.081024, -0.974056,
		-0.813933, 0.537177, -0.221254,
		0.541167, 0.839569, 0.047561,
		37.344860, 32.763493, 50.077114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541420, 32.560242, 49.762493>,  <36.966045, 32.175797, 50.043823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541420, 32.560242, 49.762493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904785, 32.726810, 49.747616>,  <37.122803, 32.826752, 49.738689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904785, 32.726810, 49.747616>,  <36.541420, 32.560242, 49.762493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904785, 32.726810, 49.747616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078639, 0.082806, -0.993458,
		-0.410620, 0.905392, 0.107969,
		0.908409, 0.416424, -0.037197,
		37.177307, 32.851738, 49.736458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457363, 33.067410, 49.274624>,  <36.541420, 32.560242, 49.762493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457363, 33.067410, 49.274624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853981, 33.048656, 49.323017>,  <37.091953, 33.037403, 49.352055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853981, 33.048656, 49.323017>,  <36.457363, 33.067410, 49.274624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853981, 33.048656, 49.323017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125600, 0.112867, -0.985640,
		0.032554, 0.992503, 0.117801,
		0.991547, -0.046883, 0.120984,
		37.151443, 33.034592, 49.359314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794991, 33.680050, 49.034214>,  <36.457363, 33.067410, 49.274624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794991, 33.680050, 49.034214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083488, 33.405502, 48.996899>,  <37.256588, 33.240772, 48.974510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083488, 33.405502, 48.996899>,  <36.794991, 33.680050, 49.034214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083488, 33.405502, 48.996899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022650, 0.111234, -0.993536,
		0.692310, 0.718696, 0.064681,
		0.721245, -0.686370, -0.093287,
		37.299862, 33.199593, 48.968914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369370, 33.980774, 48.549301>,  <36.794991, 33.680050, 49.034214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369370, 33.980774, 48.549301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417843, 33.583740, 48.553280>,  <37.446926, 33.345520, 48.555668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417843, 33.583740, 48.553280>,  <37.369370, 33.980774, 48.549301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417843, 33.583740, 48.553280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009875, -0.008816, -0.999913,
		0.992581, 0.121269, 0.008733,
		0.121181, -0.992581, 0.009948,
		37.454197, 33.285965, 48.556263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850163, 33.934978, 48.057598>,  <37.369370, 33.980774, 48.549301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850163, 33.934978, 48.057598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666264, 33.581715, 48.094849>,  <37.555923, 33.369759, 48.117199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666264, 33.581715, 48.094849>,  <37.850163, 33.934978, 48.057598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666264, 33.581715, 48.094849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256499, -0.232448, -0.938177,
		0.850203, -0.407435, 0.333395,
		-0.459743, -0.883156, 0.093122,
		37.528339, 33.316769, 48.122784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260742, 33.572376, 47.678776>,  <37.850163, 33.934978, 48.057598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260742, 33.572376, 47.678776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944664, 33.327324, 47.685287>,  <37.755016, 33.180290, 47.689194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944664, 33.327324, 47.685287>,  <38.260742, 33.572376, 47.678776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944664, 33.327324, 47.685287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234846, -0.327240, -0.915293,
		0.566068, -0.719440, 0.402459,
		-0.790199, -0.612634, 0.016282,
		37.707603, 33.143536, 47.690170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425327, 32.912056, 47.597855>,  <38.260742, 33.572376, 47.678776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425327, 32.912056, 47.597855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044327, 32.881958, 47.479816>,  <37.815727, 32.863899, 47.408993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044327, 32.881958, 47.479816>,  <38.425327, 32.912056, 47.597855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044327, 32.881958, 47.479816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298249, -0.426445, -0.853927,
		-0.061587, -0.901378, 0.428631,
		-0.952499, -0.075248, -0.295099,
		37.758575, 32.859383, 47.391285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266830, 32.159008, 47.373119>,  <38.425327, 32.912056, 47.597855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266830, 32.159008, 47.373119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991459, 32.403755, 47.217331>,  <37.826237, 32.550606, 47.123859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991459, 32.403755, 47.217331>,  <38.266830, 32.159008, 47.373119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991459, 32.403755, 47.217331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282746, -0.268095, -0.920967,
		-0.667927, -0.744137, 0.011559,
		-0.688425, 0.611871, -0.389469,
		37.784931, 32.587315, 47.100491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993683, 31.826260, 46.815083>,  <38.266830, 32.159008, 47.373119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993683, 31.826260, 46.815083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868496, 32.195389, 46.725235>,  <37.793385, 32.416866, 46.671326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868496, 32.195389, 46.725235>,  <37.993683, 31.826260, 46.815083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868496, 32.195389, 46.725235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245109, -0.150009, -0.957820,
		-0.917592, -0.354820, -0.179244,
		-0.312965, 0.922822, -0.224616,
		37.774605, 32.472237, 46.657848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516796, 31.749107, 46.275349>,  <37.993683, 31.826260, 46.815083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516796, 31.749107, 46.275349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619637, 32.135494, 46.264011>,  <37.681339, 32.367329, 46.257210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619637, 32.135494, 46.264011>,  <37.516796, 31.749107, 46.275349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619637, 32.135494, 46.264011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031290, -0.020996, -0.999290,
		-0.965879, 0.257803, 0.024827,
		0.257098, 0.965969, -0.028346,
		37.696766, 32.425285, 46.255508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022827, 32.056778, 45.848770>,  <37.516796, 31.749107, 46.275349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022827, 32.056778, 45.848770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330036, 32.312828, 45.856586>,  <37.514362, 32.466457, 45.861275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330036, 32.312828, 45.856586>,  <37.022827, 32.056778, 45.848770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330036, 32.312828, 45.856586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018626, 0.052826, -0.998430,
		-0.640155, 0.766450, 0.052494,
		0.768020, 0.640128, 0.019541,
		37.560444, 32.504868, 45.862450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803524, 32.672852, 45.505730>,  <37.022827, 32.056778, 45.848770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803524, 32.672852, 45.505730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201164, 32.649864, 45.468952>,  <37.439751, 32.636074, 45.446884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201164, 32.649864, 45.468952>,  <36.803524, 32.672852, 45.505730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201164, 32.649864, 45.468952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082033, 0.155919, -0.984358,
		0.070902, 0.986097, 0.150286,
		0.994104, -0.057465, -0.091947,
		37.499397, 32.632626, 45.441368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160675, 33.303608, 45.123211>,  <36.803524, 32.672852, 45.505730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160675, 33.303608, 45.123211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397366, 32.985733, 45.069057>,  <37.539379, 32.795006, 45.036568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397366, 32.985733, 45.069057>,  <37.160675, 33.303608, 45.123211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397366, 32.985733, 45.069057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088318, 0.103019, -0.990751,
		0.801286, 0.598210, -0.009226,
		0.591727, -0.794690, -0.135380,
		37.574883, 32.747326, 45.028442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626236, 33.449871, 44.592110>,  <37.160675, 33.303608, 45.123211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626236, 33.449871, 44.592110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675270, 33.052891, 44.593300>,  <37.704693, 32.814701, 44.594013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675270, 33.052891, 44.593300>,  <37.626236, 33.449871, 44.592110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675270, 33.052891, 44.593300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095542, 0.008816, -0.995386,
		0.987848, 0.122308, 0.095902,
		0.122590, -0.992453, 0.002977,
		37.712048, 32.755154, 44.594193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100410, 33.278534, 44.005344>,  <37.626236, 33.449871, 44.592110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100410, 33.278534, 44.005344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972183, 32.914185, 44.109310>,  <37.895248, 32.695576, 44.171688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972183, 32.914185, 44.109310>,  <38.100410, 33.278534, 44.005344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972183, 32.914185, 44.109310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009999, -0.277635, -0.960634,
		0.947174, -0.305347, 0.098108,
		-0.320565, -0.910869, 0.259916,
		37.876015, 32.640923, 44.187286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592075, 32.761658, 43.765213>,  <38.100410, 33.278534, 44.005344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592075, 32.761658, 43.765213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226421, 32.601059, 43.787689>,  <38.007030, 32.504700, 43.801174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226421, 32.601059, 43.787689>,  <38.592075, 32.761658, 43.765213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226421, 32.601059, 43.787689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049191, -0.247416, -0.967660,
		0.402413, -0.881808, 0.245922,
		-0.914135, -0.401496, 0.056186,
		37.952179, 32.480610, 43.804546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610252, 32.222034, 43.262905>,  <38.592075, 32.761658, 43.765213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610252, 32.222034, 43.262905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216496, 32.258095, 43.323357>,  <37.980240, 32.279732, 43.359627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216496, 32.258095, 43.323357>,  <38.610252, 32.222034, 43.262905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216496, 32.258095, 43.323357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171011, -0.287523, -0.942383,
		-0.041507, -0.953521, 0.298453,
		-0.984395, 0.090154, 0.151128,
		37.921177, 32.285141, 43.368694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347313, 31.579735, 42.934933>,  <38.610252, 32.222034, 43.262905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347313, 31.579735, 42.934933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050034, 31.839846, 42.997917>,  <37.871666, 31.995913, 43.035706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050034, 31.839846, 42.997917>,  <38.347313, 31.579735, 42.934933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050034, 31.839846, 42.997917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373148, -0.207512, -0.904267,
		-0.555349, -0.730808, 0.396872,
		-0.743201, 0.650276, 0.157458,
		37.827072, 32.034927, 43.045155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683636, 31.270430, 42.899673>,  <38.347313, 31.579735, 42.934933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683636, 31.270430, 42.899673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596706, 31.649015, 42.804199>,  <37.544548, 31.876167, 42.746914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596706, 31.649015, 42.804199>,  <37.683636, 31.270430, 42.899673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596706, 31.649015, 42.804199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346717, -0.303437, -0.887532,
		-0.912445, -0.110129, 0.394101,
		-0.217328, 0.946466, -0.238686,
		37.531509, 31.932955, 42.732594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101189, 31.205580, 42.468513>,  <37.683636, 31.270430, 42.899673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101189, 31.205580, 42.468513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228249, 31.576071, 42.387318>,  <37.304485, 31.798365, 42.338600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228249, 31.576071, 42.387318>,  <37.101189, 31.205580, 42.468513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228249, 31.576071, 42.387318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187273, -0.148574, -0.971007,
		-0.929530, 0.346455, 0.126263,
		0.317651, 0.926226, -0.202986,
		37.323544, 31.853939, 42.326424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597992, 31.511669, 42.010010>,  <37.101189, 31.205580, 42.468513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597992, 31.511669, 42.010010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963013, 31.667154, 41.959179>,  <37.182026, 31.760445, 41.928680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963013, 31.667154, 41.959179>,  <36.597992, 31.511669, 42.010010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963013, 31.667154, 41.959179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082885, -0.128492, -0.988241,
		-0.400468, 0.912356, -0.085038,
		0.912554, 0.388711, -0.127077,
		37.236778, 31.783768, 41.921055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561966, 31.919401, 41.446735>,  <36.597992, 31.511669, 42.010010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561966, 31.919401, 41.446735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954720, 31.849768, 41.476646>,  <37.190372, 31.807987, 41.494591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954720, 31.849768, 41.476646>,  <36.561966, 31.919401, 41.446735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954720, 31.849768, 41.476646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078007, 0.011796, -0.996883,
		0.172658, 0.984660, 0.025162,
		0.981888, -0.174083, 0.074773,
		37.249287, 31.797543, 41.499077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884518, 32.241840, 40.882423>,  <36.561966, 31.919401, 41.446735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884518, 32.241840, 40.882423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173141, 31.996132, 41.010189>,  <37.346313, 31.848707, 41.086849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173141, 31.996132, 41.010189>,  <36.884518, 32.241840, 40.882423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173141, 31.996132, 41.010189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305985, -0.130913, -0.942993,
		0.621070, 0.778158, 0.093497,
		0.721558, -0.614273, 0.319411,
		37.389610, 31.811850, 41.106010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499294, 32.557133, 40.636127>,  <36.884518, 32.241840, 40.882423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499294, 32.557133, 40.636127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559418, 32.169319, 40.713493>,  <37.595493, 31.936630, 40.759914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559418, 32.169319, 40.713493>,  <37.499294, 32.557133, 40.636127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559418, 32.169319, 40.713493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316757, -0.138097, -0.938400,
		0.936521, 0.202316, 0.286350,
		0.150309, -0.969535, 0.193415,
		37.604511, 31.878458, 40.771519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196575, 32.466953, 40.521091>,  <37.499294, 32.557133, 40.636127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196575, 32.466953, 40.521091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083332, 32.083347, 40.516296>,  <38.015385, 31.853184, 40.513420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083332, 32.083347, 40.516296>,  <38.196575, 32.466953, 40.521091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083332, 32.083347, 40.516296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655370, -0.184317, -0.732474,
		0.700243, -0.215222, 0.680690,
		-0.283107, -0.959013, -0.011984,
		37.998402, 31.795643, 40.512703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773266, 32.143192, 40.414352>,  <38.196575, 32.466953, 40.521091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773266, 32.143192, 40.414352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499817, 31.864176, 40.328468>,  <38.335747, 31.696766, 40.276939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499817, 31.864176, 40.328468>,  <38.773266, 32.143192, 40.414352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499817, 31.864176, 40.328468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594927, -0.362187, -0.717553,
		0.422760, -0.618268, 0.662585,
		-0.683620, -0.697543, -0.214706,
		38.294731, 31.654913, 40.264057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193035, 31.438715, 40.322659>,  <38.773266, 32.143192, 40.414352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193035, 31.438715, 40.322659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842014, 31.403954, 40.134041>,  <38.631401, 31.383097, 40.020870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842014, 31.403954, 40.134041>,  <39.193035, 31.438715, 40.322659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842014, 31.403954, 40.134041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454659, -0.463153, -0.760772,
		-0.152281, -0.882007, 0.445953,
		-0.877551, -0.086906, -0.471542,
		38.578751, 31.377882, 39.992577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081158, 30.743761, 40.013824>,  <39.193035, 31.438715, 40.322659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081158, 30.743761, 40.013824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866673, 31.007935, 39.803566>,  <38.737984, 31.166439, 39.677410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866673, 31.007935, 39.803566>,  <39.081158, 30.743761, 40.013824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866673, 31.007935, 39.803566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431596, -0.320658, -0.843151,
		-0.725399, -0.678973, -0.113101,
		-0.536209, 0.660435, -0.525647,
		38.705811, 31.206064, 39.645870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848087, 30.344133, 39.460293>,  <39.081158, 30.743761, 40.013824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848087, 30.344133, 39.460293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836422, 30.732389, 39.364788>,  <38.829422, 30.965343, 39.307484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836422, 30.732389, 39.364788>,  <38.848087, 30.344133, 39.460293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836422, 30.732389, 39.364788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432144, -0.203146, -0.878626,
		-0.901333, -0.128808, -0.413531,
		-0.029166, 0.970639, -0.238766,
		38.827671, 31.023581, 39.293159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740376, 30.320700, 38.764904>,  <38.848087, 30.344133, 39.460293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740376, 30.320700, 38.764904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877209, 30.695000, 38.799206>,  <38.959309, 30.919579, 38.819786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877209, 30.695000, 38.799206>,  <38.740376, 30.320700, 38.764904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877209, 30.695000, 38.799206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431446, -0.075342, -0.898987,
		-0.834765, 0.344527, -0.429498,
		0.342085, 0.935748, 0.085752,
		38.979836, 30.975723, 38.824932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717983, 30.702135, 38.070183>,  <38.740376, 30.320700, 38.764904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717983, 30.702135, 38.070183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003380, 30.901197, 38.267471>,  <39.174618, 31.020636, 38.385845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003380, 30.901197, 38.267471>,  <38.717983, 30.702135, 38.070183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003380, 30.901197, 38.267471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609034, -0.092449, -0.787738,
		-0.346425, 0.862433, -0.369052,
		0.713490, 0.497657, 0.493224,
		39.217426, 31.050495, 38.415440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031330, 31.179943, 37.621880>,  <38.717983, 30.702135, 38.070183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031330, 31.179943, 37.621880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298195, 31.162331, 37.919323>,  <39.458313, 31.151762, 38.097790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298195, 31.162331, 37.919323>,  <39.031330, 31.179943, 37.621880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298195, 31.162331, 37.919323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741339, 0.136879, -0.657024,
		-0.072854, 0.989609, 0.123963,
		0.667164, -0.044032, 0.743608,
		39.498344, 31.149120, 38.142406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436787, 31.680977, 37.454239>,  <39.031330, 31.179943, 37.621880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436787, 31.680977, 37.454239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660355, 31.495672, 37.729340>,  <39.794495, 31.384489, 37.894398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660355, 31.495672, 37.729340>,  <39.436787, 31.680977, 37.454239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660355, 31.495672, 37.729340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826082, 0.383169, -0.413244,
		-0.072084, 0.799107, 0.596852,
		0.558921, -0.463260, 0.687748,
		39.828030, 31.356693, 37.935665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900814, 32.089596, 37.739090>,  <39.436787, 31.680977, 37.454239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900814, 32.089596, 37.739090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065086, 31.727083, 37.779064>,  <40.163651, 31.509575, 37.803047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065086, 31.727083, 37.779064>,  <39.900814, 32.089596, 37.739090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065086, 31.727083, 37.779064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848399, 0.339686, -0.405996,
		0.334003, 0.251518, 0.908395,
		0.410684, -0.906285, 0.099931,
		40.188293, 31.455198, 37.809044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618877, 32.233585, 37.858650>,  <39.900814, 32.089596, 37.739090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618877, 32.233585, 37.858650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641155, 31.842827, 37.776123>,  <40.654522, 31.608372, 37.726604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641155, 31.842827, 37.776123>,  <40.618877, 32.233585, 37.858650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641155, 31.842827, 37.776123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786312, 0.170266, -0.593905,
		0.615314, -0.129153, 0.777630,
		0.055699, -0.976898, -0.206322,
		40.657864, 31.549757, 37.714226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362080, 32.010574, 37.993416>,  <40.618877, 32.233585, 37.858650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362080, 32.010574, 37.993416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208382, 31.739212, 37.742935>,  <41.116165, 31.576395, 37.592648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208382, 31.739212, 37.742935>,  <41.362080, 32.010574, 37.993416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208382, 31.739212, 37.742935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737350, 0.182671, -0.650343,
		0.555583, -0.711620, 0.430029,
		-0.384243, -0.678402, -0.626202,
		41.093109, 31.535692, 37.555073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929893, 31.641861, 37.950394>,  <41.362080, 32.010574, 37.993416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929893, 31.641861, 37.950394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682632, 31.590933, 37.640121>,  <41.534275, 31.560377, 37.453957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682632, 31.590933, 37.640121>,  <41.929893, 31.641861, 37.950394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682632, 31.590933, 37.640121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779312, 0.029746, -0.625930,
		0.102765, -0.991416, 0.080834,
		-0.618152, -0.127319, -0.775679,
		41.497189, 31.552738, 37.407417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405064, 31.333271, 37.507561>,  <41.929893, 31.641861, 37.950394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405064, 31.333271, 37.507561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103218, 31.457979, 37.276615>,  <41.922112, 31.532804, 37.138046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103218, 31.457979, 37.276615>,  <42.405064, 31.333271, 37.507561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103218, 31.457979, 37.276615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655196, 0.405877, -0.637167,
		0.035690, -0.859105, -0.510552,
		-0.754615, 0.311772, -0.577368,
		41.876835, 31.551510, 37.103405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528038, 31.078468, 36.798820>,  <42.405064, 31.333271, 37.507561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528038, 31.078468, 36.798820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301807, 31.407024, 36.828320>,  <42.166069, 31.604158, 36.846020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301807, 31.407024, 36.828320>,  <42.528038, 31.078468, 36.798820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301807, 31.407024, 36.828320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659058, 0.503931, -0.558297,
		-0.495744, -0.267157, -0.826356,
		-0.565580, 0.821389, 0.073749,
		42.132133, 31.653440, 36.850445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400513, 31.288773, 36.181763>,  <42.528038, 31.078468, 36.798820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400513, 31.288773, 36.181763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387653, 31.608492, 36.421791>,  <42.379940, 31.800323, 36.565807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387653, 31.608492, 36.421791>,  <42.400513, 31.288773, 36.181763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387653, 31.608492, 36.421791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811201, 0.371601, -0.451514,
		-0.583883, 0.472267, -0.660337,
		-0.032147, 0.799298, 0.600075,
		42.378010, 31.848282, 36.601814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520454, 31.826368, 35.737965>,  <42.400513, 31.288773, 36.181763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520454, 31.826368, 35.737965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599331, 31.961882, 36.105953>,  <42.646656, 32.043190, 36.326744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599331, 31.961882, 36.105953>,  <42.520454, 31.826368, 35.737965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599331, 31.961882, 36.105953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749207, 0.553155, -0.364291,
		-0.632301, 0.761082, -0.144742,
		0.197191, 0.338784, 0.919968,
		42.658489, 32.063519, 36.381943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453922, 32.635773, 35.766022>,  <42.520454, 31.826368, 35.737965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453922, 32.635773, 35.766022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693451, 32.436897, 36.017170>,  <42.837170, 32.317574, 36.167858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693451, 32.436897, 36.017170>,  <42.453922, 32.635773, 35.766022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693451, 32.436897, 36.017170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799338, 0.419700, -0.430013,
		-0.049719, 0.759379, 0.648746,
		0.598822, -0.497188, 0.627867,
		42.873096, 32.287743, 36.205528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919128, 33.141281, 36.075031>,  <42.453922, 32.635773, 35.766022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919128, 33.141281, 36.075031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099930, 32.789013, 36.018295>,  <43.208412, 32.577652, 35.984253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099930, 32.789013, 36.018295>,  <42.919128, 33.141281, 36.075031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099930, 32.789013, 36.018295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699187, 0.448529, -0.556740,
		0.553923, 0.152472, 0.818487,
		0.452003, -0.880667, -0.141844,
		43.235531, 32.524815, 35.975742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766376, 33.819908, 36.160477>,  <42.919128, 33.141281, 36.075031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766376, 33.819908, 36.160477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138969, 33.744942, 36.035755>,  <43.362526, 33.699963, 35.960922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138969, 33.744942, 36.035755>,  <42.766376, 33.819908, 36.160477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138969, 33.744942, 36.035755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307333, -0.864005, -0.398801,
		-0.194664, 0.467304, -0.862400,
		0.931479, -0.187412, -0.311808,
		43.418411, 33.688717, 35.942211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869987, 33.835117, 35.351143>,  <42.766376, 33.819908, 36.160477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869987, 33.835117, 35.351143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104774, 33.575748, 35.545055>,  <43.245647, 33.420128, 35.661404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104774, 33.575748, 35.545055>,  <42.869987, 33.835117, 35.351143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104774, 33.575748, 35.545055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294140, -0.728662, -0.618493,
		0.754285, 0.220445, -0.618432,
		0.586971, -0.648426, 0.484777,
		43.280865, 33.381222, 35.690487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334461, 33.472752, 34.882030>,  <42.869987, 33.835117, 35.351143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334461, 33.472752, 34.882030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246700, 33.234238, 35.190914>,  <43.194042, 33.091129, 35.376244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246700, 33.234238, 35.190914>,  <43.334461, 33.472752, 34.882030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246700, 33.234238, 35.190914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284290, -0.718073, -0.635256,
		0.933295, -0.358911, -0.011968,
		-0.219406, -0.596284, 0.772209,
		43.180878, 33.055351, 35.422577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000729, 33.646091, 35.079529>,  <43.334461, 33.472752, 34.882030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000729, 33.646091, 35.079529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400326, 33.662807, 35.072906>,  <44.640083, 33.672836, 35.068932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400326, 33.662807, 35.072906>,  <44.000729, 33.646091, 35.079529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400326, 33.662807, 35.072906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011545, -0.594530, -0.803990,
		-0.043446, 0.802986, -0.594412,
		0.998989, 0.041793, -0.016560,
		44.700024, 33.675346, 35.067940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327801, 33.976257, 34.423035>,  <44.000729, 33.646091, 35.079529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327801, 33.976257, 34.423035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559685, 33.696320, 34.589962>,  <44.698814, 33.528358, 34.690117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559685, 33.696320, 34.589962>,  <44.327801, 33.976257, 34.423035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559685, 33.696320, 34.589962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035243, -0.490143, -0.870929,
		0.814062, 0.519592, -0.259476,
		0.579708, -0.699846, 0.417318,
		44.733597, 33.486366, 34.715157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847343, 33.778347, 33.808334>,  <44.327801, 33.976257, 34.423035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847343, 33.778347, 33.808334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840450, 33.477898, 34.072311>,  <44.836315, 33.297630, 34.230698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840450, 33.477898, 34.072311>,  <44.847343, 33.778347, 33.808334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840450, 33.477898, 34.072311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145912, -0.651085, -0.744848,
		0.989148, -0.109127, -0.098379,
		-0.017230, -0.751119, 0.659942,
		44.835281, 33.252563, 34.270294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484169, 33.228378, 33.667274>,  <44.847343, 33.778347, 33.808334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484169, 33.228378, 33.667274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181206, 33.051140, 33.859108>,  <44.999428, 32.944798, 33.974209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181206, 33.051140, 33.859108>,  <45.484169, 33.228378, 33.667274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181206, 33.051140, 33.859108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092263, -0.654497, -0.750414,
		0.646391, -0.612617, 0.454840,
		-0.757408, -0.443095, 0.479583,
		44.953983, 32.918213, 34.002983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684731, 32.527569, 33.688068>,  <45.484169, 33.228378, 33.667274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684731, 32.527569, 33.688068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292080, 32.505489, 33.761131>,  <45.056488, 32.492241, 33.804970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292080, 32.505489, 33.761131>,  <45.684731, 32.527569, 33.688068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292080, 32.505489, 33.761131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111068, -0.613089, -0.782167,
		0.155159, -0.788083, 0.595693,
		-0.981626, -0.055197, 0.182657,
		44.997593, 32.488930, 33.815929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550797, 31.817545, 33.585331>,  <45.684731, 32.527569, 33.688068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550797, 31.817545, 33.585331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221573, 32.043022, 33.557545>,  <45.024040, 32.178307, 33.540874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221573, 32.043022, 33.557545>,  <45.550797, 31.817545, 33.585331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221573, 32.043022, 33.557545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248418, -0.467279, -0.848492,
		-0.510749, -0.681102, 0.524629,
		-0.823058, 0.563693, -0.069464,
		44.974655, 32.212132, 33.536705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017784, 31.400663, 33.356773>,  <45.550797, 31.817545, 33.585331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017784, 31.400663, 33.356773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843800, 31.752314, 33.278854>,  <44.739410, 31.963305, 33.232101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843800, 31.752314, 33.278854>,  <45.017784, 31.400663, 33.356773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843800, 31.752314, 33.278854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254177, -0.327410, -0.910053,
		-0.863831, -0.346324, 0.365864,
		-0.434961, 0.879126, -0.194799,
		44.713310, 32.016052, 33.220413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583519, 31.328512, 32.808311>,  <45.017784, 31.400663, 33.356773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583519, 31.328512, 32.808311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626545, 31.725222, 32.780563>,  <44.652363, 31.963247, 32.763912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626545, 31.725222, 32.780563>,  <44.583519, 31.328512, 32.808311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626545, 31.725222, 32.780563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151383, -0.052626, -0.987073,
		-0.982605, 0.116679, 0.144477,
		0.107568, 0.991774, -0.069374,
		44.658813, 32.022755, 32.759750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971851, 31.619658, 32.481483>,  <44.583519, 31.328512, 32.808311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971851, 31.619658, 32.481483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263935, 31.886084, 32.420620>,  <44.439186, 32.045940, 32.384102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263935, 31.886084, 32.420620>,  <43.971851, 31.619658, 32.481483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263935, 31.886084, 32.420620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306197, 0.119945, -0.944382,
		-0.610771, 0.736184, 0.291532,
		0.730207, 0.666068, -0.152159,
		44.482998, 32.085903, 32.374973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763569, 32.043949, 31.869230>,  <43.971851, 31.619658, 32.481483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763569, 32.043949, 31.869230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159332, 32.101276, 31.878513>,  <44.396790, 32.135674, 31.884083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159332, 32.101276, 31.878513>,  <43.763569, 32.043949, 31.869230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159332, 32.101276, 31.878513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014481, 0.256462, -0.966446,
		-0.144465, 0.955869, 0.255820,
		0.989404, 0.143322, 0.023208,
		44.456154, 32.144272, 31.885475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821930, 32.545757, 31.404722>,  <43.763569, 32.043949, 31.869230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821930, 32.545757, 31.404722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198372, 32.414528, 31.437441>,  <44.424236, 32.335789, 31.457071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198372, 32.414528, 31.437441>,  <43.821930, 32.545757, 31.404722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198372, 32.414528, 31.437441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119912, 0.097650, -0.987971,
		0.316142, 0.939591, 0.131238,
		0.941103, -0.328076, 0.081797,
		44.480701, 32.316105, 31.461981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194996, 33.073467, 31.050779>,  <43.821930, 32.545757, 31.404722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194996, 33.073467, 31.050779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.430046, 32.751431, 31.083082>,  <44.571075, 32.558208, 31.102465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.430046, 32.751431, 31.083082>,  <44.194996, 33.073467, 31.050779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430046, 32.751431, 31.083082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254285, 0.088998, -0.963026,
		0.768137, 0.586435, 0.257020,
		0.587626, -0.805092, 0.080758,
		44.606335, 32.509903, 31.107309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834393, 33.326969, 30.910971>,  <44.194996, 33.073467, 31.050779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834393, 33.326969, 30.910971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835545, 32.929207, 30.868744>,  <44.836235, 32.690548, 30.843409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835545, 32.929207, 30.868744>,  <44.834393, 33.326969, 30.910971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835545, 32.929207, 30.868744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395835, 0.098077, -0.913069,
		0.918317, -0.039162, 0.393903,
		0.002875, -0.994408, -0.105567,
		44.836407, 32.630886, 30.837074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411232, 33.303585, 30.527184>,  <44.834393, 33.326969, 30.910971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411232, 33.303585, 30.527184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182377, 32.982018, 30.462227>,  <45.045063, 32.789078, 30.423252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182377, 32.982018, 30.462227>,  <45.411232, 33.303585, 30.527184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182377, 32.982018, 30.462227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118972, 0.114554, -0.986267,
		0.811480, -0.583604, 0.030103,
		-0.572141, -0.803918, -0.162391,
		45.010735, 32.740841, 30.413509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832405, 32.951160, 29.933632>,  <45.411232, 33.303585, 30.527184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832405, 32.951160, 29.933632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477257, 32.768005, 29.951611>,  <45.264168, 32.658112, 29.962399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477257, 32.768005, 29.951611>,  <45.832405, 32.951160, 29.933632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477257, 32.768005, 29.951611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014119, -0.070534, -0.997409,
		0.459871, -0.886208, 0.056161,
		-0.887874, -0.457886, 0.044949,
		45.210896, 32.630638, 29.965096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853836, 32.416019, 29.420729>,  <45.832405, 32.951160, 29.933632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853836, 32.416019, 29.420729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464085, 32.486141, 29.477098>,  <45.230236, 32.528214, 29.510920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464085, 32.486141, 29.477098>,  <45.853836, 32.416019, 29.420729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464085, 32.486141, 29.477098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116975, 0.140188, -0.983191,
		-0.192113, -0.974482, -0.116090,
		-0.974377, 0.175304, 0.140922,
		45.171772, 32.538731, 29.519375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500004, 32.445614, 28.734310>,  <45.853836, 32.416019, 29.420729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500004, 32.445614, 28.734310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192337, 32.593136, 28.943062>,  <45.007736, 32.681648, 29.068314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192337, 32.593136, 28.943062>,  <45.500004, 32.445614, 28.734310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192337, 32.593136, 28.943062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413930, 0.334650, -0.846564,
		-0.486864, -0.867175, -0.104744,
		-0.769171, 0.368805, 0.521879,
		44.961586, 32.703777, 29.099627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976574, 32.285503, 28.359732>,  <45.500004, 32.445614, 28.734310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976574, 32.285503, 28.359732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836666, 32.578373, 28.593512>,  <44.752720, 32.754093, 28.733780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836666, 32.578373, 28.593512>,  <44.976574, 32.285503, 28.359732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836666, 32.578373, 28.593512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447778, 0.417321, -0.790783,
		-0.822894, -0.538296, 0.181884,
		-0.349772, 0.732175, 0.584448,
		44.731735, 32.798027, 28.768847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286911, 32.305874, 28.185617>,  <44.976574, 32.285503, 28.359732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286911, 32.305874, 28.185617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391834, 32.668488, 28.317919>,  <44.454788, 32.886055, 28.397299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391834, 32.668488, 28.317919>,  <44.286911, 32.305874, 28.185617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391834, 32.668488, 28.317919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367066, 0.410723, -0.834607,
		-0.892444, 0.097517, 0.440492,
		0.262309, 0.906530, 0.330752,
		44.470528, 32.940445, 28.417145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770203, 32.748089, 27.940296>,  <44.286911, 32.305874, 28.185617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770203, 32.748089, 27.940296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070370, 32.994991, 28.034838>,  <44.250469, 33.143131, 28.091562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070370, 32.994991, 28.034838>,  <43.770203, 32.748089, 27.940296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070370, 32.994991, 28.034838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114837, 0.473914, -0.873051,
		-0.650909, 0.628012, 0.426518,
		0.750420, 0.617257, 0.236356,
		44.295494, 33.180168, 28.105745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542946, 33.395561, 27.972660>,  <43.770203, 32.748089, 27.940296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542946, 33.395561, 27.972660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929962, 33.404942, 27.872005>,  <44.162170, 33.410568, 27.811613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929962, 33.404942, 27.872005>,  <43.542946, 33.395561, 27.972660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929962, 33.404942, 27.872005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213577, 0.608192, -0.764518,
		0.135115, 0.793443, 0.593457,
		0.967538, 0.023451, -0.251637,
		44.220222, 33.411976, 27.796515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831139, 34.108017, 27.759027>,  <43.542946, 33.395561, 27.972660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831139, 34.108017, 27.759027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049595, 33.812489, 27.601101>,  <44.180668, 33.635174, 27.506346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049595, 33.812489, 27.601101>,  <43.831139, 34.108017, 27.759027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049595, 33.812489, 27.601101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124819, 0.394281, -0.910474,
		0.828342, 0.546527, 0.123115,
		0.546140, -0.738817, -0.394817,
		44.213436, 33.590843, 27.482656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247849, 34.587315, 27.329388>,  <43.831139, 34.108017, 27.759027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247849, 34.587315, 27.329388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347549, 34.231262, 27.481989>,  <44.407372, 34.017632, 27.573549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347549, 34.231262, 27.481989>,  <44.247849, 34.587315, 27.329388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347549, 34.231262, 27.481989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959309, 0.172974, -0.223174,
		0.132662, 0.421608, 0.897022,
		0.249253, -0.890127, 0.381505,
		44.422325, 33.964226, 27.596441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098438, 35.340054, 27.368053>,  <44.247849, 34.587315, 27.329388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098438, 35.340054, 27.368053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397636, 35.100838, 27.483183>,  <44.577156, 34.957306, 27.552261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397636, 35.100838, 27.483183>,  <44.098438, 35.340054, 27.368053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397636, 35.100838, 27.483183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637686, -0.527359, 0.561470,
		-0.183997, -0.603520, -0.775828,
		0.747998, -0.598044, 0.287824,
		44.622036, 34.921425, 27.569530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712120, 35.255981, 26.749968>,  <44.098438, 35.340054, 27.368053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712120, 35.255981, 26.749968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406414, 35.044670, 26.897926>,  <43.222992, 34.917885, 26.986702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406414, 35.044670, 26.897926>,  <43.712120, 35.255981, 26.749968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406414, 35.044670, 26.897926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554078, 0.831377, 0.042539,
		-0.329995, -0.172440, -0.928099,
		-0.764265, -0.528277, 0.369896,
		43.177135, 34.886189, 27.008896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125854, 35.173336, 26.285744>,  <43.712120, 35.255981, 26.749968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125854, 35.173336, 26.285744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004997, 35.175011, 26.667046>,  <42.932484, 35.176014, 26.895826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004997, 35.175011, 26.667046>,  <43.125854, 35.173336, 26.285744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004997, 35.175011, 26.667046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270531, 0.958499, -0.089955,
		-0.914070, -0.285064, -0.288469,
		-0.302141, 0.004185, 0.953254,
		42.914356, 35.176266, 26.953022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414257, 35.353378, 26.387819>,  <43.125854, 35.173336, 26.285744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414257, 35.353378, 26.387819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600403, 35.457287, 26.726276>,  <42.712090, 35.519630, 26.929350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600403, 35.457287, 26.726276>,  <42.414257, 35.353378, 26.387819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600403, 35.457287, 26.726276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370010, 0.925521, -0.080641,
		-0.804070, -0.275554, 0.526822,
		0.465364, 0.259770, 0.846142,
		42.740013, 35.535217, 26.980120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931820, 35.664223, 26.943317>,  <42.414257, 35.353378, 26.387819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931820, 35.664223, 26.943317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293034, 35.817726, 27.020517>,  <42.509762, 35.909828, 27.066837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293034, 35.817726, 27.020517>,  <41.931820, 35.664223, 26.943317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293034, 35.817726, 27.020517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415191, 0.895006, 0.163035,
		-0.110168, -0.227358, 0.967559,
		0.903039, 0.383761, 0.192998,
		42.563946, 35.932854, 27.078417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957027, 36.072140, 27.619936>,  <41.931820, 35.664223, 26.943317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957027, 36.072140, 27.619936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201450, 36.225773, 27.343069>,  <42.348103, 36.317951, 27.176949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201450, 36.225773, 27.343069>,  <41.957027, 36.072140, 27.619936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201450, 36.225773, 27.343069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464875, 0.881850, 0.078936,
		0.640707, 0.273538, 0.717406,
		0.611053, 0.384079, -0.692168,
		42.384766, 36.340996, 27.135418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341366, 36.716087, 27.681698>,  <41.957027, 36.072140, 27.619936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341366, 36.716087, 27.681698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156239, 36.968201, 27.931028>,  <42.045162, 37.119469, 28.080627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156239, 36.968201, 27.931028>,  <42.341366, 36.716087, 27.681698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156239, 36.968201, 27.931028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718987, -0.144398, 0.679858,
		0.518512, 0.762816, -0.386337,
		-0.462820, 0.630286, 0.623327,
		42.017391, 37.157288, 28.118027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817272, 37.074116, 28.002913>,  <42.341366, 36.716087, 27.681698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817272, 37.074116, 28.002913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522728, 37.129868, 28.267744>,  <42.346001, 37.163319, 28.426643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522728, 37.129868, 28.267744>,  <42.817272, 37.074116, 28.002913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522728, 37.129868, 28.267744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660206, -0.066033, 0.748176,
		0.147998, 0.988035, -0.043394,
		-0.736359, 0.139377, 0.662080,
		42.301819, 37.171680, 28.466368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065674, 37.599422, 28.445782>,  <42.817272, 37.074116, 28.002913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065674, 37.599422, 28.445782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790531, 37.391254, 28.648174>,  <42.625446, 37.266354, 28.769609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790531, 37.391254, 28.648174>,  <43.065674, 37.599422, 28.445782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790531, 37.391254, 28.648174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585893, 0.013402, 0.810278,
		-0.428463, 0.853807, 0.295690,
		-0.687858, -0.520417, 0.505982,
		42.584175, 37.235130, 28.799969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030300, 37.919643, 29.101912>,  <43.065674, 37.599422, 28.445782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030300, 37.919643, 29.101912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890274, 37.549511, 29.160181>,  <42.806259, 37.327431, 29.195143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890274, 37.549511, 29.160181>,  <43.030300, 37.919643, 29.101912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890274, 37.549511, 29.160181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599024, -0.101582, 0.794261,
		-0.720154, 0.365308, 0.589855,
		-0.350069, -0.925327, 0.145674,
		42.785252, 37.271912, 29.203884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880154, 37.825863, 29.822670>,  <43.030300, 37.919643, 29.101912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880154, 37.825863, 29.822670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898777, 37.445328, 29.700827>,  <42.909950, 37.217007, 29.627720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898777, 37.445328, 29.700827>,  <42.880154, 37.825863, 29.822670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898777, 37.445328, 29.700827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596459, -0.218132, 0.772435,
		-0.801292, -0.217654, 0.557278,
		0.046563, -0.951339, -0.304609,
		42.912746, 37.159927, 29.609444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928467, 37.447662, 30.419682>,  <42.880154, 37.825863, 29.822670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928467, 37.447662, 30.419682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065228, 37.185181, 30.150612>,  <43.147285, 37.027691, 29.989170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065228, 37.185181, 30.150612>,  <42.928467, 37.447662, 30.419682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065228, 37.185181, 30.150612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674783, -0.326762, 0.661736,
		-0.654042, -0.680160, 0.331077,
		0.341903, -0.656208, -0.672676,
		43.167797, 36.988319, 29.948809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921837, 36.763184, 30.694160>,  <42.928467, 37.447662, 30.419682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921837, 36.763184, 30.694160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200520, 36.756996, 30.407286>,  <43.367729, 36.753284, 30.235161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200520, 36.756996, 30.407286>,  <42.921837, 36.763184, 30.694160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200520, 36.756996, 30.407286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616431, -0.498418, 0.609584,
		-0.366887, -0.866799, -0.337718,
		0.696711, -0.015469, -0.717185,
		43.409534, 36.752354, 30.192131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198261, 36.151119, 30.788321>,  <42.921837, 36.763184, 30.694160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198261, 36.151119, 30.788321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466080, 36.351093, 30.568586>,  <43.626770, 36.471077, 30.436747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466080, 36.351093, 30.568586>,  <43.198261, 36.151119, 30.788321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466080, 36.351093, 30.568586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740012, -0.385329, 0.551275,
		0.063928, -0.775620, -0.627955,
		0.669549, 0.499936, -0.549335,
		43.666943, 36.501076, 30.403786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682434, 35.717327, 30.494234>,  <43.198261, 36.151119, 30.788321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682434, 35.717327, 30.494234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873528, 36.068722, 30.496780>,  <43.988182, 36.279556, 30.498308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873528, 36.068722, 30.496780>,  <43.682434, 35.717327, 30.494234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873528, 36.068722, 30.496780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789032, -0.432249, 0.436566,
		0.386268, -0.203537, -0.899650,
		0.477730, 0.878484, 0.006367,
		44.016846, 36.332268, 30.498690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345909, 35.538868, 30.498140>,  <43.682434, 35.717327, 30.494234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345909, 35.538868, 30.498140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383213, 35.921814, 30.607500>,  <44.405594, 36.151581, 30.673117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383213, 35.921814, 30.607500>,  <44.345909, 35.538868, 30.498140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383213, 35.921814, 30.607500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839642, -0.223195, 0.495161,
		0.535074, 0.183382, -0.824662,
		0.093256, 0.957369, 0.273401,
		44.411190, 36.209026, 30.689520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010029, 35.649036, 30.369656>,  <44.345909, 35.538868, 30.498140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010029, 35.649036, 30.369656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902073, 35.926361, 30.636930>,  <44.837299, 36.092758, 30.797295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902073, 35.926361, 30.636930>,  <45.010029, 35.649036, 30.369656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902073, 35.926361, 30.636930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775112, -0.255276, 0.577958,
		0.571279, 0.673906, -0.468498,
		-0.269894, 0.693314, 0.668186,
		44.821106, 36.134354, 30.837387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.649918, 35.990448, 30.616755>,  <45.010029, 35.649036, 30.369656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.649918, 35.990448, 30.616755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368114, 36.064835, 30.890715>,  <45.199032, 36.109467, 31.055090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368114, 36.064835, 30.890715>,  <45.649918, 35.990448, 30.616755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368114, 36.064835, 30.890715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559101, -0.448976, 0.697013,
		0.437126, 0.873977, 0.212332,
		-0.704505, 0.185968, 0.684900,
		45.156761, 36.120625, 31.096184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984333, 36.151890, 31.261871>,  <45.649918, 35.990448, 30.616755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984333, 36.151890, 31.261871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.615112, 36.066639, 31.389963>,  <45.393578, 36.015488, 31.466818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.615112, 36.066639, 31.389963>,  <45.984333, 36.151890, 31.261871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.615112, 36.066639, 31.389963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384140, -0.467104, 0.796399,
		-0.020150, 0.858133, 0.513032,
		-0.923055, -0.213123, 0.320231,
		45.338196, 36.002701, 31.486032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943066, 36.193138, 31.927002>,  <45.984333, 36.151890, 31.261871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943066, 36.193138, 31.927002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646187, 35.933563, 31.860048>,  <45.468060, 35.777817, 31.819876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646187, 35.933563, 31.860048>,  <45.943066, 36.193138, 31.927002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646187, 35.933563, 31.860048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269006, -0.517227, 0.812473,
		-0.613822, 0.557990, 0.558454,
		-0.742199, -0.648941, -0.167383,
		45.423527, 35.738880, 31.809834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593002, 36.136055, 32.557400>,  <45.943066, 36.193138, 31.927002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593002, 36.136055, 32.557400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496582, 35.806049, 32.352947>,  <45.438732, 35.608047, 32.230278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496582, 35.806049, 32.352947>,  <45.593002, 36.136055, 32.557400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496582, 35.806049, 32.352947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312672, -0.564594, 0.763852,
		-0.918767, 0.024309, 0.394052,
		-0.241048, -0.825011, -0.511129,
		45.424267, 35.558544, 32.199608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069778, 35.729034, 32.979836>,  <45.593002, 36.136055, 32.557400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069778, 35.729034, 32.979836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261299, 35.480804, 32.731438>,  <45.376209, 35.331867, 32.582397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261299, 35.480804, 32.731438>,  <45.069778, 35.729034, 32.979836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261299, 35.480804, 32.731438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307017, -0.544326, 0.780672,
		-0.822491, -0.564442, -0.070096,
		0.478800, -0.620575, -0.620997,
		45.404938, 35.294632, 32.545139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903954, 35.114899, 33.215042>,  <45.069778, 35.729034, 32.979836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903954, 35.114899, 33.215042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.220772, 35.062836, 32.976471>,  <45.410862, 35.031597, 32.833328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.220772, 35.062836, 32.976471>,  <44.903954, 35.114899, 33.215042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.220772, 35.062836, 32.976471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377802, -0.662923, 0.646374,
		-0.479514, -0.737288, -0.475892,
		0.792043, -0.130153, -0.596429,
		45.458385, 35.023788, 32.797543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080952, 34.401039, 33.185455>,  <44.903954, 35.114899, 33.215042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080952, 34.401039, 33.185455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420494, 34.556824, 33.042480>,  <45.624218, 34.650295, 32.956696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420494, 34.556824, 33.042480>,  <45.080952, 34.401039, 33.185455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420494, 34.556824, 33.042480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525295, -0.697197, 0.487834,
		-0.059217, -0.601863, -0.796401,
		0.848857, 0.389457, -0.357442,
		45.675152, 34.673660, 32.935249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473999, 33.785297, 32.990170>,  <45.080952, 34.401039, 33.185455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473999, 33.785297, 32.990170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746296, 34.075264, 33.032265>,  <45.909676, 34.249245, 33.057522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746296, 34.075264, 33.032265>,  <45.473999, 33.785297, 32.990170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746296, 34.075264, 33.032265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678701, -0.678239, 0.281703,
		0.275590, -0.120342, -0.953713,
		0.680746, 0.724921, 0.105239,
		45.950520, 34.292740, 33.063835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.180489, 33.456440, 32.805473>,  <45.473999, 33.785297, 32.990170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.180489, 33.456440, 32.805473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276611, 33.788467, 33.006763>,  <46.334286, 33.987682, 33.127537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276611, 33.788467, 33.006763>,  <46.180489, 33.456440, 32.805473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276611, 33.788467, 33.006763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799079, -0.463494, 0.382944,
		0.551114, 0.310096, -0.774671,
		0.240306, 0.830069, 0.503229,
		46.348701, 34.037487, 33.157734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.839478, 33.479542, 32.760090>,  <46.180489, 33.456440, 32.805473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.839478, 33.479542, 32.760090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773129, 33.701736, 33.086014>,  <46.733318, 33.835052, 33.281570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773129, 33.701736, 33.086014>,  <46.839478, 33.479542, 32.760090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773129, 33.701736, 33.086014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726597, -0.489796, 0.481827,
		0.666741, 0.671961, -0.322373,
		-0.165872, 0.555489, 0.814812,
		46.723366, 33.868382, 33.330456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.515732, 33.902008, 33.115448>,  <46.839478, 33.479542, 32.760090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.515732, 33.902008, 33.115448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230209, 33.788998, 33.371777>,  <47.058895, 33.721191, 33.525574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230209, 33.788998, 33.371777>,  <47.515732, 33.902008, 33.115448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.230209, 33.788998, 33.371777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698082, -0.360427, 0.618687,
		0.056176, 0.888973, 0.454502,
		-0.713811, -0.282524, 0.640823,
		47.016068, 33.704239, 33.564022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.692398, 34.178486, 33.763748>,  <47.515732, 33.902008, 33.115448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.692398, 34.178486, 33.763748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466576, 33.848763, 33.780689>,  <47.331081, 33.650928, 33.790855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466576, 33.848763, 33.780689>,  <47.692398, 34.178486, 33.763748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.466576, 33.848763, 33.780689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678431, -0.434204, 0.592620,
		-0.470110, 0.363302, 0.804368,
		-0.564560, -0.824305, 0.042351,
		47.297207, 33.601471, 33.793396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.485058, 34.052532, 34.508011>,  <47.692398, 34.178486, 33.763748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.485058, 34.052532, 34.508011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479202, 33.688347, 34.342678>,  <47.475689, 33.469837, 34.243477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479202, 33.688347, 34.342678>,  <47.485058, 34.052532, 34.508011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479202, 33.688347, 34.342678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671338, -0.315299, 0.670740,
		-0.741007, -0.267662, 0.615846,
		-0.014644, -0.910463, -0.413330,
		47.474808, 33.415207, 34.218678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.328259, 33.896866, 35.324963>,  <47.485058, 34.052532, 34.508011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.328259, 33.896866, 35.324963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635937, 34.054928, 35.124092>,  <47.820545, 34.149765, 35.003571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635937, 34.054928, 35.124092>,  <47.328259, 33.896866, 35.324963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.635937, 34.054928, 35.124092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495185, 0.865316, -0.077580,
		0.403887, 0.308346, 0.861277,
		0.769199, 0.395158, -0.502178,
		47.866695, 34.173477, 34.973438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536751, 34.556519, 35.614929>,  <47.328259, 33.896866, 35.324963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536751, 34.556519, 35.614929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611576, 34.572609, 35.222321>,  <47.656471, 34.582264, 34.986755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611576, 34.572609, 35.222321>,  <47.536751, 34.556519, 35.614929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.611576, 34.572609, 35.222321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631512, 0.770265, -0.088794,
		0.752461, 0.636454, 0.169493,
		0.187067, 0.040223, -0.981523,
		47.667698, 34.584675, 34.927864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.922550, 35.124519, 35.268959>,  <47.536751, 34.556519, 35.614929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.922550, 35.124519, 35.268959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652908, 34.955360, 35.026722>,  <47.491123, 34.853867, 34.881382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652908, 34.955360, 35.026722>,  <47.922550, 35.124519, 35.268959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.652908, 34.955360, 35.026722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588904, 0.802593, 0.095065,
		0.445839, 0.420718, -0.790078,
		-0.674107, -0.422896, -0.605590,
		47.450676, 34.828491, 34.845043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.166588, 36.106434, 44.233398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823738, 35.921638, 44.142265>,  <34.618031, 35.810760, 44.087585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823738, 35.921638, 44.142265>,  <35.166588, 36.106434, 44.233398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823738, 35.921638, 44.142265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212295, 0.086172, -0.973399,
		0.469335, -0.882688, 0.024218,
		-0.857120, -0.461992, -0.227834,
		34.566601, 35.783043, 44.073914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391129, 35.500977, 43.767185>,  <35.166588, 36.106434, 44.233398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391129, 35.500977, 43.767185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.003479, 35.574238, 43.701160>,  <34.770889, 35.618195, 43.661545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.003479, 35.574238, 43.701160>,  <35.391129, 35.500977, 43.767185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003479, 35.574238, 43.701160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182424, 0.082248, -0.979774,
		-0.165871, -0.979638, -0.113121,
		-0.969128, 0.183152, -0.165066,
		34.712742, 35.629185, 43.651642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229984, 35.094727, 43.292461>,  <35.391129, 35.500977, 43.767185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229984, 35.094727, 43.292461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927353, 35.352867, 43.250301>,  <34.745773, 35.507751, 43.225006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927353, 35.352867, 43.250301>,  <35.229984, 35.094727, 43.292461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927353, 35.352867, 43.250301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017434, -0.141220, -0.989825,
		-0.653666, -0.750722, 0.095594,
		-0.756583, 0.645348, -0.105399,
		34.700378, 35.546471, 43.218681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680862, 34.790176, 42.865170>,  <35.229984, 35.094727, 43.292461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680862, 34.790176, 42.865170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.616055, 35.183517, 42.832283>,  <34.577168, 35.419521, 42.812553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.616055, 35.183517, 42.832283>,  <34.680862, 34.790176, 42.865170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616055, 35.183517, 42.832283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071985, -0.071313, -0.994853,
		-0.984158, -0.167107, -0.059233,
		-0.162022, 0.983356, -0.082212,
		34.567448, 35.478523, 42.807621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088364, 34.844959, 42.370163>,  <34.680862, 34.790176, 42.865170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088364, 34.844959, 42.370163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.290646, 35.188644, 42.339142>,  <34.412014, 35.394855, 42.320530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.290646, 35.188644, 42.339142>,  <34.088364, 34.844959, 42.370163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290646, 35.188644, 42.339142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138125, -0.169373, -0.975825,
		-0.851579, 0.482764, -0.204332,
		0.505702, 0.859215, -0.077553,
		34.442356, 35.446407, 42.315876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951164, 35.124519, 41.692612>,  <34.088364, 34.844959, 42.370163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951164, 35.124519, 41.692612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273319, 35.344536, 41.780983>,  <34.466610, 35.476543, 41.834007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273319, 35.344536, 41.780983>,  <33.951164, 35.124519, 41.692612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273319, 35.344536, 41.780983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265130, -0.000920, -0.964212,
		-0.530151, 0.835139, -0.146573,
		0.805386, 0.550039, 0.220932,
		34.514935, 35.509548, 41.847263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060280, 35.617687, 41.025703>,  <33.951164, 35.124519, 41.692612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060280, 35.617687, 41.025703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401543, 35.575737, 41.230106>,  <34.606300, 35.550568, 41.352749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401543, 35.575737, 41.230106>,  <34.060280, 35.617687, 41.025703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401543, 35.575737, 41.230106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486107, -0.195589, -0.851731,
		0.189273, 0.975062, -0.115888,
		0.853157, -0.104876, 0.511004,
		34.657490, 35.544273, 41.383408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519081, 36.091370, 40.714630>,  <34.060280, 35.617687, 41.025703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519081, 36.091370, 40.714630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736843, 35.804062, 40.887936>,  <34.867500, 35.631676, 40.991917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736843, 35.804062, 40.887936>,  <34.519081, 36.091370, 40.714630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736843, 35.804062, 40.887936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364618, -0.262533, -0.893381,
		0.755435, 0.644332, 0.118971,
		0.544401, -0.718271, 0.433261,
		34.900162, 35.588581, 41.017914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149830, 36.082790, 40.333298>,  <34.519081, 36.091370, 40.714630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149830, 36.082790, 40.333298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.156013, 35.741386, 40.541637>,  <35.159725, 35.536545, 40.666641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.156013, 35.741386, 40.541637>,  <35.149830, 36.082790, 40.333298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156013, 35.741386, 40.541637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372299, -0.478536, -0.795234,
		0.927984, 0.206207, 0.310362,
		0.015464, -0.853511, 0.520845,
		35.160652, 35.485332, 40.697891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859234, 35.874321, 40.249912>,  <35.149830, 36.082790, 40.333298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859234, 35.874321, 40.249912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.617825, 35.567352, 40.336464>,  <35.472977, 35.383171, 40.388393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.617825, 35.567352, 40.336464>,  <35.859234, 35.874321, 40.249912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617825, 35.567352, 40.336464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415223, -0.534171, -0.736377,
		0.680694, -0.354579, 0.641038,
		-0.603528, -0.767421, 0.216378,
		35.436768, 35.337128, 40.401379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237492, 35.250759, 40.190521>,  <35.859234, 35.874321, 40.249912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237492, 35.250759, 40.190521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869568, 35.095860, 40.165264>,  <35.648815, 35.002918, 40.150108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869568, 35.095860, 40.165264>,  <36.237492, 35.250759, 40.190521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869568, 35.095860, 40.165264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327551, -0.669263, -0.666932,
		0.216007, -0.634134, 0.742438,
		-0.919810, -0.387248, -0.063146,
		35.593624, 34.979687, 40.146320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396416, 34.567074, 40.064617>,  <36.237492, 35.250759, 40.190521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396416, 34.567074, 40.064617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.005478, 34.600494, 39.986832>,  <35.770916, 34.620544, 39.940159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.005478, 34.600494, 39.986832>,  <36.396416, 34.567074, 40.064617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005478, 34.600494, 39.986832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119638, -0.539857, -0.833212,
		-0.174595, -0.837601, 0.517631,
		-0.977345, 0.083546, -0.194465,
		35.712273, 34.625557, 39.928493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132935, 33.874092, 40.073395>,  <36.396416, 34.567074, 40.064617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132935, 33.874092, 40.073395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945305, 34.125671, 39.825397>,  <35.832726, 34.276619, 39.676598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945305, 34.125671, 39.825397>,  <36.132935, 33.874092, 40.073395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945305, 34.125671, 39.825397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268240, -0.567396, -0.778530,
		-0.841435, -0.531499, 0.097444,
		-0.469077, 0.628945, -0.619996,
		35.804581, 34.314354, 39.639400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001060, 33.511559, 39.482758>,  <36.132935, 33.874092, 40.073395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001060, 33.511559, 39.482758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917747, 33.875038, 39.338051>,  <35.867760, 34.093128, 39.251225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917747, 33.875038, 39.338051>,  <36.001060, 33.511559, 39.482758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917747, 33.875038, 39.338051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343885, -0.278228, -0.896846,
		-0.915621, -0.311204, -0.254539,
		-0.208282, 0.908703, -0.361770,
		35.855263, 34.147648, 39.229519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821892, 33.421005, 38.854858>,  <36.001060, 33.511559, 39.482758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821892, 33.421005, 38.854858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900135, 33.812904, 38.837776>,  <35.947079, 34.048046, 38.827526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900135, 33.812904, 38.837776>,  <35.821892, 33.421005, 38.854858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900135, 33.812904, 38.837776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251373, -0.092181, -0.963491,
		-0.947919, 0.177730, -0.264315,
		0.195606, 0.979752, -0.042704,
		35.958817, 34.106831, 38.824966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716099, 33.607567, 38.136181>,  <35.821892, 33.421005, 38.854858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716099, 33.607567, 38.136181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933426, 33.916142, 38.268658>,  <36.063824, 34.101288, 38.348145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933426, 33.916142, 38.268658>,  <35.716099, 33.607567, 38.136181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933426, 33.916142, 38.268658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550284, -0.029316, -0.834463,
		-0.634027, 0.635630, -0.440437,
		0.543321, 0.771437, 0.331190,
		36.096424, 34.147572, 38.368015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790585, 34.221848, 37.533115>,  <35.716099, 33.607567, 38.136181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790585, 34.221848, 37.533115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105232, 34.268181, 37.775707>,  <36.294022, 34.295979, 37.921261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105232, 34.268181, 37.775707>,  <35.790585, 34.221848, 37.533115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105232, 34.268181, 37.775707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601770, 0.076077, -0.795038,
		-0.138228, 0.990351, -0.009859,
		0.786617, 0.115829, 0.606479,
		36.341217, 34.302929, 37.957649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254658, 34.805798, 37.279530>,  <35.790585, 34.221848, 37.533115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254658, 34.805798, 37.279530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522514, 34.607994, 37.501175>,  <36.683228, 34.489311, 37.634163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522514, 34.607994, 37.501175>,  <36.254658, 34.805798, 37.279530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522514, 34.607994, 37.501175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617954, -0.042868, -0.785045,
		0.411967, 0.868114, 0.276879,
		0.669639, -0.494511, 0.554114,
		36.723408, 34.459641, 37.667408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938507, 35.046940, 37.123608>,  <36.254658, 34.805798, 37.279530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938507, 35.046940, 37.123608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047199, 34.710457, 37.310600>,  <37.112415, 34.508568, 37.422794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047199, 34.710457, 37.310600>,  <36.938507, 35.046940, 37.123608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047199, 34.710457, 37.310600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716730, -0.147273, -0.681622,
		0.642232, 0.520272, 0.562899,
		0.271729, -0.841206, 0.467478,
		37.128719, 34.458096, 37.450844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738262, 35.060822, 37.115910>,  <36.938507, 35.046940, 37.123608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738262, 35.060822, 37.115910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603661, 34.686020, 37.153416>,  <37.522900, 34.461140, 37.175919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603661, 34.686020, 37.153416>,  <37.738262, 35.060822, 37.115910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603661, 34.686020, 37.153416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558335, -0.278710, -0.781398,
		0.758304, -0.210592, 0.616948,
		-0.336506, -0.937001, 0.093766,
		37.502708, 34.404919, 37.181545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330204, 34.622608, 37.270397>,  <37.738262, 35.060822, 37.115910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330204, 34.622608, 37.270397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073612, 34.357380, 37.116081>,  <37.919655, 34.198242, 37.023491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073612, 34.357380, 37.116081>,  <38.330204, 34.622608, 37.270397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073612, 34.357380, 37.116081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744003, -0.415176, -0.523535,
		0.186974, -0.622864, 0.759658,
		-0.641483, -0.663075, -0.385786,
		37.881168, 34.158459, 37.000347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769176, 34.006992, 37.160740>,  <38.330204, 34.622608, 37.270397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769176, 34.006992, 37.160740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449879, 33.975574, 36.921864>,  <38.258301, 33.956722, 36.778538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449879, 33.975574, 36.921864>,  <38.769176, 34.006992, 37.160740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449879, 33.975574, 36.921864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554210, -0.484099, -0.677126,
		-0.235913, -0.871481, 0.429961,
		-0.798246, -0.078546, -0.597189,
		38.210403, 33.952011, 36.742706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511948, 33.670280, 37.298908>,  <38.769176, 34.006992, 37.160740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511948, 33.670280, 37.298908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890636, 33.636749, 37.423286>,  <40.117851, 33.616631, 37.497913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890636, 33.636749, 37.423286>,  <39.511948, 33.670280, 37.298908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890636, 33.636749, 37.423286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280960, 0.256903, 0.924696,
		-0.157402, -0.962794, 0.219663,
		0.946724, -0.083832, 0.310944,
		40.174652, 33.611599, 37.516571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492123, 33.401909, 37.975929>,  <39.511948, 33.670280, 37.298908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492123, 33.401909, 37.975929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850670, 33.578789, 37.963367>,  <40.065800, 33.684917, 37.955830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850670, 33.578789, 37.963367>,  <39.492123, 33.401909, 37.975929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850670, 33.578789, 37.963367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077896, 0.226841, 0.970812,
		0.436416, -0.867757, 0.237778,
		0.896366, 0.442200, -0.031403,
		40.119579, 33.711449, 37.953945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797787, 33.237144, 38.575371>,  <39.492123, 33.401909, 37.975929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797787, 33.237144, 38.575371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.993256, 33.558777, 38.439930>,  <40.110538, 33.751755, 38.358665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.993256, 33.558777, 38.439930>,  <39.797787, 33.237144, 38.575371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993256, 33.558777, 38.439930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082585, 0.428982, 0.899530,
		0.868548, -0.411615, 0.276038,
		0.488676, 0.804081, -0.338598,
		40.139858, 33.800003, 38.338352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399147, 33.432545, 39.009190>,  <39.797787, 33.237144, 38.575371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399147, 33.432545, 39.009190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297363, 33.762207, 38.806797>,  <40.236294, 33.960003, 38.685364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297363, 33.762207, 38.806797>,  <40.399147, 33.432545, 39.009190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297363, 33.762207, 38.806797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152324, 0.482513, 0.862542,
		0.955011, 0.296558, 0.002756,
		-0.254464, 0.824157, -0.505978,
		40.221024, 34.009453, 38.655003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811401, 33.907871, 39.363369>,  <40.399147, 33.432545, 39.009190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811401, 33.907871, 39.363369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.553932, 34.146072, 39.171093>,  <40.399452, 34.288994, 39.055729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.553932, 34.146072, 39.171093>,  <40.811401, 33.907871, 39.363369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553932, 34.146072, 39.171093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048785, 0.594898, 0.802319,
		0.763745, 0.539881, -0.353868,
		-0.643672, 0.595504, -0.480688,
		40.360832, 34.324722, 39.026886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077778, 34.602036, 39.428822>,  <40.811401, 33.907871, 39.363369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077778, 34.602036, 39.428822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.695435, 34.633251, 39.315514>,  <40.466030, 34.651981, 39.247528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.695435, 34.633251, 39.315514>,  <41.077778, 34.602036, 39.428822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695435, 34.633251, 39.315514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173379, 0.628549, 0.758199,
		0.237221, 0.773845, -0.587273,
		-0.955859, 0.078040, -0.283274,
		40.408676, 34.656662, 39.230530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792336, 35.348892, 39.592804>,  <41.077778, 34.602036, 39.428822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792336, 35.348892, 39.592804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.446522, 35.149952, 39.563873>,  <40.239033, 35.030590, 39.546513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.446522, 35.149952, 39.563873>,  <40.792336, 35.348892, 39.592804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446522, 35.149952, 39.563873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410549, 0.615859, 0.672434,
		-0.289887, 0.611035, -0.736615,
		-0.864532, -0.497346, -0.072330,
		40.187160, 35.000748, 39.542175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423374, 35.798031, 39.723660>,  <40.792336, 35.348892, 39.592804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423374, 35.798031, 39.723660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.169003, 35.491177, 39.757366>,  <40.016380, 35.307064, 39.777592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.169003, 35.491177, 39.757366>,  <40.423374, 35.798031, 39.723660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169003, 35.491177, 39.757366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583091, 0.549134, 0.598712,
		-0.505565, 0.331605, -0.796519,
		-0.635932, -0.767131, 0.084267,
		39.978222, 35.261036, 39.782646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626896, 36.104549, 39.623806>,  <40.423374, 35.798031, 39.723660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626896, 36.104549, 39.623806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636902, 35.766731, 39.837765>,  <39.642906, 35.564041, 39.966141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636902, 35.766731, 39.837765>,  <39.626896, 36.104549, 39.623806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636902, 35.766731, 39.837765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536851, 0.440012, 0.719847,
		-0.843306, -0.305167, -0.442389,
		0.025017, -0.844549, 0.534894,
		39.644405, 35.513367, 39.998234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889996, 35.982029, 39.760204>,  <39.626896, 36.104549, 39.623806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889996, 35.982029, 39.760204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.111744, 35.771347, 40.017963>,  <39.244793, 35.644936, 40.172619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.111744, 35.771347, 40.017963>,  <38.889996, 35.982029, 39.760204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111744, 35.771347, 40.017963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648885, 0.211316, 0.730954,
		-0.521171, -0.823362, -0.224624,
		0.554373, -0.526707, 0.644399,
		39.278057, 35.613335, 40.211285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429577, 35.876446, 40.232456>,  <38.889996, 35.982029, 39.760204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429577, 35.876446, 40.232456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766800, 35.779015, 40.424259>,  <38.969135, 35.720554, 40.539341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766800, 35.779015, 40.424259>,  <38.429577, 35.876446, 40.232456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766800, 35.779015, 40.424259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497791, -0.015864, 0.867152,
		-0.203617, -0.969750, -0.134628,
		0.843056, -0.243584, 0.479503,
		39.019718, 35.705940, 40.568111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260334, 35.253090, 40.621643>,  <38.429577, 35.876446, 40.232456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260334, 35.253090, 40.621643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557568, 35.463585, 40.786999>,  <38.735909, 35.589882, 40.886211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557568, 35.463585, 40.786999>,  <38.260334, 35.253090, 40.621643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557568, 35.463585, 40.786999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403672, -0.140206, 0.904097,
		0.533734, -0.838696, 0.108244,
		0.743086, 0.526243, 0.413391,
		38.780495, 35.621456, 40.911015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482525, 34.951984, 41.252899>,  <38.260334, 35.253090, 40.621643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482525, 34.951984, 41.252899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601524, 35.333332, 41.273232>,  <38.672924, 35.562141, 41.285431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601524, 35.333332, 41.273232>,  <38.482525, 34.951984, 41.252899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601524, 35.333332, 41.273232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260212, 0.029742, 0.965093,
		0.918579, -0.300336, 0.256927,
		0.297494, 0.953370, 0.050831,
		38.690773, 35.619343, 41.288483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970219, 35.061508, 41.762875>,  <38.482525, 34.951984, 41.252899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970219, 35.061508, 41.762875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816811, 35.427601, 41.713467>,  <38.724766, 35.647259, 41.683823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816811, 35.427601, 41.713467>,  <38.970219, 35.061508, 41.762875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816811, 35.427601, 41.713467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298949, 0.003514, 0.954262,
		0.873810, 0.402902, 0.272261,
		-0.383518, 0.915236, -0.123518,
		38.701756, 35.702171, 41.676411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229782, 35.399723, 42.375458>,  <38.970219, 35.061508, 41.762875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229782, 35.399723, 42.375458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923943, 35.609493, 42.225597>,  <38.740440, 35.735355, 42.135681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923943, 35.609493, 42.225597>,  <39.229782, 35.399723, 42.375458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923943, 35.609493, 42.225597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429428, 0.018934, 0.902903,
		0.480603, 0.851243, 0.210727,
		-0.764600, 0.524430, -0.374647,
		38.694561, 35.766823, 42.113205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148457, 35.872646, 42.946285>,  <39.229782, 35.399723, 42.375458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148457, 35.872646, 42.946285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816074, 35.853542, 42.724575>,  <38.616646, 35.842079, 42.591549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816074, 35.853542, 42.724575>,  <39.148457, 35.872646, 42.946285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816074, 35.853542, 42.724575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556027, 0.104317, 0.824592,
		0.018437, 0.993397, -0.113240,
		-0.830960, -0.047761, -0.554279,
		38.566788, 35.839214, 42.558292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872566, 36.451916, 43.166668>,  <39.148457, 35.872646, 42.946285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872566, 36.451916, 43.166668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574329, 36.246159, 42.997200>,  <38.395390, 36.122704, 42.895519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574329, 36.246159, 42.997200>,  <38.872566, 36.451916, 43.166668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574329, 36.246159, 42.997200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553270, 0.123425, 0.823808,
		-0.371470, 0.848626, -0.376623,
		-0.745589, -0.514393, -0.423670,
		38.350651, 36.091839, 42.870098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243397, 36.807228, 43.398567>,  <38.872566, 36.451916, 43.166668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243397, 36.807228, 43.398567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117779, 36.443619, 43.288986>,  <38.042408, 36.225452, 43.223236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117779, 36.443619, 43.288986>,  <38.243397, 36.807228, 43.398567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117779, 36.443619, 43.288986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542905, -0.064776, 0.837292,
		-0.778864, 0.411679, -0.473171,
		-0.314046, -0.909024, -0.273954,
		38.023563, 36.170910, 43.206799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.472946, 36.748852, 43.515472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574230, 36.362076, 43.527550>,  <37.635002, 36.130009, 43.534798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574230, 36.362076, 43.527550>,  <37.472946, 36.748852, 43.515472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574230, 36.362076, 43.527550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555016, -0.119637, 0.823191,
		-0.792364, -0.225199, -0.566961,
		0.253211, -0.966939, 0.030193,
		37.650192, 36.071995, 43.536606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848488, 36.377831, 43.639091>,  <37.472946, 36.748852, 43.515472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848488, 36.377831, 43.639091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124966, 36.102936, 43.728500>,  <37.290852, 35.938000, 43.782146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124966, 36.102936, 43.728500>,  <36.848488, 36.377831, 43.639091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124966, 36.102936, 43.728500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492150, -0.221137, 0.841954,
		-0.529189, -0.691960, -0.491070,
		0.691192, -0.687233, 0.223525,
		37.332325, 35.896767, 43.795559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477207, 35.763889, 43.671501>,  <36.848488, 36.377831, 43.639091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477207, 35.763889, 43.671501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811726, 35.740425, 43.889553>,  <37.012436, 35.726345, 44.020386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811726, 35.740425, 43.889553>,  <36.477207, 35.763889, 43.671501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811726, 35.740425, 43.889553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548258, -0.080941, 0.832383,
		-0.004702, -0.994991, -0.099850,
		0.836296, -0.058658, 0.545131,
		37.062614, 35.722824, 44.053093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331020, 35.147598, 44.054623>,  <36.477207, 35.763889, 43.671501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331020, 35.147598, 44.054623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632076, 35.299038, 44.270103>,  <36.812710, 35.389900, 44.399391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632076, 35.299038, 44.270103>,  <36.331020, 35.147598, 44.054623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632076, 35.299038, 44.270103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402919, -0.382262, 0.831584,
		0.520762, -0.842934, -0.135160,
		0.752637, 0.378599, 0.538702,
		36.857868, 35.412617, 44.431713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508751, 34.584854, 44.524399>,  <36.331020, 35.147598, 44.054623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508751, 34.584854, 44.524399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.649124, 34.921818, 44.687954>,  <36.733349, 35.123997, 44.786087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.649124, 34.921818, 44.687954>,  <36.508751, 34.584854, 44.524399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649124, 34.921818, 44.687954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426381, -0.245010, 0.870729,
		0.833695, -0.479906, 0.273208,
		0.350930, 0.842413, 0.408886,
		36.754402, 35.174541, 44.810619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823174, 34.396320, 45.136349>,  <36.508751, 34.584854, 44.524399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823174, 34.396320, 45.136349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798424, 34.788818, 45.209381>,  <36.783573, 35.024315, 45.253201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798424, 34.788818, 45.209381>,  <36.823174, 34.396320, 45.136349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798424, 34.788818, 45.209381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306522, -0.192777, 0.932138,
		0.949850, 0.001709, 0.312700,
		-0.061874, 0.981241, 0.182585,
		36.779861, 35.083191, 45.264156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236904, 34.505768, 45.723602>,  <36.823174, 34.396320, 45.136349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236904, 34.505768, 45.723602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005924, 34.831814, 45.705093>,  <36.867336, 35.027443, 45.693989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005924, 34.831814, 45.705093>,  <37.236904, 34.505768, 45.723602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005924, 34.831814, 45.705093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256056, -0.126992, 0.958284,
		0.775235, 0.565208, 0.282046,
		-0.577448, 0.815115, -0.046276,
		36.832691, 35.076347, 45.691212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442867, 35.029099, 46.257572>,  <37.236904, 34.505768, 45.723602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442867, 35.029099, 46.257572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062355, 35.112133, 46.166382>,  <36.834049, 35.161953, 46.111668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062355, 35.112133, 46.166382>,  <37.442867, 35.029099, 46.257572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062355, 35.112133, 46.166382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265281, -0.174223, 0.948300,
		0.157138, 0.962576, 0.220805,
		-0.951280, 0.207589, -0.227976,
		36.776970, 35.174408, 46.097988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146946, 35.494148, 46.794590>,  <37.442867, 35.029099, 46.257572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146946, 35.494148, 46.794590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828728, 35.328896, 46.617306>,  <36.637798, 35.229744, 46.510937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828728, 35.328896, 46.617306>,  <37.146946, 35.494148, 46.794590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828728, 35.328896, 46.617306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441998, -0.104625, 0.890893,
		-0.414428, 0.904641, -0.099371,
		-0.795542, -0.413133, -0.443209,
		36.590065, 35.204956, 46.484344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584988, 35.902477, 46.854691>,  <37.146946, 35.494148, 46.794590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584988, 35.902477, 46.854691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422150, 35.540123, 46.807957>,  <36.324448, 35.322712, 46.779915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422150, 35.540123, 46.807957>,  <36.584988, 35.902477, 46.854691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422150, 35.540123, 46.807957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522499, 0.126043, 0.843272,
		-0.749179, 0.404338, -0.524634,
		-0.407093, -0.905883, -0.116838,
		36.300022, 35.268356, 46.772907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949451, 35.878906, 47.140759>,  <36.584988, 35.902477, 46.854691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949451, 35.878906, 47.140759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033989, 35.487946, 47.139244>,  <36.084713, 35.253368, 47.138336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033989, 35.487946, 47.139244>,  <35.949451, 35.878906, 47.140759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033989, 35.487946, 47.139244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335919, -0.076271, 0.938797,
		-0.917874, -0.197138, -0.344449,
		0.211344, -0.977405, -0.003785,
		36.097393, 35.194725, 47.138107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341381, 35.559410, 47.470760>,  <35.949451, 35.878906, 47.140759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341381, 35.559410, 47.470760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.649025, 35.304127, 47.484398>,  <35.833611, 35.150959, 47.492580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.649025, 35.304127, 47.484398>,  <35.341381, 35.559410, 47.470760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649025, 35.304127, 47.484398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258752, -0.262164, 0.929687,
		-0.584396, -0.723852, -0.366770,
		0.769109, -0.638208, 0.034091,
		35.879757, 35.112663, 47.494625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073704, 35.075298, 47.865993>,  <35.341381, 35.559410, 47.470760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073704, 35.075298, 47.865993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.464642, 34.999058, 47.902786>,  <35.699203, 34.953312, 47.924862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.464642, 34.999058, 47.902786>,  <35.073704, 35.075298, 47.865993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464642, 34.999058, 47.902786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150871, -0.322715, 0.934395,
		-0.148414, -0.927106, -0.344161,
		0.977349, -0.190601, 0.091978,
		35.757847, 34.941875, 47.930378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109665, 34.431313, 48.103306>,  <35.073704, 35.075298, 47.865993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109665, 34.431313, 48.103306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.475288, 34.568550, 48.189827>,  <35.694660, 34.650894, 48.241741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.475288, 34.568550, 48.189827>,  <35.109665, 34.431313, 48.103306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475288, 34.568550, 48.189827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121517, -0.277156, 0.953110,
		0.386961, -0.897479, -0.211643,
		0.914054, 0.343098, 0.216308,
		35.749504, 34.671478, 48.254719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520588, 33.908092, 48.658367>,  <35.109665, 34.431313, 48.103306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520588, 33.908092, 48.658367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.698128, 34.266182, 48.674232>,  <35.804649, 34.481037, 48.683750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.698128, 34.266182, 48.674232>,  <35.520588, 33.908092, 48.658367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698128, 34.266182, 48.674232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133953, -0.110043, 0.984859,
		0.886035, -0.431813, -0.168760,
		0.443846, 0.895225, 0.039659,
		35.831280, 34.534748, 48.686131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915459, 33.819916, 49.204102>,  <35.520588, 33.908092, 48.658367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915459, 33.819916, 49.204102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935242, 34.217167, 49.161682>,  <35.947113, 34.455517, 49.136230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935242, 34.217167, 49.161682>,  <35.915459, 33.819916, 49.204102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935242, 34.217167, 49.161682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115385, 0.099788, 0.988295,
		0.992088, -0.061119, -0.109657,
		0.049461, 0.993130, -0.106051,
		35.950081, 34.515106, 49.129868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512127, 34.093273, 49.579712>,  <35.915459, 33.819916, 49.204102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512127, 34.093273, 49.579712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.257801, 34.401814, 49.568733>,  <36.105206, 34.586937, 49.562145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.257801, 34.401814, 49.568733>,  <36.512127, 34.093273, 49.579712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257801, 34.401814, 49.568733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034404, 0.007207, 0.999382,
		0.771074, 0.636367, 0.021955,
		-0.635816, 0.771353, -0.027451,
		36.067055, 34.633221, 49.560497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847694, 34.551609, 49.999363>,  <36.512127, 34.093273, 49.579712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847694, 34.551609, 49.999363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.468369, 34.676807, 49.978436>,  <36.240772, 34.751926, 49.965878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.468369, 34.676807, 49.978436>,  <36.847694, 34.551609, 49.999363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468369, 34.676807, 49.978436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008230, 0.189077, 0.981928,
		0.317236, 0.930742, -0.181880,
		-0.948311, 0.313000, -0.052322,
		36.183876, 34.770706, 49.962738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791439, 35.244202, 50.385113>,  <36.847694, 34.551609, 49.999363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791439, 35.244202, 50.385113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.416958, 35.107422, 50.352615>,  <36.192268, 35.025352, 50.333118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.416958, 35.107422, 50.352615>,  <36.791439, 35.244202, 50.385113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416958, 35.107422, 50.352615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106064, 0.054502, 0.992864,
		-0.335086, 0.938135, -0.087294,
		-0.936198, -0.341954, -0.081240,
		36.136097, 35.004837, 50.328243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445591, 35.563564, 50.891476>,  <36.791439, 35.244202, 50.385113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445591, 35.563564, 50.891476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.181240, 35.273785, 50.813080>,  <36.022629, 35.099915, 50.766045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.181240, 35.273785, 50.813080>,  <36.445591, 35.563564, 50.891476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181240, 35.273785, 50.813080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227807, -0.055180, 0.972142,
		-0.715085, 0.687113, -0.128568,
		-0.660876, -0.724452, -0.195987,
		35.982979, 35.056450, 50.754284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994572, 35.610443, 51.243668>,  <36.445591, 35.563564, 50.891476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994572, 35.610443, 51.243668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.913479, 35.223927, 51.180195>,  <35.864822, 34.992016, 51.142109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.913479, 35.223927, 51.180195>,  <35.994572, 35.610443, 51.243668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913479, 35.223927, 51.180195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115916, -0.137230, 0.983734,
		-0.972350, 0.217826, -0.084188,
		-0.202729, -0.966292, -0.158685,
		35.852661, 34.934040, 51.132591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276810, 35.463863, 51.386040>,  <35.994572, 35.610443, 51.243668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276810, 35.463863, 51.386040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542950, 35.177464, 51.470570>,  <35.702633, 35.005623, 51.521290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542950, 35.177464, 51.470570>,  <35.276810, 35.463863, 51.386040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542950, 35.177464, 51.470570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331556, -0.029784, 0.942965,
		-0.668867, -0.697467, -0.257210,
		0.665348, -0.715998, 0.211328,
		35.742554, 34.962666, 51.533970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043125, 34.737247, 51.659603>,  <35.276810, 35.463863, 51.386040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043125, 34.737247, 51.659603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385712, 34.891533, 51.796822>,  <35.591263, 34.984104, 51.879154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385712, 34.891533, 51.796822>,  <35.043125, 34.737247, 51.659603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385712, 34.891533, 51.796822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377494, 0.014739, 0.925895,
		0.352074, -0.922501, 0.158229,
		0.856471, 0.385714, 0.343050,
		35.642654, 35.007248, 51.899738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463638, 34.460121, 52.034634>,  <35.043125, 34.737247, 51.659603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463638, 34.460121, 52.034634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227848, 34.137371, 52.049980>,  <34.086376, 33.943722, 52.059189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227848, 34.137371, 52.049980>,  <34.463638, 34.460121, 52.034634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227848, 34.137371, 52.049980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164352, 0.073294, -0.983675,
		0.790893, -0.586155, -0.175817,
		-0.589472, -0.806877, 0.038368,
		34.051006, 33.895309, 52.061489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618458, 33.698219, 51.580750>,  <34.463638, 34.460121, 52.034634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618458, 33.698219, 51.580750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.233273, 33.795033, 51.628288>,  <34.002163, 33.853119, 51.656811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.233273, 33.795033, 51.628288>,  <34.618458, 33.698219, 51.580750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233273, 33.795033, 51.628288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149297, -0.111581, -0.982477,
		-0.224530, -0.963831, 0.143583,
		-0.962962, 0.242032, 0.118844,
		33.944386, 33.867641, 51.663940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341057, 33.292793, 51.102348>,  <34.618458, 33.698219, 51.580750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341057, 33.292793, 51.102348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047085, 33.551289, 51.184566>,  <33.870701, 33.706387, 51.233898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047085, 33.551289, 51.184566>,  <34.341057, 33.292793, 51.102348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047085, 33.551289, 51.184566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370982, -0.129406, -0.919579,
		-0.567672, -0.752080, 0.334849,
		-0.734929, 0.646242, 0.205548,
		33.826607, 33.745163, 51.246231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741413, 32.960503, 50.814709>,  <34.341057, 33.292793, 51.102348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741413, 32.960503, 50.814709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641247, 33.347645, 50.824158>,  <33.581146, 33.579929, 50.829826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641247, 33.347645, 50.824158>,  <33.741413, 32.960503, 50.814709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641247, 33.347645, 50.824158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342521, -0.065749, -0.937207,
		-0.905524, -0.242777, 0.347974,
		-0.250411, 0.967852, 0.023619,
		33.566124, 33.638000, 50.831242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120548, 32.981464, 50.389187>,  <33.741413, 32.960503, 50.814709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120548, 32.981464, 50.389187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250267, 33.359253, 50.410393>,  <33.328098, 33.585926, 50.423115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250267, 33.359253, 50.410393>,  <33.120548, 32.981464, 50.389187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250267, 33.359253, 50.410393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281396, 0.149825, -0.947823,
		-0.903131, 0.292460, 0.314358,
		0.324299, 0.944468, 0.053015,
		33.347557, 33.642593, 50.426296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521976, 33.441364, 50.148937>,  <33.120548, 32.981464, 50.389187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521976, 33.441364, 50.148937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854500, 33.659393, 50.105438>,  <33.054012, 33.790211, 50.079338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854500, 33.659393, 50.105438>,  <32.521976, 33.441364, 50.148937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854500, 33.659393, 50.105438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334462, 0.334310, -0.881119,
		-0.443923, 0.768849, 0.460221,
		0.831304, 0.545076, -0.108743,
		33.103889, 33.822918, 50.072815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361694, 34.046780, 49.669773>,  <32.521976, 33.441364, 50.148937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361694, 34.046780, 49.669773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760262, 34.080551, 49.667622>,  <32.999401, 34.100815, 49.666332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760262, 34.080551, 49.667622>,  <32.361694, 34.046780, 49.669773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760262, 34.080551, 49.667622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026695, 0.253475, -0.966974,
		-0.080281, 0.963650, 0.254820,
		0.996415, 0.084433, -0.005376,
		33.059185, 34.105881, 49.666008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534969, 34.671417, 49.241741>,  <32.361694, 34.046780, 49.669773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534969, 34.671417, 49.241741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.858074, 34.435963, 49.228851>,  <33.051937, 34.294689, 49.221115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.858074, 34.435963, 49.228851>,  <32.534969, 34.671417, 49.241741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858074, 34.435963, 49.228851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063020, 0.140577, -0.988062,
		0.586136, 0.796084, 0.150648,
		0.807758, -0.588633, -0.032228,
		33.100403, 34.259373, 49.219181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077324, 35.039059, 48.846867>,  <32.534969, 34.671417, 49.241741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077324, 35.039059, 48.846867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.212418, 34.662613, 48.840683>,  <33.293472, 34.436745, 48.836971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.212418, 34.662613, 48.840683>,  <33.077324, 35.039059, 48.846867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212418, 34.662613, 48.840683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325047, 0.132033, -0.936436,
		0.883335, 0.311239, 0.350499,
		0.337732, -0.941115, -0.015462,
		33.313736, 34.380280, 48.836044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792007, 34.996471, 48.668400>,  <33.077324, 35.039059, 48.846867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792007, 34.996471, 48.668400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.615860, 34.649590, 48.575417>,  <33.510170, 34.441460, 48.519627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.615860, 34.649590, 48.575417>,  <33.792007, 34.996471, 48.668400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615860, 34.649590, 48.575417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224428, 0.144368, -0.963737,
		0.869313, -0.476572, 0.131049,
		-0.440371, -0.867201, -0.232457,
		33.483749, 34.389431, 48.505680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228168, 34.675529, 48.203197>,  <33.792007, 34.996471, 48.668400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228168, 34.675529, 48.203197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894482, 34.460899, 48.152325>,  <33.694271, 34.332123, 48.121799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894482, 34.460899, 48.152325>,  <34.228168, 34.675529, 48.203197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894482, 34.460899, 48.152325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058557, 0.143139, -0.987969,
		0.548323, -0.831625, -0.087988,
		-0.834214, -0.536573, -0.127183,
		33.644218, 34.299927, 48.114170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477119, 34.127571, 47.824844>,  <34.228168, 34.675529, 48.203197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477119, 34.127571, 47.824844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081062, 34.123360, 47.768986>,  <33.843426, 34.120834, 47.735470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081062, 34.123360, 47.768986>,  <34.477119, 34.127571, 47.824844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081062, 34.123360, 47.768986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139066, -0.191549, -0.971581,
		-0.016524, -0.981427, 0.191125,
		-0.990146, -0.010525, -0.139648,
		33.784019, 34.120201, 47.727093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296616, 33.708115, 47.192230>,  <34.477119, 34.127571, 47.824844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296616, 33.708115, 47.192230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955986, 33.917747, 47.197395>,  <33.751610, 34.043526, 47.200493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955986, 33.917747, 47.197395>,  <34.296616, 33.708115, 47.192230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955986, 33.917747, 47.197395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053332, 0.111110, -0.992376,
		-0.521518, -0.844391, -0.122568,
		-0.851572, 0.524079, 0.012913,
		33.700516, 34.074970, 47.201271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955959, 33.485561, 46.509933>,  <34.296616, 33.708115, 47.192230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955959, 33.485561, 46.509933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.800125, 33.820847, 46.662575>,  <33.706623, 34.022018, 46.754158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.800125, 33.820847, 46.662575>,  <33.955959, 33.485561, 46.509933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800125, 33.820847, 46.662575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024160, 0.423501, -0.905574,
		-0.920672, -0.343581, -0.185242,
		-0.389588, 0.838212, 0.381604,
		33.683250, 34.072311, 46.777058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744484, 33.820534, 45.906994>,  <33.955959, 33.485561, 46.509933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744484, 33.820534, 45.906994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.728436, 34.123886, 46.167225>,  <33.718807, 34.305897, 46.323364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.728436, 34.123886, 46.167225>,  <33.744484, 33.820534, 45.906994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728436, 34.123886, 46.167225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002236, 0.651028, -0.759050,
		-0.999192, -0.031911, -0.024426,
		-0.040124, 0.758383, 0.650573,
		33.716396, 34.351402, 46.362396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171375, 34.204609, 45.662453>,  <33.744484, 33.820534, 45.906994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171375, 34.204609, 45.662453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402359, 34.444164, 45.884396>,  <33.540951, 34.587898, 46.017563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402359, 34.444164, 45.884396>,  <33.171375, 34.204609, 45.662453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402359, 34.444164, 45.884396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008637, 0.675106, -0.737670,
		-0.816373, 0.430767, 0.384674,
		0.577460, 0.598892, 0.554859,
		33.575596, 34.623833, 46.050854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974434, 34.916702, 45.623486>,  <33.171375, 34.204609, 45.662453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974434, 34.916702, 45.623486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.359989, 34.956017, 45.722485>,  <33.591324, 34.979607, 45.781883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.359989, 34.956017, 45.722485>,  <32.974434, 34.916702, 45.623486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359989, 34.956017, 45.722485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123155, 0.659513, -0.741535,
		-0.236117, 0.745239, 0.623592,
		0.963889, 0.098290, 0.247502,
		33.649155, 34.985504, 45.796734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117069, 35.630150, 45.661308>,  <32.974434, 34.916702, 45.623486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117069, 35.630150, 45.661308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486103, 35.476795, 45.644131>,  <33.707523, 35.384781, 45.633823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486103, 35.476795, 45.644131>,  <33.117069, 35.630150, 45.661308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486103, 35.476795, 45.644131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217780, 0.609463, -0.762317,
		0.318437, 0.693952, 0.645778,
		0.922589, -0.383387, -0.042947,
		33.762878, 35.361778, 45.631248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479660, 36.203953, 45.483685>,  <33.117069, 35.630150, 45.661308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479660, 36.203953, 45.483685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689041, 35.878471, 45.382587>,  <33.814671, 35.683182, 45.321930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689041, 35.878471, 45.382587>,  <33.479660, 36.203953, 45.483685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689041, 35.878471, 45.382587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138754, 0.374076, -0.916960,
		0.840679, 0.444919, 0.308717,
		0.523456, -0.813704, -0.252744,
		33.846077, 35.634361, 45.306763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227173, 36.358410, 45.280930>,  <33.479660, 36.203953, 45.483685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227173, 36.358410, 45.280930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.110111, 36.023445, 45.096279>,  <34.039875, 35.822468, 44.985489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.110111, 36.023445, 45.096279>,  <34.227173, 36.358410, 45.280930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110111, 36.023445, 45.096279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286797, 0.383664, -0.877809,
		0.912196, -0.389286, 0.127887,
		-0.292653, -0.837412, -0.461623,
		34.022316, 35.772221, 44.957794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691250, 36.398739, 44.830479>,  <34.227173, 36.358410, 45.280930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691250, 36.398739, 44.830479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473057, 36.104931, 44.669018>,  <34.342140, 35.928646, 44.572140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473057, 36.104931, 44.669018>,  <34.691250, 36.398739, 44.830479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473057, 36.104931, 44.669018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445051, 0.154257, -0.882119,
		0.710197, -0.660826, 0.242753,
		-0.545481, -0.734516, -0.403654,
		34.309414, 35.884575, 44.547920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.494915, 33.569649, 27.766550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.096615, 33.596176, 27.792086>,  <44.857635, 33.612091, 27.807407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.096615, 33.596176, 27.792086>,  <45.494915, 33.569649, 27.766550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096615, 33.596176, 27.792086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040659, -0.305345, 0.951373,
		0.082583, 0.949930, 0.301353,
		-0.995754, 0.066314, 0.063839,
		44.797890, 33.616070, 27.811237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305023, 33.913551, 28.378782>,  <45.494915, 33.569649, 27.766550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305023, 33.913551, 28.378782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970173, 33.708527, 28.302372>,  <44.769260, 33.585510, 28.256527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970173, 33.708527, 28.302372>,  <45.305023, 33.913551, 28.378782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970173, 33.708527, 28.302372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067963, -0.249052, 0.966103,
		-0.542767, 0.821735, 0.173653,
		-0.837129, -0.512567, -0.191024,
		44.719032, 33.554756, 28.245064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678421, 34.111286, 28.883244>,  <45.305023, 33.913551, 28.378782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678421, 34.111286, 28.883244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.636421, 33.737762, 28.746443>,  <44.611221, 33.513649, 28.664362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.636421, 33.737762, 28.746443>,  <44.678421, 34.111286, 28.883244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636421, 33.737762, 28.746443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018095, -0.345642, 0.938192,
		-0.994307, 0.092326, 0.053191,
		-0.105004, -0.933813, -0.342003,
		44.604919, 33.457619, 28.643843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565178, 33.857220, 29.480097>,  <44.678421, 34.111286, 28.883244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565178, 33.857220, 29.480097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.608833, 33.532059, 29.251266>,  <44.635029, 33.336960, 29.113968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.608833, 33.532059, 29.251266>,  <44.565178, 33.857220, 29.480097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608833, 33.532059, 29.251266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039365, -0.571530, 0.819637,
		-0.993246, -0.111976, -0.030377,
		0.109141, -0.812905, -0.572078,
		44.641575, 33.288189, 29.079643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124573, 33.347214, 29.835524>,  <44.565178, 33.857220, 29.480097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124573, 33.347214, 29.835524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378166, 33.146458, 29.600180>,  <44.530323, 33.026005, 29.458973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378166, 33.146458, 29.600180>,  <44.124573, 33.347214, 29.835524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378166, 33.146458, 29.600180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077353, -0.715832, 0.693976,
		-0.769469, -0.485480, -0.415001,
		0.633982, -0.501891, -0.588364,
		44.568363, 32.995892, 29.423672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905594, 32.703568, 29.728527>,  <44.124573, 33.347214, 29.835524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905594, 32.703568, 29.728527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300373, 32.672005, 29.672363>,  <44.537239, 32.653069, 29.638666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300373, 32.672005, 29.672363>,  <43.905594, 32.703568, 29.728527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300373, 32.672005, 29.672363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046838, -0.693487, 0.718945,
		-0.154098, -0.716136, -0.680738,
		0.986945, -0.078904, -0.140407,
		44.596458, 32.648335, 29.630241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974621, 32.108021, 30.070986>,  <43.905594, 32.703568, 29.728527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974621, 32.108021, 30.070986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.341938, 32.261414, 30.031620>,  <44.562328, 32.353451, 30.007999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.341938, 32.261414, 30.031620>,  <43.974621, 32.108021, 30.070986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341938, 32.261414, 30.031620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237068, -0.333516, 0.912451,
		0.317085, -0.861225, -0.397176,
		0.918290, 0.383482, -0.098415,
		44.617424, 32.376457, 30.002096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396584, 31.505989, 30.198769>,  <43.974621, 32.108021, 30.070986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396584, 31.505989, 30.198769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602222, 31.845493, 30.248266>,  <44.725605, 32.049194, 30.277966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602222, 31.845493, 30.248266>,  <44.396584, 31.505989, 30.198769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602222, 31.845493, 30.248266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326061, -0.326825, 0.887057,
		0.793340, -0.415685, -0.444767,
		0.514097, 0.848759, 0.123744,
		44.756451, 32.100121, 30.285389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764484, 31.356949, 30.780113>,  <44.396584, 31.505989, 30.198769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764484, 31.356949, 30.780113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844353, 31.748640, 30.765974>,  <44.892273, 31.983654, 30.757490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844353, 31.748640, 30.765974>,  <44.764484, 31.356949, 30.780113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844353, 31.748640, 30.765974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282212, -0.022923, 0.959078,
		0.938344, -0.201471, -0.280927,
		0.199666, 0.979226, -0.035348,
		44.904251, 32.042408, 30.755369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.445656, 31.491823, 31.210619>,  <44.764484, 31.356949, 30.780113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.445656, 31.491823, 31.210619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200081, 31.806723, 31.187584>,  <45.052734, 31.995663, 31.173763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200081, 31.806723, 31.187584>,  <45.445656, 31.491823, 31.210619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200081, 31.806723, 31.187584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125600, 0.169458, 0.977501,
		0.779295, 0.592895, -0.202915,
		-0.613941, 0.787249, -0.057590,
		45.015900, 32.042896, 31.170307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661903, 31.857613, 31.725412>,  <45.445656, 31.491823, 31.210619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661903, 31.857613, 31.725412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313587, 32.039532, 31.650703>,  <45.104599, 32.148682, 31.605879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313587, 32.039532, 31.650703>,  <45.661903, 31.857613, 31.725412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313587, 32.039532, 31.650703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040138, 0.312853, 0.948953,
		0.490015, 0.833834, -0.254175,
		-0.870789, 0.454799, -0.186771,
		45.052349, 32.175972, 31.594671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673283, 32.484119, 31.921535>,  <45.661903, 31.857613, 31.725412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673283, 32.484119, 31.921535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286671, 32.382751, 31.937508>,  <45.054703, 32.321930, 31.947092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286671, 32.382751, 31.937508>,  <45.673283, 32.484119, 31.921535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286671, 32.382751, 31.937508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002433, 0.164693, 0.986342,
		-0.256539, 0.953233, -0.159798,
		-0.966531, -0.253424, 0.039931,
		44.996712, 32.306725, 31.949488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375790, 33.006001, 32.305862>,  <45.673283, 32.484119, 31.921535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375790, 33.006001, 32.305862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088493, 32.727695, 32.308655>,  <44.916115, 32.560715, 32.310329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088493, 32.727695, 32.308655>,  <45.375790, 33.006001, 32.305862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088493, 32.727695, 32.308655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164250, 0.179293, 0.969988,
		-0.676131, 0.695537, -0.243054,
		-0.718240, -0.695760, 0.006984,
		44.873020, 32.518967, 32.310749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773952, 33.324287, 32.539574>,  <45.375790, 33.006001, 32.305862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773952, 33.324287, 32.539574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728493, 32.934170, 32.615345>,  <44.701218, 32.700100, 32.660809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728493, 32.934170, 32.615345>,  <44.773952, 33.324287, 32.539574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728493, 32.934170, 32.615345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014099, 0.189057, 0.981865,
		-0.993421, 0.114257, -0.007735,
		-0.113648, -0.975296, 0.189424,
		44.694397, 32.641582, 32.672173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311462, 33.314278, 32.983982>,  <44.773952, 33.324287, 32.539574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311462, 33.314278, 32.983982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.446682, 32.942101, 33.040554>,  <44.527813, 32.718796, 33.074497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.446682, 32.942101, 33.040554>,  <44.311462, 33.314278, 32.983982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446682, 32.942101, 33.040554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052676, 0.131340, 0.989937,
		-0.939653, -0.342097, -0.004613,
		0.338049, -0.930440, 0.141434,
		44.548096, 32.662968, 33.082985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915581, 32.990822, 33.541039>,  <44.311462, 33.314278, 32.983982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915581, 32.990822, 33.541039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.234142, 32.749111, 33.531315>,  <44.425278, 32.604084, 33.525482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.234142, 32.749111, 33.531315>,  <43.915581, 32.990822, 33.541039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234142, 32.749111, 33.531315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108014, 0.102578, 0.988843,
		-0.595044, -0.790142, 0.146963,
		0.796401, -0.604280, -0.024308,
		44.473064, 32.567829, 33.524021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766422, 32.531933, 34.167786>,  <43.915581, 32.990822, 33.541039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766422, 32.531933, 34.167786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.149666, 32.500751, 34.057552>,  <44.379612, 32.482040, 33.991413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.149666, 32.500751, 34.057552>,  <43.766422, 32.531933, 34.167786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149666, 32.500751, 34.057552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283479, 0.121199, 0.951289,
		-0.040762, -0.989562, 0.138222,
		0.958111, -0.077959, -0.275580,
		44.437099, 32.477364, 33.974876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194752, 32.253262, 34.824524>,  <43.766422, 32.531933, 34.167786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194752, 32.253262, 34.824524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.435158, 32.420582, 34.552109>,  <44.579403, 32.520973, 34.388660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.435158, 32.420582, 34.552109>,  <44.194752, 32.253262, 34.824524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435158, 32.420582, 34.552109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547114, 0.405832, 0.732097,
		0.582622, -0.812604, 0.015053,
		0.601014, 0.418300, -0.681034,
		44.615463, 32.546070, 34.347797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838993, 32.245312, 35.105259>,  <44.194752, 32.253262, 34.824524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838993, 32.245312, 35.105259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.839676, 32.560650, 34.859169>,  <44.840084, 32.749855, 34.711514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.839676, 32.560650, 34.859169>,  <44.838993, 32.245312, 35.105259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839676, 32.560650, 34.859169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418682, 0.558144, 0.716366,
		0.908131, -0.258808, -0.329114,
		0.001708, 0.788349, -0.615226,
		44.840187, 32.797153, 34.674603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474190, 32.543190, 35.278316>,  <44.838993, 32.245312, 35.105259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474190, 32.543190, 35.278316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251919, 32.815380, 35.087246>,  <45.118557, 32.978695, 34.972603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251919, 32.815380, 35.087246>,  <45.474190, 32.543190, 35.278316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251919, 32.815380, 35.087246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224032, 0.675846, 0.702169,
		0.800646, 0.283163, -0.528000,
		-0.555675, 0.680478, -0.477676,
		45.085217, 33.019524, 34.943943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892143, 33.167881, 35.361355>,  <45.474190, 32.543190, 35.278316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892143, 33.167881, 35.361355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.525055, 33.304565, 35.280331>,  <45.304802, 33.386574, 35.231716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.525055, 33.304565, 35.280331>,  <45.892143, 33.167881, 35.361355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525055, 33.304565, 35.280331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122014, 0.727756, 0.674895,
		0.378028, 0.594649, -0.709569,
		-0.917719, 0.341707, -0.202556,
		45.249741, 33.407078, 35.219563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929523, 33.957298, 35.162636>,  <45.892143, 33.167881, 35.361355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929523, 33.957298, 35.162636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.565865, 33.851643, 35.291435>,  <45.347668, 33.788250, 35.368717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.565865, 33.851643, 35.291435>,  <45.929523, 33.957298, 35.162636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565865, 33.851643, 35.291435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019631, 0.799477, 0.600375,
		-0.416013, 0.539508, -0.732027,
		-0.909147, -0.264135, 0.322002,
		45.293121, 33.772404, 35.388035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249359, 33.989483, 34.531216>,  <45.929523, 33.957298, 35.162636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249359, 33.989483, 34.531216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.520515, 33.927017, 34.243862>,  <46.683208, 33.889538, 34.071449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.520515, 33.927017, 34.243862>,  <46.249359, 33.989483, 34.531216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520515, 33.927017, 34.243862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458308, 0.674280, -0.579051,
		0.574820, 0.721775, 0.385517,
		0.677891, -0.156165, -0.718385,
		46.723885, 33.880169, 34.028347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469269, 34.665909, 34.317062>,  <46.249359, 33.989483, 34.531216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469269, 34.665909, 34.317062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.540951, 34.406975, 34.020725>,  <46.583958, 34.251614, 33.842922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.540951, 34.406975, 34.020725>,  <46.469269, 34.665909, 34.317062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540951, 34.406975, 34.020725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446780, 0.617352, -0.647507,
		0.876513, 0.447026, -0.178586,
		0.179202, -0.647336, -0.740839,
		46.594711, 34.212772, 33.798473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804371, 35.087585, 33.811054>,  <46.469269, 34.665909, 34.317062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804371, 35.087585, 33.811054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.652882, 34.774139, 33.614071>,  <46.561989, 34.586071, 33.495880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.652882, 34.774139, 33.614071>,  <46.804371, 35.087585, 33.811054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652882, 34.774139, 33.614071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321265, 0.610317, -0.724087,
		0.867963, -0.116016, -0.482888,
		-0.378720, -0.783615, -0.492461,
		46.539265, 34.539055, 33.466331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.803123, 35.299751, 33.135029>,  <46.804371, 35.087585, 33.811054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.803123, 35.299751, 33.135029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562534, 34.981033, 33.111870>,  <46.418182, 34.789803, 33.097977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562534, 34.981033, 33.111870>,  <46.803123, 35.299751, 33.135029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562534, 34.981033, 33.111870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488397, 0.424086, -0.762640,
		0.632221, -0.430428, -0.644227,
		-0.601469, -0.796796, -0.057896,
		46.382095, 34.741993, 33.094501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.723560, 35.213024, 32.454243>,  <46.803123, 35.299751, 33.135029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.723560, 35.213024, 32.454243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396664, 35.042797, 32.609680>,  <46.200527, 34.940659, 32.702942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396664, 35.042797, 32.609680>,  <46.723560, 35.213024, 32.454243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396664, 35.042797, 32.609680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569803, 0.495795, -0.655371,
		0.086246, -0.757018, -0.647677,
		-0.817243, -0.425572, 0.388591,
		46.151489, 34.915127, 32.726257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424232, 34.768532, 32.006290>,  <46.723560, 35.213024, 32.454243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424232, 34.768532, 32.006290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.129257, 34.851562, 32.263382>,  <45.952271, 34.901382, 32.417637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.129257, 34.851562, 32.263382>,  <46.424232, 34.768532, 32.006290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129257, 34.851562, 32.263382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591685, 0.260363, -0.762968,
		-0.325715, -0.942934, -0.069183,
		-0.737441, 0.207575, 0.642724,
		45.908024, 34.913834, 32.456200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721649, 34.491642, 31.642893>,  <46.424232, 34.768532, 32.006290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721649, 34.491642, 31.642893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620831, 34.752441, 31.928932>,  <45.560341, 34.908920, 32.100555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620831, 34.752441, 31.928932>,  <45.721649, 34.491642, 31.642893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620831, 34.752441, 31.928932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487705, 0.552666, -0.675799,
		-0.835834, -0.519088, 0.178689,
		-0.252044, 0.652003, 0.715099,
		45.545216, 34.948044, 32.143463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060745, 34.497540, 31.520258>,  <45.721649, 34.491642, 31.642893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060745, 34.497540, 31.520258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.169441, 34.817150, 31.734812>,  <45.234657, 35.008919, 31.863544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.169441, 34.817150, 31.734812>,  <45.060745, 34.497540, 31.520258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169441, 34.817150, 31.734812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480560, 0.595557, -0.643719,
		-0.833799, -0.082842, 0.545818,
		0.271739, 0.799030, 0.536385,
		45.250961, 35.056858, 31.895727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494083, 34.917923, 31.653887>,  <45.060745, 34.497540, 31.520258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494083, 34.917923, 31.653887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792694, 35.179699, 31.701897>,  <44.971859, 35.336765, 31.730703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792694, 35.179699, 31.701897>,  <44.494083, 34.917923, 31.653887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792694, 35.179699, 31.701897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422036, 0.605208, -0.674989,
		-0.514382, 0.453240, 0.728000,
		0.746523, 0.654444, 0.120025,
		45.016651, 35.376034, 31.737904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134731, 35.672955, 31.737141>,  <44.494083, 34.917923, 31.653887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134731, 35.672955, 31.737141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.513321, 35.760204, 31.641968>,  <44.740475, 35.812553, 31.584864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.513321, 35.760204, 31.641968>,  <44.134731, 35.672955, 31.737141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513321, 35.760204, 31.641968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311747, 0.808842, -0.498586,
		0.083695, 0.546073, 0.833546,
		0.946472, 0.218126, -0.237933,
		44.797264, 35.825642, 31.570587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315216, 36.368679, 32.032238>,  <44.134731, 35.672955, 31.737141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315216, 36.368679, 32.032238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.545322, 36.270844, 31.720020>,  <44.683388, 36.212143, 31.532690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.545322, 36.270844, 31.720020>,  <44.315216, 36.368679, 32.032238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545322, 36.270844, 31.720020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375626, 0.768686, -0.517713,
		0.726618, 0.591015, 0.350325,
		0.575266, -0.244588, -0.780542,
		44.717903, 36.197468, 31.485857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480927, 37.041988, 31.730127>,  <44.315216, 36.368679, 32.032238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480927, 37.041988, 31.730127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.581184, 36.765270, 31.459248>,  <44.641338, 36.599239, 31.296721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.581184, 36.765270, 31.459248>,  <44.480927, 37.041988, 31.730127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581184, 36.765270, 31.459248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525436, 0.490308, -0.695352,
		0.813076, 0.530112, -0.240599,
		0.250647, -0.691794, -0.677198,
		44.656380, 36.557732, 31.256088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512669, 37.407833, 31.115807>,  <44.480927, 37.041988, 31.730127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512669, 37.407833, 31.115807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494862, 37.032379, 30.978992>,  <44.484177, 36.807106, 30.896904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494862, 37.032379, 30.978992>,  <44.512669, 37.407833, 31.115807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494862, 37.032379, 30.978992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624775, 0.293320, -0.723616,
		0.779535, 0.181478, -0.599492,
		-0.044522, -0.938632, -0.342036,
		44.481506, 36.750790, 30.876381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509491, 37.495255, 30.432365>,  <44.512669, 37.407833, 31.115807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509491, 37.495255, 30.432365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362465, 37.124279, 30.459942>,  <44.274250, 36.901695, 30.476488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362465, 37.124279, 30.459942>,  <44.509491, 37.495255, 30.432365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362465, 37.124279, 30.459942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489250, 0.129792, -0.862432,
		0.790903, -0.350733, -0.501456,
		-0.367568, -0.927437, 0.068943,
		44.252193, 36.846046, 30.480625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559761, 37.275280, 29.763502>,  <44.509491, 37.495255, 30.432365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559761, 37.275280, 29.763502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299259, 37.022015, 29.930822>,  <44.142960, 36.870056, 30.031216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299259, 37.022015, 29.930822>,  <44.559761, 37.275280, 29.763502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299259, 37.022015, 29.930822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591288, 0.077879, -0.802691,
		0.475657, -0.770092, -0.425100,
		-0.651252, -0.633162, 0.418302,
		44.103882, 36.832066, 30.056313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265366, 36.806065, 29.222898>,  <44.559761, 37.275280, 29.763502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265366, 36.806065, 29.222898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989254, 36.769844, 29.510038>,  <43.823586, 36.748112, 29.682323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989254, 36.769844, 29.510038>,  <44.265366, 36.806065, 29.222898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989254, 36.769844, 29.510038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721457, 0.010925, -0.692373,
		0.054861, -0.995831, -0.072878,
		-0.690283, -0.090562, 0.717850,
		43.782169, 36.742680, 29.725393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782112, 36.295403, 29.097807>,  <44.265366, 36.806065, 29.222898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782112, 36.295403, 29.097807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.558704, 36.496311, 29.361862>,  <43.424660, 36.616856, 29.520294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.558704, 36.496311, 29.361862>,  <43.782112, 36.295403, 29.097807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558704, 36.496311, 29.361862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773839, -0.028912, -0.632722,
		-0.298712, -0.864227, 0.404824,
		-0.558520, 0.502270, 0.660137,
		43.391148, 36.646992, 29.559904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062763, 35.968094, 29.154562>,  <43.782112, 36.295403, 29.097807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062763, 35.968094, 29.154562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019825, 36.344036, 29.284271>,  <42.994061, 36.569599, 29.362097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019825, 36.344036, 29.284271>,  <43.062763, 35.968094, 29.154562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019825, 36.344036, 29.284271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898633, 0.047821, -0.436086,
		-0.425365, -0.338213, 0.839450,
		-0.107346, 0.939854, 0.324271,
		42.987621, 36.625992, 29.381552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341698, 36.075871, 29.244810>,  <43.062763, 35.968094, 29.154562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341698, 36.075871, 29.244810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.472404, 36.453884, 29.249533>,  <42.550827, 36.680691, 29.252367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.472404, 36.453884, 29.249533>,  <42.341698, 36.075871, 29.244810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472404, 36.453884, 29.249533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801865, 0.283830, -0.525789,
		-0.500238, 0.162342, 0.850533,
		0.326765, 0.945032, 0.011807,
		42.570435, 36.737392, 29.253075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729156, 36.475311, 29.396456>,  <42.341698, 36.075871, 29.244810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729156, 36.475311, 29.396456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996632, 36.711864, 29.216177>,  <42.157116, 36.853798, 29.108009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996632, 36.711864, 29.216177>,  <41.729156, 36.475311, 29.396456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996632, 36.711864, 29.216177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709554, 0.326352, -0.624522,
		-0.222245, 0.737402, 0.637844,
		0.668685, 0.591382, -0.450697,
		42.197239, 36.889278, 29.080967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.862446, 36.177330, 41.500168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544373, 36.014923, 41.320019>,  <39.353527, 35.917480, 41.211929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544373, 36.014923, 41.320019>,  <39.862446, 36.177330, 41.500168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544373, 36.014923, 41.320019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575512, -0.271450, -0.771428,
		0.190957, -0.872621, 0.449519,
		-0.795186, -0.406013, -0.450368,
		39.305817, 35.893120, 41.184910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149891, 35.653339, 41.170101>,  <39.862446, 36.177330, 41.500168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149891, 35.653339, 41.170101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785313, 35.652943, 41.005539>,  <39.566566, 35.652706, 40.906799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785313, 35.652943, 41.005539>,  <40.149891, 35.653339, 41.170101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785313, 35.652943, 41.005539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377265, -0.400891, -0.834840,
		-0.164104, -0.916125, 0.365765,
		-0.911450, -0.000989, -0.411410,
		39.511879, 35.652645, 40.882114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019222, 34.848869, 41.069645>,  <40.149891, 35.653339, 41.170101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019222, 34.848869, 41.069645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822586, 35.104630, 40.833172>,  <39.704605, 35.258087, 40.691288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822586, 35.104630, 40.833172>,  <40.019222, 34.848869, 41.069645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822586, 35.104630, 40.833172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298969, -0.513698, -0.804196,
		-0.817898, -0.572082, 0.061367,
		-0.491590, 0.639403, -0.591187,
		39.675110, 35.296452, 40.655815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603039, 34.425426, 40.645844>,  <40.019222, 34.848869, 41.069645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603039, 34.425426, 40.645844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650513, 34.769562, 40.447559>,  <39.678997, 34.976044, 40.328590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650513, 34.769562, 40.447559>,  <39.603039, 34.425426, 40.645844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650513, 34.769562, 40.447559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292270, -0.507390, -0.810638,
		-0.948943, -0.048672, -0.311670,
		0.118683, 0.860341, -0.495709,
		39.686119, 35.027664, 40.298847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234665, 34.209694, 40.102787>,  <39.603039, 34.425426, 40.645844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234665, 34.209694, 40.102787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442429, 34.535976, 40.000931>,  <39.567085, 34.731747, 39.939816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442429, 34.535976, 40.000931>,  <39.234665, 34.209694, 40.102787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442429, 34.535976, 40.000931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109118, -0.358861, -0.926991,
		-0.847533, 0.453697, -0.275402,
		0.519404, 0.815707, -0.254639,
		39.598251, 34.780689, 39.924538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015404, 34.515846, 39.410942>,  <39.234665, 34.209694, 40.102787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015404, 34.515846, 39.410942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387981, 34.657028, 39.446365>,  <39.611526, 34.741737, 39.467621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387981, 34.657028, 39.446365>,  <39.015404, 34.515846, 39.410942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387981, 34.657028, 39.446365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183051, -0.244136, -0.952308,
		-0.314498, 0.903229, -0.292006,
		0.931442, 0.352951, 0.088557,
		39.667416, 34.762913, 39.472931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150101, 34.823269, 38.853809>,  <39.015404, 34.515846, 39.410942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150101, 34.823269, 38.853809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526871, 34.786289, 38.982948>,  <39.752934, 34.764103, 39.060432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526871, 34.786289, 38.982948>,  <39.150101, 34.823269, 38.853809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526871, 34.786289, 38.982948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302863, -0.181529, -0.935586,
		0.145098, 0.979030, -0.142988,
		0.941924, -0.092446, 0.322852,
		39.809448, 34.758556, 39.079803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569668, 35.253876, 38.422272>,  <39.150101, 34.823269, 38.853809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569668, 35.253876, 38.422272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805046, 34.974949, 38.585964>,  <39.946274, 34.807590, 38.684181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805046, 34.974949, 38.585964>,  <39.569668, 35.253876, 38.422272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805046, 34.974949, 38.585964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276911, -0.301719, -0.912297,
		0.759636, 0.650162, 0.015549,
		0.588450, -0.697320, 0.409234,
		39.981583, 34.765755, 38.708733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212753, 35.163776, 37.967384>,  <39.569668, 35.253876, 38.422272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212753, 35.163776, 37.967384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213634, 34.828423, 38.185413>,  <40.214161, 34.627209, 38.316231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213634, 34.828423, 38.185413>,  <40.212753, 35.163776, 37.967384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213634, 34.828423, 38.185413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373272, -0.504992, -0.778236,
		0.927719, 0.205174, 0.311835,
		0.002200, -0.838384, 0.545076,
		40.214294, 34.576908, 38.348938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796169, 34.865288, 37.853527>,  <40.212753, 35.163776, 37.967384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796169, 34.865288, 37.853527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590088, 34.553413, 37.995876>,  <40.466438, 34.366287, 38.081284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590088, 34.553413, 37.995876>,  <40.796169, 34.865288, 37.853527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590088, 34.553413, 37.995876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304251, -0.554559, -0.774529,
		0.801244, -0.290770, 0.522935,
		-0.515208, -0.779690, 0.355871,
		40.435524, 34.319508, 38.102638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278706, 34.297981, 37.832859>,  <40.796169, 34.865288, 37.853527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278706, 34.297981, 37.832859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940639, 34.091614, 37.888756>,  <40.737801, 33.967793, 37.922295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940639, 34.091614, 37.888756>,  <41.278706, 34.297981, 37.832859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940639, 34.091614, 37.888756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216967, -0.570059, -0.792438,
		0.488495, -0.639420, 0.593730,
		-0.845162, -0.515922, 0.139738,
		40.687092, 33.936836, 37.930676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457767, 33.584114, 37.796616>,  <41.278706, 34.297981, 37.832859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457767, 33.584114, 37.796616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068100, 33.608555, 37.709652>,  <40.834301, 33.623219, 37.657475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068100, 33.608555, 37.709652>,  <41.457767, 33.584114, 37.796616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068100, 33.608555, 37.709652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143643, -0.575201, -0.805302,
		-0.174260, -0.815727, 0.551564,
		-0.974166, 0.061104, -0.217408,
		40.775848, 33.626884, 37.644428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905796, 32.948547, 37.788475>,  <41.457767, 33.584114, 37.796616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905796, 32.948547, 37.788475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870285, 33.233120, 37.509624>,  <40.848976, 33.403866, 37.342316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870285, 33.233120, 37.509624>,  <40.905796, 32.948547, 37.788475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870285, 33.233120, 37.509624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334524, -0.637937, -0.693636,
		-0.938196, -0.294786, -0.181355,
		-0.088781, 0.711434, -0.697122,
		40.843651, 33.446548, 37.300488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649448, 32.624554, 37.137897>,  <40.905796, 32.948547, 37.788475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649448, 32.624554, 37.137897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822971, 32.975021, 37.053864>,  <40.927086, 33.185303, 37.003445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822971, 32.975021, 37.053864>,  <40.649448, 32.624554, 37.137897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822971, 32.975021, 37.053864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521977, -0.434442, -0.734030,
		-0.734405, 0.208769, -0.645805,
		0.433807, 0.876171, -0.210084,
		40.953114, 33.237873, 36.990837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264343, 32.591167, 36.648037>,  <40.649448, 32.624554, 37.137897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264343, 32.591167, 36.648037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530880, 32.294197, 36.675735>,  <41.690804, 32.116016, 36.692356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530880, 32.294197, 36.675735>,  <41.264343, 32.591167, 36.648037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530880, 32.294197, 36.675735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687967, -0.576327, 0.441077,
		-0.287555, -0.341549, -0.894794,
		0.666343, -0.742423, 0.069249,
		41.730782, 32.071468, 36.696510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912834, 32.083366, 36.409149>,  <41.264343, 32.591167, 36.648037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912834, 32.083366, 36.409149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210068, 31.912107, 36.614872>,  <41.388409, 31.809351, 36.738308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210068, 31.912107, 36.614872>,  <40.912834, 32.083366, 36.409149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210068, 31.912107, 36.614872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637328, -0.687132, 0.348802,
		0.204059, -0.586973, -0.783468,
		0.743083, -0.428150, 0.514310,
		41.432991, 31.783663, 36.769165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805538, 31.290108, 36.371086>,  <40.912834, 32.083366, 36.409149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805538, 31.290108, 36.371086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003063, 31.363394, 36.711105>,  <41.121578, 31.407366, 36.915119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003063, 31.363394, 36.711105>,  <40.805538, 31.290108, 36.371086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003063, 31.363394, 36.711105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598902, -0.637083, 0.485223,
		0.630453, -0.748704, -0.204870,
		0.493808, 0.183213, 0.850051,
		41.151207, 31.418358, 36.966122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725590, 30.605293, 36.763523>,  <40.805538, 31.290108, 36.371086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725590, 30.605293, 36.763523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834644, 30.892982, 37.019142>,  <40.900078, 31.065596, 37.172516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834644, 30.892982, 37.019142>,  <40.725590, 30.605293, 36.763523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834644, 30.892982, 37.019142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708622, -0.299172, 0.639024,
		0.650787, -0.627068, 0.428092,
		0.272638, 0.719223, 0.639051,
		40.916435, 31.108749, 37.210857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670471, 30.290730, 37.410778>,  <40.725590, 30.605293, 36.763523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670471, 30.290730, 37.410778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660980, 30.678791, 37.507309>,  <40.655285, 30.911629, 37.565228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660980, 30.678791, 37.507309>,  <40.670471, 30.290730, 37.410778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660980, 30.678791, 37.507309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758668, -0.174676, 0.627623,
		0.651045, -0.168199, 0.740168,
		-0.023723, 0.970153, 0.241329,
		40.653862, 30.969837, 37.579708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755901, 30.339657, 38.057796>,  <40.670471, 30.290730, 37.410778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755901, 30.339657, 38.057796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557880, 30.673756, 37.962063>,  <40.439068, 30.874214, 37.904621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557880, 30.673756, 37.962063>,  <40.755901, 30.339657, 38.057796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557880, 30.673756, 37.962063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664240, -0.186255, 0.723943,
		0.560094, 0.517369, 0.647011,
		-0.495055, 0.835247, -0.239337,
		40.409363, 30.924330, 37.890263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711781, 30.785975, 38.651497>,  <40.755901, 30.339657, 38.057796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711781, 30.785975, 38.651497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417252, 30.927818, 38.420990>,  <40.240536, 31.012924, 38.282688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417252, 30.927818, 38.420990>,  <40.711781, 30.785975, 38.651497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417252, 30.927818, 38.420990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592056, 0.074641, 0.802433,
		0.327564, 0.932030, 0.154990,
		-0.736323, 0.354611, -0.576264,
		40.196354, 31.034201, 38.248112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345993, 31.138500, 39.113708>,  <40.711781, 30.785975, 38.651497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345993, 31.138500, 39.113708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086735, 31.129810, 38.809227>,  <39.931179, 31.124596, 38.626537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086735, 31.129810, 38.809227>,  <40.345993, 31.138500, 39.113708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086735, 31.129810, 38.809227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746946, 0.212729, 0.629934,
		0.148245, 0.976870, -0.154108,
		-0.648147, -0.021726, -0.761205,
		39.892292, 31.123293, 38.580864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978012, 31.763578, 39.191933>,  <40.345993, 31.138500, 39.113708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978012, 31.763578, 39.191933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732422, 31.532925, 38.976334>,  <39.585068, 31.394533, 38.846973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732422, 31.532925, 38.976334>,  <39.978012, 31.763578, 39.191933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732422, 31.532925, 38.976334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772097, 0.296871, 0.561902,
		-0.163999, 0.761157, -0.627491,
		-0.613979, -0.576635, -0.539001,
		39.548229, 31.359934, 38.814632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419540, 32.185623, 38.955708>,  <39.978012, 31.763578, 39.191933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419540, 32.185623, 38.955708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282619, 31.812260, 38.912651>,  <39.200466, 31.588242, 38.886818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282619, 31.812260, 38.912651>,  <39.419540, 32.185623, 38.955708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282619, 31.812260, 38.912651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798847, 0.228797, 0.556323,
		-0.494647, 0.276416, -0.823965,
		-0.342298, -0.933405, -0.107641,
		39.179932, 31.532238, 38.880360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729824, 32.265354, 38.879459>,  <39.419540, 32.185623, 38.955708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729824, 32.265354, 38.879459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762100, 31.884232, 38.996521>,  <38.781464, 31.655558, 39.066757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762100, 31.884232, 38.996521>,  <38.729824, 32.265354, 38.879459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762100, 31.884232, 38.996521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732473, 0.142448, 0.665727,
		-0.675998, -0.268074, -0.686413,
		0.080686, -0.952809, 0.292651,
		38.786304, 31.598389, 39.084316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980621, 32.027359, 38.945763>,  <38.729824, 32.265354, 38.879459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980621, 32.027359, 38.945763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203484, 31.765194, 39.149731>,  <38.337200, 31.607895, 39.272110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203484, 31.765194, 39.149731>,  <37.980621, 32.027359, 38.945763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203484, 31.765194, 39.149731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598811, 0.108332, 0.793530,
		-0.575328, -0.747464, -0.332109,
		0.557157, -0.655410, 0.509916,
		38.370632, 31.568571, 39.302704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469807, 31.471004, 39.299694>,  <37.980621, 32.027359, 38.945763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469807, 31.471004, 39.299694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805733, 31.450890, 39.515907>,  <38.007290, 31.438820, 39.645634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805733, 31.450890, 39.515907>,  <37.469807, 31.471004, 39.299694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805733, 31.450890, 39.515907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541988, -0.021076, 0.840122,
		-0.030869, -0.998511, -0.044965,
		0.839819, -0.050304, 0.540531,
		38.057678, 31.435802, 39.678066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465134, 30.861864, 39.654675>,  <37.469807, 31.471004, 39.299694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465134, 30.861864, 39.654675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702019, 31.118025, 39.850292>,  <37.844151, 31.271721, 39.967663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702019, 31.118025, 39.850292>,  <37.465134, 30.861864, 39.654675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702019, 31.118025, 39.850292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565649, -0.101842, 0.818333,
		0.573869, -0.761257, 0.301931,
		0.592213, 0.640402, 0.489048,
		37.879684, 31.310146, 39.997005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409225, 30.117903, 39.596615>,  <37.465134, 30.861864, 39.654675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409225, 30.117903, 39.596615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083012, 29.887419, 39.575146>,  <36.887283, 29.749128, 39.562263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083012, 29.887419, 39.575146>,  <37.409225, 30.117903, 39.596615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083012, 29.887419, 39.575146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160661, -0.136336, -0.977548,
		0.555955, -0.805851, 0.203762,
		-0.815538, -0.576209, -0.053672,
		36.838348, 29.714556, 39.559044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540928, 29.703863, 39.025101>,  <37.409225, 30.117903, 39.596615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540928, 29.703863, 39.025101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147289, 29.657160, 39.078659>,  <36.911106, 29.629137, 39.110794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147289, 29.657160, 39.078659>,  <37.540928, 29.703863, 39.025101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147289, 29.657160, 39.078659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129853, -0.041619, -0.990659,
		0.121241, -0.992288, 0.025796,
		-0.984093, -0.116758, 0.133897,
		36.852062, 29.622131, 39.118828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304817, 29.178328, 38.569881>,  <37.540928, 29.703863, 39.025101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304817, 29.178328, 38.569881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946663, 29.339048, 38.646660>,  <36.731770, 29.435482, 38.692726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946663, 29.339048, 38.646660>,  <37.304817, 29.178328, 38.569881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946663, 29.339048, 38.646660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254945, -0.109156, -0.960775,
		-0.365092, -0.909196, 0.200175,
		-0.895383, 0.401804, 0.191943,
		36.678047, 29.459589, 38.704243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722317, 28.735493, 38.179790>,  <37.304817, 29.178328, 38.569881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722317, 28.735493, 38.179790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566814, 29.099167, 38.239456>,  <36.473515, 29.317371, 38.275257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566814, 29.099167, 38.239456>,  <36.722317, 28.735493, 38.179790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566814, 29.099167, 38.239456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259052, 0.047507, -0.964694,
		-0.884174, -0.413668, 0.217058,
		-0.388752, 0.909187, 0.149166,
		36.450188, 29.371923, 38.284206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970142, 28.712868, 37.853271>,  <36.722317, 28.735493, 38.179790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970142, 28.712868, 37.853271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092575, 29.091667, 37.892269>,  <36.166035, 29.318947, 37.915668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092575, 29.091667, 37.892269>,  <35.970142, 28.712868, 37.853271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092575, 29.091667, 37.892269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518834, 0.251799, -0.816951,
		-0.798200, 0.199473, 0.568407,
		0.306084, 0.946999, 0.097493,
		36.184399, 29.375767, 37.921516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255379, 29.147303, 37.698528>,  <35.970142, 28.712868, 37.853271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255379, 29.147303, 37.698528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570843, 29.392733, 37.682831>,  <35.760120, 29.539989, 37.673412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570843, 29.392733, 37.682831>,  <35.255379, 29.147303, 37.698528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570843, 29.392733, 37.682831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477892, 0.571603, -0.667000,
		-0.386822, 0.544791, 0.744024,
		0.788662, 0.613573, -0.039243,
		35.807442, 29.576805, 37.671059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924961, 29.825552, 37.766266>,  <35.255379, 29.147303, 37.698528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924961, 29.825552, 37.766266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285084, 29.890574, 37.604759>,  <35.501156, 29.929586, 37.507854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285084, 29.890574, 37.604759>,  <34.924961, 29.825552, 37.766266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285084, 29.890574, 37.604759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426478, 0.514827, -0.743686,
		0.086980, 0.841742, 0.532828,
		0.900306, 0.162553, -0.403764,
		35.555176, 29.939339, 37.483631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936665, 30.571611, 37.595692>,  <34.924961, 29.825552, 37.766266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936665, 30.571611, 37.595692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238670, 30.407423, 37.391155>,  <35.419872, 30.308910, 37.268433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238670, 30.407423, 37.391155>,  <34.936665, 30.571611, 37.595692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238670, 30.407423, 37.391155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284744, 0.497218, -0.819570,
		0.590656, 0.764388, 0.258528,
		0.755014, -0.410470, -0.511340,
		35.465176, 30.284283, 37.237755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340103, 31.077559, 37.220711>,  <34.936665, 30.571611, 37.595692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340103, 31.077559, 37.220711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395588, 30.741148, 37.011547>,  <35.428879, 30.539301, 36.886051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395588, 30.741148, 37.011547>,  <35.340103, 31.077559, 37.220711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395588, 30.741148, 37.011547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376903, 0.443446, -0.813204,
		0.915808, 0.309882, -0.255477,
		0.138707, -0.841029, -0.522907,
		35.437199, 30.488840, 36.854675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509827, 31.298494, 36.567768>,  <35.340103, 31.077559, 37.220711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509827, 31.298494, 36.567768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431282, 30.914497, 36.487907>,  <35.384155, 30.684099, 36.439991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431282, 30.914497, 36.487907>,  <35.509827, 31.298494, 36.567768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431282, 30.914497, 36.487907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592717, 0.278415, -0.755759,
		0.781108, -0.030060, -0.623671,
		-0.196358, -0.959990, -0.199656,
		35.372375, 30.626501, 36.428009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641727, 31.173708, 35.816452>,  <35.509827, 31.298494, 36.567768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641727, 31.173708, 35.816452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367542, 30.913786, 35.947845>,  <35.203033, 30.757833, 36.026680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367542, 30.913786, 35.947845>,  <35.641727, 31.173708, 35.816452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367542, 30.913786, 35.947845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486312, 0.072824, -0.870745,
		0.541892, -0.756605, -0.365926,
		-0.685459, -0.649804, 0.328483,
		35.161903, 30.718845, 36.046391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555656, 30.625811, 35.220451>,  <35.641727, 31.173708, 35.816452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555656, 30.625811, 35.220451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239353, 30.647472, 35.464344>,  <35.049572, 30.660469, 35.610680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239353, 30.647472, 35.464344>,  <35.555656, 30.625811, 35.220451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239353, 30.647472, 35.464344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609601, 0.020848, -0.792434,
		-0.055627, -0.998315, 0.016528,
		-0.790754, 0.054156, 0.609733,
		35.002129, 30.663717, 35.647263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.924198, 29.596592, 43.212933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.528358, 29.591185, 43.155643>,  <36.290855, 29.587940, 43.121269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.528358, 29.591185, 43.155643>,  <36.924198, 29.596592, 43.212933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528358, 29.591185, 43.155643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143844, -0.080701, -0.986304,
		0.001777, -0.996647, 0.081806,
		-0.989599, -0.013520, -0.143218,
		36.231480, 29.587130, 43.112679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788174, 29.049749, 42.768147>,  <36.924198, 29.596592, 43.212933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788174, 29.049749, 42.768147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.476883, 29.300083, 42.747372>,  <36.290108, 29.450283, 42.734905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.476883, 29.300083, 42.747372>,  <36.788174, 29.049749, 42.768147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476883, 29.300083, 42.747372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038328, -0.129893, -0.990787,
		-0.626815, -0.769064, 0.125073,
		-0.778224, 0.625834, -0.051942,
		36.243416, 29.487833, 42.731789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220142, 28.640944, 42.494034>,  <36.788174, 29.049749, 42.768147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220142, 28.640944, 42.494034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.144024, 29.022676, 42.401917>,  <36.098351, 29.251717, 42.346645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.144024, 29.022676, 42.401917>,  <36.220142, 28.640944, 42.494034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144024, 29.022676, 42.401917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195155, -0.266675, -0.943822,
		-0.962133, -0.134666, 0.236991,
		-0.190300, 0.954332, -0.230296,
		36.086933, 29.308975, 42.332829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682739, 28.597187, 41.993877>,  <36.220142, 28.640944, 42.494034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682739, 28.597187, 41.993877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.832638, 28.966146, 41.956474>,  <35.922577, 29.187523, 41.934032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.832638, 28.966146, 41.956474>,  <35.682739, 28.597187, 41.993877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832638, 28.966146, 41.956474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054798, -0.078644, -0.995395,
		-0.925507, 0.378143, 0.021074,
		0.374745, 0.922401, -0.093507,
		35.945061, 29.242867, 41.928421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495632, 28.786211, 41.352867>,  <35.682739, 28.597187, 41.993877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495632, 28.786211, 41.352867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.762623, 29.074951, 41.425976>,  <35.922817, 29.248196, 41.469841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.762623, 29.074951, 41.425976>,  <35.495632, 28.786211, 41.352867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762623, 29.074951, 41.425976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167472, 0.093633, -0.981420,
		-0.725551, 0.685686, -0.058391,
		0.667479, 0.721850, 0.182769,
		35.962868, 29.291506, 41.480808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369602, 29.418051, 40.995090>,  <35.495632, 28.786211, 41.352867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369602, 29.418051, 40.995090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763439, 29.449484, 41.057579>,  <35.999741, 29.468344, 41.095074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763439, 29.449484, 41.057579>,  <35.369602, 29.418051, 40.995090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763439, 29.449484, 41.057579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132693, 0.246167, -0.960101,
		-0.113907, 0.966036, 0.231946,
		0.984590, 0.078585, 0.156226,
		36.058815, 29.473059, 41.104446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584816, 29.839676, 40.455563>,  <35.369602, 29.418051, 40.995090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584816, 29.839676, 40.455563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.935120, 29.703743, 40.592712>,  <36.145302, 29.622183, 40.675003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.935120, 29.703743, 40.592712>,  <35.584816, 29.839676, 40.455563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935120, 29.703743, 40.592712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390607, 0.081435, -0.916948,
		0.283685, 0.936954, 0.204058,
		0.875756, -0.339831, 0.342879,
		36.197845, 29.601793, 40.695576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106995, 30.350298, 40.298779>,  <35.584816, 29.839676, 40.455563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106995, 30.350298, 40.298779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.277966, 29.989510, 40.323288>,  <36.380547, 29.773037, 40.337994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.277966, 29.989510, 40.323288>,  <36.106995, 30.350298, 40.298779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277966, 29.989510, 40.323288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306502, 0.080818, -0.948433,
		0.850509, 0.424163, 0.311000,
		0.427424, -0.901972, 0.061270,
		36.406193, 29.718918, 40.341667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846745, 30.412907, 39.997612>,  <36.106995, 30.350298, 40.298779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846745, 30.412907, 39.997612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.752182, 30.024261, 39.994007>,  <36.695442, 29.791075, 39.991844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.752182, 30.024261, 39.994007>,  <36.846745, 30.412907, 39.997612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752182, 30.024261, 39.994007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239768, -0.049348, -0.969575,
		0.941606, -0.231377, 0.244628,
		-0.236409, -0.971612, -0.009011,
		36.681259, 29.732779, 39.991302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515194, 30.586626, 40.312843>,  <36.846745, 30.412907, 39.997612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515194, 30.586626, 40.312843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633675, 30.964029, 40.372246>,  <37.704765, 31.190472, 40.407887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633675, 30.964029, 40.372246>,  <37.515194, 30.586626, 40.312843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633675, 30.964029, 40.372246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331872, -0.044123, 0.942292,
		0.895614, -0.328394, 0.300055,
		0.296204, 0.943510, 0.148502,
		37.722534, 31.247082, 40.416798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956970, 30.609758, 41.039730>,  <37.515194, 30.586626, 40.312843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956970, 30.609758, 41.039730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832851, 30.978340, 40.946228>,  <37.758381, 31.199490, 40.890129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832851, 30.978340, 40.946228>,  <37.956970, 30.609758, 41.039730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832851, 30.978340, 40.946228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149351, 0.195584, 0.969248,
		0.938834, 0.335667, 0.076930,
		-0.310298, 0.921452, -0.233753,
		37.739761, 31.254776, 40.876102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379719, 31.092819, 41.454769>,  <37.956970, 30.609758, 41.039730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379719, 31.092819, 41.454769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047066, 31.292576, 41.357613>,  <37.847473, 31.412430, 41.299320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047066, 31.292576, 41.357613>,  <38.379719, 31.092819, 41.454769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047066, 31.292576, 41.357613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047092, 0.372390, 0.926881,
		0.553329, 0.782261, -0.286174,
		-0.831631, 0.499393, -0.242893,
		37.797577, 31.442394, 41.284744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520645, 31.881390, 41.625477>,  <38.379719, 31.092819, 41.454769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520645, 31.881390, 41.625477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.126217, 31.825293, 41.589691>,  <37.889561, 31.791634, 41.568218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.126217, 31.825293, 41.589691>,  <38.520645, 31.881390, 41.625477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126217, 31.825293, 41.589691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131753, 0.330072, 0.934716,
		-0.101556, 0.933480, -0.343951,
		-0.986067, -0.140242, -0.089468,
		37.830399, 31.783220, 41.562851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294231, 32.472935, 41.827057>,  <38.520645, 31.881390, 41.625477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294231, 32.472935, 41.827057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972027, 32.238102, 41.859272>,  <37.778706, 32.097202, 41.878601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972027, 32.238102, 41.859272>,  <38.294231, 32.472935, 41.827057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972027, 32.238102, 41.859272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078893, 0.240953, 0.967325,
		-0.587306, 0.772836, -0.240407,
		-0.805511, -0.587082, 0.080541,
		37.730373, 32.061977, 41.883434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908600, 32.999889, 42.155247>,  <38.294231, 32.472935, 41.827057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908600, 32.999889, 42.155247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710281, 32.655338, 42.199440>,  <37.591290, 32.448608, 42.225956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710281, 32.655338, 42.199440>,  <37.908600, 32.999889, 42.155247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710281, 32.655338, 42.199440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342543, 0.310882, 0.886576,
		-0.798028, 0.401717, -0.449194,
		-0.495799, -0.861380, 0.110488,
		37.561543, 32.396923, 42.232586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290852, 33.167210, 42.496796>,  <37.908600, 32.999889, 42.155247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290852, 33.167210, 42.496796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.360699, 32.779308, 42.565022>,  <37.402607, 32.546570, 42.605957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.360699, 32.779308, 42.565022>,  <37.290852, 33.167210, 42.496796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360699, 32.779308, 42.565022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226480, 0.129023, 0.965433,
		-0.958236, -0.207211, -0.197099,
		0.174618, -0.969751, 0.170564,
		37.413086, 32.488384, 42.616192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801208, 32.894497, 42.962189>,  <37.290852, 33.167210, 42.496796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801208, 32.894497, 42.962189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110619, 32.644489, 43.004154>,  <37.296265, 32.494484, 43.029335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110619, 32.644489, 43.004154>,  <36.801208, 32.894497, 42.962189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110619, 32.644489, 43.004154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096310, 0.047693, 0.994208,
		-0.626407, -0.779148, -0.023305,
		0.773524, -0.625023, 0.104915,
		37.342674, 32.456982, 43.035629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632809, 32.447563, 43.528118>,  <36.801208, 32.894497, 42.962189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632809, 32.447563, 43.528118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026585, 32.389984, 43.487793>,  <37.262848, 32.355434, 43.463596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026585, 32.389984, 43.487793>,  <36.632809, 32.447563, 43.528118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026585, 32.389984, 43.487793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081647, -0.133353, 0.987700,
		-0.155635, -0.980557, -0.119523,
		0.984434, -0.143961, -0.100814,
		37.321915, 32.346798, 43.457550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792332, 31.904215, 43.927219>,  <36.632809, 32.447563, 43.528118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792332, 31.904215, 43.927219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.152802, 32.073845, 43.891342>,  <37.369083, 32.175621, 43.869816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.152802, 32.073845, 43.891342>,  <36.792332, 31.904215, 43.927219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152802, 32.073845, 43.891342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187472, -0.194758, 0.962769,
		0.390818, -0.884437, -0.255013,
		0.901175, 0.424075, -0.089692,
		37.423153, 32.201069, 43.864433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233433, 31.511074, 44.424377>,  <36.792332, 31.904215, 43.927219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233433, 31.511074, 44.424377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417358, 31.856583, 44.341942>,  <37.527714, 32.063889, 44.292480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417358, 31.856583, 44.341942>,  <37.233433, 31.511074, 44.424377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417358, 31.856583, 44.341942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294547, 0.070584, 0.953027,
		0.837742, -0.498918, -0.221965,
		0.459815, 0.863770, -0.206086,
		37.555302, 32.115715, 44.280117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869377, 31.458838, 44.726803>,  <37.233433, 31.511074, 44.424377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869377, 31.458838, 44.726803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.827351, 31.852484, 44.669567>,  <37.802135, 32.088673, 44.635227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.827351, 31.852484, 44.669567>,  <37.869377, 31.458838, 44.726803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827351, 31.852484, 44.669567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423133, 0.174449, 0.889115,
		0.899955, 0.032867, -0.434741,
		-0.105062, 0.984118, -0.143089,
		37.795834, 32.147720, 44.626640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445972, 31.818064, 44.902832>,  <37.869377, 31.458838, 44.726803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445972, 31.818064, 44.902832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163383, 32.094688, 44.963020>,  <37.993832, 32.260662, 44.999134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163383, 32.094688, 44.963020>,  <38.445972, 31.818064, 44.902832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163383, 32.094688, 44.963020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253160, 0.048390, 0.966213,
		0.660914, 0.720696, -0.209262,
		-0.706472, 0.691560, 0.150470,
		37.951443, 32.302158, 45.008160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769917, 32.357140, 45.382698>,  <38.445972, 31.818064, 44.902832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769917, 32.357140, 45.382698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376358, 32.425449, 45.403793>,  <38.140224, 32.466434, 45.416451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376358, 32.425449, 45.403793>,  <38.769917, 32.357140, 45.382698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376358, 32.425449, 45.403793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088985, 0.212109, 0.973186,
		0.155012, 0.962208, -0.223890,
		-0.983897, 0.170778, 0.052743,
		38.081188, 32.476685, 45.419617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.419163, 34.532078, 45.330074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.480436, 34.138649, 45.368279>,  <31.517200, 33.902592, 45.391201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.480436, 34.138649, 45.368279>,  <31.419163, 34.532078, 45.330074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480436, 34.138649, 45.368279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377147, -0.031145, -0.925630,
		0.913397, 0.177815, 0.366180,
		0.153186, -0.983571, 0.095510,
		31.526392, 33.843578, 45.396931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073078, 34.432095, 45.123589>,  <31.419163, 34.532078, 45.330074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073078, 34.432095, 45.123589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921705, 34.065697, 45.070297>,  <31.830881, 33.845860, 45.038322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921705, 34.065697, 45.070297>,  <32.073078, 34.432095, 45.123589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921705, 34.065697, 45.070297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460433, -0.061420, -0.885567,
		0.802989, -0.396469, 0.444996,
		-0.378431, -0.915991, -0.133227,
		31.808176, 33.790901, 45.030331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634430, 34.079567, 44.948200>,  <32.073078, 34.432095, 45.123589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634430, 34.079567, 44.948200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326611, 33.859001, 44.819366>,  <32.141918, 33.726662, 44.742065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326611, 33.859001, 44.819366>,  <32.634430, 34.079567, 44.948200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326611, 33.859001, 44.819366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465986, -0.140025, -0.873642,
		0.436636, -0.822398, 0.364706,
		-0.769549, -0.551411, -0.322086,
		32.095745, 33.693577, 44.722740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963490, 33.529995, 44.551884>,  <32.634430, 34.079567, 44.948200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963490, 33.529995, 44.551884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579880, 33.540218, 44.439018>,  <32.349712, 33.546352, 44.371300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579880, 33.540218, 44.439018>,  <32.963490, 33.529995, 44.551884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579880, 33.540218, 44.439018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276114, -0.138827, -0.951046,
		-0.063476, -0.989987, 0.126083,
		-0.959026, 0.025555, -0.282162,
		32.292171, 33.547886, 44.354370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938641, 33.048988, 44.158817>,  <32.963490, 33.529995, 44.551884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938641, 33.048988, 44.158817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624817, 33.262115, 44.031967>,  <32.436523, 33.389992, 43.955856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624817, 33.262115, 44.031967>,  <32.938641, 33.048988, 44.158817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624817, 33.262115, 44.031967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313441, -0.100478, -0.944277,
		-0.534990, -0.840244, -0.088175,
		-0.784564, 0.532817, -0.317122,
		32.389446, 33.421959, 43.936832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816364, 32.710136, 43.635254>,  <32.938641, 33.048988, 44.158817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816364, 32.710136, 43.635254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.589897, 33.036732, 43.590004>,  <32.454018, 33.232689, 43.562855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.589897, 33.036732, 43.590004>,  <32.816364, 32.710136, 43.635254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589897, 33.036732, 43.590004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258559, 0.045598, -0.964919,
		-0.782686, -0.575559, -0.236927,
		-0.566171, 0.816488, -0.113128,
		32.420044, 33.281677, 43.556065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323250, 32.615452, 43.112576>,  <32.816364, 32.710136, 43.635254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323250, 32.615452, 43.112576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356499, 33.012428, 43.148685>,  <32.376450, 33.250614, 43.170349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356499, 33.012428, 43.148685>,  <32.323250, 32.615452, 43.112576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356499, 33.012428, 43.148685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254031, 0.066491, -0.964908,
		-0.963617, 0.103140, -0.246584,
		0.083125, 0.992442, 0.090272,
		32.381435, 33.310162, 43.175766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014999, 32.954308, 42.523441>,  <32.323250, 32.615452, 43.112576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014999, 32.954308, 42.523441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.217075, 33.270481, 42.662006>,  <32.338322, 33.460186, 42.745144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.217075, 33.270481, 42.662006>,  <32.014999, 32.954308, 42.523441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217075, 33.270481, 42.662006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314499, 0.205180, -0.926818,
		-0.803661, 0.577168, -0.144934,
		0.505192, 0.790429, 0.346414,
		32.368633, 33.507610, 42.765930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813236, 33.449944, 42.177422>,  <32.014999, 32.954308, 42.523441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813236, 33.449944, 42.177422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.165714, 33.595066, 42.298656>,  <32.377201, 33.682140, 42.371399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.165714, 33.595066, 42.298656>,  <31.813236, 33.449944, 42.177422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165714, 33.595066, 42.298656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113996, 0.459128, -0.881026,
		-0.458802, 0.810907, 0.363223,
		0.881196, 0.362811, 0.303089,
		32.430073, 33.703911, 42.389584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801884, 34.088318, 41.907471>,  <31.813236, 33.449944, 42.177422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801884, 34.088318, 41.907471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186504, 34.014519, 41.988834>,  <32.417278, 33.970238, 42.037655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186504, 34.014519, 41.988834>,  <31.801884, 34.088318, 41.907471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186504, 34.014519, 41.988834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245332, 0.244249, -0.938165,
		0.123409, 0.951999, 0.280122,
		0.961552, -0.184501, 0.203413,
		32.474972, 33.959167, 42.049858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083096, 34.529472, 41.472614>,  <31.801884, 34.088318, 41.907471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083096, 34.529472, 41.472614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.384132, 34.281120, 41.560360>,  <32.564754, 34.132111, 41.613007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.384132, 34.281120, 41.560360>,  <32.083096, 34.529472, 41.472614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384132, 34.281120, 41.560360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366495, 0.118181, -0.922884,
		0.547076, 0.774945, 0.316491,
		0.752588, -0.620880, 0.219359,
		32.609909, 34.094856, 41.626167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681503, 34.818546, 41.218964>,  <32.083096, 34.529472, 41.472614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681503, 34.818546, 41.218964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.777874, 34.431480, 41.248840>,  <32.835697, 34.199242, 41.266766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.777874, 34.431480, 41.248840>,  <32.681503, 34.818546, 41.218964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777874, 34.431480, 41.248840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511993, 0.061340, -0.856797,
		0.824510, 0.244667, 0.510216,
		0.240927, -0.967665, 0.074692,
		32.850151, 34.141182, 41.271248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370792, 34.719971, 40.874699>,  <32.681503, 34.818546, 41.218964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370792, 34.719971, 40.874699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.214748, 34.351673, 40.871769>,  <33.121124, 34.130695, 40.870010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.214748, 34.351673, 40.871769>,  <33.370792, 34.719971, 40.874699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214748, 34.351673, 40.871769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340514, -0.136873, -0.930224,
		0.855493, -0.365380, 0.366920,
		-0.390106, -0.920741, -0.007323,
		33.097717, 34.075451, 40.869572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907848, 34.249245, 40.600803>,  <33.370792, 34.719971, 40.874699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907848, 34.249245, 40.600803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.577198, 34.027969, 40.559475>,  <33.378807, 33.895206, 40.534676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.577198, 34.027969, 40.559475>,  <33.907848, 34.249245, 40.600803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577198, 34.027969, 40.559475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293939, -0.267861, -0.917524,
		0.479884, -0.788820, 0.384024,
		-0.826626, -0.553184, -0.103323,
		33.329208, 33.862015, 40.528477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604851, 34.362301, 40.689663>,  <33.907848, 34.249245, 40.600803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604851, 34.362301, 40.689663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873234, 34.648037, 40.610138>,  <35.034264, 34.819481, 40.562424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873234, 34.648037, 40.610138>,  <34.604851, 34.362301, 40.689663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873234, 34.648037, 40.610138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106419, 0.358116, 0.927593,
		0.733816, -0.601222, 0.316301,
		0.670962, 0.714342, -0.198810,
		35.074524, 34.862339, 40.550495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052887, 34.361343, 41.289143>,  <34.604851, 34.362301, 40.689663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052887, 34.361343, 41.289143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086563, 34.714977, 41.105270>,  <35.106770, 34.927158, 40.994946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086563, 34.714977, 41.105270>,  <35.052887, 34.361343, 41.289143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086563, 34.714977, 41.105270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111063, 0.450119, 0.886035,
		0.990241, -0.125653, -0.060291,
		0.084194, 0.884084, -0.459682,
		35.111820, 34.980202, 40.967365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686813, 34.694611, 41.637383>,  <35.052887, 34.361343, 41.289143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686813, 34.694611, 41.637383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463932, 34.979450, 41.466530>,  <35.330204, 35.150352, 41.364017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463932, 34.979450, 41.466530>,  <35.686813, 34.694611, 41.637383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463932, 34.979450, 41.466530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128408, 0.434308, 0.891565,
		0.820389, 0.551629, -0.150558,
		-0.557202, 0.712097, -0.427135,
		35.296772, 35.193081, 41.338390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811947, 35.377968, 42.002094>,  <35.686813, 34.694611, 41.637383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811947, 35.377968, 42.002094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.466122, 35.451366, 41.814968>,  <35.258625, 35.495403, 41.702690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.466122, 35.451366, 41.814968>,  <35.811947, 35.377968, 42.002094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466122, 35.451366, 41.814968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300748, 0.556877, 0.774234,
		0.402585, 0.810072, -0.426272,
		-0.864567, 0.183494, -0.467818,
		35.206753, 35.506416, 41.674622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588886, 36.123745, 42.092659>,  <35.811947, 35.377968, 42.002094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588886, 36.123745, 42.092659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250614, 35.924332, 42.016468>,  <35.047649, 35.804684, 41.970753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250614, 35.924332, 42.016468>,  <35.588886, 36.123745, 42.092659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250614, 35.924332, 42.016468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445571, 0.463112, 0.766155,
		-0.293741, 0.732797, -0.613779,
		-0.845684, -0.498534, -0.190478,
		34.996910, 35.774773, 41.959324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073116, 36.632320, 42.357758>,  <35.588886, 36.123745, 42.092659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073116, 36.632320, 42.357758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.902790, 36.270439, 42.352337>,  <34.800594, 36.053310, 42.349087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.902790, 36.270439, 42.352337>,  <35.073116, 36.632320, 42.357758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902790, 36.270439, 42.352337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369861, 0.160377, 0.915140,
		-0.825761, 0.394696, -0.402907,
		-0.425819, -0.904707, -0.013550,
		34.775043, 35.999027, 42.348270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422905, 36.717903, 42.611603>,  <35.073116, 36.632320, 42.357758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422905, 36.717903, 42.611603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.491215, 36.328259, 42.670860>,  <34.532200, 36.094471, 42.706417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.491215, 36.328259, 42.670860>,  <34.422905, 36.717903, 42.611603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491215, 36.328259, 42.670860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357992, 0.078736, 0.930399,
		-0.917974, -0.211926, -0.335276,
		0.170777, -0.974109, 0.148146,
		34.542446, 36.036026, 42.715305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830795, 36.514153, 43.033577>,  <34.422905, 36.717903, 42.611603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830795, 36.514153, 43.033577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078228, 36.206081, 43.095787>,  <34.226688, 36.021240, 43.133114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078228, 36.206081, 43.095787>,  <33.830795, 36.514153, 43.033577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078228, 36.206081, 43.095787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210289, 0.028436, 0.977226,
		-0.757058, -0.637198, -0.144370,
		0.618581, -0.770176, 0.155523,
		34.263802, 35.975029, 43.142445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455132, 36.023567, 43.430317>,  <33.830795, 36.514153, 43.033577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455132, 36.023567, 43.430317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.832100, 35.907284, 43.496445>,  <34.058281, 35.837513, 43.536121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.832100, 35.907284, 43.496445>,  <33.455132, 36.023567, 43.430317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832100, 35.907284, 43.496445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242876, -0.255144, 0.935902,
		-0.229890, -0.922168, -0.311059,
		0.942424, -0.290703, 0.165317,
		34.114826, 35.820072, 43.546040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415840, 35.309669, 43.716450>,  <33.455132, 36.023567, 43.430317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415840, 35.309669, 43.716450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775688, 35.448723, 43.822147>,  <33.991596, 35.532154, 43.885567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775688, 35.448723, 43.822147>,  <33.415840, 35.309669, 43.716450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775688, 35.448723, 43.822147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150846, -0.320483, 0.935166,
		0.409785, -0.881158, -0.235875,
		0.899623, 0.347636, 0.264249,
		34.045574, 35.553013, 43.901421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817307, 34.788635, 44.037994>,  <33.415840, 35.309669, 43.716450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817307, 34.788635, 44.037994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940014, 35.132538, 44.201317>,  <34.013638, 35.338879, 44.299309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940014, 35.132538, 44.201317>,  <33.817307, 34.788635, 44.037994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940014, 35.132538, 44.201317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136004, -0.384989, 0.912845,
		0.942017, -0.335562, -0.001172,
		0.306767, 0.859757, 0.408304,
		34.032043, 35.390465, 44.323807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180740, 34.490295, 44.581993>,  <33.817307, 34.788635, 44.037994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180740, 34.490295, 44.581993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136826, 34.872578, 44.691223>,  <34.110477, 35.101948, 44.756760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136826, 34.872578, 44.691223>,  <34.180740, 34.490295, 44.581993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136826, 34.872578, 44.691223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090289, -0.283187, 0.954805,
		0.989846, 0.080171, 0.117381,
		-0.109788, 0.955708, 0.273073,
		34.103889, 35.159290, 44.773144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598183, 34.565735, 45.149849>,  <34.180740, 34.490295, 44.581993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598183, 34.565735, 45.149849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.398262, 34.910854, 45.180260>,  <34.278309, 35.117924, 45.198505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.398262, 34.910854, 45.180260>,  <34.598183, 34.565735, 45.149849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398262, 34.910854, 45.180260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085721, -0.136625, 0.986907,
		0.861888, 0.486740, 0.142245,
		-0.499801, 0.862797, 0.076031,
		34.248322, 35.169693, 45.203068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962517, 34.934822, 45.511684>,  <34.598183, 34.565735, 45.149849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962517, 34.934822, 45.511684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.586723, 35.062073, 45.562546>,  <34.361248, 35.138424, 45.593063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.586723, 35.062073, 45.562546>,  <34.962517, 34.934822, 45.511684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586723, 35.062073, 45.562546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003716, -0.380587, 0.924738,
		0.342574, 0.868303, 0.358738,
		-0.939484, 0.318124, 0.127153,
		34.304878, 35.157509, 45.600693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613407, 35.260498, 45.543606>,  <34.962517, 34.934822, 45.511684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613407, 35.260498, 45.543606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961075, 35.263306, 45.741390>,  <36.169678, 35.264992, 45.860062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961075, 35.263306, 45.741390>,  <35.613407, 35.260498, 45.543606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961075, 35.263306, 45.741390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400685, 0.576000, -0.712514,
		-0.289808, 0.817420, 0.497832,
		0.869174, 0.007019, 0.494457,
		36.221828, 35.265411, 45.889729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914757, 35.986053, 45.624756>,  <35.613407, 35.260498, 45.543606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914757, 35.986053, 45.624756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220371, 35.728497, 45.641006>,  <36.403740, 35.573963, 45.650757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220371, 35.728497, 45.641006>,  <35.914757, 35.986053, 45.624756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220371, 35.728497, 45.641006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398674, 0.421680, -0.814399,
		0.507258, 0.638424, 0.578882,
		0.764034, -0.643895, 0.040622,
		36.449581, 35.535328, 45.653194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543106, 36.362823, 45.446644>,  <35.914757, 35.986053, 45.624756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543106, 36.362823, 45.446644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639004, 35.978718, 45.389496>,  <36.696541, 35.748253, 45.355206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639004, 35.978718, 45.389496>,  <36.543106, 36.362823, 45.446644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639004, 35.978718, 45.389496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437767, 0.238279, -0.866939,
		0.866535, 0.145299, 0.477499,
		0.239743, -0.960266, -0.142871,
		36.710926, 35.690639, 45.346634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217682, 36.318260, 45.339134>,  <36.543106, 36.362823, 45.446644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217682, 36.318260, 45.339134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090336, 35.979744, 45.168282>,  <37.013927, 35.776634, 45.065769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090336, 35.979744, 45.168282>,  <37.217682, 36.318260, 45.339134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090336, 35.979744, 45.168282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511233, 0.226163, -0.829151,
		0.798302, -0.482335, 0.360648,
		-0.318364, -0.846288, -0.427132,
		36.994827, 35.725857, 45.040142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802834, 35.982174, 45.074718>,  <37.217682, 36.318260, 45.339134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802834, 35.982174, 45.074718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490158, 35.821629, 44.883774>,  <37.302555, 35.725300, 44.769207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490158, 35.821629, 44.883774>,  <37.802834, 35.982174, 45.074718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490158, 35.821629, 44.883774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489904, 0.078509, -0.868234,
		0.385958, -0.912546, 0.135262,
		-0.781684, -0.401367, -0.477361,
		37.255653, 35.701218, 44.740566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087269, 35.386776, 44.729912>,  <37.802834, 35.982174, 45.074718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087269, 35.386776, 44.729912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.762287, 35.500229, 44.526157>,  <37.567299, 35.568298, 44.403904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.762287, 35.500229, 44.526157>,  <38.087269, 35.386776, 44.729912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762287, 35.500229, 44.526157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525738, -0.021265, -0.850381,
		-0.252025, -0.958698, -0.131837,
		-0.812455, 0.283629, -0.509383,
		37.518551, 35.585316, 44.373341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222382, 35.016266, 44.111980>,  <38.087269, 35.386776, 44.729912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222382, 35.016266, 44.111980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.937660, 35.280083, 44.015358>,  <37.766827, 35.438374, 43.957386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.937660, 35.280083, 44.015358>,  <38.222382, 35.016266, 44.111980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937660, 35.280083, 44.015358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423855, 0.129103, -0.896481,
		-0.560078, -0.740500, -0.371444,
		-0.711800, 0.659539, -0.241557,
		37.724121, 35.477943, 43.942890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987129, 34.799473, 43.510815>,  <38.222382, 35.016266, 44.111980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987129, 34.799473, 43.510815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911705, 35.192142, 43.521851>,  <37.866451, 35.427746, 43.528473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911705, 35.192142, 43.521851>,  <37.987129, 34.799473, 43.510815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911705, 35.192142, 43.521851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355517, 0.094423, -0.929888,
		-0.915452, -0.165534, -0.366806,
		-0.188563, 0.981673, 0.027590,
		37.855137, 35.486645, 43.530128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600979, 34.992138, 42.960598>,  <37.987129, 34.799473, 43.510815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600979, 34.992138, 42.960598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.746227, 35.355862, 43.041893>,  <37.833374, 35.574097, 43.090668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.746227, 35.355862, 43.041893>,  <37.600979, 34.992138, 42.960598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746227, 35.355862, 43.041893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315437, 0.085273, -0.945108,
		-0.876724, 0.407294, -0.255865,
		0.363118, 0.909308, 0.203236,
		37.855164, 35.628654, 43.102863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454834, 35.343765, 42.355968>,  <37.600979, 34.992138, 42.960598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454834, 35.343765, 42.355968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.725330, 35.590065, 42.517735>,  <37.887627, 35.737843, 42.614796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.725330, 35.590065, 42.517735>,  <37.454834, 35.343765, 42.355968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725330, 35.590065, 42.517735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422282, 0.125826, -0.897689,
		-0.603634, 0.777834, -0.174929,
		0.676243, 0.615745, 0.404419,
		37.928204, 35.774788, 42.639061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498997, 35.860828, 41.887535>,  <37.454834, 35.343765, 42.355968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498997, 35.860828, 41.887535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834972, 35.879433, 42.103809>,  <38.036556, 35.890594, 42.233574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834972, 35.879433, 42.103809>,  <37.498997, 35.860828, 41.887535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834972, 35.879433, 42.103809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506787, 0.289101, -0.812150,
		-0.194089, 0.956168, 0.219255,
		0.839938, 0.046514, 0.540685,
		38.086952, 35.893387, 42.266014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708786, 36.551998, 41.767159>,  <37.498997, 35.860828, 41.887535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708786, 36.551998, 41.767159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015255, 36.313789, 41.863773>,  <38.199135, 36.170864, 41.921741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015255, 36.313789, 41.863773>,  <37.708786, 36.551998, 41.767159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015255, 36.313789, 41.863773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465222, 0.254701, -0.847759,
		0.443337, 0.761897, 0.472193,
		0.766173, -0.595517, 0.241532,
		38.245106, 36.135136, 41.936234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232773, 36.879002, 41.546841>,  <37.708786, 36.551998, 41.767159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232773, 36.879002, 41.546841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.382561, 36.510185, 41.586067>,  <38.472435, 36.288895, 41.609604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.382561, 36.510185, 41.586067>,  <38.232773, 36.879002, 41.546841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382561, 36.510185, 41.586067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571689, 0.146318, -0.807318,
		0.730028, 0.358384, 0.581911,
		0.374474, -0.922037, 0.098068,
		38.494904, 36.233574, 41.615486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046814, 36.844440, 41.406475>,  <38.232773, 36.879002, 41.546841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046814, 36.844440, 41.406475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.938644, 36.466183, 41.334217>,  <38.873741, 36.239227, 41.290863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.938644, 36.466183, 41.334217>,  <39.046814, 36.844440, 41.406475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938644, 36.466183, 41.334217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426406, 0.050577, -0.903117,
		0.863161, -0.321252, 0.389550,
		-0.270426, -0.945642, -0.180640,
		38.857517, 36.182491, 41.280025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.800121, 38.945717, 30.211796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.435144, 39.048779, 30.338961>,  <26.216158, 39.110615, 30.415260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.435144, 39.048779, 30.338961>,  <26.800121, 38.945717, 30.211796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435144, 39.048779, 30.338961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041203, -0.830793, 0.555054,
		0.407130, 0.493355, 0.768665,
		-0.912440, 0.257651, 0.317913,
		26.161413, 39.126072, 30.434334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695524, 39.040508, 30.997255>,  <26.800121, 38.945717, 30.211796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695524, 39.040508, 30.997255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379868, 38.892498, 30.801157>,  <26.190474, 38.803692, 30.683498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379868, 38.892498, 30.801157>,  <26.695524, 39.040508, 30.997255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379868, 38.892498, 30.801157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119714, -0.875521, 0.468114,
		-0.602433, 0.310719, 0.735206,
		-0.789141, -0.370022, -0.490245,
		26.143126, 38.781490, 30.654083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129520, 38.825672, 31.415821>,  <26.695524, 39.040508, 30.997255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129520, 38.825672, 31.415821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.120474, 38.607555, 31.080645>,  <26.115046, 38.476685, 30.879539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.120474, 38.607555, 31.080645>,  <26.129520, 38.825672, 31.415821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120474, 38.607555, 31.080645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088311, -0.835968, 0.541625,
		-0.995836, -0.061751, 0.067060,
		-0.022614, -0.545292, -0.837941,
		26.113689, 38.443966, 30.829262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682268, 38.221478, 31.599262>,  <26.129520, 38.825672, 31.415821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.682268, 38.221478, 31.599262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896044, 38.118443, 31.277264>,  <26.024309, 38.056622, 31.084064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896044, 38.118443, 31.277264>,  <25.682268, 38.221478, 31.599262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896044, 38.118443, 31.277264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246144, -0.863711, 0.439792,
		-0.808572, -0.433187, -0.398196,
		0.534439, -0.257590, -0.804998,
		26.056376, 38.041164, 31.035765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419754, 37.519909, 31.441160>,  <25.682268, 38.221478, 31.599262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419754, 37.519909, 31.441160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.789499, 37.566296, 31.295774>,  <26.011347, 37.594128, 31.208542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.789499, 37.566296, 31.295774>,  <25.419754, 37.519909, 31.441160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789499, 37.566296, 31.295774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262682, -0.884354, 0.385897,
		-0.276683, -0.452185, -0.847924,
		0.924362, 0.115964, -0.363466,
		26.066809, 37.601086, 31.186735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588844, 36.922955, 31.069176>,  <25.419754, 37.519909, 31.441160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588844, 36.922955, 31.069176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.952669, 37.082504, 31.115814>,  <26.170963, 37.178234, 31.143797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.952669, 37.082504, 31.115814>,  <25.588844, 36.922955, 31.069176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952669, 37.082504, 31.115814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358509, -0.895046, 0.265259,
		0.210164, -0.199469, -0.957101,
		0.909561, 0.398878, 0.116595,
		26.225538, 37.202168, 31.150793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081230, 36.389435, 30.835354>,  <25.588844, 36.922955, 31.069176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081230, 36.389435, 30.835354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.302124, 36.648361, 31.045504>,  <26.434660, 36.803719, 31.171593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.302124, 36.648361, 31.045504>,  <26.081230, 36.389435, 30.835354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302124, 36.648361, 31.045504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581072, -0.750745, 0.314224,
		0.597824, 0.131754, -0.790726,
		0.552233, 0.647319, 0.525372,
		26.467794, 36.842556, 31.203115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824959, 36.238449, 30.719589>,  <26.081230, 36.389435, 30.835354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824959, 36.238449, 30.719589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789186, 36.446251, 31.059500>,  <26.767723, 36.570930, 31.263447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789186, 36.446251, 31.059500>,  <26.824959, 36.238449, 30.719589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789186, 36.446251, 31.059500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502231, -0.713261, 0.488900,
		0.860097, 0.470506, -0.197124,
		-0.089429, 0.519503, 0.849776,
		26.762358, 36.602100, 31.314432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521120, 36.233139, 31.026011>,  <26.824959, 36.238449, 30.719589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521120, 36.233139, 31.026011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.258953, 36.297455, 31.321192>,  <27.101652, 36.336044, 31.498301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.258953, 36.297455, 31.321192>,  <27.521120, 36.233139, 31.026011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258953, 36.297455, 31.321192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541366, -0.581289, 0.607474,
		0.526641, 0.797652, 0.293940,
		-0.655418, 0.160791, 0.737953,
		27.062328, 36.345692, 31.542578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000595, 36.305023, 31.514732>,  <27.521120, 36.233139, 31.026011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000595, 36.305023, 31.514732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.652666, 36.210869, 31.688171>,  <27.443909, 36.154377, 31.792234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.652666, 36.210869, 31.688171>,  <28.000595, 36.305023, 31.514732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652666, 36.210869, 31.688171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487766, -0.542323, 0.684083,
		0.074128, 0.806524, 0.586536,
		-0.869821, -0.235383, 0.433596,
		27.391720, 36.140255, 31.818251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962881, 36.495750, 32.230465>,  <28.000595, 36.305023, 31.514732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962881, 36.495750, 32.230465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.655397, 36.239960, 32.225410>,  <27.470907, 36.086487, 32.222378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.655397, 36.239960, 32.225410>,  <27.962881, 36.495750, 32.230465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655397, 36.239960, 32.225410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382481, -0.475441, 0.792252,
		-0.512634, 0.604177, 0.610063,
		-0.768710, -0.639473, -0.012640,
		27.424784, 36.048119, 32.221619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733906, 36.466183, 32.940872>,  <27.962881, 36.495750, 32.230465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733906, 36.466183, 32.940872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.613733, 36.124283, 32.771568>,  <27.541630, 35.919144, 32.669987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.613733, 36.124283, 32.771568>,  <27.733906, 36.466183, 32.940872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613733, 36.124283, 32.771568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228314, -0.495309, 0.838178,
		-0.926075, 0.155177, 0.343956,
		-0.300430, -0.854745, -0.423264,
		27.523603, 35.867859, 32.644588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434338, 36.169941, 33.426083>,  <27.733906, 36.466183, 32.940872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434338, 36.169941, 33.426083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495161, 35.864403, 33.175190>,  <27.531654, 35.681080, 33.024654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495161, 35.864403, 33.175190>,  <27.434338, 36.169941, 33.426083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495161, 35.864403, 33.175190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286480, -0.573306, 0.767626,
		-0.945943, -0.296411, 0.131652,
		0.152056, -0.763846, -0.627230,
		27.540777, 35.635250, 32.987022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062017, 35.663364, 33.692730>,  <27.434338, 36.169941, 33.426083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062017, 35.663364, 33.692730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.286285, 35.424732, 33.463036>,  <27.420847, 35.281555, 33.325218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.286285, 35.424732, 33.463036>,  <27.062017, 35.663364, 33.692730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286285, 35.424732, 33.463036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015044, -0.686034, 0.727415,
		-0.827902, -0.416479, -0.375664,
		0.560671, -0.596577, -0.574234,
		27.454487, 35.245758, 33.290764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737888, 34.983894, 33.800179>,  <27.062017, 35.663364, 33.692730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737888, 34.983894, 33.800179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106686, 34.939541, 33.651779>,  <27.327963, 34.912930, 33.562740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106686, 34.939541, 33.651779>,  <26.737888, 34.983894, 33.800179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106686, 34.939541, 33.651779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114860, -0.836675, 0.535521,
		-0.369783, -0.536358, -0.758670,
		0.921991, -0.110886, -0.370994,
		27.383284, 34.906277, 33.540482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823860, 34.339081, 33.559063>,  <26.737888, 34.983894, 33.800179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823860, 34.339081, 33.559063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.204237, 34.438965, 33.632122>,  <27.432463, 34.498894, 33.675957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.204237, 34.438965, 33.632122>,  <26.823860, 34.339081, 33.559063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204237, 34.438965, 33.632122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093843, -0.795374, 0.598810,
		0.294797, -0.552292, -0.779787,
		0.950940, 0.249705, 0.182645,
		27.489519, 34.513878, 33.686916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345478, 33.749454, 33.305550>,  <26.823860, 34.339081, 33.559063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345478, 33.749454, 33.305550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552643, 33.972080, 33.565395>,  <27.676941, 34.105656, 33.721302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552643, 33.972080, 33.565395>,  <27.345478, 33.749454, 33.305550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552643, 33.972080, 33.565395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231619, -0.822272, 0.519829,
		0.823482, -0.118760, -0.554774,
		0.517910, 0.556566, 0.649618,
		27.708015, 34.139050, 33.760281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981550, 33.420990, 33.393726>,  <27.345478, 33.749454, 33.305550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981550, 33.420990, 33.393726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.976345, 33.664528, 33.710999>,  <27.973221, 33.810650, 33.901363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.976345, 33.664528, 33.710999>,  <27.981550, 33.420990, 33.393726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976345, 33.664528, 33.710999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318159, -0.749499, 0.580540,
		0.947948, 0.259913, -0.183957,
		-0.013015, 0.608849, 0.793179,
		27.972441, 33.847183, 33.948952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638550, 33.603027, 33.724072>,  <27.981550, 33.420990, 33.393726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638550, 33.603027, 33.724072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392910, 33.690624, 34.027367>,  <28.245527, 33.743183, 34.209343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392910, 33.690624, 34.027367>,  <28.638550, 33.603027, 33.724072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392910, 33.690624, 34.027367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552310, -0.567036, 0.611084,
		0.563770, 0.794049, 0.227266,
		-0.614098, 0.218990, 0.758239,
		28.208681, 33.756321, 34.254837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073254, 33.935486, 34.277355>,  <28.638550, 33.603027, 33.724072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073254, 33.935486, 34.277355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735466, 33.766838, 34.409481>,  <28.532793, 33.665649, 34.488754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735466, 33.766838, 34.409481>,  <29.073254, 33.935486, 34.277355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735466, 33.766838, 34.409481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519278, -0.493391, 0.697793,
		-0.131233, 0.760789, 0.635593,
		-0.844469, -0.421623, 0.330312,
		28.482124, 33.640350, 34.508575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648893, 33.443115, 34.335678>,  <29.073254, 33.935486, 34.277355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648893, 33.443115, 34.335678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.821814, 33.348385, 33.987648>,  <29.925566, 33.291546, 33.778831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.821814, 33.348385, 33.987648>,  <29.648893, 33.443115, 34.335678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821814, 33.348385, 33.987648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725871, 0.663875, 0.179950,
		0.535002, -0.709353, 0.458903,
		0.432303, -0.236830, -0.870072,
		29.951504, 33.277336, 33.726627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281618, 33.615086, 34.327240>,  <29.648893, 33.443115, 34.335678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281618, 33.615086, 34.327240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.228319, 33.627296, 33.930996>,  <30.196339, 33.634624, 33.693249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.228319, 33.627296, 33.930996>,  <30.281618, 33.615086, 34.327240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228319, 33.627296, 33.930996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428878, 0.902869, -0.029866,
		0.893481, -0.428831, -0.133398,
		-0.133248, 0.030527, -0.990613,
		30.188345, 33.636456, 33.633812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856033, 33.931938, 34.149921>,  <30.281618, 33.615086, 34.327240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856033, 33.931938, 34.149921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.609442, 33.963020, 33.836510>,  <30.461487, 33.981670, 33.648464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.609442, 33.963020, 33.836510>,  <30.856033, 33.931938, 34.149921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609442, 33.963020, 33.836510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394882, 0.891436, -0.222283,
		0.681190, -0.446434, -0.580239,
		-0.616480, 0.077709, -0.783526,
		30.424498, 33.986332, 33.601452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389511, 34.124344, 33.673950>,  <30.856033, 33.931938, 34.149921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389511, 34.124344, 33.673950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018085, 34.237099, 33.577358>,  <30.795231, 34.304752, 33.519402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018085, 34.237099, 33.577358>,  <31.389511, 34.124344, 33.673950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018085, 34.237099, 33.577358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328969, 0.926303, -0.183688,
		0.171907, -0.250006, -0.952861,
		-0.928562, 0.281884, -0.241483,
		30.739517, 34.321663, 33.504913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613571, 34.620991, 33.315216>,  <31.389511, 34.124344, 33.673950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613571, 34.620991, 33.315216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.229979, 34.729340, 33.348648>,  <30.999823, 34.794350, 33.368706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.229979, 34.729340, 33.348648>,  <31.613571, 34.620991, 33.315216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229979, 34.729340, 33.348648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256413, 0.954587, -0.151710,
		-0.120876, -0.124057, -0.984885,
		-0.958979, 0.270876, 0.083576,
		30.942286, 34.810604, 33.373722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470720, 35.051292, 32.783012>,  <31.613571, 34.620991, 33.315216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470720, 35.051292, 32.783012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.157431, 35.131237, 33.018509>,  <30.969458, 35.179203, 33.159809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.157431, 35.131237, 33.018509>,  <31.470720, 35.051292, 32.783012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157431, 35.131237, 33.018509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002953, 0.948112, -0.317923,
		-0.621735, -0.247266, -0.743173,
		-0.783223, 0.199859, 0.588744,
		30.922464, 35.191196, 33.195133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207396, 35.693764, 32.491848>,  <31.470720, 35.051292, 32.783012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207396, 35.693764, 32.491848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.007055, 35.679832, 32.837780>,  <30.886850, 35.671474, 33.045341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.007055, 35.679832, 32.837780>,  <31.207396, 35.693764, 32.491848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007055, 35.679832, 32.837780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141647, 0.989017, -0.042208,
		-0.853864, -0.143641, -0.500283,
		-0.500851, -0.034824, 0.864833,
		30.856800, 35.669384, 33.097229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547342, 35.844036, 32.412300>,  <31.207396, 35.693764, 32.491848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547342, 35.844036, 32.412300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.634600, 35.967617, 32.782589>,  <30.686954, 36.041763, 33.004761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.634600, 35.967617, 32.782589>,  <30.547342, 35.844036, 32.412300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634600, 35.967617, 32.782589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402700, 0.892542, -0.202981,
		-0.888958, -0.328509, 0.319118,
		0.218145, 0.308950, 0.925722,
		30.700043, 36.060303, 33.060307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064472, 36.328201, 32.580120>,  <30.547342, 35.844036, 32.412300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064472, 36.328201, 32.580120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.336924, 36.419621, 32.858353>,  <30.500395, 36.474472, 33.025291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.336924, 36.419621, 32.858353>,  <30.064472, 36.328201, 32.580120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336924, 36.419621, 32.858353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378137, 0.923329, 0.066907,
		-0.626958, -0.308597, 0.715326,
		0.681129, 0.228543, 0.695580,
		30.541262, 36.488182, 33.067028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772100, 36.861298, 33.010090>,  <30.064472, 36.328201, 32.580120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772100, 36.861298, 33.010090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.168467, 36.887920, 33.056831>,  <30.406286, 36.903896, 33.084877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.168467, 36.887920, 33.056831>,  <29.772100, 36.861298, 33.010090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168467, 36.887920, 33.056831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056229, 0.994390, -0.089596,
		-0.122158, 0.082212, 0.989100,
		0.990917, 0.066561, 0.116850,
		30.465742, 36.907890, 33.091885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917622, 37.372505, 33.638271>,  <29.772100, 36.861298, 33.010090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917622, 37.372505, 33.638271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226290, 37.358639, 33.384239>,  <30.411491, 37.350319, 33.231819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226290, 37.358639, 33.384239>,  <29.917622, 37.372505, 33.638271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226290, 37.358639, 33.384239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025350, 0.999396, -0.023753,
		0.635518, 0.002230, 0.772083,
		0.771670, -0.034668, -0.635078,
		30.457790, 37.348240, 33.193714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340715, 38.001030, 33.783352>,  <29.917622, 37.372505, 33.638271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340715, 38.001030, 33.783352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480005, 37.875977, 33.429855>,  <30.563580, 37.800945, 33.217758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480005, 37.875977, 33.429855>,  <30.340715, 38.001030, 33.783352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480005, 37.875977, 33.429855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137429, 0.949587, -0.281775,
		0.927282, -0.023330, 0.373636,
		0.348226, -0.312634, -0.883741,
		30.584473, 37.782185, 33.164734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984032, 38.317097, 33.651676>,  <30.340715, 38.001030, 33.783352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984032, 38.317097, 33.651676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.884588, 38.220551, 33.276455>,  <30.824923, 38.162624, 33.051323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.884588, 38.220551, 33.276455>,  <30.984032, 38.317097, 33.651676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884588, 38.220551, 33.276455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104390, 0.956139, -0.273681,
		0.962962, -0.165962, -0.212508,
		-0.248608, -0.241361, -0.938050,
		30.810005, 38.148144, 32.995041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407185, 38.666843, 33.094311>,  <30.984032, 38.317097, 33.651676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407185, 38.666843, 33.094311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.086920, 38.551285, 32.884369>,  <30.894760, 38.481949, 32.758404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.086920, 38.551285, 32.884369>,  <31.407185, 38.666843, 33.094311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086920, 38.551285, 32.884369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124419, 0.937135, -0.326034,
		0.586055, -0.195741, -0.786273,
		-0.800662, -0.288901, -0.524859,
		30.846722, 38.464615, 32.726910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467302, 39.071594, 32.416187>,  <31.407185, 38.666843, 33.094311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467302, 39.071594, 32.416187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.086271, 38.955154, 32.451637>,  <30.857653, 38.885292, 32.472908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.086271, 38.955154, 32.451637>,  <31.467302, 39.071594, 32.416187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086271, 38.955154, 32.451637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303870, 0.925343, -0.226725,
		-0.016008, -0.242903, -0.969918,
		-0.952579, -0.291100, 0.088623,
		30.800497, 38.867825, 32.478226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147926, 39.499790, 31.882547>,  <31.467302, 39.071594, 32.416187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147926, 39.499790, 31.882547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.843178, 39.377548, 32.110989>,  <30.660328, 39.304203, 32.248055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.843178, 39.377548, 32.110989>,  <31.147926, 39.499790, 31.882547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843178, 39.377548, 32.110989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427752, 0.899473, -0.089318,
		-0.486395, -0.312339, -0.816005,
		-0.761871, -0.305604, 0.571103,
		30.614616, 39.285866, 32.282318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542259, 39.434155, 31.468613>,  <31.147926, 39.499790, 31.882547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542259, 39.434155, 31.468613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418503, 39.457054, 31.848297>,  <30.344250, 39.470795, 32.076107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418503, 39.457054, 31.848297>,  <30.542259, 39.434155, 31.468613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418503, 39.457054, 31.848297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641089, 0.724683, -0.252663,
		-0.702341, -0.686700, -0.187511,
		-0.309390, 0.057244, 0.949211,
		30.325686, 39.474228, 32.133060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840494, 39.318897, 31.438671>,  <30.542259, 39.434155, 31.468613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840494, 39.318897, 31.438671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876158, 39.494057, 31.796509>,  <29.897556, 39.599152, 32.011211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876158, 39.494057, 31.796509>,  <29.840494, 39.318897, 31.438671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876158, 39.494057, 31.796509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694304, 0.671306, -0.259404,
		-0.714138, -0.597991, 0.363888,
		0.089159, 0.437899, 0.894593,
		29.902905, 39.625427, 32.064888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140799, 39.269817, 31.731604>,  <29.840494, 39.318897, 31.438671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140799, 39.269817, 31.731604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.351862, 39.554970, 31.916374>,  <29.478500, 39.726063, 32.027237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.351862, 39.554970, 31.916374>,  <29.140799, 39.269817, 31.731604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351862, 39.554970, 31.916374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746436, 0.648686, -0.148458,
		-0.405478, -0.266462, 0.874406,
		0.527657, 0.712884, 0.461925,
		29.510159, 39.768837, 32.054951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648581, 39.500381, 32.206230>,  <29.140799, 39.269817, 31.731604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648581, 39.500381, 32.206230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917027, 39.796898, 32.202442>,  <29.078094, 39.974808, 32.200169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917027, 39.796898, 32.202442>,  <28.648581, 39.500381, 32.206230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917027, 39.796898, 32.202442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741093, 0.671162, 0.017960,
		0.019669, -0.005036, 0.999794,
		0.671114, 0.741294, -0.009469,
		29.118361, 40.019287, 32.199600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376228, 40.032909, 32.711113>,  <28.648581, 39.500381, 32.206230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376228, 40.032909, 32.711113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600117, 40.211819, 32.432072>,  <28.734449, 40.319164, 32.264645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600117, 40.211819, 32.432072>,  <28.376228, 40.032909, 32.711113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600117, 40.211819, 32.432072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583721, 0.810338, 0.051209,
		0.588202, 0.378545, 0.714649,
		0.559722, 0.447277, -0.697607,
		28.768034, 40.346001, 32.222790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291515, 40.695568, 32.948788>,  <28.376228, 40.032909, 32.711113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291515, 40.695568, 32.948788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451042, 40.729916, 32.583588>,  <28.546759, 40.750523, 32.364468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451042, 40.729916, 32.583588>,  <28.291515, 40.695568, 32.948788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451042, 40.729916, 32.583588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541451, 0.825586, -0.158868,
		0.740119, 0.557705, 0.375752,
		0.398817, 0.085870, -0.913001,
		28.570686, 40.755676, 32.309689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.638958, 33.206036, 45.893066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297089, 32.999809, 45.868626>,  <38.091969, 32.876076, 45.853962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297089, 32.999809, 45.868626>,  <38.638958, 33.206036, 45.893066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297089, 32.999809, 45.868626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230580, 0.271502, 0.934409,
		-0.465158, 0.812700, -0.350923,
		-0.854670, -0.515563, -0.061101,
		38.040688, 32.845139, 45.850296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044743, 33.705013, 46.193684>,  <38.638958, 33.206036, 45.893066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044743, 33.705013, 46.193684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932224, 33.321308, 46.204239>,  <37.864712, 33.091087, 46.210571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932224, 33.321308, 46.204239>,  <38.044743, 33.705013, 46.193684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932224, 33.321308, 46.204239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308476, 0.116425, 0.944081,
		-0.908689, 0.257426, -0.328658,
		-0.281294, -0.959259, 0.026385,
		37.847836, 33.033531, 46.212154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287380, 33.645031, 46.335773>,  <38.044743, 33.705013, 46.193684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287380, 33.645031, 46.335773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.453594, 33.297951, 46.444901>,  <37.553322, 33.089703, 46.510376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.453594, 33.297951, 46.444901>,  <37.287380, 33.645031, 46.335773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453594, 33.297951, 46.444901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311999, 0.145773, 0.938833,
		-0.854391, -0.475241, -0.210147,
		0.415538, -0.867696, 0.272822,
		37.578255, 33.037643, 46.526749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801048, 33.325993, 46.698322>,  <37.287380, 33.645031, 46.335773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801048, 33.325993, 46.698322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105812, 33.093246, 46.812115>,  <37.288670, 32.953598, 46.880390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105812, 33.093246, 46.812115>,  <36.801048, 33.325993, 46.698322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105812, 33.093246, 46.812115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322938, 0.039454, 0.945597,
		-0.561432, -0.812330, -0.157845,
		0.761909, -0.581862, 0.284483,
		37.334385, 32.918690, 46.897461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515881, 32.847462, 47.098316>,  <36.801048, 33.325993, 46.698322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515881, 32.847462, 47.098316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.902927, 32.833447, 47.198311>,  <37.135155, 32.825039, 47.258308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.902927, 32.833447, 47.198311>,  <36.515881, 32.847462, 47.098316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902927, 32.833447, 47.198311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250966, -0.027119, 0.967616,
		-0.027119, -0.999018, -0.035033,
		-0.967616, 0.035033, -0.249984,
		37.193211, 32.822937, 47.273308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666370, 32.371243, 47.726589>,  <36.515881, 32.847462, 47.098316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666370, 32.371243, 47.726589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001583, 32.589355, 47.718853>,  <37.202709, 32.720222, 47.714211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001583, 32.589355, 47.718853>,  <36.666370, 32.371243, 47.726589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001583, 32.589355, 47.718853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008570, 0.022295, 0.999715,
		0.545555, -0.837958, 0.014011,
		0.838031, 0.545279, -0.019345,
		37.252991, 32.752937, 47.713051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176109, 32.006683, 48.141335>,  <36.666370, 32.371243, 47.726589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176109, 32.006683, 48.141335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.312763, 32.382614, 48.142689>,  <37.394756, 32.608173, 48.143501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.312763, 32.382614, 48.142689>,  <37.176109, 32.006683, 48.141335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312763, 32.382614, 48.142689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188726, -0.072130, 0.979377,
		0.920690, -0.333949, -0.202012,
		0.341634, 0.939827, 0.003385,
		37.415253, 32.664562, 48.143703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700424, 32.019779, 48.576447>,  <37.176109, 32.006683, 48.141335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700424, 32.019779, 48.576447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.624157, 32.412235, 48.563778>,  <37.578396, 32.647709, 48.556175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.624157, 32.412235, 48.563778>,  <37.700424, 32.019779, 48.576447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624157, 32.412235, 48.563778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166287, 0.064083, 0.983993,
		0.967467, 0.182353, -0.175370,
		-0.190673, 0.981143, -0.031675,
		37.566956, 32.706577, 48.554276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238594, 32.282799, 49.062778>,  <37.700424, 32.019779, 48.576447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238594, 32.282799, 49.062778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.961117, 32.567928, 49.021465>,  <37.794628, 32.739006, 48.996677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.961117, 32.567928, 49.021465>,  <38.238594, 32.282799, 49.062778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961117, 32.567928, 49.021465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058410, 0.198602, 0.978338,
		0.717895, 0.672637, -0.179405,
		-0.693696, 0.712823, -0.103287,
		37.753006, 32.781776, 48.990479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475151, 32.887501, 49.315647>,  <38.238594, 32.282799, 49.062778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475151, 32.887501, 49.315647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.076988, 32.921879, 49.332489>,  <37.838089, 32.942505, 49.342594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.076988, 32.921879, 49.332489>,  <38.475151, 32.887501, 49.315647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076988, 32.921879, 49.332489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064205, 0.273389, 0.959758,
		0.070973, 0.958056, -0.277653,
		-0.995410, 0.085943, 0.042109,
		37.778366, 32.947662, 49.345123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336845, 33.473106, 49.781860>,  <38.475151, 32.887501, 49.315647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336845, 33.473106, 49.781860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977535, 33.301441, 49.744095>,  <37.761948, 33.198441, 49.721436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977535, 33.301441, 49.744095>,  <38.336845, 33.473106, 49.781860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977535, 33.301441, 49.744095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177208, 0.157184, 0.971540,
		-0.402111, 0.889444, -0.217247,
		-0.898278, -0.429165, -0.094411,
		37.708054, 33.172691, 49.715771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031464, 33.881737, 50.277832>,  <38.336845, 33.473106, 49.781860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031464, 33.881737, 50.277832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832287, 33.544380, 50.197083>,  <37.712780, 33.341969, 50.148632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832287, 33.544380, 50.197083>,  <38.031464, 33.881737, 50.277832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832287, 33.544380, 50.197083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259824, -0.076999, 0.962581,
		-0.827374, 0.531759, -0.180792,
		-0.497940, -0.843388, -0.201870,
		37.682903, 33.291363, 50.136520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374538, 33.971378, 50.574989>,  <38.031464, 33.881737, 50.277832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374538, 33.971378, 50.574989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.459969, 33.582565, 50.535942>,  <37.511227, 33.349277, 50.512512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.459969, 33.582565, 50.535942>,  <37.374538, 33.971378, 50.574989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459969, 33.582565, 50.535942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450320, -0.186633, 0.873144,
		-0.866948, -0.142519, -0.477588,
		0.213573, -0.972037, -0.097622,
		37.524040, 33.290955, 50.506657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674191, 33.642040, 50.669521>,  <37.374538, 33.971378, 50.574989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674191, 33.642040, 50.669521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002586, 33.456795, 50.803089>,  <37.199623, 33.345650, 50.883228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002586, 33.456795, 50.803089>,  <36.674191, 33.642040, 50.669521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002586, 33.456795, 50.803089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441322, -0.143695, 0.885769,
		-0.362226, -0.874574, -0.322354,
		0.820991, -0.463110, 0.333919,
		37.248882, 33.317863, 50.903263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125130, 33.701542, 51.310383>,  <36.674191, 33.642040, 50.669521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125130, 33.701542, 51.310383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946999, 34.050415, 51.391350>,  <35.840118, 34.259739, 51.439930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946999, 34.050415, 51.391350>,  <36.125130, 33.701542, 51.310383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946999, 34.050415, 51.391350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173518, 0.137722, -0.975153,
		-0.878394, -0.469386, 0.090009,
		-0.445327, 0.872187, 0.202421,
		35.813400, 34.312073, 51.452076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576839, 33.737732, 50.917145>,  <36.125130, 33.701542, 51.310383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576839, 33.737732, 50.917145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665764, 34.121777, 50.984993>,  <35.719116, 34.352203, 51.025703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665764, 34.121777, 50.984993>,  <35.576839, 33.737732, 50.917145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665764, 34.121777, 50.984993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157509, 0.207054, -0.965567,
		-0.962170, 0.187936, 0.197255,
		0.222307, 0.960109, 0.169619,
		35.732456, 34.409809, 51.035877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143391, 34.099125, 50.518044>,  <35.576839, 33.737732, 50.917145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143391, 34.099125, 50.518044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409870, 34.387020, 50.596172>,  <35.569759, 34.559757, 50.643051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409870, 34.387020, 50.596172>,  <35.143391, 34.099125, 50.518044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409870, 34.387020, 50.596172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083433, 0.332191, -0.939515,
		-0.741090, 0.609610, 0.281356,
		0.666201, 0.719740, 0.195322,
		35.609730, 34.602943, 50.654770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840153, 34.641430, 50.290905>,  <35.143391, 34.099125, 50.518044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840153, 34.641430, 50.290905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233101, 34.715900, 50.284210>,  <35.468872, 34.760582, 50.280193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233101, 34.715900, 50.284210>,  <34.840153, 34.641430, 50.290905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233101, 34.715900, 50.284210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047844, 0.163857, -0.985323,
		-0.180697, 0.968757, 0.169876,
		0.982375, 0.186172, -0.016740,
		35.527813, 34.771751, 50.279186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906063, 35.189846, 49.854736>,  <34.840153, 34.641430, 50.290905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906063, 35.189846, 49.854736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278339, 35.044815, 49.874138>,  <35.501705, 34.957794, 49.885780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278339, 35.044815, 49.874138>,  <34.906063, 35.189846, 49.854736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278339, 35.044815, 49.874138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164692, 0.296900, -0.940599,
		0.326642, 0.883394, 0.336036,
		0.930689, -0.362582, 0.048508,
		35.557545, 34.936039, 49.888691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279968, 35.633141, 49.423580>,  <34.906063, 35.189846, 49.854736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279968, 35.633141, 49.423580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537712, 35.330708, 49.469437>,  <35.692356, 35.149246, 49.496952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537712, 35.330708, 49.469437>,  <35.279968, 35.633141, 49.423580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537712, 35.330708, 49.469437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344330, 0.152998, -0.926298,
		0.682818, 0.636342, 0.358927,
		0.644357, -0.756083, 0.114641,
		35.731018, 35.103882, 49.503830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867821, 35.838543, 49.035114>,  <35.279968, 35.633141, 49.423580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867821, 35.838543, 49.035114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890594, 35.440575, 49.068321>,  <35.904259, 35.201794, 49.088245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890594, 35.440575, 49.068321>,  <35.867821, 35.838543, 49.035114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890594, 35.440575, 49.068321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373792, -0.055865, -0.925829,
		0.925764, 0.083742, 0.368712,
		0.056933, -0.994920, 0.083020,
		35.907673, 35.142097, 49.093227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465633, 35.634037, 48.783890>,  <35.867821, 35.838543, 49.035114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465633, 35.634037, 48.783890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249256, 35.299778, 48.745781>,  <36.119431, 35.099224, 48.722916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249256, 35.299778, 48.745781>,  <36.465633, 35.634037, 48.783890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249256, 35.299778, 48.745781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280571, -0.072502, -0.957091,
		0.792879, -0.544467, 0.273677,
		-0.540947, -0.835643, -0.095276,
		36.086971, 35.049084, 48.717197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896896, 35.142647, 48.573032>,  <36.465633, 35.634037, 48.783890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896896, 35.142647, 48.573032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531155, 35.015404, 48.472824>,  <36.311710, 34.939056, 48.412701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531155, 35.015404, 48.472824>,  <36.896896, 35.142647, 48.573032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531155, 35.015404, 48.472824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309486, -0.150106, -0.938982,
		0.261095, -0.936095, 0.235701,
		-0.914357, -0.318109, -0.250516,
		36.256847, 34.919971, 48.397671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020241, 34.708168, 47.991325>,  <36.896896, 35.142647, 48.573032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020241, 34.708168, 47.991325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.622932, 34.753651, 47.982609>,  <36.384548, 34.780941, 47.977379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.622932, 34.753651, 47.982609>,  <37.020241, 34.708168, 47.991325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622932, 34.753651, 47.982609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006505, -0.242757, -0.970065,
		-0.115591, -0.963400, 0.241864,
		-0.993276, 0.113704, -0.021794,
		36.324951, 34.787762, 47.976070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726971, 34.139023, 47.597042>,  <37.020241, 34.708168, 47.991325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726971, 34.139023, 47.597042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.483284, 34.455212, 47.571739>,  <36.337070, 34.644924, 47.556557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.483284, 34.455212, 47.571739>,  <36.726971, 34.139023, 47.597042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483284, 34.455212, 47.571739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052880, -0.039101, -0.997835,
		-0.791239, -0.611243, -0.017979,
		-0.609217, 0.790476, -0.063260,
		36.300518, 34.692356, 47.552761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287262, 33.902737, 47.005547>,  <36.726971, 34.139023, 47.597042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287262, 33.902737, 47.005547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233871, 34.296070, 47.054913>,  <36.201839, 34.532070, 47.084530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233871, 34.296070, 47.054913>,  <36.287262, 33.902737, 47.005547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233871, 34.296070, 47.054913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061394, 0.116084, -0.991340,
		-0.989149, -0.139895, 0.044877,
		-0.133474, 0.983338, 0.123413,
		36.193829, 34.591072, 47.091938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831947, 34.108772, 46.355434>,  <36.287262, 33.902737, 47.005547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831947, 34.108772, 46.355434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961319, 34.458164, 46.500992>,  <36.038940, 34.667801, 46.588326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961319, 34.458164, 46.500992>,  <35.831947, 34.108772, 46.355434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961319, 34.458164, 46.500992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198852, 0.313238, -0.928622,
		-0.925123, 0.372703, -0.072384,
		0.323427, 0.873484, 0.363897,
		36.058346, 34.720211, 46.610161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559814, 34.660725, 46.001236>,  <35.831947, 34.108772, 46.355434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559814, 34.660725, 46.001236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.893593, 34.820404, 46.153206>,  <36.093861, 34.916210, 46.244389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.893593, 34.820404, 46.153206>,  <35.559814, 34.660725, 46.001236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893593, 34.820404, 46.153206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262422, 0.318390, -0.910913,
		-0.484597, 0.859808, 0.160921,
		0.834446, 0.399197, 0.379923,
		36.143929, 34.940163, 46.267181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864407, 35.137054, 46.223217>,  <35.559814, 34.660725, 46.001236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864407, 35.137054, 46.223217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.490646, 35.090107, 46.088680>,  <34.266392, 35.061939, 46.007957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.490646, 35.090107, 46.088680>,  <34.864407, 35.137054, 46.223217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490646, 35.090107, 46.088680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278272, -0.348995, 0.894856,
		-0.222411, 0.929746, 0.293439,
		-0.934397, -0.117370, -0.336343,
		34.210327, 35.054897, 45.987778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362946, 35.406902, 46.744350>,  <34.864407, 35.137054, 46.223217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362946, 35.406902, 46.744350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.133503, 35.153744, 46.536343>,  <33.995838, 35.001850, 46.411537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.133503, 35.153744, 46.536343>,  <34.362946, 35.406902, 46.744350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133503, 35.153744, 46.536343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366150, -0.369777, 0.853931,
		-0.732739, 0.680227, -0.019627,
		-0.573610, -0.632895, -0.520015,
		33.961422, 34.963875, 46.380337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808846, 35.434063, 47.067516>,  <34.362946, 35.406902, 46.744350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808846, 35.434063, 47.067516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777107, 35.084934, 46.874901>,  <33.758064, 34.875458, 46.759331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777107, 35.084934, 46.874901>,  <33.808846, 35.434063, 47.067516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777107, 35.084934, 46.874901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324128, -0.434224, 0.840471,
		-0.942680, 0.222767, -0.248454,
		-0.079345, -0.872826, -0.481539,
		33.753304, 34.823086, 46.730438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168396, 35.259956, 47.178246>,  <33.808846, 35.434063, 47.067516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168396, 35.259956, 47.178246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321930, 34.911076, 47.056961>,  <33.414051, 34.701748, 46.984192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321930, 34.911076, 47.056961>,  <33.168396, 35.259956, 47.178246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321930, 34.911076, 47.056961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345808, -0.440242, 0.828616,
		-0.856206, -0.213197, -0.470594,
		0.383834, -0.872201, -0.303213,
		33.437080, 34.649414, 46.965996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584793, 34.720310, 47.278744>,  <33.168396, 35.259956, 47.178246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584793, 34.720310, 47.278744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918457, 34.501167, 47.253338>,  <33.118656, 34.369682, 47.238094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918457, 34.501167, 47.253338>,  <32.584793, 34.720310, 47.278744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918457, 34.501167, 47.253338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168365, -0.362613, 0.916605,
		-0.525204, -0.753896, -0.394716,
		0.834154, -0.547862, -0.063516,
		33.168705, 34.336807, 47.234283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482246, 34.172455, 47.593964>,  <32.584793, 34.720310, 47.278744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482246, 34.172455, 47.593964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.879738, 34.135818, 47.619606>,  <33.118233, 34.113834, 47.634991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.879738, 34.135818, 47.619606>,  <32.482246, 34.172455, 47.593964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879738, 34.135818, 47.619606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085448, -0.252462, 0.963826,
		-0.072096, -0.963262, -0.258706,
		0.993731, -0.091594, 0.064107,
		33.177856, 34.108341, 47.638840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593075, 33.541763, 47.923981>,  <32.482246, 34.172455, 47.593964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593075, 33.541763, 47.923981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908592, 33.779350, 47.987240>,  <33.097904, 33.921902, 48.025196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908592, 33.779350, 47.987240>,  <32.593075, 33.541763, 47.923981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908592, 33.779350, 47.987240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134507, -0.084253, 0.987324,
		0.599759, -0.800068, 0.013434,
		0.788794, 0.593964, 0.158146,
		33.145229, 33.957539, 48.034683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356556, 32.822674, 47.855888>,  <32.593075, 33.541763, 47.923981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356556, 32.822674, 47.855888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.959398, 32.823578, 47.903496>,  <31.721106, 32.824120, 47.932060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.959398, 32.823578, 47.903496>,  <32.356556, 32.822674, 47.855888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959398, 32.823578, 47.903496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101044, 0.512548, -0.852692,
		-0.062925, -0.858655, -0.508676,
		-0.992890, 0.002257, 0.119014,
		31.661531, 32.824253, 47.939201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010849, 32.338154, 47.265186>,  <32.356556, 32.822674, 47.855888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010849, 32.338154, 47.265186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.737051, 32.596077, 47.401237>,  <31.572773, 32.750832, 47.482868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.737051, 32.596077, 47.401237>,  <32.010849, 32.338154, 47.265186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737051, 32.596077, 47.401237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260422, 0.219505, -0.940212,
		-0.680917, -0.732148, 0.017672,
		-0.684495, 0.644808, 0.340132,
		31.531702, 32.789520, 47.503277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382259, 32.290298, 46.795090>,  <32.010849, 32.338154, 47.265186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382259, 32.290298, 46.795090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.296587, 32.639603, 46.970150>,  <31.245184, 32.849186, 47.075184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.296587, 32.639603, 46.970150>,  <31.382259, 32.290298, 46.795090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296587, 32.639603, 46.970150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130114, 0.418547, -0.898826,
		-0.968090, -0.249454, 0.023980,
		-0.214179, 0.873264, 0.437649,
		31.232332, 32.901581, 47.101444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780075, 32.597050, 46.519192>,  <31.382259, 32.290298, 46.795090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780075, 32.597050, 46.519192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.950748, 32.919243, 46.683693>,  <31.053152, 33.112560, 46.782394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.950748, 32.919243, 46.683693>,  <30.780075, 32.597050, 46.519192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950748, 32.919243, 46.683693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172966, 0.519013, -0.837083,
		-0.887707, 0.286038, 0.360777,
		0.426685, 0.805486, 0.411256,
		31.078754, 33.160889, 46.807072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339596, 33.082710, 46.218887>,  <30.780075, 32.597050, 46.519192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339596, 33.082710, 46.218887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.690088, 33.235584, 46.336292>,  <30.900385, 33.327309, 46.406734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.690088, 33.235584, 46.336292>,  <30.339596, 33.082710, 46.218887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690088, 33.235584, 46.336292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123671, 0.410339, -0.903509,
		-0.465747, 0.827983, 0.312287,
		0.876233, 0.382186, 0.293511,
		30.952959, 33.350239, 46.424347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393593, 33.672638, 45.750717>,  <30.339596, 33.082710, 46.218887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393593, 33.672638, 45.750717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.757536, 33.618137, 45.907482>,  <30.975903, 33.585438, 46.001541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.757536, 33.618137, 45.907482>,  <30.393593, 33.672638, 45.750717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757536, 33.618137, 45.907482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401084, 0.046907, -0.914840,
		0.106260, 0.989564, 0.097325,
		0.909858, -0.136247, 0.391914,
		31.030493, 33.577263, 46.025055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716192, 34.217834, 45.613373>,  <30.393593, 33.672638, 45.750717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716192, 34.217834, 45.613373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.002239, 33.941208, 45.654057>,  <31.173868, 33.775234, 45.678467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.002239, 33.941208, 45.654057>,  <30.716192, 34.217834, 45.613373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002239, 33.941208, 45.654057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270845, 0.140000, -0.952388,
		0.644398, 0.708618, 0.287423,
		0.715118, -0.691564, 0.101710,
		31.216774, 33.733738, 45.684570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.260006, 30.124798, 50.072651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.487465, 30.450197, 50.023884>,  <35.623940, 30.645437, 49.994625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.487465, 30.450197, 50.023884>,  <35.260006, 30.124798, 50.072651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487465, 30.450197, 50.023884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293687, 0.062340, -0.953867,
		-0.768369, 0.578216, 0.274363,
		0.568645, 0.813498, -0.121915,
		35.658058, 30.694246, 49.987309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948761, 30.617504, 49.553467>,  <35.260006, 30.124798, 50.072651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948761, 30.617504, 49.553467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.342129, 30.688572, 49.538918>,  <35.578148, 30.731213, 49.530190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.342129, 30.688572, 49.538918>,  <34.948761, 30.617504, 49.553467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342129, 30.688572, 49.538918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034905, -0.011387, -0.999326,
		-0.177966, 0.984024, -0.004996,
		0.983417, 0.177672, -0.036374,
		35.637154, 30.741873, 49.528004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011627, 31.139824, 49.033012>,  <34.948761, 30.617504, 49.553467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011627, 31.139824, 49.033012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363411, 30.950218, 49.050270>,  <35.574482, 30.836454, 49.060623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363411, 30.950218, 49.050270>,  <35.011627, 31.139824, 49.033012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363411, 30.950218, 49.050270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018259, -0.124165, -0.992093,
		0.475625, 0.871718, -0.117853,
		0.879459, -0.474016, 0.043140,
		35.627247, 30.808014, 49.063213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493134, 31.479931, 48.604633>,  <35.011627, 31.139824, 49.033012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493134, 31.479931, 48.604633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.643791, 31.111292, 48.642139>,  <35.734188, 30.890108, 48.664642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.643791, 31.111292, 48.642139>,  <35.493134, 31.479931, 48.604633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643791, 31.111292, 48.642139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016481, -0.094541, -0.995385,
		0.926210, 0.376456, -0.020419,
		0.376649, -0.921598, 0.093769,
		35.756786, 30.834812, 48.670269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735775, 31.412518, 48.037960>,  <35.493134, 31.479931, 48.604633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735775, 31.412518, 48.037960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.802570, 31.028694, 48.128616>,  <35.842648, 30.798401, 48.183010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.802570, 31.028694, 48.128616>,  <35.735775, 31.412518, 48.037960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802570, 31.028694, 48.128616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037861, -0.223457, -0.973978,
		0.985232, 0.171221, -0.000984,
		0.166985, -0.959557, 0.226640,
		35.852665, 30.740828, 48.196609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253731, 31.211077, 47.551090>,  <35.735775, 31.412518, 48.037960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253731, 31.211077, 47.551090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.093529, 30.859184, 47.653599>,  <35.997410, 30.648048, 47.715103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.093529, 30.859184, 47.653599>,  <36.253731, 31.211077, 47.551090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093529, 30.859184, 47.653599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077295, -0.311119, -0.947223,
		0.913031, -0.359555, 0.192602,
		-0.400501, -0.879730, 0.256270,
		35.973377, 30.595264, 47.730480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721443, 30.716534, 47.328442>,  <36.253731, 31.211077, 47.551090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721443, 30.716534, 47.328442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.353958, 30.559599, 47.346466>,  <36.133465, 30.465437, 47.357281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.353958, 30.559599, 47.346466>,  <36.721443, 30.716534, 47.328442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353958, 30.559599, 47.346466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102710, -0.347556, -0.932017,
		0.381328, -0.851631, 0.359603,
		-0.918716, -0.392339, 0.045062,
		36.078342, 30.441896, 47.359985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789589, 30.103058, 46.893726>,  <36.721443, 30.716534, 47.328442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789589, 30.103058, 46.893726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392292, 30.127674, 46.933083>,  <36.153915, 30.142445, 46.956696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392292, 30.127674, 46.933083>,  <36.789589, 30.103058, 46.893726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392292, 30.127674, 46.933083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115793, -0.468997, -0.875576,
		-0.007738, -0.881053, 0.472954,
		-0.993243, 0.061540, 0.098391,
		36.094318, 30.146135, 46.962601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511414, 29.413576, 46.784176>,  <36.789589, 30.103058, 46.893726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511414, 29.413576, 46.784176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.211430, 29.665319, 46.702728>,  <36.031437, 29.816366, 46.653862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.211430, 29.665319, 46.702728>,  <36.511414, 29.413576, 46.784176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211430, 29.665319, 46.702728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080565, -0.392433, -0.916245,
		-0.656554, -0.670747, 0.345015,
		-0.749965, 0.629360, -0.203615,
		35.986439, 29.854128, 46.641644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905346, 29.001566, 46.551311>,  <36.511414, 29.413576, 46.784176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905346, 29.001566, 46.551311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.878857, 29.372911, 46.405022>,  <35.862965, 29.595718, 46.317245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.878857, 29.372911, 46.405022>,  <35.905346, 29.001566, 46.551311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878857, 29.372911, 46.405022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092496, -0.370665, -0.924149,
		-0.993508, -0.027371, 0.110416,
		-0.066222, 0.928363, -0.365727,
		35.858990, 29.651421, 46.295303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328522, 29.033283, 46.105713>,  <35.905346, 29.001566, 46.551311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328522, 29.033283, 46.105713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.539959, 29.355158, 45.997593>,  <35.666821, 29.548283, 45.932720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.539959, 29.355158, 45.997593>,  <35.328522, 29.033283, 46.105713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539959, 29.355158, 45.997593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126470, -0.240219, -0.962445,
		-0.839400, 0.542930, -0.025209,
		0.528596, 0.804688, -0.270304,
		35.698536, 29.596563, 45.916500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879650, 29.556200, 45.747185>,  <35.328522, 29.033283, 46.105713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879650, 29.556200, 45.747185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246902, 29.659168, 45.626678>,  <35.467255, 29.720949, 45.554375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246902, 29.659168, 45.626678>,  <34.879650, 29.556200, 45.747185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246902, 29.659168, 45.626678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300599, -0.042937, -0.952784,
		-0.258202, 0.965345, 0.037959,
		0.918135, 0.257421, -0.301268,
		35.522343, 29.736395, 45.536297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392647, 30.040710, 45.870388>,  <34.879650, 29.556200, 45.747185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392647, 30.040710, 45.870388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.016777, 29.933594, 45.785259>,  <33.791256, 29.869324, 45.734180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.016777, 29.933594, 45.785259>,  <34.392647, 30.040710, 45.870388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016777, 29.933594, 45.785259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290639, 0.296977, 0.909579,
		-0.180375, 0.916566, -0.356893,
		-0.939678, -0.267792, -0.212822,
		33.734875, 29.853256, 45.721413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906910, 30.577122, 46.063362>,  <34.392647, 30.040710, 45.870388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906910, 30.577122, 46.063362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.655968, 30.265631, 46.063229>,  <33.505402, 30.078735, 46.063148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.655968, 30.265631, 46.063229>,  <33.906910, 30.577122, 46.063362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655968, 30.265631, 46.063229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084208, 0.067416, 0.994165,
		-0.774163, 0.623727, -0.107869,
		-0.627360, -0.778730, -0.000331,
		33.467758, 30.032011, 46.063129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349842, 30.775496, 46.440296>,  <33.906910, 30.577122, 46.063362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349842, 30.775496, 46.440296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.340446, 30.375744, 46.450806>,  <33.334808, 30.135893, 46.457111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.340446, 30.375744, 46.450806>,  <33.349842, 30.775496, 46.440296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340446, 30.375744, 46.450806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174261, 0.029972, 0.984243,
		-0.984419, 0.018540, -0.174857,
		-0.023488, -0.999379, 0.026274,
		33.333401, 30.075930, 46.458687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689789, 30.598230, 46.733913>,  <33.349842, 30.775496, 46.440296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689789, 30.598230, 46.733913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.892689, 30.257132, 46.783733>,  <33.014431, 30.052471, 46.813625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.892689, 30.257132, 46.783733>,  <32.689789, 30.598230, 46.733913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892689, 30.257132, 46.783733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303195, -0.041306, 0.952033,
		-0.806701, -0.520685, -0.279502,
		0.507254, -0.852749, 0.124547,
		33.044865, 30.001307, 46.821098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224861, 30.165108, 47.040066>,  <32.689789, 30.598230, 46.733913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224861, 30.165108, 47.040066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594318, 30.032770, 47.117443>,  <32.815994, 29.953367, 47.163868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594318, 30.032770, 47.117443>,  <32.224861, 30.165108, 47.040066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594318, 30.032770, 47.117443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165768, 0.110197, 0.979989,
		-0.345542, -0.937228, 0.046940,
		0.923645, -0.330846, 0.193440,
		32.871410, 29.933516, 47.175476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151375, 29.656971, 47.552174>,  <32.224861, 30.165108, 47.040066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151375, 29.656971, 47.552174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.539257, 29.753458, 47.567551>,  <32.771988, 29.811350, 47.576778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.539257, 29.753458, 47.567551>,  <32.151375, 29.656971, 47.552174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539257, 29.753458, 47.567551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009585, -0.119689, 0.992765,
		0.244075, -0.963062, -0.113751,
		0.969709, 0.241219, 0.038444,
		32.830170, 29.825823, 47.579082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464527, 29.092482, 47.853466>,  <32.151375, 29.656971, 47.552174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464527, 29.092482, 47.853466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.658604, 29.435812, 47.920242>,  <32.775051, 29.641809, 47.960308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.658604, 29.435812, 47.920242>,  <32.464527, 29.092482, 47.853466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658604, 29.435812, 47.920242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116014, -0.126038, 0.985218,
		0.866677, -0.497387, 0.038425,
		0.485191, 0.858324, 0.166938,
		32.804161, 29.693310, 47.970325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915958, 28.880690, 48.433258>,  <32.464527, 29.092482, 47.853466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915958, 28.880690, 48.433258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.973045, 29.276430, 48.421806>,  <33.007298, 29.513874, 48.414936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.973045, 29.276430, 48.421806>,  <32.915958, 28.880690, 48.433258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973045, 29.276430, 48.421806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126401, 0.046905, 0.990870,
		0.981659, -0.137794, 0.131749,
		0.142716, 0.989350, -0.028627,
		33.015862, 29.573235, 48.413219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342686, 29.023773, 48.953331>,  <32.915958, 28.880690, 48.433258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342686, 29.023773, 48.953331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.189861, 29.388834, 48.895233>,  <33.098167, 29.607870, 48.860374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.189861, 29.388834, 48.895233>,  <33.342686, 29.023773, 48.953331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189861, 29.388834, 48.895233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010395, 0.152918, 0.988184,
		0.924080, 0.379053, -0.048936,
		-0.382057, 0.912653, -0.145249,
		33.075245, 29.662630, 48.851658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377354, 29.276058, 49.593258>,  <33.342686, 29.023773, 48.953331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377354, 29.276058, 49.593258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.125561, 29.540918, 49.430626>,  <32.974483, 29.699835, 49.333046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.125561, 29.540918, 49.430626>,  <33.377354, 29.276058, 49.593258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125561, 29.540918, 49.430626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239377, 0.332555, 0.912198,
		0.739222, 0.671540, -0.050835,
		-0.629483, 0.662149, -0.406583,
		32.936714, 29.739563, 49.308651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575886, 29.970327, 49.882229>,  <33.377354, 29.276058, 49.593258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575886, 29.970327, 49.882229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191998, 29.953386, 49.771133>,  <32.961662, 29.943222, 49.704475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191998, 29.953386, 49.771133>,  <33.575886, 29.970327, 49.882229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191998, 29.953386, 49.771133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278017, 0.285623, 0.917129,
		0.040488, 0.957406, -0.285893,
		-0.959723, -0.042351, -0.277739,
		32.904079, 29.940681, 49.687813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270775, 30.653933, 50.111450>,  <33.575886, 29.970327, 49.882229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270775, 30.653933, 50.111450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.960632, 30.406696, 50.059639>,  <32.774548, 30.258354, 50.028553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.960632, 30.406696, 50.059639>,  <33.270775, 30.653933, 50.111450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960632, 30.406696, 50.059639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443098, 0.386309, 0.808968,
		-0.449978, 0.684636, -0.573404,
		-0.775360, -0.618092, -0.129531,
		32.728024, 30.221268, 50.020779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826675, 31.041039, 50.087013>,  <33.270775, 30.653933, 50.111450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826675, 31.041039, 50.087013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.675861, 30.688101, 50.199665>,  <32.585373, 30.476339, 50.267258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.675861, 30.688101, 50.199665>,  <32.826675, 31.041039, 50.087013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675861, 30.688101, 50.199665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320058, 0.409460, 0.854345,
		-0.869143, 0.231976, -0.436780,
		-0.377032, -0.882343, 0.281634,
		32.562752, 30.423397, 50.284157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197445, 31.089737, 50.216984>,  <32.826675, 31.041039, 50.087013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197445, 31.089737, 50.216984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.303795, 30.768345, 50.430050>,  <32.367603, 30.575510, 50.557888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.303795, 30.768345, 50.430050>,  <32.197445, 31.089737, 50.216984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303795, 30.768345, 50.430050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245629, 0.477849, 0.843402,
		-0.932191, -0.355073, -0.070313,
		0.265870, -0.803482, 0.532662,
		32.383556, 30.527300, 50.589848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445253, 30.968534, 50.002121>,  <32.197445, 31.089737, 50.216984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445253, 30.968534, 50.002121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557085, 31.300463, 50.195297>,  <31.624184, 31.499619, 50.311203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557085, 31.300463, 50.195297>,  <31.445253, 30.968534, 50.002121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557085, 31.300463, 50.195297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427999, 0.557976, -0.710971,
		-0.859449, -0.007927, 0.511160,
		0.279579, 0.829820, 0.482944,
		31.640959, 31.549408, 50.340179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806473, 31.445299, 50.079082>,  <31.445253, 30.968534, 50.002121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806473, 31.445299, 50.079082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.154215, 31.637640, 50.124691>,  <31.362860, 31.753044, 50.152054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.154215, 31.637640, 50.124691>,  <30.806473, 31.445299, 50.079082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154215, 31.637640, 50.124691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170918, 0.509044, -0.843600,
		-0.463686, 0.713902, 0.524728,
		0.869357, 0.480851, 0.114018,
		31.415022, 31.781895, 50.158897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590176, 32.103817, 49.853558>,  <30.806473, 31.445299, 50.079082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590176, 32.103817, 49.853558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.989445, 32.104786, 49.829399>,  <31.229006, 32.105366, 49.814903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.989445, 32.104786, 49.829399>,  <30.590176, 32.103817, 49.853558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989445, 32.104786, 49.829399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053148, 0.511142, -0.857851,
		0.028794, 0.859493, 0.510336,
		0.998172, 0.002423, -0.060398,
		31.288897, 32.105515, 49.811279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883236, 32.835606, 49.865974>,  <30.590176, 32.103817, 49.853558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883236, 32.835606, 49.865974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.161186, 32.608677, 49.689205>,  <31.327957, 32.472519, 49.583145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.161186, 32.608677, 49.689205>,  <30.883236, 32.835606, 49.865974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161186, 32.608677, 49.689205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243216, 0.392906, -0.886832,
		0.676752, 0.723720, 0.135038,
		0.694875, -0.567322, -0.441920,
		31.369648, 32.438480, 49.556629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201868, 33.328114, 49.528122>,  <30.883236, 32.835606, 49.865974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201868, 33.328114, 49.528122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.362267, 33.001362, 49.362274>,  <31.458506, 32.805309, 49.262768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.362267, 33.001362, 49.362274>,  <31.201868, 33.328114, 49.528122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362267, 33.001362, 49.362274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190556, 0.368320, -0.909961,
		0.896041, 0.443899, -0.007966,
		0.400997, -0.816881, -0.414617,
		31.482565, 32.756298, 49.237888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902952, 33.450115, 49.049965>,  <31.201868, 33.328114, 49.528122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902952, 33.450115, 49.049965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.727983, 33.105171, 48.947983>,  <31.623001, 32.898205, 48.886795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.727983, 33.105171, 48.947983>,  <31.902952, 33.450115, 49.049965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727983, 33.105171, 48.947983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050616, 0.306675, -0.950468,
		0.897830, -0.402853, -0.177796,
		-0.437424, -0.862357, -0.254951,
		31.596756, 32.846462, 48.871498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267475, 33.323811, 48.559097>,  <31.902952, 33.450115, 49.049965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267475, 33.323811, 48.559097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.949642, 33.092484, 48.485149>,  <31.758942, 32.953686, 48.440781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.949642, 33.092484, 48.485149>,  <32.267475, 33.323811, 48.559097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949642, 33.092484, 48.485149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053878, 0.236126, -0.970228,
		0.604758, -0.780889, -0.156464,
		-0.794585, -0.578323, -0.184872,
		31.711267, 32.918987, 48.429688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003635, 33.151394, 48.358101>,  <32.267475, 33.323811, 48.559097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003635, 33.151394, 48.358101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.151871, 33.521374, 48.391880>,  <33.240810, 33.743362, 48.412148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.151871, 33.521374, 48.391880>,  <33.003635, 33.151394, 48.358101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151871, 33.521374, 48.391880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044833, -0.108630, 0.993071,
		0.927716, -0.364230, -0.081725,
		0.370584, 0.924952, 0.084448,
		33.263046, 33.798859, 48.417213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716293, 33.132523, 48.721767>,  <33.003635, 33.151394, 48.358101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716293, 33.132523, 48.721767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.586475, 33.509613, 48.752617>,  <33.508587, 33.735867, 48.771126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.586475, 33.509613, 48.752617>,  <33.716293, 33.132523, 48.721767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586475, 33.509613, 48.752617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127023, -0.037359, 0.991196,
		0.937303, 0.331481, -0.107623,
		-0.324542, 0.942722, 0.077122,
		33.489113, 33.792431, 48.775753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022381, 33.426590, 49.283749>,  <33.716293, 33.132523, 48.721767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022381, 33.426590, 49.283749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.765125, 33.732819, 49.277184>,  <33.610771, 33.916557, 49.273243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.765125, 33.732819, 49.277184>,  <34.022381, 33.426590, 49.283749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765125, 33.732819, 49.277184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231109, 0.214499, 0.948988,
		0.730040, 0.606540, -0.314883,
		-0.643141, 0.765572, -0.016416,
		33.572182, 33.962490, 49.272259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315105, 33.958866, 49.633831>,  <34.022381, 33.426590, 49.283749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315105, 33.958866, 49.633831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.919777, 34.019642, 49.638386>,  <33.682579, 34.056107, 49.641121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.919777, 34.019642, 49.638386>,  <34.315105, 33.958866, 49.633831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919777, 34.019642, 49.638386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029142, 0.115120, 0.992924,
		0.149550, 0.981663, -0.118204,
		-0.988325, 0.151936, 0.011392,
		33.623280, 34.065224, 49.641804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128803, 34.616341, 49.944843>,  <34.315105, 33.958866, 49.633831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128803, 34.616341, 49.944843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.816753, 34.368217, 49.977413>,  <33.629524, 34.219345, 49.996956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.816753, 34.368217, 49.977413>,  <34.128803, 34.616341, 49.944843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816753, 34.368217, 49.977413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132690, 0.291233, 0.947405,
		-0.611394, 0.728289, -0.309506,
		-0.780123, -0.620306, 0.081421,
		33.582718, 34.182125, 50.001839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783432, 34.867702, 50.448338>,  <34.128803, 34.616341, 49.944843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783432, 34.867702, 50.448338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636192, 34.495811, 50.444237>,  <33.547848, 34.272675, 50.441776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636192, 34.495811, 50.444237>,  <33.783432, 34.867702, 50.448338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636192, 34.495811, 50.444237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021529, -0.019546, 0.999577,
		-0.929539, 0.367718, 0.027211,
		-0.368095, -0.929732, -0.010252,
		33.525764, 34.216892, 50.441162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183056, 34.876904, 50.916008>,  <33.783432, 34.867702, 50.448338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183056, 34.876904, 50.916008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.308674, 34.497864, 50.892582>,  <33.384045, 34.270439, 50.878525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.308674, 34.497864, 50.892582>,  <33.183056, 34.876904, 50.916008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308674, 34.497864, 50.892582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091129, -0.031313, 0.995347,
		-0.945023, -0.317925, 0.076520,
		0.314049, -0.947599, -0.058564,
		33.402889, 34.213585, 50.875011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924030, 34.618732, 51.470352>,  <33.183056, 34.876904, 50.916008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924030, 34.618732, 51.470352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.210445, 34.349148, 51.397617>,  <33.382294, 34.187397, 51.353977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.210445, 34.349148, 51.397617>,  <32.924030, 34.618732, 51.470352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210445, 34.349148, 51.397617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059276, -0.200846, 0.977828,
		-0.695544, -0.710937, -0.103863,
		0.716034, -0.673966, -0.181839,
		33.425255, 34.146957, 51.343067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667164, 34.049355, 51.852917>,  <32.924030, 34.618732, 51.470352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667164, 34.049355, 51.852917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.054119, 33.990662, 51.770336>,  <33.286293, 33.955444, 51.720787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.054119, 33.990662, 51.770336>,  <32.667164, 34.049355, 51.852917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054119, 33.990662, 51.770336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152411, -0.313771, 0.937187,
		-0.202295, -0.938092, -0.281176,
		0.967392, -0.146734, -0.206450,
		33.344337, 33.946640, 51.708401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.160736, 33.841816, 36.049400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466549, 33.848640, 36.307148>,  <37.650036, 33.852737, 36.461796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466549, 33.848640, 36.307148>,  <37.160736, 33.841816, 36.049400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466549, 33.848640, 36.307148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639270, 0.148248, 0.754557,
		-0.082651, -0.988803, 0.124248,
		0.764528, 0.017063, 0.644365,
		37.695908, 33.853760, 36.500458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998016, 33.389709, 36.539944>,  <37.160736, 33.841816, 36.049400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998016, 33.389709, 36.539944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269146, 33.640305, 36.693867>,  <37.431824, 33.790661, 36.786221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269146, 33.640305, 36.693867>,  <36.998016, 33.389709, 36.539944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269146, 33.640305, 36.693867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560259, 0.101202, 0.822112,
		0.476097, -0.772836, 0.419590,
		0.677821, 0.626484, 0.384806,
		37.472492, 33.828251, 36.809307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138256, 33.151703, 37.232853>,  <36.998016, 33.389709, 36.539944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138256, 33.151703, 37.232853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248451, 33.536125, 37.224178>,  <37.314568, 33.766781, 37.218971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248451, 33.536125, 37.224178>,  <37.138256, 33.151703, 37.232853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248451, 33.536125, 37.224178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489001, 0.159527, 0.857572,
		0.827638, -0.225644, 0.513907,
		0.275488, 0.961060, -0.021691,
		37.331097, 33.824444, 37.217670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333836, 33.241779, 37.908627>,  <37.138256, 33.151703, 37.232853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333836, 33.241779, 37.908627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295918, 33.618855, 37.780659>,  <37.273167, 33.845100, 37.703876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295918, 33.618855, 37.780659>,  <37.333836, 33.241779, 37.908627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295918, 33.618855, 37.780659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505487, 0.231276, 0.831261,
		0.857611, 0.240513, 0.454595,
		-0.094793, 0.942690, -0.319921,
		37.267479, 33.901661, 37.684681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527088, 33.803356, 38.458305>,  <37.333836, 33.241779, 37.908627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527088, 33.803356, 38.458305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265594, 33.990543, 38.220432>,  <37.108700, 34.102856, 38.077709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265594, 33.990543, 38.220432>,  <37.527088, 33.803356, 38.458305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265594, 33.990543, 38.220432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570500, 0.211511, 0.793595,
		0.497159, 0.858061, 0.128705,
		-0.653730, 0.467969, -0.594678,
		37.069477, 34.130936, 38.042030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323917, 34.417725, 38.807106>,  <37.527088, 33.803356, 38.458305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323917, 34.417725, 38.807106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026905, 34.376446, 38.542381>,  <36.848698, 34.351681, 38.383549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026905, 34.376446, 38.542381>,  <37.323917, 34.417725, 38.807106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026905, 34.376446, 38.542381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662806, 0.255690, 0.703783,
		0.096592, 0.961235, -0.258257,
		-0.742535, -0.103194, -0.661810,
		36.804146, 34.345486, 38.343838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915703, 35.010170, 38.937485>,  <37.323917, 34.417725, 38.807106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915703, 35.010170, 38.937485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669605, 34.759289, 38.746449>,  <36.521946, 34.608761, 38.631828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669605, 34.759289, 38.746449>,  <36.915703, 35.010170, 38.937485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669605, 34.759289, 38.746449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746719, 0.269411, 0.608135,
		-0.252759, 0.730774, -0.634100,
		-0.615243, -0.627206, -0.477587,
		36.485031, 34.571129, 38.603172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306961, 35.320744, 38.848824>,  <36.915703, 35.010170, 38.937485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306961, 35.320744, 38.848824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194592, 34.936951, 38.840103>,  <36.127171, 34.706676, 38.834873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194592, 34.936951, 38.840103>,  <36.306961, 35.320744, 38.848824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194592, 34.936951, 38.840103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635357, 0.168909, 0.753519,
		-0.719306, 0.225533, -0.657064,
		-0.280928, -0.959481, -0.021797,
		36.110313, 34.649105, 38.833565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635548, 35.324680, 38.750454>,  <36.306961, 35.320744, 38.848824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635548, 35.324680, 38.750454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692905, 34.957153, 38.897541>,  <35.727318, 34.736637, 38.985794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692905, 34.957153, 38.897541>,  <35.635548, 35.324680, 38.750454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692905, 34.957153, 38.897541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694734, 0.171164, 0.698605,
		-0.704829, -0.355638, -0.613789,
		0.143392, -0.918817, 0.367715,
		35.735924, 34.681507, 39.007854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007935, 35.059162, 38.904182>,  <35.635548, 35.324680, 38.750454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007935, 35.059162, 38.904182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247547, 34.840187, 39.137928>,  <35.391315, 34.708801, 39.278175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247547, 34.840187, 39.137928>,  <35.007935, 35.059162, 38.904182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247547, 34.840187, 39.137928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596753, 0.181385, 0.781656,
		-0.533902, -0.816953, -0.218030,
		0.599029, -0.547438, 0.584360,
		35.427258, 34.675957, 39.313236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574852, 34.733387, 39.355415>,  <35.007935, 35.059162, 38.904182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574852, 34.733387, 39.355415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920731, 34.706757, 39.554562>,  <35.128258, 34.690777, 39.674049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920731, 34.706757, 39.554562>,  <34.574852, 34.733387, 39.355415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920731, 34.706757, 39.554562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473080, 0.225185, 0.851755,
		-0.168821, -0.972039, 0.163219,
		0.864693, -0.066579, 0.497868,
		35.180138, 34.686783, 39.703922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378464, 34.479614, 40.012043>,  <34.574852, 34.733387, 39.355415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378464, 34.479614, 40.012043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745647, 34.633820, 40.049408>,  <34.965958, 34.726341, 40.071827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745647, 34.633820, 40.049408>,  <34.378464, 34.479614, 40.012043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745647, 34.633820, 40.049408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280419, 0.464135, 0.840205,
		0.280549, -0.797472, 0.534163,
		0.917963, 0.385508, 0.093414,
		35.021038, 34.749474, 40.077431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152626, 33.738632, 40.111088>,  <34.378464, 34.479614, 40.012043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152626, 33.738632, 40.111088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753597, 33.727215, 40.085678>,  <33.514179, 33.720364, 40.070431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753597, 33.727215, 40.085678>,  <34.152626, 33.738632, 40.111088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753597, 33.727215, 40.085678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069575, -0.367611, -0.927374,
		0.003114, -0.929542, 0.368704,
		-0.997572, -0.028540, -0.063528,
		33.454327, 33.718655, 40.066620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904476, 33.059837, 39.713505>,  <34.152626, 33.738632, 40.111088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904476, 33.059837, 39.713505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619965, 33.339642, 39.685863>,  <33.449257, 33.507523, 39.669277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619965, 33.339642, 39.685863>,  <33.904476, 33.059837, 39.713505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619965, 33.339642, 39.685863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201571, -0.297161, -0.933308,
		-0.673392, -0.649910, 0.352364,
		-0.711275, 0.699509, -0.069103,
		33.406582, 33.549496, 39.665134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385262, 32.677677, 39.311394>,  <33.904476, 33.059837, 39.713505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385262, 32.677677, 39.311394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298691, 33.067768, 39.293064>,  <33.246750, 33.301823, 39.282066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298691, 33.067768, 39.293064>,  <33.385262, 32.677677, 39.311394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298691, 33.067768, 39.293064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517836, -0.154454, -0.841422,
		-0.827652, -0.158375, 0.538433,
		-0.216423, 0.975224, -0.045822,
		33.233765, 33.360336, 39.279316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615761, 32.716511, 39.063587>,  <33.385262, 32.677677, 39.311394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615761, 32.716511, 39.063587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730843, 33.086403, 38.963913>,  <32.799892, 33.308338, 38.904106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730843, 33.086403, 38.963913>,  <32.615761, 32.716511, 39.063587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730843, 33.086403, 38.963913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424994, -0.109894, -0.898501,
		-0.858257, 0.364407, 0.361389,
		0.287706, 0.924733, -0.249188,
		32.817154, 33.363823, 38.889156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063095, 33.093845, 38.778938>,  <32.615761, 32.716511, 39.063587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063095, 33.093845, 38.778938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377369, 33.312542, 38.663166>,  <32.565933, 33.443760, 38.593704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377369, 33.312542, 38.663166>,  <32.063095, 33.093845, 38.778938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377369, 33.312542, 38.663166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316448, -0.046808, -0.947454,
		-0.531560, 0.835992, 0.136239,
		0.785688, 0.546741, -0.289429,
		32.613075, 33.476562, 38.576336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832558, 33.731525, 38.370407>,  <32.063095, 33.093845, 38.778938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832558, 33.731525, 38.370407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209175, 33.638515, 38.272896>,  <32.435146, 33.582710, 38.214390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209175, 33.638515, 38.272896>,  <31.832558, 33.731525, 38.370407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209175, 33.638515, 38.272896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243251, 0.031387, -0.969456,
		0.233077, 0.972083, -0.027011,
		0.941544, -0.232528, -0.243775,
		32.491638, 33.568756, 38.199764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114235, 34.293610, 37.957985>,  <31.832558, 33.731525, 38.370407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114235, 34.293610, 37.957985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292484, 33.947502, 37.866131>,  <32.399433, 33.739838, 37.811016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292484, 33.947502, 37.866131>,  <32.114235, 34.293610, 37.957985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292484, 33.947502, 37.866131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188274, 0.160196, -0.968963,
		0.875200, 0.475025, -0.091521,
		0.445620, -0.865268, -0.229638,
		32.426170, 33.687923, 37.797237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421787, 34.508369, 37.402882>,  <32.114235, 34.293610, 37.957985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421787, 34.508369, 37.402882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453209, 34.109604, 37.402382>,  <32.472061, 33.870346, 37.402081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453209, 34.109604, 37.402382>,  <32.421787, 34.508369, 37.402882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453209, 34.109604, 37.402382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117618, -0.008022, -0.993027,
		0.989947, 0.078150, -0.117885,
		0.078551, -0.996909, -0.001250,
		32.476772, 33.810532, 37.402008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987907, 34.231052, 36.966236>,  <32.421787, 34.508369, 37.402882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987907, 34.231052, 36.966236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731461, 33.925148, 36.991856>,  <32.577591, 33.741604, 37.007225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731461, 33.925148, 36.991856>,  <32.987907, 34.231052, 36.966236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731461, 33.925148, 36.991856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031456, -0.057197, -0.997867,
		0.766798, -0.641765, 0.012614,
		-0.641118, -0.764766, 0.064046,
		32.539124, 33.695717, 37.011070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206009, 33.851852, 36.449612>,  <32.987907, 34.231052, 36.966236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206009, 33.851852, 36.449612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850307, 33.695293, 36.544308>,  <32.636887, 33.601360, 36.601124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850307, 33.695293, 36.544308>,  <33.206009, 33.851852, 36.449612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850307, 33.695293, 36.544308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169520, -0.198710, -0.965286,
		0.424850, -0.898512, 0.110354,
		-0.889250, -0.391395, 0.236738,
		32.583534, 33.577873, 36.615330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148254, 33.242466, 36.150227>,  <33.206009, 33.851852, 36.449612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148254, 33.242466, 36.150227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762085, 33.331898, 36.203850>,  <32.530384, 33.385555, 36.236023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762085, 33.331898, 36.203850>,  <33.148254, 33.242466, 36.150227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762085, 33.331898, 36.203850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198003, -0.294402, -0.934945,
		-0.169564, -0.929162, 0.328492,
		-0.965424, 0.223575, 0.134056,
		32.472458, 33.398972, 36.244068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812737, 32.637081, 35.931843>,  <33.148254, 33.242466, 36.150227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812737, 32.637081, 35.931843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525368, 32.913887, 35.903595>,  <32.352947, 33.079971, 35.886646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525368, 32.913887, 35.903595>,  <32.812737, 32.637081, 35.931843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525368, 32.913887, 35.903595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181955, -0.284935, -0.941119,
		-0.671391, -0.663269, 0.330618,
		-0.718419, 0.692017, -0.070618,
		32.309841, 33.121490, 35.882408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319111, 32.282421, 35.640587>,  <32.812737, 32.637081, 35.931843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319111, 32.282421, 35.640587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235592, 32.665974, 35.563702>,  <32.185478, 32.896107, 35.517570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235592, 32.665974, 35.563702>,  <32.319111, 32.282421, 35.640587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235592, 32.665974, 35.563702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186882, -0.232044, -0.954584,
		-0.959936, -0.163397, 0.227649,
		-0.208800, 0.958883, -0.192212,
		32.172951, 32.953640, 35.506039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636711, 32.259514, 35.375248>,  <32.319111, 32.282421, 35.640587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636711, 32.259514, 35.375248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801765, 32.599758, 35.244904>,  <31.900797, 32.803905, 35.166695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801765, 32.599758, 35.244904>,  <31.636711, 32.259514, 35.375248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801765, 32.599758, 35.244904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216402, -0.255957, -0.942155,
		-0.884818, 0.459284, 0.078458,
		0.412635, 0.850614, -0.325866,
		31.925556, 32.854942, 35.147144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638111, 31.655653, 35.651089>,  <31.636711, 32.259514, 35.375248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638111, 31.655653, 35.651089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947266, 31.764315, 35.880470>,  <32.132759, 31.829512, 36.018101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947266, 31.764315, 35.880470>,  <31.638111, 31.655653, 35.651089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947266, 31.764315, 35.880470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256661, -0.692663, 0.674050,
		0.580320, -0.668148, -0.465626,
		0.772887, 0.271656, 0.573453,
		32.179131, 31.845812, 36.052505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046192, 31.166822, 35.077950>,  <31.638111, 31.655653, 35.651089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046192, 31.166822, 35.077950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282722, 30.850815, 35.013206>,  <32.424641, 30.661211, 34.974361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282722, 30.850815, 35.013206>,  <32.046192, 31.166822, 35.077950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282722, 30.850815, 35.013206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025303, -0.182435, 0.982892,
		-0.806032, -0.585309, -0.087889,
		0.591330, -0.790019, -0.161858,
		32.460121, 30.613810, 34.964649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881369, 30.472664, 35.406086>,  <32.046192, 31.166822, 35.077950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881369, 30.472664, 35.406086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276684, 30.509068, 35.357098>,  <32.513874, 30.530910, 35.327705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276684, 30.509068, 35.357098>,  <31.881369, 30.472664, 35.406086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276684, 30.509068, 35.357098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143557, -0.282587, 0.948439,
		0.051710, -0.954915, -0.292343,
		0.988290, 0.091012, -0.122472,
		32.573170, 30.536371, 35.320354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186104, 29.999353, 35.725380>,  <31.881369, 30.472664, 35.406086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186104, 29.999353, 35.725380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489887, 30.258963, 35.743225>,  <32.672157, 30.414728, 35.753933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489887, 30.258963, 35.743225>,  <32.186104, 29.999353, 35.725380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489887, 30.258963, 35.743225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191701, -0.288799, 0.938001,
		0.621669, -0.703821, -0.343749,
		0.759459, 0.649023, 0.044614,
		32.717724, 30.453669, 35.756611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719360, 29.633059, 35.991184>,  <32.186104, 29.999353, 35.725380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719360, 29.633059, 35.991184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871941, 29.995813, 36.062798>,  <32.963490, 30.213467, 36.105766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871941, 29.995813, 36.062798>,  <32.719360, 29.633059, 35.991184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871941, 29.995813, 36.062798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256383, -0.289872, 0.922086,
		0.888124, -0.305829, -0.343082,
		0.381451, 0.906886, 0.179033,
		32.986374, 30.267879, 36.116508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291294, 29.526300, 36.432312>,  <32.719360, 29.633059, 35.991184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291294, 29.526300, 36.432312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201210, 29.913210, 36.479073>,  <33.147160, 30.145355, 36.507130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201210, 29.913210, 36.479073>,  <33.291294, 29.526300, 36.432312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201210, 29.913210, 36.479073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349690, -0.031743, 0.936328,
		0.909395, 0.251746, -0.331096,
		-0.225207, 0.967273, 0.116900,
		33.133648, 30.203392, 36.514141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734047, 29.782040, 36.910767>,  <33.291294, 29.526300, 36.432312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734047, 29.782040, 36.910767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477184, 30.088667, 36.909260>,  <33.323067, 30.272644, 36.908356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477184, 30.088667, 36.909260>,  <33.734047, 29.782040, 36.910767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477184, 30.088667, 36.909260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252209, 0.215913, 0.943277,
		0.723900, 0.604777, -0.331984,
		-0.642152, 0.766568, -0.003769,
		33.284538, 30.318638, 36.908131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022079, 30.263474, 37.359634>,  <33.734047, 29.782040, 36.910767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022079, 30.263474, 37.359634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642147, 30.384851, 37.329323>,  <33.414188, 30.457678, 37.311134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642147, 30.384851, 37.329323>,  <34.022079, 30.263474, 37.359634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642147, 30.384851, 37.329323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017085, 0.191584, 0.981328,
		0.312297, 0.933390, -0.176788,
		-0.949831, 0.303445, -0.075778,
		33.357197, 30.475885, 37.306591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983898, 30.890255, 37.835331>,  <34.022079, 30.263474, 37.359634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983898, 30.890255, 37.835331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615780, 30.738621, 37.796646>,  <33.394909, 30.647640, 37.773434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615780, 30.738621, 37.796646>,  <33.983898, 30.890255, 37.835331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615780, 30.738621, 37.796646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128851, 0.060271, 0.989831,
		-0.369403, 0.923396, -0.104312,
		-0.920293, -0.379087, -0.096716,
		33.339691, 30.624895, 37.767632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610947, 31.267075, 38.277073>,  <33.983898, 30.890255, 37.835331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610947, 31.267075, 38.277073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419197, 30.921734, 38.214043>,  <33.304150, 30.714529, 38.176224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419197, 30.921734, 38.214043>,  <33.610947, 31.267075, 38.277073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419197, 30.921734, 38.214043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027052, -0.164927, 0.985935,
		-0.877195, 0.476891, 0.055706,
		-0.479371, -0.863351, -0.157574,
		33.275387, 30.662729, 38.166771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980766, 31.297726, 38.547989>,  <33.610947, 31.267075, 38.277073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980766, 31.297726, 38.547989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059540, 30.905588, 38.552784>,  <33.106804, 30.670305, 38.555660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059540, 30.905588, 38.552784>,  <32.980766, 31.297726, 38.547989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059540, 30.905588, 38.552784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110587, -0.010062, 0.993816,
		-0.974161, -0.197039, -0.110395,
		0.196931, -0.980344, 0.011988,
		33.118618, 30.611485, 38.556381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575752, 31.089010, 39.072598>,  <32.980766, 31.297726, 38.547989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575752, 31.089010, 39.072598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823853, 30.777283, 39.036922>,  <32.972713, 30.590246, 39.015518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823853, 30.777283, 39.036922>,  <32.575752, 31.089010, 39.072598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823853, 30.777283, 39.036922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056364, -0.069123, 0.996015,
		-0.782377, -0.622804, 0.001052,
		0.620249, -0.779318, -0.089184,
		33.009926, 30.543488, 39.010166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287884, 30.633257, 39.406151>,  <32.575752, 31.089010, 39.072598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287884, 30.633257, 39.406151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672604, 30.527241, 39.433556>,  <32.903435, 30.463631, 39.449997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672604, 30.527241, 39.433556>,  <32.287884, 30.633257, 39.406151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672604, 30.527241, 39.433556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139570, -0.259472, 0.955612,
		-0.235500, -0.928670, -0.286552,
		0.961801, -0.265040, 0.068509,
		32.961143, 30.447727, 39.454109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338001, 30.342896, 39.966103>,  <32.287884, 30.633257, 39.406151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338001, 30.342896, 39.966103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732433, 30.313892, 39.906254>,  <32.969093, 30.296492, 39.870342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732433, 30.313892, 39.906254>,  <32.338001, 30.342896, 39.966103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732433, 30.313892, 39.906254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123691, -0.281474, 0.951563,
		-0.111109, -0.956825, -0.268588,
		0.986081, -0.072505, -0.149625,
		33.028259, 30.292141, 39.861366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530266, 29.607830, 40.039982>,  <32.338001, 30.342896, 39.966103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530266, 29.607830, 40.039982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845200, 29.839918, 40.123352>,  <33.034161, 29.979172, 40.173374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845200, 29.839918, 40.123352>,  <32.530266, 29.607830, 40.039982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845200, 29.839918, 40.123352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176859, -0.536422, 0.825211,
		0.590608, -0.612859, -0.524963,
		0.787339, 0.580221, 0.208425,
		33.081402, 30.013985, 40.185879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016567, 29.183455, 40.342346>,  <32.530266, 29.607830, 40.039982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016567, 29.183455, 40.342346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125751, 29.552521, 40.451290>,  <33.191261, 29.773960, 40.516655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125751, 29.552521, 40.451290>,  <33.016567, 29.183455, 40.342346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125751, 29.552521, 40.451290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261564, -0.343624, 0.901947,
		0.925785, -0.174956, -0.335131,
		0.272960, 0.922666, 0.272359,
		33.207638, 29.829321, 40.532997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749432, 29.175652, 40.626270>,  <33.016567, 29.183455, 40.342346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749432, 29.175652, 40.626270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583950, 29.507978, 40.775181>,  <33.484661, 29.707375, 40.864529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583950, 29.507978, 40.775181>,  <33.749432, 29.175652, 40.626270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583950, 29.507978, 40.775181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217171, -0.307050, 0.926583,
		0.884130, 0.464180, -0.053402,
		-0.413704, 0.830817, 0.372279,
		33.459839, 29.757223, 40.886864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105743, 29.273613, 41.143040>,  <33.749432, 29.175652, 40.626270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105743, 29.273613, 41.143040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783661, 29.497269, 41.222042>,  <33.590412, 29.631462, 41.269444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783661, 29.497269, 41.222042>,  <34.105743, 29.273613, 41.143040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783661, 29.497269, 41.222042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088003, -0.216704, 0.972263,
		0.586430, 0.800252, 0.125286,
		-0.805205, 0.559139, 0.197506,
		33.542099, 29.665010, 41.281296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360924, 29.871618, 41.688324>,  <34.105743, 29.273613, 41.143040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360924, 29.871618, 41.688324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966118, 29.810184, 41.707153>,  <33.729233, 29.773325, 41.718452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966118, 29.810184, 41.707153>,  <34.360924, 29.871618, 41.688324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966118, 29.810184, 41.707153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037710, 0.063324, 0.997280,
		-0.156148, 0.986104, -0.056710,
		-0.987014, -0.153584, 0.047074,
		33.670013, 29.764109, 41.721275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100582, 30.272566, 42.162369>,  <34.360924, 29.871618, 41.688324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100582, 30.272566, 42.162369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794266, 30.017418, 42.129665>,  <33.610474, 29.864330, 42.110043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794266, 30.017418, 42.129665>,  <34.100582, 30.272566, 42.162369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794266, 30.017418, 42.129665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228291, 0.150785, 0.961846,
		-0.601202, 0.755240, -0.261090,
		-0.765793, -0.637868, -0.081762,
		33.564529, 29.826057, 42.105137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523457, 30.595213, 42.579948>,  <34.100582, 30.272566, 42.162369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523457, 30.595213, 42.579948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492443, 30.197304, 42.553364>,  <33.473835, 29.958559, 42.537415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492443, 30.197304, 42.553364>,  <33.523457, 30.595213, 42.579948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492443, 30.197304, 42.553364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214822, -0.048428, 0.975452,
		-0.973571, 0.089904, -0.209944,
		-0.077530, -0.994772, -0.066461,
		33.469185, 29.898872, 42.533424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010147, 30.531391, 42.921078>,  <33.523457, 30.595213, 42.579948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010147, 30.531391, 42.921078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153809, 30.158884, 42.896576>,  <33.240005, 29.935381, 42.881874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153809, 30.158884, 42.896576>,  <33.010147, 30.531391, 42.921078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153809, 30.158884, 42.896576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183488, -0.134814, 0.973734,
		-0.915064, -0.338479, -0.219295,
		0.359153, -0.931266, -0.061256,
		33.261555, 29.879503, 42.878201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552868, 30.056116, 43.346535>,  <33.010147, 30.531391, 42.921078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552868, 30.056116, 43.346535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890045, 29.847317, 43.294441>,  <33.092354, 29.722036, 43.263187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890045, 29.847317, 43.294441>,  <32.552868, 30.056116, 43.346535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890045, 29.847317, 43.294441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005581, -0.250537, 0.968091,
		-0.537970, -0.815321, -0.214103,
		0.842945, -0.521999, -0.130231,
		33.142929, 29.690718, 43.255371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487446, 29.413324, 43.702236>,  <32.552868, 30.056116, 43.346535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487446, 29.413324, 43.702236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880104, 29.464754, 43.645882>,  <33.115700, 29.495611, 43.612068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880104, 29.464754, 43.645882>,  <32.487446, 29.413324, 43.702236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880104, 29.464754, 43.645882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153846, -0.097108, 0.983311,
		0.112747, -0.986934, -0.115105,
		0.981641, 0.128574, -0.140888,
		33.174595, 29.503326, 43.603615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806080, 28.881227, 44.003387>,  <32.487446, 29.413324, 43.702236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806080, 28.881227, 44.003387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070320, 29.181437, 43.996212>,  <33.228863, 29.361563, 43.991905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070320, 29.181437, 43.996212>,  <32.806080, 28.881227, 44.003387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070320, 29.181437, 43.996212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107618, -0.071020, 0.991652,
		0.742983, -0.657018, -0.127685,
		0.660602, 0.750522, -0.017940,
		33.268501, 29.406593, 43.990829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236885, 28.674673, 44.404888>,  <32.806080, 28.881227, 44.003387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236885, 28.674673, 44.404888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321327, 29.065573, 44.413086>,  <33.371990, 29.300112, 44.418003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321327, 29.065573, 44.413086>,  <33.236885, 28.674673, 44.404888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321327, 29.065573, 44.413086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206045, -0.064982, 0.976382,
		0.955501, -0.201893, -0.215076,
		0.211101, 0.977249, 0.020492,
		33.384659, 29.358747, 44.419235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880165, 28.631405, 44.790268>,  <33.236885, 28.674673, 44.404888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880165, 28.631405, 44.790268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713909, 28.994917, 44.805016>,  <33.614155, 29.213024, 44.813866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713909, 28.994917, 44.805016>,  <33.880165, 28.631405, 44.790268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713909, 28.994917, 44.805016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163503, 0.034779, 0.985930,
		0.894712, 0.415820, -0.163044,
		-0.415640, 0.908781, 0.036871,
		33.589218, 29.267551, 44.816078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408394, 29.085463, 44.977467>,  <33.880165, 28.631405, 44.790268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408394, 29.085463, 44.977467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062187, 29.267252, 45.061691>,  <33.854465, 29.376326, 45.112228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062187, 29.267252, 45.061691>,  <34.408394, 29.085463, 44.977467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062187, 29.267252, 45.061691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320507, 0.179454, 0.930092,
		0.384916, 0.872496, -0.300982,
		-0.865514, 0.454475, 0.210566,
		33.802532, 29.403595, 45.124863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753689, 29.750498, 45.014214>,  <34.408394, 29.085463, 44.977467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753689, 29.750498, 45.014214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153080, 29.767889, 45.027821>,  <35.392715, 29.778324, 45.035984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153080, 29.767889, 45.027821>,  <34.753689, 29.750498, 45.014214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153080, 29.767889, 45.027821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029606, 0.098285, -0.994718,
		-0.046593, 0.994208, 0.096848,
		0.998475, 0.043479, 0.034014,
		35.452621, 29.780933, 45.038025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824600, 30.185184, 44.512409>,  <34.753689, 29.750498, 45.014214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824600, 30.185184, 44.512409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187191, 30.020952, 44.551842>,  <35.404747, 29.922413, 44.575500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187191, 30.020952, 44.551842>,  <34.824600, 30.185184, 44.512409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187191, 30.020952, 44.551842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111274, 0.007055, -0.993765,
		0.407323, 0.911798, 0.052082,
		0.906480, -0.410579, 0.098585,
		35.459137, 29.897779, 44.581417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328583, 30.580280, 44.016552>,  <34.824600, 30.185184, 44.512409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328583, 30.580280, 44.016552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510727, 30.237843, 44.114330>,  <35.620014, 30.032381, 44.172997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510727, 30.237843, 44.114330>,  <35.328583, 30.580280, 44.016552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510727, 30.237843, 44.114330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316718, -0.100837, -0.943145,
		0.832069, 0.506889, 0.225223,
		0.455359, -0.856093, 0.244444,
		35.647335, 29.981014, 44.187664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088558, 30.622751, 43.797615>,  <35.328583, 30.580280, 44.016552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088558, 30.622751, 43.797615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959393, 30.245173, 43.825020>,  <35.881893, 30.018625, 43.841465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959393, 30.245173, 43.825020>,  <36.088558, 30.622751, 43.797615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959393, 30.245173, 43.825020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277839, -0.163751, -0.946568,
		0.904729, -0.286620, 0.315142,
		-0.322911, -0.943946, 0.068516,
		35.862518, 29.961988, 43.845573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676315, 30.193731, 43.661957>,  <36.088558, 30.622751, 43.797615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676315, 30.193731, 43.661957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338490, 29.992947, 43.587406>,  <36.135792, 29.872475, 43.542675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338490, 29.992947, 43.587406>,  <36.676315, 30.193731, 43.661957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338490, 29.992947, 43.587406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276832, -0.111401, -0.954439,
		0.458332, -0.857684, 0.233046,
		-0.844569, -0.501964, -0.186376,
		36.085117, 29.842358, 43.531494>
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
