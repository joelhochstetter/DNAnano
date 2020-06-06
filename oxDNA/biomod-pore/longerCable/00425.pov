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
	<23.967440, 34.863159, 34.952572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351736, 34.968483, 34.917583>,  <24.582314, 35.031677, 34.896591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351736, 34.968483, 34.917583>,  <23.967440, 34.863159, 34.952572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.351736, 34.968483, 34.917583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252279, -0.960237, -0.119585,
		-0.115481, 0.092823, -0.988963,
		0.960739, 0.263305, -0.087472,
		24.639957, 35.047474, 34.891342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.251364, 34.593857, 34.401569>,  <23.967440, 34.863159, 34.952572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.251364, 34.593857, 34.401569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566427, 34.672775, 34.635036>,  <24.755465, 34.720127, 34.775116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566427, 34.672775, 34.635036>,  <24.251364, 34.593857, 34.401569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.566427, 34.672775, 34.635036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328493, -0.935938, -0.126932,
		0.521238, 0.291710, -0.802008,
		0.787657, 0.197292, 0.583671,
		24.802725, 34.731964, 34.810139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920439, 34.402214, 34.035954>,  <24.251364, 34.593857, 34.401569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920439, 34.402214, 34.035954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990459, 34.403965, 34.429775>,  <25.032473, 34.405014, 34.666069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990459, 34.403965, 34.429775>,  <24.920439, 34.402214, 34.035954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990459, 34.403965, 34.429775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336051, -0.940203, -0.055573,
		0.925433, 0.340587, -0.166053,
		0.175051, 0.004373, 0.984550,
		25.042974, 34.405277, 34.725140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510765, 34.014832, 34.094452>,  <24.920439, 34.402214, 34.035954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510765, 34.014832, 34.094452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352739, 34.007401, 34.461838>,  <25.257923, 34.002941, 34.682270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352739, 34.007401, 34.461838>,  <25.510765, 34.014832, 34.094452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352739, 34.007401, 34.461838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143391, -0.988788, 0.041677,
		0.907393, 0.148164, 0.393301,
		-0.395066, -0.018579, 0.918465,
		25.234219, 34.001827, 34.737377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125618, 33.796162, 34.625233>,  <25.510765, 34.014832, 34.094452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125618, 33.796162, 34.625233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748911, 33.718975, 34.735386>,  <25.522886, 33.672661, 34.801476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748911, 33.718975, 34.735386>,  <26.125618, 33.796162, 34.625233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.748911, 33.718975, 34.735386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215012, -0.975229, 0.051942,
		0.258536, 0.108127, 0.959931,
		-0.941769, -0.192968, 0.275381,
		25.466381, 33.661083, 34.818001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163912, 33.381638, 35.251831>,  <26.125618, 33.796162, 34.625233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163912, 33.381638, 35.251831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840796, 33.278667, 35.039715>,  <25.646927, 33.216885, 34.912445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840796, 33.278667, 35.039715>,  <26.163912, 33.381638, 35.251831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840796, 33.278667, 35.039715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221328, -0.966237, 0.131907,
		-0.546342, -0.010815, 0.837492,
		-0.807789, -0.257427, -0.530290,
		25.598459, 33.201439, 34.880627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908468, 32.949081, 35.673504>,  <26.163912, 33.381638, 35.251831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908468, 32.949081, 35.673504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745037, 32.868629, 35.317387>,  <25.646978, 32.820358, 35.103718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745037, 32.868629, 35.317387>,  <25.908468, 32.949081, 35.673504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745037, 32.868629, 35.317387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085455, -0.979564, 0.182076,
		-0.908715, -0.001688, 0.417413,
		-0.408576, -0.201125, -0.890289,
		25.622465, 32.808292, 35.050301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.477398, 32.386131, 35.823753>,  <25.908468, 32.949081, 35.673504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.477398, 32.386131, 35.823753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.528728, 32.372353, 35.427299>,  <25.559526, 32.364086, 35.189426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.528728, 32.372353, 35.427299>,  <25.477398, 32.386131, 35.823753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.528728, 32.372353, 35.427299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222173, -0.974994, 0.005123,
		-0.966526, 0.219546, -0.132771,
		0.128326, -0.034450, -0.991133,
		25.567226, 32.362019, 35.129959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.895153, 32.122208, 35.521336>,  <25.477398, 32.386131, 35.823753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.895153, 32.122208, 35.521336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204422, 32.045044, 35.279678>,  <25.389984, 31.998745, 35.134686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204422, 32.045044, 35.279678>,  <24.895153, 32.122208, 35.521336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204422, 32.045044, 35.279678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277897, -0.959344, -0.049320,
		-0.570065, 0.206022, -0.795350,
		0.773175, -0.192910, -0.604141,
		25.436375, 31.987171, 35.098434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.570494, 31.779219, 34.942280>,  <24.895153, 32.122208, 35.521336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.570494, 31.779219, 34.942280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961971, 31.697304, 34.948177>,  <25.196857, 31.648155, 34.951714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961971, 31.697304, 34.948177>,  <24.570494, 31.779219, 34.942280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961971, 31.697304, 34.948177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202818, -0.975459, -0.085698,
		0.031928, 0.080883, -0.996212,
		0.978696, -0.204786, 0.014740,
		25.255581, 31.635868, 34.952599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.585699, 31.211882, 34.581047>,  <24.570494, 31.779219, 34.942280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.585699, 31.211882, 34.581047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924402, 31.223679, 34.793510>,  <25.127625, 31.230757, 34.920990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924402, 31.223679, 34.793510>,  <24.585699, 31.211882, 34.581047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924402, 31.223679, 34.793510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122425, -0.960860, 0.248515,
		0.517699, -0.275459, -0.810006,
		0.846758, 0.029491, 0.531160,
		25.178431, 31.232527, 34.952858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926472, 30.571072, 34.424202>,  <24.585699, 31.211882, 34.581047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.926472, 30.571072, 34.424202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075077, 30.695438, 34.774128>,  <25.164240, 30.770058, 34.984085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075077, 30.695438, 34.774128>,  <24.926472, 30.571072, 34.424202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075077, 30.695438, 34.774128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162966, -0.905792, 0.391131,
		0.914012, -0.287877, -0.285847,
		0.371515, 0.310915, 0.874819,
		25.186531, 30.788713, 35.036575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696115, 29.925377, 34.811516>,  <24.926472, 30.571072, 34.424202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696115, 29.925377, 34.811516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874426, 29.843082, 35.159988>,  <24.981413, 29.793705, 35.369072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874426, 29.843082, 35.159988>,  <24.696115, 29.925377, 34.811516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874426, 29.843082, 35.159988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471233, 0.881392, -0.032979,
		-0.761066, 0.425230, 0.489855,
		0.445778, -0.205736, 0.871180,
		25.008160, 29.781361, 35.421341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.656614, 30.466175, 35.365253>,  <24.696115, 29.925377, 34.811516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.656614, 30.466175, 35.365253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016289, 30.294161, 35.397579>,  <25.232094, 30.190952, 35.416973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016289, 30.294161, 35.397579>,  <24.656614, 30.466175, 35.365253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016289, 30.294161, 35.397579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436875, 0.871982, -0.220882,
		0.024521, 0.233919, 0.971947,
		0.899188, -0.430035, 0.080812,
		25.286045, 30.165150, 35.421822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201626, 30.730301, 35.940956>,  <24.656614, 30.466175, 35.365253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201626, 30.730301, 35.940956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367239, 30.592825, 35.603802>,  <25.466606, 30.510340, 35.401508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367239, 30.592825, 35.603802>,  <25.201626, 30.730301, 35.940956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367239, 30.592825, 35.603802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431334, 0.889496, -0.150822,
		0.801579, -0.301120, 0.516524,
		0.414031, -0.343690, -0.842885,
		25.491447, 30.489717, 35.350937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834463, 31.000282, 35.950882>,  <25.201626, 30.730301, 35.940956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834463, 31.000282, 35.950882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722649, 30.937798, 35.571945>,  <25.655560, 30.900307, 35.344582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722649, 30.937798, 35.571945>,  <25.834463, 31.000282, 35.950882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722649, 30.937798, 35.571945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418063, 0.868430, -0.266559,
		0.864339, -0.470562, -0.177453,
		-0.279538, -0.156211, -0.947342,
		25.638788, 30.890934, 35.287743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367094, 31.206003, 35.516617>,  <25.834463, 31.000282, 35.950882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367094, 31.206003, 35.516617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016134, 31.218819, 35.325142>,  <25.805559, 31.226509, 35.210255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016134, 31.218819, 35.325142>,  <26.367094, 31.206003, 35.516617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016134, 31.218819, 35.325142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191194, 0.938465, -0.287625,
		0.440019, -0.343885, -0.829534,
		-0.877398, 0.032041, -0.478691,
		25.752914, 31.228432, 35.181534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502726, 31.354057, 34.824612>,  <26.367094, 31.206003, 35.516617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502726, 31.354057, 34.824612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115898, 31.443758, 34.872768>,  <25.883802, 31.497578, 34.901661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115898, 31.443758, 34.872768>,  <26.502726, 31.354057, 34.824612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115898, 31.443758, 34.872768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141040, 0.865888, -0.479944,
		-0.211871, -0.447158, -0.869000,
		-0.967067, 0.224250, 0.120389,
		25.825779, 31.511032, 34.908886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345358, 31.823885, 34.175251>,  <26.502726, 31.354057, 34.824612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345358, 31.823885, 34.175251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073820, 31.864573, 34.466133>,  <25.910898, 31.888985, 34.640663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073820, 31.864573, 34.466133>,  <26.345358, 31.823885, 34.175251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073820, 31.864573, 34.466133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055282, 0.994628, -0.087521,
		-0.732198, -0.019212, -0.680821,
		-0.678844, 0.101720, 0.727203,
		25.870167, 31.895088, 34.684296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144707, 32.435036, 33.989777>,  <26.345358, 31.823885, 34.175251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144707, 32.435036, 33.989777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998213, 32.395931, 34.359924>,  <25.910316, 32.372471, 34.582012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998213, 32.395931, 34.359924>,  <26.144707, 32.435036, 33.989777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998213, 32.395931, 34.359924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054792, 0.990475, 0.126320,
		-0.928908, 0.096966, -0.357391,
		-0.366235, -0.097758, 0.925373,
		25.888342, 32.366604, 34.637535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679152, 32.904480, 34.058811>,  <26.144707, 32.435036, 33.989777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679152, 32.904480, 34.058811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811411, 32.832577, 34.429401>,  <25.890766, 32.789433, 34.651756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811411, 32.832577, 34.429401>,  <25.679152, 32.904480, 34.058811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811411, 32.832577, 34.429401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027857, 0.979405, 0.199973,
		-0.943342, -0.091930, 0.318833,
		0.330650, -0.179762, 0.926475,
		25.910606, 32.778648, 34.707344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104511, 32.497421, 33.830887>,  <25.679152, 32.904480, 34.058811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104511, 32.497421, 33.830887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229200, 32.597958, 34.197418>,  <25.304014, 32.658279, 34.417336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229200, 32.597958, 34.197418>,  <25.104511, 32.497421, 33.830887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.229200, 32.597958, 34.197418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313805, 0.937500, -0.150399,
		-0.896859, -0.240666, 0.371112,
		0.311721, 0.251344, 0.916327,
		25.322716, 32.673359, 34.472317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.547949, 33.018894, 34.179371>,  <25.104511, 32.497421, 33.830887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.547949, 33.018894, 34.179371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894194, 33.062115, 34.374939>,  <25.101940, 33.088047, 34.492279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894194, 33.062115, 34.374939>,  <24.547949, 33.018894, 34.179371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894194, 33.062115, 34.374939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054671, 0.990995, -0.122227,
		-0.497724, 0.079071, 0.863724,
		0.865611, 0.108056, 0.488920,
		25.153877, 33.094532, 34.521614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.527594, 33.630688, 34.475742>,  <24.547949, 33.018894, 34.179371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.527594, 33.630688, 34.475742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907902, 33.548084, 34.383316>,  <25.136087, 33.498524, 34.327862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907902, 33.548084, 34.383316>,  <24.527594, 33.630688, 34.475742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907902, 33.548084, 34.383316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044449, 0.828781, -0.557804,
		0.306690, 0.520074, 0.797160,
		0.950771, -0.206506, -0.231062,
		25.193132, 33.486134, 34.313999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781881, 33.088799, 34.879234>,  <24.527594, 33.630688, 34.475742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781881, 33.088799, 34.879234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117918, 33.154099, 35.086155>,  <25.319540, 33.193279, 35.210308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117918, 33.154099, 35.086155>,  <24.781881, 33.088799, 34.879234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117918, 33.154099, 35.086155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178062, 0.983789, -0.021289,
		-0.512387, -0.074226, 0.855540,
		0.840091, 0.163248, 0.517298,
		25.369946, 33.203072, 35.241344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.431278, 33.509708, 35.427818>,  <24.781881, 33.088799, 34.879234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.431278, 33.509708, 35.427818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811781, 33.555099, 35.313110>,  <25.040083, 33.582336, 35.244286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811781, 33.555099, 35.313110>,  <24.431278, 33.509708, 35.427818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.811781, 33.555099, 35.313110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140891, 0.987045, -0.076762,
		0.274341, 0.113423, 0.954920,
		0.951255, 0.113481, -0.286768,
		25.097158, 33.589146, 35.227081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.787115, 33.945778, 36.004189>,  <24.431278, 33.509708, 35.427818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.787115, 33.945778, 36.004189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937632, 33.993896, 35.636726>,  <25.027943, 34.022766, 35.416248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937632, 33.993896, 35.636726>,  <24.787115, 33.945778, 36.004189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937632, 33.993896, 35.636726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129118, 0.988668, 0.076576,
		0.917460, 0.089800, 0.387561,
		0.376292, 0.120297, -0.918658,
		25.050520, 34.029987, 35.361130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.344360, 34.388260, 35.991138>,  <24.787115, 33.945778, 36.004189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.344360, 34.388260, 35.991138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250061, 34.399975, 35.602589>,  <25.193481, 34.407001, 35.369457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250061, 34.399975, 35.602589>,  <25.344360, 34.388260, 35.991138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250061, 34.399975, 35.602589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046035, 0.998087, 0.041263,
		0.970723, 0.054445, -0.233948,
		-0.235747, 0.029286, -0.971373,
		25.179337, 34.408760, 35.311176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747919, 34.945404, 35.680035>,  <25.344360, 34.388260, 35.991138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747919, 34.945404, 35.680035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431280, 34.884998, 35.443199>,  <25.241297, 34.848755, 35.301098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431280, 34.884998, 35.443199>,  <25.747919, 34.945404, 35.680035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431280, 34.884998, 35.443199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051917, 0.982098, -0.181077,
		0.608837, -0.112600, -0.785264,
		-0.791595, -0.151014, -0.592091,
		25.193802, 34.839695, 35.265572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636217, 35.576847, 35.182064>,  <25.747919, 34.945404, 35.680035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636217, 35.576847, 35.182064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285852, 35.385834, 35.209606>,  <25.075634, 35.271225, 35.226131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285852, 35.385834, 35.209606>,  <25.636217, 35.576847, 35.182064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.285852, 35.385834, 35.209606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466360, 0.801417, -0.374485,
		0.123644, -0.360129, -0.924672,
		-0.875911, -0.477533, 0.068860,
		25.023079, 35.242573, 35.230263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132460, 36.102627, 34.686867>,  <25.636217, 35.576847, 35.182064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132460, 36.102627, 34.686867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472725, 36.301620, 34.618896>,  <26.676884, 36.421017, 34.578114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472725, 36.301620, 34.618896>,  <26.132460, 36.102627, 34.686867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472725, 36.301620, 34.618896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254020, -0.671968, -0.695653,
		-0.460266, 0.548602, -0.697991,
		0.850664, 0.497488, -0.169928,
		26.727924, 36.450867, 34.567917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266037, 36.374393, 33.940907>,  <26.132460, 36.102627, 34.686867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266037, 36.374393, 33.940907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593410, 36.254395, 34.136932>,  <26.789835, 36.182396, 34.254547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593410, 36.254395, 34.136932>,  <26.266037, 36.374393, 33.940907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593410, 36.254395, 34.136932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195924, -0.656073, -0.728822,
		0.540166, 0.692509, -0.478176,
		0.818434, -0.300000, 0.490068,
		26.838942, 36.164394, 34.283951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826708, 36.333134, 33.458363>,  <26.266037, 36.374393, 33.940907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826708, 36.333134, 33.458363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949789, 36.086208, 33.747982>,  <27.023638, 35.938053, 33.921753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949789, 36.086208, 33.747982>,  <26.826708, 36.333134, 33.458363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949789, 36.086208, 33.747982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299003, -0.659682, -0.689505,
		0.903281, 0.428655, -0.018407,
		0.307703, -0.617312, 0.724047,
		27.042099, 35.901016, 33.965195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533880, 35.991608, 33.205276>,  <26.826708, 36.333134, 33.458363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533880, 35.991608, 33.205276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438250, 35.750439, 33.509731>,  <27.380871, 35.605736, 33.692402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438250, 35.750439, 33.509731>,  <27.533880, 35.991608, 33.205276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438250, 35.750439, 33.509731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382076, -0.779044, -0.497100,
		0.892671, 0.171966, 0.416613,
		-0.239076, -0.602924, 0.761134,
		27.366528, 35.569561, 33.738071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247730, 35.515224, 33.281975>,  <27.533880, 35.991608, 33.205276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247730, 35.515224, 33.281975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930058, 35.353092, 33.463074>,  <27.739454, 35.255814, 33.571732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930058, 35.353092, 33.463074>,  <28.247730, 35.515224, 33.281975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930058, 35.353092, 33.463074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307391, -0.910653, -0.276082,
		0.524203, -0.080088, 0.847819,
		-0.794180, -0.405335, 0.452749,
		27.691803, 35.231491, 33.598900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362356, 35.755486, 34.000179>,  <28.247730, 35.515224, 33.281975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362356, 35.755486, 34.000179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086365, 35.509613, 34.153069>,  <27.920769, 35.362091, 34.244801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086365, 35.509613, 34.153069>,  <28.362356, 35.755486, 34.000179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086365, 35.509613, 34.153069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099593, -0.603658, -0.790998,
		0.716944, -0.507706, 0.477730,
		-0.689980, -0.614680, 0.382225,
		27.879370, 35.325211, 34.267735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528214, 35.059517, 33.767353>,  <28.362356, 35.755486, 34.000179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528214, 35.059517, 33.767353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148487, 34.991882, 33.873341>,  <27.920650, 34.951302, 33.936932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148487, 34.991882, 33.873341>,  <28.528214, 35.059517, 33.767353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148487, 34.991882, 33.873341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033222, -0.784283, -0.619513,
		0.312562, -0.596917, 0.738915,
		-0.949316, -0.169089, 0.264968,
		27.863691, 34.941154, 33.952831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514252, 34.232346, 33.931992>,  <28.528214, 35.059517, 33.767353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514252, 34.232346, 33.931992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170504, 34.398956, 33.813343>,  <27.964254, 34.498924, 33.742153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170504, 34.398956, 33.813343>,  <28.514252, 34.232346, 33.931992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170504, 34.398956, 33.813343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008745, -0.568016, -0.822971,
		-0.511275, -0.709833, 0.484495,
		-0.859373, 0.416527, -0.296620,
		27.912693, 34.523914, 33.724358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974562, 33.675983, 33.939507>,  <28.514252, 34.232346, 33.931992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974562, 33.675983, 33.939507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896667, 33.967918, 33.677387>,  <27.849932, 34.143078, 33.520115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896667, 33.967918, 33.677387>,  <27.974562, 33.675983, 33.939507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896667, 33.967918, 33.677387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080330, -0.653981, -0.752234,
		-0.977561, -0.199126, 0.068725,
		-0.194734, 0.729834, -0.655302,
		27.838247, 34.186867, 33.480797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518925, 33.392044, 33.409412>,  <27.974562, 33.675983, 33.939507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518925, 33.392044, 33.409412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749868, 33.678169, 33.251938>,  <27.888435, 33.849842, 33.157452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749868, 33.678169, 33.251938>,  <27.518925, 33.392044, 33.409412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749868, 33.678169, 33.251938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215088, -0.598384, -0.771799,
		-0.787650, 0.360929, -0.499337,
		0.577360, 0.715309, -0.393686,
		27.923077, 33.892761, 33.133831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276754, 33.545013, 32.709423>,  <27.518925, 33.392044, 33.409412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276754, 33.545013, 32.709423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670107, 33.603107, 32.753006>,  <27.906118, 33.637962, 32.779156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670107, 33.603107, 32.753006>,  <27.276754, 33.545013, 32.709423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670107, 33.603107, 32.753006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165475, -0.469989, -0.867023,
		-0.074714, 0.870642, -0.486210,
		0.983380, 0.145234, 0.108954,
		27.965120, 33.646679, 32.785694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488699, 33.874886, 32.102966>,  <27.276754, 33.545013, 32.709423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488699, 33.874886, 32.102966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798168, 33.681873, 32.267212>,  <27.983849, 33.566067, 32.365757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798168, 33.681873, 32.267212>,  <27.488699, 33.874886, 32.102966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798168, 33.681873, 32.267212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138798, -0.503253, -0.852919,
		0.618197, 0.716871, -0.322379,
		0.773671, -0.482527, 0.410610,
		28.030270, 33.537117, 32.390396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553429, 34.482094, 32.420444>,  <27.488699, 33.874886, 32.102966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553429, 34.482094, 32.420444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714333, 34.750683, 32.669380>,  <27.810875, 34.911839, 32.818741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714333, 34.750683, 32.669380>,  <27.553429, 34.482094, 32.420444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714333, 34.750683, 32.669380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599389, -0.706983, 0.375376,
		0.692041, 0.222028, -0.686864,
		0.402257, 0.671475, 0.622343,
		27.835011, 34.952126, 32.856083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289827, 35.088451, 32.748611>,  <27.553429, 34.482094, 32.420444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289827, 35.088451, 32.748611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.519007, 34.848133, 32.971600>,  <27.656513, 34.703941, 33.105392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.519007, 34.848133, 32.971600>,  <27.289827, 35.088451, 32.748611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519007, 34.848133, 32.971600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205499, 0.553147, 0.807341,
		-0.793412, -0.577123, 0.193460,
		0.572946, -0.600798, 0.557471,
		27.690891, 34.667892, 33.138840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813942, 35.033112, 33.314247>,  <27.289827, 35.088451, 32.748611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813942, 35.033112, 33.314247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170870, 34.898266, 33.434330>,  <27.385027, 34.817360, 33.506378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170870, 34.898266, 33.434330>,  <26.813942, 35.033112, 33.314247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170870, 34.898266, 33.434330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143182, 0.419328, 0.896472,
		-0.428097, -0.842922, 0.325906,
		0.892318, -0.337113, 0.300204,
		27.438566, 34.797131, 33.524391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688969, 34.667107, 33.984741>,  <26.813942, 35.033112, 33.314247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688969, 34.667107, 33.984741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060755, 34.808689, 33.943157>,  <27.283827, 34.893639, 33.918205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060755, 34.808689, 33.943157>,  <26.688969, 34.667107, 33.984741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060755, 34.808689, 33.943157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117472, 0.551119, 0.826116,
		0.349703, -0.755635, 0.553827,
		0.929467, 0.353955, -0.103962,
		27.339594, 34.914875, 33.911968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051590, 34.787659, 34.667221>,  <26.688969, 34.667107, 33.984741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051590, 34.787659, 34.667221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180273, 35.036953, 34.382099>,  <27.257483, 35.186527, 34.211025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180273, 35.036953, 34.382099>,  <27.051590, 34.787659, 34.667221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180273, 35.036953, 34.382099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130554, 0.774829, 0.618544,
		0.937795, -0.105931, 0.330633,
		0.321707, 0.623233, -0.712801,
		27.276785, 35.223923, 34.168259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545828, 35.262604, 34.956879>,  <27.051590, 34.787659, 34.667221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545828, 35.262604, 34.956879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412495, 35.467979, 34.640583>,  <27.332495, 35.591206, 34.450806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412495, 35.467979, 34.640583>,  <27.545828, 35.262604, 34.956879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412495, 35.467979, 34.640583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101287, 0.814347, 0.571472,
		0.937353, 0.270581, -0.219443,
		-0.333332, 0.513444, -0.790737,
		27.312494, 35.622013, 34.403362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959280, 35.917812, 34.873974>,  <27.545828, 35.262604, 34.956879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959280, 35.917812, 34.873974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601509, 35.961380, 34.700474>,  <27.386847, 35.987522, 34.596375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601509, 35.961380, 34.700474>,  <27.959280, 35.917812, 34.873974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601509, 35.961380, 34.700474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114597, 0.881686, 0.457709,
		0.432286, 0.459093, -0.776120,
		-0.894425, 0.108920, -0.433751,
		27.333181, 35.994057, 34.570347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575041, 36.263908, 35.059864>,  <27.959280, 35.917812, 34.873974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575041, 36.263908, 35.059864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912821, 36.253304, 34.845875>,  <29.115490, 36.246941, 34.717480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912821, 36.253304, 34.845875>,  <28.575041, 36.263908, 35.059864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912821, 36.253304, 34.845875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411727, -0.606722, 0.679978,
		-0.342611, -0.794472, -0.501430,
		0.844452, -0.026516, -0.534975,
		29.166157, 36.245350, 34.685383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880413, 35.795017, 35.476852>,  <28.575041, 36.263908, 35.059864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880413, 35.795017, 35.476852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165941, 35.856991, 35.203663>,  <29.337257, 35.894176, 35.039749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165941, 35.856991, 35.203663>,  <28.880413, 35.795017, 35.476852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165941, 35.856991, 35.203663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582149, -0.673393, 0.455679,
		-0.389311, -0.722867, -0.570877,
		0.713820, 0.154935, -0.682976,
		29.380087, 35.903473, 34.998772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102114, 35.238773, 34.970543>,  <28.880413, 35.795017, 35.476852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102114, 35.238773, 34.970543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391813, 35.469246, 35.122059>,  <29.565632, 35.607529, 35.212971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391813, 35.469246, 35.122059>,  <29.102114, 35.238773, 34.970543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391813, 35.469246, 35.122059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309211, -0.762391, 0.568461,
		0.616323, -0.294580, -0.730321,
		0.724248, 0.576179, 0.378792,
		29.609087, 35.642101, 35.235695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600380, 34.751698, 34.955269>,  <29.102114, 35.238773, 34.970543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600380, 34.751698, 34.955269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677164, 35.041935, 35.219589>,  <29.723234, 35.216080, 35.378181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677164, 35.041935, 35.219589>,  <29.600380, 34.751698, 34.955269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677164, 35.041935, 35.219589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254950, -0.687079, 0.680384,
		0.947709, 0.037866, -0.316882,
		0.191960, 0.725595, 0.660805,
		29.734753, 35.259613, 35.417831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360937, 34.778282, 35.215607>,  <29.600380, 34.751698, 34.955269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360937, 34.778282, 35.215607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105703, 34.919727, 35.489193>,  <29.952562, 35.004593, 35.653343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105703, 34.919727, 35.489193>,  <30.360937, 34.778282, 35.215607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105703, 34.919727, 35.489193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360234, -0.647982, 0.671082,
		0.680500, 0.674593, 0.286083,
		-0.638084, 0.353614, 0.683963,
		29.914278, 35.025810, 35.694382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960438, 35.219719, 35.412838>,  <30.360937, 34.778282, 35.215607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960438, 35.219719, 35.412838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209726, 35.006317, 35.184113>,  <31.359299, 34.878277, 35.046879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209726, 35.006317, 35.184113>,  <30.960438, 35.219719, 35.412838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209726, 35.006317, 35.184113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765514, 0.266625, 0.585577,
		-0.159951, -0.802671, 0.574574,
		0.623221, -0.533508, -0.571809,
		31.396692, 34.846264, 35.012569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426920, 34.565536, 35.767803>,  <30.960438, 35.219719, 35.412838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426920, 34.565536, 35.767803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581982, 34.805511, 35.487862>,  <31.675018, 34.949497, 35.319897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581982, 34.805511, 35.487862>,  <31.426920, 34.565536, 35.767803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581982, 34.805511, 35.487862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854244, 0.051497, 0.517316,
		0.346400, -0.798385, -0.492533,
		0.387653, 0.599941, -0.699854,
		31.698278, 34.985493, 35.277905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897375, 34.163521, 35.413479>,  <31.426920, 34.565536, 35.767803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897375, 34.163521, 35.413479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949936, 34.557167, 35.461216>,  <31.981472, 34.793354, 35.489857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949936, 34.557167, 35.461216>,  <31.897375, 34.163521, 35.413479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949936, 34.557167, 35.461216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834112, -0.174815, 0.523160,
		0.535715, 0.030800, -0.843837,
		0.131402, 0.984119, 0.119342,
		31.989357, 34.852402, 35.497017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699863, 34.476006, 35.308857>,  <31.897375, 34.163521, 35.413479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699863, 34.476006, 35.308857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493809, 34.713512, 35.556107>,  <32.370178, 34.856018, 35.704456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493809, 34.713512, 35.556107>,  <32.699863, 34.476006, 35.308857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493809, 34.713512, 35.556107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749320, -0.038139, 0.661109,
		0.416120, 0.803732, -0.425275,
		-0.515134, 0.593768, 0.618123,
		32.339268, 34.891644, 35.741543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284580, 34.046387, 35.011715>,  <32.699863, 34.476006, 35.308857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284580, 34.046387, 35.011715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566368, 33.763531, 35.035988>,  <33.735439, 33.593819, 35.050552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566368, 33.763531, 35.035988>,  <33.284580, 34.046387, 35.011715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566368, 33.763531, 35.035988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634066, 0.588641, -0.501460,
		0.318884, 0.391736, 0.863051,
		0.704467, -0.707138, 0.060679,
		33.777710, 33.551388, 35.054192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988129, 34.154289, 35.393219>,  <33.284580, 34.046387, 35.011715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988129, 34.154289, 35.393219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053082, 33.895336, 35.095352>,  <34.092052, 33.739964, 34.916634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053082, 33.895336, 35.095352>,  <33.988129, 34.154289, 35.393219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053082, 33.895336, 35.095352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816235, 0.512175, -0.267276,
		0.554430, -0.564423, 0.611584,
		0.162381, -0.647382, -0.744667,
		34.101795, 33.701122, 34.871952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994904, 34.785999, 34.891884>,  <33.988129, 34.154289, 35.393219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994904, 34.785999, 34.891884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196938, 35.111763, 35.006168>,  <34.318157, 35.307220, 35.074741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196938, 35.111763, 35.006168>,  <33.994904, 34.785999, 34.891884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196938, 35.111763, 35.006168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780134, -0.289204, -0.554753,
		-0.369166, 0.503091, -0.781419,
		0.505081, 0.814408, 0.285714,
		34.348461, 35.356087, 35.091881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306129, 35.099243, 34.299950>,  <33.994904, 34.785999, 34.891884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306129, 35.099243, 34.299950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539394, 35.188488, 34.612396>,  <34.679356, 35.242035, 34.799866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539394, 35.188488, 34.612396>,  <34.306129, 35.099243, 34.299950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539394, 35.188488, 34.612396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811877, -0.127148, -0.569815,
		-0.027813, 0.966466, -0.255285,
		0.583166, 0.223108, 0.781115,
		34.714344, 35.255421, 34.846729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817825, 35.724098, 34.196110>,  <34.306129, 35.099243, 34.299950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817825, 35.724098, 34.196110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966034, 35.478130, 34.474556>,  <35.054958, 35.330547, 34.641624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966034, 35.478130, 34.474556>,  <34.817825, 35.724098, 34.196110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966034, 35.478130, 34.474556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832040, -0.113365, -0.543008,
		0.412824, 0.780396, 0.469637,
		0.370521, -0.614923, 0.696120,
		35.077190, 35.293652, 34.683392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599754, 35.856552, 34.463631>,  <34.817825, 35.724098, 34.196110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599754, 35.856552, 34.463631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471146, 35.479065, 34.432602>,  <35.393982, 35.252571, 34.413986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471146, 35.479065, 34.432602>,  <35.599754, 35.856552, 34.463631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471146, 35.479065, 34.432602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759585, -0.208136, -0.616206,
		0.565381, -0.257042, 0.783756,
		-0.321519, -0.943721, -0.077569,
		35.374691, 35.195950, 34.409332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236534, 35.460419, 34.428143>,  <35.599754, 35.856552, 34.463631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236534, 35.460419, 34.428143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923599, 35.272240, 34.264862>,  <35.735836, 35.159332, 34.166893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923599, 35.272240, 34.264862>,  <36.236534, 35.460419, 34.428143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923599, 35.272240, 34.264862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617994, -0.504604, -0.602876,
		0.077641, -0.723917, 0.685504,
		-0.782340, -0.470445, -0.408198,
		35.688896, 35.131107, 34.142403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377216, 34.670944, 34.398445>,  <36.236534, 35.460419, 34.428143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377216, 34.670944, 34.398445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114250, 34.780979, 34.117836>,  <35.956470, 34.847000, 33.949471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114250, 34.780979, 34.117836>,  <36.377216, 34.670944, 34.398445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114250, 34.780979, 34.117836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413658, -0.646415, -0.641120,
		-0.629832, -0.711675, 0.311177,
		-0.657419, 0.275077, -0.701522,
		35.917027, 34.863503, 33.907379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579418, 34.262936, 33.941715>,  <36.377216, 34.670944, 34.398445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579418, 34.262936, 33.941715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289738, 34.424976, 33.718494>,  <36.115929, 34.522202, 33.584560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289738, 34.424976, 33.718494>,  <36.579418, 34.262936, 33.941715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289738, 34.424976, 33.718494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234796, -0.616049, -0.751900,
		-0.648389, -0.675554, 0.351025,
		-0.724198, 0.405105, -0.558057,
		36.072479, 34.546509, 33.551079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024677, 33.750095, 33.740738>,  <36.579418, 34.262936, 33.941715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024677, 33.750095, 33.740738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085312, 34.031467, 33.462971>,  <36.121693, 34.200291, 33.296310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085312, 34.031467, 33.462971>,  <36.024677, 33.750095, 33.740738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085312, 34.031467, 33.462971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231046, -0.708287, -0.667044,
		-0.961062, -0.059328, -0.269890,
		0.151585, 0.703427, -0.694415,
		36.130787, 34.242496, 33.254646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726227, 33.563309, 33.141754>,  <36.024677, 33.750095, 33.740738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726227, 33.563309, 33.141754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989189, 33.817791, 32.980225>,  <36.146965, 33.970478, 32.883308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989189, 33.817791, 32.980225>,  <35.726227, 33.563309, 33.141754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989189, 33.817791, 32.980225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260784, -0.694866, -0.670188,
		-0.706976, 0.335273, -0.622718,
		0.657402, 0.636201, -0.403820,
		36.186409, 34.008652, 32.859077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700874, 33.393265, 32.431114>,  <35.726227, 33.563309, 33.141754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700874, 33.393265, 32.431114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022251, 33.630821, 32.447926>,  <36.215076, 33.773354, 32.458012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022251, 33.630821, 32.447926>,  <35.700874, 33.393265, 32.431114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022251, 33.630821, 32.447926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438481, -0.542488, -0.716549,
		-0.402751, 0.594138, -0.696270,
		0.803447, 0.593891, 0.042031,
		36.263287, 33.808990, 32.460533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809753, 33.702808, 31.696487>,  <35.700874, 33.393265, 32.431114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809753, 33.702808, 31.696487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144993, 33.692329, 31.914444>,  <36.346134, 33.686043, 32.045219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144993, 33.692329, 31.914444>,  <35.809753, 33.702808, 31.696487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144993, 33.692329, 31.914444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494501, -0.385285, -0.779117,
		0.230353, 0.922425, -0.309950,
		0.838097, -0.026202, 0.544892,
		36.396423, 33.684467, 32.077911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266499, 34.223186, 31.294832>,  <35.809753, 33.702808, 31.696487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266499, 34.223186, 31.294832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486961, 33.973957, 31.516827>,  <36.619240, 33.824421, 31.650023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486961, 33.973957, 31.516827>,  <36.266499, 34.223186, 31.294832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486961, 33.973957, 31.516827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580439, -0.191527, -0.791460,
		0.599429, 0.758355, 0.256092,
		0.551159, -0.623069, 0.554985,
		36.652309, 33.787037, 31.683323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848145, 34.386650, 31.080236>,  <36.266499, 34.223186, 31.294832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848145, 34.386650, 31.080236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936062, 34.036106, 31.251673>,  <36.988811, 33.825779, 31.354534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936062, 34.036106, 31.251673>,  <36.848145, 34.386650, 31.080236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936062, 34.036106, 31.251673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572674, -0.239763, -0.783938,
		0.789768, 0.417750, 0.449167,
		0.219796, -0.876355, 0.428591,
		37.001999, 33.773201, 31.380251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504776, 34.330677, 31.084829>,  <36.848145, 34.386650, 31.080236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504776, 34.330677, 31.084829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382774, 33.949783, 31.090773>,  <37.309574, 33.721245, 31.094337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382774, 33.949783, 31.090773>,  <37.504776, 34.330677, 31.084829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382774, 33.949783, 31.090773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613579, -0.208411, -0.761633,
		0.728351, -0.223182, 0.647838,
		-0.305000, -0.952236, 0.014857,
		37.291275, 33.664112, 31.095230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153690, 33.947243, 30.920517>,  <37.504776, 34.330677, 31.084829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153690, 33.947243, 30.920517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845654, 33.721752, 30.801075>,  <37.660831, 33.586456, 30.729410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845654, 33.721752, 30.801075>,  <38.153690, 33.947243, 30.920517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845654, 33.721752, 30.801075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534324, -0.314280, -0.784682,
		0.348504, -0.763829, 0.543240,
		-0.770092, -0.563731, -0.298605,
		37.614624, 33.552631, 30.711493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484661, 33.304390, 30.792501>,  <38.153690, 33.947243, 30.920517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484661, 33.304390, 30.792501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135010, 33.290470, 30.598724>,  <37.925220, 33.282120, 30.482458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135010, 33.290470, 30.598724>,  <38.484661, 33.304390, 30.792501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135010, 33.290470, 30.598724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446816, -0.448629, -0.774007,
		-0.190401, -0.893040, 0.407709,
		-0.874130, -0.034799, -0.484444,
		37.872772, 33.280029, 30.453390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575710, 32.738358, 30.403776>,  <38.484661, 33.304390, 30.792501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575710, 32.738358, 30.403776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248238, 32.862709, 30.210648>,  <38.051754, 32.937321, 30.094770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248238, 32.862709, 30.210648>,  <38.575710, 32.738358, 30.403776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248238, 32.862709, 30.210648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354661, -0.387537, -0.850900,
		-0.451641, -0.867852, 0.207010,
		-0.818680, 0.310883, -0.482821,
		38.002632, 32.955975, 30.065802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274559, 32.152210, 29.963654>,  <38.575710, 32.738358, 30.403776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274559, 32.152210, 29.963654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145195, 32.496479, 29.806353>,  <38.067577, 32.703041, 29.711971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145195, 32.496479, 29.806353>,  <38.274559, 32.152210, 29.963654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145195, 32.496479, 29.806353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305657, -0.298290, -0.904211,
		-0.895532, -0.412635, -0.166599,
		-0.323414, 0.860672, -0.393252,
		38.048172, 32.754681, 29.688377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918507, 31.912260, 29.227819>,  <38.274559, 32.152210, 29.963654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918507, 31.912260, 29.227819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949028, 32.310581, 29.207613>,  <37.967342, 32.549576, 29.195490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949028, 32.310581, 29.207613>,  <37.918507, 31.912260, 29.227819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949028, 32.310581, 29.207613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071001, -0.055961, -0.995905,
		-0.994554, 0.072405, -0.074973,
		0.076304, 0.995804, -0.050515,
		37.971920, 32.609322, 29.192459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526924, 32.068226, 28.670938>,  <37.918507, 31.912260, 29.227819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526924, 32.068226, 28.670938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782143, 32.372452, 28.718990>,  <37.935272, 32.554989, 28.747822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782143, 32.372452, 28.718990>,  <37.526924, 32.068226, 28.670938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782143, 32.372452, 28.718990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277046, -0.081193, -0.957420,
		-0.718430, 0.644161, -0.262518,
		0.638047, 0.760568, 0.120131,
		37.973557, 32.600624, 28.755030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398232, 32.436787, 28.098192>,  <37.526924, 32.068226, 28.670938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398232, 32.436787, 28.098192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766216, 32.537842, 28.218088>,  <37.987007, 32.598473, 28.290026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766216, 32.537842, 28.218088>,  <37.398232, 32.436787, 28.098192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766216, 32.537842, 28.218088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323465, -0.057285, -0.944504,
		-0.221445, 0.965864, -0.134419,
		0.919963, 0.252636, 0.299738,
		38.042206, 32.613632, 28.308010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542927, 32.990292, 27.727161>,  <37.398232, 32.436787, 28.098192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542927, 32.990292, 27.727161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905930, 32.860680, 27.834078>,  <38.123730, 32.782913, 27.898228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905930, 32.860680, 27.834078>,  <37.542927, 32.990292, 27.727161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905930, 32.860680, 27.834078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324471, 0.136668, -0.935970,
		0.266748, 0.936125, 0.229164,
		0.907504, -0.324026, 0.267289,
		38.178181, 32.763474, 27.914265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953281, 33.333992, 27.331457>,  <37.542927, 32.990292, 27.727161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953281, 33.333992, 27.331457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216660, 33.059814, 27.455790>,  <38.374687, 32.895309, 27.530390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216660, 33.059814, 27.455790>,  <37.953281, 33.333992, 27.331457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216660, 33.059814, 27.455790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428151, 0.001478, -0.903706,
		0.618980, 0.728124, 0.294446,
		0.658445, -0.685444, 0.310832,
		38.414192, 32.854183, 27.549040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566574, 33.603260, 27.216610>,  <37.953281, 33.333992, 27.331457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566574, 33.603260, 27.216610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621780, 33.208683, 27.252123>,  <38.654903, 32.971935, 27.273432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621780, 33.208683, 27.252123>,  <38.566574, 33.603260, 27.216610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621780, 33.208683, 27.252123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406163, -0.025388, -0.913447,
		0.903318, 0.162129, 0.397153,
		0.138013, -0.986443, 0.088785,
		38.663185, 32.912750, 27.278759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270927, 33.374573, 26.983124>,  <38.566574, 33.603260, 27.216610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270927, 33.374573, 26.983124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048603, 33.045143, 26.937870>,  <38.915207, 32.847485, 26.910717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048603, 33.045143, 26.937870>,  <39.270927, 33.374573, 26.983124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048603, 33.045143, 26.937870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425585, -0.164993, -0.889750,
		0.714106, -0.542684, 0.442206,
		-0.555814, -0.823572, -0.113136,
		38.881859, 32.798073, 26.903929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683949, 32.878677, 26.627953>,  <39.270927, 33.374573, 26.983124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683949, 32.878677, 26.627953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312420, 32.754677, 26.546772>,  <39.089504, 32.680275, 26.498064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312420, 32.754677, 26.546772>,  <39.683949, 32.878677, 26.627953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312420, 32.754677, 26.546772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302767, -0.319234, -0.898010,
		0.213596, -0.895538, 0.390370,
		-0.928821, -0.310003, -0.202952,
		39.033775, 32.661674, 26.485886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872070, 32.243084, 26.397438>,  <39.683949, 32.878677, 26.627953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872070, 32.243084, 26.397438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493099, 32.261002, 26.270710>,  <39.265717, 32.271751, 26.194674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493099, 32.261002, 26.270710>,  <39.872070, 32.243084, 26.397438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493099, 32.261002, 26.270710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241144, -0.550859, -0.799002,
		-0.210309, -0.833396, 0.511098,
		-0.947428, 0.044789, -0.316819,
		39.208870, 32.274437, 26.175665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863213, 31.622314, 26.065357>,  <39.872070, 32.243084, 26.397438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863213, 31.622314, 26.065357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560852, 31.836462, 25.914631>,  <39.379436, 31.964951, 25.824196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560852, 31.836462, 25.914631>,  <39.863213, 31.622314, 26.065357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560852, 31.836462, 25.914631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165421, -0.400703, -0.901151,
		-0.633441, -0.743515, 0.214331,
		-0.755902, 0.535371, -0.376815,
		39.334080, 31.997074, 25.801586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420345, 31.137125, 25.720312>,  <39.863213, 31.622314, 26.065357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420345, 31.137125, 25.720312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316772, 31.488791, 25.560297>,  <39.254627, 31.699789, 25.464289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316772, 31.488791, 25.560297>,  <39.420345, 31.137125, 25.720312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316772, 31.488791, 25.560297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261162, -0.335010, -0.905297,
		-0.929918, -0.338886, -0.142859,
		-0.258933, 0.879162, -0.400036,
		39.239094, 31.752539, 25.440287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032604, 30.919523, 25.311537>,  <39.420345, 31.137125, 25.720312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032604, 30.919523, 25.311537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145870, 31.276251, 25.170416>,  <39.213829, 31.490288, 25.085743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145870, 31.276251, 25.170416>,  <39.032604, 30.919523, 25.311537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145870, 31.276251, 25.170416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064358, -0.384700, -0.920795,
		-0.956908, 0.238035, -0.166330,
		0.283169, 0.891821, -0.352803,
		39.230820, 31.543797, 25.064575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673340, 30.992764, 24.683020>,  <39.032604, 30.919523, 25.311537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673340, 30.992764, 24.683020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951302, 31.276054, 24.633184>,  <39.118080, 31.446030, 24.603283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951302, 31.276054, 24.633184>,  <38.673340, 30.992764, 24.683020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951302, 31.276054, 24.633184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068873, -0.238009, -0.968818,
		-0.715797, 0.664654, -0.214171,
		0.694904, 0.708228, -0.124590,
		39.159771, 31.488523, 24.595808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475357, 31.340439, 23.996864>,  <38.673340, 30.992764, 24.683020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475357, 31.340439, 23.996864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854004, 31.451338, 24.062660>,  <39.081192, 31.517878, 24.102137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854004, 31.451338, 24.062660>,  <38.475357, 31.340439, 23.996864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854004, 31.451338, 24.062660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209975, -0.143111, -0.967176,
		-0.244606, 0.950081, -0.193686,
		0.946614, 0.277246, 0.164488,
		39.137989, 31.534512, 24.112007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613983, 31.845671, 23.423618>,  <38.475357, 31.340439, 23.996864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613983, 31.845671, 23.423618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955101, 31.701326, 23.574627>,  <39.159771, 31.614719, 23.665232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955101, 31.701326, 23.574627>,  <38.613983, 31.845671, 23.423618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955101, 31.701326, 23.574627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301341, -0.250397, -0.920052,
		0.426543, 0.898376, -0.104793,
		0.852792, -0.360863, 0.377523,
		39.210938, 31.593067, 23.687883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115543, 32.141705, 23.058849>,  <38.613983, 31.845671, 23.423618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115543, 32.141705, 23.058849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278759, 31.806080, 23.202784>,  <39.376686, 31.604706, 23.289145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278759, 31.806080, 23.202784>,  <39.115543, 32.141705, 23.058849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278759, 31.806080, 23.202784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334506, -0.229332, -0.914064,
		0.849477, 0.493340, 0.187095,
		0.408037, -0.839061, 0.359837,
		39.401169, 31.554361, 23.310736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764778, 32.196850, 22.730677>,  <39.115543, 32.141705, 23.058849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764778, 32.196850, 22.730677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737988, 31.818636, 22.858101>,  <39.721912, 31.591707, 22.934555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737988, 31.818636, 22.858101>,  <39.764778, 32.196850, 22.730677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737988, 31.818636, 22.858101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649400, -0.283703, -0.705544,
		0.757492, 0.159621, 0.633030,
		-0.066973, -0.945534, 0.318560,
		39.717896, 31.534975, 22.953669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464520, 31.975096, 22.790037>,  <39.764778, 32.196850, 22.730677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464520, 31.975096, 22.790037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201138, 31.681087, 22.725319>,  <40.043106, 31.504683, 22.686487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201138, 31.681087, 22.725319>,  <40.464520, 31.975096, 22.790037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201138, 31.681087, 22.725319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422071, -0.182638, -0.887975,
		0.623130, -0.652983, 0.430491,
		-0.658457, -0.735022, -0.161798,
		40.003601, 31.460581, 22.676779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889309, 31.633324, 22.408670>,  <40.464520, 31.975096, 22.790037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889309, 31.633324, 22.408670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528492, 31.470011, 22.352646>,  <40.312000, 31.372023, 22.319031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528492, 31.470011, 22.352646>,  <40.889309, 31.633324, 22.408670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528492, 31.470011, 22.352646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216669, -0.147648, -0.965015,
		0.373321, -0.900835, 0.221648,
		-0.902045, -0.408285, -0.140063,
		40.257877, 31.347525, 22.310627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000637, 30.953812, 22.089745>,  <40.889309, 31.633324, 22.408670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000637, 30.953812, 22.089745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630325, 31.081617, 22.008900>,  <40.408138, 31.158300, 21.960392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630325, 31.081617, 22.008900>,  <41.000637, 30.953812, 22.089745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630325, 31.081617, 22.008900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195426, -0.053219, -0.979273,
		-0.323647, -0.946086, -0.013172,
		-0.925776, 0.319513, -0.202114,
		40.352592, 31.177471, 21.948265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823944, 30.591265, 21.539352>,  <41.000637, 30.953812, 22.089745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823944, 30.591265, 21.539352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558395, 30.890306, 21.531733>,  <40.399067, 31.069733, 21.527161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558395, 30.890306, 21.531733>,  <40.823944, 30.591265, 21.539352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558395, 30.890306, 21.531733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106861, 0.069617, -0.991834,
		-0.740174, -0.660485, -0.126107,
		-0.663870, 0.747605, -0.019051,
		40.359234, 31.114588, 21.526016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247044, 30.374878, 21.091211>,  <40.823944, 30.591265, 21.539352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247044, 30.374878, 21.091211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305225, 30.769257, 21.124083>,  <40.340134, 31.005884, 21.143806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305225, 30.769257, 21.124083>,  <40.247044, 30.374878, 21.091211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305225, 30.769257, 21.124083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034364, 0.077978, -0.996363,
		-0.988768, 0.147749, -0.022539,
		0.145454, 0.985946, 0.082179,
		40.348862, 31.065041, 21.148737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787823, 30.662527, 20.518869>,  <40.247044, 30.374878, 21.091211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787823, 30.662527, 20.518869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024517, 30.966352, 20.626873>,  <40.166534, 31.148647, 20.691675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024517, 30.966352, 20.626873>,  <39.787823, 30.662527, 20.518869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024517, 30.966352, 20.626873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141609, 0.231795, -0.962402,
		-0.793594, 0.607728, 0.029601,
		0.591740, 0.759565, 0.270011,
		40.202038, 31.194221, 20.707876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549335, 31.206974, 20.155851>,  <39.787823, 30.662527, 20.518869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549335, 31.206974, 20.155851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926083, 31.317591, 20.232172>,  <40.152130, 31.383961, 20.277964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926083, 31.317591, 20.232172>,  <39.549335, 31.206974, 20.155851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926083, 31.317591, 20.232172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066409, 0.403459, -0.912585,
		-0.329348, 0.872208, 0.361641,
		0.941870, 0.276541, 0.190801,
		40.208645, 31.400553, 20.289412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627174, 31.855347, 19.825645>,  <39.549335, 31.206974, 20.155851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627174, 31.855347, 19.825645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007092, 31.754328, 19.899517>,  <40.235043, 31.693716, 19.943840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007092, 31.754328, 19.899517>,  <39.627174, 31.855347, 19.825645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007092, 31.754328, 19.899517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260844, 0.313249, -0.913146,
		0.172761, 0.915476, 0.363398,
		0.949797, -0.252546, 0.184679,
		40.292030, 31.678564, 19.954922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092255, 32.491756, 19.758755>,  <39.627174, 31.855347, 19.825645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092255, 32.491756, 19.758755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292580, 32.150070, 19.702885>,  <40.412773, 31.945059, 19.669363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292580, 32.150070, 19.702885>,  <40.092255, 32.491756, 19.758755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292580, 32.150070, 19.702885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302098, 0.323727, -0.896626,
		0.811126, 0.406844, 0.420182,
		0.500811, -0.854213, -0.139677,
		40.442822, 31.893806, 19.660982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694214, 32.779675, 19.446442>,  <40.092255, 32.491756, 19.758755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694214, 32.779675, 19.446442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688286, 32.390018, 19.356256>,  <40.684731, 32.156223, 19.302145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688286, 32.390018, 19.356256>,  <40.694214, 32.779675, 19.446442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688286, 32.390018, 19.356256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177685, 0.219333, -0.959334,
		0.983976, -0.054276, 0.169840,
		-0.014817, -0.974139, -0.225462,
		40.683842, 32.097778, 19.288618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376919, 32.643654, 19.166914>,  <40.694214, 32.779675, 19.446442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376919, 32.643654, 19.166914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135006, 32.344952, 19.056215>,  <40.989857, 32.165730, 18.989796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135006, 32.344952, 19.056215>,  <41.376919, 32.643654, 19.166914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135006, 32.344952, 19.056215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266722, 0.137508, -0.953913,
		0.750397, -0.650727, 0.116014,
		-0.604784, -0.746757, -0.276749,
		40.953571, 32.120926, 18.973190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757507, 32.335869, 18.693926>,  <41.376919, 32.643654, 19.166914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757507, 32.335869, 18.693926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397224, 32.178158, 18.620970>,  <41.181053, 32.083530, 18.577196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397224, 32.178158, 18.620970>,  <41.757507, 32.335869, 18.693926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397224, 32.178158, 18.620970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099624, 0.221194, -0.970128,
		0.422841, -0.891976, -0.159953,
		-0.900711, -0.394275, -0.182393,
		41.127010, 32.059875, 18.566252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881115, 31.871128, 18.198299>,  <41.757507, 32.335869, 18.693926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881115, 31.871128, 18.198299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502632, 32.000549, 18.199078>,  <41.275543, 32.078201, 18.199545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502632, 32.000549, 18.199078>,  <41.881115, 31.871128, 18.198299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502632, 32.000549, 18.199078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035951, 0.111102, -0.993159,
		-0.321554, -0.939665, -0.116758,
		-0.946209, 0.323551, 0.001944,
		41.218769, 32.097614, 18.199661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570488, 31.568201, 17.658600>,  <41.881115, 31.871128, 18.198299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570488, 31.568201, 17.658600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333069, 31.879868, 17.739202>,  <41.190617, 32.066868, 17.787563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333069, 31.879868, 17.739202>,  <41.570488, 31.568201, 17.658600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333069, 31.879868, 17.739202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088839, 0.312281, -0.945827,
		-0.799883, -0.543488, -0.254573,
		-0.593544, 0.779167, 0.201506,
		41.155006, 32.113617, 17.799654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064251, 31.664703, 17.074230>,  <41.570488, 31.568201, 17.658600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064251, 31.664703, 17.074230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063251, 32.014214, 17.268759>,  <41.062653, 32.223919, 17.385477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063251, 32.014214, 17.268759>,  <41.064251, 31.664703, 17.074230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063251, 32.014214, 17.268759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066512, 0.485392, -0.871763,
		-0.997783, 0.030166, -0.059330,
		-0.002501, 0.873776, 0.486322,
		41.062500, 32.276348, 17.414656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484684, 32.011520, 16.874289>,  <41.064251, 31.664703, 17.074230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484684, 32.011520, 16.874289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790211, 32.251949, 16.968346>,  <40.973526, 32.396206, 17.024780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790211, 32.251949, 16.968346>,  <40.484684, 32.011520, 16.874289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790211, 32.251949, 16.968346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065782, 0.434919, -0.898064,
		-0.642071, 0.670489, 0.371738,
		0.763817, 0.601075, 0.235143,
		41.019356, 32.432270, 17.038889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211594, 32.715672, 17.024279>,  <40.484684, 32.011520, 16.874289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211594, 32.715672, 17.024279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542019, 32.629452, 16.815987>,  <40.740273, 32.577721, 16.691011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542019, 32.629452, 16.815987>,  <40.211594, 32.715672, 17.024279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542019, 32.629452, 16.815987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224590, 0.721526, -0.654950,
		0.516895, 0.657980, 0.547614,
		0.826062, -0.215552, -0.520729,
		40.789837, 32.564785, 16.659767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668980, 33.206192, 17.116383>,  <40.211594, 32.715672, 17.024279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668980, 33.206192, 17.116383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710072, 33.041210, 16.754316>,  <40.734726, 32.942219, 16.537077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710072, 33.041210, 16.754316>,  <40.668980, 33.206192, 17.116383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710072, 33.041210, 16.754316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104567, 0.900460, -0.422183,
		0.989197, 0.138023, 0.049378,
		0.102733, -0.412459, -0.905165,
		40.740891, 32.917473, 16.482767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942375, 33.872345, 16.884455>,  <40.668980, 33.206192, 17.116383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942375, 33.872345, 16.884455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760410, 34.226467, 16.923018>,  <40.651234, 34.438942, 16.946156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760410, 34.226467, 16.923018>,  <40.942375, 33.872345, 16.884455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760410, 34.226467, 16.923018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596850, 0.383439, -0.704801,
		-0.660929, -0.263081, -0.702823,
		-0.454909, 0.885304, 0.096407,
		40.623936, 34.492058, 16.951939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876743, 34.101040, 16.210777>,  <40.942375, 33.872345, 16.884455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876743, 34.101040, 16.210777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897125, 34.423893, 16.446043>,  <40.909355, 34.617607, 16.587202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897125, 34.423893, 16.446043>,  <40.876743, 34.101040, 16.210777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897125, 34.423893, 16.446043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673720, 0.406957, -0.616837,
		-0.737228, 0.427690, -0.523045,
		0.050958, 0.807135, 0.588163,
		40.912415, 34.666035, 16.622492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751053, 34.866150, 15.855333>,  <40.876743, 34.101040, 16.210777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751053, 34.866150, 15.855333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963520, 34.923038, 16.189432>,  <41.091000, 34.957172, 16.389891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963520, 34.923038, 16.189432>,  <40.751053, 34.866150, 15.855333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963520, 34.923038, 16.189432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515451, 0.728152, -0.451779,
		-0.672438, 0.670498, 0.313464,
		0.531166, 0.142218, 0.835246,
		41.122871, 34.965702, 16.440006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631306, 35.447987, 16.357111>,  <40.751053, 34.866150, 15.855333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631306, 35.447987, 16.357111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022236, 35.377144, 16.403519>,  <41.256794, 35.334637, 16.431362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022236, 35.377144, 16.403519>,  <40.631306, 35.447987, 16.357111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022236, 35.377144, 16.403519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202725, 0.940848, -0.271492,
		-0.061072, 0.288856, 0.955423,
		0.977330, -0.177107, 0.116017,
		41.315434, 35.324013, 16.438324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828423, 36.004963, 16.741566>,  <40.631306, 35.447987, 16.357111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828423, 36.004963, 16.741566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134300, 35.835022, 16.547768>,  <41.317829, 35.733055, 16.431490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134300, 35.835022, 16.547768>,  <40.828423, 36.004963, 16.741566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134300, 35.835022, 16.547768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220311, 0.878932, -0.423016,
		0.605557, 0.216740, 0.765718,
		0.764698, -0.424856, -0.484493,
		41.363708, 35.707565, 16.402420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907082, 35.627510, 17.412483>,  <40.828423, 36.004963, 16.741566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907082, 35.627510, 17.412483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890026, 35.327778, 17.148153>,  <40.879791, 35.147938, 16.989555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890026, 35.327778, 17.148153>,  <40.907082, 35.627510, 17.412483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890026, 35.327778, 17.148153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810143, -0.361142, 0.461784,
		-0.584680, 0.555054, -0.591663,
		-0.042641, -0.749327, -0.660825,
		40.877235, 35.102982, 16.949905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183601, 35.651028, 17.167973>,  <40.907082, 35.627510, 17.412483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183601, 35.651028, 17.167973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327633, 35.282112, 17.111786>,  <40.414051, 35.060764, 17.078074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327633, 35.282112, 17.111786>,  <40.183601, 35.651028, 17.167973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327633, 35.282112, 17.111786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815530, -0.384297, 0.432697,
		-0.453053, -0.041247, -0.890529,
		0.360076, -0.922288, -0.140468,
		40.435654, 35.005424, 17.069645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546543, 35.310009, 16.922714>,  <40.183601, 35.651028, 17.167973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546543, 35.310009, 16.922714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809853, 35.037430, 17.050659>,  <39.967838, 34.873882, 17.127426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809853, 35.037430, 17.050659>,  <39.546543, 35.310009, 16.922714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809853, 35.037430, 17.050659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693705, -0.384131, 0.609276,
		-0.292316, -0.622961, -0.725583,
		0.658274, -0.681442, 0.319863,
		40.007336, 34.832996, 17.146618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201481, 34.638374, 16.834124>,  <39.546543, 35.310009, 16.922714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201481, 34.638374, 16.834124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488873, 34.616310, 17.111469>,  <39.661308, 34.603069, 17.277876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488873, 34.616310, 17.111469>,  <39.201481, 34.638374, 16.834124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488873, 34.616310, 17.111469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667120, -0.336758, 0.664489,
		0.196839, -0.939974, -0.278754,
		0.718475, -0.055164, 0.693362,
		39.704414, 34.599762, 17.319477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996105, 33.981934, 17.229918>,  <39.201481, 34.638374, 16.834124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996105, 33.981934, 17.229918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257252, 34.171360, 17.466393>,  <39.413940, 34.285015, 17.608278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257252, 34.171360, 17.466393>,  <38.996105, 33.981934, 17.229918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257252, 34.171360, 17.466393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492205, -0.328017, 0.806312,
		0.575764, -0.817396, 0.018944,
		0.652863, 0.473570, 0.591187,
		39.453110, 34.313431, 17.643749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912781, 33.635368, 17.802710>,  <38.996105, 33.981934, 17.229918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912781, 33.635368, 17.802710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113464, 33.937176, 17.971937>,  <39.233875, 34.118259, 18.073473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113464, 33.937176, 17.971937>,  <38.912781, 33.635368, 17.802710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113464, 33.937176, 17.971937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454412, -0.186278, 0.871097,
		0.736071, -0.629282, 0.249408,
		0.501706, 0.754523, 0.423067,
		39.263977, 34.163532, 18.098858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255512, 33.402596, 18.434132>,  <38.912781, 33.635368, 17.802710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255512, 33.402596, 18.434132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216404, 33.799191, 18.468512>,  <39.192940, 34.037148, 18.489140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216404, 33.799191, 18.468512>,  <39.255512, 33.402596, 18.434132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216404, 33.799191, 18.468512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322460, -0.113264, 0.939782,
		0.941520, 0.064170, 0.330790,
		-0.097773, 0.991490, 0.085948,
		39.187073, 34.096638, 18.494295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660744, 33.591015, 18.933361>,  <39.255512, 33.402596, 18.434132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660744, 33.591015, 18.933361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400841, 33.894337, 18.912273>,  <39.244900, 34.076332, 18.899622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400841, 33.894337, 18.912273>,  <39.660744, 33.591015, 18.933361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400841, 33.894337, 18.912273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131297, -0.043652, 0.990382,
		0.748713, 0.650433, 0.127927,
		-0.649761, 0.758308, -0.052717,
		39.205914, 34.121830, 18.896458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861019, 33.990360, 19.574547>,  <39.660744, 33.591015, 18.933361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861019, 33.990360, 19.574547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507378, 34.114014, 19.434381>,  <39.295193, 34.188206, 19.350283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507378, 34.114014, 19.434381>,  <39.861019, 33.990360, 19.574547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507378, 34.114014, 19.434381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327615, 0.124655, 0.936552,
		0.333204, 0.942812, -0.008930,
		-0.884106, 0.309137, -0.350415,
		39.242146, 34.206757, 19.329256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577923, 34.494568, 20.023254>,  <39.861019, 33.990360, 19.574547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577923, 34.494568, 20.023254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249920, 34.362469, 19.836271>,  <39.053116, 34.283211, 19.724081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249920, 34.362469, 19.836271>,  <39.577923, 34.494568, 20.023254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249920, 34.362469, 19.836271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560639, 0.299123, 0.772146,
		-0.115171, 0.895244, -0.430434,
		-0.820012, -0.330247, -0.467458,
		39.003918, 34.263393, 19.696033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071663, 35.002380, 20.062401>,  <39.577923, 34.494568, 20.023254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071663, 35.002380, 20.062401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890968, 34.647381, 20.025993>,  <38.782551, 34.434383, 20.004148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890968, 34.647381, 20.025993>,  <39.071663, 35.002380, 20.062401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890968, 34.647381, 20.025993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469340, 0.149647, 0.870245,
		-0.758717, 0.435842, -0.484138,
		-0.451739, -0.887495, -0.091019,
		38.755447, 34.381134, 19.998688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469780, 35.063381, 20.450048>,  <39.071663, 35.002380, 20.062401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469780, 35.063381, 20.450048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470261, 34.670574, 20.374531>,  <38.470551, 34.434891, 20.329220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470261, 34.670574, 20.374531>,  <38.469780, 35.063381, 20.450048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470261, 34.670574, 20.374531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573868, -0.155292, 0.804090,
		-0.818947, 0.107376, -0.563734,
		0.001204, -0.982016, -0.188795,
		38.470623, 34.375969, 20.317892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718193, 34.841633, 20.502108>,  <38.469780, 35.063381, 20.450048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718193, 34.841633, 20.502108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978104, 34.540203, 20.541937>,  <38.134048, 34.359344, 20.565834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978104, 34.540203, 20.541937>,  <37.718193, 34.841633, 20.502108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978104, 34.540203, 20.541937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446976, -0.272840, 0.851922,
		-0.614823, -0.598062, -0.514116,
		0.649773, -0.753579, 0.099571,
		38.173035, 34.314129, 20.571808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359684, 34.349739, 20.805672>,  <37.718193, 34.841633, 20.502108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359684, 34.349739, 20.805672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738098, 34.254700, 20.893829>,  <37.965145, 34.197678, 20.946724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738098, 34.254700, 20.893829>,  <37.359684, 34.349739, 20.805672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738098, 34.254700, 20.893829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262742, -0.164209, 0.950790,
		-0.189728, -0.957380, -0.217776,
		0.946028, -0.237610, 0.220389,
		38.021908, 34.183418, 20.959948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227428, 33.796837, 21.245867>,  <37.359684, 34.349739, 20.805672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227428, 33.796837, 21.245867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598923, 33.923122, 21.323605>,  <37.821819, 33.998894, 21.370247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598923, 33.923122, 21.323605>,  <37.227428, 33.796837, 21.245867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598923, 33.923122, 21.323605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174745, -0.089545, 0.980534,
		0.326975, -0.944619, -0.027993,
		0.928737, 0.315718, 0.194346,
		37.877544, 34.017838, 21.381908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438858, 33.383121, 21.707352>,  <37.227428, 33.796837, 21.245867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438858, 33.383121, 21.707352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676651, 33.701603, 21.752352>,  <37.819328, 33.892693, 21.779352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676651, 33.701603, 21.752352>,  <37.438858, 33.383121, 21.707352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676651, 33.701603, 21.752352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159389, -0.020453, 0.987004,
		0.788154, -0.604687, 0.114747,
		0.594481, 0.796201, 0.112500,
		37.854996, 33.940464, 21.786102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947357, 33.219334, 22.227652>,  <37.438858, 33.383121, 21.707352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947357, 33.219334, 22.227652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893063, 33.614697, 22.200445>,  <37.860485, 33.851913, 22.184122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893063, 33.614697, 22.200445>,  <37.947357, 33.219334, 22.227652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893063, 33.614697, 22.200445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233331, 0.034828, 0.971773,
		0.962876, 0.147779, 0.225899,
		-0.135740, 0.988407, -0.068016,
		37.852341, 33.911217, 22.180040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223267, 33.393486, 22.860250>,  <37.947357, 33.219334, 22.227652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223267, 33.393486, 22.860250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001026, 33.706230, 22.747116>,  <37.867680, 33.893875, 22.679235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001026, 33.706230, 22.747116>,  <38.223267, 33.393486, 22.860250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001026, 33.706230, 22.747116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342675, 0.094607, 0.934678,
		0.757547, 0.616232, 0.215361,
		-0.555604, 0.781862, -0.282836,
		37.834347, 33.940788, 22.662266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276093, 33.778332, 23.493629>,  <38.223267, 33.393486, 22.860250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276093, 33.778332, 23.493629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001308, 33.975971, 23.280479>,  <37.836437, 34.094555, 23.152590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001308, 33.975971, 23.280479>,  <38.276093, 33.778332, 23.493629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001308, 33.975971, 23.280479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360013, 0.405582, 0.840175,
		0.631251, 0.769008, -0.100738,
		-0.686959, 0.494095, -0.532877,
		37.795219, 34.124199, 23.120617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236691, 34.447468, 23.852222>,  <38.276093, 33.778332, 23.493629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236691, 34.447468, 23.852222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900829, 34.391563, 23.642288>,  <37.699314, 34.358021, 23.516329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900829, 34.391563, 23.642288>,  <38.236691, 34.447468, 23.852222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900829, 34.391563, 23.642288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543073, 0.229319, 0.807765,
		0.007462, 0.963265, -0.268448,
		-0.839652, -0.139760, -0.524834,
		37.648933, 34.349636, 23.484838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970932, 35.002495, 23.856836>,  <38.236691, 34.447468, 23.852222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970932, 35.002495, 23.856836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679005, 34.733685, 23.806633>,  <37.503849, 34.572399, 23.776512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679005, 34.733685, 23.806633>,  <37.970932, 35.002495, 23.856836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679005, 34.733685, 23.806633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489437, 0.385434, 0.782235,
		-0.477308, 0.632314, -0.610210,
		-0.729814, -0.672026, -0.125508,
		37.460060, 34.532078, 23.768980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403259, 35.421093, 23.973696>,  <37.970932, 35.002495, 23.856836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403259, 35.421093, 23.973696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314629, 35.034042, 24.022038>,  <37.261448, 34.801811, 24.051043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314629, 35.034042, 24.022038>,  <37.403259, 35.421093, 23.973696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314629, 35.034042, 24.022038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556918, 0.227307, 0.798858,
		-0.800466, 0.109703, -0.589254,
		-0.221579, -0.967624, 0.120856,
		37.248154, 34.743755, 24.058294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695068, 35.411232, 24.144583>,  <37.403259, 35.421093, 23.973696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695068, 35.411232, 24.144583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822044, 35.050137, 24.260721>,  <36.898228, 34.833481, 24.330404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822044, 35.050137, 24.260721>,  <36.695068, 35.411232, 24.144583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822044, 35.050137, 24.260721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456665, 0.122811, 0.881121,
		-0.831078, -0.412291, -0.373264,
		0.317438, -0.902737, 0.290345,
		36.917274, 34.779316, 24.347824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083790, 35.055233, 24.290945>,  <36.695068, 35.411232, 24.144583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083790, 35.055233, 24.290945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368488, 34.884083, 24.513777>,  <36.539307, 34.781391, 24.647476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368488, 34.884083, 24.513777>,  <36.083790, 35.055233, 24.290945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368488, 34.884083, 24.513777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610228, 0.016157, 0.792061,
		-0.347905, -0.903693, -0.249602,
		0.711747, -0.427877, 0.557080,
		36.582012, 34.755718, 24.680901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769642, 34.802402, 24.820250>,  <36.083790, 35.055233, 24.290945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769642, 34.802402, 24.820250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144928, 34.764126, 24.953272>,  <36.370098, 34.741161, 25.033085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144928, 34.764126, 24.953272>,  <35.769642, 34.802402, 24.820250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144928, 34.764126, 24.953272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304181, 0.230170, 0.924390,
		-0.165000, -0.968434, 0.186842,
		0.938216, -0.095690, 0.332557,
		36.426392, 34.735420, 25.053040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726952, 34.434025, 25.441376>,  <35.769642, 34.802402, 24.820250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726952, 34.434025, 25.441376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085522, 34.609852, 25.463995>,  <36.300663, 34.715347, 25.477566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085522, 34.609852, 25.463995>,  <35.726952, 34.434025, 25.441376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085522, 34.609852, 25.463995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121604, 0.121263, 0.985144,
		0.426178, -0.889987, 0.162157,
		0.896429, 0.439565, 0.056546,
		36.354450, 34.741722, 25.480959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079811, 34.166378, 26.072536>,  <35.726952, 34.434025, 25.441376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079811, 34.166378, 26.072536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296398, 34.490475, 25.982803>,  <36.426350, 34.684933, 25.928963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296398, 34.490475, 25.982803>,  <36.079811, 34.166378, 26.072536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296398, 34.490475, 25.982803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054514, 0.232436, 0.971083,
		0.838952, -0.538040, 0.081688,
		0.541469, 0.810238, -0.224334,
		36.458839, 34.733547, 25.915503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682682, 34.084064, 26.457846>,  <36.079811, 34.166378, 26.072536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682682, 34.084064, 26.457846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641708, 34.474155, 26.379425>,  <36.617123, 34.708210, 26.332373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641708, 34.474155, 26.379425>,  <36.682682, 34.084064, 26.457846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641708, 34.474155, 26.379425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074619, 0.204065, 0.976110,
		0.991937, 0.085359, -0.093674,
		-0.102436, 0.975229, -0.196050,
		36.610977, 34.766724, 26.320610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366711, 34.413811, 26.743195>,  <36.682682, 34.084064, 26.457846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366711, 34.413811, 26.743195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089088, 34.697891, 26.696037>,  <36.922516, 34.868340, 26.667742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089088, 34.697891, 26.696037>,  <37.366711, 34.413811, 26.743195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089088, 34.697891, 26.696037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258561, 0.398745, 0.879857,
		0.671883, 0.580190, -0.460383,
		-0.694060, 0.710198, -0.117896,
		36.880871, 34.910950, 26.660669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626434, 34.960197, 27.156063>,  <37.366711, 34.413811, 26.743195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626434, 34.960197, 27.156063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245598, 35.073566, 27.110125>,  <37.017094, 35.141586, 27.082561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245598, 35.073566, 27.110125>,  <37.626434, 34.960197, 27.156063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245598, 35.073566, 27.110125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050794, 0.516904, 0.854535,
		0.301558, 0.807764, -0.506537,
		-0.952094, 0.283421, -0.114847,
		36.959969, 35.158592, 27.075670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620037, 35.720390, 27.371307>,  <37.626434, 34.960197, 27.156063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620037, 35.720390, 27.371307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254669, 35.560001, 27.399277>,  <37.035450, 35.463768, 27.416058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254669, 35.560001, 27.399277>,  <37.620037, 35.720390, 27.371307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254669, 35.560001, 27.399277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090844, 0.368293, 0.925261,
		-0.396757, 0.838797, -0.372831,
		-0.913417, -0.400973, 0.069923,
		36.980644, 35.439709, 27.420254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281136, 36.142563, 27.669846>,  <37.620037, 35.720390, 27.371307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281136, 36.142563, 27.669846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012894, 35.849834, 27.718378>,  <36.851948, 35.674198, 27.747498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012894, 35.849834, 27.718378>,  <37.281136, 36.142563, 27.669846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012894, 35.849834, 27.718378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256766, 0.382445, 0.887585,
		-0.695957, 0.564067, -0.444378,
		-0.670608, -0.731822, 0.121332,
		36.811710, 35.630287, 27.754778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659443, 36.440727, 27.932169>,  <37.281136, 36.142563, 27.669846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659443, 36.440727, 27.932169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633064, 36.049835, 28.012840>,  <36.617237, 35.815300, 28.061243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633064, 36.049835, 28.012840>,  <36.659443, 36.440727, 27.932169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633064, 36.049835, 28.012840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289579, 0.212162, 0.933344,
		-0.954880, 0.003145, -0.296975,
		-0.065943, -0.977230, 0.201679,
		36.613281, 35.756668, 28.073343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990643, 36.386402, 28.214394>,  <36.659443, 36.440727, 27.932169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990643, 36.386402, 28.214394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196072, 36.065090, 28.335045>,  <36.319328, 35.872303, 28.407436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196072, 36.065090, 28.335045>,  <35.990643, 36.386402, 28.214394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196072, 36.065090, 28.335045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353653, 0.122117, 0.927371,
		-0.781773, -0.582948, -0.221366,
		0.513576, -0.803280, 0.301629,
		36.350143, 35.824104, 28.425533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509682, 35.947437, 28.670200>,  <35.990643, 36.386402, 28.214394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509682, 35.947437, 28.670200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884983, 35.848557, 28.767012>,  <36.110165, 35.789227, 28.825098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884983, 35.848557, 28.767012>,  <35.509682, 35.947437, 28.670200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884983, 35.848557, 28.767012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259378, -0.039706, 0.964959,
		-0.228932, -0.968149, -0.101374,
		0.938250, -0.247205, 0.242027,
		36.166458, 35.774395, 28.839621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405701, 35.430965, 29.202488>,  <35.509682, 35.947437, 28.670200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405701, 35.430965, 29.202488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766537, 35.591423, 29.266129>,  <35.983040, 35.687698, 29.304314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766537, 35.591423, 29.266129>,  <35.405701, 35.430965, 29.202488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766537, 35.591423, 29.266129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144820, -0.065897, 0.987261,
		0.406516, -0.913643, -0.001352,
		0.902093, 0.401141, 0.159102,
		36.037167, 35.711765, 29.313860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542408, 35.086205, 29.798546>,  <35.405701, 35.430965, 29.202488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542408, 35.086205, 29.798546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826805, 35.366268, 29.772449>,  <35.997444, 35.534306, 29.756792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826805, 35.366268, 29.772449>,  <35.542408, 35.086205, 29.798546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826805, 35.366268, 29.772449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004161, 0.088590, 0.996059,
		0.703184, -0.708465, 0.060073,
		0.710995, 0.700163, -0.065243,
		36.040104, 35.576317, 29.752876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020779, 34.915989, 30.199686>,  <35.542408, 35.086205, 29.798546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020779, 34.915989, 30.199686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078979, 35.310814, 30.172728>,  <36.113899, 35.547707, 30.156551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078979, 35.310814, 30.172728>,  <36.020779, 34.915989, 30.199686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078979, 35.310814, 30.172728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321421, 0.017267, 0.946779,
		0.935691, -0.159423, -0.314749,
		0.145504, 0.987059, -0.067398,
		36.122631, 35.606934, 30.152508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651772, 34.998116, 30.458370>,  <36.020779, 34.915989, 30.199686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651772, 34.998116, 30.458370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456429, 35.346642, 30.477661>,  <36.339222, 35.555756, 30.489235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456429, 35.346642, 30.477661>,  <36.651772, 34.998116, 30.458370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456429, 35.346642, 30.477661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390411, 0.168726, 0.905047,
		0.780442, 0.460811, -0.422568,
		-0.488354, 0.871312, 0.048225,
		36.309921, 35.608036, 30.492128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087200, 35.282501, 30.830828>,  <36.651772, 34.998116, 30.458370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087200, 35.282501, 30.830828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773415, 35.526081, 30.877790>,  <36.585144, 35.672230, 30.905968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773415, 35.526081, 30.877790>,  <37.087200, 35.282501, 30.830828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773415, 35.526081, 30.877790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219962, 0.096197, 0.970754,
		0.579850, 0.787351, -0.209410,
		-0.784469, 0.608954, 0.117408,
		36.538074, 35.708767, 30.913013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360683, 35.780289, 31.309994>,  <37.087200, 35.282501, 30.830828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360683, 35.780289, 31.309994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960831, 35.789356, 31.303923>,  <36.720921, 35.794796, 31.300280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960831, 35.789356, 31.303923>,  <37.360683, 35.780289, 31.309994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960831, 35.789356, 31.303923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014051, 0.049001, 0.998700,
		0.023384, 0.998541, -0.048664,
		-0.999628, 0.022670, -0.015176,
		36.660942, 35.796158, 31.299370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034489, 35.993500, 31.359333>,  <37.360683, 35.780289, 31.309994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034489, 35.993500, 31.359333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292206, 36.274994, 31.479094>,  <38.446835, 36.443890, 31.550951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292206, 36.274994, 31.479094>,  <38.034489, 35.993500, 31.359333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292206, 36.274994, 31.479094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113500, 0.475139, -0.872560,
		-0.756311, 0.528200, 0.386002,
		0.644291, 0.703738, 0.299402,
		38.485493, 36.486115, 31.568914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720219, 36.556530, 31.193991>,  <38.034489, 35.993500, 31.359333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720219, 36.556530, 31.193991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111774, 36.635223, 31.216154>,  <38.346706, 36.682438, 31.229452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111774, 36.635223, 31.216154>,  <37.720219, 36.556530, 31.193991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111774, 36.635223, 31.216154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031230, 0.411883, -0.910702,
		-0.201984, 0.889747, 0.409332,
		0.978891, 0.196730, 0.055407,
		38.405441, 36.694241, 31.232777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786640, 37.143539, 30.908249>,  <37.720219, 36.556530, 31.193991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786640, 37.143539, 30.908249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163700, 37.010868, 30.893293>,  <38.389935, 36.931267, 30.884319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163700, 37.010868, 30.893293>,  <37.786640, 37.143539, 30.908249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163700, 37.010868, 30.893293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082224, 0.339321, -0.937070,
		0.323493, 0.880256, 0.347133,
		0.942651, -0.331678, -0.037390,
		38.446495, 36.911366, 30.882076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289356, 37.712597, 30.817627>,  <37.786640, 37.143539, 30.908249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289356, 37.712597, 30.817627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493523, 37.394573, 30.686565>,  <38.616020, 37.203758, 30.607929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493523, 37.394573, 30.686565>,  <38.289356, 37.712597, 30.817627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493523, 37.394573, 30.686565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099653, 0.433143, -0.895799,
		0.854136, 0.424575, 0.300312,
		0.510412, -0.795062, -0.327654,
		38.646645, 37.156055, 30.588270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889290, 37.952740, 30.413290>,  <38.289356, 37.712597, 30.817627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889290, 37.952740, 30.413290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854366, 37.574265, 30.288647>,  <38.833412, 37.347179, 30.213861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854366, 37.574265, 30.288647>,  <38.889290, 37.952740, 30.413290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854366, 37.574265, 30.288647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112519, 0.301433, -0.946825,
		0.989807, -0.117724, 0.080148,
		-0.087305, -0.946192, -0.311607,
		38.828175, 37.290405, 30.195166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445881, 37.820621, 29.831202>,  <38.889290, 37.952740, 30.413290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445881, 37.820621, 29.831202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203739, 37.503250, 29.805820>,  <39.058456, 37.312828, 29.790592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203739, 37.503250, 29.805820>,  <39.445881, 37.820621, 29.831202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203739, 37.503250, 29.805820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310970, -0.162367, -0.936448,
		0.732698, -0.586613, 0.345021,
		-0.605353, -0.793424, -0.063453,
		39.022133, 37.265224, 29.786785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889683, 37.347191, 29.466276>,  <39.445881, 37.820621, 29.831202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889683, 37.347191, 29.466276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506981, 37.241943, 29.416647>,  <39.277359, 37.178795, 29.386869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506981, 37.241943, 29.416647>,  <39.889683, 37.347191, 29.466276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506981, 37.241943, 29.416647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177167, -0.188740, -0.965914,
		0.230736, -0.946121, 0.227193,
		-0.956751, -0.263122, -0.124072,
		39.219955, 37.163006, 29.379425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876026, 36.725208, 29.090788>,  <39.889683, 37.347191, 29.466276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876026, 36.725208, 29.090788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528698, 36.915150, 29.033472>,  <39.320301, 37.029114, 28.999083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528698, 36.915150, 29.033472>,  <39.876026, 36.725208, 29.090788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528698, 36.915150, 29.033472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046632, -0.209454, -0.976706,
		-0.493802, -0.854778, 0.159731,
		-0.868323, 0.474851, -0.143289,
		39.268200, 37.057606, 28.990486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479008, 36.329376, 28.624985>,  <39.876026, 36.725208, 29.090788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479008, 36.329376, 28.624985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281601, 36.676220, 28.597954>,  <39.163158, 36.884327, 28.581736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281601, 36.676220, 28.597954>,  <39.479008, 36.329376, 28.624985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281601, 36.676220, 28.597954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114906, -0.142024, -0.983171,
		-0.862112, -0.477447, 0.169727,
		-0.493517, 0.867106, -0.067579,
		39.133545, 36.936352, 28.577681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013363, 36.290630, 28.174995>,  <39.479008, 36.329376, 28.624985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013363, 36.290630, 28.174995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001408, 36.687050, 28.122959>,  <38.994236, 36.924904, 28.091738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001408, 36.687050, 28.122959>,  <39.013363, 36.290630, 28.174995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001408, 36.687050, 28.122959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098082, -0.132427, -0.986328,
		-0.994730, -0.016718, 0.101162,
		-0.029886, 0.991052, -0.130090,
		38.992443, 36.984364, 28.083933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501606, 36.336048, 27.606354>,  <39.013363, 36.290630, 28.174995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501606, 36.336048, 27.606354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692322, 36.686573, 27.633888>,  <38.806751, 36.896889, 27.650410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692322, 36.686573, 27.633888>,  <38.501606, 36.336048, 27.606354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692322, 36.686573, 27.633888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210419, 0.189819, -0.959006,
		-0.853459, 0.442763, 0.274898,
		0.476793, 0.876316, 0.068837,
		38.835361, 36.949467, 27.654539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156876, 36.775822, 27.171738>,  <38.501606, 36.336048, 27.606354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156876, 36.775822, 27.171738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488495, 36.993687, 27.222368>,  <38.687466, 37.124405, 27.252747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488495, 36.993687, 27.222368>,  <38.156876, 36.775822, 27.171738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488495, 36.993687, 27.222368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044162, 0.289429, -0.956180,
		-0.557430, 0.787130, 0.264004,
		0.829049, 0.544663, 0.126575,
		38.737209, 37.157085, 27.260342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971752, 37.364830, 26.843985>,  <38.156876, 36.775822, 27.171738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971752, 37.364830, 26.843985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371708, 37.358849, 26.844963>,  <38.611679, 37.355259, 26.845551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371708, 37.358849, 26.844963>,  <37.971752, 37.364830, 26.843985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371708, 37.358849, 26.844963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006251, 0.259874, -0.965622,
		0.013807, 0.965527, 0.259938,
		0.999885, -0.014957, 0.002448,
		38.671673, 37.354362, 26.845697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183678, 38.025539, 26.456926>,  <37.971752, 37.364830, 26.843985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183678, 38.025539, 26.456926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480106, 37.758362, 26.429625>,  <38.657963, 37.598057, 26.413244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480106, 37.758362, 26.429625>,  <38.183678, 38.025539, 26.456926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480106, 37.758362, 26.429625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110501, 0.221603, -0.968856,
		0.662267, 0.710452, 0.238033,
		0.741075, -0.667944, -0.068255,
		38.702427, 37.557980, 26.409147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517605, 38.221676, 25.932585>,  <38.183678, 38.025539, 26.456926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517605, 38.221676, 25.932585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675285, 37.854515, 25.950756>,  <38.769894, 37.634220, 25.961658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675285, 37.854515, 25.950756>,  <38.517605, 38.221676, 25.932585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675285, 37.854515, 25.950756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184568, 0.030649, -0.982342,
		0.900299, 0.395628, 0.181496,
		0.394204, -0.917899, 0.045427,
		38.793545, 37.579144, 25.964384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210537, 38.202877, 25.461206>,  <38.517605, 38.221676, 25.932585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210537, 38.202877, 25.461206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101395, 37.818523, 25.480196>,  <39.035908, 37.587910, 25.491589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101395, 37.818523, 25.480196>,  <39.210537, 38.202877, 25.461206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101395, 37.818523, 25.480196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248046, -0.117942, -0.961542,
		0.929528, -0.250587, 0.270524,
		-0.272856, -0.960883, 0.047473,
		39.019539, 37.530258, 25.494438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685513, 37.910873, 24.944407>,  <39.210537, 38.202877, 25.461206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685513, 37.910873, 24.944407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384384, 37.656101, 25.010828>,  <39.203705, 37.503239, 25.050680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384384, 37.656101, 25.010828>,  <39.685513, 37.910873, 24.944407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384384, 37.656101, 25.010828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188117, -0.449948, -0.873017,
		0.630770, -0.625989, 0.458549,
		-0.752822, -0.636934, 0.166054,
		39.158539, 37.465023, 25.060644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902264, 37.195942, 24.881912>,  <39.685513, 37.910873, 24.944407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902264, 37.195942, 24.881912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510189, 37.162312, 24.810173>,  <39.274944, 37.142132, 24.767130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510189, 37.162312, 24.810173>,  <39.902264, 37.195942, 24.881912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510189, 37.162312, 24.810173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197968, -0.445725, -0.873005,
		-0.006540, -0.891213, 0.453539,
		-0.980187, -0.084077, -0.179347,
		39.216133, 37.137089, 24.756369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851280, 36.514866, 24.502008>,  <39.902264, 37.195942, 24.881912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851280, 36.514866, 24.502008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523045, 36.732155, 24.430967>,  <39.326103, 36.862530, 24.388342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523045, 36.732155, 24.430967>,  <39.851280, 36.514866, 24.502008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523045, 36.732155, 24.430967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026874, -0.347088, -0.937447,
		-0.570890, -0.764484, 0.299414,
		-0.820586, 0.543226, -0.177605,
		39.276867, 36.895123, 24.377686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285923, 36.083332, 24.284767>,  <39.851280, 36.514866, 24.502008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285923, 36.083332, 24.284767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205879, 36.436626, 24.115129>,  <39.157852, 36.648602, 24.013348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205879, 36.436626, 24.115129>,  <39.285923, 36.083332, 24.284767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205879, 36.436626, 24.115129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071434, -0.444850, -0.892752,
		-0.977165, -0.148357, 0.152113,
		-0.200114, 0.883232, -0.424094,
		39.145844, 36.701595, 23.987902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883110, 35.928940, 23.684158>,  <39.285923, 36.083332, 24.284767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883110, 35.928940, 23.684158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991249, 36.306568, 23.608641>,  <39.056133, 36.533146, 23.563330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991249, 36.306568, 23.608641>,  <38.883110, 35.928940, 23.684158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991249, 36.306568, 23.608641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265287, -0.261554, -0.928015,
		-0.925491, 0.200805, -0.321160,
		0.270351, 0.944069, -0.188795,
		39.072353, 36.589790, 23.552002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485313, 36.111061, 23.187803>,  <38.883110, 35.928940, 23.684158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485313, 36.111061, 23.187803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800499, 36.356808, 23.171488>,  <38.989609, 36.504257, 23.161699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800499, 36.356808, 23.171488>,  <38.485313, 36.111061, 23.187803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800499, 36.356808, 23.171488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240722, -0.368354, -0.897980,
		-0.566715, 0.697758, -0.438141,
		0.787964, 0.614370, -0.040786,
		39.036888, 36.541119, 23.159252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423454, 36.430874, 22.528240>,  <38.485313, 36.111061, 23.187803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423454, 36.430874, 22.528240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803047, 36.491627, 22.638773>,  <39.030804, 36.528080, 22.705093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803047, 36.491627, 22.638773>,  <38.423454, 36.430874, 22.528240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803047, 36.491627, 22.638773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305772, -0.229211, -0.924103,
		-0.077019, 0.961454, -0.263960,
		0.948985, 0.151885, 0.276332,
		39.087742, 36.537193, 22.721672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661255, 36.777840, 22.004095>,  <38.423454, 36.430874, 22.528240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661255, 36.777840, 22.004095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996422, 36.652096, 22.182566>,  <39.197521, 36.576649, 22.289648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996422, 36.652096, 22.182566>,  <38.661255, 36.777840, 22.004095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996422, 36.652096, 22.182566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430877, -0.120790, -0.894290,
		0.335019, 0.941589, 0.034237,
		0.837919, -0.314356, 0.446176,
		39.247799, 36.557789, 22.316418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216599, 36.987583, 21.566973>,  <38.661255, 36.777840, 22.004095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216599, 36.987583, 21.566973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372158, 36.704498, 21.802904>,  <39.465496, 36.534649, 21.944464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372158, 36.704498, 21.802904>,  <39.216599, 36.987583, 21.566973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372158, 36.704498, 21.802904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522761, -0.357659, -0.773822,
		0.758601, 0.609281, 0.230870,
		0.388902, -0.707712, 0.589829,
		39.488831, 36.492184, 21.979853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939133, 37.050560, 21.483536>,  <39.216599, 36.987583, 21.566973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939133, 37.050560, 21.483536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831295, 36.684803, 21.604332>,  <39.766594, 36.465347, 21.676809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831295, 36.684803, 21.604332>,  <39.939133, 37.050560, 21.483536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831295, 36.684803, 21.604332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720634, -0.399589, -0.566582,
		0.638753, 0.064878, 0.766672,
		-0.269595, -0.914396, 0.301992,
		39.750416, 36.410484, 21.694929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535976, 36.675861, 21.689346>,  <39.939133, 37.050560, 21.483536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535976, 36.675861, 21.689346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278801, 36.379326, 21.612358>,  <40.124496, 36.201405, 21.566166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278801, 36.379326, 21.612358>,  <40.535976, 36.675861, 21.689346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278801, 36.379326, 21.612358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726458, -0.510631, -0.459908,
		0.242667, -0.435514, 0.866856,
		-0.642940, -0.741339, -0.192470,
		40.085918, 36.156925, 21.554617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899338, 35.997066, 21.882835>,  <40.535976, 36.675861, 21.689346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899338, 35.997066, 21.882835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593067, 35.940990, 21.631731>,  <40.409306, 35.907345, 21.481070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593067, 35.940990, 21.631731>,  <40.899338, 35.997066, 21.882835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593067, 35.940990, 21.631731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592261, -0.534384, -0.603043,
		-0.250923, -0.833534, 0.492197,
		-0.765679, -0.140192, -0.627759,
		40.363365, 35.898933, 21.443403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039833, 35.360352, 21.710243>,  <40.899338, 35.997066, 21.882835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039833, 35.360352, 21.710243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770935, 35.462261, 21.432199>,  <40.609596, 35.523407, 21.265373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770935, 35.462261, 21.432199>,  <41.039833, 35.360352, 21.710243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770935, 35.462261, 21.432199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519712, -0.506274, -0.688176,
		-0.527241, -0.823881, 0.207935,
		-0.672247, 0.254768, -0.695109,
		40.569260, 35.538692, 21.223667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889622, 34.800072, 21.300257>,  <41.039833, 35.360352, 21.710243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889622, 34.800072, 21.300257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799362, 35.100693, 21.052305>,  <40.745205, 35.281067, 20.903534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799362, 35.100693, 21.052305>,  <40.889622, 34.800072, 21.300257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799362, 35.100693, 21.052305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605361, -0.390363, -0.693652,
		-0.763295, -0.531774, -0.366875,
		-0.225652, 0.751553, -0.619878,
		40.731667, 35.326160, 20.866343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830502, 34.456429, 20.681391>,  <40.889622, 34.800072, 21.300257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830502, 34.456429, 20.681391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849224, 34.841732, 20.575607>,  <40.860458, 35.072914, 20.512136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849224, 34.841732, 20.575607>,  <40.830502, 34.456429, 20.681391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849224, 34.841732, 20.575607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465872, -0.255242, -0.847239,
		-0.883613, -0.083552, -0.460702,
		0.046802, 0.963261, -0.264459,
		40.863266, 35.130711, 20.496269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696594, 34.442032, 19.902683>,  <40.830502, 34.456429, 20.681391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696594, 34.442032, 19.902683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894402, 34.774490, 20.004381>,  <41.013084, 34.973965, 20.065399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894402, 34.774490, 20.004381>,  <40.696594, 34.442032, 19.902683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894402, 34.774490, 20.004381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589604, -0.105866, -0.800724,
		-0.638606, 0.545878, -0.542402,
		0.494520, 0.831150, 0.254245,
		41.042759, 35.023834, 20.080654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715359, 34.801739, 19.331423>,  <40.696594, 34.442032, 19.902683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715359, 34.801739, 19.331423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019672, 34.968597, 19.530298>,  <41.202259, 35.068714, 19.649624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019672, 34.968597, 19.530298>,  <40.715359, 34.801739, 19.331423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019672, 34.968597, 19.530298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578179, -0.087628, -0.811191,
		-0.294817, 0.904606, -0.307851,
		0.760784, 0.417145, 0.497190,
		41.247906, 35.093742, 19.679455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072159, 35.251095, 18.862600>,  <40.715359, 34.801739, 19.331423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072159, 35.251095, 18.862600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353802, 35.218945, 19.144812>,  <41.522789, 35.199654, 19.314138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353802, 35.218945, 19.144812>,  <41.072159, 35.251095, 18.862600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353802, 35.218945, 19.144812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672948, -0.241611, -0.699117,
		0.226658, 0.967038, -0.116030,
		0.704107, -0.080378, 0.705530,
		41.565033, 35.194832, 19.356470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600288, 35.582542, 18.576704>,  <41.072159, 35.251095, 18.862600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600288, 35.582542, 18.576704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728935, 35.312325, 18.842094>,  <41.806122, 35.150192, 19.001329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728935, 35.312325, 18.842094>,  <41.600288, 35.582542, 18.576704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728935, 35.312325, 18.842094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660252, -0.342250, -0.668530,
		0.678697, 0.653072, 0.335958,
		0.321616, -0.675546, 0.663476,
		41.825420, 35.109661, 19.041138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279640, 35.525612, 18.506918>,  <41.600288, 35.582542, 18.576704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279640, 35.525612, 18.506918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234825, 35.185429, 18.712509>,  <42.207935, 34.981319, 18.835863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234825, 35.185429, 18.712509>,  <42.279640, 35.525612, 18.506918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234825, 35.185429, 18.712509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561062, -0.481041, -0.673654,
		0.820156, 0.212896, 0.531055,
		-0.112041, -0.850456, 0.513976,
		42.201214, 34.930290, 18.866701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859333, 35.261646, 18.392591>,  <42.279640, 35.525612, 18.506918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859333, 35.261646, 18.392591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645195, 34.948593, 18.519651>,  <42.516712, 34.760761, 18.595886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645195, 34.948593, 18.519651>,  <42.859333, 35.261646, 18.392591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645195, 34.948593, 18.519651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551771, -0.608786, -0.570025,
		0.639498, -0.129890, 0.757741,
		-0.535342, -0.782630, 0.317648,
		42.484592, 34.713806, 18.614946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401585, 34.841316, 18.421865>,  <42.859333, 35.261646, 18.392591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401585, 34.841316, 18.421865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081799, 34.601414, 18.435371>,  <42.889927, 34.457474, 18.443474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081799, 34.601414, 18.435371>,  <43.401585, 34.841316, 18.421865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081799, 34.601414, 18.435371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389763, -0.560676, -0.730567,
		0.457093, -0.570906, 0.682006,
		-0.799470, -0.599757, 0.033763,
		42.841957, 34.421486, 18.445499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501324, 34.113972, 18.594408>,  <43.401585, 34.841316, 18.421865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501324, 34.113972, 18.594408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174519, 34.146893, 18.366121>,  <42.978436, 34.166645, 18.229149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174519, 34.146893, 18.366121>,  <43.501324, 34.113972, 18.594408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174519, 34.146893, 18.366121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442907, -0.544194, -0.712522,
		-0.369222, -0.834913, 0.408161,
		-0.817012, 0.082301, -0.570717,
		42.929417, 34.171581, 18.194906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211464, 34.197647, 18.337610>,  <43.501324, 34.113972, 18.594408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211464, 34.197647, 18.337610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523586, 34.433414, 18.421238>,  <44.710861, 34.574875, 18.471415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523586, 34.433414, 18.421238>,  <44.211464, 34.197647, 18.337610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523586, 34.433414, 18.421238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179927, -0.108584, 0.977669,
		0.598957, -0.800498, 0.021323,
		0.780306, 0.589417, 0.209068,
		44.757679, 34.610241, 18.483959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594589, 33.910480, 18.983099>,  <44.211464, 34.197647, 18.337610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594589, 33.910480, 18.983099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.648914, 34.305664, 18.953470>,  <44.681511, 34.542774, 18.935694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.648914, 34.305664, 18.953470>,  <44.594589, 33.910480, 18.983099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.648914, 34.305664, 18.953470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071859, 0.084392, 0.993838,
		0.988124, -0.129657, 0.082456,
		0.135817, 0.987961, -0.074073,
		44.689659, 34.602051, 18.931248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092850, 34.143333, 19.684673>,  <44.594589, 33.910480, 18.983099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092850, 34.143333, 19.684673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927135, 34.474724, 19.533947>,  <44.827709, 34.673557, 19.443512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927135, 34.474724, 19.533947>,  <45.092850, 34.143333, 19.684673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927135, 34.474724, 19.533947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265779, 0.285849, 0.920680,
		0.870478, 0.481571, 0.101770,
		-0.414282, 0.828480, -0.376817,
		44.802853, 34.723267, 19.420902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308628, 34.683449, 20.157202>,  <45.092850, 34.143333, 19.684673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308628, 34.683449, 20.157202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986992, 34.788769, 19.943993>,  <44.794010, 34.851959, 19.816067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986992, 34.788769, 19.943993>,  <45.308628, 34.683449, 20.157202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986992, 34.788769, 19.943993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475820, 0.252498, 0.842520,
		0.356423, 0.931084, -0.077747,
		-0.804088, 0.263300, -0.533025,
		44.745766, 34.867760, 19.784084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135651, 35.387409, 20.403055>,  <45.308628, 34.683449, 20.157202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135651, 35.387409, 20.403055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797962, 35.229774, 20.257736>,  <44.595348, 35.135193, 20.170546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797962, 35.229774, 20.257736>,  <45.135651, 35.387409, 20.403055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797962, 35.229774, 20.257736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499130, 0.330992, 0.800820,
		-0.195345, 0.857402, -0.476132,
		-0.844221, -0.394088, -0.363298,
		44.544697, 35.111549, 20.148746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654900, 35.823200, 20.677208>,  <45.135651, 35.387409, 20.403055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654900, 35.823200, 20.677208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427185, 35.512852, 20.568441>,  <44.290554, 35.326645, 20.503181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427185, 35.512852, 20.568441>,  <44.654900, 35.823200, 20.677208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427185, 35.512852, 20.568441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703745, 0.288890, 0.649066,
		-0.425035, 0.560867, -0.710475,
		-0.569288, -0.775868, -0.271918,
		44.256397, 35.280090, 20.486866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932316, 36.051205, 20.701817>,  <44.654900, 35.823200, 20.677208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932316, 36.051205, 20.701817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881710, 35.655819, 20.735134>,  <43.851345, 35.418587, 20.755125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881710, 35.655819, 20.735134>,  <43.932316, 36.051205, 20.701817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881710, 35.655819, 20.735134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701330, 0.148515, 0.697194,
		-0.701520, 0.029788, -0.712027,
		-0.126515, -0.988461, 0.083295,
		43.843754, 35.359280, 20.760122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228886, 35.932377, 20.743700>,  <43.932316, 36.051205, 20.701817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228886, 35.932377, 20.743700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377258, 35.603573, 20.916542>,  <43.466282, 35.406292, 21.020247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377258, 35.603573, 20.916542>,  <43.228886, 35.932377, 20.743700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377258, 35.603573, 20.916542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542541, 0.185818, 0.819220,
		-0.753698, -0.538307, -0.377048,
		0.370929, -0.822008, 0.432104,
		43.488537, 35.356972, 21.046173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708424, 35.758587, 21.149473>,  <43.228886, 35.932377, 20.743700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708424, 35.758587, 21.149473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996830, 35.520836, 21.291933>,  <43.169876, 35.378185, 21.377409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996830, 35.520836, 21.291933>,  <42.708424, 35.758587, 21.149473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996830, 35.520836, 21.291933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467087, -0.037258, 0.883426,
		-0.511821, -0.803321, -0.304491,
		0.721019, -0.594380, 0.356151,
		43.213135, 35.342522, 21.398779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388279, 35.218304, 21.489172>,  <42.708424, 35.758587, 21.149473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388279, 35.218304, 21.489172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757080, 35.269279, 21.635416>,  <42.978359, 35.299866, 21.723162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757080, 35.269279, 21.635416>,  <42.388279, 35.218304, 21.489172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757080, 35.269279, 21.635416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381145, 0.132631, 0.914952,
		0.068106, -0.982939, 0.170858,
		0.922003, 0.127435, 0.365609,
		43.033680, 35.307510, 21.745098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299973, 35.067623, 22.126242>,  <42.388279, 35.218304, 21.489172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299973, 35.067623, 22.126242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664871, 35.230942, 22.139568>,  <42.883808, 35.328934, 22.147564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664871, 35.230942, 22.139568>,  <42.299973, 35.067623, 22.126242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664871, 35.230942, 22.139568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170686, 0.304912, 0.936961,
		0.372397, -0.860422, 0.347843,
		0.912243, 0.408294, 0.033314,
		42.938545, 35.353428, 22.149563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587074, 34.816761, 22.741213>,  <42.299973, 35.067623, 22.126242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587074, 34.816761, 22.741213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790310, 35.151199, 22.658476>,  <42.912251, 35.351864, 22.608833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790310, 35.151199, 22.658476>,  <42.587074, 34.816761, 22.741213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790310, 35.151199, 22.658476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188740, 0.342394, 0.920404,
		0.840370, -0.428609, 0.331772,
		0.508090, 0.836098, -0.206842,
		42.942738, 35.402027, 22.596424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099911, 34.900536, 23.345890>,  <42.587074, 34.816761, 22.741213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099911, 34.900536, 23.345890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040142, 35.251152, 23.162868>,  <43.004280, 35.461521, 23.053057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040142, 35.251152, 23.162868>,  <43.099911, 34.900536, 23.345890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040142, 35.251152, 23.162868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180250, 0.430846, 0.884241,
		0.972205, 0.214602, 0.093616,
		-0.149426, 0.876537, -0.457552,
		42.995316, 35.514114, 23.025602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452694, 35.389091, 23.801552>,  <43.099911, 34.900536, 23.345890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452694, 35.389091, 23.801552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173843, 35.576466, 23.584450>,  <43.006535, 35.688892, 23.454189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173843, 35.576466, 23.584450>,  <43.452694, 35.389091, 23.801552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173843, 35.576466, 23.584450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308080, 0.487850, 0.816755,
		0.647382, 0.736592, -0.195776,
		-0.697125, 0.468438, -0.542755,
		42.964706, 35.716995, 23.421623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476978, 35.983135, 24.137190>,  <43.452694, 35.389091, 23.801552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476978, 35.983135, 24.137190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137428, 36.012371, 23.927780>,  <42.933701, 36.029915, 23.802135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137428, 36.012371, 23.927780>,  <43.476978, 35.983135, 24.137190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137428, 36.012371, 23.927780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397544, 0.564474, 0.723414,
		0.348392, 0.822208, -0.450108,
		-0.848871, 0.073093, -0.523522,
		42.882767, 36.034298, 23.770723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296898, 36.627335, 24.125959>,  <43.476978, 35.983135, 24.137190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296898, 36.627335, 24.125959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940228, 36.456406, 24.066223>,  <42.726223, 36.353848, 24.030382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940228, 36.456406, 24.066223>,  <43.296898, 36.627335, 24.125959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940228, 36.456406, 24.066223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351320, 0.445258, 0.823602,
		-0.285451, 0.786854, -0.547154,
		-0.891679, -0.427324, -0.149338,
		42.672722, 36.328209, 24.021421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683353, 37.166622, 24.143244>,  <43.296898, 36.627335, 24.125959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683353, 37.166622, 24.143244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515102, 36.812649, 24.223215>,  <42.414150, 36.600266, 24.271198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515102, 36.812649, 24.223215>,  <42.683353, 37.166622, 24.143244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515102, 36.812649, 24.223215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385126, 0.373699, 0.843817,
		-0.821431, 0.277937, -0.497998,
		-0.420629, -0.884930, 0.199927,
		42.388912, 36.547169, 24.283194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865162, 37.328411, 24.205633>,  <42.683353, 37.166622, 24.143244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865162, 37.328411, 24.205633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967686, 36.990322, 24.393209>,  <42.029202, 36.787468, 24.505756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967686, 36.990322, 24.393209>,  <41.865162, 37.328411, 24.205633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967686, 36.990322, 24.393209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586955, 0.249361, 0.770261,
		-0.767977, -0.472675, -0.432192,
		0.256311, -0.845220, 0.468943,
		42.044579, 36.736755, 24.533892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254684, 37.239445, 24.595436>,  <41.865162, 37.328411, 24.205633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254684, 37.239445, 24.595436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542843, 37.005859, 24.745111>,  <41.715736, 36.865707, 24.834917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542843, 37.005859, 24.745111>,  <41.254684, 37.239445, 24.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542843, 37.005859, 24.745111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290418, 0.235951, 0.927354,
		-0.629835, -0.776729, 0.000383,
		0.720393, -0.583968, 0.374186,
		41.758961, 36.830669, 24.857367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895985, 36.791473, 25.108578>,  <41.254684, 37.239445, 24.595436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895985, 36.791473, 25.108578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280357, 36.768345, 25.216846>,  <41.510983, 36.754467, 25.281807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280357, 36.768345, 25.216846>,  <40.895985, 36.791473, 25.108578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280357, 36.768345, 25.216846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252334, 0.218791, 0.942581,
		-0.113726, -0.974057, 0.195652,
		0.960934, -0.057826, 0.270670,
		41.568638, 36.750999, 25.298048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867477, 36.560940, 25.738001>,  <40.895985, 36.791473, 25.108578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867477, 36.560940, 25.738001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229984, 36.728832, 25.717997>,  <41.447491, 36.829567, 25.705994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229984, 36.728832, 25.717997>,  <40.867477, 36.560940, 25.738001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229984, 36.728832, 25.717997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108934, 0.346228, 0.931805,
		0.408427, -0.839016, 0.359499,
		0.906268, 0.419736, -0.050012,
		41.501865, 36.854752, 25.702993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276493, 36.296410, 26.359791>,  <40.867477, 36.560940, 25.738001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276493, 36.296410, 26.359791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466164, 36.619408, 26.219442>,  <41.579967, 36.813206, 26.135233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466164, 36.619408, 26.219442>,  <41.276493, 36.296410, 26.359791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466164, 36.619408, 26.219442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023892, 0.386577, 0.921948,
		0.880105, -0.445550, 0.164014,
		0.474177, 0.807492, -0.350873,
		41.608418, 36.861656, 26.114180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900074, 36.290855, 26.764380>,  <41.276493, 36.296410, 26.359791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900074, 36.290855, 26.764380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817886, 36.645786, 26.599245>,  <41.768574, 36.858746, 26.500164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817886, 36.645786, 26.599245>,  <41.900074, 36.290855, 26.764380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817886, 36.645786, 26.599245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051352, 0.431030, 0.900875,
		0.977316, 0.163900, -0.134129,
		-0.205467, 0.887328, -0.412835,
		41.756245, 36.911983, 26.475395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212227, 36.627739, 27.279972>,  <41.900074, 36.290855, 26.764380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212227, 36.627739, 27.279972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995781, 36.888557, 27.067545>,  <41.865913, 37.045048, 26.940088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995781, 36.888557, 27.067545>,  <42.212227, 36.627739, 27.279972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995781, 36.888557, 27.067545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109530, 0.571485, 0.813270,
		0.833787, 0.498239, -0.237820,
		-0.541113, 0.652045, -0.531069,
		41.833447, 37.084171, 26.908224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364193, 37.244492, 27.507185>,  <42.212227, 36.627739, 27.279972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364193, 37.244492, 27.507185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010998, 37.345360, 27.348820>,  <41.799080, 37.405880, 27.253801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010998, 37.345360, 27.348820>,  <42.364193, 37.244492, 27.507185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010998, 37.345360, 27.348820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097821, 0.726069, 0.680628,
		0.459096, 0.639713, -0.616440,
		-0.882985, 0.252173, -0.395913,
		41.746101, 37.421013, 27.230045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290188, 38.063705, 27.300024>,  <42.364193, 37.244492, 27.507185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290188, 38.063705, 27.300024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949047, 37.878574, 27.396717>,  <41.744362, 37.767494, 27.454733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949047, 37.878574, 27.396717>,  <42.290188, 38.063705, 27.300024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949047, 37.878574, 27.396717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229944, 0.748547, 0.621936,
		-0.468797, 0.474834, -0.744823,
		-0.852852, -0.462829, 0.241731,
		41.693192, 37.739727, 27.469236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958290, 38.632160, 27.749743>,  <42.290188, 38.063705, 27.300024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958290, 38.632160, 27.749743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708988, 38.326260, 27.815111>,  <41.559406, 38.142719, 27.854332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708988, 38.326260, 27.815111>,  <41.958290, 38.632160, 27.749743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708988, 38.326260, 27.815111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350791, 0.460174, 0.815589,
		-0.698926, 0.450994, -0.555074,
		-0.623256, -0.764751, 0.163423,
		41.522011, 38.096832, 27.864138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267727, 38.867043, 27.784472>,  <41.958290, 38.632160, 27.749743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267727, 38.867043, 27.784472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336231, 38.540661, 28.005335>,  <41.377335, 38.344830, 28.137854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336231, 38.540661, 28.005335>,  <41.267727, 38.867043, 27.784472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336231, 38.540661, 28.005335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207130, 0.518094, 0.829865,
		-0.963206, -0.256495, -0.080278,
		0.171264, -0.815958, 0.552159,
		41.387611, 38.295872, 28.170982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790321, 38.960102, 28.370840>,  <41.267727, 38.867043, 27.784472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790321, 38.960102, 28.370840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036007, 38.668236, 28.491058>,  <41.183418, 38.493114, 28.563189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036007, 38.668236, 28.491058>,  <40.790321, 38.960102, 28.370840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036007, 38.668236, 28.491058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175101, 0.245343, 0.953492,
		-0.769468, -0.638273, 0.022928,
		0.614213, -0.729667, 0.300546,
		41.220272, 38.449337, 28.581223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497204, 38.736099, 28.962727>,  <40.790321, 38.960102, 28.370840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497204, 38.736099, 28.962727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875237, 38.606236, 28.977772>,  <41.102058, 38.528316, 28.986799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875237, 38.606236, 28.977772>,  <40.497204, 38.736099, 28.962727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875237, 38.606236, 28.977772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034807, 0.214419, 0.976121,
		-0.324969, -0.921207, 0.213945,
		0.945084, -0.324656, 0.037615,
		41.158760, 38.508839, 28.989056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527851, 38.306145, 29.500433>,  <40.497204, 38.736099, 28.962727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527851, 38.306145, 29.500433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908123, 38.419834, 29.450756>,  <41.136288, 38.488049, 29.420950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908123, 38.419834, 29.450756>,  <40.527851, 38.306145, 29.500433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908123, 38.419834, 29.450756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134617, -0.017363, 0.990746,
		0.279441, -0.958600, -0.054768,
		0.950679, 0.284228, -0.124192,
		41.193325, 38.505104, 29.413498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885086, 38.010002, 30.136040>,  <40.527851, 38.306145, 29.500433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885086, 38.010002, 30.136040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133446, 38.286598, 29.988348>,  <41.282463, 38.452557, 29.899733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133446, 38.286598, 29.988348>,  <40.885086, 38.010002, 30.136040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133446, 38.286598, 29.988348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241600, 0.279283, 0.929317,
		0.745729, -0.666220, 0.006344,
		0.620901, 0.691486, -0.369228,
		41.319717, 38.494045, 29.877581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499493, 37.989693, 30.621202>,  <40.885086, 38.010002, 30.136040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499493, 37.989693, 30.621202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515999, 38.341255, 30.431124>,  <41.525902, 38.552193, 30.317076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515999, 38.341255, 30.431124>,  <41.499493, 37.989693, 30.621202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515999, 38.341255, 30.431124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305932, 0.441644, 0.843419,
		0.951159, -0.180183, -0.250662,
		0.041266, 0.878911, -0.475198,
		41.528378, 38.604927, 30.288565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153320, 38.257721, 30.779387>,  <41.499493, 37.989693, 30.621202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153320, 38.257721, 30.779387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915707, 38.561878, 30.674368>,  <41.773140, 38.744373, 30.611357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915707, 38.561878, 30.674368>,  <42.153320, 38.257721, 30.779387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915707, 38.561878, 30.674368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207192, 0.459981, 0.863417,
		0.777302, 0.458499, -0.430791,
		-0.594031, 0.760392, -0.262547,
		41.737495, 38.789997, 30.595604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497383, 38.923523, 30.859636>,  <42.153320, 38.257721, 30.779387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497383, 38.923523, 30.859636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120224, 39.056641, 30.854023>,  <41.893929, 39.136509, 30.850655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120224, 39.056641, 30.854023>,  <42.497383, 38.923523, 30.859636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120224, 39.056641, 30.854023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233246, 0.689762, 0.685438,
		0.237787, 0.643023, -0.727996,
		-0.942897, 0.332790, -0.014034,
		41.837357, 39.156479, 30.849813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581001, 39.561321, 30.888271>,  <42.497383, 38.923523, 30.859636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581001, 39.561321, 30.888271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197765, 39.504467, 30.987764>,  <41.967823, 39.470356, 31.047461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197765, 39.504467, 30.987764>,  <42.581001, 39.561321, 30.888271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197765, 39.504467, 30.987764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114188, 0.606820, 0.786594,
		-0.262737, 0.782028, -0.565156,
		-0.958087, -0.142133, 0.248732,
		41.910339, 39.461826, 31.062384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253677, 40.213146, 30.989290>,  <42.581001, 39.561321, 30.888271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253677, 40.213146, 30.989290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025463, 39.956902, 31.194857>,  <41.888535, 39.803154, 31.318197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025463, 39.956902, 31.194857>,  <42.253677, 40.213146, 30.989290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025463, 39.956902, 31.194857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039292, 0.603748, 0.796206,
		-0.820333, 0.474457, -0.319288,
		-0.570535, -0.640609, 0.513917,
		41.854301, 39.764717, 31.349031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757275, 40.579002, 31.222668>,  <42.253677, 40.213146, 30.989290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757275, 40.579002, 31.222668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766808, 40.248234, 31.447395>,  <41.772526, 40.049774, 31.582232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766808, 40.248234, 31.447395>,  <41.757275, 40.579002, 31.222668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766808, 40.248234, 31.447395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037017, 0.562322, 0.826090,
		-0.999030, 0.001109, 0.044012,
		0.023833, -0.826918, 0.561817,
		41.773956, 40.000160, 31.615940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425320, 40.720272, 31.763475>,  <41.757275, 40.579002, 31.222668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425320, 40.720272, 31.763475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644505, 40.424248, 31.919449>,  <41.776016, 40.246632, 32.013031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644505, 40.424248, 31.919449>,  <41.425320, 40.720272, 31.763475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644505, 40.424248, 31.919449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057593, 0.498417, 0.865022,
		-0.834519, -0.451541, 0.315735,
		0.547961, -0.740062, 0.389933,
		41.808891, 40.202229, 32.036430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112171, 40.585316, 32.350586>,  <41.425320, 40.720272, 31.763475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112171, 40.585316, 32.350586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475967, 40.422127, 32.382542>,  <41.694244, 40.324215, 32.401714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475967, 40.422127, 32.382542>,  <41.112171, 40.585316, 32.350586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475967, 40.422127, 32.382542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104847, 0.411063, 0.905557,
		-0.402280, -0.815222, 0.416634,
		0.909493, -0.407971, 0.079889,
		41.748814, 40.299736, 32.406509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185032, 40.380100, 33.028385>,  <41.112171, 40.585316, 32.350586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185032, 40.380100, 33.028385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569893, 40.377258, 32.919422>,  <41.800812, 40.375553, 32.854046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569893, 40.377258, 32.919422>,  <41.185032, 40.380100, 33.028385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569893, 40.377258, 32.919422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255138, 0.374572, 0.891404,
		0.095705, -0.927171, 0.362208,
		0.962156, -0.007101, -0.272404,
		41.858540, 40.375130, 32.837700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593357, 39.980717, 33.564613>,  <41.185032, 40.380100, 33.028385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593357, 39.980717, 33.564613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853035, 40.220901, 33.377853>,  <42.008842, 40.365013, 33.265797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853035, 40.220901, 33.377853>,  <41.593357, 39.980717, 33.564613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853035, 40.220901, 33.377853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327070, 0.333822, 0.884074,
		0.686713, -0.726645, 0.020323,
		0.649192, 0.600458, -0.466904,
		42.047794, 40.401039, 33.237782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086514, 40.189121, 34.148819>,  <41.593357, 39.980717, 33.564613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086514, 40.189121, 34.148819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346352, 40.281925, 33.859211>,  <42.502254, 40.337608, 33.685448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346352, 40.281925, 33.859211>,  <42.086514, 40.189121, 34.148819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346352, 40.281925, 33.859211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553116, 0.509153, 0.659414,
		0.521623, -0.828817, 0.202417,
		0.649594, 0.232006, -0.724017,
		42.541229, 40.351528, 33.642006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813950, 39.991627, 34.316902>,  <42.086514, 40.189121, 34.148819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813950, 39.991627, 34.316902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697895, 40.322784, 34.124901>,  <42.628262, 40.521481, 34.009701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697895, 40.322784, 34.124901>,  <42.813950, 39.991627, 34.316902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697895, 40.322784, 34.124901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305949, 0.555504, 0.773182,
		0.906761, 0.077472, -0.414467,
		-0.290138, 0.827897, -0.480006,
		42.610855, 40.571152, 33.980900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378483, 40.517811, 34.450813>,  <42.813950, 39.991627, 34.316902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378483, 40.517811, 34.450813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064259, 40.735249, 34.332561>,  <42.875725, 40.865711, 34.261608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064259, 40.735249, 34.332561>,  <43.378483, 40.517811, 34.450813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064259, 40.735249, 34.332561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267843, 0.729398, 0.629475,
		0.557816, 0.415307, -0.718584,
		-0.785559, 0.543598, -0.295633,
		42.828590, 40.898327, 34.243874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619213, 41.052692, 34.097847>,  <43.378483, 40.517811, 34.450813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619213, 41.052692, 34.097847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269836, 41.163681, 34.257900>,  <43.060211, 41.230274, 34.353931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269836, 41.163681, 34.257900>,  <43.619213, 41.052692, 34.097847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269836, 41.163681, 34.257900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485077, 0.567423, 0.665381,
		-0.042423, 0.775268, -0.630206,
		-0.873442, 0.277471, 0.400136,
		43.007805, 41.246922, 34.377941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670605, 41.830315, 34.345470>,  <43.619213, 41.052692, 34.097847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670605, 41.830315, 34.345470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347805, 41.682259, 34.529533>,  <43.154125, 41.593426, 34.639973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347805, 41.682259, 34.529533>,  <43.670605, 41.830315, 34.345470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347805, 41.682259, 34.529533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179658, 0.588390, 0.788365,
		-0.562557, 0.718883, -0.408334,
		-0.807002, -0.370140, 0.460156,
		43.105705, 41.571217, 34.667580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578831, 42.430077, 34.663937>,  <43.670605, 41.830315, 34.345470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578831, 42.430077, 34.663937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375473, 42.130867, 34.834579>,  <43.253460, 41.951340, 34.936966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375473, 42.130867, 34.834579>,  <43.578831, 42.430077, 34.663937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375473, 42.130867, 34.834579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148017, 0.412123, 0.899025,
		-0.848308, 0.520203, -0.098800,
		-0.508393, -0.748026, 0.426606,
		43.222954, 41.906460, 34.962563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081089, 42.694069, 35.201118>,  <43.578831, 42.430077, 34.663937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081089, 42.694069, 35.201118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119614, 42.309631, 35.304676>,  <43.142731, 42.078968, 35.366810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119614, 42.309631, 35.304676>,  <43.081089, 42.694069, 35.201118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119614, 42.309631, 35.304676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197341, 0.273375, 0.941447,
		-0.975592, -0.039586, 0.215994,
		0.096316, -0.961093, 0.258890,
		43.148510, 42.021305, 35.382343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745197, 42.548164, 35.811726>,  <43.081089, 42.694069, 35.201118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745197, 42.548164, 35.811726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007214, 42.245941, 35.814880>,  <43.164421, 42.064610, 35.816772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007214, 42.245941, 35.814880>,  <42.745197, 42.548164, 35.811726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007214, 42.245941, 35.814880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096926, 0.094378, 0.990807,
		-0.749354, -0.648250, 0.135053,
		0.655037, -0.755556, 0.007890,
		43.203724, 42.019276, 35.817249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502987, 42.060757, 36.321033>,  <42.745197, 42.548164, 35.811726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502987, 42.060757, 36.321033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887539, 41.979355, 36.246910>,  <43.118271, 41.930515, 36.202435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887539, 41.979355, 36.246910>,  <42.502987, 42.060757, 36.321033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887539, 41.979355, 36.246910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109555, -0.334703, 0.935933,
		-0.252489, -0.920087, -0.299481,
		0.961378, -0.203503, -0.185309,
		43.175953, 41.918304, 36.191319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654289, 41.421551, 36.613750>,  <42.502987, 42.060757, 36.321033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654289, 41.421551, 36.613750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025188, 41.567005, 36.578011>,  <43.247726, 41.654278, 36.556568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025188, 41.567005, 36.578011>,  <42.654289, 41.421551, 36.613750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025188, 41.567005, 36.578011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164018, -0.179915, 0.969912,
		0.336623, -0.914000, -0.226468,
		0.927245, 0.363639, -0.089349,
		43.303364, 41.676098, 36.551205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212383, 40.941990, 36.994877>,  <42.654289, 41.421551, 36.613750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212383, 40.941990, 36.994877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384468, 41.301647, 36.962746>,  <43.487720, 41.517441, 36.943466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384468, 41.301647, 36.962746>,  <43.212383, 40.941990, 36.994877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384468, 41.301647, 36.962746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256247, -0.036317, 0.965929,
		0.865595, -0.436137, -0.246027,
		0.430213, 0.899147, -0.080323,
		43.513531, 41.571392, 36.938648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918480, 41.017948, 37.191227>,  <43.212383, 40.941990, 36.994877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918480, 41.017948, 37.191227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744606, 41.370235, 37.266472>,  <43.640282, 41.581608, 37.311619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744606, 41.370235, 37.266472>,  <43.918480, 41.017948, 37.191227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744606, 41.370235, 37.266472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232365, -0.092125, 0.968256,
		0.870090, 0.464596, -0.164602,
		-0.434683, 0.880718, 0.188113,
		43.614201, 41.634449, 37.322906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434532, 41.435257, 37.492371>,  <43.918480, 41.017948, 37.191227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434532, 41.435257, 37.492371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056023, 41.489902, 37.609608>,  <43.828918, 41.522690, 37.679951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056023, 41.489902, 37.609608>,  <44.434532, 41.435257, 37.492371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056023, 41.489902, 37.609608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257552, -0.229671, 0.938572,
		0.195535, 0.963633, 0.182147,
		-0.946273, 0.136611, 0.293095,
		43.772141, 41.530888, 37.697536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594837, 41.308708, 38.166512>,  <44.434532, 41.435257, 37.492371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594837, 41.308708, 38.166512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211811, 41.423698, 38.174820>,  <43.981995, 41.492691, 38.179806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211811, 41.423698, 38.174820>,  <44.594837, 41.308708, 38.166512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211811, 41.423698, 38.174820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046420, 0.082700, 0.995493,
		0.284462, 0.954211, -0.092535,
		-0.957563, 0.287475, 0.020769,
		43.924541, 41.509941, 38.181049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589745, 41.853104, 38.619122>,  <44.594837, 41.308708, 38.166512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589745, 41.853104, 38.619122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210423, 41.726189, 38.621716>,  <43.982830, 41.650040, 38.623272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210423, 41.726189, 38.621716>,  <44.589745, 41.853104, 38.619122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210423, 41.726189, 38.621716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027389, 0.102184, 0.994388,
		-0.316171, 0.942808, -0.105592,
		-0.948307, -0.317289, 0.006485,
		43.925930, 41.631001, 38.623661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104061, 42.329544, 39.026543>,  <44.589745, 41.853104, 38.619122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104061, 42.329544, 39.026543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909698, 41.981026, 39.054077>,  <43.793083, 41.771915, 39.070599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909698, 41.981026, 39.054077>,  <44.104061, 42.329544, 39.026543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909698, 41.981026, 39.054077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053855, 0.108452, 0.992642,
		-0.872352, 0.478621, -0.099621,
		-0.485903, -0.871298, 0.068832,
		43.763927, 41.719635, 39.074726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444134, 42.425381, 39.497414>,  <44.104061, 42.329544, 39.026543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444134, 42.425381, 39.497414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618870, 42.068977, 39.546837>,  <43.723713, 41.855133, 39.576492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618870, 42.068977, 39.546837>,  <43.444134, 42.425381, 39.497414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618870, 42.068977, 39.546837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128724, 0.197868, 0.971740,
		-0.890280, -0.408593, 0.201131,
		0.436843, -0.891011, 0.123562,
		43.749924, 41.801674, 39.583904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088917, 42.160286, 40.005684>,  <43.444134, 42.425381, 39.497414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.088917, 42.160286, 40.005684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451145, 41.991425, 39.989079>,  <43.668484, 41.890106, 39.979115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451145, 41.991425, 39.989079>,  <43.088917, 42.160286, 40.005684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451145, 41.991425, 39.989079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182865, 0.300207, 0.936182,
		-0.382751, -0.855372, 0.349057,
		0.905573, -0.422155, -0.041513,
		43.722816, 41.864777, 39.976624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227989, 41.657639, 40.590168>,  <43.088917, 42.160286, 40.005684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227989, 41.657639, 40.590168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592510, 41.769386, 40.469185>,  <43.811222, 41.836433, 40.396595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592510, 41.769386, 40.469185>,  <43.227989, 41.657639, 40.590168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592510, 41.769386, 40.469185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236942, 0.244940, 0.940140,
		0.336731, -0.928416, 0.157020,
		0.911302, 0.279370, -0.302459,
		43.865902, 41.853195, 40.378448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855545, 41.363213, 40.862335>,  <43.227989, 41.657639, 40.590168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855545, 41.363213, 40.862335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687099, 41.046047, 40.686176>,  <43.586033, 40.855747, 40.580479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687099, 41.046047, 40.686176>,  <43.855545, 41.363213, 40.862335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687099, 41.046047, 40.686176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046075, 0.503625, -0.862693,
		0.905838, -0.342997, -0.248615,
		-0.421110, -0.792915, -0.440399,
		43.560764, 40.808174, 40.554058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094856, 41.320766, 40.135532>,  <43.855545, 41.363213, 40.862335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094856, 41.320766, 40.135532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768658, 41.089336, 40.141369>,  <43.572937, 40.950478, 40.144871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768658, 41.089336, 40.141369>,  <44.094856, 41.320766, 40.135532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768658, 41.089336, 40.141369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260308, 0.344150, -0.902109,
		0.516919, -0.739465, -0.431262,
		-0.815496, -0.578578, 0.014591,
		43.524010, 40.915764, 40.145748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301609, 40.717934, 39.817776>,  <44.094856, 41.320766, 40.135532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301609, 40.717934, 39.817776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940113, 40.886345, 39.786819>,  <43.723217, 40.987392, 39.768246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940113, 40.886345, 39.786819>,  <44.301609, 40.717934, 39.817776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940113, 40.886345, 39.786819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067191, -0.039028, -0.996976,
		-0.422779, -0.906206, 0.006981,
		-0.903739, 0.421031, -0.077389,
		43.668991, 41.012653, 39.763603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838139, 40.461956, 39.319984>,  <44.301609, 40.717934, 39.817776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838139, 40.461956, 39.319984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721035, 40.840645, 39.373665>,  <43.650772, 41.067860, 39.405872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721035, 40.840645, 39.373665>,  <43.838139, 40.461956, 39.319984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721035, 40.840645, 39.373665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091164, 0.112072, -0.989509,
		-0.951830, -0.301924, 0.053496,
		-0.292761, 0.946721, 0.134198,
		43.633205, 41.124660, 39.413925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188629, 40.586277, 39.072159>,  <43.838139, 40.461956, 39.319984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188629, 40.586277, 39.072159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396580, 40.927486, 39.053902>,  <43.521351, 41.132210, 39.042950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396580, 40.927486, 39.053902>,  <43.188629, 40.586277, 39.072159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396580, 40.927486, 39.053902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332120, 0.152609, -0.930810,
		-0.787035, 0.499065, 0.362643,
		0.519877, 0.853021, -0.045641,
		43.552544, 41.183392, 39.040211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786663, 41.015030, 38.557369>,  <43.188629, 40.586277, 39.072159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786663, 41.015030, 38.557369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114788, 41.240784, 38.594368>,  <43.311665, 41.376236, 38.616566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114788, 41.240784, 38.594368>,  <42.786663, 41.015030, 38.557369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114788, 41.240784, 38.594368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158047, 0.379139, -0.911743,
		-0.549646, 0.733294, 0.400212,
		0.820311, 0.564388, 0.092497,
		43.360882, 41.410099, 38.622116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660500, 41.472637, 38.105534>,  <42.786663, 41.015030, 38.557369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660500, 41.472637, 38.105534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049419, 41.546696, 38.162601>,  <43.282772, 41.591129, 38.196842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049419, 41.546696, 38.162601>,  <42.660500, 41.472637, 38.105534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049419, 41.546696, 38.162601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022252, 0.534300, -0.845002,
		-0.232676, 0.824770, 0.515380,
		0.972300, 0.185144, 0.142672,
		43.341110, 41.602238, 38.205402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812691, 42.243774, 38.037243>,  <42.660500, 41.472637, 38.105534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812691, 42.243774, 38.037243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182133, 42.098003, 37.989662>,  <43.403797, 42.010540, 37.961113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182133, 42.098003, 37.989662>,  <42.812691, 42.243774, 38.037243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182133, 42.098003, 37.989662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146662, 0.622597, -0.768676,
		0.354189, 0.692505, 0.628480,
		0.923602, -0.364431, -0.118953,
		43.459213, 41.988674, 37.953976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095993, 42.783092, 37.765121>,  <42.812691, 42.243774, 38.037243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095993, 42.783092, 37.765121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330853, 42.468643, 37.687893>,  <43.471767, 42.279976, 37.641556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330853, 42.468643, 37.687893>,  <43.095993, 42.783092, 37.765121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330853, 42.468643, 37.687893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271811, 0.416126, -0.867731,
		0.762481, 0.457008, 0.458003,
		0.587147, -0.786119, -0.193068,
		43.506996, 42.232807, 37.629974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429646, 42.838989, 37.181702>,  <43.095993, 42.783092, 37.765121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429646, 42.838989, 37.181702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580051, 42.470261, 37.219330>,  <43.670296, 42.249023, 37.241905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580051, 42.470261, 37.219330>,  <43.429646, 42.838989, 37.181702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580051, 42.470261, 37.219330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206315, -0.015684, -0.978360,
		0.903351, 0.387291, 0.184288,
		0.376020, -0.921824, 0.094072,
		43.692856, 42.193714, 37.247551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026279, 42.776882, 36.819202>,  <43.429646, 42.838989, 37.181702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026279, 42.776882, 36.819202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882351, 42.403969, 36.834023>,  <43.795994, 42.180222, 36.842915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882351, 42.403969, 36.834023>,  <44.026279, 42.776882, 36.819202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882351, 42.403969, 36.834023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087656, -0.073317, -0.993449,
		0.928894, -0.354218, 0.108101,
		-0.359823, -0.932285, 0.037055,
		43.774403, 42.124283, 36.845139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466312, 42.300095, 36.403625>,  <44.026279, 42.776882, 36.819202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466312, 42.300095, 36.403625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118462, 42.108143, 36.450035>,  <43.909752, 41.992973, 36.477882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118462, 42.108143, 36.450035>,  <44.466312, 42.300095, 36.403625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118462, 42.108143, 36.450035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009474, -0.218747, -0.975735,
		0.493613, -0.849628, 0.185683,
		-0.869630, -0.479877, 0.116026,
		43.857574, 41.964180, 36.484844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501778, 41.743874, 35.915379>,  <44.466312, 42.300095, 36.403625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501778, 41.743874, 35.915379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123432, 41.787243, 36.037746>,  <43.896423, 41.813263, 36.111168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123432, 41.787243, 36.037746>,  <44.501778, 41.743874, 35.915379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123432, 41.787243, 36.037746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324260, -0.356351, -0.876282,
		0.014008, -0.928040, 0.372216,
		-0.945865, 0.108420, 0.305918,
		43.839672, 41.819771, 36.129520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151272, 41.142723, 35.779278>,  <44.501778, 41.743874, 35.915379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151272, 41.142723, 35.779278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.869419, 41.426453, 35.786903>,  <43.700310, 41.596691, 35.791477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.869419, 41.426453, 35.786903>,  <44.151272, 41.142723, 35.779278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.869419, 41.426453, 35.786903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262474, -0.235592, -0.935737,
		-0.659246, -0.664351, 0.352183,
		-0.704629, 0.709320, 0.019062,
		43.658031, 41.639248, 35.792622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420479, 40.803619, 35.544456>,  <44.151272, 41.142723, 35.779278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420479, 40.803619, 35.544456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354622, 41.195309, 35.497101>,  <43.315105, 41.430321, 35.468689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354622, 41.195309, 35.497101>,  <43.420479, 40.803619, 35.544456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354622, 41.195309, 35.497101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565799, -0.192080, -0.801858,
		-0.807937, -0.065038, 0.585668,
		-0.164646, 0.979222, -0.118390,
		43.305229, 41.489075, 35.461582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651363, 40.988129, 35.590111>,  <43.420479, 40.803619, 35.544456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651363, 40.988129, 35.590111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816280, 41.267372, 35.355961>,  <42.915230, 41.434917, 35.215473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816280, 41.267372, 35.355961>,  <42.651363, 40.988129, 35.590111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816280, 41.267372, 35.355961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686814, -0.183989, -0.703161,
		-0.598584, 0.691949, 0.403613,
		0.412292, 0.698108, -0.585373,
		42.939968, 41.476803, 35.180347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039577, 41.277252, 35.302559>,  <42.651363, 40.988129, 35.590111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039577, 41.277252, 35.302559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363159, 41.343475, 35.076927>,  <42.557308, 41.383209, 34.941547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363159, 41.343475, 35.076927>,  <42.039577, 41.277252, 35.302559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363159, 41.343475, 35.076927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451102, -0.440472, -0.776203,
		-0.376965, 0.882370, -0.281640,
		0.808953, 0.165553, -0.564081,
		42.605846, 41.393143, 34.907703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783012, 41.455746, 34.733051>,  <42.039577, 41.277252, 35.302559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783012, 41.455746, 34.733051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165588, 41.382786, 34.641872>,  <42.395134, 41.339012, 34.587166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165588, 41.382786, 34.641872>,  <41.783012, 41.455746, 34.733051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165588, 41.382786, 34.641872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269550, -0.251875, -0.929463,
		0.112117, 0.950416, -0.290068,
		0.956437, -0.182396, -0.227946,
		42.452518, 41.328068, 34.573490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864822, 41.676662, 34.002609>,  <41.783012, 41.455746, 34.733051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864822, 41.676662, 34.002609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166103, 41.417751, 34.049442>,  <42.346874, 41.262405, 34.077541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166103, 41.417751, 34.049442>,  <41.864822, 41.676662, 34.002609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166103, 41.417751, 34.049442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120755, -0.311038, -0.942695,
		0.646606, 0.695905, -0.312438,
		0.753206, -0.647280, 0.117085,
		42.392067, 41.223568, 34.084568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248943, 41.633820, 33.355621>,  <41.864822, 41.676662, 34.002609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248943, 41.633820, 33.355621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355125, 41.303078, 33.553951>,  <42.418835, 41.104633, 33.672951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355125, 41.303078, 33.553951>,  <42.248943, 41.633820, 33.355621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355125, 41.303078, 33.553951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011491, -0.516956, -0.855935,
		0.964054, 0.221516, -0.146730,
		0.265456, -0.826854, 0.495828,
		42.434761, 41.055023, 33.702702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970055, 41.385456, 33.193287>,  <42.248943, 41.633820, 33.355621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970055, 41.385456, 33.193287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725437, 41.085747, 33.294956>,  <42.578667, 40.905922, 33.355957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725437, 41.085747, 33.294956>,  <42.970055, 41.385456, 33.193287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725437, 41.085747, 33.294956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162054, -0.433055, -0.886680,
		0.774434, -0.501057, 0.386256,
		-0.611547, -0.749269, 0.254175,
		42.541973, 40.860966, 33.371208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042545, 40.984905, 32.664986>,  <42.970055, 41.385456, 33.193287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042545, 40.984905, 32.664986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754772, 40.787003, 32.859970>,  <42.582108, 40.668259, 32.976963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754772, 40.787003, 32.859970>,  <43.042545, 40.984905, 32.664986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754772, 40.787003, 32.859970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191322, -0.533515, -0.823867,
		0.667688, -0.685983, 0.289171,
		-0.719436, -0.494761, 0.487465,
		42.538940, 40.638573, 33.006210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139973, 40.276924, 32.491261>,  <43.042545, 40.984905, 32.664986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139973, 40.276924, 32.491261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754543, 40.285480, 32.597900>,  <42.523285, 40.290615, 32.661884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754543, 40.285480, 32.597900>,  <43.139973, 40.276924, 32.491261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754543, 40.285480, 32.597900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201753, -0.712527, -0.672013,
		0.175586, -0.701319, 0.690884,
		-0.963569, 0.021392, 0.266603,
		42.465473, 40.291897, 32.677883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859505, 39.654266, 32.577675>,  <43.139973, 40.276924, 32.491261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859505, 39.654266, 32.577675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512131, 39.842468, 32.515137>,  <42.303707, 39.955391, 32.477612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512131, 39.842468, 32.515137>,  <42.859505, 39.654266, 32.577675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512131, 39.842468, 32.515137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256881, -0.696702, -0.669790,
		-0.424070, -0.541505, 0.725904,
		-0.868434, 0.470509, -0.156349,
		42.251602, 39.983620, 32.468231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476139, 39.256577, 32.874725>,  <42.859505, 39.654266, 32.577675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476139, 39.256577, 32.874725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337395, 38.923763, 32.701561>,  <43.254150, 38.724075, 32.597660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337395, 38.923763, 32.701561>,  <43.476139, 39.256577, 32.874725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337395, 38.923763, 32.701561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779049, -0.512601, 0.361002,
		-0.522277, -0.212045, 0.825993,
		-0.346857, -0.832032, -0.432913,
		43.233337, 38.674152, 32.571686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054573, 38.855728, 32.916870>,  <43.476139, 39.256577, 32.874725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054573, 38.855728, 32.916870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803944, 38.572903, 32.785740>,  <43.653564, 38.403210, 32.707062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803944, 38.572903, 32.785740>,  <44.054573, 38.855728, 32.916870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803944, 38.572903, 32.785740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758549, -0.649827, -0.048262,
		-0.178904, -0.278910, 0.943506,
		-0.626576, -0.707061, -0.327823,
		43.615971, 38.360783, 32.687393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101818, 38.241436, 33.245281>,  <44.054573, 38.855728, 32.916870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101818, 38.241436, 33.245281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026257, 38.195919, 32.855129>,  <43.980919, 38.168610, 32.621037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026257, 38.195919, 32.855129>,  <44.101818, 38.241436, 33.245281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026257, 38.195919, 32.855129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797462, -0.597388, -0.084749,
		-0.573037, -0.793838, 0.203592,
		-0.188900, -0.113793, -0.975381,
		43.969585, 38.161781, 32.562515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902199, 37.597599, 33.184566>,  <44.101818, 38.241436, 33.245281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902199, 37.597599, 33.184566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067883, 37.733887, 32.846966>,  <44.167294, 37.815659, 32.644405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067883, 37.733887, 32.846966>,  <43.902199, 37.597599, 33.184566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067883, 37.733887, 32.846966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792574, -0.590935, 0.150408,
		-0.447505, -0.731236, -0.514813,
		0.414205, 0.340719, -0.844005,
		44.192142, 37.836102, 32.593765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253357, 37.009220, 32.998219>,  <43.902199, 37.597599, 33.184566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253357, 37.009220, 32.998219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380989, 37.304638, 32.760651>,  <44.457569, 37.481888, 32.618111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380989, 37.304638, 32.760651>,  <44.253357, 37.009220, 32.998219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380989, 37.304638, 32.760651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933939, -0.351545, 0.064612,
		-0.161070, -0.575299, -0.801928,
		0.319085, 0.738545, -0.593917,
		44.476715, 37.526199, 32.582474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551617, 36.756416, 32.282578>,  <44.253357, 37.009220, 32.998219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551617, 36.756416, 32.282578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721497, 37.087955, 32.428261>,  <44.823425, 37.286877, 32.515671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721497, 37.087955, 32.428261>,  <44.551617, 36.756416, 32.282578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721497, 37.087955, 32.428261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891106, -0.453750, -0.006494,
		0.159878, 0.327307, -0.931294,
		0.424700, 0.828843, 0.364209,
		44.848907, 37.336609, 32.537525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049229, 36.843880, 31.843462>,  <44.551617, 36.756416, 32.282578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049229, 36.843880, 31.843462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137642, 37.038254, 32.181694>,  <45.190689, 37.154881, 32.384632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137642, 37.038254, 32.181694>,  <45.049229, 36.843880, 31.843462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137642, 37.038254, 32.181694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880171, -0.472826, 0.041645,
		0.420050, 0.735051, -0.532220,
		0.221036, 0.485938, 0.845581,
		45.203953, 37.184036, 32.435368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627785, 37.242149, 31.691761>,  <45.049229, 36.843880, 31.843462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627785, 37.242149, 31.691761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595108, 37.112385, 32.068714>,  <45.575504, 37.034527, 32.294888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595108, 37.112385, 32.068714>,  <45.627785, 37.242149, 31.691761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595108, 37.112385, 32.068714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862018, -0.497593, -0.096571,
		0.500251, 0.804462, 0.320294,
		-0.081688, -0.324409, 0.942383,
		45.570602, 37.015060, 32.351429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165897, 37.459278, 32.111839>,  <45.627785, 37.242149, 31.691761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165897, 37.459278, 32.111839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023720, 37.098915, 32.211464>,  <45.938412, 36.882698, 32.271236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023720, 37.098915, 32.211464>,  <46.165897, 37.459278, 32.111839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023720, 37.098915, 32.211464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881268, -0.411808, -0.231907,
		0.311490, 0.137058, 0.940313,
		-0.355444, -0.900905, 0.249059,
		45.917088, 36.828644, 32.286182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655285, 37.047894, 32.605000>,  <46.165897, 37.459278, 32.111839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655285, 37.047894, 32.605000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422878, 36.795719, 32.399097>,  <46.283436, 36.644413, 32.275555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422878, 36.795719, 32.399097>,  <46.655285, 37.047894, 32.605000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422878, 36.795719, 32.399097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779421, -0.613105, -0.128863,
		-0.234358, -0.476081, 0.847598,
		-0.581016, -0.630436, -0.514754,
		46.248573, 36.606590, 32.244671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804840, 36.406078, 32.852371>,  <46.655285, 37.047894, 32.605000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804840, 36.406078, 32.852371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649895, 36.342331, 32.489151>,  <46.556927, 36.304081, 32.271221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649895, 36.342331, 32.489151>,  <46.804840, 36.406078, 32.852371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649895, 36.342331, 32.489151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715766, -0.672765, -0.187260,
		-0.581059, -0.722488, 0.374676,
		-0.387362, -0.159371, -0.908048,
		46.533688, 36.294521, 32.216736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361950, 36.086155, 33.431412>,  <46.804840, 36.406078, 32.852371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361950, 36.086155, 33.431412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414494, 36.474487, 33.511646>,  <46.446022, 36.707485, 33.559788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414494, 36.474487, 33.511646>,  <46.361950, 36.086155, 33.431412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414494, 36.474487, 33.511646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004334, -0.201775, 0.979422,
		0.991325, -0.129529, -0.022298,
		0.131362, 0.970829, 0.200586,
		46.453903, 36.765736, 33.571823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.009464, 36.104500, 33.716938>,  <46.361950, 36.086155, 33.431412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.009464, 36.104500, 33.716938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783356, 36.409618, 33.842545>,  <46.647690, 36.592690, 33.917908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783356, 36.409618, 33.842545>,  <47.009464, 36.104500, 33.716938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.783356, 36.409618, 33.842545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038143, -0.404433, 0.913772,
		0.824023, 0.504550, 0.257710,
		-0.565270, 0.762799, 0.314017,
		46.613773, 36.638458, 33.936749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.309208, 36.624847, 34.275631>,  <47.009464, 36.104500, 33.716938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.309208, 36.624847, 34.275631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917217, 36.547184, 34.293278>,  <46.682022, 36.500587, 34.303864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917217, 36.547184, 34.293278>,  <47.309208, 36.624847, 34.275631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.917217, 36.547184, 34.293278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134771, -0.483763, 0.864760,
		-0.146556, 0.853392, 0.500244,
		-0.979979, -0.194155, 0.044114,
		46.623222, 36.488937, 34.306511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.193108, 36.842587, 34.917255>,  <47.309208, 36.624847, 34.275631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.193108, 36.842587, 34.917255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959824, 36.544422, 34.788116>,  <46.819855, 36.365524, 34.710632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959824, 36.544422, 34.788116>,  <47.193108, 36.842587, 34.917255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.959824, 36.544422, 34.788116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285873, -0.560352, 0.777356,
		-0.760357, 0.361068, 0.539896,
		-0.583210, -0.745410, -0.322847,
		46.784863, 36.320801, 34.691261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674911, 36.637558, 35.480194>,  <47.193108, 36.842587, 34.917255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674911, 36.637558, 35.480194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804657, 36.338326, 35.248619>,  <46.882504, 36.158787, 35.109676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804657, 36.338326, 35.248619>,  <46.674911, 36.637558, 35.480194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.804657, 36.338326, 35.248619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245984, -0.524264, 0.815254,
		-0.913390, -0.406846, 0.013965,
		0.324362, -0.748080, -0.578935,
		46.901966, 36.113903, 35.074940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.302601, 35.959850, 35.486046>,  <46.674911, 36.637558, 35.480194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.302601, 35.959850, 35.486046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689167, 35.899807, 35.402607>,  <46.921108, 35.863781, 35.352543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689167, 35.899807, 35.402607>,  <46.302601, 35.959850, 35.486046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.689167, 35.899807, 35.402607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117803, -0.462624, 0.878693,
		-0.228399, -0.873754, -0.429404,
		0.966414, -0.150107, -0.208594,
		46.979092, 35.854774, 35.340027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.423424, 35.181564, 35.642445>,  <46.302601, 35.959850, 35.486046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.423424, 35.181564, 35.642445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740456, 35.421558, 35.685955>,  <46.930676, 35.565556, 35.712063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740456, 35.421558, 35.685955>,  <46.423424, 35.181564, 35.642445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740456, 35.421558, 35.685955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283589, -0.520625, 0.805312,
		0.539804, -0.607430, -0.582787,
		0.792584, 0.599982, 0.108775,
		46.978230, 35.601555, 35.718586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.887253, 34.497669, 35.663563>,  <46.423424, 35.181564, 35.642445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.887253, 34.497669, 35.663563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.017513, 34.829330, 35.845314>,  <47.095669, 35.028328, 35.954365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.017513, 34.829330, 35.845314>,  <46.887253, 34.497669, 35.663563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.017513, 34.829330, 35.845314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312237, -0.359302, 0.879438,
		0.892445, -0.428265, 0.141884,
		0.325653, 0.829151, 0.454377,
		47.115208, 35.078075, 35.981628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.202007, 34.477665, 34.885117>,  <46.887253, 34.497669, 35.663563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.202007, 34.477665, 34.885117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440647, 34.717041, 35.099010>,  <47.583832, 34.860668, 35.227345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440647, 34.717041, 35.099010>,  <47.202007, 34.477665, 34.885117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.440647, 34.717041, 35.099010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799718, -0.387461, -0.458612,
		-0.067265, 0.701242, -0.709743,
		0.596596, 0.598443, 0.534733,
		47.619625, 34.896572, 35.259430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.689617, 34.811306, 34.495296>,  <47.202007, 34.477665, 34.885117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.689617, 34.811306, 34.495296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865841, 34.809212, 34.854382>,  <47.971577, 34.807957, 35.069832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865841, 34.809212, 34.854382>,  <47.689617, 34.811306, 34.495296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.865841, 34.809212, 34.854382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844204, -0.337700, -0.416268,
		0.305334, 0.941239, -0.144358,
		0.440558, -0.005233, 0.897709,
		47.998009, 34.807640, 35.123695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.862175, 32.081490, 25.654083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.527794, 31.904148, 25.524700>,  <42.327164, 31.797745, 25.447069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.527794, 31.904148, 25.524700>,  <42.862175, 32.081490, 25.654083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527794, 31.904148, 25.524700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436162, 0.178989, 0.881888,
		-0.333088, 0.878296, -0.342998,
		-0.835952, -0.443349, -0.323460,
		42.277008, 31.771143, 25.427662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347111, 32.494553, 25.900352>,  <42.862175, 32.081490, 25.654083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347111, 32.494553, 25.900352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.183819, 32.136116, 25.830637>,  <42.085846, 31.921055, 25.788809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.183819, 32.136116, 25.830637>,  <42.347111, 32.494553, 25.900352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183819, 32.136116, 25.830637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434740, 0.022954, 0.900263,
		-0.802715, 0.443282, -0.398936,
		-0.408228, -0.896088, -0.174287,
		42.061352, 31.867290, 25.778351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743725, 32.595295, 26.136200>,  <42.347111, 32.494553, 25.900352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743725, 32.595295, 26.136200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.748840, 32.197308, 26.096436>,  <41.751911, 31.958517, 26.072577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.748840, 32.197308, 26.096436>,  <41.743725, 32.595295, 26.136200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748840, 32.197308, 26.096436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591036, -0.087717, 0.801861,
		-0.806543, 0.048500, -0.589182,
		0.012791, -0.994964, -0.099413,
		41.752678, 31.898819, 26.066612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024395, 32.357742, 26.207529>,  <41.743725, 32.595295, 26.136200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024395, 32.357742, 26.207529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.234188, 32.037842, 26.324368>,  <41.360062, 31.845901, 26.394470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.234188, 32.037842, 26.324368>,  <41.024395, 32.357742, 26.207529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234188, 32.037842, 26.324368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507947, -0.018576, 0.861188,
		-0.683309, -0.600046, -0.415973,
		0.524480, -0.799750, 0.292098,
		41.391533, 31.797916, 26.411997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557281, 31.848593, 26.416784>,  <41.024395, 32.357742, 26.207529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557281, 31.848593, 26.416784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.888672, 31.718416, 26.599089>,  <41.087505, 31.640310, 26.708471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.888672, 31.718416, 26.599089>,  <40.557281, 31.848593, 26.416784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888672, 31.718416, 26.599089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503806, -0.077717, 0.860313,
		-0.244562, -0.942363, -0.228347,
		0.828474, -0.325442, 0.455762,
		41.137215, 31.620785, 26.735817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309330, 31.441465, 26.930496>,  <40.557281, 31.848593, 26.416784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309330, 31.441465, 26.930496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.689320, 31.500008, 27.040861>,  <40.917313, 31.535133, 27.107080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.689320, 31.500008, 27.040861>,  <40.309330, 31.441465, 26.930496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689320, 31.500008, 27.040861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294490, 0.125464, 0.947383,
		0.104022, -0.981246, 0.162284,
		0.949976, 0.146340, 0.275916,
		40.974312, 31.543915, 27.123636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385933, 31.045572, 27.633137>,  <40.309330, 31.441465, 26.930496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385933, 31.045572, 27.633137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.670643, 31.324415, 27.598675>,  <40.841469, 31.491720, 27.577997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.670643, 31.324415, 27.598675>,  <40.385933, 31.045572, 27.633137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670643, 31.324415, 27.598675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064914, 0.187412, 0.980134,
		0.699404, -0.692040, 0.178647,
		0.711773, 0.697106, -0.086153,
		40.884174, 31.533546, 27.572828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724243, 30.966810, 28.145342>,  <40.385933, 31.045572, 27.633137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724243, 30.966810, 28.145342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.871758, 31.326149, 28.049870>,  <40.960266, 31.541752, 27.992586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.871758, 31.326149, 28.049870>,  <40.724243, 30.966810, 28.145342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871758, 31.326149, 28.049870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014100, 0.262158, 0.964922,
		0.929406, -0.352488, 0.109348,
		0.368789, 0.898346, -0.238681,
		40.982395, 31.595654, 27.978266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205997, 31.116053, 28.606266>,  <40.724243, 30.966810, 28.145342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205997, 31.116053, 28.606266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.097084, 31.477436, 28.473829>,  <41.031734, 31.694265, 28.394367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.097084, 31.477436, 28.473829>,  <41.205997, 31.116053, 28.606266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097084, 31.477436, 28.473829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013839, 0.340380, 0.940186,
		0.962117, 0.260582, -0.080178,
		-0.272286, 0.903459, -0.331092,
		41.015400, 31.748474, 28.374502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511059, 31.484507, 29.051205>,  <41.205997, 31.116053, 28.606266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511059, 31.484507, 29.051205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.233910, 31.725567, 28.892845>,  <41.067619, 31.870203, 28.797829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.233910, 31.725567, 28.892845>,  <41.511059, 31.484507, 29.051205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233910, 31.725567, 28.892845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038969, 0.516955, 0.855125,
		0.720003, 0.607923, -0.334701,
		-0.692876, 0.602650, -0.395900,
		41.026047, 31.906363, 28.774075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772419, 32.099159, 29.038502>,  <41.511059, 31.484507, 29.051205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772419, 32.099159, 29.038502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.377338, 32.159050, 29.020468>,  <41.140289, 32.194984, 29.009647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.377338, 32.159050, 29.020468>,  <41.772419, 32.099159, 29.038502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377338, 32.159050, 29.020468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080953, 0.736302, 0.671794,
		0.133785, 0.659880, -0.739365,
		-0.987698, 0.149730, -0.045087,
		41.081028, 32.203968, 29.006941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682217, 32.741848, 29.010792>,  <41.772419, 32.099159, 29.038502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682217, 32.741848, 29.010792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.318604, 32.641533, 29.143911>,  <41.100433, 32.581345, 29.223783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.318604, 32.641533, 29.143911>,  <41.682217, 32.741848, 29.010792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318604, 32.641533, 29.143911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019746, 0.771806, 0.635552,
		-0.416247, 0.584311, -0.696648,
		-0.909037, -0.250791, 0.332800,
		41.045891, 32.566296, 29.243752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272713, 33.244862, 28.882168>,  <41.682217, 32.741848, 29.010792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272713, 33.244862, 28.882168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.055935, 33.057846, 29.161512>,  <40.925869, 32.945637, 29.329119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.055935, 33.057846, 29.161512>,  <41.272713, 33.244862, 28.882168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055935, 33.057846, 29.161512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085604, 0.857359, 0.507550,
		-0.836045, 0.215280, -0.504662,
		-0.541942, -0.467536, 0.698362,
		40.893353, 32.917587, 29.371021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750965, 33.662556, 29.029865>,  <41.272713, 33.244862, 28.882168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750965, 33.662556, 29.029865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.759254, 33.454098, 29.371153>,  <40.764229, 33.329021, 29.575926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.759254, 33.454098, 29.371153>,  <40.750965, 33.662556, 29.029865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759254, 33.454098, 29.371153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164871, 0.839935, 0.517036,
		-0.986097, -0.151384, -0.068517,
		0.020721, -0.521144, 0.853217,
		40.765472, 33.297756, 29.627117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261234, 33.923759, 29.460943>,  <40.750965, 33.662556, 29.029865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261234, 33.923759, 29.460943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.492035, 33.713783, 29.711226>,  <40.630516, 33.587795, 29.861395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.492035, 33.713783, 29.711226>,  <40.261234, 33.923759, 29.460943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492035, 33.713783, 29.711226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083514, 0.724161, 0.684555,
		-0.812465, -0.447242, 0.373999,
		0.576997, -0.524943, 0.625707,
		40.665134, 33.556301, 29.898937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850376, 33.769501, 30.145447>,  <40.261234, 33.923759, 29.460943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850376, 33.769501, 30.145447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.242867, 33.731953, 30.212833>,  <40.478363, 33.709423, 30.253265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.242867, 33.731953, 30.212833>,  <39.850376, 33.769501, 30.145447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242867, 33.731953, 30.212833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062038, 0.673473, 0.736604,
		-0.182603, -0.733228, 0.655007,
		0.981227, -0.093870, 0.168466,
		40.537235, 33.703793, 30.263372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901085, 33.762051, 30.839273>,  <39.850376, 33.769501, 30.145447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901085, 33.762051, 30.839273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.266174, 33.861012, 30.709209>,  <40.485229, 33.920387, 30.631172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.266174, 33.861012, 30.709209>,  <39.901085, 33.762051, 30.839273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266174, 33.861012, 30.709209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032900, 0.748745, 0.662041,
		0.407250, -0.614958, 0.675259,
		0.912724, 0.247400, -0.325158,
		40.539993, 33.935230, 30.611662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197571, 33.967083, 31.506428>,  <39.901085, 33.762051, 30.839273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197571, 33.967083, 31.506428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.451496, 34.072014, 31.215717>,  <40.603851, 34.134972, 31.041292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.451496, 34.072014, 31.215717>,  <40.197571, 33.967083, 31.506428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451496, 34.072014, 31.215717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214374, 0.843881, 0.491843,
		0.742334, -0.468028, 0.479468,
		0.634810, 0.262326, -0.726774,
		40.641937, 34.150711, 30.997684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749199, 34.120808, 31.912439>,  <40.197571, 33.967083, 31.506428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749199, 34.120808, 31.912439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.732204, 34.313618, 31.562389>,  <40.722008, 34.429306, 31.352360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.732204, 34.313618, 31.562389>,  <40.749199, 34.120808, 31.912439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732204, 34.313618, 31.562389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234899, 0.856182, 0.460190,
		0.971091, -0.186012, -0.149608,
		-0.042491, 0.482029, -0.875124,
		40.719456, 34.458225, 31.299852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369537, 34.365726, 31.932692>,  <40.749199, 34.120808, 31.912439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369537, 34.365726, 31.932692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.137039, 34.578781, 31.686615>,  <40.997540, 34.706612, 31.538969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.137039, 34.578781, 31.686615>,  <41.369537, 34.365726, 31.932692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137039, 34.578781, 31.686615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260447, 0.838013, 0.479480,
		0.770924, 0.118470, -0.625812,
		-0.581242, 0.532634, -0.615190,
		40.962666, 34.738571, 31.502058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676273, 35.026768, 32.006763>,  <41.369537, 34.365726, 31.932692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676273, 35.026768, 32.006763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.326275, 35.116158, 31.834976>,  <41.116276, 35.169792, 31.731903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.326275, 35.116158, 31.834976>,  <41.676273, 35.026768, 32.006763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326275, 35.116158, 31.834976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050578, 0.924429, 0.377986,
		0.481488, 0.309013, -0.820171,
		-0.874992, 0.223478, -0.429472,
		41.063778, 35.183201, 31.706135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784134, 35.669846, 31.669544>,  <41.676273, 35.026768, 32.006763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784134, 35.669846, 31.669544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.390221, 35.632896, 31.728426>,  <41.153873, 35.610725, 31.763756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.390221, 35.632896, 31.728426>,  <41.784134, 35.669846, 31.669544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390221, 35.632896, 31.728426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044372, 0.952612, 0.300935,
		-0.168028, 0.289824, -0.942215,
		-0.984783, -0.092374, 0.147205,
		41.094788, 35.605183, 31.772587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827217, 36.048626, 32.283119>,  <41.784134, 35.669846, 31.669544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827217, 36.048626, 32.283119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.057442, 36.371181, 32.337479>,  <42.195576, 36.564713, 32.370094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.057442, 36.371181, 32.337479>,  <41.827217, 36.048626, 32.283119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057442, 36.371181, 32.337479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337226, -0.082651, -0.937789,
		-0.744986, 0.585588, -0.319505,
		0.575565, 0.806384, 0.135901,
		42.230110, 36.613098, 32.378250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696896, 36.427509, 31.618790>,  <41.827217, 36.048626, 32.283119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696896, 36.427509, 31.618790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.031258, 36.584530, 31.772240>,  <42.231876, 36.678741, 31.864309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.031258, 36.584530, 31.772240>,  <41.696896, 36.427509, 31.618790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031258, 36.584530, 31.772240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387814, 0.072198, -0.918906,
		-0.388412, 0.916893, -0.091885,
		0.835905, 0.392548, 0.383626,
		42.282028, 36.702293, 31.887327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769299, 37.118992, 31.266954>,  <41.696896, 36.427509, 31.618790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769299, 37.118992, 31.266954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.135170, 37.010803, 31.387094>,  <42.354694, 36.945889, 31.459179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.135170, 37.010803, 31.387094>,  <41.769299, 37.118992, 31.266954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135170, 37.010803, 31.387094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327221, 0.059332, -0.943083,
		0.237258, 0.960898, 0.142774,
		0.914678, -0.270473, 0.300349,
		42.409573, 36.929661, 31.477200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186466, 37.508492, 30.881651>,  <41.769299, 37.118992, 31.266954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186466, 37.508492, 30.881651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.417141, 37.211647, 31.018299>,  <42.555546, 37.033539, 31.100288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.417141, 37.211647, 31.018299>,  <42.186466, 37.508492, 30.881651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417141, 37.211647, 31.018299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456974, -0.053607, -0.887864,
		0.677206, 0.668131, 0.308210,
		0.576687, -0.742110, 0.341621,
		42.590145, 36.989014, 31.120785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846493, 37.749439, 30.732430>,  <42.186466, 37.508492, 30.881651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846493, 37.749439, 30.732430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.848919, 37.352108, 30.778496>,  <42.850376, 37.113708, 30.806135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.848919, 37.352108, 30.778496>,  <42.846493, 37.749439, 30.732430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848919, 37.352108, 30.778496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338115, -0.106346, -0.935077,
		0.941085, 0.044615, 0.335214,
		0.006070, -0.993328, 0.115166,
		42.850739, 37.054111, 30.813046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452137, 37.510334, 30.365551>,  <42.846493, 37.749439, 30.732430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452137, 37.510334, 30.365551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.222321, 37.185608, 30.407246>,  <43.084431, 36.990772, 30.432262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.222321, 37.185608, 30.407246>,  <43.452137, 37.510334, 30.365551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222321, 37.185608, 30.407246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280812, -0.315139, -0.906550,
		0.768798, -0.491577, 0.409026,
		-0.574539, -0.811813, 0.104237,
		43.049957, 36.942062, 30.438517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897224, 36.944275, 30.258238>,  <43.452137, 37.510334, 30.365551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897224, 36.944275, 30.258238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.529678, 36.797585, 30.199989>,  <43.309151, 36.709572, 30.165039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.529678, 36.797585, 30.199989>,  <43.897224, 36.944275, 30.258238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529678, 36.797585, 30.199989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282203, -0.352837, -0.892114,
		0.275779, -0.860825, 0.427699,
		-0.918862, -0.366724, -0.145622,
		43.254021, 36.687569, 30.156303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067257, 36.354397, 29.970507>,  <43.897224, 36.944275, 30.258238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067257, 36.354397, 29.970507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.676884, 36.383469, 29.888260>,  <43.442661, 36.400909, 29.838913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.676884, 36.383469, 29.888260>,  <44.067257, 36.354397, 29.970507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676884, 36.383469, 29.888260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157319, -0.418336, -0.894564,
		-0.151030, -0.905380, 0.396834,
		-0.975931, 0.072677, -0.205615,
		43.384106, 36.405273, 29.826576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851795, 35.614803, 29.915257>,  <44.067257, 36.354397, 29.970507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851795, 35.614803, 29.915257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.615398, 35.869938, 29.717714>,  <43.473560, 36.023018, 29.599190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.615398, 35.869938, 29.717714>,  <43.851795, 35.614803, 29.915257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615398, 35.869938, 29.717714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161296, -0.506407, -0.847075,
		-0.790387, -0.580271, 0.196402,
		-0.590992, 0.637838, -0.493853,
		43.438103, 36.061291, 29.569559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432972, 35.177269, 29.569830>,  <43.851795, 35.614803, 29.915257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432972, 35.177269, 29.569830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.409626, 35.521290, 29.367085>,  <43.395618, 35.727703, 29.245438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.409626, 35.521290, 29.367085>,  <43.432972, 35.177269, 29.569830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409626, 35.521290, 29.367085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059892, -0.509830, -0.858188,
		-0.996497, -0.019729, 0.081265,
		-0.058362, 0.860049, -0.506862,
		43.392117, 35.779305, 29.215025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071934, 34.982723, 28.937916>,  <43.432972, 35.177269, 29.569830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071934, 34.982723, 28.937916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.166424, 35.357697, 28.835609>,  <43.223118, 35.582680, 28.774225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.166424, 35.357697, 28.835609>,  <43.071934, 34.982723, 28.937916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166424, 35.357697, 28.835609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041079, -0.272615, -0.961246,
		-0.970830, 0.216562, -0.102907,
		0.236223, 0.937434, -0.255767,
		43.237289, 35.638927, 28.758879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629940, 35.254753, 28.352699>,  <43.071934, 34.982723, 28.937916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629940, 35.254753, 28.352699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.982292, 35.443962, 28.359562>,  <43.193703, 35.557487, 28.363680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.982292, 35.443962, 28.359562>,  <42.629940, 35.254753, 28.352699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982292, 35.443962, 28.359562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149662, -0.243955, -0.958169,
		-0.449050, 0.846603, -0.285689,
		0.880884, 0.473022, 0.017156,
		43.246555, 35.585869, 28.364708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699978, 35.689651, 27.770033>,  <42.629940, 35.254753, 28.352699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699978, 35.689651, 27.770033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.066860, 35.603401, 27.904039>,  <43.286991, 35.551651, 27.984444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.066860, 35.603401, 27.904039>,  <42.699978, 35.689651, 27.770033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066860, 35.603401, 27.904039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305428, -0.159388, -0.938781,
		0.255822, 0.963380, -0.080334,
		0.917207, -0.215624, 0.335019,
		43.342022, 35.538715, 28.004545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134319, 36.053886, 27.338978>,  <42.699978, 35.689651, 27.770033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134319, 36.053886, 27.338978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.336239, 35.749359, 27.501743>,  <43.457390, 35.566643, 27.599401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.336239, 35.749359, 27.501743>,  <43.134319, 36.053886, 27.338978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336239, 35.749359, 27.501743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262246, -0.313853, -0.912537,
		0.822439, 0.567358, 0.041220,
		0.504798, -0.761316, 0.406912,
		43.487679, 35.520966, 27.623817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647812, 35.957317, 26.860004>,  <43.134319, 36.053886, 27.338978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647812, 35.957317, 26.860004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.653702, 35.607014, 27.053015>,  <43.657238, 35.396832, 27.168821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.653702, 35.607014, 27.053015>,  <43.647812, 35.957317, 26.860004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653702, 35.607014, 27.053015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101525, -0.478776, -0.872047,
		0.994724, 0.061832, 0.081860,
		0.014727, -0.875757, 0.482527,
		43.658119, 35.344288, 27.197773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217010, 35.597431, 26.621424>,  <43.647812, 35.957317, 26.860004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217010, 35.597431, 26.621424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.009144, 35.303146, 26.795172>,  <43.884426, 35.126575, 26.899420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.009144, 35.303146, 26.795172>,  <44.217010, 35.597431, 26.621424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009144, 35.303146, 26.795172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229528, -0.609936, -0.758482,
		0.822962, -0.294456, 0.485829,
		-0.519664, -0.735713, 0.434368,
		43.853245, 35.082432, 26.925482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637825, 35.060303, 26.443142>,  <44.217010, 35.597431, 26.621424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637825, 35.060303, 26.443142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.285069, 34.908936, 26.555616>,  <44.073414, 34.818115, 26.623100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.285069, 34.908936, 26.555616>,  <44.637825, 35.060303, 26.443142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285069, 34.908936, 26.555616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075114, -0.701587, -0.708614,
		0.465427, -0.603801, 0.647149,
		-0.881893, -0.378418, 0.281184,
		44.020500, 34.795410, 26.639971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665623, 34.292793, 26.727600>,  <44.637825, 35.060303, 26.443142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665623, 34.292793, 26.727600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.300800, 34.390228, 26.595654>,  <44.081905, 34.448689, 26.516485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.300800, 34.390228, 26.595654>,  <44.665623, 34.292793, 26.727600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300800, 34.390228, 26.595654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137116, -0.576966, -0.805177,
		-0.386454, -0.779599, 0.492828,
		-0.912060, 0.243589, -0.329866,
		44.027184, 34.463306, 26.496695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<44.312061, 33.606792, 26.556026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.078140, 33.885704, 26.390230>,  <43.937786, 34.053051, 26.290752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.078140, 33.885704, 26.390230>,  <44.312061, 33.606792, 26.556026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078140, 33.885704, 26.390230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045921, -0.481696, -0.875135,
		-0.809874, -0.530815, 0.249677,
		-0.584804, 0.697284, -0.414489,
		43.902699, 34.094891, 26.265884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836834, 33.218170, 26.134687>,  <44.312061, 33.606792, 26.556026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836834, 33.218170, 26.134687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.811417, 33.590183, 25.989910>,  <43.796165, 33.813389, 25.903044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.811417, 33.590183, 25.989910>,  <43.836834, 33.218170, 26.134687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811417, 33.590183, 25.989910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136303, -0.367368, -0.920034,
		-0.988627, -0.009132, 0.150112,
		-0.063548, 0.930031, -0.361945,
		43.792351, 33.869194, 25.881327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241280, 33.237598, 25.710480>,  <43.836834, 33.218170, 26.134687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241280, 33.237598, 25.710480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.481194, 33.529625, 25.579481>,  <43.625141, 33.704842, 25.500881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.481194, 33.529625, 25.579481>,  <43.241280, 33.237598, 25.710480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481194, 33.529625, 25.579481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054320, -0.371194, -0.926965,
		-0.798315, 0.573770, -0.182980,
		0.599786, 0.730070, -0.327497,
		43.661129, 33.748646, 25.481232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848053, 33.450478, 25.054138>,  <43.241280, 33.237598, 25.710480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848053, 33.450478, 25.054138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.213570, 33.609051, 25.018745>,  <43.432880, 33.704193, 24.997509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.213570, 33.609051, 25.018745>,  <42.848053, 33.450478, 25.054138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213570, 33.609051, 25.018745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088035, -0.405960, -0.909641,
		-0.396529, 0.823433, -0.405862,
		0.913792, 0.396429, -0.088484,
		43.487705, 33.727978, 24.992201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882832, 33.827999, 24.456635>,  <42.848053, 33.450478, 25.054138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882832, 33.827999, 24.456635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.258541, 33.711227, 24.528790>,  <43.483967, 33.641163, 24.572083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.258541, 33.711227, 24.528790>,  <42.882832, 33.827999, 24.456635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258541, 33.711227, 24.528790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107917, -0.247706, -0.962806,
		0.325755, 0.923806, -0.201160,
		0.939275, -0.291930, 0.180386,
		43.540325, 33.623650, 24.582905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176865, 33.848331, 23.791479>,  <42.882832, 33.827999, 24.456635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176865, 33.848331, 23.791479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.455112, 33.658863, 24.007534>,  <43.622063, 33.545181, 24.137167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.455112, 33.658863, 24.007534>,  <43.176865, 33.848331, 23.791479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455112, 33.658863, 24.007534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430429, -0.327171, -0.841243,
		0.575188, 0.817678, -0.023706,
		0.695621, -0.473669, 0.540137,
		43.663799, 33.516762, 24.169575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864738, 34.051270, 23.572971>,  <43.176865, 33.848331, 23.791479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864738, 34.051270, 23.572971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.874435, 33.686970, 23.737869>,  <43.880253, 33.468388, 23.836807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.874435, 33.686970, 23.737869>,  <43.864738, 34.051270, 23.572971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874435, 33.686970, 23.737869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346371, -0.379170, -0.858054,
		0.937784, 0.163591, 0.306265,
		0.024243, -0.910751, 0.412243,
		43.881710, 33.413746, 23.861542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379284, 33.801113, 23.312456>,  <43.864738, 34.051270, 23.572971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379284, 33.801113, 23.312456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.225777, 33.450916, 23.429914>,  <44.133671, 33.240799, 23.500389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.225777, 33.450916, 23.429914>,  <44.379284, 33.801113, 23.312456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225777, 33.450916, 23.429914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296726, -0.418049, -0.858597,
		0.874455, -0.242373, 0.420218,
		-0.383773, -0.875494, 0.293647,
		44.110645, 33.188267, 23.518009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860085, 33.334743, 23.328962>,  <44.379284, 33.801113, 23.312456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860085, 33.334743, 23.328962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.549366, 33.084198, 23.302876>,  <44.362934, 32.933868, 23.287224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.549366, 33.084198, 23.302876>,  <44.860085, 33.334743, 23.328962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549366, 33.084198, 23.302876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479398, -0.520998, -0.706215,
		0.408372, -0.579850, 0.704987,
		-0.776795, -0.626367, -0.065218,
		44.316326, 32.896286, 23.283310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177032, 32.720207, 23.226561>,  <44.860085, 33.334743, 23.328962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177032, 32.720207, 23.226561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.800983, 32.707764, 23.090796>,  <44.575356, 32.700298, 23.009336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.800983, 32.707764, 23.090796>,  <45.177032, 32.720207, 23.226561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800983, 32.707764, 23.090796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323542, -0.394606, -0.860004,
		-0.107182, -0.918324, 0.381043,
		-0.940124, -0.031107, -0.339411,
		44.518948, 32.698433, 22.988972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222248, 32.147423, 22.881262>,  <45.177032, 32.720207, 23.226561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222248, 32.147423, 22.881262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.897087, 32.324978, 22.730448>,  <44.701992, 32.431511, 22.639959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.897087, 32.324978, 22.730448>,  <45.222248, 32.147423, 22.881262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897087, 32.324978, 22.730448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383858, -0.078514, -0.920048,
		-0.438001, -0.892636, -0.106566,
		-0.812901, 0.443888, -0.377035,
		44.653217, 32.458145, 22.617338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946819, 31.730566, 22.267317>,  <45.222248, 32.147423, 22.881262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946819, 31.730566, 22.267317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.803951, 32.102818, 22.235418>,  <44.718231, 32.326168, 22.216280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.803951, 32.102818, 22.235418>,  <44.946819, 31.730566, 22.267317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803951, 32.102818, 22.235418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302294, 0.034389, -0.952594,
		-0.883771, -0.364341, -0.293606,
		-0.357166, 0.930631, -0.079746,
		44.696800, 32.382008, 22.211494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490486, 31.705164, 21.718697>,  <44.946819, 31.730566, 22.267317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490486, 31.705164, 21.718697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.630409, 32.076389, 21.769815>,  <44.714363, 32.299126, 21.800486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.630409, 32.076389, 21.769815>,  <44.490486, 31.705164, 21.718697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630409, 32.076389, 21.769815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285379, 0.024366, -0.958105,
		-0.892295, 0.371627, -0.256326,
		0.349812, 0.928062, 0.127796,
		44.735352, 32.354809, 21.808155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206947, 31.980709, 21.132208>,  <44.490486, 31.705164, 21.718697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206947, 31.980709, 21.132208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.472145, 32.247990, 21.267233>,  <44.631264, 32.408360, 21.348248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.472145, 32.247990, 21.267233>,  <44.206947, 31.980709, 21.132208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472145, 32.247990, 21.267233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447628, 0.007584, -0.894188,
		-0.600056, 0.743943, -0.294077,
		0.662994, 0.668200, 0.337561,
		44.671043, 32.448448, 21.368502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264942, 32.507286, 20.595503>,  <44.206947, 31.980709, 21.132208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264942, 32.507286, 20.595503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.600380, 32.513817, 20.813307>,  <44.801643, 32.517735, 20.943989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.600380, 32.513817, 20.813307>,  <44.264942, 32.507286, 20.595503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600380, 32.513817, 20.813307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529544, 0.210118, -0.821848,
		-0.127827, 0.977540, 0.167560,
		0.838596, 0.016324, 0.544509,
		44.851959, 32.518715, 20.976660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510792, 33.204453, 20.523800>,  <44.264942, 32.507286, 20.595503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510792, 33.204453, 20.523800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.804237, 32.951721, 20.623888>,  <44.980305, 32.800083, 20.683941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.804237, 32.951721, 20.623888>,  <44.510792, 33.204453, 20.523800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804237, 32.951721, 20.623888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448698, 0.173822, -0.876616,
		0.510374, 0.755370, 0.411017,
		0.733613, -0.631825, 0.250218,
		45.024323, 32.762173, 20.698954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033752, 33.459408, 20.192053>,  <44.510792, 33.204453, 20.523800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033752, 33.459408, 20.192053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.209126, 33.118683, 20.306732>,  <45.314350, 32.914249, 20.375540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.209126, 33.118683, 20.306732>,  <45.033752, 33.459408, 20.192053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209126, 33.118683, 20.306732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591376, 0.033203, -0.805712,
		0.676793, 0.522799, 0.518297,
		0.438435, -0.851809, 0.286699,
		45.340656, 32.863140, 20.392742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737495, 33.523491, 20.000696>,  <45.033752, 33.459408, 20.192053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737495, 33.523491, 20.000696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.639858, 33.136810, 20.031435>,  <45.581276, 32.904800, 20.049879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.639858, 33.136810, 20.031435>,  <45.737495, 33.523491, 20.000696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639858, 33.136810, 20.031435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503310, -0.194023, -0.842041,
		0.828914, -0.166855, 0.533911,
		-0.244090, -0.966703, 0.076849,
		45.566631, 32.846798, 20.054489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283924, 33.222355, 19.727964>,  <45.737495, 33.523491, 20.000696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283924, 33.222355, 19.727964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.007797, 32.932957, 19.726494>,  <45.842121, 32.759319, 19.725613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.007797, 32.932957, 19.726494>,  <46.283924, 33.222355, 19.727964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007797, 32.932957, 19.726494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287721, -0.269860, -0.918908,
		0.663834, -0.635398, 0.394454,
		-0.690319, -0.723495, -0.003675,
		45.800701, 32.715908, 19.725391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.587791, 32.617161, 19.445082>,  <46.283924, 33.222355, 19.727964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.587791, 32.617161, 19.445082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.194290, 32.582417, 19.382240>,  <45.958187, 32.561569, 19.344536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.194290, 32.582417, 19.382240>,  <46.587791, 32.617161, 19.445082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194290, 32.582417, 19.382240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173357, -0.232436, -0.957037,
		0.046611, -0.968726, 0.243718,
		-0.983755, -0.086859, -0.157102,
		45.899162, 32.556358, 19.335110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.592331, 32.190903, 18.920795>,  <46.587791, 32.617161, 19.445082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.592331, 32.190903, 18.920795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.209064, 32.304234, 18.937061>,  <45.979107, 32.372231, 18.946821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.209064, 32.304234, 18.937061>,  <46.592331, 32.190903, 18.920795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209064, 32.304234, 18.937061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073400, -0.105897, -0.991664,
		-0.276658, -0.953159, 0.122263,
		-0.958161, 0.283326, 0.040665,
		45.921616, 32.389229, 18.949261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.287601, 31.732935, 18.478357>,  <46.592331, 32.190903, 18.920795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.287601, 31.732935, 18.478357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.098324, 32.083794, 18.511097>,  <45.984756, 32.294308, 18.530741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.098324, 32.083794, 18.511097>,  <46.287601, 31.732935, 18.478357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.098324, 32.083794, 18.511097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027311, 0.078259, -0.996559,
		-0.880535, -0.473801, -0.013076,
		-0.473194, 0.877148, 0.081849,
		45.956364, 32.346939, 18.535652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747902, 31.647955, 18.029915>,  <46.287601, 31.732935, 18.478357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747902, 31.647955, 18.029915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.827629, 32.029980, 18.117664>,  <45.875465, 32.259193, 18.170315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.827629, 32.029980, 18.117664>,  <45.747902, 31.647955, 18.029915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827629, 32.029980, 18.117664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009296, 0.225700, -0.974152,
		-0.979890, 0.192131, 0.053866,
		0.199323, 0.955063, 0.219375,
		45.887424, 32.316498, 18.183477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124973, 31.308769, 17.844240>,  <45.747902, 31.647955, 18.029915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124973, 31.308769, 17.844240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.416805, 31.172195, 17.607212>,  <45.591904, 31.090252, 17.464994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.416805, 31.172195, 17.607212>,  <45.124973, 31.308769, 17.844240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416805, 31.172195, 17.607212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399851, -0.915895, 0.035434,
		-0.554830, 0.211088, -0.804739,
		0.729577, -0.341435, -0.592570,
		45.635677, 31.069765, 17.429441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064453, 31.740997, 18.523855>,  <45.124973, 31.308769, 17.844240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064453, 31.740997, 18.523855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.824200, 31.565344, 18.256601>,  <44.680046, 31.459951, 18.096249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.824200, 31.565344, 18.256601>,  <45.064453, 31.740997, 18.523855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824200, 31.565344, 18.256601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705488, -0.102111, 0.701327,
		-0.376200, 0.892600, -0.248473,
		-0.600633, -0.439134, -0.668133,
		44.644009, 31.433603, 18.056162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449280, 32.153347, 18.461994>,  <45.064453, 31.740997, 18.523855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449280, 32.153347, 18.461994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.381092, 31.770327, 18.369013>,  <44.340179, 31.540514, 18.313225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.381092, 31.770327, 18.369013>,  <44.449280, 32.153347, 18.461994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381092, 31.770327, 18.369013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657464, -0.065184, 0.750661,
		-0.733949, 0.280792, -0.618445,
		-0.170467, -0.957553, -0.232453,
		44.329952, 31.483061, 18.299276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776604, 32.147087, 18.462698>,  <44.449280, 32.153347, 18.461994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776604, 32.147087, 18.462698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.844669, 31.755106, 18.504139>,  <43.885509, 31.519917, 18.529003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.844669, 31.755106, 18.504139>,  <43.776604, 32.147087, 18.462698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844669, 31.755106, 18.504139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740896, -0.057916, 0.669118,
		-0.649704, -0.190621, -0.735899,
		0.170168, -0.979954, 0.103602,
		43.895721, 31.461121, 18.535219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104343, 31.891146, 18.418322>,  <43.776604, 32.147087, 18.462698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104343, 31.891146, 18.418322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.337463, 31.607304, 18.576719>,  <43.477333, 31.436998, 18.671759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.337463, 31.607304, 18.576719>,  <43.104343, 31.891146, 18.418322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337463, 31.607304, 18.576719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642812, -0.104454, 0.758869,
		-0.497134, -0.696814, -0.517018,
		0.582795, -0.709606, 0.395993,
		43.512302, 31.394423, 18.695517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630241, 31.366816, 18.778021>,  <43.104343, 31.891146, 18.418322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630241, 31.366816, 18.778021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.988201, 31.292948, 18.940529>,  <43.202976, 31.248627, 19.038033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.988201, 31.292948, 18.940529>,  <42.630241, 31.366816, 18.778021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988201, 31.292948, 18.940529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446270, -0.370714, 0.814502,
		0.000196, -0.910202, -0.414164,
		0.894899, -0.184669, 0.406268,
		43.256672, 31.237547, 19.062408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590843, 30.641163, 19.056059>,  <42.630241, 31.366816, 18.778021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590843, 30.641163, 19.056059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.874912, 30.848169, 19.246984>,  <43.045353, 30.972372, 19.361540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.874912, 30.848169, 19.246984>,  <42.590843, 30.641163, 19.056059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874912, 30.848169, 19.246984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388761, -0.276971, 0.878721,
		0.586953, -0.809608, 0.004491,
		0.710176, 0.517514, 0.477313,
		43.087967, 31.003424, 19.390179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855034, 30.265636, 19.657236>,  <42.590843, 30.641163, 19.056059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855034, 30.265636, 19.657236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.956245, 30.642017, 19.747200>,  <43.016972, 30.867846, 19.801178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.956245, 30.642017, 19.747200>,  <42.855034, 30.265636, 19.657236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956245, 30.642017, 19.747200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259630, -0.157906, 0.952711,
		0.931971, -0.299454, 0.204345,
		0.253026, 0.940954, 0.224911,
		43.032154, 30.924303, 19.814672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241199, 30.219936, 20.231014>,  <42.855034, 30.265636, 19.657236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241199, 30.219936, 20.231014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114655, 30.599384, 20.228771>,  <43.038727, 30.827053, 20.227425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114655, 30.599384, 20.228771>,  <43.241199, 30.219936, 20.231014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114655, 30.599384, 20.228771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256399, -0.079814, 0.963270,
		0.913330, 0.306184, 0.268476,
		-0.316367, 0.948621, -0.005608,
		43.019745, 30.883970, 20.227089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290943, 30.269430, 20.880259>,  <43.241199, 30.219936, 20.231014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290943, 30.269430, 20.880259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.117359, 30.612574, 20.770161>,  <43.013206, 30.818459, 20.704102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.117359, 30.612574, 20.770161>,  <43.290943, 30.269430, 20.880259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117359, 30.612574, 20.770161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220304, 0.195192, 0.955702,
		0.873580, 0.475376, 0.104283,
		-0.433963, 0.857856, -0.275243,
		42.987171, 30.869930, 20.687588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484947, 30.718811, 21.386364>,  <43.290943, 30.269430, 20.880259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484947, 30.718811, 21.386364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.126110, 30.831333, 21.250080>,  <42.910809, 30.898848, 21.168310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.126110, 30.831333, 21.250080>,  <43.484947, 30.718811, 21.386364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126110, 30.831333, 21.250080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306586, 0.158944, 0.938478,
		0.318154, 0.946363, -0.056343,
		-0.897097, 0.281307, -0.340711,
		42.856979, 30.915726, 21.147867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361446, 31.348070, 21.763403>,  <43.484947, 30.718811, 21.386364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361446, 31.348070, 21.763403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.003857, 31.241791, 21.619062>,  <42.789303, 31.178022, 21.532457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.003857, 31.241791, 21.619062>,  <43.361446, 31.348070, 21.763403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003857, 31.241791, 21.619062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427427, 0.263726, 0.864728,
		-0.134591, 0.927283, -0.349330,
		-0.893975, -0.265698, -0.360851,
		42.735664, 31.162081, 21.510807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993038, 31.908951, 21.846001>,  <43.361446, 31.348070, 21.763403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993038, 31.908951, 21.846001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.744019, 31.596085, 21.835735>,  <42.594608, 31.408365, 21.829576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.744019, 31.596085, 21.835735>,  <42.993038, 31.908951, 21.846001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744019, 31.596085, 21.835735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379773, 0.273273, 0.883795,
		-0.684259, 0.559948, -0.467169,
		-0.622545, -0.782163, -0.025664,
		42.557255, 31.361435, 21.828035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524902, 32.146103, 22.200775>,  <42.993038, 31.908951, 21.846001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524902, 32.146103, 22.200775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.450680, 31.753141, 22.192303>,  <42.406147, 31.517365, 22.187220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.450680, 31.753141, 22.192303>,  <42.524902, 32.146103, 22.200775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450680, 31.753141, 22.192303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199215, 0.016500, 0.979817,
		-0.962228, 0.186029, -0.198771,
		-0.185554, -0.982406, -0.021183,
		42.395012, 31.458420, 22.185947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881741, 32.003197, 22.362213>,  <42.524902, 32.146103, 22.200775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881741, 32.003197, 22.362213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.043804, 31.649258, 22.454205>,  <42.141045, 31.436895, 22.509399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.043804, 31.649258, 22.454205>,  <41.881741, 32.003197, 22.362213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043804, 31.649258, 22.454205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188003, 0.165537, 0.968118,
		-0.894706, -0.435481, -0.099285,
		0.405162, -0.884847, 0.229979,
		42.165352, 31.383804, 22.523199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564888, 31.759201, 22.981436>,  <41.881741, 32.003197, 22.362213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564888, 31.759201, 22.981436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.902046, 31.543987, 22.984362>,  <42.104340, 31.414860, 22.986118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.902046, 31.543987, 22.984362>,  <41.564888, 31.759201, 22.981436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902046, 31.543987, 22.984362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033524, 0.066079, 0.997251,
		-0.537039, -0.840329, 0.073734,
		0.842892, -0.538034, 0.007316,
		42.154915, 31.382578, 22.986557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504932, 31.316757, 23.541204>,  <41.564888, 31.759201, 22.981436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504932, 31.316757, 23.541204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.900822, 31.306116, 23.485004>,  <42.138355, 31.299730, 23.451284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.900822, 31.306116, 23.485004>,  <41.504932, 31.316757, 23.541204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900822, 31.306116, 23.485004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142204, 0.079920, 0.986606,
		-0.015022, -0.996446, 0.082883,
		0.989723, -0.026607, -0.140498,
		42.197739, 31.298136, 23.442856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860058, 30.687399, 23.849176>,  <41.504932, 31.316757, 23.541204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860058, 30.687399, 23.849176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.075623, 31.024313, 23.844717>,  <42.204964, 31.226461, 23.842041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.075623, 31.024313, 23.844717>,  <41.860058, 30.687399, 23.849176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075623, 31.024313, 23.844717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205409, 0.144240, 0.967989,
		0.816931, -0.519375, 0.250746,
		0.538916, 0.842286, -0.011150,
		42.237297, 31.276999, 23.841372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311634, 30.540257, 24.345671>,  <41.860058, 30.687399, 23.849176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311634, 30.540257, 24.345671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.356819, 30.935812, 24.307013>,  <42.383930, 31.173145, 24.283817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.356819, 30.935812, 24.307013>,  <42.311634, 30.540257, 24.345671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356819, 30.935812, 24.307013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011142, 0.098523, 0.995072,
		0.993537, -0.111329, 0.022147,
		0.112962, 0.988888, -0.096645,
		42.390709, 31.232479, 24.278019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778763, 30.736794, 24.883369>,  <42.311634, 30.540257, 24.345671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778763, 30.736794, 24.883369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.591057, 31.075634, 24.783600>,  <42.478436, 31.278938, 24.723738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.591057, 31.075634, 24.783600>,  <42.778763, 30.736794, 24.883369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591057, 31.075634, 24.783600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189262, 0.179414, 0.965396,
		0.862540, 0.500229, 0.076132,
		-0.469261, 0.847101, -0.249426,
		42.450279, 31.329765, 24.708773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963303, 31.300610, 25.369801>,  <42.778763, 30.736794, 24.883369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963303, 31.300610, 25.369801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.610512, 31.409235, 25.215721>,  <42.398838, 31.474411, 25.123274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.610512, 31.409235, 25.215721>,  <42.963303, 31.300610, 25.369801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610512, 31.409235, 25.215721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315453, 0.267092, 0.910577,
		0.350163, 0.924616, -0.149902,
		-0.881972, 0.271563, -0.385199,
		42.345921, 31.490704, 25.100161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.437370, 36.126297, 28.458534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078060, 35.952812, 28.430241>,  <43.862476, 35.848721, 28.413265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078060, 35.952812, 28.430241>,  <44.437370, 36.126297, 28.458534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078060, 35.952812, 28.430241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360847, 0.636132, 0.682001,
		-0.250796, 0.638146, -0.727922,
		-0.898271, -0.433712, -0.070734,
		43.808578, 35.822701, 28.409019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877266, 36.729546, 28.505220>,  <44.437370, 36.126297, 28.458534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877266, 36.729546, 28.505220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.680374, 36.390263, 28.583452>,  <43.562241, 36.186691, 28.630390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.680374, 36.390263, 28.583452>,  <43.877266, 36.729546, 28.505220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680374, 36.390263, 28.583452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320790, 0.385630, 0.865092,
		-0.809199, 0.363085, -0.461916,
		-0.492230, -0.848209, 0.195577,
		43.532703, 36.135799, 28.642126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244381, 36.943420, 28.695097>,  <43.877266, 36.729546, 28.505220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244381, 36.943420, 28.695097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.274437, 36.574963, 28.847858>,  <43.292473, 36.353889, 28.939516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.274437, 36.574963, 28.847858>,  <43.244381, 36.943420, 28.695097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274437, 36.574963, 28.847858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422121, 0.317595, 0.849086,
		-0.903420, -0.225012, -0.364969,
		0.075142, -0.921142, 0.381904,
		43.296978, 36.298618, 28.962429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615871, 36.786213, 28.882854>,  <43.244381, 36.943420, 28.695097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615871, 36.786213, 28.882854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865536, 36.560196, 29.098686>,  <43.015335, 36.424587, 29.228186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865536, 36.560196, 29.098686>,  <42.615871, 36.786213, 28.882854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865536, 36.560196, 29.098686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279132, 0.483772, 0.829488,
		-0.729730, -0.668350, 0.144231,
		0.624163, -0.565042, 0.539581,
		43.052784, 36.390682, 29.260561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193741, 36.711781, 29.430178>,  <42.615871, 36.786213, 28.882854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193741, 36.711781, 29.430178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.549644, 36.586643, 29.563116>,  <42.763187, 36.511559, 29.642879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.549644, 36.586643, 29.563116>,  <42.193741, 36.711781, 29.430178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549644, 36.586643, 29.563116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170704, 0.447218, 0.877984,
		-0.423305, -0.837928, 0.344513,
		0.889760, -0.312845, 0.332347,
		42.816574, 36.492790, 29.662821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002525, 36.342159, 30.029600>,  <42.193741, 36.711781, 29.430178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002525, 36.342159, 30.029600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.386627, 36.443623, 30.076202>,  <42.617088, 36.504501, 30.104164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.386627, 36.443623, 30.076202>,  <42.002525, 36.342159, 30.029600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386627, 36.443623, 30.076202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126941, 0.025116, 0.991592,
		0.248602, -0.966967, 0.056318,
		0.960251, 0.253661, 0.116504,
		42.674702, 36.519722, 30.111155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355465, 35.890553, 30.587284>,  <42.002525, 36.342159, 30.029600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355465, 35.890553, 30.587284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581184, 36.218140, 30.545607>,  <42.716614, 36.414692, 30.520599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581184, 36.218140, 30.545607>,  <42.355465, 35.890553, 30.587284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581184, 36.218140, 30.545607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057883, 0.165148, 0.984569,
		0.823540, -0.549558, 0.140597,
		0.564297, 0.818970, -0.104196,
		42.750473, 36.463829, 30.514347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880108, 35.735901, 31.012556>,  <42.355465, 35.890553, 30.587284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880108, 35.735901, 31.012556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870590, 36.131138, 30.951750>,  <42.864880, 36.368279, 30.915266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870590, 36.131138, 30.951750>,  <42.880108, 35.735901, 31.012556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870590, 36.131138, 30.951750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062715, 0.150285, 0.986652,
		0.997748, 0.033009, 0.058393,
		-0.023793, 0.988091, -0.152017,
		42.863453, 36.427567, 30.906145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352619, 35.955475, 31.450558>,  <42.880108, 35.735901, 31.012556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352619, 35.955475, 31.450558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133900, 36.274574, 31.348883>,  <43.002666, 36.466034, 31.287878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133900, 36.274574, 31.348883>,  <43.352619, 35.955475, 31.450558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133900, 36.274574, 31.348883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068284, 0.260092, 0.963166,
		0.834476, 0.544014, -0.087745,
		-0.546798, 0.797747, -0.254188,
		42.969860, 36.513897, 31.272627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566528, 36.502213, 31.930691>,  <43.352619, 35.955475, 31.450558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566528, 36.502213, 31.930691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215969, 36.633278, 31.789513>,  <43.005634, 36.711918, 31.704805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215969, 36.633278, 31.789513>,  <43.566528, 36.502213, 31.930691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215969, 36.633278, 31.789513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247215, 0.322868, 0.913587,
		0.413301, 0.887917, -0.201957,
		-0.876394, 0.327660, -0.352948,
		42.953053, 36.731575, 31.683628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416965, 37.113201, 32.295979>,  <43.566528, 36.502213, 31.930691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416965, 37.113201, 32.295979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.057655, 36.987560, 32.173050>,  <42.842072, 36.912174, 32.099293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.057655, 36.987560, 32.173050>,  <43.416965, 37.113201, 32.295979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057655, 36.987560, 32.173050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356743, 0.112870, 0.927359,
		-0.256597, 0.942656, -0.213442,
		-0.898272, -0.314102, -0.307324,
		42.788174, 36.893330, 32.080853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910336, 37.690243, 32.511715>,  <43.416965, 37.113201, 32.295979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910336, 37.690243, 32.511715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726028, 37.339561, 32.456463>,  <42.615444, 37.129154, 32.423309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726028, 37.339561, 32.456463>,  <42.910336, 37.690243, 32.511715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726028, 37.339561, 32.456463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372156, 0.049561, 0.926846,
		-0.805723, 0.478472, -0.349107,
		-0.460772, -0.876704, -0.138133,
		42.587795, 37.076550, 32.415024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179070, 37.724422, 32.606339>,  <42.910336, 37.690243, 32.511715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179070, 37.724422, 32.606339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.321415, 37.370125, 32.725548>,  <42.406822, 37.157547, 32.797073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.321415, 37.370125, 32.725548>,  <42.179070, 37.724422, 32.606339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321415, 37.370125, 32.725548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131584, 0.268237, 0.954324,
		-0.925229, -0.378821, -0.021096,
		0.355859, -0.885745, 0.298027,
		42.428173, 37.104401, 32.814957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291729, 38.385006, 32.416237>,  <42.179070, 37.724422, 32.606339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291729, 38.385006, 32.416237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623428, 38.514603, 32.598389>,  <42.822449, 38.592361, 32.707680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623428, 38.514603, 32.598389>,  <42.291729, 38.385006, 32.416237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623428, 38.514603, 32.598389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152350, 0.652906, -0.741959,
		-0.537712, 0.684646, 0.492062,
		0.829250, 0.323995, 0.455382,
		42.872204, 38.611801, 32.735004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368984, 39.107029, 32.531593>,  <42.291729, 38.385006, 32.416237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368984, 39.107029, 32.531593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.201107, 39.435040, 32.375942>,  <42.100380, 39.631847, 32.282551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.201107, 39.435040, 32.375942>,  <42.368984, 39.107029, 32.531593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201107, 39.435040, 32.375942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274979, -0.523431, -0.806478,
		-0.865012, -0.231471, 0.445169,
		-0.419692, 0.820025, -0.389125,
		42.075199, 39.681046, 32.259205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777309, 38.924034, 32.406464>,  <42.368984, 39.107029, 32.531593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777309, 38.924034, 32.406464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777035, 39.241753, 32.163452>,  <41.776871, 39.432384, 32.017647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777035, 39.241753, 32.163452>,  <41.777309, 38.924034, 32.406464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777035, 39.241753, 32.163452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211252, -0.593929, -0.776287,
		-0.977431, 0.127811, 0.168203,
		-0.000683, 0.794300, -0.607525,
		41.776829, 39.480042, 31.981195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342278, 38.759518, 31.820328>,  <41.777309, 38.924034, 32.406464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342278, 38.759518, 31.820328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.437782, 39.124199, 31.686588>,  <41.495087, 39.343006, 31.606344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.437782, 39.124199, 31.686588>,  <41.342278, 38.759518, 31.820328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437782, 39.124199, 31.686588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310832, -0.254438, -0.915775,
		-0.919987, 0.322579, 0.222637,
		0.238763, 0.911704, -0.334348,
		41.509411, 39.397709, 31.586285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666424, 39.135021, 31.350609>,  <41.342278, 38.759518, 31.820328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666424, 39.135021, 31.350609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.035530, 39.259789, 31.260099>,  <41.256996, 39.334648, 31.205793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.035530, 39.259789, 31.260099>,  <40.666424, 39.135021, 31.350609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035530, 39.259789, 31.260099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170375, -0.196443, -0.965600,
		-0.345641, 0.929578, -0.128129,
		0.922770, 0.311920, -0.226275,
		41.312363, 39.353363, 31.192217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569897, 39.579056, 30.807426>,  <40.666424, 39.135021, 31.350609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569897, 39.579056, 30.807426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.947105, 39.446285, 30.816666>,  <41.173431, 39.366623, 30.822208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.947105, 39.446285, 30.816666>,  <40.569897, 39.579056, 30.807426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947105, 39.446285, 30.816666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021434, -0.129878, -0.991298,
		0.332041, 0.934320, -0.129592,
		0.943021, -0.331930, 0.023099,
		41.230011, 39.346706, 30.823595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889034, 39.747215, 30.209101>,  <40.569897, 39.579056, 30.807426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889034, 39.747215, 30.209101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.150261, 39.464340, 30.317459>,  <41.306995, 39.294613, 30.382475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.150261, 39.464340, 30.317459>,  <40.889034, 39.747215, 30.209101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150261, 39.464340, 30.317459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098986, -0.274930, -0.956355,
		0.750805, 0.651377, -0.109545,
		0.653066, -0.707192, 0.270896,
		41.346180, 39.252182, 30.398727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505627, 39.786613, 29.741415>,  <40.889034, 39.747215, 30.209101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505627, 39.786613, 29.741415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501503, 39.424313, 29.910887>,  <41.499027, 39.206932, 30.012569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501503, 39.424313, 29.910887>,  <41.505627, 39.786613, 29.741415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501503, 39.424313, 29.910887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114343, -0.421990, -0.899361,
		0.993388, 0.039172, 0.107917,
		-0.010310, -0.905754, 0.423679,
		41.498409, 39.152588, 30.037991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158001, 39.463524, 29.529848>,  <41.505627, 39.786613, 29.741415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158001, 39.463524, 29.529848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.903191, 39.164181, 29.603773>,  <41.750305, 38.984573, 29.648129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.903191, 39.164181, 29.603773>,  <42.158001, 39.463524, 29.529848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903191, 39.164181, 29.603773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130617, -0.341080, -0.930916,
		0.759696, -0.568877, 0.315025,
		-0.637025, -0.748361, 0.184812,
		41.712082, 38.939674, 29.659216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416454, 38.784107, 29.325275>,  <42.158001, 39.463524, 29.529848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416454, 38.784107, 29.325275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.026043, 38.699100, 29.344038>,  <41.791794, 38.648094, 29.355295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.026043, 38.699100, 29.344038>,  <42.416454, 38.784107, 29.325275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026043, 38.699100, 29.344038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065158, -0.490998, -0.868721,
		0.207653, -0.844841, 0.493076,
		-0.976030, -0.212520, 0.046908,
		41.733234, 38.635345, 29.358110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363880, 38.130634, 29.214033>,  <42.416454, 38.784107, 29.325275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363880, 38.130634, 29.214033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990059, 38.241367, 29.124619>,  <41.765766, 38.307808, 29.070971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990059, 38.241367, 29.124619>,  <42.363880, 38.130634, 29.214033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990059, 38.241367, 29.124619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047143, -0.526366, -0.848950,
		-0.352678, -0.803930, 0.478868,
		-0.934557, 0.276831, -0.223537,
		41.709694, 38.324417, 29.057558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935570, 37.556820, 29.132814>,  <42.363880, 38.130634, 29.214033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935570, 37.556820, 29.132814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741154, 37.840816, 28.928980>,  <41.624504, 38.011215, 28.806679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741154, 37.840816, 28.928980>,  <41.935570, 37.556820, 29.132814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741154, 37.840816, 28.928980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078660, -0.616266, -0.783600,
		-0.870389, -0.340777, 0.355378,
		-0.486041, 0.709991, -0.509586,
		41.595341, 38.053814, 28.776104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292336, 37.243958, 28.873411>,  <41.935570, 37.556820, 29.132814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292336, 37.243958, 28.873411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.346100, 37.579884, 28.663021>,  <41.378361, 37.781437, 28.536787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.346100, 37.579884, 28.663021>,  <41.292336, 37.243958, 28.873411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346100, 37.579884, 28.663021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148904, -0.507647, -0.848600,
		-0.979674, 0.192382, 0.056817,
		0.134413, 0.839812, -0.525975,
		41.386425, 37.831825, 28.505228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913132, 37.034466, 28.213655>,  <41.292336, 37.243958, 28.873411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913132, 37.034466, 28.213655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.090073, 37.378738, 28.112822>,  <41.196236, 37.585304, 28.052320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.090073, 37.378738, 28.112822>,  <40.913132, 37.034466, 28.213655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090073, 37.378738, 28.112822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091871, -0.323091, -0.941898,
		-0.892124, 0.393490, -0.221991,
		0.442351, 0.860684, -0.252087,
		41.222778, 37.636944, 28.037195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475327, 37.378284, 27.755136>,  <40.913132, 37.034466, 28.213655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475327, 37.378284, 27.755136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.857227, 37.466862, 27.675737>,  <41.086369, 37.520008, 27.628098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.857227, 37.466862, 27.675737>,  <40.475327, 37.378284, 27.755136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857227, 37.466862, 27.675737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100756, -0.387125, -0.916506,
		-0.279802, 0.895039, -0.347297,
		0.954756, 0.221448, -0.198499,
		41.143654, 37.533295, 27.616188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925850, 37.630348, 27.394537>,  <40.475327, 37.378284, 27.755136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925850, 37.630348, 27.394537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.562431, 37.468410, 27.353258>,  <39.344379, 37.371246, 27.328491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.562431, 37.468410, 27.353258>,  <39.925850, 37.630348, 27.394537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562431, 37.468410, 27.353258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231350, 0.281834, 0.931154,
		-0.347890, 0.869867, -0.349719,
		-0.908543, -0.404847, -0.103196,
		39.289867, 37.346958, 27.322300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446564, 38.107517, 27.446669>,  <39.925850, 37.630348, 27.394537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446564, 38.107517, 27.446669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272259, 37.760746, 27.543446>,  <39.167675, 37.552681, 27.601513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272259, 37.760746, 27.543446>,  <39.446564, 38.107517, 27.446669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272259, 37.760746, 27.543446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250683, 0.375073, 0.892456,
		-0.864446, 0.328250, -0.380769,
		-0.435765, -0.866933, 0.241944,
		39.141529, 37.500668, 27.616028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968555, 38.278854, 27.971848>,  <39.446564, 38.107517, 27.446669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968555, 38.278854, 27.971848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.968346, 37.879040, 27.984007>,  <38.968220, 37.639153, 27.991302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.968346, 37.879040, 27.984007>,  <38.968555, 38.278854, 27.971848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968346, 37.879040, 27.984007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165625, 0.030068, 0.985730,
		-0.986189, -0.004514, -0.165564,
		-0.000528, -0.999538, 0.030400,
		38.968185, 37.579178, 27.993128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598904, 38.126057, 28.565737>,  <38.968555, 38.278854, 27.971848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598904, 38.126057, 28.565737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766956, 37.764404, 28.534670>,  <38.867786, 37.547413, 28.516029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766956, 37.764404, 28.534670>,  <38.598904, 38.126057, 28.565737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766956, 37.764404, 28.534670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168402, -0.161777, 0.972352,
		-0.891703, -0.395433, -0.220225,
		0.420127, -0.904136, -0.077665,
		38.892994, 37.493164, 28.511370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112659, 37.649391, 28.797140>,  <38.598904, 38.126057, 28.565737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112659, 37.649391, 28.797140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477657, 37.496582, 28.855673>,  <38.696655, 37.404896, 28.890793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477657, 37.496582, 28.855673>,  <38.112659, 37.649391, 28.797140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477657, 37.496582, 28.855673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189933, -0.078820, 0.978628,
		-0.362324, -0.920786, -0.144481,
		0.912495, -0.382023, 0.146329,
		38.751408, 37.381977, 28.899572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950211, 37.000641, 29.085878>,  <38.112659, 37.649391, 28.797140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950211, 37.000641, 29.085878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.324322, 37.102848, 29.183832>,  <38.548786, 37.164173, 29.242605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.324322, 37.102848, 29.183832>,  <37.950211, 37.000641, 29.085878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324322, 37.102848, 29.183832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171890, -0.276892, 0.945402,
		0.309377, -0.926304, -0.215049,
		0.935275, 0.255521, 0.244886,
		38.604904, 37.179504, 29.257298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170143, 36.398216, 29.523914>,  <37.950211, 37.000641, 29.085878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170143, 36.398216, 29.523914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438419, 36.683044, 29.606993>,  <38.599384, 36.853939, 29.656839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438419, 36.683044, 29.606993>,  <38.170143, 36.398216, 29.523914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438419, 36.683044, 29.606993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006229, -0.274598, 0.961539,
		0.741714, -0.646185, -0.179734,
		0.670687, 0.712068, 0.207698,
		38.639626, 36.896664, 29.669302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815189, 36.043583, 29.758965>,  <38.170143, 36.398216, 29.523914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815189, 36.043583, 29.758965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.821468, 36.416187, 29.904318>,  <38.825237, 36.639748, 29.991529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.821468, 36.416187, 29.904318>,  <38.815189, 36.043583, 29.758965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821468, 36.416187, 29.904318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014759, -0.363171, 0.931606,
		0.999768, -0.019989, 0.008046,
		0.015700, 0.931508, 0.363382,
		38.826180, 36.695641, 30.013332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233006, 36.067120, 30.294064>,  <38.815189, 36.043583, 29.758965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233006, 36.067120, 30.294064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.032555, 36.405159, 30.368546>,  <38.912285, 36.607983, 30.413235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.032555, 36.405159, 30.368546>,  <39.233006, 36.067120, 30.294064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032555, 36.405159, 30.368546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114539, -0.278052, 0.953713,
		0.857760, 0.456604, 0.236137,
		-0.501128, 0.845103, 0.186203,
		38.882217, 36.658691, 30.424406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649872, 36.482353, 30.712685>,  <39.233006, 36.067120, 30.294064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649872, 36.482353, 30.712685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.269318, 36.591156, 30.770473>,  <39.040985, 36.656437, 30.805147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.269318, 36.591156, 30.770473>,  <39.649872, 36.482353, 30.712685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269318, 36.591156, 30.770473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103706, -0.158767, 0.981854,
		0.290005, 0.949109, 0.122841,
		-0.951390, 0.272003, 0.144471,
		38.983902, 36.672756, 30.813814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652134, 36.793602, 31.292706>,  <39.649872, 36.482353, 30.712685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652134, 36.793602, 31.292706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.253651, 36.760777, 31.281139>,  <39.014561, 36.741081, 31.274200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.253651, 36.760777, 31.281139>,  <39.652134, 36.793602, 31.292706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253651, 36.760777, 31.281139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039438, 0.129669, 0.990773,
		-0.077556, 0.988156, -0.132413,
		-0.996208, -0.082063, -0.028914,
		38.954788, 36.736156, 31.272465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398006, 37.311222, 31.810118>,  <39.652134, 36.793602, 31.292706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398006, 37.311222, 31.810118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109989, 37.037609, 31.763418>,  <38.937180, 36.873440, 31.735397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109989, 37.037609, 31.763418>,  <39.398006, 37.311222, 31.810118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109989, 37.037609, 31.763418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071761, -0.093942, 0.992988,
		-0.690205, 0.723377, 0.018556,
		-0.720047, -0.684033, -0.116750,
		38.893974, 36.832397, 31.728394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.447723, 37.800079, 23.387529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315350, 37.424835, 23.428368>,  <39.235924, 37.199688, 23.452871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315350, 37.424835, 23.428368>,  <39.447723, 37.800079, 23.387529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315350, 37.424835, 23.428368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447299, 0.251212, 0.858380,
		-0.830905, 0.238405, -0.502752,
		-0.330939, -0.938113, 0.102095,
		39.216068, 37.143402, 23.458996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780491, 37.838024, 23.584772>,  <39.447723, 37.800079, 23.387529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780491, 37.838024, 23.584772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897331, 37.480740, 23.721502>,  <38.967438, 37.266369, 23.803539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897331, 37.480740, 23.721502>,  <38.780491, 37.838024, 23.584772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897331, 37.480740, 23.721502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481139, 0.171645, 0.859676,
		-0.826548, -0.415579, -0.379623,
		0.292103, -0.893214, 0.341824,
		38.984962, 37.212776, 23.824049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216457, 37.622429, 24.073656>,  <38.780491, 37.838024, 23.584772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216457, 37.622429, 24.073656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527397, 37.384579, 24.155769>,  <38.713963, 37.241867, 24.205038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527397, 37.384579, 24.155769>,  <38.216457, 37.622429, 24.073656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527397, 37.384579, 24.155769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200568, 0.075020, 0.976803,
		-0.596236, -0.800492, -0.060946,
		0.777351, -0.594630, 0.205283,
		38.760601, 37.206188, 24.217354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949532, 37.073090, 24.572439>,  <38.216457, 37.622429, 24.073656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949532, 37.073090, 24.572439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346977, 37.074593, 24.617559>,  <38.585445, 37.075493, 24.644632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346977, 37.074593, 24.617559>,  <37.949532, 37.073090, 24.572439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346977, 37.074593, 24.617559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112858, 0.044238, 0.992626,
		-0.001272, -0.999014, 0.044378,
		0.993611, 0.003746, 0.112803,
		38.645061, 37.075718, 24.651400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108047, 36.678905, 25.193203>,  <37.949532, 37.073090, 24.572439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108047, 36.678905, 25.193203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452328, 36.880100, 25.161707>,  <38.658897, 37.000816, 25.142809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452328, 36.880100, 25.161707>,  <38.108047, 36.678905, 25.193203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452328, 36.880100, 25.161707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049066, 0.071990, 0.996198,
		0.506741, -0.861292, 0.037283,
		0.860701, 0.502985, -0.078740,
		38.710537, 37.030994, 25.138084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582264, 36.330456, 25.636810>,  <38.108047, 36.678905, 25.193203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582264, 36.330456, 25.636810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712299, 36.704285, 25.579000>,  <38.790321, 36.928581, 25.544315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712299, 36.704285, 25.579000>,  <38.582264, 36.330456, 25.636810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712299, 36.704285, 25.579000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115866, 0.112311, 0.986895,
		0.938560, -0.337571, -0.071775,
		0.325086, 0.934576, -0.144524,
		38.809826, 36.984657, 25.535643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033852, 36.294979, 26.192661>,  <38.582264, 36.330456, 25.636810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033852, 36.294979, 26.192661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999023, 36.683800, 26.105446>,  <38.978127, 36.917091, 26.053116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999023, 36.683800, 26.105446>,  <39.033852, 36.294979, 26.192661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999023, 36.683800, 26.105446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282866, 0.233984, 0.930182,
		0.955199, 0.019315, -0.295333,
		-0.087070, 0.972048, -0.218038,
		38.972904, 36.975414, 26.040035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648819, 36.661419, 26.436661>,  <39.033852, 36.294979, 26.192661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648819, 36.661419, 26.436661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357876, 36.935322, 26.418530>,  <39.183308, 37.099663, 26.407650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357876, 36.935322, 26.418530>,  <39.648819, 36.661419, 26.436661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357876, 36.935322, 26.418530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099380, 0.170458, 0.980341,
		0.679020, 0.708557, -0.192036,
		-0.727362, 0.684756, -0.045328,
		39.139668, 37.140747, 26.404930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945152, 37.197132, 26.797874>,  <39.648819, 36.661419, 26.436661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945152, 37.197132, 26.797874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546715, 37.229893, 26.811062>,  <39.307652, 37.249550, 26.818975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546715, 37.229893, 26.811062>,  <39.945152, 37.197132, 26.797874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546715, 37.229893, 26.811062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041370, 0.103077, 0.993813,
		0.077999, 0.991296, -0.106063,
		-0.996095, 0.081904, 0.032970,
		39.247887, 37.254463, 26.820953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547024, 37.640343, 26.917879>,  <39.945152, 37.197132, 26.797874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547024, 37.640343, 26.917879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934326, 37.583611, 27.000208>,  <41.166706, 37.549572, 27.049604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934326, 37.583611, 27.000208>,  <40.547024, 37.640343, 26.917879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934326, 37.583611, 27.000208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157427, -0.293570, -0.942886,
		0.194151, 0.945358, -0.261923,
		0.968257, -0.141828, 0.205821,
		41.224804, 37.541061, 27.061954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984581, 37.881634, 26.359898>,  <40.547024, 37.640343, 26.917879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984581, 37.881634, 26.359898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251934, 37.627705, 26.514952>,  <41.412346, 37.475346, 26.607985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251934, 37.627705, 26.514952>,  <40.984581, 37.881634, 26.359898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251934, 37.627705, 26.514952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257033, -0.291917, -0.921259,
		0.697994, 0.715391, -0.031942,
		0.668385, -0.634823, 0.387635,
		41.452450, 37.437256, 26.631243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529350, 38.051510, 25.897585>,  <40.984581, 37.881634, 26.359898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529350, 38.051510, 25.897585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618984, 37.700096, 26.066328>,  <41.672764, 37.489250, 26.167574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618984, 37.700096, 26.066328>,  <41.529350, 38.051510, 25.897585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618984, 37.700096, 26.066328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493154, -0.271137, -0.826609,
		0.840585, 0.393276, 0.372493,
		0.224089, -0.878532, 0.421860,
		41.686211, 37.436535, 26.192886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183430, 37.958698, 25.684580>,  <41.529350, 38.051510, 25.897585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183430, 37.958698, 25.684580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052250, 37.606598, 25.821756>,  <41.973541, 37.395340, 25.904062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052250, 37.606598, 25.821756>,  <42.183430, 37.958698, 25.684580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052250, 37.606598, 25.821756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520699, -0.471327, -0.711845,
		0.788238, -0.054883, 0.612919,
		-0.327954, -0.880249, 0.342940,
		41.953865, 37.342522, 25.924639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650085, 37.445412, 25.478230>,  <42.183430, 37.958698, 25.684580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650085, 37.445412, 25.478230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314560, 37.249950, 25.574234>,  <42.113243, 37.132675, 25.631838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314560, 37.249950, 25.574234>,  <42.650085, 37.445412, 25.478230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314560, 37.249950, 25.574234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178979, -0.663880, -0.726106,
		0.514153, -0.566113, 0.644332,
		-0.838817, -0.488651, 0.240013,
		42.062916, 37.103355, 25.646238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811672, 36.769794, 25.661236>,  <42.650085, 37.445412, 25.478230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811672, 36.769794, 25.661236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434177, 36.754654, 25.529829>,  <42.207680, 36.745571, 25.450985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434177, 36.754654, 25.529829>,  <42.811672, 36.769794, 25.661236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434177, 36.754654, 25.529829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285359, -0.595242, -0.751171,
		-0.167113, -0.802655, 0.572554,
		-0.943739, -0.037853, -0.328518,
		42.151054, 36.743298, 25.431274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685810, 36.053944, 25.479284>,  <42.811672, 36.769794, 25.661236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685810, 36.053944, 25.479284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405304, 36.277164, 25.301834>,  <42.237000, 36.411098, 25.195364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405304, 36.277164, 25.301834>,  <42.685810, 36.053944, 25.479284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405304, 36.277164, 25.301834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062003, -0.572179, -0.817781,
		-0.710200, -0.600987, 0.366648,
		-0.701264, 0.558055, -0.443625,
		42.194923, 36.444580, 25.168747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207420, 35.582096, 25.148430>,  <42.685810, 36.053944, 25.479284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207420, 35.582096, 25.148430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163143, 35.935165, 24.965719>,  <42.136578, 36.147007, 24.856092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163143, 35.935165, 24.965719>,  <42.207420, 35.582096, 25.148430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163143, 35.935165, 24.965719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018267, -0.457714, -0.888912,
		-0.993687, -0.106740, 0.034542,
		-0.110692, 0.882669, -0.456774,
		42.129936, 36.199966, 24.828688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686604, 35.490807, 24.542175>,  <42.207420, 35.582096, 25.148430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686604, 35.490807, 24.542175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911861, 35.813709, 24.471518>,  <42.047016, 36.007450, 24.429123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911861, 35.813709, 24.471518>,  <41.686604, 35.490807, 24.542175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911861, 35.813709, 24.471518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180275, -0.328628, -0.927095,
		-0.806453, 0.490246, -0.330594,
		0.563147, 0.807256, -0.176644,
		42.080807, 36.055885, 24.418524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647736, 35.578770, 23.802322>,  <41.686604, 35.490807, 24.542175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647736, 35.578770, 23.802322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954441, 35.823128, 23.881199>,  <42.138462, 35.969742, 23.928524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954441, 35.823128, 23.881199>,  <41.647736, 35.578770, 23.802322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954441, 35.823128, 23.881199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457281, -0.304207, -0.835674,
		-0.450523, 0.730934, -0.512605,
		0.766761, 0.610895, 0.197190,
		42.184471, 36.006397, 23.940355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703014, 36.001183, 23.166265>,  <41.647736, 35.578770, 23.802322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703014, 36.001183, 23.166265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053982, 35.995369, 23.358068>,  <42.264561, 35.991879, 23.473150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053982, 35.995369, 23.358068>,  <41.703014, 36.001183, 23.166265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053982, 35.995369, 23.358068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478407, -0.047618, -0.876846,
		0.035581, 0.998760, -0.034825,
		0.877417, -0.014539, 0.479508,
		42.317207, 35.991009, 23.501921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123566, 36.344501, 22.720490>,  <41.703014, 36.001183, 23.166265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123566, 36.344501, 22.720490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370739, 36.133499, 22.953690>,  <42.519043, 36.006897, 23.093609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370739, 36.133499, 22.953690>,  <42.123566, 36.344501, 22.720490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370739, 36.133499, 22.953690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553957, -0.234086, -0.798959,
		0.557930, 0.816663, 0.147567,
		0.617936, -0.527509, 0.583000,
		42.556118, 35.975246, 23.128590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731277, 36.599419, 22.394737>,  <42.123566, 36.344501, 22.720490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731277, 36.599419, 22.394737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823387, 36.266953, 22.597179>,  <42.878651, 36.067474, 22.718645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823387, 36.266953, 22.597179>,  <42.731277, 36.599419, 22.394737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823387, 36.266953, 22.597179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532528, -0.327671, -0.780414,
		0.814487, 0.449223, 0.367164,
		0.230270, -0.831162, 0.506108,
		42.892467, 36.017605, 22.749012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502262, 36.485935, 22.340139>,  <42.731277, 36.599419, 22.394737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502262, 36.485935, 22.340139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325531, 36.140381, 22.436882>,  <43.219494, 35.933048, 22.494928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325531, 36.140381, 22.436882>,  <43.502262, 36.485935, 22.340139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325531, 36.140381, 22.436882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584281, -0.481686, -0.653141,
		0.680737, -0.147263, 0.717573,
		-0.441829, -0.863882, 0.241859,
		43.192982, 35.881218, 22.509439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.657604, 30.292118, 23.196716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.678772, 30.688164, 23.144764>,  <39.691475, 30.925791, 23.113592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.678772, 30.688164, 23.144764>,  <39.657604, 30.292118, 23.196716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678772, 30.688164, 23.144764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002947, 0.130216, 0.991481,
		0.998594, -0.052088, 0.009809,
		0.052922, 0.990117, -0.129879,
		39.694649, 30.985199, 23.105801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065414, 30.537741, 23.742495>,  <39.657604, 30.292118, 23.196716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065414, 30.537741, 23.742495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859169, 30.858730, 23.622375>,  <39.735420, 31.051323, 23.550304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859169, 30.858730, 23.622375>,  <40.065414, 30.537741, 23.742495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859169, 30.858730, 23.622375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036489, 0.329597, 0.943416,
		0.856044, 0.497396, -0.140664,
		-0.515614, 0.802473, -0.300299,
		39.704483, 31.099472, 23.532286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380878, 31.111406, 24.083694>,  <40.065414, 30.537741, 23.742495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380878, 31.111406, 24.083694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039345, 31.272102, 23.951288>,  <39.834423, 31.368521, 23.871843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039345, 31.272102, 23.951288>,  <40.380878, 31.111406, 24.083694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039345, 31.272102, 23.951288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102807, 0.493234, 0.863800,
		0.510294, 0.771572, -0.379838,
		-0.853833, 0.401742, -0.331017,
		39.783195, 31.392626, 23.851982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405529, 31.805714, 24.270338>,  <40.380878, 31.111406, 24.083694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405529, 31.805714, 24.270338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.015419, 31.722475, 24.240587>,  <39.781353, 31.672531, 24.222736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.015419, 31.722475, 24.240587>,  <40.405529, 31.805714, 24.270338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015419, 31.722475, 24.240587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154440, 0.401102, 0.902921,
		-0.158062, 0.892084, -0.423324,
		-0.975277, -0.208096, -0.074375,
		39.722836, 31.660046, 24.218275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099739, 32.390015, 24.444712>,  <40.405529, 31.805714, 24.270338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099739, 32.390015, 24.444712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.823456, 32.103756, 24.486233>,  <39.657684, 31.932001, 24.511145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.823456, 32.103756, 24.486233>,  <40.099739, 32.390015, 24.444712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823456, 32.103756, 24.486233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370034, 0.473107, 0.799528,
		-0.621288, 0.513829, -0.591592,
		-0.690707, -0.715646, 0.103802,
		39.616245, 31.889063, 24.517374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532112, 32.812435, 24.665211>,  <40.099739, 32.390015, 24.444712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532112, 32.812435, 24.665211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.433792, 32.443893, 24.785667>,  <39.374802, 32.222767, 24.857941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.433792, 32.443893, 24.785667>,  <39.532112, 32.812435, 24.665211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433792, 32.443893, 24.785667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366602, 0.375959, 0.851033,
		-0.897321, 0.098785, -0.430182,
		-0.245800, -0.921355, 0.301141,
		39.360050, 32.167488, 24.876009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903973, 32.878281, 24.880865>,  <39.532112, 32.812435, 24.665211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903973, 32.878281, 24.880865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.019047, 32.537579, 25.056021>,  <39.088093, 32.333157, 25.161114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.019047, 32.537579, 25.056021>,  <38.903973, 32.878281, 24.880865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019047, 32.537579, 25.056021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337859, 0.337564, 0.878580,
		-0.896153, -0.400697, -0.190662,
		0.287684, -0.851758, 0.437888,
		39.105350, 32.282051, 25.187387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338047, 32.638763, 25.177177>,  <38.903973, 32.878281, 24.880865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338047, 32.638763, 25.177177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626812, 32.441959, 25.371815>,  <38.800072, 32.323879, 25.488596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626812, 32.441959, 25.371815>,  <38.338047, 32.638763, 25.177177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626812, 32.441959, 25.371815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447938, 0.203714, 0.870547,
		-0.527442, -0.846421, -0.073325,
		0.721912, -0.492008, 0.486591,
		38.843388, 32.294357, 25.517792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983849, 32.552162, 25.731398>,  <38.338047, 32.638763, 25.177177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983849, 32.552162, 25.731398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.355972, 32.463936, 25.848618>,  <38.579247, 32.410999, 25.918949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.355972, 32.463936, 25.848618>,  <37.983849, 32.552162, 25.731398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355972, 32.463936, 25.848618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226218, 0.283861, 0.931798,
		-0.288707, -0.933153, 0.214183,
		0.930308, -0.220565, 0.293049,
		38.635063, 32.397766, 25.936533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815865, 32.241482, 26.303574>,  <37.983849, 32.552162, 25.731398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815865, 32.241482, 26.303574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188828, 32.374519, 26.360134>,  <38.412605, 32.454342, 26.394072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188828, 32.374519, 26.360134>,  <37.815865, 32.241482, 26.303574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188828, 32.374519, 26.360134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215497, 0.197556, 0.956312,
		0.290135, -0.922143, 0.255877,
		0.932407, 0.332600, 0.141401,
		38.468552, 32.474297, 26.402555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057796, 31.840036, 26.803020>,  <37.815865, 32.241482, 26.303574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057796, 31.840036, 26.803020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314194, 32.145939, 26.829163>,  <38.468033, 32.329479, 26.844849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314194, 32.145939, 26.829163>,  <38.057796, 31.840036, 26.803020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314194, 32.145939, 26.829163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156067, 0.046490, 0.986652,
		0.751512, -0.642638, 0.149154,
		0.640994, 0.764758, 0.065357,
		38.506493, 32.375366, 26.848770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659019, 31.599619, 27.314102>,  <38.057796, 31.840036, 26.803020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659019, 31.599619, 27.314102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.649239, 31.999083, 27.295835>,  <38.643372, 32.238762, 27.284876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.649239, 31.999083, 27.295835>,  <38.659019, 31.599619, 27.314102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649239, 31.999083, 27.295835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080390, 0.043566, 0.995811,
		0.996464, 0.028022, 0.079217,
		-0.024454, 0.998658, -0.045665,
		38.641903, 32.298679, 27.282137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081898, 31.818190, 27.888504>,  <38.659019, 31.599619, 27.314102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081898, 31.818190, 27.888504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.883114, 32.153126, 27.797384>,  <38.763844, 32.354088, 27.742712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.883114, 32.153126, 27.797384>,  <39.081898, 31.818190, 27.888504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883114, 32.153126, 27.797384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207651, 0.140135, 0.968113,
		0.842564, 0.528414, 0.104233,
		-0.496958, 0.837342, -0.227799,
		38.734028, 32.404327, 27.729044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386627, 32.463009, 28.249119>,  <39.081898, 31.818190, 27.888504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386627, 32.463009, 28.249119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.003788, 32.536804, 28.159750>,  <38.774082, 32.581081, 28.106129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.003788, 32.536804, 28.159750>,  <39.386627, 32.463009, 28.249119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003788, 32.536804, 28.159750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165562, 0.284604, 0.944240,
		0.237790, 0.940725, -0.241851,
		-0.957102, 0.184489, -0.223424,
		38.716656, 32.592152, 28.092722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144657, 32.633602, 28.297523>,  <39.386627, 32.463009, 28.249119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144657, 32.633602, 28.297523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.451698, 32.436279, 28.461201>,  <40.635921, 32.317886, 28.559406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.451698, 32.436279, 28.461201>,  <40.144657, 32.633602, 28.297523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451698, 32.436279, 28.461201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359591, -0.197020, -0.912073,
		0.530554, 0.847248, 0.026157,
		0.767599, -0.493310, 0.409192,
		40.681976, 32.288288, 28.583958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748638, 32.941807, 28.016182>,  <40.144657, 32.633602, 28.297523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748638, 32.941807, 28.016182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.827518, 32.563343, 28.118868>,  <40.874847, 32.336266, 28.180479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.827518, 32.563343, 28.118868>,  <40.748638, 32.941807, 28.016182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827518, 32.563343, 28.118868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354244, -0.175395, -0.918557,
		0.914124, 0.272078, 0.300582,
		0.197199, -0.946155, 0.256715,
		40.886677, 32.279495, 28.195883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367680, 32.775570, 27.702808>,  <40.748638, 32.941807, 28.016182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367680, 32.775570, 27.702808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.263481, 32.398808, 27.787619>,  <41.200962, 32.172749, 27.838505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.263481, 32.398808, 27.787619>,  <41.367680, 32.775570, 27.702808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263481, 32.398808, 27.787619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261312, -0.280196, -0.923692,
		0.929439, -0.185216, 0.319122,
		-0.260499, -0.941905, 0.212026,
		41.185329, 32.116238, 27.851227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867020, 32.398163, 27.437654>,  <41.367680, 32.775570, 27.702808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867020, 32.398163, 27.437654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.580379, 32.125267, 27.495661>,  <41.408394, 31.961529, 27.530464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.580379, 32.125267, 27.495661>,  <41.867020, 32.398163, 27.437654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580379, 32.125267, 27.495661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274182, -0.466717, -0.840833,
		0.641334, -0.562779, 0.521508,
		-0.716599, -0.682243, 0.145018,
		41.365398, 31.920593, 27.539165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215164, 31.775873, 27.458532>,  <41.867020, 32.398163, 27.437654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215164, 31.775873, 27.458532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.833023, 31.709509, 27.360739>,  <41.603737, 31.669691, 27.302063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.833023, 31.709509, 27.360739>,  <42.215164, 31.775873, 27.458532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833023, 31.709509, 27.360739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295080, -0.493547, -0.818131,
		0.015072, -0.853747, 0.520469,
		-0.955353, -0.165911, -0.244485,
		41.546417, 31.659737, 27.287394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320084, 31.202850, 27.138603>,  <42.215164, 31.775873, 27.458532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320084, 31.202850, 27.138603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.955875, 31.328703, 27.031303>,  <41.737350, 31.404215, 26.966925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.955875, 31.328703, 27.031303>,  <42.320084, 31.202850, 27.138603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955875, 31.328703, 27.031303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223983, -0.169990, -0.959653,
		-0.347537, -0.933869, 0.084307,
		-0.910521, 0.314632, -0.268249,
		41.682720, 31.423092, 26.950829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031609, 30.672651, 26.647285>,  <42.320084, 31.202850, 27.138603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031609, 30.672651, 26.647285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.864372, 31.030231, 26.582726>,  <41.764030, 31.244780, 26.543989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.864372, 31.030231, 26.582726>,  <42.031609, 30.672651, 26.647285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864372, 31.030231, 26.582726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350715, -0.005053, -0.936468,
		-0.837974, -0.448134, -0.311410,
		-0.418089, 0.893952, -0.161402,
		41.738945, 31.298418, 26.534306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768131, 30.577843, 25.923334>,  <42.031609, 30.672651, 26.647285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768131, 30.577843, 25.923334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.766750, 30.973314, 25.983335>,  <41.765923, 31.210598, 26.019337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.766750, 30.973314, 25.983335>,  <41.768131, 30.577843, 25.923334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766750, 30.973314, 25.983335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274362, 0.145184, -0.950603,
		-0.961620, 0.037874, -0.271757,
		-0.003452, 0.988680, 0.150003,
		41.765717, 31.269918, 26.028336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411983, 30.798508, 25.441746>,  <41.768131, 30.577843, 25.923334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411983, 30.798508, 25.441746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.579071, 31.146353, 25.547035>,  <41.679321, 31.355061, 25.610209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.579071, 31.146353, 25.547035>,  <41.411983, 30.798508, 25.441746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579071, 31.146353, 25.547035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370937, 0.101240, -0.923123,
		-0.829408, 0.483243, -0.280282,
		0.417717, 0.869613, 0.263222,
		41.704388, 31.407236, 25.626001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147911, 31.273273, 24.941710>,  <41.411983, 30.798508, 25.441746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147911, 31.273273, 24.941710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.480846, 31.419739, 25.108152>,  <41.680607, 31.507618, 25.208017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.480846, 31.419739, 25.108152>,  <41.147911, 31.273273, 24.941710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480846, 31.419739, 25.108152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398267, 0.127029, -0.908431,
		-0.385491, 0.921840, -0.040100,
		0.832334, 0.366162, 0.416107,
		41.730545, 31.529587, 25.232985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259396, 31.905373, 24.609535>,  <41.147911, 31.273273, 24.941710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259396, 31.905373, 24.609535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.613708, 31.785772, 24.751511>,  <41.826298, 31.714012, 24.836695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.613708, 31.785772, 24.751511>,  <41.259396, 31.905373, 24.609535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613708, 31.785772, 24.751511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403857, 0.119812, -0.906942,
		0.228651, 0.946701, 0.226882,
		0.885787, -0.299001, 0.354937,
		41.879444, 31.696072, 24.857992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743534, 32.350372, 24.444080>,  <41.259396, 31.905373, 24.609535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743534, 32.350372, 24.444080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.956123, 32.017342, 24.506500>,  <42.083675, 31.817522, 24.543951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.956123, 32.017342, 24.506500>,  <41.743534, 32.350372, 24.444080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956123, 32.017342, 24.506500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339951, 0.040907, -0.939553,
		0.775870, 0.552392, 0.304777,
		0.531469, -0.832580, 0.156048,
		42.115562, 31.767567, 24.553314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354404, 32.555805, 24.055634>,  <41.743534, 32.350372, 24.444080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354404, 32.555805, 24.055634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.392342, 32.162071, 24.115091>,  <42.415104, 31.925831, 24.150766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.392342, 32.162071, 24.115091>,  <42.354404, 32.555805, 24.055634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392342, 32.162071, 24.115091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323663, -0.110714, -0.939673,
		0.941407, 0.137234, 0.308091,
		0.094845, -0.984332, 0.148644,
		42.420795, 31.866772, 24.159685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040173, 32.324265, 23.986891>,  <42.354404, 32.555805, 24.055634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040173, 32.324265, 23.986891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.797131, 32.016823, 23.906820>,  <42.651306, 31.832357, 23.858778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.797131, 32.016823, 23.906820>,  <43.040173, 32.324265, 23.986891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797131, 32.016823, 23.906820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316440, -0.003101, -0.948607,
		0.728481, -0.639719, 0.245100,
		-0.607603, -0.768602, -0.200174,
		42.614849, 31.786242, 23.846767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735085, 32.019867, 23.921284>,  <43.040173, 32.324265, 23.986891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735085, 32.019867, 23.921284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.879868, 32.380703, 23.827288>,  <43.966736, 32.597206, 23.770889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.879868, 32.380703, 23.827288>,  <43.735085, 32.019867, 23.921284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879868, 32.380703, 23.827288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313424, 0.355173, 0.880692,
		0.877926, -0.245118, 0.411293,
		0.361954, 0.902092, -0.234990,
		43.988453, 32.651329, 23.756790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076443, 32.285652, 24.513254>,  <43.735085, 32.019867, 23.921284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076443, 32.285652, 24.513254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.020012, 32.620087, 24.301197>,  <43.986153, 32.820747, 24.173964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.020012, 32.620087, 24.301197>,  <44.076443, 32.285652, 24.513254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020012, 32.620087, 24.301197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204889, 0.499246, 0.841887,
		0.968565, 0.227391, 0.100874,
		-0.141077, 0.836090, -0.530142,
		43.977688, 32.870914, 24.142155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598400, 32.766811, 24.632252>,  <44.076443, 32.285652, 24.513254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598400, 32.766811, 24.632252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.315056, 33.014469, 24.496679>,  <44.145050, 33.163063, 24.415337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.315056, 33.014469, 24.496679>,  <44.598400, 32.766811, 24.632252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315056, 33.014469, 24.496679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024321, 0.501301, 0.864931,
		0.705427, 0.604444, -0.370163,
		-0.708365, 0.619148, -0.338931,
		44.102547, 33.200214, 24.395000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860107, 33.466545, 24.798801>,  <44.598400, 32.766811, 24.632252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860107, 33.466545, 24.798801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.468193, 33.522099, 24.741198>,  <44.233044, 33.555431, 24.706635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.468193, 33.522099, 24.741198>,  <44.860107, 33.466545, 24.798801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468193, 33.522099, 24.741198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044129, 0.552043, 0.832647,
		0.195143, 0.822168, -0.534752,
		-0.979782, 0.138887, -0.144009,
		44.174259, 33.563766, 24.697994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721367, 34.202198, 24.845655>,  <44.860107, 33.466545, 24.798801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721367, 34.202198, 24.845655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.352966, 34.051788, 24.886375>,  <44.131927, 33.961544, 24.910809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.352966, 34.051788, 24.886375>,  <44.721367, 34.202198, 24.845655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352966, 34.051788, 24.886375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135994, 0.555226, 0.820506,
		-0.365054, 0.741841, -0.562500,
		-0.921000, -0.376026, 0.101802,
		44.076668, 33.938980, 24.916916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358719, 34.711369, 24.958954>,  <44.721367, 34.202198, 24.845655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358719, 34.711369, 24.958954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.135201, 34.416370, 25.110662>,  <44.001091, 34.239372, 25.201689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.135201, 34.416370, 25.110662>,  <44.358719, 34.711369, 24.958954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135201, 34.416370, 25.110662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065573, 0.495197, 0.866302,
		-0.826711, 0.459213, -0.325072,
		-0.558792, -0.737498, 0.379273,
		43.967564, 34.195122, 25.224445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697056, 34.984581, 25.231741>,  <44.358719, 34.711369, 24.958954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697056, 34.984581, 25.231741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.746971, 34.650997, 25.446751>,  <43.776920, 34.450848, 25.575756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.746971, 34.650997, 25.446751>,  <43.697056, 34.984581, 25.231741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746971, 34.650997, 25.446751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179582, 0.513829, 0.838886,
		-0.975797, -0.201210, -0.085647,
		0.124785, -0.833963, 0.537526,
		43.784405, 34.400806, 25.608009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252270, 35.061268, 25.756487>,  <43.697056, 34.984581, 25.231741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252270, 35.061268, 25.756487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.484135, 34.768398, 25.899546>,  <43.623253, 34.592678, 25.985382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.484135, 34.768398, 25.899546>,  <43.252270, 35.061268, 25.756487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484135, 34.768398, 25.899546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172003, 0.319079, 0.931989,
		-0.796495, -0.601757, 0.059023,
		0.579664, -0.732173, 0.357648,
		43.658035, 34.548748, 26.006840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752155, 34.653564, 26.218393>,  <43.252270, 35.061268, 25.756487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752155, 34.653564, 26.218393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.136642, 34.595310, 26.312067>,  <43.367336, 34.560356, 26.368271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.136642, 34.595310, 26.312067>,  <42.752155, 34.653564, 26.218393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136642, 34.595310, 26.312067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185414, 0.287318, 0.939718,
		-0.204142, -0.946699, 0.249174,
		0.961222, -0.145636, 0.234185,
		43.425011, 34.551620, 26.382322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786953, 34.315342, 27.000078>,  <42.752155, 34.653564, 26.218393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786953, 34.315342, 27.000078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.146599, 34.454857, 26.894299>,  <43.362389, 34.538567, 26.830830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.146599, 34.454857, 26.894299>,  <42.786953, 34.315342, 27.000078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146599, 34.454857, 26.894299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118543, 0.387558, 0.914191,
		0.421349, -0.853315, 0.307114,
		0.899118, 0.348787, -0.264452,
		43.416336, 34.559494, 26.814962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243492, 34.089165, 27.510139>,  <42.786953, 34.315342, 27.000078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243492, 34.089165, 27.510139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.422981, 34.401951, 27.337084>,  <43.530674, 34.589622, 27.233252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.422981, 34.401951, 27.337084>,  <43.243492, 34.089165, 27.510139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422981, 34.401951, 27.337084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199776, 0.384089, 0.901424,
		0.871054, -0.490922, 0.016132,
		0.448725, 0.781966, -0.432637,
		43.557598, 34.636539, 27.207293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706039, 34.238052, 27.989384>,  <43.243492, 34.089165, 27.510139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706039, 34.238052, 27.989384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.709339, 34.568153, 27.763500>,  <43.711319, 34.766212, 27.627970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.709339, 34.568153, 27.763500>,  <43.706039, 34.238052, 27.989384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709339, 34.568153, 27.763500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120010, 0.559829, 0.819872,
		0.992738, -0.074535, -0.094419,
		0.008251, 0.825249, -0.564708,
		43.711815, 34.815727, 27.594088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217434, 34.637730, 28.188728>,  <43.706039, 34.238052, 27.989384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217434, 34.637730, 28.188728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.980961, 34.903641, 28.006046>,  <43.839077, 35.063187, 27.896437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.980961, 34.903641, 28.006046>,  <44.217434, 34.637730, 28.188728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980961, 34.903641, 28.006046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010873, 0.572770, 0.819644,
		0.806467, 0.479590, -0.345838,
		-0.591179, 0.664776, -0.456706,
		43.803608, 35.103073, 27.869034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540508, 35.344463, 28.406250>,  <44.217434, 34.637730, 28.188728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540508, 35.344463, 28.406250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.170158, 35.406895, 28.268612>,  <43.947948, 35.444355, 28.186029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.170158, 35.406895, 28.268612>,  <44.540508, 35.344463, 28.406250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170158, 35.406895, 28.268612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154378, 0.674943, 0.721540,
		0.344860, 0.721174, -0.600816,
		-0.925872, 0.156078, -0.344094,
		43.892395, 35.453716, 28.165384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.081036, 35.965755, 22.274841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.732342, 35.775307, 22.228558>,  <43.523125, 35.661037, 22.200787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.732342, 35.775307, 22.228558>,  <44.081036, 35.965755, 22.274841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732342, 35.775307, 22.228558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335638, -0.408208, -0.848948,
		0.356966, -0.778895, 0.515653,
		-0.871735, -0.476119, -0.115711,
		43.470821, 35.632473, 22.193844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254463, 35.309944, 22.124802>,  <44.081036, 35.965755, 22.274841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254463, 35.309944, 22.124802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.866203, 35.311214, 22.028606>,  <43.633247, 35.311977, 21.970888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.866203, 35.311214, 22.028606>,  <44.254463, 35.309944, 22.124802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866203, 35.311214, 22.028606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216110, -0.427328, -0.877888,
		-0.105555, -0.904091, 0.414099,
		-0.970647, 0.003174, -0.240490,
		43.575008, 35.312168, 21.956459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184238, 34.713139, 21.916727>,  <44.254463, 35.309944, 22.124802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184238, 34.713139, 21.916727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.866158, 34.893002, 21.754019>,  <43.675308, 35.000919, 21.656395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.866158, 34.893002, 21.754019>,  <44.184238, 34.713139, 21.916727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866158, 34.893002, 21.754019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303677, -0.285307, -0.909054,
		-0.524814, -0.846411, 0.090328,
		-0.795204, 0.449654, -0.406769,
		43.627598, 35.027897, 21.631989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026466, 34.233082, 21.476078>,  <44.184238, 34.713139, 21.916727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026466, 34.233082, 21.476078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.848015, 34.564751, 21.341354>,  <43.740944, 34.763752, 21.260519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.848015, 34.564751, 21.341354>,  <44.026466, 34.233082, 21.476078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848015, 34.564751, 21.341354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287048, -0.223885, -0.931386,
		-0.847685, -0.512202, -0.138130,
		-0.446132, 0.829171, -0.336810,
		43.714176, 34.813503, 21.240311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649937, 34.034832, 20.868711>,  <44.026466, 34.233082, 21.476078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649937, 34.034832, 20.868711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.726524, 34.427105, 20.852709>,  <43.772476, 34.662468, 20.843107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.726524, 34.427105, 20.852709>,  <43.649937, 34.034832, 20.868711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726524, 34.427105, 20.852709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421982, -0.119054, -0.898753,
		-0.886154, 0.155203, -0.436626,
		0.191471, 0.980682, -0.040007,
		43.783966, 34.721310, 20.840706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457912, 34.277164, 20.131845>,  <43.649937, 34.034832, 20.868711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457912, 34.277164, 20.131845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.713619, 34.559143, 20.254732>,  <43.867043, 34.728333, 20.328465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.713619, 34.559143, 20.254732>,  <43.457912, 34.277164, 20.131845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713619, 34.559143, 20.254732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437028, -0.004335, -0.899437,
		-0.632728, 0.709243, -0.310854,
		0.639267, 0.704951, 0.307216,
		43.905399, 34.770630, 20.346897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493423, 34.764343, 19.558313>,  <43.457912, 34.277164, 20.131845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493423, 34.764343, 19.558313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.817715, 34.873085, 19.765701>,  <44.012291, 34.938332, 19.890133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.817715, 34.873085, 19.765701>,  <43.493423, 34.764343, 19.558313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817715, 34.873085, 19.765701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514968, 0.090034, -0.852468,
		-0.278428, 0.958117, -0.067004,
		0.810731, 0.271856, 0.518468,
		44.060936, 34.954643, 19.921242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714928, 35.346542, 19.145575>,  <43.493423, 34.764343, 19.558313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714928, 35.346542, 19.145575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.035652, 35.210323, 19.341993>,  <44.228088, 35.128590, 19.459845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.035652, 35.210323, 19.341993>,  <43.714928, 35.346542, 19.145575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035652, 35.210323, 19.341993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542147, 0.068925, -0.837452,
		0.251349, 0.937696, 0.239893,
		0.801811, -0.340551, 0.491045,
		44.276196, 35.108158, 19.489307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196312, 35.744709, 18.893551>,  <43.714928, 35.346542, 19.145575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196312, 35.744709, 18.893551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.394047, 35.436138, 19.053816>,  <44.512688, 35.250996, 19.149975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.394047, 35.436138, 19.053816>,  <44.196312, 35.744709, 18.893551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394047, 35.436138, 19.053816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541639, -0.087155, -0.836081,
		0.679894, 0.630323, 0.374750,
		0.494340, -0.771425, 0.400663,
		44.542347, 35.204712, 19.174015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981506, 35.837524, 18.733805>,  <44.196312, 35.744709, 18.893551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981506, 35.837524, 18.733805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.907787, 35.452621, 18.813906>,  <44.863556, 35.221680, 18.861967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.907787, 35.452621, 18.813906>,  <44.981506, 35.837524, 18.733805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907787, 35.452621, 18.813906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382904, -0.257937, -0.887047,
		0.905218, -0.086799, 0.415987,
		-0.184293, -0.962255, 0.200254,
		44.852501, 35.163944, 18.873981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662132, 35.562557, 18.871922>,  <44.981506, 35.837524, 18.733805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662132, 35.562557, 18.871922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.391468, 35.292446, 18.754530>,  <45.229069, 35.130379, 18.684095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.391468, 35.292446, 18.754530>,  <45.662132, 35.562557, 18.871922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391468, 35.292446, 18.754530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545848, -0.192564, -0.815457,
		0.494147, -0.711982, 0.498900,
		-0.676660, -0.675279, -0.293479,
		45.188469, 35.089863, 18.666487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.860523, 34.745827, 18.813679>,  <45.662132, 35.562557, 18.871922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.860523, 34.745827, 18.813679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.586391, 34.883915, 18.557196>,  <45.421913, 34.966766, 18.403305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.586391, 34.883915, 18.557196>,  <45.860523, 34.745827, 18.813679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.586391, 34.883915, 18.557196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535802, -0.357280, -0.765027,
		-0.493195, -0.867855, 0.059884,
		-0.685328, 0.345222, -0.641207,
		45.380795, 34.987480, 18.364834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501762, 34.275085, 18.349436>,  <45.860523, 34.745827, 18.813679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501762, 34.275085, 18.349436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.576134, 34.634888, 18.191290>,  <45.620754, 34.850769, 18.096401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.576134, 34.634888, 18.191290>,  <45.501762, 34.275085, 18.349436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576134, 34.634888, 18.191290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646116, -0.415075, -0.640505,
		-0.740247, -0.136366, -0.658360,
		0.185925, 0.899509, -0.395366,
		45.631912, 34.904739, 18.072680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749691, 33.585403, 18.210907>,  <45.501762, 34.275085, 18.349436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749691, 33.585403, 18.210907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.814827, 33.194584, 18.155977>,  <45.853909, 32.960091, 18.123020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.814827, 33.194584, 18.155977>,  <45.749691, 33.585403, 18.210907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.814827, 33.194584, 18.155977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471214, -0.199297, 0.859208,
		-0.866857, -0.075205, -0.492852,
		0.162841, -0.977049, -0.137324,
		45.863678, 32.901470, 18.114780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209549, 33.401875, 18.598442>,  <45.749691, 33.585403, 18.210907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209549, 33.401875, 18.598442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.453888, 33.085602, 18.582050>,  <45.600491, 32.895836, 18.572214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.453888, 33.085602, 18.582050>,  <45.209549, 33.401875, 18.598442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453888, 33.085602, 18.582050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278858, -0.263301, 0.923532,
		-0.741013, -0.552712, -0.381326,
		0.610850, -0.790685, -0.040981,
		45.637142, 32.848396, 18.569756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676849, 32.818691, 18.689526>,  <45.209549, 33.401875, 18.598442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676849, 32.818691, 18.689526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.057205, 32.742397, 18.787035>,  <45.285419, 32.696621, 18.845541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.057205, 32.742397, 18.787035>,  <44.676849, 32.818691, 18.689526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057205, 32.742397, 18.787035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283309, -0.219123, 0.933660,
		-0.124661, -0.956874, -0.262398,
		0.950892, -0.190731, 0.243775,
		45.342472, 32.685177, 18.860167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633659, 32.453098, 19.193451>,  <44.676849, 32.818691, 18.689526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633659, 32.453098, 19.193451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.031757, 32.443813, 19.231308>,  <45.270615, 32.438240, 19.254023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.031757, 32.443813, 19.231308>,  <44.633659, 32.453098, 19.193451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031757, 32.443813, 19.231308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097417, -0.212268, 0.972344,
		-0.002481, -0.976936, -0.213519,
		0.995241, -0.023213, 0.094643,
		45.330330, 32.436848, 19.259701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780281, 31.861181, 19.552380>,  <44.633659, 32.453098, 19.193451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780281, 31.861181, 19.552380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.104652, 32.091576, 19.593637>,  <45.299274, 32.229813, 19.618391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.104652, 32.091576, 19.593637>,  <44.780281, 31.861181, 19.552380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104652, 32.091576, 19.593637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062377, -0.090171, 0.993971,
		0.581813, -0.812472, -0.037194,
		0.810928, 0.575985, 0.103142,
		45.347931, 32.264370, 19.624580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261543, 31.548798, 19.931633>,  <44.780281, 31.861181, 19.552380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261543, 31.548798, 19.931633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.328003, 31.940378, 19.979050>,  <45.367878, 32.175327, 20.007500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.328003, 31.940378, 19.979050>,  <45.261543, 31.548798, 19.931633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328003, 31.940378, 19.979050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022528, -0.116413, 0.992945,
		0.985844, -0.167643, 0.002713,
		0.166144, 0.978951, 0.118542,
		45.377846, 32.234062, 20.014612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665932, 31.643353, 20.623030>,  <45.261543, 31.548798, 19.931633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665932, 31.643353, 20.623030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.555687, 32.017132, 20.532835>,  <45.489540, 32.241398, 20.478718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.555687, 32.017132, 20.532835>,  <45.665932, 31.643353, 20.623030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555687, 32.017132, 20.532835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271456, 0.149364, 0.950791,
		0.922144, 0.323259, 0.212495,
		-0.275612, 0.934449, -0.225486,
		45.473003, 32.297466, 20.465189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.039936, 32.049496, 21.076365>,  <45.665932, 31.643353, 20.623030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.039936, 32.049496, 21.076365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.716080, 32.251247, 20.956306>,  <45.521767, 32.372299, 20.884272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.716080, 32.251247, 20.956306>,  <46.039936, 32.049496, 21.076365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716080, 32.251247, 20.956306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197372, 0.247631, 0.948538,
		0.552743, 0.827215, -0.100943,
		-0.809641, 0.504375, -0.300145,
		45.473186, 32.402561, 20.866262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.988873, 32.701809, 21.589350>,  <46.039936, 32.049496, 21.076365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.988873, 32.701809, 21.589350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.629280, 32.687634, 21.414730>,  <45.413525, 32.679131, 21.309958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.629280, 32.687634, 21.414730>,  <45.988873, 32.701809, 21.589350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629280, 32.687634, 21.414730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435300, 0.182494, 0.881595,
		0.048429, 0.982568, -0.179483,
		-0.898982, -0.035435, -0.436550,
		45.359585, 32.677002, 21.283766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613731, 33.155788, 21.856768>,  <45.988873, 32.701809, 21.589350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613731, 33.155788, 21.856768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.311604, 32.964527, 21.677494>,  <45.130325, 32.849770, 21.569931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.311604, 32.964527, 21.677494>,  <45.613731, 33.155788, 21.856768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311604, 32.964527, 21.677494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552675, 0.097212, 0.827708,
		-0.352199, 0.872882, -0.337687,
		-0.755319, -0.478149, -0.448182,
		45.085007, 32.821083, 21.543039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928551, 33.628151, 21.778969>,  <45.613731, 33.155788, 21.856768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928551, 33.628151, 21.778969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.884693, 33.231007, 21.797773>,  <44.858379, 32.992722, 21.809055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.884693, 33.231007, 21.797773>,  <44.928551, 33.628151, 21.778969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.884693, 33.231007, 21.797773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634768, 0.106337, 0.765351,
		-0.764884, 0.054077, -0.641894,
		-0.109645, -0.992859, 0.047009,
		44.851799, 32.933147, 21.811876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211540, 33.560665, 21.928505>,  <44.928551, 33.628151, 21.778969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211540, 33.560665, 21.928505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.357479, 33.201866, 22.028328>,  <44.445042, 32.986588, 22.088223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.357479, 33.201866, 22.028328>,  <44.211540, 33.560665, 21.928505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357479, 33.201866, 22.028328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548993, 0.009225, 0.835776,
		-0.751992, -0.441937, -0.489081,
		0.364848, -0.896999, 0.249557,
		44.466934, 32.932766, 22.103195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577877, 33.099335, 22.101152>,  <44.211540, 33.560665, 21.928505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577877, 33.099335, 22.101152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.905533, 32.943565, 22.269609>,  <44.102127, 32.850105, 22.370684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.905533, 32.943565, 22.269609>,  <43.577877, 33.099335, 22.101152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905533, 32.943565, 22.269609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483628, -0.074124, 0.872130,
		-0.308413, -0.918070, -0.249055,
		0.819137, -0.389426, 0.421144,
		44.151276, 32.826736, 22.395952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284370, 32.567142, 22.640696>,  <43.577877, 33.099335, 22.101152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284370, 32.567142, 22.640696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.662468, 32.621429, 22.759422>,  <43.889324, 32.653999, 22.830658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.662468, 32.621429, 22.759422>,  <43.284370, 32.567142, 22.640696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662468, 32.621429, 22.759422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289889, -0.068719, 0.954590,
		0.149949, -0.988362, -0.025614,
		0.945241, 0.135714, 0.296819,
		43.946041, 32.662144, 22.848469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351967, 32.039410, 23.193275>,  <43.284370, 32.567142, 22.640696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351967, 32.039410, 23.193275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.653057, 32.299507, 23.234447>,  <43.833710, 32.455566, 23.259151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.653057, 32.299507, 23.234447>,  <43.351967, 32.039410, 23.193275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653057, 32.299507, 23.234447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221721, 0.103173, 0.969637,
		0.619878, -0.752690, 0.221833,
		0.752723, 0.650241, 0.102932,
		43.878876, 32.494579, 23.265327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478699, 31.300869, 23.222565>,  <43.351967, 32.039410, 23.193275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478699, 31.300869, 23.222565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.084919, 31.309784, 23.292253>,  <42.848652, 31.315132, 23.334066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.084919, 31.309784, 23.292253>,  <43.478699, 31.300869, 23.222565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084919, 31.309784, 23.292253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175568, -0.153968, -0.972353,
		0.005155, -0.987824, 0.155487,
		-0.984454, 0.022286, 0.174224,
		42.789581, 31.316471, 23.344521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262436, 30.695459, 22.961189>,  <43.478699, 31.300869, 23.222565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262436, 30.695459, 22.961189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.945297, 30.939096, 22.969191>,  <42.755013, 31.085279, 22.973991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.945297, 30.939096, 22.969191>,  <43.262436, 30.695459, 22.961189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945297, 30.939096, 22.969191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197640, -0.225936, -0.953882,
		-0.576485, -0.760235, 0.299514,
		-0.792845, 0.609095, 0.020004,
		42.707443, 31.121824, 22.975191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721012, 30.264883, 22.722952>,  <43.262436, 30.695459, 22.961189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721012, 30.264883, 22.722952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.532894, 30.614014, 22.670809>,  <42.420021, 30.823492, 22.639523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.532894, 30.614014, 22.670809>,  <42.721012, 30.264883, 22.722952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532894, 30.614014, 22.670809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001934, -0.148731, -0.988876,
		-0.882505, -0.464815, 0.071636,
		-0.470299, 0.872826, -0.130357,
		42.391804, 30.875862, 22.631702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083691, 30.261198, 22.334324>,  <42.721012, 30.264883, 22.722952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083691, 30.261198, 22.334324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.186317, 30.641880, 22.266876>,  <42.247894, 30.870289, 22.226408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.186317, 30.641880, 22.266876>,  <42.083691, 30.261198, 22.334324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186317, 30.641880, 22.266876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063479, -0.157489, -0.985478,
		-0.964438, 0.263549, 0.020006,
		0.256571, 0.951703, -0.168618,
		42.263290, 30.927391, 22.216291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704819, 30.401991, 21.804459>,  <42.083691, 30.261198, 22.334324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704819, 30.401991, 21.804459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973396, 30.698406, 21.802454>,  <42.134544, 30.876255, 21.801250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973396, 30.698406, 21.802454>,  <41.704819, 30.401991, 21.804459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973396, 30.698406, 21.802454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035932, -0.039311, -0.998581,
		-0.740182, 0.670313, -0.053022,
		0.671446, 0.741037, -0.005012,
		42.174831, 30.920717, 21.800951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529243, 30.795469, 21.224529>,  <41.704819, 30.401991, 21.804459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529243, 30.795469, 21.224529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.908497, 30.900694, 21.295908>,  <42.136047, 30.963829, 21.338736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.908497, 30.900694, 21.295908>,  <41.529243, 30.795469, 21.224529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908497, 30.900694, 21.295908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191508, -0.024660, -0.981181,
		-0.253711, 0.964464, -0.073759,
		0.948133, 0.263062, 0.178446,
		42.192936, 30.979612, 21.349442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711281, 31.395227, 20.778980>,  <41.529243, 30.795469, 21.224529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711281, 31.395227, 20.778980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.073627, 31.260162, 20.881269>,  <42.291035, 31.179123, 20.942644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.073627, 31.260162, 20.881269>,  <41.711281, 31.395227, 20.778980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073627, 31.260162, 20.881269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289210, 0.051970, -0.955854,
		0.309466, 0.939831, 0.144733,
		0.905863, -0.337663, 0.255725,
		42.345387, 31.158863, 20.957987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349155, 31.958038, 20.478670>,  <41.711281, 31.395227, 20.778980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349155, 31.958038, 20.478670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.997070, 31.775982, 20.424906>,  <40.785820, 31.666748, 20.392647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.997070, 31.775982, 20.424906>,  <41.349155, 31.958038, 20.478670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997070, 31.775982, 20.424906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082066, -0.132977, 0.987716,
		-0.467423, 0.880434, 0.079697,
		-0.880216, -0.455141, -0.134410,
		40.733006, 31.639441, 20.384583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023460, 32.200665, 20.984325>,  <41.349155, 31.958038, 20.478670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023460, 32.200665, 20.984325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.793221, 31.886715, 20.892534>,  <40.655079, 31.698345, 20.837460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.793221, 31.886715, 20.892534>,  <41.023460, 32.200665, 20.984325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793221, 31.886715, 20.892534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327222, -0.036104, 0.944257,
		-0.749408, 0.618602, -0.236047,
		-0.575597, -0.784874, -0.229477,
		40.620541, 31.651253, 20.823690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292274, 32.362408, 21.200489>,  <41.023460, 32.200665, 20.984325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292274, 32.362408, 21.200489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.333870, 31.965597, 21.172005>,  <40.358826, 31.727510, 21.154913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.333870, 31.965597, 21.172005>,  <40.292274, 32.362408, 21.200489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333870, 31.965597, 21.172005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375669, -0.105473, 0.920732,
		-0.920902, -0.068990, -0.383641,
		0.103985, -0.992026, -0.071213,
		40.365067, 31.667990, 21.150640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647755, 32.190388, 21.447243>,  <40.292274, 32.362408, 21.200489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647755, 32.190388, 21.447243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.860268, 31.852730, 21.475981>,  <39.987774, 31.650135, 21.493223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.860268, 31.852730, 21.475981>,  <39.647755, 32.190388, 21.447243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860268, 31.852730, 21.475981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396744, -0.172975, 0.901484,
		-0.748555, -0.507447, -0.426807,
		0.531282, -0.844143, 0.071845,
		40.019653, 31.599487, 21.497534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150082, 31.653223, 21.751797>,  <39.647755, 32.190388, 21.447243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150082, 31.653223, 21.751797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517223, 31.500105, 21.793781>,  <39.737507, 31.408234, 21.818972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517223, 31.500105, 21.793781>,  <39.150082, 31.653223, 21.751797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517223, 31.500105, 21.793781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265493, -0.395496, 0.879259,
		-0.295063, -0.834896, -0.464636,
		0.917851, -0.382795, 0.104963,
		39.792580, 31.385265, 21.825270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034595, 30.913492, 21.986940>,  <39.150082, 31.653223, 21.751797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034595, 30.913492, 21.986940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.401543, 31.025707, 22.099884>,  <39.621712, 31.093037, 22.167650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.401543, 31.025707, 22.099884>,  <39.034595, 30.913492, 21.986940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401543, 31.025707, 22.099884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239771, -0.176737, 0.954607,
		0.317707, -0.943431, -0.094868,
		0.917372, 0.280539, 0.282358,
		39.676754, 31.109869, 22.184591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181770, 30.496078, 22.557524>,  <39.034595, 30.913492, 21.986940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181770, 30.496078, 22.557524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416264, 30.816502, 22.605913>,  <39.556961, 31.008755, 22.634947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416264, 30.816502, 22.605913>,  <39.181770, 30.496078, 22.557524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416264, 30.816502, 22.605913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109561, -0.069561, 0.991543,
		0.802699, -0.594531, 0.046986,
		0.586234, 0.801058, 0.120974,
		39.592133, 31.056820, 22.642206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.646141, 33.737728, 18.338322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.994694, 33.925442, 18.395546>,  <42.203827, 34.038071, 18.429880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.994694, 33.925442, 18.395546>,  <41.646141, 33.737728, 18.338322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994694, 33.925442, 18.395546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361959, 0.418105, 0.833171,
		0.331182, -0.777791, 0.534191,
		0.871380, 0.469286, 0.143059,
		42.256107, 34.066227, 18.438463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783749, 33.635983, 19.036024>,  <41.646141, 33.737728, 18.338322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783749, 33.635983, 19.036024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.988987, 33.959263, 18.920412>,  <42.112129, 34.153233, 18.851046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.988987, 33.959263, 18.920412>,  <41.783749, 33.635983, 19.036024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988987, 33.959263, 18.920412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330435, 0.496775, 0.802513,
		0.792176, -0.316262, 0.521953,
		0.513098, 0.808203, -0.289029,
		42.142918, 34.201725, 18.833704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886749, 33.938354, 19.584146>,  <41.783749, 33.635983, 19.036024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886749, 33.938354, 19.584146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.023468, 34.239109, 19.358639>,  <42.105499, 34.419563, 19.223333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.023468, 34.239109, 19.358639>,  <41.886749, 33.938354, 19.584146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023468, 34.239109, 19.358639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285610, 0.654636, 0.699913,
		0.895321, -0.078212, 0.438501,
		0.341800, 0.751887, -0.563771,
		42.126007, 34.464676, 19.189508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349491, 34.328316, 19.993662>,  <41.886749, 33.938354, 19.584146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349491, 34.328316, 19.993662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.178947, 34.558205, 19.714258>,  <42.076622, 34.696136, 19.546616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.178947, 34.558205, 19.714258>,  <42.349491, 34.328316, 19.993662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178947, 34.558205, 19.714258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388148, 0.581264, 0.715174,
		0.817042, 0.576046, -0.024752,
		-0.426360, 0.574720, -0.698508,
		42.051041, 34.730621, 19.504705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465038, 35.000118, 20.209618>,  <42.349491, 34.328316, 19.993662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465038, 35.000118, 20.209618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.158043, 35.040554, 19.956402>,  <41.973846, 35.064816, 19.804472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.158043, 35.040554, 19.956402>,  <42.465038, 35.000118, 20.209618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158043, 35.040554, 19.956402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556403, 0.385408, 0.736123,
		0.318396, 0.917192, -0.239548,
		-0.767490, 0.101093, -0.633040,
		41.927795, 35.070881, 19.766489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189602, 35.680847, 20.417816>,  <42.465038, 35.000118, 20.209618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189602, 35.680847, 20.417816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.900032, 35.498936, 20.210310>,  <41.726292, 35.389790, 20.085806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.900032, 35.498936, 20.210310>,  <42.189602, 35.680847, 20.417816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900032, 35.498936, 20.210310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684869, 0.383262, 0.619729,
		-0.083016, 0.803921, -0.588915,
		-0.723922, -0.454777, -0.518764,
		41.682854, 35.362503, 20.054682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693764, 36.148476, 20.321554>,  <42.189602, 35.680847, 20.417816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693764, 36.148476, 20.321554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.492245, 35.811543, 20.244963>,  <41.371334, 35.609383, 20.199007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.492245, 35.811543, 20.244963>,  <41.693764, 36.148476, 20.321554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492245, 35.811543, 20.244963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752194, 0.318787, 0.576697,
		-0.424729, 0.434568, -0.794201,
		-0.503795, -0.842333, -0.191481,
		41.341106, 35.558842, 20.187519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985943, 36.395546, 20.133144>,  <41.693764, 36.148476, 20.321554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985943, 36.395546, 20.133144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.994297, 36.012630, 20.248499>,  <40.999310, 35.782883, 20.317713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.994297, 36.012630, 20.248499>,  <40.985943, 36.395546, 20.133144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994297, 36.012630, 20.248499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720666, 0.185517, 0.668000,
		-0.692968, -0.221782, -0.686009,
		0.020883, -0.957286, 0.288388,
		41.000561, 35.725445, 20.335016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398174, 36.165321, 19.964197>,  <40.985943, 36.395546, 20.133144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398174, 36.165321, 19.964197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.503944, 35.901421, 20.245567>,  <40.567406, 35.743080, 20.414389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.503944, 35.901421, 20.245567>,  <40.398174, 36.165321, 19.964197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503944, 35.901421, 20.245567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786411, 0.274694, 0.553264,
		-0.558243, -0.699479, -0.446199,
		0.264428, -0.659751, 0.703424,
		40.583271, 35.703495, 20.456594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733749, 35.874352, 20.215046>,  <40.398174, 36.165321, 19.964197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733749, 35.874352, 20.215046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981312, 35.774891, 20.513075>,  <40.129848, 35.715214, 20.691893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981312, 35.774891, 20.513075>,  <39.733749, 35.874352, 20.215046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981312, 35.774891, 20.513075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626399, 0.416065, 0.659177,
		-0.473904, -0.874678, 0.101749,
		0.618902, -0.248651, 0.745073,
		40.166981, 35.700294, 20.736597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417191, 35.450962, 20.670170>,  <39.733749, 35.874352, 20.215046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417191, 35.450962, 20.670170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.697460, 35.611252, 20.906298>,  <39.865620, 35.707428, 21.047976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.697460, 35.611252, 20.906298>,  <39.417191, 35.450962, 20.670170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697460, 35.611252, 20.906298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695381, 0.198344, 0.690728,
		0.159704, -0.894472, 0.417629,
		0.700671, 0.400723, 0.590322,
		39.907661, 35.731468, 21.083393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249306, 35.139862, 21.346180>,  <39.417191, 35.450962, 20.670170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249306, 35.139862, 21.346180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.482262, 35.456524, 21.420048>,  <39.622036, 35.646523, 21.464369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.482262, 35.456524, 21.420048>,  <39.249306, 35.139862, 21.346180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482262, 35.456524, 21.420048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507761, 0.176857, 0.843149,
		0.634826, -0.584807, 0.504972,
		0.582387, 0.791658, 0.184669,
		39.656979, 35.694023, 21.475449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130615, 34.381458, 21.714680>,  <39.249306, 35.139862, 21.346180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130615, 34.381458, 21.714680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.760571, 34.269161, 21.612429>,  <38.538544, 34.201782, 21.551077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.760571, 34.269161, 21.612429>,  <39.130615, 34.381458, 21.714680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760571, 34.269161, 21.612429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302833, -0.139462, -0.942784,
		0.229026, -0.949598, 0.214035,
		-0.925116, -0.280739, -0.255629,
		38.483036, 34.184940, 21.535740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178764, 33.775200, 21.334297>,  <39.130615, 34.381458, 21.714680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178764, 33.775200, 21.334297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.822353, 33.927063, 21.234760>,  <38.608505, 34.018181, 21.175039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.822353, 33.927063, 21.234760>,  <39.178764, 33.775200, 21.334297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822353, 33.927063, 21.234760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240410, -0.070314, -0.968121,
		-0.385053, -0.922450, -0.028622,
		-0.891031, 0.379660, -0.248841,
		38.555042, 34.040962, 21.160109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054298, 33.399940, 20.779930>,  <39.178764, 33.775200, 21.334297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054298, 33.399940, 20.779930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.745125, 33.642193, 20.704258>,  <38.559620, 33.787544, 20.658855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.745125, 33.642193, 20.704258>,  <39.054298, 33.399940, 20.779930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745125, 33.642193, 20.704258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178939, -0.077990, -0.980764,
		-0.608734, -0.791916, -0.048090,
		-0.772932, 0.605629, -0.189180,
		38.513245, 33.823883, 20.647505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534634, 33.087986, 20.202223>,  <39.054298, 33.399940, 20.779930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534634, 33.087986, 20.202223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.512100, 33.486267, 20.231636>,  <38.498581, 33.725235, 20.249285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.512100, 33.486267, 20.231636>,  <38.534634, 33.087986, 20.202223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512100, 33.486267, 20.231636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294901, 0.086960, -0.951563,
		-0.953866, -0.031920, -0.298532,
		-0.056334, 0.995700, 0.073535,
		38.495201, 33.784977, 20.253696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141838, 33.322350, 19.685400>,  <38.534634, 33.087986, 20.202223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141838, 33.322350, 19.685400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.352928, 33.644897, 19.792189>,  <38.479584, 33.838425, 19.856262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.352928, 33.644897, 19.792189>,  <38.141838, 33.322350, 19.685400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352928, 33.644897, 19.792189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315742, 0.105555, -0.942955,
		-0.788550, 0.581917, -0.198900,
		0.527727, 0.806369, 0.266971,
		38.511246, 33.886806, 19.872280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905403, 33.803749, 19.142754>,  <38.141838, 33.322350, 19.685400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905403, 33.803749, 19.142754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.245514, 33.941921, 19.301601>,  <38.449581, 34.024822, 19.396910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.245514, 33.941921, 19.301601>,  <37.905403, 33.803749, 19.142754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245514, 33.941921, 19.301601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335358, 0.225962, -0.914591,
		-0.405658, 0.910836, 0.076290,
		0.850281, 0.345427, 0.397119,
		38.500599, 34.045547, 19.420736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056801, 34.470024, 18.856710>,  <37.905403, 33.803749, 19.142754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056801, 34.470024, 18.856710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.422592, 34.379871, 18.991135>,  <38.642067, 34.325779, 19.071789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.422592, 34.379871, 18.991135>,  <38.056801, 34.470024, 18.856710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422592, 34.379871, 18.991135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399020, 0.364338, -0.841452,
		0.067206, 0.903583, 0.423109,
		0.914476, -0.225380, 0.336062,
		38.696934, 34.312256, 19.091953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415604, 35.116795, 18.722479>,  <38.056801, 34.470024, 18.856710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415604, 35.116795, 18.722479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.660015, 34.807411, 18.789885>,  <38.806664, 34.621780, 18.830328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.660015, 34.807411, 18.789885>,  <38.415604, 35.116795, 18.722479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660015, 34.807411, 18.789885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582749, 0.295431, -0.757050,
		0.535766, 0.560781, 0.631252,
		0.611030, -0.773463, 0.168512,
		38.843323, 34.575371, 18.840439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098515, 35.389557, 18.581251>,  <38.415604, 35.116795, 18.722479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098515, 35.389557, 18.581251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.130936, 34.991558, 18.557911>,  <39.150387, 34.752758, 18.543907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.130936, 34.991558, 18.557911>,  <39.098515, 35.389557, 18.581251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130936, 34.991558, 18.557911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685873, 0.098156, -0.721071,
		0.723194, 0.018419, 0.690400,
		0.081048, -0.995001, -0.058353,
		39.155251, 34.693058, 18.540405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796715, 35.268097, 18.478706>,  <39.098515, 35.389557, 18.581251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796715, 35.268097, 18.478706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.637581, 34.914101, 18.381948>,  <39.542099, 34.701702, 18.323893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.637581, 34.914101, 18.381948>,  <39.796715, 35.268097, 18.478706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637581, 34.914101, 18.381948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630710, -0.072342, -0.772640,
		0.666280, -0.459952, 0.586953,
		-0.397839, -0.884992, -0.241897,
		39.518230, 34.648602, 18.309380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327663, 34.686550, 18.545937>,  <39.796715, 35.268097, 18.478706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327663, 34.686550, 18.545937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.052547, 34.620728, 18.263130>,  <39.887478, 34.581234, 18.093447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.052547, 34.620728, 18.263130>,  <40.327663, 34.686550, 18.545937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052547, 34.620728, 18.263130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715965, 0.006919, -0.698102,
		0.119770, -0.986343, 0.113060,
		-0.687786, -0.164559, -0.707016,
		39.846210, 34.571362, 18.051025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605072, 34.245945, 18.169344>,  <40.327663, 34.686550, 18.545937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605072, 34.245945, 18.169344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.337791, 34.363403, 17.895912>,  <40.177425, 34.433880, 17.731853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.337791, 34.363403, 17.895912>,  <40.605072, 34.245945, 18.169344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337791, 34.363403, 17.895912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725428, 0.053245, -0.686236,
		-0.165117, -0.954429, -0.248600,
		-0.668200, 0.293651, -0.683578,
		40.137333, 34.451500, 17.690838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808064, 33.959743, 17.574003>,  <40.605072, 34.245945, 18.169344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808064, 33.959743, 17.574003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.555691, 34.249088, 17.461809>,  <40.404266, 34.422695, 17.394493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.555691, 34.249088, 17.461809>,  <40.808064, 33.959743, 17.574003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555691, 34.249088, 17.461809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565467, 0.181216, -0.804616,
		-0.531203, -0.666261, -0.523374,
		-0.630928, 0.723365, -0.280486,
		40.366413, 34.466099, 17.377663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068504, 33.453419, 17.870962>,  <40.808064, 33.959743, 17.574003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068504, 33.453419, 17.870962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.008167, 33.079430, 17.742542>,  <40.971966, 32.855038, 17.665491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.008167, 33.079430, 17.742542>,  <41.068504, 33.453419, 17.870962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008167, 33.079430, 17.742542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206364, -0.287826, 0.935184,
		-0.966778, 0.207323, -0.149526,
		-0.150847, -0.934973, -0.321048,
		40.962914, 32.798939, 17.646229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408306, 33.121101, 18.048389>,  <41.068504, 33.453419, 17.870962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408306, 33.121101, 18.048389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.635838, 32.798576, 17.983524>,  <40.772358, 32.605061, 17.944605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.635838, 32.798576, 17.983524>,  <40.408306, 33.121101, 18.048389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635838, 32.798576, 17.983524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270490, -0.369608, 0.888946,
		-0.776701, -0.461797, -0.428343,
		0.568832, -0.806308, -0.162164,
		40.806488, 32.556683, 17.934875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939716, 32.527191, 18.156950>,  <40.408306, 33.121101, 18.048389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939716, 32.527191, 18.156950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317627, 32.399902, 18.188286>,  <40.544373, 32.323528, 18.207088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317627, 32.399902, 18.188286>,  <39.939716, 32.527191, 18.156950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317627, 32.399902, 18.188286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240600, -0.511193, 0.825102,
		-0.222519, -0.798383, -0.559526,
		0.944773, -0.318222, 0.078341,
		40.601059, 32.304436, 18.211788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904079, 31.856310, 18.330429>,  <39.939716, 32.527191, 18.156950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904079, 31.856310, 18.330429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.287781, 31.932751, 18.413681>,  <40.518002, 31.978615, 18.463633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.287781, 31.932751, 18.413681>,  <39.904079, 31.856310, 18.330429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287781, 31.932751, 18.413681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111705, -0.420112, 0.900571,
		0.259539, -0.887122, -0.381646,
		0.959250, 0.191101, 0.208132,
		40.575558, 31.990082, 18.476120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121292, 31.205463, 18.642071>,  <39.904079, 31.856310, 18.330429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121292, 31.205463, 18.642071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.393658, 31.480598, 18.742659>,  <40.557076, 31.645679, 18.803011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.393658, 31.480598, 18.742659>,  <40.121292, 31.205463, 18.642071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393658, 31.480598, 18.742659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068802, -0.401928, 0.913083,
		0.729128, -0.604426, -0.321001,
		0.680910, 0.687840, 0.251471,
		40.597931, 31.686951, 18.818100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549179, 30.828146, 19.062824>,  <40.121292, 31.205463, 18.642071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549179, 30.828146, 19.062824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.620014, 31.215359, 19.133875>,  <40.662518, 31.447687, 19.176504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.620014, 31.215359, 19.133875>,  <40.549179, 30.828146, 19.062824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620014, 31.215359, 19.133875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027791, -0.185324, 0.982284,
		0.983802, -0.169016, -0.059722,
		0.177090, 0.968033, 0.177625,
		40.673141, 31.505768, 19.187162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236591, 30.862495, 19.443695>,  <40.549179, 30.828146, 19.062824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236591, 30.862495, 19.443695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992512, 31.169580, 19.521957>,  <40.846066, 31.353830, 19.568914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992512, 31.169580, 19.521957>,  <41.236591, 30.862495, 19.443695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992512, 31.169580, 19.521957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038223, -0.218144, 0.975168,
		0.791327, 0.602522, 0.103767,
		-0.610196, 0.767711, 0.195654,
		40.809452, 31.399893, 19.580654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584846, 31.243366, 19.980503>,  <41.236591, 30.862495, 19.443695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584846, 31.243366, 19.980503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.200214, 31.353153, 19.978115>,  <40.969437, 31.419025, 19.976683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.200214, 31.353153, 19.978115>,  <41.584846, 31.243366, 19.980503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200214, 31.353153, 19.978115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000840, 0.024687, 0.999695,
		0.274533, 0.961279, -0.023969,
		-0.961577, 0.274469, -0.005970,
		40.911739, 31.435493, 19.976324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117016, 31.635019, 20.231041>,  <41.584846, 31.243366, 19.980503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117016, 31.635019, 20.231041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.409134, 31.413181, 20.390587>,  <42.584404, 31.280079, 20.486315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.409134, 31.413181, 20.390587>,  <42.117016, 31.635019, 20.231041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409134, 31.413181, 20.390587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561570, 0.154916, -0.812798,
		0.388983, 0.817573, 0.424579,
		0.730295, -0.554595, 0.398864,
		42.628223, 31.246803, 20.510246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662697, 32.112156, 20.278608>,  <42.117016, 31.635019, 20.231041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662697, 32.112156, 20.278608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.764851, 31.725489, 20.271259>,  <42.826145, 31.493490, 20.266850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.764851, 31.725489, 20.271259>,  <42.662697, 32.112156, 20.278608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764851, 31.725489, 20.271259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691146, 0.195819, -0.695681,
		0.676087, 0.164972, 0.718116,
		0.255389, -0.966664, -0.018371,
		42.841469, 31.435490, 20.265749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300873, 32.176723, 20.007936>,  <42.662697, 32.112156, 20.278608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300873, 32.176723, 20.007936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.211681, 31.791893, 19.945086>,  <43.158165, 31.560995, 19.907375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.211681, 31.791893, 19.945086>,  <43.300873, 32.176723, 20.007936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211681, 31.791893, 19.945086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780722, -0.079725, -0.619772,
		0.583742, -0.260868, 0.768891,
		-0.222979, -0.962077, -0.157126,
		43.144787, 31.503269, 19.897947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961002, 31.721527, 20.043840>,  <43.300873, 32.176723, 20.007936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961002, 31.721527, 20.043840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.707668, 31.496050, 19.831749>,  <43.555668, 31.360764, 19.704494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.707668, 31.496050, 19.831749>,  <43.961002, 31.721527, 20.043840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707668, 31.496050, 19.831749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634777, 0.013516, -0.772577,
		0.442662, -0.825875, 0.349259,
		-0.633331, -0.563692, -0.530229,
		43.517670, 31.326942, 19.672680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311512, 31.131506, 19.741171>,  <43.961002, 31.721527, 20.043840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311512, 31.131506, 19.741171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.978180, 31.155224, 19.521334>,  <43.778183, 31.169455, 19.389431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.978180, 31.155224, 19.521334>,  <44.311512, 31.131506, 19.741171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978180, 31.155224, 19.521334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545372, -0.074036, -0.834918,
		-0.090196, -0.995491, 0.029359,
		-0.833327, 0.059294, -0.549591,
		43.728180, 31.173012, 19.356457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386250, 30.584335, 19.279707>,  <44.311512, 31.131506, 19.741171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386250, 30.584335, 19.279707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.110268, 30.810642, 19.099100>,  <43.944679, 30.946426, 18.990736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.110268, 30.810642, 19.099100>,  <44.386250, 30.584335, 19.279707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110268, 30.810642, 19.099100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421481, -0.193116, -0.886036,
		-0.588485, -0.801633, -0.105218,
		-0.689957, 0.565766, -0.451518,
		43.903282, 30.980371, 18.963644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110344, 30.215336, 18.663706>,  <44.386250, 30.584335, 19.279707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110344, 30.215336, 18.663706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.045532, 30.605892, 18.606562>,  <44.006645, 30.840225, 18.572275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.045532, 30.605892, 18.606562>,  <44.110344, 30.215336, 18.663706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045532, 30.605892, 18.606562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305617, -0.088002, -0.948079,
		-0.938267, -0.197274, -0.284143,
		-0.162026, 0.976391, -0.142859,
		43.996925, 30.898809, 18.563704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891731, 30.279692, 17.947958>,  <44.110344, 30.215336, 18.663706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891731, 30.279692, 17.947958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.010372, 30.649855, 18.042316>,  <44.081558, 30.871952, 18.098930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.010372, 30.649855, 18.042316>,  <43.891731, 30.279692, 17.947958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010372, 30.649855, 18.042316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489146, 0.064936, -0.869781,
		-0.820220, 0.373370, -0.433399,
		0.296607, 0.925407, 0.235894,
		44.099354, 30.927477, 18.113085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984989, 30.671343, 17.270424>,  <43.891731, 30.279692, 17.947958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984989, 30.671343, 17.270424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.196815, 30.903534, 17.517843>,  <44.323910, 31.042849, 17.666296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.196815, 30.903534, 17.517843>,  <43.984989, 30.671343, 17.270424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196815, 30.903534, 17.517843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638073, 0.207893, -0.741379,
		-0.558947, 0.787289, -0.260295,
		0.529566, 0.580479, 0.618549,
		44.355686, 31.077679, 17.703407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.901775, 35.589573, 32.098881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.281883, 35.619190, 31.977882>,  <40.509949, 35.636959, 31.905283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.281883, 35.619190, 31.977882>,  <39.901775, 35.589573, 32.098881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281883, 35.619190, 31.977882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190459, -0.630335, -0.752597,
		-0.246400, 0.772784, -0.584887,
		0.950270, 0.074043, -0.302498,
		40.566963, 35.641403, 31.887133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886494, 35.560551, 31.362616>,  <39.901775, 35.589573, 32.098881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886494, 35.560551, 31.362616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.264576, 35.448376, 31.429478>,  <40.491425, 35.381073, 31.469595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.264576, 35.448376, 31.429478>,  <39.886494, 35.560551, 31.362616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264576, 35.448376, 31.429478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008553, -0.533105, -0.846005,
		0.326360, 0.798220, -0.506294,
		0.945207, -0.280433, 0.167157,
		40.548138, 35.364246, 31.479626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273960, 35.532562, 30.738926>,  <39.886494, 35.560551, 31.362616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273960, 35.532562, 30.738926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.506020, 35.296375, 30.963346>,  <40.645256, 35.154663, 31.097998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.506020, 35.296375, 30.963346>,  <40.273960, 35.532562, 30.738926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506020, 35.296375, 30.963346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083824, -0.728444, -0.679957,
		0.810184, 0.347449, -0.472103,
		0.580152, -0.590464, 0.561049,
		40.680065, 35.119236, 31.131660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739803, 35.226494, 30.289366>,  <40.273960, 35.532562, 30.738926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739803, 35.226494, 30.289366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.766712, 34.970596, 30.595623>,  <40.782856, 34.817059, 30.779377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.766712, 34.970596, 30.595623>,  <40.739803, 35.226494, 30.289366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766712, 34.970596, 30.595623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051276, -0.764150, -0.642997,
		0.996416, 0.082514, -0.018602,
		0.067271, -0.639739, 0.765643,
		40.786892, 34.778675, 30.825315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262173, 34.732430, 30.022566>,  <40.739803, 35.226494, 30.289366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262173, 34.732430, 30.022566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.099689, 34.549320, 30.338905>,  <41.002201, 34.439457, 30.528709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.099689, 34.549320, 30.338905>,  <41.262173, 34.732430, 30.022566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099689, 34.549320, 30.338905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106238, -0.883259, -0.456691,
		0.907583, -0.101493, 0.407420,
		-0.406209, -0.457769, 0.790849,
		40.977825, 34.411991, 30.576160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743626, 34.166969, 30.291666>,  <41.262173, 34.732430, 30.022566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743626, 34.166969, 30.291666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364037, 34.091038, 30.392397>,  <41.136284, 34.045479, 30.452835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364037, 34.091038, 30.392397>,  <41.743626, 34.166969, 30.291666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364037, 34.091038, 30.392397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079478, -0.916722, -0.391540,
		0.305184, -0.351545, 0.885030,
		-0.948971, -0.189832, 0.251829,
		41.079346, 34.034088, 30.467945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758762, 33.470829, 30.609812>,  <41.743626, 34.166969, 30.291666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758762, 33.470829, 30.609812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.388863, 33.556812, 30.484184>,  <41.166924, 33.608402, 30.408808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.388863, 33.556812, 30.484184>,  <41.758762, 33.470829, 30.609812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388863, 33.556812, 30.484184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073293, -0.910365, -0.407263,
		-0.373460, -0.353595, 0.857611,
		-0.924746, 0.214954, -0.314069,
		41.111439, 33.621300, 30.389963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359867, 32.907501, 30.780544>,  <41.758762, 33.470829, 30.609812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359867, 32.907501, 30.780544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.131107, 33.097736, 30.513189>,  <40.993851, 33.211880, 30.352776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.131107, 33.097736, 30.513189>,  <41.359867, 32.907501, 30.780544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131107, 33.097736, 30.513189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077771, -0.842551, -0.532972,
		-0.816624, -0.252829, 0.518847,
		-0.571906, 0.475590, -0.668385,
		40.959538, 33.240414, 30.312674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884525, 32.476204, 30.618433>,  <41.359867, 32.907501, 30.780544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884525, 32.476204, 30.618433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.830032, 32.724148, 30.309315>,  <40.797337, 32.872913, 30.123844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.830032, 32.724148, 30.309315>,  <40.884525, 32.476204, 30.618433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830032, 32.724148, 30.309315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327523, -0.764384, -0.555379,
		-0.934971, 0.177450, 0.307150,
		-0.136228, 0.619861, -0.772796,
		40.789165, 32.910107, 30.077477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254356, 32.233929, 30.247911>,  <40.884525, 32.476204, 30.618433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254356, 32.233929, 30.247911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.454391, 32.451565, 29.978432>,  <40.574413, 32.582146, 29.816744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.454391, 32.451565, 29.978432>,  <40.254356, 32.233929, 30.247911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454391, 32.451565, 29.978432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165373, -0.703648, -0.691036,
		-0.850038, 0.456990, -0.261908,
		0.500088, 0.544094, -0.673701,
		40.604420, 32.614792, 29.776321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868343, 32.214539, 29.590244>,  <40.254356, 32.233929, 30.247911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868343, 32.214539, 29.590244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.238136, 32.326263, 29.486460>,  <40.460011, 32.393299, 29.424189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.238136, 32.326263, 29.486460>,  <39.868343, 32.214539, 29.590244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238136, 32.326263, 29.486460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070011, -0.544626, -0.835752,
		-0.374743, 0.790802, -0.483941,
		0.924482, 0.279311, -0.259460,
		40.515480, 32.410057, 29.408623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772720, 32.442196, 28.860632>,  <39.868343, 32.214539, 29.590244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772720, 32.442196, 28.860632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.156654, 32.352154, 28.927612>,  <40.387016, 32.298126, 28.967800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.156654, 32.352154, 28.927612>,  <39.772720, 32.442196, 28.860632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156654, 32.352154, 28.927612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086130, -0.331596, -0.939482,
		0.267010, 0.916172, -0.298890,
		0.959837, -0.225108, 0.167449,
		40.444607, 32.284622, 28.977846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205143, 32.952858, 28.817698>,  <39.772720, 32.442196, 28.860632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205143, 32.952858, 28.817698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.850391, 32.898201, 28.641161>,  <38.637543, 32.865406, 28.535238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.850391, 32.898201, 28.641161>,  <39.205143, 32.952858, 28.817698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850391, 32.898201, 28.641161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452820, 0.446661, 0.771652,
		0.091691, 0.884207, -0.458007,
		-0.886875, -0.136641, -0.441341,
		38.584328, 32.857208, 28.508759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882359, 33.595375, 28.937672>,  <39.205143, 32.952858, 28.817698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882359, 33.595375, 28.937672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617870, 33.300453, 28.882303>,  <38.459175, 33.123501, 28.849083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617870, 33.300453, 28.882303>,  <38.882359, 33.595375, 28.937672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617870, 33.300453, 28.882303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535605, 0.334786, 0.775272,
		-0.525272, 0.586768, -0.616274,
		-0.661224, -0.737307, -0.138422,
		38.419502, 33.079262, 28.840776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319206, 33.817291, 29.075312>,  <38.882359, 33.595375, 28.937672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319206, 33.817291, 29.075312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201340, 33.437546, 29.118919>,  <38.130619, 33.209698, 29.145084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201340, 33.437546, 29.118919>,  <38.319206, 33.817291, 29.075312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201340, 33.437546, 29.118919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492468, 0.248631, 0.834061,
		-0.818930, 0.192083, -0.540793,
		-0.294667, -0.949361, 0.109017,
		38.112938, 33.152737, 29.151625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616695, 33.808861, 29.067080>,  <38.319206, 33.817291, 29.075312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616695, 33.808861, 29.067080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.735844, 33.485580, 29.270288>,  <37.807335, 33.291615, 29.392214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.735844, 33.485580, 29.270288>,  <37.616695, 33.808861, 29.067080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735844, 33.485580, 29.270288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576667, 0.271759, 0.770456,
		-0.760741, -0.522458, -0.385112,
		0.297873, -0.808199, 0.508022,
		37.825207, 33.243122, 29.422695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057938, 33.629017, 29.501812>,  <37.616695, 33.808861, 29.067080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057938, 33.629017, 29.501812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355507, 33.417454, 29.665195>,  <37.534046, 33.290516, 29.763226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355507, 33.417454, 29.665195>,  <37.057938, 33.629017, 29.501812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355507, 33.417454, 29.665195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449702, 0.055909, 0.891427,
		-0.494319, -0.846836, -0.196259,
		0.743920, -0.528908, 0.408460,
		37.578682, 33.258781, 29.787733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752758, 32.998817, 29.826006>,  <37.057938, 33.629017, 29.501812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752758, 32.998817, 29.826006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.086281, 33.095646, 30.024466>,  <37.286396, 33.153744, 30.143541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.086281, 33.095646, 30.024466>,  <36.752758, 32.998817, 29.826006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086281, 33.095646, 30.024466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515487, 0.019751, 0.856670,
		0.197574, -0.970058, 0.141252,
		0.833809, 0.242070, 0.496150,
		37.336422, 33.168266, 30.173311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724831, 32.600437, 30.439545>,  <36.752758, 32.998817, 29.826006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724831, 32.600437, 30.439545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007637, 32.870178, 30.524748>,  <37.177322, 33.032024, 30.575871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007637, 32.870178, 30.524748>,  <36.724831, 32.600437, 30.439545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007637, 32.870178, 30.524748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430551, 0.171505, 0.886122,
		0.561030, -0.718213, 0.411602,
		0.707016, 0.674356, 0.213008,
		37.219742, 33.072487, 30.588650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853317, 32.492073, 31.231728>,  <36.724831, 32.600437, 30.439545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853317, 32.492073, 31.231728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032490, 32.846642, 31.185051>,  <37.139996, 33.059383, 31.157045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032490, 32.846642, 31.185051>,  <36.853317, 32.492073, 31.231728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032490, 32.846642, 31.185051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327844, 0.284275, 0.900947,
		0.831790, -0.365307, 0.417944,
		0.447933, 0.886419, -0.116694,
		37.166870, 33.112568, 31.150043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303844, 32.589725, 31.819931>,  <36.853317, 32.492073, 31.231728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303844, 32.589725, 31.819931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198204, 32.945911, 31.671698>,  <37.134819, 33.159622, 31.582758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198204, 32.945911, 31.671698>,  <37.303844, 32.589725, 31.819931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198204, 32.945911, 31.671698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159408, 0.338640, 0.927314,
		0.951231, 0.303978, 0.052512,
		-0.264101, 0.890460, -0.370582,
		37.118973, 33.213051, 31.560524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338882, 33.004601, 32.458515>,  <37.303844, 32.589725, 31.819931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338882, 33.004601, 32.458515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.136826, 33.251411, 32.217152>,  <37.015591, 33.399498, 32.072334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.136826, 33.251411, 32.217152>,  <37.338882, 33.004601, 32.458515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136826, 33.251411, 32.217152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268019, 0.552442, 0.789287,
		0.820362, 0.560430, -0.113688,
		-0.505146, 0.617031, -0.603408,
		36.985283, 33.436520, 32.036129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581806, 33.709759, 32.585590>,  <37.338882, 33.004601, 32.458515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581806, 33.709759, 32.585590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209850, 33.693710, 32.439335>,  <36.986675, 33.684082, 32.351582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209850, 33.693710, 32.439335>,  <37.581806, 33.709759, 32.585590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209850, 33.693710, 32.439335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294810, 0.675749, 0.675611,
		0.219968, 0.736039, -0.640204,
		-0.929893, -0.040126, -0.365635,
		36.930882, 33.681671, 32.329643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394543, 34.405350, 32.589680>,  <37.581806, 33.709759, 32.585590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394543, 34.405350, 32.589680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034573, 34.236286, 32.546791>,  <36.818592, 34.134846, 32.521057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034573, 34.236286, 32.546791>,  <37.394543, 34.405350, 32.589680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034573, 34.236286, 32.546791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415640, 0.757101, 0.504025,
		-0.131852, 0.498150, -0.857007,
		-0.899921, -0.422663, -0.107226,
		36.764595, 34.109486, 32.514622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975647, 34.965618, 32.531086>,  <37.394543, 34.405350, 32.589680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975647, 34.965618, 32.531086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753883, 34.651947, 32.642582>,  <36.620827, 34.463745, 32.709480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753883, 34.651947, 32.642582>,  <36.975647, 34.965618, 32.531086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753883, 34.651947, 32.642582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457840, 0.567069, 0.684701,
		-0.694992, 0.251986, -0.673416,
		-0.554408, -0.784179, 0.278739,
		36.587563, 34.416695, 32.726204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314930, 35.224705, 32.421741>,  <36.975647, 34.965618, 32.531086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314930, 35.224705, 32.421741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267193, 34.931160, 32.689236>,  <36.238552, 34.755032, 32.849731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267193, 34.931160, 32.689236>,  <36.314930, 35.224705, 32.421741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267193, 34.931160, 32.689236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452795, 0.639652, 0.621145,
		-0.883592, -0.228670, -0.408627,
		-0.119341, -0.733863, 0.668732,
		36.231392, 34.711002, 32.889854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618694, 35.179043, 32.717361>,  <36.314930, 35.224705, 32.421741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618694, 35.179043, 32.717361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875996, 35.018211, 32.977993>,  <36.030376, 34.921711, 33.134373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875996, 35.018211, 32.977993>,  <35.618694, 35.179043, 32.717361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875996, 35.018211, 32.977993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310843, 0.640583, 0.702161,
		-0.699719, -0.654204, 0.287070,
		0.643249, -0.402082, 0.651583,
		36.068970, 34.897587, 33.173470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648315, 35.212391, 31.915737>,  <35.618694, 35.179043, 32.717361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648315, 35.212391, 31.915737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965652, 35.433605, 31.813951>,  <36.156055, 35.566334, 31.752880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965652, 35.433605, 31.813951>,  <35.648315, 35.212391, 31.915737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965652, 35.433605, 31.813951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429790, 0.212783, -0.877499,
		-0.431146, 0.805524, 0.406501,
		0.793343, 0.553040, -0.254466,
		36.203655, 35.599518, 31.737612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403477, 35.770851, 31.506269>,  <35.648315, 35.212391, 31.915737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403477, 35.770851, 31.506269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791801, 35.807343, 31.417536>,  <36.024796, 35.829239, 31.364296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791801, 35.807343, 31.417536>,  <35.403477, 35.770851, 31.506269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791801, 35.807343, 31.417536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237298, 0.230508, -0.943692,
		-0.034957, 0.968784, 0.245428,
		0.970808, 0.091228, -0.221833,
		36.083042, 35.834709, 31.350986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385605, 36.358730, 30.952076>,  <35.403477, 35.770851, 31.506269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385605, 36.358730, 30.952076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737881, 36.170006, 30.935173>,  <35.949245, 36.056770, 30.925032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737881, 36.170006, 30.935173>,  <35.385605, 36.358730, 30.952076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737881, 36.170006, 30.935173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097164, 0.267241, -0.958719,
		0.463625, 0.840225, 0.281199,
		0.880688, -0.471808, -0.042259,
		36.002087, 36.028461, 30.922495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814877, 36.805340, 30.477144>,  <35.385605, 36.358730, 30.952076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814877, 36.805340, 30.477144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942081, 36.426140, 30.482252>,  <36.018402, 36.198620, 30.485317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942081, 36.426140, 30.482252>,  <35.814877, 36.805340, 30.477144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942081, 36.426140, 30.482252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010746, -0.009865, -0.999894,
		0.948027, 0.318111, 0.007050,
		0.318008, -0.948002, 0.012770,
		36.037483, 36.141739, 30.486084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315327, 36.885971, 30.052729>,  <35.814877, 36.805340, 30.477144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315327, 36.885971, 30.052729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269817, 36.489700, 30.082678>,  <36.242512, 36.251938, 30.100647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269817, 36.489700, 30.082678>,  <36.315327, 36.885971, 30.052729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269817, 36.489700, 30.082678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187229, -0.095391, -0.977674,
		0.975706, -0.097214, 0.196337,
		-0.113773, -0.990682, 0.074872,
		36.235687, 36.192497, 30.105139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865662, 36.588272, 29.606539>,  <36.315327, 36.885971, 30.052729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865662, 36.588272, 29.606539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618862, 36.279701, 29.668770>,  <36.470783, 36.094559, 29.706108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618862, 36.279701, 29.668770>,  <36.865662, 36.588272, 29.606539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618862, 36.279701, 29.668770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114692, -0.283730, -0.952021,
		0.778561, -0.569553, 0.263538,
		-0.617000, -0.771431, 0.155577,
		36.433762, 36.048271, 29.715443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312847, 35.991631, 29.346319>,  <36.865662, 36.588272, 29.606539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312847, 35.991631, 29.346319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.915630, 35.946957, 29.361238>,  <36.677299, 35.920151, 29.370190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.915630, 35.946957, 29.361238>,  <37.312847, 35.991631, 29.346319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915630, 35.946957, 29.361238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018315, -0.459409, -0.888036,
		0.116314, -0.881175, 0.458259,
		-0.993044, -0.111685, 0.037297,
		36.617718, 35.913452, 29.372427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356403, 35.273960, 29.132082>,  <37.312847, 35.991631, 29.346319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356403, 35.273960, 29.132082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004539, 35.444401, 29.047577>,  <36.793419, 35.546665, 28.996874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004539, 35.444401, 29.047577>,  <37.356403, 35.273960, 29.132082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004539, 35.444401, 29.047577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017130, -0.415524, -0.909421,
		-0.475295, -0.803600, 0.358221,
		-0.879660, 0.426107, -0.211262,
		36.740643, 35.572231, 28.984200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994972, 34.772991, 28.772486>,  <37.356403, 35.273960, 29.132082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994972, 34.772991, 28.772486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795944, 35.105824, 28.674454>,  <36.676529, 35.305523, 28.615635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795944, 35.105824, 28.674454>,  <36.994972, 34.772991, 28.772486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795944, 35.105824, 28.674454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005542, -0.279480, -0.960135,
		-0.867409, -0.479089, 0.134448,
		-0.497565, 0.832085, -0.245079,
		36.646675, 35.355450, 28.600929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424908, 34.515781, 28.422379>,  <36.994972, 34.772991, 28.772486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424908, 34.515781, 28.422379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468903, 34.897640, 28.311707>,  <36.495300, 35.126755, 28.245302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468903, 34.897640, 28.311707>,  <36.424908, 34.515781, 28.422379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468903, 34.897640, 28.311707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018840, -0.276319, -0.960882,
		-0.993755, 0.110894, -0.012405,
		0.109983, 0.954647, -0.276682,
		36.501896, 35.184032, 28.228703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966339, 34.623798, 27.840506>,  <36.424908, 34.515781, 28.422379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966339, 34.623798, 27.840506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216953, 34.935074, 27.823153>,  <36.367321, 35.121838, 27.812740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216953, 34.935074, 27.823153>,  <35.966339, 34.623798, 27.840506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216953, 34.935074, 27.823153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047618, -0.093779, -0.994454,
		-0.777938, 0.620994, -0.095812,
		0.626535, 0.778185, -0.043384,
		36.404915, 35.168530, 27.810137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743561, 34.980087, 27.338280>,  <35.966339, 34.623798, 27.840506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743561, 34.980087, 27.338280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.120178, 35.110970, 27.370346>,  <36.346149, 35.189499, 27.389585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.120178, 35.110970, 27.370346>,  <35.743561, 34.980087, 27.338280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120178, 35.110970, 27.370346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078907, 0.017144, -0.996734,
		-0.327511, 0.944798, -0.009677,
		0.941547, 0.327205, 0.080166,
		36.402641, 35.209129, 27.394396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757702, 35.514439, 26.895771>,  <35.743561, 34.980087, 27.338280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757702, 35.514439, 26.895771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140312, 35.412674, 26.952803>,  <36.369881, 35.351616, 26.987022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140312, 35.412674, 26.952803>,  <35.757702, 35.514439, 26.895771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140312, 35.412674, 26.952803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137337, -0.038354, -0.989781,
		0.257277, 0.966336, -0.001747,
		0.956529, -0.254408, 0.142581,
		36.427269, 35.336353, 26.995577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123074, 35.983101, 26.517551>,  <35.757702, 35.514439, 26.895771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123074, 35.983101, 26.517551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.340839, 35.650265, 26.559975>,  <36.471497, 35.450565, 26.585428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.340839, 35.650265, 26.559975>,  <36.123074, 35.983101, 26.517551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340839, 35.650265, 26.559975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153559, -0.025438, -0.987812,
		0.824642, 0.554063, 0.113926,
		0.544412, -0.832086, 0.106059,
		36.504162, 35.400639, 26.591793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648792, 36.103043, 26.035990>,  <36.123074, 35.983101, 26.517551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648792, 36.103043, 26.035990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648643, 35.708675, 26.102888>,  <36.648552, 35.472057, 26.143026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648643, 35.708675, 26.102888>,  <36.648792, 36.103043, 26.035990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648643, 35.708675, 26.102888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135161, -0.165760, -0.976860,
		0.990824, 0.022240, 0.133319,
		-0.000374, -0.985915, 0.167245,
		36.648533, 35.412899, 26.153061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117855, 35.805405, 25.580147>,  <36.648792, 36.103043, 26.035990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117855, 35.805405, 25.580147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906517, 35.490681, 25.707758>,  <36.779713, 35.301846, 25.784325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906517, 35.490681, 25.707758>,  <37.117855, 35.805405, 25.580147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906517, 35.490681, 25.707758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141173, -0.451940, -0.880807,
		0.837208, -0.420336, 0.349858,
		-0.528349, -0.786809, 0.319028,
		36.748013, 35.254639, 25.803467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528919, 35.229282, 25.529989>,  <37.117855, 35.805405, 25.580147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528919, 35.229282, 25.529989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166943, 35.059158, 25.535450>,  <36.949757, 34.957085, 25.538727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166943, 35.059158, 25.535450>,  <37.528919, 35.229282, 25.529989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166943, 35.059158, 25.535450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219457, -0.493953, -0.841338,
		0.364575, -0.758367, 0.540337,
		-0.904944, -0.425311, 0.013654,
		36.895458, 34.931564, 25.539547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565125, 34.456047, 25.564779>,  <37.528919, 35.229282, 25.529989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565125, 34.456047, 25.564779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216911, 34.549103, 25.391323>,  <37.007984, 34.604939, 25.287249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216911, 34.549103, 25.391323>,  <37.565125, 34.456047, 25.564779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216911, 34.549103, 25.391323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281113, -0.488175, -0.826233,
		-0.403912, -0.841167, 0.359573,
		-0.870535, 0.232645, -0.433643,
		36.955750, 34.618896, 25.261230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502285, 33.934101, 25.162882>,  <37.565125, 34.456047, 25.564779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502285, 33.934101, 25.162882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.206409, 34.160351, 25.017046>,  <37.028885, 34.296101, 24.929544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.206409, 34.160351, 25.017046>,  <37.502285, 33.934101, 25.162882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206409, 34.160351, 25.017046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250944, -0.270858, -0.929335,
		-0.624408, -0.778911, 0.058410,
		-0.739690, 0.565626, -0.364589,
		36.984501, 34.330040, 24.907669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991333, 33.574512, 24.734533>,  <37.502285, 33.934101, 25.162882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991333, 33.574512, 24.734533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005596, 33.956955, 24.618196>,  <37.014156, 34.186420, 24.548395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005596, 33.956955, 24.618196>,  <36.991333, 33.574512, 24.734533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005596, 33.956955, 24.618196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457822, -0.274321, -0.845663,
		-0.888328, -0.102997, -0.447509,
		0.035660, 0.956106, -0.290842,
		37.016293, 34.243786, 24.530945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923943, 33.398094, 24.096807>,  <36.991333, 33.574512, 24.734533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923943, 33.398094, 24.096807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017838, 33.786743, 24.085234>,  <37.074177, 34.019936, 24.078289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017838, 33.786743, 24.085234>,  <36.923943, 33.398094, 24.096807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017838, 33.786743, 24.085234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309193, -0.102855, -0.945420,
		-0.921572, 0.212983, -0.324565,
		0.234741, 0.971627, -0.028935,
		37.088261, 34.078232, 24.076553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509930, 33.731129, 23.445250>,  <36.923943, 33.398094, 24.096807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509930, 33.731129, 23.445250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791008, 33.993580, 23.555319>,  <36.959656, 34.151051, 23.621361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791008, 33.993580, 23.555319>,  <36.509930, 33.731129, 23.445250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791008, 33.993580, 23.555319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342076, 0.027565, -0.939268,
		-0.623862, 0.754149, -0.205075,
		0.702695, 0.656125, 0.275173,
		37.001816, 34.190418, 23.637871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461674, 34.255451, 23.010817>,  <36.509930, 33.731129, 23.445250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461674, 34.255451, 23.010817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839035, 34.264217, 23.143188>,  <37.065453, 34.269478, 23.222612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839035, 34.264217, 23.143188>,  <36.461674, 34.255451, 23.010817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839035, 34.264217, 23.143188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330910, -0.129101, -0.934790,
		0.022236, 0.991389, -0.129046,
		0.943400, 0.021917, 0.330931,
		37.122055, 34.270794, 23.242468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818283, 34.603542, 22.462749>,  <36.461674, 34.255451, 23.010817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818283, 34.603542, 22.462749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124153, 34.452332, 22.671507>,  <37.307674, 34.361607, 22.796761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124153, 34.452332, 22.671507>,  <36.818283, 34.603542, 22.462749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124153, 34.452332, 22.671507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520229, -0.115834, -0.846135,
		0.380312, 0.918521, 0.108084,
		0.764673, -0.378023, 0.521894,
		37.353554, 34.338924, 22.828075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324894, 35.049538, 22.268562>,  <36.818283, 34.603542, 22.462749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324894, 35.049538, 22.268562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472649, 34.707245, 22.413490>,  <37.561302, 34.501869, 22.500448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472649, 34.707245, 22.413490>,  <37.324894, 35.049538, 22.268562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472649, 34.707245, 22.413490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674492, -0.021314, -0.737975,
		0.639232, 0.516978, 0.569312,
		0.369383, -0.855733, 0.362322,
		37.583462, 34.450523, 22.522186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994736, 35.172832, 22.082895>,  <37.324894, 35.049538, 22.268562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994736, 35.172832, 22.082895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977684, 34.776348, 22.132978>,  <37.967453, 34.538456, 22.163029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977684, 34.776348, 22.132978>,  <37.994736, 35.172832, 22.082895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977684, 34.776348, 22.132978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570306, -0.127038, -0.811550,
		0.820326, 0.036813, 0.570711,
		-0.042627, -0.991214, 0.125207,
		37.964897, 34.478985, 22.170540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714806, 34.888863, 22.015501>,  <37.994736, 35.172832, 22.082895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714806, 34.888863, 22.015501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440197, 34.614838, 21.918034>,  <38.275433, 34.450424, 21.859552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440197, 34.614838, 21.918034>,  <38.714806, 34.888863, 22.015501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440197, 34.614838, 21.918034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467590, -0.159330, -0.869467,
		0.556816, -0.710847, 0.429712,
		-0.686524, -0.685062, -0.243668,
		38.234241, 34.409317, 21.844933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496830, 35.176067, 22.065504>,  <38.714806, 34.888863, 22.015501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496830, 35.176067, 22.065504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.582123, 35.553917, 21.965723>,  <39.633297, 35.780624, 21.905855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.582123, 35.553917, 21.965723>,  <39.496830, 35.176067, 22.065504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582123, 35.553917, 21.965723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194126, 0.291195, 0.936761,
		0.957522, -0.151321, 0.245467,
		0.213230, 0.944620, -0.249450,
		39.646091, 35.837303, 21.890888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942108, 35.484661, 22.655064>,  <39.496830, 35.176067, 22.065504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942108, 35.484661, 22.655064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.778149, 35.796806, 22.466164>,  <39.679775, 35.984093, 22.352823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.778149, 35.796806, 22.466164>,  <39.942108, 35.484661, 22.655064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778149, 35.796806, 22.466164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081099, 0.484512, 0.871017,
		0.908521, 0.395324, -0.135312,
		-0.409894, 0.780364, -0.472249,
		39.655182, 36.030914, 22.324490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231697, 36.044266, 22.933132>,  <39.942108, 35.484661, 22.655064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231697, 36.044266, 22.933132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914520, 36.202919, 22.748125>,  <39.724213, 36.298111, 22.637121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914520, 36.202919, 22.748125>,  <40.231697, 36.044266, 22.933132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914520, 36.202919, 22.748125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138793, 0.621566, 0.770968,
		0.593274, 0.675530, -0.437819,
		-0.792945, 0.396629, -0.462518,
		39.676636, 36.321907, 22.609369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329987, 36.716450, 23.005493>,  <40.231697, 36.044266, 22.933132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329987, 36.716450, 23.005493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.941399, 36.683231, 22.916636>,  <39.708244, 36.663300, 22.863321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.941399, 36.683231, 22.916636>,  <40.329987, 36.716450, 23.005493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941399, 36.683231, 22.916636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223527, 0.633634, 0.740637,
		0.079253, 0.769163, -0.634120,
		-0.971470, -0.083045, -0.222146,
		39.649956, 36.658318, 22.849991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022499, 37.358364, 23.154099>,  <40.329987, 36.716450, 23.005493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022499, 37.358364, 23.154099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.698921, 37.123306, 23.147293>,  <39.504776, 36.982273, 23.143209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.698921, 37.123306, 23.147293>,  <40.022499, 37.358364, 23.154099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698921, 37.123306, 23.147293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372999, 0.490664, 0.787477,
		-0.454407, 0.643369, -0.616109,
		-0.808941, -0.587644, -0.017015,
		39.456238, 36.947014, 23.142189>
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
