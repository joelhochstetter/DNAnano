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
	<0.620837, 0.748145, 2.591041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.657593, 0.390701, 2.766777>,  <0.679646, 0.176235, 2.872218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.657593, 0.390701, 2.766777>,  <0.620837, 0.748145, 2.591041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.657593, 0.390701, 2.766777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974008, -0.011074, -0.226242,
		0.207037, 0.448709, 0.869365,
		0.091889, -0.893609, 0.439339,
		0.685160, 0.122618, 2.898579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.207860, 0.675693, 3.170401>,  <0.620837, 0.748145, 2.591041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.207860, 0.675693, 3.170401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.177029, 0.301254, 3.033123>,  <1.158530, 0.076591, 2.950756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.177029, 0.301254, 3.033123>,  <1.207860, 0.675693, 3.170401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.177029, 0.301254, 3.033123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983847, -0.015630, -0.178331,
		0.161571, -0.351397, 0.922180,
		-0.077079, -0.936096, -0.343195,
		1.153905, 0.020425, 2.930164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.801417, 0.283048, 3.333259>,  <1.207860, 0.675693, 3.170401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.801417, 0.283048, 3.333259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.640179, 0.107590, 3.011986>,  <1.543436, 0.002315, 2.819222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.640179, 0.107590, 3.011986>,  <1.801417, 0.283048, 3.333259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.640179, 0.107590, 3.011986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898640, -0.023730, -0.438044,
		0.173087, -0.898346, 0.403750,
		-0.403096, -0.438646, -0.803183,
		1.519250, -0.024004, 2.771031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.334961, 0.031835, 3.140407>,  <1.801417, 0.283048, 3.333259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.334961, 0.031835, 3.140407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.085850, 0.052979, 2.828163>,  <1.936383, 0.065665, 2.640817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.085850, 0.052979, 2.828163>,  <2.334961, 0.031835, 3.140407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.085850, 0.052979, 2.828163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765701, 0.246198, -0.594213,
		0.160774, -0.967777, -0.193803,
		-0.622780, 0.052861, -0.780609,
		1.899016, 0.068836, 2.593980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.576715, -0.388593, 2.579598>,  <2.334961, 0.031835, 3.140407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.576715, -0.388593, 2.579598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.367229, -0.064560, 2.474155>,  <2.241538, 0.129860, 2.410890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.367229, -0.064560, 2.474155>,  <2.576715, -0.388593, 2.579598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.367229, -0.064560, 2.474155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843832, 0.450831, -0.291030,
		-0.116917, -0.374855, -0.919682,
		-0.523715, 0.810083, -0.263605,
		2.210115, 0.178465, 2.395074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.816595, -0.267871, 1.904709>,  <2.576715, -0.388593, 2.579598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.816595, -0.267871, 1.904709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.665581, 0.087189, 2.010197>,  <2.574972, 0.300224, 2.073489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.665581, 0.087189, 2.010197>,  <2.816595, -0.267871, 1.904709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.665581, 0.087189, 2.010197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710375, 0.460319, -0.532422,
		-0.593998, -0.013669, -0.804350,
		-0.377535, 0.887648, 0.263719,
		2.552320, 0.353483, 2.089312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.914399, 0.209212, 1.348462>,  <2.816595, -0.267871, 1.904709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.914399, 0.209212, 1.348462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.826672, 0.474686, 1.634518>,  <2.774035, 0.633970, 1.806151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.826672, 0.474686, 1.634518>,  <2.914399, 0.209212, 1.348462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.826672, 0.474686, 1.634518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569982, 0.682052, -0.458176,
		-0.791845, 0.307129, -0.527875,
		-0.219320, 0.663684, 0.715138,
		2.760876, 0.673791, 1.849059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.900874, 0.884138, 0.929550>,  <2.914399, 0.209212, 1.348462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.900874, 0.884138, 0.929550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.969879, 0.971390, 1.313770>,  <3.011282, 1.023741, 1.544303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.969879, 0.971390, 1.313770>,  <2.900874, 0.884138, 0.929550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.969879, 0.971390, 1.313770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737099, 0.618282, -0.272785,
		-0.653394, 0.755080, -0.054122,
		0.172512, 0.218129, 0.960552,
		3.021633, 1.036829, 1.601936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.124476, 2.126364, 1.244248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.301632, 1.878830, 1.503754>,  <4.407926, 1.730310, 1.659457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.301632, 1.878830, 1.503754>,  <4.124476, 2.126364, 1.244248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.301632, 1.878830, 1.503754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862903, -0.097763, 0.495823,
		-0.243407, -0.779414, -0.577293,
		0.442889, -0.618835, 0.648763,
		4.434499, 1.693180, 1.698383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.832103, 1.445549, 1.210850>,  <4.124476, 2.126364, 1.244248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.832103, 1.445549, 1.210850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.934273, 1.602982, 1.564087>,  <3.995575, 1.697441, 1.776029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.934273, 1.602982, 1.564087>,  <3.832103, 1.445549, 1.210850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.934273, 1.602982, 1.564087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954120, -0.045000, 0.296025,
		0.156249, -0.918187, 0.364031,
		0.255424, 0.393583, 0.883091,
		4.010900, 1.721056, 1.829015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.810086, 0.850583, 1.762607>,  <3.832103, 1.445549, 1.210850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.810086, 0.850583, 1.762607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.754143, 1.234360, 1.860512>,  <3.720577, 1.464626, 1.919255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.754143, 1.234360, 1.860512>,  <3.810086, 0.850583, 1.762607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.754143, 1.234360, 1.860512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852285, -0.242476, 0.463483,
		0.504035, -0.143786, 0.851631,
		-0.139858, 0.959443, 0.244763,
		3.712185, 1.522193, 1.933941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.729680, 0.979381, 2.542367>,  <3.810086, 0.850583, 1.762607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.729680, 0.979381, 2.542367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.528564, 1.188354, 2.266899>,  <3.407895, 1.313739, 2.101618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.528564, 1.188354, 2.266899>,  <3.729680, 0.979381, 2.542367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.528564, 1.188354, 2.266899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860449, -0.378663, 0.340942,
		-0.082654, 0.763987, 0.639916,
		-0.502788, 0.522435, -0.688670,
		3.377728, 1.345085, 2.060298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.189389, 1.284094, 2.861048>,  <3.729680, 0.979381, 2.542367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.189389, 1.284094, 2.861048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.132212, 1.209274, 2.472290>,  <3.097906, 1.164382, 2.239035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.132212, 1.209274, 2.472290>,  <3.189389, 1.284094, 2.861048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.132212, 1.209274, 2.472290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872709, -0.439370, 0.212915,
		-0.466848, 0.878616, -0.100436,
		-0.142942, -0.187050, -0.971895,
		3.089329, 1.153159, 2.180722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.500484, 1.454899, 2.805882>,  <3.189389, 1.284094, 2.861048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.500484, 1.454899, 2.805882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.598234, 1.206085, 2.508331>,  <2.656885, 1.056797, 2.329801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.598234, 1.206085, 2.508331>,  <2.500484, 1.454899, 2.805882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.598234, 1.206085, 2.508331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788165, -0.574299, 0.221306,
		-0.564867, 0.532212, -0.630615,
		0.244380, -0.622038, -0.743874,
		2.671547, 1.019475, 2.285168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.839631, 1.394434, 2.450769>,  <2.500484, 1.454899, 2.805882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.839631, 1.394434, 2.450769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.065756, 1.082001, 2.344688>,  <2.201431, 0.894541, 2.281040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.065756, 1.082001, 2.344688>,  <1.839631, 1.394434, 2.450769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.065756, 1.082001, 2.344688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773437, -0.613674, 0.158740,
		-0.286737, 0.115380, -0.951036,
		0.565311, -0.781083, -0.265202,
		2.235349, 0.847676, 2.265128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.463137, 1.113818, 1.918302>,  <1.839631, 1.394434, 2.450769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.463137, 1.113818, 1.918302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.708359, 0.854019, 2.098221>,  <1.855492, 0.698140, 2.206172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.708359, 0.854019, 2.098221>,  <1.463137, 1.113818, 1.918302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.708359, 0.854019, 2.098221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781045, -0.583925, 0.221358,
		0.118876, -0.487017, -0.865265,
		0.613055, -0.649497, 0.449797,
		1.892275, 0.659170, 2.233160>
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
