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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<50.856865, 41.738342, 45.864750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.753067, 42.122833, 45.902084>,  <50.690788, 42.353527, 45.924484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.753067, 42.122833, 45.902084>,  <50.856865, 41.738342, 45.864750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.753067, 42.122833, 45.902084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096773, -0.122042, 0.987796,
		0.960883, 0.247297, 0.124690,
		-0.259496, 0.961223, 0.093336,
		50.675217, 42.411201, 45.930084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.272762, 41.970383, 46.397354>,  <50.856865, 41.738342, 45.864750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.272762, 41.970383, 46.397354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.962593, 42.220650, 46.363266>,  <50.776493, 42.370811, 46.342812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.962593, 42.220650, 46.363266>,  <51.272762, 41.970383, 46.397354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.962593, 42.220650, 46.363266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129204, -0.025102, 0.991300,
		0.618087, 0.779684, 0.100303,
		-0.775419, 0.625669, -0.085224,
		50.729969, 42.408352, 46.337700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.234268, 42.281162, 47.104736>,  <51.272762, 41.970383, 46.397354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.234268, 42.281162, 47.104736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.894180, 42.397964, 46.929531>,  <50.690128, 42.468048, 46.824406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.894180, 42.397964, 46.929531>,  <51.234268, 42.281162, 47.104736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.894180, 42.397964, 46.929531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449343, 0.030930, 0.892823,
		0.274261, 0.955915, 0.104915,
		-0.850218, 0.292010, -0.438017,
		50.639114, 42.485569, 46.798126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.000267, 42.866447, 47.576565>,  <51.234268, 42.281162, 47.104736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.000267, 42.866447, 47.576565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.693832, 42.717163, 47.367252>,  <50.509972, 42.627594, 47.241665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.693832, 42.717163, 47.367252>,  <51.000267, 42.866447, 47.576565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.693832, 42.717163, 47.367252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567479, 0.010483, 0.823321,
		-0.301787, 0.927687, -0.219821,
		-0.766089, -0.373211, -0.523279,
		50.464005, 42.605198, 47.210270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.452812, 43.328804, 47.647549>,  <51.000267, 42.866447, 47.576565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.452812, 43.328804, 47.647549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.312279, 42.962044, 47.571804>,  <50.227959, 42.741989, 47.526356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.312279, 42.962044, 47.571804>,  <50.452812, 43.328804, 47.647549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.312279, 42.962044, 47.571804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384307, -0.043201, 0.922194,
		-0.853741, 0.396771, -0.337193,
		-0.351333, -0.916901, -0.189365,
		50.206879, 42.686974, 47.514996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.761616, 43.314224, 47.983837>,  <50.452812, 43.328804, 47.647549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.761616, 43.314224, 47.983837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.841667, 42.928902, 47.912292>,  <49.889698, 42.697708, 47.869366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.841667, 42.928902, 47.912292>,  <49.761616, 43.314224, 47.983837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.841667, 42.928902, 47.912292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438902, -0.251355, 0.862662,
		-0.875964, -0.094141, -0.473100,
		0.200128, -0.963306, -0.178859,
		49.901707, 42.639912, 47.858635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.078495, 42.931236, 47.988911>,  <49.761616, 43.314224, 47.983837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.078495, 42.931236, 47.988911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.368446, 42.663155, 48.052643>,  <49.542416, 42.502308, 48.090881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.368446, 42.663155, 48.052643>,  <49.078495, 42.931236, 47.988911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.368446, 42.663155, 48.052643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377531, -0.193030, 0.905654,
		-0.576216, -0.716637, -0.392944,
		0.724876, -0.670202, 0.159326,
		49.585911, 42.462093, 48.100441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.799259, 42.307121, 48.106976>,  <49.078495, 42.931236, 47.988911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.799259, 42.307121, 48.106976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.150848, 42.256104, 48.290775>,  <49.361801, 42.225491, 48.401054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.150848, 42.256104, 48.290775>,  <48.799259, 42.307121, 48.106976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.150848, 42.256104, 48.290775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475766, -0.300085, 0.826798,
		0.032431, -0.945347, -0.324450,
		0.878974, -0.127548, 0.459496,
		49.414539, 42.217838, 48.428623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.624748, 41.697872, 48.546631>,  <48.799259, 42.307121, 48.106976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.624748, 41.697872, 48.546631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.956459, 41.871040, 48.687981>,  <49.155487, 41.974941, 48.772793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.956459, 41.871040, 48.687981>,  <48.624748, 41.697872, 48.546631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.956459, 41.871040, 48.687981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323910, -0.142929, 0.935229,
		0.455386, -0.890030, 0.021699,
		0.829280, 0.432919, 0.353377,
		49.205242, 42.000916, 48.793995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.961502, 41.271183, 48.983212>,  <48.624748, 41.697872, 48.546631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.961502, 41.271183, 48.983212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.090553, 41.631409, 49.099762>,  <49.167984, 41.847542, 49.169693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.090553, 41.631409, 49.099762>,  <48.961502, 41.271183, 48.983212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.090553, 41.631409, 49.099762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266369, -0.209011, 0.940937,
		0.908271, -0.381190, 0.172448,
		0.322632, 0.900560, 0.291376,
		49.187344, 41.901577, 49.187176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.364933, 41.100597, 49.499737>,  <48.961502, 41.271183, 48.983212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.364933, 41.100597, 49.499737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.283394, 41.491043, 49.529812>,  <49.234470, 41.725311, 49.547855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.283394, 41.491043, 49.529812>,  <49.364933, 41.100597, 49.499737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.283394, 41.491043, 49.529812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183661, -0.113565, 0.976408,
		0.961621, 0.185230, 0.202423,
		-0.203848, 0.976111, 0.075187,
		49.222240, 41.783878, 49.552368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.574394, 41.295235, 50.171459>,  <49.364933, 41.100597, 49.499737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.574394, 41.295235, 50.171459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.333138, 41.595467, 50.063496>,  <49.188385, 41.775608, 49.998718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.333138, 41.595467, 50.063496>,  <49.574394, 41.295235, 50.171459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.333138, 41.595467, 50.063496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343124, 0.061325, 0.937286,
		0.720062, 0.657925, 0.220555,
		-0.603139, 0.750582, -0.269908,
		49.152195, 41.820641, 49.982525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.616306, 41.789429, 50.712547>,  <49.574394, 41.295235, 50.171459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.616306, 41.789429, 50.712547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.264336, 41.866638, 50.538895>,  <49.053154, 41.912964, 50.434704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.264336, 41.866638, 50.538895>,  <49.616306, 41.789429, 50.712547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.264336, 41.866638, 50.538895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365035, 0.310183, 0.877802,
		0.304095, 0.930875, -0.202479,
		-0.879929, 0.193023, -0.434127,
		49.000359, 41.924545, 50.408657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.360016, 42.398567, 50.971680>,  <49.616306, 41.789429, 50.712547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.360016, 42.398567, 50.971680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.028900, 42.230423, 50.823051>,  <48.830231, 42.129536, 50.733875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.028900, 42.230423, 50.823051>,  <49.360016, 42.398567, 50.971680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.028900, 42.230423, 50.823051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505695, 0.272213, 0.818641,
		-0.242975, 0.865563, -0.437908,
		-0.827790, -0.420357, -0.371570,
		48.780563, 42.104317, 50.711582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.929291, 42.938282, 51.056068>,  <49.360016, 42.398567, 50.971680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.929291, 42.938282, 51.056068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.725494, 42.597916, 51.004910>,  <48.603218, 42.393696, 50.974213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.725494, 42.597916, 51.004910>,  <48.929291, 42.938282, 51.056068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.725494, 42.597916, 51.004910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606096, 0.249374, 0.755288,
		-0.610794, 0.462330, -0.642792,
		-0.509488, -0.850919, -0.127900,
		48.572647, 42.342640, 50.966541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.238159, 43.136734, 51.006016>,  <48.929291, 42.938282, 51.056068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.238159, 43.136734, 51.006016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.259644, 42.754524, 51.122005>,  <48.272533, 42.525200, 51.191601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.259644, 42.754524, 51.122005>,  <48.238159, 43.136734, 51.006016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.259644, 42.754524, 51.122005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686034, 0.175704, 0.706035,
		-0.725584, -0.236854, -0.646086,
		0.053707, -0.955525, 0.289978,
		48.275757, 42.467865, 51.209000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.525482, 43.004704, 51.087994>,  <48.238159, 43.136734, 51.006016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.525482, 43.004704, 51.087994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.706169, 42.704048, 51.280239>,  <47.814583, 42.523655, 51.395588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.706169, 42.704048, 51.280239>,  <47.525482, 43.004704, 51.087994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.706169, 42.704048, 51.280239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758674, -0.040173, 0.650231,
		-0.469431, -0.658350, -0.588396,
		0.451718, -0.751639, 0.480615,
		47.841686, 42.478558, 51.424423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.991837, 42.466743, 51.366852>,  <47.525482, 43.004704, 51.087994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.991837, 42.466743, 51.366852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308968, 42.410019, 51.603939>,  <47.499245, 42.375984, 51.746193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308968, 42.410019, 51.603939>,  <46.991837, 42.466743, 51.366852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.308968, 42.410019, 51.603939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602585, -0.036857, 0.797203,
		-0.091212, -0.989206, -0.114679,
		0.792825, -0.141818, 0.592719,
		47.546814, 42.367477, 51.781754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.696194, 42.133312, 52.022743>,  <46.991837, 42.466743, 51.366852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.696194, 42.133312, 52.022743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068794, 42.229637, 52.131786>,  <47.292355, 42.287430, 52.197212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068794, 42.229637, 52.131786>,  <46.696194, 42.133312, 52.022743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.068794, 42.229637, 52.131786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287454, 0.028122, 0.957381,
		0.222880, -0.970165, 0.095417,
		0.931502, 0.240809, 0.272610,
		47.348244, 42.301880, 52.213570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.919098, 41.680965, 52.575424>,  <46.696194, 42.133312, 52.022743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.919098, 41.680965, 52.575424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165680, 41.994713, 52.602970>,  <47.313629, 42.182961, 52.619499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165680, 41.994713, 52.602970>,  <46.919098, 41.680965, 52.575424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.165680, 41.994713, 52.602970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069851, -0.032639, 0.997023,
		0.784286, -0.619430, 0.034669,
		0.616455, 0.784373, 0.068866,
		47.350616, 42.230026, 52.623631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.499744, 41.426155, 52.933422>,  <46.919098, 41.680965, 52.575424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.499744, 41.426155, 52.933422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470398, 41.822273, 52.980633>,  <47.452789, 42.059944, 53.008961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470398, 41.822273, 52.980633>,  <47.499744, 41.426155, 52.933422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.470398, 41.822273, 52.980633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061045, -0.122586, 0.990579,
		0.995435, 0.065471, 0.069447,
		-0.073367, 0.990296, 0.118030,
		47.448387, 42.119362, 53.016041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.908905, 41.460152, 53.522079>,  <47.499744, 41.426155, 52.933422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.908905, 41.460152, 53.522079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731110, 41.817558, 53.496605>,  <47.624432, 42.032001, 53.481319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731110, 41.817558, 53.496605>,  <47.908905, 41.460152, 53.522079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.731110, 41.817558, 53.496605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102915, 0.019684, 0.994495,
		0.889855, 0.448593, 0.083207,
		-0.444486, 0.893519, -0.063683,
		47.597763, 42.085613, 53.477501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.220985, 41.835312, 54.063770>,  <47.908905, 41.460152, 53.522079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.220985, 41.835312, 54.063770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.891754, 42.052490, 53.997124>,  <47.694218, 42.182796, 53.957134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.891754, 42.052490, 53.997124>,  <48.220985, 41.835312, 54.063770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.891754, 42.052490, 53.997124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123397, 0.115403, 0.985624,
		0.554365, 0.831803, -0.027988,
		-0.823075, 0.542942, -0.166617,
		47.644833, 42.215374, 53.947140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.318493, 42.512623, 54.405602>,  <48.220985, 41.835312, 54.063770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.318493, 42.512623, 54.405602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.929489, 42.435242, 54.353756>,  <47.696087, 42.388813, 54.322651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.929489, 42.435242, 54.353756>,  <48.318493, 42.512623, 54.405602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.929489, 42.435242, 54.353756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155823, 0.127029, 0.979583,
		-0.173034, 0.972852, -0.153681,
		-0.972511, -0.193448, -0.129612,
		47.637737, 42.377209, 54.314873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.065594, 43.062298, 54.735096>,  <48.318493, 42.512623, 54.405602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.065594, 43.062298, 54.735096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742310, 42.828545, 54.706028>,  <47.548340, 42.688293, 54.688587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742310, 42.828545, 54.706028>,  <48.065594, 43.062298, 54.735096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.742310, 42.828545, 54.706028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289448, 0.286742, 0.913235,
		-0.512844, 0.759125, -0.400899,
		-0.808215, -0.584386, -0.072673,
		47.499844, 42.653229, 54.684227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.551495, 43.463985, 54.752781>,  <48.065594, 43.062298, 54.735096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.551495, 43.463985, 54.752781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417458, 43.102440, 54.859173>,  <47.337036, 42.885513, 54.923008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417458, 43.102440, 54.859173>,  <47.551495, 43.463985, 54.752781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.417458, 43.102440, 54.859173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507273, 0.410967, 0.757483,
		-0.793970, 0.118900, -0.596217,
		-0.335091, -0.903863, 0.265981,
		47.316929, 42.831280, 54.938969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889992, 43.524502, 54.845638>,  <47.551495, 43.463985, 54.752781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889992, 43.524502, 54.845638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988701, 43.210876, 55.073448>,  <47.047924, 43.022701, 55.210133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988701, 43.210876, 55.073448>,  <46.889992, 43.524502, 54.845638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.988701, 43.210876, 55.073448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407260, 0.449374, 0.795112,
		-0.879344, -0.428152, -0.208424,
		0.246769, -0.784059, 0.569523,
		47.062733, 42.975658, 55.244305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187378, 43.409973, 55.183857>,  <46.889992, 43.524502, 54.845638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187378, 43.409973, 55.183857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488304, 43.242546, 55.387352>,  <46.668861, 43.142090, 55.509449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488304, 43.242546, 55.387352>,  <46.187378, 43.409973, 55.183857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488304, 43.242546, 55.387352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325317, 0.435476, 0.839363,
		-0.572874, -0.796971, 0.191450,
		0.752319, -0.418567, 0.508740,
		46.714001, 43.116978, 55.539974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862530, 43.187325, 55.734528>,  <46.187378, 43.409973, 55.183857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862530, 43.187325, 55.734528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250427, 43.196205, 55.831768>,  <46.483166, 43.201534, 55.890114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250427, 43.196205, 55.831768>,  <45.862530, 43.187325, 55.734528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.250427, 43.196205, 55.831768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232043, 0.393157, 0.889710,
		-0.075822, -0.919203, 0.386415,
		0.969746, 0.022205, 0.243105,
		46.541351, 43.202866, 55.904701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852802, 43.005337, 56.375477>,  <45.862530, 43.187325, 55.734528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852802, 43.005337, 56.375477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221970, 43.159279, 56.379559>,  <46.443470, 43.251644, 56.382008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221970, 43.159279, 56.379559>,  <45.852802, 43.005337, 56.375477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221970, 43.159279, 56.379559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097724, 0.208563, 0.973114,
		0.372379, -0.899105, 0.230097,
		0.922921, 0.384853, 0.010199,
		46.498848, 43.274734, 56.382618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157177, 42.726345, 57.022842>,  <45.852802, 43.005337, 56.375477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157177, 42.726345, 57.022842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359108, 43.059464, 56.931984>,  <46.480267, 43.259335, 56.877468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359108, 43.059464, 56.931984>,  <46.157177, 42.726345, 57.022842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.359108, 43.059464, 56.931984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004023, 0.265401, 0.964130,
		0.863210, -0.485806, 0.137332,
		0.504828, 0.832799, -0.227143,
		46.510555, 43.309303, 56.863842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636528, 42.734871, 57.532654>,  <46.157177, 42.726345, 57.022842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636528, 42.734871, 57.532654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.581535, 43.096260, 57.370255>,  <46.548538, 43.313095, 57.272816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.581535, 43.096260, 57.370255>,  <46.636528, 42.734871, 57.532654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.581535, 43.096260, 57.370255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036298, 0.405015, 0.913589,
		0.989839, 0.140341, -0.022889,
		-0.137484, 0.903475, -0.405994,
		46.540291, 43.367302, 57.248455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.869865, 43.213398, 58.044918>,  <46.636528, 42.734871, 57.532654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.869865, 43.213398, 58.044918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692062, 43.485390, 57.811665>,  <46.585381, 43.648582, 57.671711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692062, 43.485390, 57.811665>,  <46.869865, 43.213398, 58.044918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692062, 43.485390, 57.811665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135965, 0.592226, 0.794218,
		0.885397, 0.432321, -0.170796,
		-0.444507, 0.679975, -0.583136,
		46.558712, 43.689381, 57.636723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096527, 43.924667, 58.263737>,  <46.869865, 43.213398, 58.044918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096527, 43.924667, 58.263737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752533, 43.986206, 58.069107>,  <46.546135, 44.023129, 57.952328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752533, 43.986206, 58.069107>,  <47.096527, 43.924667, 58.263737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752533, 43.986206, 58.069107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388673, 0.420407, 0.819872,
		0.330697, 0.894197, -0.301747,
		-0.859984, 0.153849, -0.486578,
		46.494537, 44.032360, 57.923134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772499, 44.506962, 58.593994>,  <47.096527, 43.924667, 58.263737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772499, 44.506962, 58.593994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462624, 44.338242, 58.405548>,  <46.276699, 44.237011, 58.292480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462624, 44.338242, 58.405548>,  <46.772499, 44.506962, 58.593994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462624, 44.338242, 58.405548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628285, 0.429114, 0.648937,
		-0.071558, 0.798716, -0.597438,
		-0.774685, -0.421798, -0.471115,
		46.230217, 44.211700, 58.264214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299202, 45.034779, 58.397995>,  <46.772499, 44.506962, 58.593994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299202, 45.034779, 58.397995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100586, 44.690781, 58.445076>,  <45.981419, 44.484383, 58.473324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100586, 44.690781, 58.445076>,  <46.299202, 45.034779, 58.397995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100586, 44.690781, 58.445076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585281, 0.431846, 0.686262,
		-0.641014, 0.271864, -0.717768,
		-0.496536, -0.859999, 0.117703,
		45.951626, 44.432781, 58.480389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607769, 45.271175, 58.412918>,  <46.299202, 45.034779, 58.397995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607769, 45.271175, 58.412918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563866, 44.895836, 58.544044>,  <45.537525, 44.670631, 58.622719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563866, 44.895836, 58.544044>,  <45.607769, 45.271175, 58.412918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563866, 44.895836, 58.544044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718140, 0.302879, 0.626530,
		-0.687189, -0.166652, -0.707105,
		-0.109755, -0.938345, 0.327815,
		45.530937, 44.614334, 58.642387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910950, 45.083988, 58.508591>,  <45.607769, 45.271175, 58.412918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910950, 45.083988, 58.508591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073273, 44.820366, 58.761879>,  <45.170666, 44.662193, 58.913853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073273, 44.820366, 58.761879>,  <44.910950, 45.083988, 58.508591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073273, 44.820366, 58.761879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615038, 0.315565, 0.722597,
		-0.676053, -0.682691, -0.277284,
		0.405809, -0.659053, 0.633220,
		45.195015, 44.622650, 58.951843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318058, 44.763668, 58.827019>,  <44.910950, 45.083988, 58.508591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318058, 44.763668, 58.827019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640663, 44.711403, 59.057655>,  <44.834229, 44.680046, 59.196037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640663, 44.711403, 59.057655>,  <44.318058, 44.763668, 58.827019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640663, 44.711403, 59.057655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515628, 0.321685, 0.794132,
		-0.289243, -0.937788, 0.192072,
		0.806515, -0.130659, 0.576595,
		44.882618, 44.672207, 59.230633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061440, 44.401531, 59.392567>,  <44.318058, 44.763668, 58.827019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061440, 44.401531, 59.392567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405834, 44.548729, 59.533016>,  <44.612469, 44.637047, 59.617287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405834, 44.548729, 59.533016>,  <44.061440, 44.401531, 59.392567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405834, 44.548729, 59.533016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447448, 0.219719, 0.866899,
		0.241874, -0.903491, 0.353837,
		0.860980, 0.368004, 0.351121,
		44.664127, 44.659126, 59.638355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070229, 44.257973, 60.054447>,  <44.061440, 44.401531, 59.392567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070229, 44.257973, 60.054447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347950, 44.545227, 60.073269>,  <44.514584, 44.717579, 60.084560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347950, 44.545227, 60.073269>,  <44.070229, 44.257973, 60.054447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347950, 44.545227, 60.073269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268717, 0.198036, 0.942641,
		0.667629, -0.667127, 0.330474,
		0.694307, 0.718139, 0.047054,
		44.556244, 44.760670, 60.087383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543442, 44.060970, 60.660988>,  <44.070229, 44.257973, 60.054447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543442, 44.060970, 60.660988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548336, 44.449829, 60.567360>,  <44.551273, 44.683144, 60.511185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548336, 44.449829, 60.567360>,  <44.543442, 44.060970, 60.660988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548336, 44.449829, 60.567360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246620, 0.229789, 0.941475,
		0.969035, 0.046208, 0.242561,
		0.012235, 0.972143, -0.234070,
		44.552006, 44.741470, 60.497139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679325, 44.376686, 61.239594>,  <44.543442, 44.060970, 60.660988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679325, 44.376686, 61.239594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522423, 44.685593, 61.039696>,  <44.428284, 44.870937, 60.919758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522423, 44.685593, 61.039696>,  <44.679325, 44.376686, 61.239594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522423, 44.685593, 61.039696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350577, 0.376775, 0.857401,
		0.850431, 0.511518, 0.122946,
		-0.392253, 0.772263, -0.499747,
		44.404747, 44.917271, 60.889771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803196, 44.981998, 61.636913>,  <44.679325, 44.376686, 61.239594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803196, 44.981998, 61.636913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469109, 45.028290, 61.421875>,  <44.268654, 45.056065, 61.292850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469109, 45.028290, 61.421875>,  <44.803196, 44.981998, 61.636913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469109, 45.028290, 61.421875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497790, 0.256333, 0.828552,
		0.233693, 0.959635, -0.156485,
		-0.835220, 0.115730, -0.537600,
		44.218544, 45.063007, 61.260593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402386, 45.617516, 61.786694>,  <44.803196, 44.981998, 61.636913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402386, 45.617516, 61.786694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145607, 45.331047, 61.677155>,  <43.991539, 45.159164, 61.611431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145607, 45.331047, 61.677155>,  <44.402386, 45.617516, 61.786694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145607, 45.331047, 61.677155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602392, 0.250117, 0.758001,
		-0.474368, 0.651563, -0.591981,
		-0.641949, -0.716176, -0.273849,
		43.953022, 45.116196, 61.595001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639500, 45.872471, 61.642105>,  <44.402386, 45.617516, 61.786694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639500, 45.872471, 61.642105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641945, 45.494652, 61.773434>,  <43.643414, 45.267960, 61.852230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641945, 45.494652, 61.773434>,  <43.639500, 45.872471, 61.642105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641945, 45.494652, 61.773434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593802, 0.260743, 0.761192,
		-0.804588, -0.199608, -0.559280,
		0.006112, -0.944547, 0.328318,
		43.643780, 45.211288, 61.871929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993050, 45.574680, 61.679535>,  <43.639500, 45.872471, 61.642105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993050, 45.574680, 61.679535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206505, 45.387207, 61.961121>,  <43.334579, 45.274723, 62.130074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206505, 45.387207, 61.961121>,  <42.993050, 45.574680, 61.679535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206505, 45.387207, 61.961121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612620, 0.359626, 0.703823,
		-0.583034, -0.806850, -0.095214,
		0.533638, -0.468682, 0.703966,
		43.366596, 45.246601, 62.172310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564095, 46.126740, 62.008308>,  <42.993050, 45.574680, 61.679535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564095, 46.126740, 62.008308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602623, 46.249626, 61.629608>,  <42.625740, 46.323357, 61.402386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602623, 46.249626, 61.629608>,  <42.564095, 46.126740, 62.008308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602623, 46.249626, 61.629608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198919, 0.926046, 0.320733,
		0.975271, -0.219220, 0.028084,
		0.096318, 0.307215, -0.946753,
		42.631519, 46.341789, 61.345581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125912, 46.638416, 61.920662>,  <42.564095, 46.126740, 62.008308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125912, 46.638416, 61.920662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791832, 46.698898, 61.709160>,  <42.591385, 46.735188, 61.582260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791832, 46.698898, 61.709160>,  <43.125912, 46.638416, 61.920662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791832, 46.698898, 61.709160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152804, 0.987406, 0.040998,
		0.528291, -0.046554, -0.847786,
		-0.835200, 0.151204, -0.528751,
		42.541271, 46.744259, 61.550533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243469, 47.124680, 61.430466>,  <43.125912, 46.638416, 61.920662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243469, 47.124680, 61.430466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857254, 47.123055, 61.534561>,  <42.625526, 47.122078, 61.597019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857254, 47.123055, 61.534561>,  <43.243469, 47.124680, 61.430466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857254, 47.123055, 61.534561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019745, 0.995853, 0.088806,
		-0.259516, 0.090884, -0.961453,
		-0.965537, -0.004062, 0.260235,
		42.567593, 47.121838, 61.612633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999615, 47.067005, 61.619656>,  <43.243469, 47.124680, 61.430466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999615, 47.067005, 61.619656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396935, 47.022705, 61.606468>,  <44.635326, 46.996124, 61.598557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396935, 47.022705, 61.606468>,  <43.999615, 47.067005, 61.619656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396935, 47.022705, 61.606468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008156, 0.351834, -0.936027,
		0.115261, 0.929488, 0.350380,
		0.993302, -0.110745, -0.032972,
		44.694923, 46.989483, 61.596577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250366, 47.682968, 61.421204>,  <43.999615, 47.067005, 61.619656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250366, 47.682968, 61.421204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500351, 47.392670, 61.306160>,  <44.650341, 47.218491, 61.237133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500351, 47.392670, 61.306160>,  <44.250366, 47.682968, 61.421204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500351, 47.392670, 61.306160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084321, 0.303513, -0.949089,
		0.776091, 0.617392, 0.128487,
		0.624958, -0.725745, -0.287613,
		44.687840, 47.174946, 61.219875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738529, 48.002598, 60.872375>,  <44.250366, 47.682968, 61.421204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738529, 48.002598, 60.872375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729019, 47.606834, 60.815102>,  <44.723312, 47.369377, 60.780739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729019, 47.606834, 60.815102>,  <44.738529, 48.002598, 60.872375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729019, 47.606834, 60.815102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195279, 0.135867, -0.971291,
		0.980459, -0.051057, 0.189981,
		-0.023780, -0.989411, -0.143183,
		44.721886, 47.310013, 60.772148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361710, 47.851295, 60.466499>,  <44.738529, 48.002598, 60.872375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361710, 47.851295, 60.466499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126549, 47.532265, 60.412472>,  <44.985451, 47.340847, 60.380054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126549, 47.532265, 60.412472>,  <45.361710, 47.851295, 60.466499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126549, 47.532265, 60.412472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268384, -0.034800, -0.962683,
		0.763109, -0.602218, 0.234515,
		-0.587907, -0.797573, -0.135069,
		44.950176, 47.292992, 60.371952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780682, 47.273426, 60.073532>,  <45.361710, 47.851295, 60.466499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780682, 47.273426, 60.073532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392250, 47.198502, 60.014313>,  <45.159191, 47.153545, 59.978779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392250, 47.198502, 60.014313>,  <45.780682, 47.273426, 60.073532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392250, 47.198502, 60.014313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192224, -0.245570, -0.950129,
		0.141613, -0.951110, 0.274474,
		-0.971080, -0.187311, -0.148050,
		45.100925, 47.142307, 59.969898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838406, 46.554806, 59.841412>,  <45.780682, 47.273426, 60.073532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838406, 46.554806, 59.841412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491562, 46.712639, 59.719810>,  <45.283455, 46.807339, 59.646851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491562, 46.712639, 59.719810>,  <45.838406, 46.554806, 59.841412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491562, 46.712639, 59.719810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194313, -0.294004, -0.935844,
		-0.458650, -0.870553, 0.178261,
		-0.867111, 0.394587, -0.304005,
		45.231430, 46.831013, 59.628609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651764, 46.048496, 59.370392>,  <45.838406, 46.554806, 59.841412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651764, 46.048496, 59.370392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431229, 46.374535, 59.299244>,  <45.298908, 46.570160, 59.256557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431229, 46.374535, 59.299244>,  <45.651764, 46.048496, 59.370392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431229, 46.374535, 59.299244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109557, -0.140614, -0.983984,
		-0.827054, -0.561998, -0.011774,
		-0.551342, 0.815098, -0.177866,
		45.265827, 46.619064, 59.245884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092377, 45.790493, 58.910435>,  <45.651764, 46.048496, 59.370392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092377, 45.790493, 58.910435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144005, 46.182274, 58.848454>,  <45.174980, 46.417343, 58.811264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144005, 46.182274, 58.848454>,  <45.092377, 45.790493, 58.910435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144005, 46.182274, 58.848454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064049, -0.164168, -0.984351,
		-0.989565, 0.117126, -0.083922,
		0.129070, 0.979454, -0.154953,
		45.182728, 46.476109, 58.801968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681931, 46.021698, 58.345711>,  <45.092377, 45.790493, 58.910435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681931, 46.021698, 58.345711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969555, 46.299637, 58.350479>,  <45.142128, 46.466400, 58.353340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969555, 46.299637, 58.350479>,  <44.681931, 46.021698, 58.345711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969555, 46.299637, 58.350479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003748, 0.013282, -0.999905,
		-0.694942, 0.719033, 0.006946,
		0.719057, 0.694849, 0.011925,
		45.185272, 46.508091, 58.354057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517246, 46.517185, 57.851227>,  <44.681931, 46.021698, 58.345711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517246, 46.517185, 57.851227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907112, 46.595306, 57.894825>,  <45.141033, 46.642181, 57.920982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907112, 46.595306, 57.894825>,  <44.517246, 46.517185, 57.851227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907112, 46.595306, 57.894825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079963, 0.150817, -0.985322,
		-0.208877, 0.969077, 0.131379,
		0.974667, 0.195305, 0.108993,
		45.199512, 46.653896, 57.927525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749626, 47.138027, 57.406925>,  <44.517246, 46.517185, 57.851227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749626, 47.138027, 57.406925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085709, 46.928986, 57.464813>,  <45.287357, 46.803562, 57.499546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085709, 46.928986, 57.464813>,  <44.749626, 47.138027, 57.406925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085709, 46.928986, 57.464813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244230, 0.126413, -0.961442,
		0.484156, 0.843154, 0.233848,
		0.840205, -0.522600, 0.144720,
		45.337769, 46.772205, 57.508228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258015, 47.479160, 57.027683>,  <44.749626, 47.138027, 57.406925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258015, 47.479160, 57.027683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392761, 47.105980, 57.078468>,  <45.473610, 46.882072, 57.108940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392761, 47.105980, 57.078468>,  <45.258015, 47.479160, 57.027683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392761, 47.105980, 57.078468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184543, -0.066802, -0.980551,
		0.923292, 0.353740, 0.149667,
		0.336862, -0.932955, 0.126958,
		45.493820, 46.826092, 57.116554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817394, 47.437050, 56.655567>,  <45.258015, 47.479160, 57.027683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817394, 47.437050, 56.655567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747505, 47.049965, 56.728233>,  <45.705570, 46.817715, 56.771832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747505, 47.049965, 56.728233>,  <45.817394, 47.437050, 56.655567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747505, 47.049965, 56.728233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274198, -0.225024, -0.934976,
		0.945667, -0.113552, 0.304663,
		-0.174725, -0.967714, 0.181662,
		45.695087, 46.759651, 56.782730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392273, 47.136688, 56.509792>,  <45.817394, 47.437050, 56.655567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392273, 47.136688, 56.509792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136955, 46.829994, 56.482388>,  <45.983765, 46.645977, 56.465946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136955, 46.829994, 56.482388>,  <46.392273, 47.136688, 56.509792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136955, 46.829994, 56.482388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477045, -0.324139, -0.816922,
		0.604158, -0.554120, 0.572664,
		-0.638296, -0.766737, -0.068509,
		45.945465, 46.599972, 56.461834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772400, 46.611641, 56.169464>,  <46.392273, 47.136688, 56.509792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772400, 46.611641, 56.169464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401123, 46.465149, 56.143120>,  <46.178356, 46.377254, 56.127312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401123, 46.465149, 56.143120>,  <46.772400, 46.611641, 56.169464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401123, 46.465149, 56.143120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202357, -0.348260, -0.915296,
		0.312275, -0.862895, 0.397361,
		-0.928190, -0.366233, -0.065860,
		46.122665, 46.355278, 56.123363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804260, 45.918449, 56.003727>,  <46.772400, 46.611641, 56.169464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804260, 45.918449, 56.003727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453606, 46.053482, 55.866585>,  <46.243214, 46.134502, 55.784298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453606, 46.053482, 55.866585>,  <46.804260, 45.918449, 56.003727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453606, 46.053482, 55.866585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194150, -0.403810, -0.894004,
		-0.440254, -0.850278, 0.288450,
		-0.876631, 0.337586, -0.342860,
		46.190617, 46.154755, 55.763729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487175, 45.426872, 55.641464>,  <46.804260, 45.918449, 56.003727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487175, 45.426872, 55.641464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241600, 45.702820, 55.488018>,  <46.094254, 45.868389, 55.395950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241600, 45.702820, 55.488018>,  <46.487175, 45.426872, 55.641464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241600, 45.702820, 55.488018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106717, -0.408985, -0.906279,
		-0.782109, -0.597336, 0.177470,
		-0.613936, 0.689870, -0.383617,
		46.057419, 45.909782, 55.372932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920609, 45.072605, 55.325714>,  <46.487175, 45.426872, 55.641464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920609, 45.072605, 55.325714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957283, 45.427414, 55.144699>,  <45.979286, 45.640297, 55.036091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957283, 45.427414, 55.144699>,  <45.920609, 45.072605, 55.325714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.957283, 45.427414, 55.144699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242321, -0.460664, -0.853855,
		-0.965854, -0.031372, -0.257180,
		0.091687, 0.887020, -0.452536,
		45.984791, 45.693520, 55.008938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743263, 44.914009, 54.676437>,  <45.920609, 45.072605, 55.325714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743263, 44.914009, 54.676437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910873, 45.273170, 54.622494>,  <46.011440, 45.488667, 54.590126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910873, 45.273170, 54.622494>,  <45.743263, 44.914009, 54.676437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.910873, 45.273170, 54.622494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254245, -0.258622, -0.931920,
		-0.871650, 0.356213, -0.336657,
		0.419029, 0.897901, -0.134862,
		46.036583, 45.542542, 54.582035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447460, 45.241131, 54.063251>,  <45.743263, 44.914009, 54.676437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447460, 45.241131, 54.063251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807091, 45.405777, 54.122898>,  <46.022869, 45.504566, 54.158684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807091, 45.405777, 54.122898>,  <45.447460, 45.241131, 54.063251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807091, 45.405777, 54.122898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271459, -0.256929, -0.927522,
		-0.343474, 0.874390, -0.342736,
		0.899075, 0.411618, 0.149112,
		46.076813, 45.529263, 54.167633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.594341, 45.684757, 53.509300>,  <45.447460, 45.241131, 54.063251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.594341, 45.684757, 53.509300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.959320, 45.626289, 53.662178>,  <46.178307, 45.591209, 53.753902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.959320, 45.626289, 53.662178>,  <45.594341, 45.684757, 53.509300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.959320, 45.626289, 53.662178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347811, -0.214971, -0.912587,
		0.215556, 0.965619, -0.145309,
		0.912449, -0.146173, 0.382191,
		46.233055, 45.582436, 53.776836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985947, 46.165638, 53.163601>,  <45.594341, 45.684757, 53.509300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985947, 46.165638, 53.163601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237045, 45.894958, 53.317493>,  <46.387703, 45.732552, 53.409828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237045, 45.894958, 53.317493>,  <45.985947, 46.165638, 53.163601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.237045, 45.894958, 53.317493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379595, -0.165375, -0.910252,
		0.679589, 0.717449, 0.153056,
		0.627748, -0.676696, 0.384727,
		46.425369, 45.691948, 53.432911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580231, 46.330162, 52.762909>,  <45.985947, 46.165638, 53.163601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580231, 46.330162, 52.762909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636200, 45.970070, 52.927837>,  <46.669781, 45.754013, 53.026794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636200, 45.970070, 52.927837>,  <46.580231, 46.330162, 52.762909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636200, 45.970070, 52.927837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533076, -0.282428, -0.797536,
		0.834417, 0.331388, 0.440375,
		0.139920, -0.900231, 0.412318,
		46.678177, 45.700001, 53.051533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.339035, 46.213303, 52.854027>,  <46.580231, 46.330162, 52.762909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.339035, 46.213303, 52.854027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139275, 45.870834, 52.801003>,  <47.019417, 45.665356, 52.769188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139275, 45.870834, 52.801003>,  <47.339035, 46.213303, 52.854027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.139275, 45.870834, 52.801003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457117, -0.130422, -0.879793,
		0.735962, -0.499966, 0.456502,
		-0.499404, -0.856168, -0.132558,
		46.989452, 45.613983, 52.761234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.863113, 45.723209, 52.574093>,  <47.339035, 46.213303, 52.854027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.863113, 45.723209, 52.574093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.533493, 45.512703, 52.490208>,  <47.335720, 45.386398, 52.439877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.533493, 45.512703, 52.490208>,  <47.863113, 45.723209, 52.574093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.533493, 45.512703, 52.490208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463874, -0.414311, -0.783050,
		0.325205, -0.742557, 0.585535,
		-0.824053, -0.526266, -0.209716,
		47.286278, 45.354824, 52.427292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.040615, 45.064354, 52.518723>,  <47.863113, 45.723209, 52.574093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.040615, 45.064354, 52.518723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694893, 45.061432, 52.317558>,  <47.487457, 45.059681, 52.196861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694893, 45.061432, 52.317558>,  <48.040615, 45.064354, 52.518723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.694893, 45.061432, 52.317558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448740, -0.462791, -0.764498,
		-0.227159, -0.886438, 0.403271,
		-0.864310, -0.007301, -0.502907,
		47.435600, 45.059242, 52.166687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.061462, 44.377972, 52.302631>,  <48.040615, 45.064354, 52.518723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.061462, 44.377972, 52.302631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812927, 44.591995, 52.073669>,  <47.663807, 44.720409, 51.936291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812927, 44.591995, 52.073669>,  <48.061462, 44.377972, 52.302631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.812927, 44.591995, 52.073669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425248, -0.383310, -0.819901,
		-0.658104, -0.752852, 0.010634,
		-0.621340, 0.535058, -0.572407,
		47.626526, 44.752514, 51.901947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.964607, 43.958126, 51.773785>,  <48.061462, 44.377972, 52.302631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.964607, 43.958126, 51.773785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.855774, 44.320740, 51.644684>,  <47.790474, 44.538307, 51.567223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.855774, 44.320740, 51.644684>,  <47.964607, 43.958126, 51.773785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.855774, 44.320740, 51.644684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421594, -0.189203, -0.886827,
		-0.865002, -0.377366, -0.330708,
		-0.272087, 0.906530, -0.322756,
		47.774147, 44.592697, 51.547855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.859039, 43.795536, 51.087341>,  <47.964607, 43.958126, 51.773785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.859039, 43.795536, 51.087341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.887466, 44.194405, 51.097195>,  <47.904522, 44.433723, 51.103107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.887466, 44.194405, 51.097195>,  <47.859039, 43.795536, 51.087341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.887466, 44.194405, 51.097195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361033, -0.002692, -0.932549,
		-0.929841, 0.075169, -0.360202,
		0.071068, 0.997167, 0.024636,
		47.908787, 44.493553, 51.104584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.647163, 44.027779, 50.443687>,  <47.859039, 43.795536, 51.087341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.647163, 44.027779, 50.443687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.845833, 44.340004, 50.595493>,  <47.965034, 44.527340, 50.686577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.845833, 44.340004, 50.595493>,  <47.647163, 44.027779, 50.443687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.845833, 44.340004, 50.595493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360829, 0.211989, -0.908220,
		-0.789379, 0.588028, -0.176362,
		0.496671, 0.780566, 0.379517,
		47.994835, 44.574173, 50.709347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.507950, 44.523205, 49.967640>,  <47.647163, 44.027779, 50.443687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.507950, 44.523205, 49.967640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.831230, 44.635216, 50.174866>,  <48.025200, 44.702423, 50.299202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.831230, 44.635216, 50.174866>,  <47.507950, 44.523205, 49.967640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.831230, 44.635216, 50.174866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461194, 0.246082, -0.852493,
		-0.366206, 0.927917, 0.069738,
		0.808204, 0.280025, 0.518066,
		48.073692, 44.719223, 50.330284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.656521, 45.107239, 49.639111>,  <47.507950, 44.523205, 49.967640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.656521, 45.107239, 49.639111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.996971, 44.991188, 49.814110>,  <48.201241, 44.921558, 49.919109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.996971, 44.991188, 49.814110>,  <47.656521, 45.107239, 49.639111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.996971, 44.991188, 49.814110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492879, 0.154788, -0.856219,
		0.180691, 0.944388, 0.274741,
		0.851129, -0.290125, 0.437500,
		48.252312, 44.904152, 49.945358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.211838, 45.562141, 49.496197>,  <47.656521, 45.107239, 49.639111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.211838, 45.562141, 49.496197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.454742, 45.269203, 49.619423>,  <48.600487, 45.093441, 49.693359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.454742, 45.269203, 49.619423>,  <48.211838, 45.562141, 49.496197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.454742, 45.269203, 49.619423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582517, 0.146731, -0.799465,
		0.540281, 0.664938, 0.515707,
		0.607265, -0.732343, 0.308062,
		48.636921, 45.049500, 49.711842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.896320, 45.818512, 49.374672>,  <48.211838, 45.562141, 49.496197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.896320, 45.818512, 49.374672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.924477, 45.419571, 49.382080>,  <48.941368, 45.180206, 49.386524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.924477, 45.419571, 49.382080>,  <48.896320, 45.818512, 49.374672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.924477, 45.419571, 49.382080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605244, 0.027942, -0.795549,
		0.792922, 0.067206, 0.605606,
		0.070387, -0.997348, 0.018520,
		48.945591, 45.120365, 49.387634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.600826, 45.635738, 49.466263>,  <48.896320, 45.818512, 49.374672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.600826, 45.635738, 49.466263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.417061, 45.335869, 49.275719>,  <49.306801, 45.155945, 49.161392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.417061, 45.335869, 49.275719>,  <49.600826, 45.635738, 49.466263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.417061, 45.335869, 49.275719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646660, 0.085361, -0.757987,
		0.608909, -0.656275, 0.445571,
		-0.459413, -0.749678, -0.476364,
		49.279236, 45.110966, 49.132809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.152225, 45.237667, 49.340958>,  <49.600826, 45.635738, 49.466263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.152225, 45.237667, 49.340958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.860405, 45.134102, 49.087746>,  <49.685314, 45.071964, 48.935818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.860405, 45.134102, 49.087746>,  <50.152225, 45.237667, 49.340958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.860405, 45.134102, 49.087746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603645, 0.191353, -0.773949,
		0.321514, -0.946758, 0.016687,
		-0.729550, -0.258908, -0.633028,
		49.641541, 45.056431, 48.897839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.551579, 44.850204, 48.895950>,  <50.152225, 45.237667, 49.340958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.551579, 44.850204, 48.895950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.211555, 44.935287, 48.703217>,  <50.007542, 44.986336, 48.587578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.211555, 44.935287, 48.703217>,  <50.551579, 44.850204, 48.895950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.211555, 44.935287, 48.703217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516453, 0.157074, -0.841786,
		-0.103369, -0.964409, -0.243374,
		-0.850054, 0.212705, -0.481835,
		49.956539, 44.999100, 48.558666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.451504, 44.392010, 48.363243>,  <50.551579, 44.850204, 48.895950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.451504, 44.392010, 48.363243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.231575, 44.701111, 48.236408>,  <50.099617, 44.886574, 48.160309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.231575, 44.701111, 48.236408>,  <50.451504, 44.392010, 48.363243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.231575, 44.701111, 48.236408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495810, -0.003569, -0.868424,
		-0.672211, -0.634694, -0.381177,
		-0.549823, 0.772756, -0.317087,
		50.066628, 44.932938, 48.141281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.315777, 44.227528, 47.691982>,  <50.451504, 44.392010, 48.363243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.315777, 44.227528, 47.691982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.206100, 44.612198, 47.691021>,  <50.140293, 44.842999, 47.690445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.206100, 44.612198, 47.691021>,  <50.315777, 44.227528, 47.691982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.206100, 44.612198, 47.691021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218358, 0.059825, -0.974033,
		-0.936557, -0.267596, -0.226392,
		-0.274192, 0.961672, -0.002402,
		50.123844, 44.900700, 47.690300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.888428, 44.258736, 47.175251>,  <50.315777, 44.227528, 47.691982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.888428, 44.258736, 47.175251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.033325, 44.628357, 47.224083>,  <50.120262, 44.850132, 47.253384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.033325, 44.628357, 47.224083>,  <49.888428, 44.258736, 47.175251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.033325, 44.628357, 47.224083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074991, 0.101661, -0.991989,
		-0.929063, 0.368494, -0.032470,
		0.362241, 0.924055, 0.122083,
		50.141998, 44.905575, 47.260708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.463593, 44.691322, 46.691231>,  <49.888428, 44.258736, 47.175251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.463593, 44.691322, 46.691231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.795258, 44.892769, 46.788269>,  <49.994259, 45.013638, 46.846493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.795258, 44.892769, 46.788269>,  <49.463593, 44.691322, 46.691231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.795258, 44.892769, 46.788269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195595, 0.145174, -0.969880,
		-0.523667, 0.851642, 0.021868,
		0.829165, 0.503617, 0.242600,
		50.044006, 45.043854, 46.861050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.494865, 45.293644, 46.350224>,  <49.463593, 44.691322, 46.691231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.494865, 45.293644, 46.350224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.880081, 45.235359, 46.440834>,  <50.111210, 45.200390, 46.495201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.880081, 45.235359, 46.440834>,  <49.494865, 45.293644, 46.350224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.880081, 45.235359, 46.440834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257345, 0.249557, -0.933539,
		0.079498, 0.957334, 0.277833,
		0.963044, -0.145713, 0.226526,
		50.168995, 45.191647, 46.508793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.876114, 45.703362, 46.097878>,  <49.494865, 45.293644, 46.350224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.876114, 45.703362, 46.097878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.639389, 45.489731, 45.856373>,  <48.497356, 45.361553, 45.711472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.639389, 45.489731, 45.856373>,  <48.876114, 45.703362, 46.097878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.639389, 45.489731, 45.856373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794592, 0.260521, 0.548409,
		-0.135600, 0.804296, -0.578550,
		-0.591807, -0.534075, -0.603761,
		48.461845, 45.329510, 45.675243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.403477, 46.247211, 45.821518>,  <48.876114, 45.703362, 46.097878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.403477, 46.247211, 45.821518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.228256, 45.888023, 45.804741>,  <48.123123, 45.672508, 45.794674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.228256, 45.888023, 45.804741>,  <48.403477, 46.247211, 45.821518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.228256, 45.888023, 45.804741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677416, 0.299068, 0.672061,
		-0.590949, 0.322806, -0.739307,
		-0.438048, -0.897973, -0.041940,
		48.096840, 45.618633, 45.792160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.711765, 46.391212, 45.807579>,  <48.403477, 46.247211, 45.821518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.711765, 46.391212, 45.807579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.690002, 46.001335, 45.894299>,  <47.676945, 45.767406, 45.946331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.690002, 46.001335, 45.894299>,  <47.711765, 46.391212, 45.807579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.690002, 46.001335, 45.894299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805274, 0.171211, 0.567645,
		-0.590402, -0.143703, -0.794213,
		-0.054405, -0.974698, 0.216803,
		47.673679, 45.708927, 45.959339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.054317, 46.203743, 45.654804>,  <47.711765, 46.391212, 45.807579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.054317, 46.203743, 45.654804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192184, 45.931053, 45.912937>,  <47.274906, 45.767441, 46.067818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192184, 45.931053, 45.912937>,  <47.054317, 46.203743, 45.654804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.192184, 45.931053, 45.912937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783197, 0.170147, 0.598040,
		-0.517500, -0.711549, -0.475280,
		0.344668, -0.681724, 0.645335,
		47.295586, 45.726536, 46.106537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432388, 45.936646, 45.989578>,  <47.054317, 46.203743, 45.654804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432388, 45.936646, 45.989578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714149, 45.822655, 46.249611>,  <46.883205, 45.754261, 46.405632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714149, 45.822655, 46.249611>,  <46.432388, 45.936646, 45.989578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714149, 45.822655, 46.249611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604615, 0.238889, 0.759851,
		-0.371835, -0.928290, -0.004025,
		0.704400, -0.284973, 0.650085,
		46.925468, 45.737164, 46.444637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043140, 45.633915, 46.481609>,  <46.432388, 45.936646, 45.989578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043140, 45.633915, 46.481609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393776, 45.702957, 46.661297>,  <46.604156, 45.744381, 46.769108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393776, 45.702957, 46.661297>,  <46.043140, 45.633915, 46.481609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.393776, 45.702957, 46.661297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476105, 0.175114, 0.861777,
		0.070079, -0.969301, 0.235680,
		0.876592, 0.172601, 0.449217,
		46.656754, 45.754738, 46.796062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.256382, 45.157398, 47.114079>,  <46.043140, 45.633915, 46.481609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.256382, 45.157398, 47.114079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.484947, 45.480499, 47.172070>,  <46.622086, 45.674358, 47.206863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.484947, 45.480499, 47.172070>,  <46.256382, 45.157398, 47.114079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.484947, 45.480499, 47.172070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371289, 0.096913, 0.923446,
		0.731866, -0.581501, 0.355287,
		0.571416, 0.807752, 0.144977,
		46.656372, 45.722824, 47.215561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.451317, 45.102261, 47.869270>,  <46.256382, 45.157398, 47.114079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.451317, 45.102261, 47.869270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543930, 45.473656, 47.753124>,  <46.599499, 45.696491, 47.683437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543930, 45.473656, 47.753124>,  <46.451317, 45.102261, 47.869270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543930, 45.473656, 47.753124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204743, 0.338294, 0.918498,
		0.951038, -0.153212, 0.268426,
		0.231532, 0.928485, -0.290361,
		46.613388, 45.752201, 47.666016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802593, 45.318596, 48.405407>,  <46.451317, 45.102261, 47.869270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802593, 45.318596, 48.405407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698410, 45.652969, 48.212173>,  <46.635899, 45.853596, 48.096233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698410, 45.652969, 48.212173>,  <46.802593, 45.318596, 48.405407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.698410, 45.652969, 48.212173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357096, 0.381462, 0.852625,
		0.897018, 0.394583, 0.199154,
		-0.260462, 0.835937, -0.483082,
		46.620270, 45.903751, 48.067249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.026707, 45.880791, 48.825180>,  <46.802593, 45.318596, 48.405407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.026707, 45.880791, 48.825180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750343, 46.042450, 48.585411>,  <46.584526, 46.139446, 48.441547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750343, 46.042450, 48.585411>,  <47.026707, 45.880791, 48.825180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.750343, 46.042450, 48.585411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482455, 0.359748, 0.798635,
		0.538407, 0.840980, -0.053572,
		-0.690909, 0.404145, -0.599426,
		46.543072, 46.163692, 48.405582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831295, 46.462540, 49.152412>,  <47.026707, 45.880791, 48.825180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831295, 46.462540, 49.152412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539330, 46.415932, 48.882996>,  <46.364151, 46.387966, 48.721348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539330, 46.415932, 48.882996>,  <46.831295, 46.462540, 49.152412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539330, 46.415932, 48.882996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661602, 0.368088, 0.653294,
		0.171798, 0.922461, -0.345762,
		-0.729909, -0.116522, -0.673539,
		46.320358, 46.380974, 48.680935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446266, 47.127350, 49.130829>,  <46.831295, 46.462540, 49.152412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446266, 47.127350, 49.130829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201241, 46.826294, 49.034252>,  <46.054226, 46.645660, 48.976307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201241, 46.826294, 49.034252>,  <46.446266, 47.127350, 49.130829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.201241, 46.826294, 49.034252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583828, 0.224929, 0.780097,
		-0.532827, 0.618821, -0.577197,
		-0.612569, -0.752641, -0.241437,
		46.017471, 46.600502, 48.961823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805145, 47.500523, 49.269783>,  <46.446266, 47.127350, 49.130829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805145, 47.500523, 49.269783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747017, 47.104881, 49.260410>,  <45.712139, 46.867496, 49.254787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747017, 47.104881, 49.260410>,  <45.805145, 47.500523, 49.269783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747017, 47.104881, 49.260410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630143, 0.074269, 0.772919,
		-0.762759, 0.127086, -0.634072,
		-0.145319, -0.989107, -0.023433,
		45.703423, 46.808147, 49.253380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057232, 47.422718, 49.253181>,  <45.805145, 47.500523, 49.269783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057232, 47.422718, 49.253181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203316, 47.071564, 49.377083>,  <45.290966, 46.860870, 49.451424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203316, 47.071564, 49.377083>,  <45.057232, 47.422718, 49.253181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203316, 47.071564, 49.377083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571134, 0.051462, 0.819242,
		-0.735140, -0.476100, -0.482595,
		0.365206, -0.877884, 0.309749,
		45.312878, 46.808197, 49.470009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498798, 47.159863, 49.636066>,  <45.057232, 47.422718, 49.253181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498798, 47.159863, 49.636066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811867, 46.940857, 49.754494>,  <44.999706, 46.809452, 49.825550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811867, 46.940857, 49.754494>,  <44.498798, 47.159863, 49.636066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811867, 46.940857, 49.754494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400502, -0.078869, 0.912895,
		-0.476472, -0.833072, -0.281009,
		0.782670, -0.547514, 0.296069,
		45.046669, 46.776604, 49.843315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230488, 46.590984, 50.009003>,  <44.498798, 47.159863, 49.636066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230488, 46.590984, 50.009003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595821, 46.664551, 50.154327>,  <44.815022, 46.708691, 50.241524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595821, 46.664551, 50.154327>,  <44.230488, 46.590984, 50.009003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595821, 46.664551, 50.154327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350117, -0.100929, 0.931253,
		0.207938, -0.977747, -0.027791,
		0.913334, 0.183913, 0.363312,
		44.869823, 46.719723, 50.263321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229446, 46.109207, 50.486996>,  <44.230488, 46.590984, 50.009003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229446, 46.109207, 50.486996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516884, 46.373283, 50.574425>,  <44.689346, 46.531727, 50.626881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516884, 46.373283, 50.574425>,  <44.229446, 46.109207, 50.486996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516884, 46.373283, 50.574425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247412, -0.051039, 0.967565,
		0.649930, -0.749365, 0.126662,
		0.718595, 0.660187, 0.218574,
		44.732464, 46.571339, 50.639996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626778, 45.787716, 51.046375>,  <44.229446, 46.109207, 50.486996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626778, 45.787716, 51.046375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668350, 46.185509, 51.052006>,  <44.693295, 46.424187, 51.055386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668350, 46.185509, 51.052006>,  <44.626778, 45.787716, 51.046375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668350, 46.185509, 51.052006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076775, -0.006089, 0.997030,
		0.991617, -0.104705, 0.075718,
		0.103933, 0.994485, 0.014077,
		44.699532, 46.483852, 51.056229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177998, 45.896255, 51.601776>,  <44.626778, 45.787716, 51.046375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177998, 45.896255, 51.601776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011436, 46.258705, 51.571991>,  <44.911499, 46.476177, 51.554119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011436, 46.258705, 51.571991>,  <45.177998, 45.896255, 51.601776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011436, 46.258705, 51.571991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119070, 0.026848, 0.992523,
		0.901350, 0.422154, 0.096713,
		-0.416401, 0.906126, -0.074466,
		44.886517, 46.530544, 51.549652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446247, 46.336147, 52.173542>,  <45.177998, 45.896255, 51.601776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446247, 46.336147, 52.173542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102158, 46.490349, 52.040035>,  <44.895702, 46.582870, 51.959930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102158, 46.490349, 52.040035>,  <45.446247, 46.336147, 52.173542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102158, 46.490349, 52.040035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336038, 0.063735, 0.939690,
		0.383528, 0.920502, 0.074718,
		-0.860224, 0.385505, -0.333767,
		44.844090, 46.605999, 51.939903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373047, 47.042965, 52.458706>,  <45.446247, 46.336147, 52.173542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373047, 47.042965, 52.458706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011765, 46.904350, 52.357407>,  <44.794994, 46.821182, 52.296627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011765, 46.904350, 52.357407>,  <45.373047, 47.042965, 52.458706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011765, 46.904350, 52.357407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351021, 0.256857, 0.900449,
		-0.246990, 0.902185, -0.353636,
		-0.903206, -0.346535, -0.253245,
		44.740803, 46.800388, 52.281433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880661, 47.462864, 52.839241>,  <45.373047, 47.042965, 52.458706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880661, 47.462864, 52.839241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645676, 47.156898, 52.733574>,  <44.504684, 46.973320, 52.670174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645676, 47.156898, 52.733574>,  <44.880661, 47.462864, 52.839241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645676, 47.156898, 52.733574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461707, 0.048719, 0.885693,
		-0.664613, 0.642283, -0.381789,
		-0.587466, -0.764918, -0.264167,
		44.469437, 46.927422, 52.654324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150833, 47.557896, 53.080730>,  <44.880661, 47.462864, 52.839241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150833, 47.557896, 53.080730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191086, 47.162170, 53.038521>,  <44.215237, 46.924736, 53.013195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191086, 47.162170, 53.038521>,  <44.150833, 47.557896, 53.080730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191086, 47.162170, 53.038521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509292, -0.142339, 0.848741,
		-0.854689, -0.031669, -0.518173,
		0.100635, -0.989311, -0.105526,
		44.221275, 46.865376, 53.006863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528992, 47.260834, 53.393238>,  <44.150833, 47.557896, 53.080730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528992, 47.260834, 53.393238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789886, 46.957756, 53.402084>,  <43.946423, 46.775909, 53.407391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789886, 46.957756, 53.402084>,  <43.528992, 47.260834, 53.393238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789886, 46.957756, 53.402084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420079, -0.337027, 0.842583,
		-0.630965, -0.558855, -0.538112,
		0.652240, -0.757690, 0.022111,
		43.985558, 46.730450, 53.408718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189709, 46.651409, 53.486214>,  <43.528992, 47.260834, 53.393238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189709, 46.651409, 53.486214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560524, 46.573006, 53.614071>,  <43.783012, 46.525963, 53.690784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560524, 46.573006, 53.614071>,  <43.189709, 46.651409, 53.486214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560524, 46.573006, 53.614071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374477, -0.440881, 0.815715,
		-0.018961, -0.875902, -0.482116,
		0.927042, -0.196009, 0.319646,
		43.838638, 46.514202, 53.709965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108696, 46.195946, 53.897224>,  <43.189709, 46.651409, 53.486214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108696, 46.195946, 53.897224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478813, 46.259964, 54.034760>,  <43.700882, 46.298374, 54.117279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478813, 46.259964, 54.034760>,  <43.108696, 46.195946, 53.897224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478813, 46.259964, 54.034760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226111, -0.495070, 0.838916,
		0.304485, -0.853986, -0.421896,
		0.925291, 0.160042, 0.343837,
		43.756401, 46.307976, 54.137909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242699, 45.572380, 54.250122>,  <43.108696, 46.195946, 53.897224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242699, 45.572380, 54.250122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499432, 45.850937, 54.378555>,  <43.653473, 46.018070, 54.455616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499432, 45.850937, 54.378555>,  <43.242699, 45.572380, 54.250122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499432, 45.850937, 54.378555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071868, -0.362238, 0.929311,
		0.763470, -0.619537, -0.182448,
		0.641832, 0.696389, 0.321083,
		43.691982, 46.059853, 54.474880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816620, 45.198078, 54.604076>,  <43.242699, 45.572380, 54.250122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816620, 45.198078, 54.604076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787888, 45.568985, 54.751053>,  <43.770649, 45.791531, 54.839237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787888, 45.568985, 54.751053>,  <43.816620, 45.198078, 54.604076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787888, 45.568985, 54.751053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061511, -0.371810, 0.926269,
		0.995518, 0.043937, 0.083746,
		-0.071835, 0.927268, 0.367441,
		43.766338, 45.847164, 54.861286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075935, 45.075073, 55.203197>,  <43.816620, 45.198078, 54.604076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075935, 45.075073, 55.203197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935051, 45.448189, 55.233814>,  <43.850521, 45.672058, 55.252186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935051, 45.448189, 55.233814>,  <44.075935, 45.075073, 55.203197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935051, 45.448189, 55.233814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168394, -0.143610, 0.975202,
		0.920648, 0.330584, 0.207656,
		-0.352208, 0.932786, 0.076546,
		43.829388, 45.728024, 55.256779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351036, 45.301510, 55.826733>,  <44.075935, 45.075073, 55.203197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351036, 45.301510, 55.826733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023140, 45.521652, 55.763306>,  <43.826405, 45.653736, 55.725250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023140, 45.521652, 55.763306>,  <44.351036, 45.301510, 55.826733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023140, 45.521652, 55.763306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292777, -0.164710, 0.941888,
		0.492254, 0.818524, 0.296150,
		-0.819737, 0.550354, -0.158566,
		43.777218, 45.686760, 55.715736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346043, 45.869389, 56.291821>,  <44.351036, 45.301510, 55.826733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346043, 45.869389, 56.291821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959503, 45.828720, 56.197311>,  <43.727577, 45.804317, 56.140606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959503, 45.828720, 56.197311>,  <44.346043, 45.869389, 56.291821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959503, 45.828720, 56.197311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233177, -0.041516, 0.971548,
		-0.108591, 0.993951, 0.016411,
		-0.966352, -0.101675, -0.236275,
		43.669598, 45.798218, 56.126431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932518, 46.219505, 56.768272>,  <44.346043, 45.869389, 56.291821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932518, 46.219505, 56.768272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671700, 45.958374, 56.614048>,  <43.515209, 45.801697, 56.521511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671700, 45.958374, 56.614048>,  <43.932518, 46.219505, 56.768272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671700, 45.958374, 56.614048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372608, -0.166972, 0.912844,
		-0.660305, 0.738878, -0.134374,
		-0.652043, -0.652825, -0.385564,
		43.476086, 45.762527, 56.498379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333439, 46.402718, 57.117397>,  <43.932518, 46.219505, 56.768272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333439, 46.402718, 57.117397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252796, 46.037300, 56.976097>,  <43.204411, 45.818050, 56.891315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252796, 46.037300, 56.976097>,  <43.333439, 46.402718, 57.117397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252796, 46.037300, 56.976097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451404, -0.233413, 0.861251,
		-0.869246, 0.333096, -0.365320,
		-0.201609, -0.913545, -0.353254,
		43.192314, 45.763237, 56.870121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626572, 46.281445, 57.309750>,  <43.333439, 46.402718, 57.117397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626572, 46.281445, 57.309750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761780, 45.911125, 57.242054>,  <42.842903, 45.688934, 57.201439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761780, 45.911125, 57.242054>,  <42.626572, 46.281445, 57.309750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761780, 45.911125, 57.242054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352383, -0.291237, 0.889386,
		-0.872681, -0.240991, -0.424679,
		0.338016, -0.925799, -0.169236,
		42.863186, 45.633385, 57.191284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026737, 45.826244, 57.350658>,  <42.626572, 46.281445, 57.309750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026737, 45.826244, 57.350658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358742, 45.608475, 57.399128>,  <42.557945, 45.477814, 57.428211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358742, 45.608475, 57.399128>,  <42.026737, 45.826244, 57.350658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358742, 45.608475, 57.399128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350931, -0.340896, 0.872145,
		-0.433508, -0.766415, -0.474003,
		0.830011, -0.544424, 0.121177,
		42.607746, 45.445148, 57.435482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784454, 45.233932, 57.520203>,  <42.026737, 45.826244, 57.350658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784454, 45.233932, 57.520203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158768, 45.245346, 57.660770>,  <42.383354, 45.252193, 57.745113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158768, 45.245346, 57.660770>,  <41.784454, 45.233932, 57.520203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158768, 45.245346, 57.660770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340915, -0.181025, 0.922500,
		0.089937, -0.983064, -0.159673,
		0.935782, 0.028532, 0.351422,
		42.439503, 45.253906, 57.766197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682674, 44.628780, 57.989407>,  <41.784454, 45.233932, 57.520203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682674, 44.628780, 57.989407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018452, 44.814476, 58.102417>,  <42.219917, 44.925892, 58.170223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018452, 44.814476, 58.102417>,  <41.682674, 44.628780, 57.989407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018452, 44.814476, 58.102417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187553, -0.240451, 0.952369,
		0.510057, -0.852448, -0.114776,
		0.839444, 0.464236, 0.282523,
		42.270287, 44.953747, 58.187176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949306, 44.225693, 58.561047>,  <41.682674, 44.628780, 57.989407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949306, 44.225693, 58.561047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097134, 44.597092, 58.575508>,  <42.185829, 44.819931, 58.584183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097134, 44.597092, 58.575508>,  <41.949306, 44.225693, 58.561047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097134, 44.597092, 58.575508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162959, 0.026462, 0.986278,
		0.914801, -0.370391, 0.161087,
		0.369571, 0.928499, 0.036151,
		42.208004, 44.875641, 58.586353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681297, 43.602501, 58.487141>,  <41.949306, 44.225693, 58.561047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681297, 43.602501, 58.487141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314350, 43.489311, 58.375160>,  <41.094181, 43.421398, 58.307972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314350, 43.489311, 58.375160>,  <41.681297, 43.602501, 58.487141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314350, 43.489311, 58.375160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325740, -0.129463, -0.936554,
		0.228776, -0.950350, 0.210940,
		-0.917363, -0.282973, -0.279949,
		41.039143, 43.404419, 58.291176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725830, 42.973289, 58.091599>,  <41.681297, 43.602501, 58.487141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725830, 42.973289, 58.091599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370724, 43.101746, 57.959698>,  <41.157661, 43.178822, 57.880558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370724, 43.101746, 57.959698>,  <41.725830, 42.973289, 58.091599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370724, 43.101746, 57.959698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295031, -0.152886, -0.943177,
		-0.353311, -0.934608, 0.040979,
		-0.887766, 0.321145, -0.329754,
		41.104393, 43.198090, 57.860771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490139, 42.507763, 57.606800>,  <41.725830, 42.973289, 58.091599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490139, 42.507763, 57.606800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248703, 42.821365, 57.548817>,  <41.103840, 43.009525, 57.514027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248703, 42.821365, 57.548817>,  <41.490139, 42.507763, 57.606800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248703, 42.821365, 57.548817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160456, -0.058647, -0.985299,
		-0.780983, -0.617975, -0.090400,
		-0.603588, 0.784007, -0.144960,
		41.067627, 43.056568, 57.505329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211887, 42.353214, 56.951336>,  <41.490139, 42.507763, 57.606800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211887, 42.353214, 56.951336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162045, 42.746300, 57.006096>,  <41.132137, 42.982151, 57.038952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162045, 42.746300, 57.006096>,  <41.211887, 42.353214, 56.951336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162045, 42.746300, 57.006096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161894, 0.156264, -0.974357,
		-0.978909, -0.099250, -0.178567,
		-0.124609, 0.982716, 0.136901,
		41.124660, 43.041115, 57.047165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795216, 42.621201, 56.433090>,  <41.211887, 42.353214, 56.951336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795216, 42.621201, 56.433090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997437, 42.949829, 56.538490>,  <41.118771, 43.147007, 56.601730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997437, 42.949829, 56.538490>,  <40.795216, 42.621201, 56.433090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997437, 42.949829, 56.538490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260488, 0.145813, -0.954403,
		-0.822534, 0.551141, -0.140294,
		0.505553, 0.821573, 0.263502,
		41.149101, 43.196301, 56.617542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506996, 43.215542, 56.108093>,  <40.795216, 42.621201, 56.433090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506996, 43.215542, 56.108093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878342, 43.323547, 56.210251>,  <41.101151, 43.388351, 56.271545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878342, 43.323547, 56.210251>,  <40.506996, 43.215542, 56.108093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878342, 43.323547, 56.210251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220524, 0.152952, -0.963314,
		-0.299173, 0.950630, 0.082451,
		0.928367, 0.270015, 0.255396,
		41.156853, 43.404552, 56.286869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583851, 43.980751, 55.940361>,  <40.506996, 43.215542, 56.108093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583851, 43.980751, 55.940361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952892, 43.826584, 55.946808>,  <41.174316, 43.734085, 55.950676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952892, 43.826584, 55.946808>,  <40.583851, 43.980751, 55.940361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952892, 43.826584, 55.946808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171249, 0.371776, -0.912391,
		0.345660, 0.844533, 0.409003,
		0.922601, -0.385419, 0.016118,
		41.229671, 43.710957, 55.951645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923023, 44.480598, 55.637512>,  <40.583851, 43.980751, 55.940361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923023, 44.480598, 55.637512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197468, 44.189957, 55.623131>,  <41.362133, 44.015572, 55.614502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197468, 44.189957, 55.623131>,  <40.923023, 44.480598, 55.637512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197468, 44.189957, 55.623131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292761, 0.321010, -0.900690,
		0.665989, 0.607449, 0.432972,
		0.686112, -0.726607, -0.035952,
		41.403301, 43.971973, 55.612347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467686, 44.842785, 55.363125>,  <40.923023, 44.480598, 55.637512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467686, 44.842785, 55.363125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582932, 44.461296, 55.328690>,  <41.652077, 44.232403, 55.308029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582932, 44.461296, 55.328690>,  <41.467686, 44.842785, 55.363125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582932, 44.461296, 55.328690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445502, 0.213077, -0.869555,
		0.847656, 0.212174, 0.486274,
		0.288110, -0.953719, -0.086092,
		41.669365, 44.175179, 55.302860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191994, 44.873486, 55.038357>,  <41.467686, 44.842785, 55.363125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191994, 44.873486, 55.038357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041756, 44.513039, 54.951710>,  <41.951614, 44.296772, 54.899723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041756, 44.513039, 54.951710>,  <42.191994, 44.873486, 55.038357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041756, 44.513039, 54.951710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333639, 0.086589, -0.938716,
		0.864647, -0.424847, 0.268125,
		-0.375594, -0.901114, -0.216614,
		41.929077, 44.242702, 54.886726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710651, 44.559963, 54.595325>,  <42.191994, 44.873486, 55.038357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710651, 44.559963, 54.595325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378994, 44.348419, 54.522842>,  <42.180000, 44.221493, 54.479355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378994, 44.348419, 54.522842>,  <42.710651, 44.559963, 54.595325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378994, 44.348419, 54.522842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183258, 0.049099, -0.981838,
		0.528150, -0.847289, 0.056207,
		-0.829141, -0.528858, -0.181205,
		42.130253, 44.189762, 54.468479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819778, 43.916695, 54.120682>,  <42.710651, 44.559963, 54.595325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819778, 43.916695, 54.120682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432598, 44.008331, 54.079521>,  <42.200291, 44.063313, 54.054825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432598, 44.008331, 54.079521>,  <42.819778, 43.916695, 54.120682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432598, 44.008331, 54.079521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089731, -0.067210, -0.993696,
		-0.234563, -0.971082, 0.044500,
		-0.967951, 0.229091, -0.102901,
		42.142212, 44.077057, 54.048653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527729, 43.479179, 53.632267>,  <42.819778, 43.916695, 54.120682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527729, 43.479179, 53.632267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261139, 43.777390, 53.631599>,  <42.101185, 43.956314, 53.631199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261139, 43.777390, 53.631599>,  <42.527729, 43.479179, 53.632267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261139, 43.777390, 53.631599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122471, 0.107277, -0.986657,
		-0.735396, -0.657790, -0.162802,
		-0.666478, 0.745523, -0.001669,
		42.061195, 44.001045, 53.631100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171970, 43.399803, 53.029312>,  <42.527729, 43.479179, 53.632267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171970, 43.399803, 53.029312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100571, 43.781357, 53.125851>,  <42.057732, 44.010288, 53.183773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100571, 43.781357, 53.125851>,  <42.171970, 43.399803, 53.029312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100571, 43.781357, 53.125851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184510, 0.273388, -0.944042,
		-0.966486, -0.123975, -0.224799,
		-0.178495, 0.953881, 0.241351,
		42.047024, 44.067520, 53.198257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835522, 43.629990, 52.463001>,  <42.171970, 43.399803, 53.029312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835522, 43.629990, 52.463001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967861, 43.951294, 52.661118>,  <42.047264, 44.144077, 52.779987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967861, 43.951294, 52.661118>,  <41.835522, 43.629990, 52.463001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967861, 43.951294, 52.661118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197741, 0.454183, -0.868687,
		-0.922734, 0.385341, -0.008573,
		0.330847, 0.803262, 0.495288,
		42.067116, 44.192272, 52.809704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517685, 44.240753, 52.066418>,  <41.835522, 43.629990, 52.463001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517685, 44.240753, 52.066418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806786, 44.403778, 52.289673>,  <41.980247, 44.501595, 52.423626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806786, 44.403778, 52.289673>,  <41.517685, 44.240753, 52.066418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806786, 44.403778, 52.289673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401045, 0.410376, -0.818997,
		-0.562842, 0.815770, 0.133148,
		0.722754, 0.407567, 0.558137,
		42.023613, 44.526047, 52.457115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529251, 44.819241, 51.852024>,  <41.517685, 44.240753, 52.066418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529251, 44.819241, 51.852024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893616, 44.815628, 52.017025>,  <42.112236, 44.813461, 52.116028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893616, 44.815628, 52.017025>,  <41.529251, 44.819241, 51.852024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893616, 44.815628, 52.017025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370698, 0.456919, -0.808584,
		-0.181180, 0.889462, 0.419560,
		0.910910, -0.009030, 0.412506,
		42.166889, 44.812920, 52.140778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805435, 45.510418, 51.765015>,  <41.529251, 44.819241, 51.852024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805435, 45.510418, 51.765015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114452, 45.262009, 51.817932>,  <42.299862, 45.112961, 51.849682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114452, 45.262009, 51.817932>,  <41.805435, 45.510418, 51.765015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114452, 45.262009, 51.817932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520704, 0.500386, -0.691723,
		0.363379, 0.603274, 0.709941,
		0.772543, -0.621027, 0.132297,
		42.346214, 45.075699, 51.857620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350544, 45.891308, 51.777382>,  <41.805435, 45.510418, 51.765015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350544, 45.891308, 51.777382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510574, 45.539467, 51.674435>,  <42.606590, 45.328362, 51.612667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510574, 45.539467, 51.674435>,  <42.350544, 45.891308, 51.777382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510574, 45.539467, 51.674435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434571, 0.429314, -0.791731,
		0.806902, 0.204905, 0.554007,
		0.400072, -0.879604, -0.257369,
		42.630596, 45.275585, 51.597225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060356, 46.034683, 51.475433>,  <42.350544, 45.891308, 51.777382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060356, 46.034683, 51.475433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978462, 45.660088, 51.361534>,  <42.929325, 45.435329, 51.293194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978462, 45.660088, 51.361534>,  <43.060356, 46.034683, 51.475433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978462, 45.660088, 51.361534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586937, 0.115351, -0.801373,
		0.783319, -0.331196, 0.526042,
		-0.204732, -0.936485, -0.284748,
		42.917042, 45.379143, 51.276112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719822, 45.809921, 51.269951>,  <43.060356, 46.034683, 51.475433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719822, 45.809921, 51.269951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464306, 45.561470, 51.088333>,  <43.310997, 45.412399, 50.979362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464306, 45.561470, 51.088333>,  <43.719822, 45.809921, 51.269951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464306, 45.561470, 51.088333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594977, -0.024635, -0.803365,
		0.487804, -0.783325, 0.385291,
		-0.638788, -0.621124, -0.454043,
		43.272671, 45.375134, 50.952122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114491, 45.278553, 51.082821>,  <43.719822, 45.809921, 51.269951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114491, 45.278553, 51.082821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800362, 45.290115, 50.835457>,  <43.611885, 45.297054, 50.687038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800362, 45.290115, 50.835457>,  <44.114491, 45.278553, 51.082821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800362, 45.290115, 50.835457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528835, -0.488033, -0.694375,
		-0.321877, -0.872347, 0.367976,
		-0.785321, 0.028905, -0.618414,
		43.564766, 45.298786, 50.649933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272408, 44.718796, 50.631580>,  <44.114491, 45.278553, 51.082821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272408, 44.718796, 50.631580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988380, 44.915260, 50.429764>,  <43.817963, 45.033138, 50.308674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988380, 44.915260, 50.429764>,  <44.272408, 44.718796, 50.631580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988380, 44.915260, 50.429764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376163, -0.341121, -0.861474,
		-0.595230, -0.801498, 0.057465,
		-0.710072, 0.491159, -0.504540,
		43.775360, 45.062607, 50.278400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042480, 44.269623, 50.095448>,  <44.272408, 44.718796, 50.631580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042480, 44.269623, 50.095448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895988, 44.612579, 49.950806>,  <43.808094, 44.818352, 49.864021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895988, 44.612579, 49.950806>,  <44.042480, 44.269623, 50.095448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895988, 44.612579, 49.950806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341574, -0.237606, -0.909324,
		-0.865566, -0.456534, -0.205844,
		-0.366228, 0.857391, -0.361604,
		43.786121, 44.869797, 49.842323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601143, 44.103058, 49.470615>,  <44.042480, 44.269623, 50.095448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601143, 44.103058, 49.470615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709297, 44.487122, 49.442352>,  <43.774189, 44.717560, 49.425392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709297, 44.487122, 49.442352>,  <43.601143, 44.103058, 49.470615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709297, 44.487122, 49.442352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388140, -0.175878, -0.904663,
		-0.881046, 0.217178, -0.420229,
		0.270381, 0.960157, -0.070661,
		43.790413, 44.775169, 49.421154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284012, 44.385204, 48.853569>,  <43.601143, 44.103058, 49.470615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284012, 44.385204, 48.853569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579720, 44.631607, 48.962391>,  <43.757145, 44.779449, 49.027683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579720, 44.631607, 48.962391>,  <43.284012, 44.385204, 48.853569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579720, 44.631607, 48.962391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486142, -0.208642, -0.848608,
		-0.465985, 0.759609, -0.453709,
		0.739273, 0.616005, 0.272054,
		43.801502, 44.816410, 49.044006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297890, 44.997036, 48.330875>,  <43.284012, 44.385204, 48.853569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297890, 44.997036, 48.330875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657589, 44.936485, 48.495041>,  <43.873409, 44.900154, 48.593540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657589, 44.936485, 48.495041>,  <43.297890, 44.997036, 48.330875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657589, 44.936485, 48.495041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396654, -0.113429, -0.910933,
		0.184451, 0.981946, -0.041955,
		0.899246, -0.151381, 0.410415,
		43.927364, 44.891071, 48.618164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768444, 45.436581, 47.998169>,  <43.297890, 44.997036, 48.330875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768444, 45.436581, 47.998169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010735, 45.166306, 48.166237>,  <44.156109, 45.004139, 48.267078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010735, 45.166306, 48.166237>,  <43.768444, 45.436581, 47.998169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010735, 45.166306, 48.166237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395465, -0.202564, -0.895866,
		0.690436, 0.708812, 0.144512,
		0.605727, -0.675687, 0.420168,
		44.192451, 44.963600, 48.292286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347172, 45.470394, 47.603584>,  <43.768444, 45.436581, 47.998169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347172, 45.470394, 47.603584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375584, 45.112602, 47.780159>,  <44.392632, 44.897926, 47.886105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375584, 45.112602, 47.780159>,  <44.347172, 45.470394, 47.603584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375584, 45.112602, 47.780159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528544, -0.341567, -0.777157,
		0.845929, 0.288518, 0.448510,
		0.071027, -0.894477, 0.441436,
		44.396893, 44.844257, 47.912590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987061, 45.238152, 47.376083>,  <44.347172, 45.470394, 47.603584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987061, 45.238152, 47.376083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799026, 44.917358, 47.523514>,  <44.686207, 44.724884, 47.611973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799026, 44.917358, 47.523514>,  <44.987061, 45.238152, 47.376083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799026, 44.917358, 47.523514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468500, -0.580633, -0.665863,
		0.748017, -0.140332, 0.648673,
		-0.470083, -0.801980, 0.368579,
		44.658001, 44.676765, 47.634087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510036, 44.802471, 47.542255>,  <44.987061, 45.238152, 47.376083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510036, 44.802471, 47.542255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163296, 44.619743, 47.462379>,  <44.955250, 44.510105, 47.414452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163296, 44.619743, 47.462379>,  <45.510036, 44.802471, 47.542255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163296, 44.619743, 47.462379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430795, -0.484715, -0.761227,
		0.250949, -0.745900, 0.616974,
		-0.866856, -0.456819, -0.199692,
		44.903240, 44.482697, 47.402473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758816, 44.176262, 47.191925>,  <45.510036, 44.802471, 47.542255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758816, 44.176262, 47.191925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363075, 44.145241, 47.142666>,  <45.125629, 44.126629, 47.113110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363075, 44.145241, 47.142666>,  <45.758816, 44.176262, 47.191925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363075, 44.145241, 47.142666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145298, -0.574079, -0.805805,
		-0.008200, -0.815119, 0.579236,
		-0.989354, -0.077554, -0.123143,
		45.066269, 44.121975, 47.105724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636505, 43.420250, 46.973057>,  <45.758816, 44.176262, 47.191925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636505, 43.420250, 46.973057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318478, 43.631096, 46.853046>,  <45.127663, 43.757603, 46.781040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318478, 43.631096, 46.853046>,  <45.636505, 43.420250, 46.973057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318478, 43.631096, 46.853046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055893, -0.556237, -0.829142,
		-0.603945, -0.642451, 0.471706,
		-0.795064, 0.527121, -0.300028,
		45.079960, 43.789230, 46.763039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206371, 42.910717, 46.549152>,  <45.636505, 43.420250, 46.973057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206371, 42.910717, 46.549152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075687, 43.276245, 46.452656>,  <44.997276, 43.495560, 46.394756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075687, 43.276245, 46.452656>,  <45.206371, 42.910717, 46.549152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075687, 43.276245, 46.452656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062784, -0.233702, -0.970279,
		-0.943038, -0.332143, 0.018979,
		-0.326707, 0.913818, -0.241244,
		44.977676, 43.550392, 46.380283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557285, 42.758606, 46.190472>,  <45.206371, 42.910717, 46.549152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557285, 42.758606, 46.190472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723106, 43.115509, 46.118881>,  <44.822598, 43.329651, 46.075928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723106, 43.115509, 46.118881>,  <44.557285, 42.758606, 46.190472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723106, 43.115509, 46.118881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181349, -0.111726, -0.977051,
		-0.891774, 0.437493, 0.115493,
		0.414550, 0.892254, -0.178973,
		44.847473, 43.383186, 46.065189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104889, 43.021797, 45.671177>,  <44.557285, 42.758606, 46.190472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104889, 43.021797, 45.671177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443275, 43.226868, 45.612518>,  <44.646309, 43.349911, 45.577324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443275, 43.226868, 45.612518>,  <44.104889, 43.021797, 45.671177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443275, 43.226868, 45.612518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042152, -0.209856, -0.976823,
		-0.531567, 0.832541, -0.155921,
		0.845967, 0.512674, -0.146646,
		44.697067, 43.380669, 45.568523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028187, 43.445179, 45.048569>,  <44.104889, 43.021797, 45.671177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028187, 43.445179, 45.048569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421196, 43.391190, 45.099850>,  <44.657001, 43.358795, 45.130619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421196, 43.391190, 45.099850>,  <44.028187, 43.445179, 45.048569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421196, 43.391190, 45.099850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127206, -0.016006, -0.991747,
		0.135914, 0.990720, 0.001443,
		0.982520, -0.134976, 0.128201,
		44.715954, 43.350697, 45.138309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385757, 43.860016, 44.577728>,  <44.028187, 43.445179, 45.048569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385757, 43.860016, 44.577728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665512, 43.592247, 44.677914>,  <44.833366, 43.431587, 44.738026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665512, 43.592247, 44.677914>,  <44.385757, 43.860016, 44.577728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665512, 43.592247, 44.677914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190991, -0.162647, -0.968023,
		0.688754, 0.724858, 0.014101,
		0.699385, -0.669423, 0.250465,
		44.875328, 43.391418, 44.753052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916718, 44.009693, 44.166519>,  <44.385757, 43.860016, 44.577728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916718, 44.009693, 44.166519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062119, 43.658676, 44.291599>,  <45.149361, 43.448067, 44.366646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062119, 43.658676, 44.291599>,  <44.916718, 44.009693, 44.166519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062119, 43.658676, 44.291599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278703, -0.217845, -0.935344,
		0.888927, 0.427148, 0.165388,
		0.363502, -0.877547, 0.312696,
		45.171169, 43.395412, 44.385406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672844, 44.017345, 44.063690>,  <44.916718, 44.009693, 44.166519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672844, 44.017345, 44.063690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527489, 43.644722, 44.059029>,  <45.440273, 43.421146, 44.056232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527489, 43.644722, 44.059029>,  <45.672844, 44.017345, 44.063690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527489, 43.644722, 44.059029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480904, -0.176856, -0.858751,
		0.797921, -0.317666, 0.512260,
		-0.363393, -0.931563, -0.011650,
		45.418472, 43.365253, 44.055534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<44.979794, 39.479828, 54.072575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.289955, 39.732330, 54.079182>,  <45.476051, 39.883831, 54.083145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.289955, 39.732330, 54.079182>,  <44.979794, 39.479828, 54.072575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289955, 39.732330, 54.079182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058281, -0.045490, -0.997263,
		-0.628775, 0.774241, -0.072063,
		0.775400, 0.631254, 0.016520,
		45.522575, 39.921707, 54.084137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891575, 39.948906, 53.393169>,  <44.979794, 39.479828, 54.072575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891575, 39.948906, 53.393169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.262886, 39.981323, 53.538349>,  <45.485672, 40.000774, 53.625458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.262886, 39.981323, 53.538349>,  <44.891575, 39.948906, 53.393169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262886, 39.981323, 53.538349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360489, 0.043678, -0.931740,
		-0.091367, 0.995753, 0.011329,
		0.928278, 0.081046, 0.362948,
		45.541370, 40.005638, 53.647232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168991, 40.444569, 52.931587>,  <44.891575, 39.948906, 53.393169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168991, 40.444569, 52.931587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.487755, 40.277832, 53.106487>,  <45.679012, 40.177788, 53.211426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.487755, 40.277832, 53.106487>,  <45.168991, 40.444569, 52.931587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487755, 40.277832, 53.106487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524738, 0.119013, -0.842903,
		0.299321, 0.901154, 0.313575,
		0.796905, -0.416843, 0.437247,
		45.726826, 40.152779, 53.237659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814377, 40.900005, 52.957661>,  <45.168991, 40.444569, 52.931587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814377, 40.900005, 52.957661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.881523, 40.507111, 52.924118>,  <45.921810, 40.271374, 52.903992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.881523, 40.507111, 52.924118>,  <45.814377, 40.900005, 52.957661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.881523, 40.507111, 52.924118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339503, 0.137465, -0.930506,
		0.925504, 0.127730, 0.356548,
		0.167866, -0.982237, -0.083860,
		45.931885, 40.212440, 52.898960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424900, 40.922714, 52.555355>,  <45.814377, 40.900005, 52.957661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424900, 40.922714, 52.555355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.291847, 40.546738, 52.524689>,  <46.212017, 40.321152, 52.506290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.291847, 40.546738, 52.524689>,  <46.424900, 40.922714, 52.555355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.291847, 40.546738, 52.524689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443325, -0.084099, -0.892407,
		0.832359, -0.330826, 0.444671,
		-0.332628, -0.939937, -0.076663,
		46.192059, 40.264755, 52.501690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.007423, 40.470146, 52.318783>,  <46.424900, 40.922714, 52.555355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.007423, 40.470146, 52.318783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.674339, 40.263649, 52.238693>,  <46.474491, 40.139751, 52.190639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.674339, 40.263649, 52.238693>,  <47.007423, 40.470146, 52.318783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.674339, 40.263649, 52.238693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302570, -0.121391, -0.945366,
		0.463734, -0.847795, 0.257283,
		-0.832708, -0.516244, -0.200224,
		46.424526, 40.108776, 52.178627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.325409, 39.787479, 52.043190>,  <47.007423, 40.470146, 52.318783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.325409, 39.787479, 52.043190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.950424, 39.816704, 51.907059>,  <46.725433, 39.834236, 51.825378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.950424, 39.816704, 51.907059>,  <47.325409, 39.787479, 52.043190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.950424, 39.816704, 51.907059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303411, -0.307680, -0.901818,
		-0.170597, -0.948681, 0.266272,
		-0.937464, 0.073057, -0.340329,
		46.669186, 39.838623, 51.804958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.283085, 39.296936, 51.541157>,  <47.325409, 39.787479, 52.043190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.283085, 39.296936, 51.541157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.997353, 39.553131, 51.428375>,  <46.825912, 39.706848, 51.360706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.997353, 39.553131, 51.428375>,  <47.283085, 39.296936, 51.541157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.997353, 39.553131, 51.428375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323345, -0.055235, -0.944668,
		-0.620625, -0.765977, -0.167644,
		-0.714334, 0.640491, -0.281955,
		46.783054, 39.745277, 51.343788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.009991, 39.010262, 50.829708>,  <47.283085, 39.296936, 51.541157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.009991, 39.010262, 50.829708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.892647, 39.392303, 50.846291>,  <46.822239, 39.621529, 50.856239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.892647, 39.392303, 50.846291>,  <47.009991, 39.010262, 50.829708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892647, 39.392303, 50.846291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186065, 0.099582, -0.977478,
		-0.937720, -0.279042, -0.206924,
		-0.293363, 0.955102, 0.041460,
		46.804638, 39.678833, 50.858730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487942, 39.124454, 50.277790>,  <47.009991, 39.010262, 50.829708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487942, 39.124454, 50.277790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.612953, 39.500275, 50.333740>,  <46.687962, 39.725769, 50.367310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.612953, 39.500275, 50.333740>,  <46.487942, 39.124454, 50.277790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.612953, 39.500275, 50.333740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032828, 0.136484, -0.990098,
		-0.949341, 0.314027, 0.011812,
		0.312530, 0.939553, 0.139878,
		46.706711, 39.782139, 50.375702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131268, 39.553005, 49.768749>,  <46.487942, 39.124454, 50.277790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131268, 39.553005, 49.768749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.450607, 39.763802, 49.885307>,  <46.642212, 39.890278, 49.955242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.450607, 39.763802, 49.885307>,  <46.131268, 39.553005, 49.768749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450607, 39.763802, 49.885307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053958, 0.419351, -0.906219,
		-0.599769, 0.739205, 0.306354,
		0.798352, 0.526992, 0.291400,
		46.690113, 39.921898, 49.972729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989010, 40.071415, 49.311798>,  <46.131268, 39.553005, 49.768749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989010, 40.071415, 49.311798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.344162, 40.204666, 49.438728>,  <46.557255, 40.284618, 49.514885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.344162, 40.204666, 49.438728>,  <45.989010, 40.071415, 49.311798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344162, 40.204666, 49.438728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171414, 0.400536, -0.900104,
		-0.426950, 0.853579, 0.298526,
		0.887880, 0.333128, 0.317324,
		46.610527, 40.304604, 49.533924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.059593, 40.766788, 49.274109>,  <45.989010, 40.071415, 49.311798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.059593, 40.766788, 49.274109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.432053, 40.625847, 49.236584>,  <46.655529, 40.541283, 49.214069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.432053, 40.625847, 49.236584>,  <46.059593, 40.766788, 49.274109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432053, 40.625847, 49.236584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110332, 0.517489, -0.848547,
		0.347539, 0.779775, 0.520737,
		0.931152, -0.352357, -0.093813,
		46.711399, 40.520142, 49.208439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.410934, 41.263145, 48.932953>,  <46.059593, 40.766788, 49.274109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.410934, 41.263145, 48.932953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.654243, 40.953354, 48.863464>,  <46.800228, 40.767479, 48.821770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.654243, 40.953354, 48.863464>,  <46.410934, 41.263145, 48.932953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.654243, 40.953354, 48.863464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076581, 0.275113, -0.958357,
		0.790022, 0.569642, 0.226655,
		0.608276, -0.774481, -0.173721,
		46.836727, 40.721008, 48.811348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.964794, 41.521881, 48.526283>,  <46.410934, 41.263145, 48.932953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.964794, 41.521881, 48.526283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.941078, 41.126297, 48.471970>,  <46.926849, 40.888947, 48.439381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.941078, 41.126297, 48.471970>,  <46.964794, 41.521881, 48.526283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941078, 41.126297, 48.471970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096151, 0.141052, -0.985322,
		0.993599, -0.045364, -0.103453,
		-0.059290, -0.988962, -0.135787,
		46.923290, 40.829609, 48.431232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.519459, 41.428455, 48.225510>,  <46.964794, 41.521881, 48.526283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.519459, 41.428455, 48.225510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.295326, 41.114143, 48.120754>,  <47.160847, 40.925556, 48.057899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.295326, 41.114143, 48.120754>,  <47.519459, 41.428455, 48.225510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.295326, 41.114143, 48.120754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207881, 0.172647, -0.962797,
		0.801757, -0.593927, 0.066608,
		-0.560332, -0.785776, -0.261887,
		47.127228, 40.878410, 48.042187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.907417, 40.945290, 47.774071>,  <47.519459, 41.428455, 48.225510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.907417, 40.945290, 47.774071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.522835, 40.866905, 47.696911>,  <47.292088, 40.819874, 47.650616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.522835, 40.866905, 47.696911>,  <47.907417, 40.945290, 47.774071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.522835, 40.866905, 47.696911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181931, 0.072689, -0.980621,
		0.206184, -0.977914, -0.034236,
		-0.961452, -0.195960, -0.192900,
		47.234398, 40.808117, 47.639042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.911793, 40.560997, 47.187431>,  <47.907417, 40.945290, 47.774071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.911793, 40.560997, 47.187431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.542084, 40.711121, 47.215324>,  <47.320259, 40.801197, 47.232059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.542084, 40.711121, 47.215324>,  <47.911793, 40.560997, 47.187431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.542084, 40.711121, 47.215324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051231, 0.059058, -0.996939,
		-0.378281, -0.925016, -0.035358,
		-0.924272, 0.375311, 0.069730,
		47.264801, 40.823715, 47.236244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493988, 40.067673, 46.764610>,  <47.911793, 40.560997, 47.187431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493988, 40.067673, 46.764610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.290070, 40.407784, 46.816967>,  <47.167717, 40.611851, 46.848381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.290070, 40.407784, 46.816967>,  <47.493988, 40.067673, 46.764610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.290070, 40.407784, 46.816967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081798, 0.103554, -0.991255,
		-0.856395, -0.516048, 0.016759,
		-0.509800, 0.850277, 0.130895,
		47.137131, 40.662865, 46.856236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.803867, 40.030033, 46.345085>,  <47.493988, 40.067673, 46.764610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.803867, 40.030033, 46.345085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.879280, 40.419304, 46.397827>,  <46.924530, 40.652866, 46.429474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.879280, 40.419304, 46.397827>,  <46.803867, 40.030033, 46.345085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879280, 40.419304, 46.397827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154040, 0.161909, -0.974709,
		-0.969911, 0.163456, 0.180433,
		0.188535, 0.973174, 0.131858,
		46.935841, 40.711258, 46.437386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408119, 40.284580, 45.841545>,  <46.803867, 40.030033, 46.345085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408119, 40.284580, 45.841545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.652718, 40.587624, 45.932854>,  <46.799477, 40.769451, 45.987637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.652718, 40.587624, 45.932854>,  <46.408119, 40.284580, 45.841545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652718, 40.587624, 45.932854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017916, 0.301675, -0.953242,
		-0.791046, 0.578812, 0.198046,
		0.611494, 0.757607, 0.228269,
		46.836166, 40.814907, 46.001335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.105713, 40.870304, 45.526382>,  <46.408119, 40.284580, 45.841545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.105713, 40.870304, 45.526382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.487282, 40.959511, 45.606682>,  <46.716221, 41.013035, 45.654861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.487282, 40.959511, 45.606682>,  <46.105713, 40.870304, 45.526382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.487282, 40.959511, 45.606682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176012, 0.125931, -0.976300,
		-0.243015, 0.966645, 0.080874,
		0.953920, 0.223020, 0.200744,
		46.773457, 41.026417, 45.666904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529205, 41.235447, 45.171272>,  <46.105713, 40.870304, 45.526382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529205, 41.235447, 45.171272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.150745, 41.144318, 45.079285>,  <44.923668, 41.089638, 45.024090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.150745, 41.144318, 45.079285>,  <45.529205, 41.235447, 45.171272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150745, 41.144318, 45.079285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232009, -0.018185, 0.972544,
		-0.225754, 0.973532, -0.035652,
		-0.946154, -0.227827, -0.229973,
		44.866898, 41.075970, 45.010292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173164, 41.384205, 45.693417>,  <45.529205, 41.235447, 45.171272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.173164, 41.384205, 45.693417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.863106, 41.176865, 45.548935>,  <44.677071, 41.052460, 45.462246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.863106, 41.176865, 45.548935>,  <45.173164, 41.384205, 45.693417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863106, 41.176865, 45.548935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264259, -0.253301, 0.930594,
		-0.573865, 0.816795, 0.059367,
		-0.775143, -0.518347, -0.361206,
		44.630562, 41.021362, 45.440575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492603, 41.636242, 45.958641>,  <45.173164, 41.384205, 45.693417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492603, 41.636242, 45.958641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.489708, 41.244453, 45.878067>,  <44.487972, 41.009380, 45.829723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.489708, 41.244453, 45.878067>,  <44.492603, 41.636242, 45.958641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489708, 41.244453, 45.878067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372805, -0.184277, 0.909428,
		-0.927882, 0.081679, -0.363819,
		-0.007238, -0.979475, -0.201438,
		44.487537, 40.950611, 45.817635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875561, 41.522022, 46.204861>,  <44.492603, 41.636242, 45.958641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875561, 41.522022, 46.204861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.063160, 41.170677, 46.167953>,  <44.175720, 40.959869, 46.145809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.063160, 41.170677, 46.167953>,  <43.875561, 41.522022, 46.204861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063160, 41.170677, 46.167953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224017, -0.219365, 0.949576,
		-0.854317, -0.424678, -0.299651,
		0.468997, -0.878367, -0.092272,
		44.203857, 40.907166, 46.140270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342159, 40.955051, 46.419693>,  <43.875561, 41.522022, 46.204861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342159, 40.955051, 46.419693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.703545, 40.787560, 46.456402>,  <43.920376, 40.687065, 46.478428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.703545, 40.787560, 46.456402>,  <43.342159, 40.955051, 46.419693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703545, 40.787560, 46.456402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205390, -0.234925, 0.950066,
		-0.376263, -0.877196, -0.298249,
		0.903461, -0.418732, 0.091773,
		43.974583, 40.661942, 46.483932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200745, 40.322845, 46.625549>,  <43.342159, 40.955051, 46.419693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200745, 40.322845, 46.625549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.583290, 40.389679, 46.721420>,  <43.812817, 40.429779, 46.778942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.583290, 40.389679, 46.721420>,  <43.200745, 40.322845, 46.625549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583290, 40.389679, 46.721420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181115, -0.304674, 0.935078,
		0.229259, -0.937687, -0.261119,
		0.956366, 0.167083, 0.239678,
		43.870201, 40.439804, 46.793324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362865, 39.752499, 46.987434>,  <43.200745, 40.322845, 46.625549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362865, 39.752499, 46.987434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.654556, 40.006577, 47.089214>,  <43.829571, 40.159023, 47.150284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.654556, 40.006577, 47.089214>,  <43.362865, 39.752499, 46.987434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654556, 40.006577, 47.089214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175285, -0.186041, 0.966780,
		0.661436, -0.749607, -0.024326,
		0.729231, 0.635200, 0.254449,
		43.873325, 40.197136, 47.165550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786339, 39.341076, 47.456673>,  <43.362865, 39.752499, 46.987434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786339, 39.341076, 47.456673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.887520, 39.722191, 47.523857>,  <43.948231, 39.950859, 47.564167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.887520, 39.722191, 47.523857>,  <43.786339, 39.341076, 47.456673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887520, 39.722191, 47.523857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164782, -0.128644, 0.977905,
		0.953342, -0.275045, 0.124460,
		0.252956, 0.952786, 0.167964,
		43.963406, 40.008026, 47.574245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207172, 39.364544, 47.979424>,  <43.786339, 39.341076, 47.456673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207172, 39.364544, 47.979424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.067017, 39.739098, 47.987488>,  <43.982922, 39.963829, 47.992325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.067017, 39.739098, 47.987488>,  <44.207172, 39.364544, 47.979424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067017, 39.739098, 47.987488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021304, -0.029485, 0.999338,
		0.936361, 0.349730, 0.030280,
		-0.350391, 0.936386, 0.020158,
		43.961899, 40.020012, 47.993534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621555, 39.626213, 48.483509>,  <44.207172, 39.364544, 47.979424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621555, 39.626213, 48.483509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.293236, 39.848061, 48.428825>,  <44.096245, 39.981171, 48.396015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.293236, 39.848061, 48.428825>,  <44.621555, 39.626213, 48.483509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293236, 39.848061, 48.428825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129516, 0.052407, 0.990191,
		0.556346, 0.830451, 0.028817,
		-0.820795, 0.554621, -0.136713,
		44.046997, 40.014446, 48.387810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625317, 40.288013, 48.839851>,  <44.621555, 39.626213, 48.483509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625317, 40.288013, 48.839851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.230965, 40.235603, 48.798126>,  <43.994354, 40.204159, 48.773090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.230965, 40.235603, 48.798126>,  <44.625317, 40.288013, 48.839851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230965, 40.235603, 48.798126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131559, 0.220420, 0.966492,
		-0.103642, 0.966565, -0.234544,
		-0.985876, -0.131026, -0.104315,
		43.935204, 40.196297, 48.766830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342659, 40.801781, 49.306881>,  <44.625317, 40.288013, 48.839851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342659, 40.801781, 49.306881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.017334, 40.582542, 49.228798>,  <43.822140, 40.451000, 49.181950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.017334, 40.582542, 49.228798>,  <44.342659, 40.801781, 49.306881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017334, 40.582542, 49.228798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258817, 0.040340, 0.965084,
		-0.521087, 0.835440, -0.174667,
		-0.813315, -0.548100, -0.195205,
		43.773338, 40.418114, 49.170235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767746, 41.252949, 49.514507>,  <44.342659, 40.801781, 49.306881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767746, 41.252949, 49.514507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.654861, 40.869476, 49.528866>,  <43.587132, 40.639393, 49.537479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.654861, 40.869476, 49.528866>,  <43.767746, 41.252949, 49.514507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654861, 40.869476, 49.528866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190035, 0.092538, 0.977406,
		-0.940343, 0.269010, -0.208298,
		-0.282208, -0.958681, 0.035896,
		43.570198, 40.581871, 49.539635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230465, 41.249825, 50.038586>,  <43.767746, 41.252949, 49.514507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230465, 41.249825, 50.038586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.321720, 40.861343, 50.011093>,  <43.376472, 40.628254, 49.994598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.321720, 40.861343, 50.011093>,  <43.230465, 41.249825, 50.038586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321720, 40.861343, 50.011093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095947, -0.092672, 0.991063,
		-0.968889, -0.219509, -0.114326,
		0.228142, -0.971199, -0.068727,
		43.390163, 40.569984, 49.990475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727184, 40.857113, 50.447979>,  <43.230465, 41.249825, 50.038586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727184, 40.857113, 50.447979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.057335, 40.631660, 50.434837>,  <43.255424, 40.496387, 50.426952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.057335, 40.631660, 50.434837>,  <42.727184, 40.857113, 50.447979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057335, 40.631660, 50.434837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162047, -0.292235, 0.942518,
		-0.540835, -0.772603, -0.332537,
		0.825371, -0.563633, -0.032853,
		43.304947, 40.462570, 50.424980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535240, 40.164185, 50.695843>,  <42.727184, 40.857113, 50.447979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535240, 40.164185, 50.695843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.932388, 40.164467, 50.743523>,  <43.170677, 40.164635, 50.772129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.932388, 40.164467, 50.743523>,  <42.535240, 40.164185, 50.695843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932388, 40.164467, 50.743523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107670, -0.423826, 0.899321,
		0.051152, -0.905743, -0.420729,
		0.992870, 0.000702, 0.119201,
		43.230247, 40.164677, 50.779282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723904, 39.528225, 50.909916>,  <42.535240, 40.164185, 50.695843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723904, 39.528225, 50.909916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.028305, 39.762161, 51.022224>,  <43.210945, 39.902523, 51.089611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.028305, 39.762161, 51.022224>,  <42.723904, 39.528225, 50.909916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028305, 39.762161, 51.022224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078375, -0.346739, 0.934682,
		0.643998, -0.733300, -0.218032,
		0.761002, 0.584845, 0.280772,
		43.256607, 39.937614, 51.106457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145931, 39.110348, 51.366051>,  <42.723904, 39.528225, 50.909916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145931, 39.110348, 51.366051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.246964, 39.489235, 51.445019>,  <43.307583, 39.716568, 51.492401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.246964, 39.489235, 51.445019>,  <43.145931, 39.110348, 51.366051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246964, 39.489235, 51.445019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129611, -0.169075, 0.977044,
		0.958857, -0.272366, 0.080067,
		0.252576, 0.947223, 0.197420,
		43.322735, 39.773403, 51.504246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.562355, 39.079456, 51.988667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.472816, 39.469254, 51.982178>,  <43.419094, 39.703133, 51.978283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.472816, 39.469254, 51.982178>,  <43.562355, 39.079456, 51.988667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472816, 39.469254, 51.982178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068099, 0.000968, 0.997678,
		0.972243, 0.224430, 0.066145,
		-0.223845, 0.974490, -0.016225,
		43.405663, 39.761600, 51.977310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004826, 39.427471, 52.489655>,  <43.562355, 39.079456, 51.988667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004826, 39.427471, 52.489655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.703842, 39.685135, 52.434704>,  <43.523254, 39.839733, 52.401733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.703842, 39.685135, 52.434704>,  <44.004826, 39.427471, 52.489655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703842, 39.685135, 52.434704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051941, 0.265960, 0.962584,
		0.656590, 0.717167, -0.233581,
		-0.752457, 0.644156, -0.137377,
		43.478104, 39.878380, 52.393490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244888, 40.017727, 52.913933>,  <44.004826, 39.427471, 52.489655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244888, 40.017727, 52.913933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.852745, 40.079338, 52.864662>,  <43.617458, 40.116306, 52.835098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.852745, 40.079338, 52.864662>,  <44.244888, 40.017727, 52.913933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852745, 40.079338, 52.864662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073011, 0.296747, 0.952161,
		0.183214, 0.942452, -0.279672,
		-0.980358, 0.154030, -0.123177,
		43.558640, 40.125546, 52.827709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999725, 40.754021, 53.043125>,  <44.244888, 40.017727, 52.913933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999725, 40.754021, 53.043125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.672577, 40.528084, 53.087021>,  <43.476288, 40.392521, 53.113358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.672577, 40.528084, 53.087021>,  <43.999725, 40.754021, 53.043125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672577, 40.528084, 53.087021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102381, 0.330522, 0.938229,
		-0.566226, 0.756111, -0.328152,
		-0.817867, -0.564846, 0.109739,
		43.427216, 40.358631, 53.119942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555981, 41.199638, 53.401386>,  <43.999725, 40.754021, 53.043125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555981, 41.199638, 53.401386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.356071, 40.856522, 53.449429>,  <43.236126, 40.650654, 53.478256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.356071, 40.856522, 53.449429>,  <43.555981, 41.199638, 53.401386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356071, 40.856522, 53.449429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199293, 0.248830, 0.947822,
		-0.842918, 0.449758, -0.295309,
		-0.499772, -0.857789, 0.120110,
		43.206139, 40.599186, 53.485462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821907, 41.271011, 53.662354>,  <43.555981, 41.199638, 53.401386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821907, 41.271011, 53.662354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.904488, 40.888321, 53.744385>,  <42.954037, 40.658707, 53.793606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.904488, 40.888321, 53.744385>,  <42.821907, 41.271011, 53.662354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904488, 40.888321, 53.744385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370006, 0.117697, 0.921544,
		-0.905799, -0.266138, -0.329694,
		0.206454, -0.956722, 0.205082,
		42.966423, 40.601303, 53.805908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207119, 41.055199, 54.061626>,  <42.821907, 41.271011, 53.662354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207119, 41.055199, 54.061626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483093, 40.778511, 54.146965>,  <42.648678, 40.612499, 54.198170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483093, 40.778511, 54.146965>,  <42.207119, 41.055199, 54.061626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483093, 40.778511, 54.146965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330683, -0.038999, 0.942936,
		-0.643922, -0.721117, -0.255645,
		0.689937, -0.691715, 0.213349,
		42.690075, 40.570995, 54.210968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849960, 40.459934, 54.324913>,  <42.207119, 41.055199, 54.061626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849960, 40.459934, 54.324913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.230972, 40.448051, 54.446110>,  <42.459579, 40.440922, 54.518829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.230972, 40.448051, 54.446110>,  <41.849960, 40.459934, 54.324913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230972, 40.448051, 54.446110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302997, 0.004452, 0.952981,
		-0.029675, -0.999548, -0.004766,
		0.952529, -0.029723, 0.302993,
		42.516731, 40.439140, 54.537006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888630, 39.933903, 54.712360>,  <41.849960, 40.459934, 54.324913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888630, 39.933903, 54.712360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.207199, 40.148170, 54.824627>,  <42.398342, 40.276730, 54.891987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.207199, 40.148170, 54.824627>,  <41.888630, 39.933903, 54.712360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207199, 40.148170, 54.824627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314184, -0.030048, 0.948886,
		0.516722, -0.843893, 0.144368,
		0.796421, 0.535669, 0.280664,
		42.446125, 40.308872, 54.908825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290874, 39.574471, 55.275192>,  <41.888630, 39.933903, 54.712360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290874, 39.574471, 55.275192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.422657, 39.951279, 55.300682>,  <42.501728, 40.177364, 55.315975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.422657, 39.951279, 55.300682>,  <42.290874, 39.574471, 55.275192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422657, 39.951279, 55.300682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221716, 0.011583, 0.975043,
		0.917769, -0.335364, 0.212676,
		0.329458, 0.942017, 0.063725,
		42.521496, 40.233883, 55.319801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835445, 39.604240, 55.904701>,  <42.290874, 39.574471, 55.275192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835445, 39.604240, 55.904701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.688316, 39.971329, 55.844704>,  <42.600040, 40.191582, 55.808704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.688316, 39.971329, 55.844704>,  <42.835445, 39.604240, 55.904701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688316, 39.971329, 55.844704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118949, 0.113543, 0.986387,
		0.922258, 0.380654, 0.067399,
		-0.367819, 0.917721, -0.149994,
		42.577972, 40.246643, 55.799706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313046, 40.104198, 56.307148>,  <42.835445, 39.604240, 55.904701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313046, 40.104198, 56.307148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.950180, 40.255119, 56.232651>,  <42.732460, 40.345673, 56.187954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.950180, 40.255119, 56.232651>,  <43.313046, 40.104198, 56.307148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950180, 40.255119, 56.232651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101650, 0.233000, 0.967149,
		0.408305, 0.896299, -0.173018,
		-0.907168, 0.377305, -0.186244,
		42.678028, 40.368309, 56.176777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288235, 40.754192, 56.698551>,  <43.313046, 40.104198, 56.307148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288235, 40.754192, 56.698551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.904488, 40.680588, 56.612991>,  <42.674240, 40.636425, 56.561653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.904488, 40.680588, 56.612991>,  <43.288235, 40.754192, 56.698551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904488, 40.680588, 56.612991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274634, 0.435036, 0.857508,
		-0.064736, 0.881410, -0.467895,
		-0.959367, -0.184011, -0.213903,
		42.616676, 40.625385, 56.548820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987865, 41.342735, 56.807461>,  <43.288235, 40.754192, 56.698551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987865, 41.342735, 56.807461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.680153, 41.088127, 56.829540>,  <42.495525, 40.935364, 56.842789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.680153, 41.088127, 56.829540>,  <42.987865, 41.342735, 56.807461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680153, 41.088127, 56.829540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318228, 0.456650, 0.830784,
		-0.554018, 0.621541, -0.553851,
		-0.769282, -0.636520, 0.055200,
		42.449368, 40.897171, 56.846100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416893, 41.699467, 57.062717>,  <42.987865, 41.342735, 56.807461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416893, 41.699467, 57.062717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319656, 41.324669, 57.163074>,  <42.261314, 41.099789, 57.223289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319656, 41.324669, 57.163074>,  <42.416893, 41.699467, 57.062717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319656, 41.324669, 57.163074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315366, 0.320945, 0.893050,
		-0.917307, 0.137968, -0.373515,
		-0.243090, -0.936995, 0.250895,
		42.246731, 41.043571, 57.238342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758087, 41.800076, 57.436783>,  <42.416893, 41.699467, 57.062717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758087, 41.800076, 57.436783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.896111, 41.441933, 57.549400>,  <41.978924, 41.227047, 57.616970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.896111, 41.441933, 57.549400>,  <41.758087, 41.800076, 57.436783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896111, 41.441933, 57.549400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297025, 0.180385, 0.937677,
		-0.890342, -0.407183, -0.203699,
		0.345062, -0.895357, 0.281548,
		41.999630, 41.173325, 57.633865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115669, 41.530682, 57.802109>,  <41.758087, 41.800076, 57.436783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115669, 41.530682, 57.802109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421825, 41.306122, 57.927967>,  <41.605518, 41.171387, 58.003483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421825, 41.306122, 57.927967>,  <41.115669, 41.530682, 57.802109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421825, 41.306122, 57.927967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463739, -0.142115, 0.874500,
		-0.446229, -0.815250, -0.369117,
		0.765393, -0.561401, 0.314647,
		41.651443, 41.137703, 58.022362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825806, 41.072754, 58.218525>,  <41.115669, 41.530682, 57.802109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825806, 41.072754, 58.218525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.213043, 41.062576, 58.318245>,  <41.445385, 41.056469, 58.378078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.213043, 41.062576, 58.318245>,  <40.825806, 41.072754, 58.218525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213043, 41.062576, 58.318245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249118, 0.010200, 0.968419,
		-0.027179, -0.999624, 0.003537,
		0.968092, -0.025439, 0.249302,
		41.503471, 41.054943, 58.393036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933365, 40.572559, 58.788166>,  <40.825806, 41.072754, 58.218525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933365, 40.572559, 58.788166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.262131, 40.799088, 58.812603>,  <41.459393, 40.935005, 58.827263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.262131, 40.799088, 58.812603>,  <40.933365, 40.572559, 58.788166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262131, 40.799088, 58.812603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125765, 0.075824, 0.989158,
		0.555548, -0.820690, 0.133544,
		0.821919, 0.566320, 0.061091,
		41.508705, 40.968983, 58.830929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303955, 40.255447, 59.241219>,  <40.933365, 40.572559, 58.788166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303955, 40.255447, 59.241219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.423019, 40.637306, 59.238731>,  <41.494457, 40.866421, 59.237240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.423019, 40.637306, 59.238731>,  <41.303955, 40.255447, 59.241219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423019, 40.637306, 59.238731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077766, 0.030740, 0.996498,
		0.951498, -0.296139, 0.083390,
		0.297665, 0.954650, -0.006220,
		41.512318, 40.923702, 59.236866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622646, 40.295616, 59.887539>,  <41.303955, 40.255447, 59.241219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622646, 40.295616, 59.887539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.566158, 40.682640, 59.803741>,  <41.532265, 40.914856, 59.753464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.566158, 40.682640, 59.803741>,  <41.622646, 40.295616, 59.887539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566158, 40.682640, 59.803741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081046, 0.199602, 0.976520,
		0.986655, 0.154886, 0.050229,
		-0.141223, 0.967559, -0.209491,
		41.523792, 40.972908, 59.740894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033161, 40.722851, 60.333286>,  <41.622646, 40.295616, 59.887539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033161, 40.722851, 60.333286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.760712, 40.994781, 60.224548>,  <41.597240, 41.157940, 60.159306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.760712, 40.994781, 60.224548>,  <42.033161, 40.722851, 60.333286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760712, 40.994781, 60.224548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141942, 0.241638, 0.959929,
		0.718277, 0.692417, -0.068089,
		-0.681124, 0.679831, -0.271846,
		41.556374, 41.198730, 60.142994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331356, 41.405289, 60.518093>,  <42.033161, 40.722851, 60.333286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331356, 41.405289, 60.518093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.943298, 41.308723, 60.527405>,  <41.710464, 41.250786, 60.532990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.943298, 41.308723, 60.527405>,  <42.331356, 41.405289, 60.518093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943298, 41.308723, 60.527405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036677, 0.240901, 0.969856,
		-0.239743, 0.940046, -0.242563,
		-0.970144, -0.241412, 0.023276,
		41.652256, 41.236301, 60.534389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043411, 41.866741, 60.910576>,  <42.331356, 41.405289, 60.518093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043411, 41.866741, 60.910576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.761665, 41.585617, 60.950424>,  <41.592617, 41.416943, 60.974335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.761665, 41.585617, 60.950424>,  <42.043411, 41.866741, 60.910576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761665, 41.585617, 60.950424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154547, 0.288816, 0.944828,
		-0.692810, 0.650107, -0.312050,
		-0.704365, -0.702813, 0.099622,
		41.550354, 41.374775, 60.980312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746861, 42.074409, 61.285652>,  <42.043411, 41.866741, 60.910576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746861, 42.074409, 61.285652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.124435, 42.163857, 61.382797>,  <43.350979, 42.217525, 61.441086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.124435, 42.163857, 61.382797>,  <42.746861, 42.074409, 61.285652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124435, 42.163857, 61.382797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207018, 0.172118, -0.963078,
		-0.257161, 0.959360, 0.116176,
		0.943934, 0.223616, 0.242867,
		43.407616, 42.230942, 61.455658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924225, 42.786358, 60.943314>,  <42.746861, 42.074409, 61.285652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924225, 42.786358, 60.943314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.265266, 42.592842, 61.022320>,  <43.469891, 42.476734, 61.069725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.265266, 42.592842, 61.022320>,  <42.924225, 42.786358, 60.943314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265266, 42.592842, 61.022320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238153, 0.023304, -0.970948,
		0.465131, 0.874874, 0.135085,
		0.852605, -0.483789, 0.197514,
		43.521049, 42.447704, 61.081573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429558, 43.140926, 60.603714>,  <42.924225, 42.786358, 60.943314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429558, 43.140926, 60.603714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.579403, 42.773384, 60.653301>,  <43.669308, 42.552856, 60.683052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.579403, 42.773384, 60.653301>,  <43.429558, 43.140926, 60.603714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579403, 42.773384, 60.653301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385421, 0.032720, -0.922161,
		0.843279, 0.393229, 0.366404,
		0.374609, -0.918858, 0.123967,
		43.691784, 42.497726, 60.690491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108646, 43.150768, 60.505901>,  <43.429558, 43.140926, 60.603714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108646, 43.150768, 60.505901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032993, 42.765244, 60.430756>,  <43.987602, 42.533928, 60.385666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032993, 42.765244, 60.430756>,  <44.108646, 43.150768, 60.505901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032993, 42.765244, 60.430756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425588, 0.091957, -0.900233,
		0.884931, -0.250221, 0.392794,
		-0.189137, -0.963812, -0.187866,
		43.976254, 42.476101, 60.374397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710670, 42.903145, 60.167328>,  <44.108646, 43.150768, 60.505901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710670, 42.903145, 60.167328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.443810, 42.621712, 60.069443>,  <44.283695, 42.452850, 60.010712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.443810, 42.621712, 60.069443>,  <44.710670, 42.903145, 60.167328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443810, 42.621712, 60.069443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385900, -0.045439, -0.921421,
		0.637177, -0.709159, 0.301827,
		-0.667149, -0.703583, -0.244711,
		44.243664, 42.410637, 59.996029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036091, 42.384796, 59.803360>,  <44.710670, 42.903145, 60.167328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036091, 42.384796, 59.803360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.657242, 42.327377, 59.688576>,  <44.429932, 42.292927, 59.619705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.657242, 42.327377, 59.688576>,  <45.036091, 42.384796, 59.803360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.657242, 42.327377, 59.688576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306983, -0.145232, -0.940569,
		0.093340, -0.978929, 0.181619,
		-0.947127, -0.143547, -0.286959,
		44.373104, 42.284313, 59.602489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023808, 41.750900, 59.357376>,  <45.036091, 42.384796, 59.803360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023808, 41.750900, 59.357376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.694641, 41.950203, 59.248165>,  <44.497139, 42.069786, 59.182640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.694641, 41.950203, 59.248165>,  <45.023808, 41.750900, 59.357376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694641, 41.950203, 59.248165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265247, -0.088042, -0.960153,
		-0.502441, -0.862547, -0.059710,
		-0.822920, 0.498258, -0.273024,
		44.447765, 42.099682, 59.166260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633404, 41.310608, 59.029228>,  <45.023808, 41.750900, 59.357376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633404, 41.310608, 59.029228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.517361, 41.670715, 58.899399>,  <44.447735, 41.886780, 58.821499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.517361, 41.670715, 58.899399>,  <44.633404, 41.310608, 59.029228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517361, 41.670715, 58.899399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297978, -0.237326, -0.924600,
		-0.909422, -0.364947, -0.199412,
		-0.290104, 0.900272, -0.324576,
		44.430328, 41.940796, 58.802025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434853, 41.161835, 58.410305>,  <44.633404, 41.310608, 59.029228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434853, 41.161835, 58.410305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.436455, 41.561165, 58.387222>,  <44.437416, 41.800762, 58.373371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.436455, 41.561165, 58.387222>,  <44.434853, 41.161835, 58.410305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436455, 41.561165, 58.387222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029303, -0.057564, -0.997912,
		-0.999562, 0.005684, 0.029024,
		0.004002, 0.998325, -0.057705,
		44.437656, 41.860664, 58.369911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914547, 41.241272, 57.902592>,  <44.434853, 41.161835, 58.410305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914547, 41.241272, 57.902592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.142868, 41.568565, 57.875244>,  <44.279861, 41.764942, 57.858833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.142868, 41.568565, 57.875244>,  <43.914547, 41.241272, 57.902592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142868, 41.568565, 57.875244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027701, -0.064034, -0.997563,
		-0.820618, 0.571308, -0.013885,
		0.570805, 0.818234, -0.068373,
		44.314110, 41.814037, 57.854733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680874, 41.622349, 57.389023>,  <43.914547, 41.241272, 57.902592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680874, 41.622349, 57.389023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.056110, 41.755562, 57.427139>,  <44.281250, 41.835487, 57.450008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.056110, 41.755562, 57.427139>,  <43.680874, 41.622349, 57.389023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056110, 41.755562, 57.427139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046489, 0.151560, -0.987354,
		-0.343260, 0.930656, 0.126694,
		0.938089, 0.333030, 0.095290,
		44.337536, 41.855473, 57.455727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730804, 42.166096, 56.806850>,  <43.680874, 41.622349, 57.389023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730804, 42.166096, 56.806850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.094147, 42.036865, 56.913067>,  <44.312153, 41.959328, 56.976799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.094147, 42.036865, 56.913067>,  <43.730804, 42.166096, 56.806850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094147, 42.036865, 56.913067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188576, -0.250319, -0.949621,
		0.373273, 0.912667, -0.166454,
		0.908354, -0.323079, 0.265544,
		44.366653, 41.939941, 56.992729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199486, 42.249104, 56.211922>,  <43.730804, 42.166096, 56.806850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199486, 42.249104, 56.211922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.420532, 42.000275, 56.433784>,  <44.553158, 41.850975, 56.566902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.420532, 42.000275, 56.433784>,  <44.199486, 42.249104, 56.211922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420532, 42.000275, 56.433784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343863, -0.436038, -0.831642,
		0.759194, 0.650302, -0.027052,
		0.552614, -0.622076, 0.554653,
		44.586315, 41.813652, 56.600182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868580, 42.320629, 55.849644>,  <44.199486, 42.249104, 56.211922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868580, 42.320629, 55.849644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.854485, 41.972755, 56.046585>,  <44.846027, 41.764030, 56.164749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.854485, 41.972755, 56.046585>,  <44.868580, 42.320629, 55.849644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854485, 41.972755, 56.046585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561733, -0.424704, -0.709988,
		0.826568, 0.251554, 0.503494,
		-0.035236, -0.869682, 0.492353,
		44.843914, 41.711849, 56.194290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592632, 42.012280, 55.766979>,  <44.868580, 42.320629, 55.849644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592632, 42.012280, 55.766979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.325386, 41.730026, 55.861385>,  <45.165039, 41.560673, 55.918030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.325386, 41.730026, 55.861385>,  <45.592632, 42.012280, 55.766979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325386, 41.730026, 55.861385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350306, -0.578153, -0.736902,
		0.656435, -0.409659, 0.633461,
		-0.668116, -0.705633, 0.236014,
		45.124950, 41.518337, 55.932190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942612, 41.374336, 55.819084>,  <45.592632, 42.012280, 55.766979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942612, 41.374336, 55.819084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.567154, 41.255577, 55.748890>,  <45.341877, 41.184322, 55.706772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.567154, 41.255577, 55.748890>,  <45.942612, 41.374336, 55.819084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567154, 41.255577, 55.748890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337775, -0.688674, -0.641588,
		0.069632, -0.661499, 0.746706,
		-0.938647, -0.296894, -0.175484,
		45.285561, 41.166508, 55.696243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.962574, 40.590733, 55.890865>,  <45.942612, 41.374336, 55.819084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.962574, 40.590733, 55.890865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.639595, 40.712685, 55.688843>,  <45.445808, 40.785854, 55.567627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.639595, 40.712685, 55.688843>,  <45.962574, 40.590733, 55.890865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639595, 40.712685, 55.688843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104355, -0.768797, -0.630920,
		-0.580642, -0.562138, 0.588945,
		-0.807444, 0.304879, -0.505057,
		45.397362, 40.804150, 55.537327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592598, 40.037884, 55.838623>,  <45.962574, 40.590733, 55.890865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592598, 40.037884, 55.838623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.471527, 40.263741, 55.531490>,  <45.398884, 40.399254, 55.347210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.471527, 40.263741, 55.531490>,  <45.592598, 40.037884, 55.838623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471527, 40.263741, 55.531490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191235, -0.753263, -0.629305,
		-0.933712, -0.337312, 0.120015,
		-0.302674, 0.564638, -0.767836,
		45.380726, 40.433132, 55.301140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138512, 39.647385, 55.329105>,  <45.592598, 40.037884, 55.838623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138512, 39.647385, 55.329105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.266685, 39.962578, 55.118809>,  <45.343590, 40.151695, 54.992630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.266685, 39.962578, 55.118809>,  <45.138512, 39.647385, 55.329105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266685, 39.962578, 55.118809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358859, -0.614614, -0.702474,
		-0.876666, 0.036428, -0.479717,
		0.320431, 0.787986, -0.525739,
		45.362816, 40.198975, 54.961086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283474, 39.308426, 54.741554>,  <45.138512, 39.647385, 55.329105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283474, 39.308426, 54.741554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.430458, 39.667648, 54.644829>,  <45.518650, 39.883183, 54.586792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.430458, 39.667648, 54.644829>,  <45.283474, 39.308426, 54.741554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430458, 39.667648, 54.644829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319913, -0.366189, -0.873820,
		-0.873286, 0.243735, -0.421858,
		0.367461, 0.898053, -0.241813,
		45.540695, 39.937065, 54.572285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.834785, 39.576870, 49.060101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.135551, 39.837318, 49.101398>,  <43.316013, 39.993587, 49.126175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.135551, 39.837318, 49.101398>,  <42.834785, 39.576870, 49.060101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135551, 39.837318, 49.101398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008983, 0.146471, -0.989174,
		-0.659197, 0.744704, 0.104284,
		0.751917, 0.651124, 0.103243,
		43.361126, 40.032654, 49.132370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660278, 40.136364, 48.646561>,  <42.834785, 39.576870, 49.060101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660278, 40.136364, 48.646561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.058441, 40.156837, 48.678921>,  <43.297340, 40.169121, 48.698338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.058441, 40.156837, 48.678921>,  <42.660278, 40.136364, 48.646561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058441, 40.156837, 48.678921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062027, 0.298917, -0.952261,
		-0.072926, 0.952905, 0.294369,
		0.995407, 0.051186, 0.080904,
		43.357063, 40.172192, 48.703194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935848, 40.782776, 48.313931>,  <42.660278, 40.136364, 48.646561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935848, 40.782776, 48.313931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275272, 40.571312, 48.322601>,  <43.478928, 40.444435, 48.327805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275272, 40.571312, 48.322601>,  <42.935848, 40.782776, 48.313931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275272, 40.571312, 48.322601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239313, 0.346935, -0.906843,
		0.471887, 0.774698, 0.420910,
		0.848559, -0.528657, 0.021681,
		43.529839, 40.412716, 48.329105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431175, 41.172352, 48.119549>,  <42.935848, 40.782776, 48.313931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431175, 41.172352, 48.119549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.629074, 40.825729, 48.093292>,  <43.747814, 40.617756, 48.077538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.629074, 40.825729, 48.093292>,  <43.431175, 41.172352, 48.119549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629074, 40.825729, 48.093292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203346, 0.188873, -0.960717,
		0.844911, 0.461965, 0.269655,
		0.494748, -0.866554, -0.065642,
		43.777500, 40.565762, 48.073601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154003, 41.267353, 47.781338>,  <43.431175, 41.172352, 48.119549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154003, 41.267353, 47.781338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.091805, 40.878647, 47.710350>,  <44.054485, 40.645424, 47.667755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.091805, 40.878647, 47.710350>,  <44.154003, 41.267353, 47.781338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091805, 40.878647, 47.710350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257282, 0.133616, -0.957054,
		0.953744, -0.194479, 0.229240,
		-0.155497, -0.971764, -0.177472,
		44.045155, 40.587116, 47.657108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.806923, 41.027416, 47.417351>,  <44.154003, 41.267353, 47.781338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.806923, 41.027416, 47.417351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488979, 40.796616, 47.342228>,  <44.298214, 40.658134, 47.297153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488979, 40.796616, 47.342228>,  <44.806923, 41.027416, 47.417351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488979, 40.796616, 47.342228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160452, 0.098629, -0.982104,
		0.585201, -0.810764, 0.014186,
		-0.794855, -0.577004, -0.187806,
		44.250523, 40.623516, 47.285885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152065, 40.688568, 46.958435>,  <44.806923, 41.027416, 47.417351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152065, 40.688568, 46.958435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758270, 40.629051, 46.921246>,  <44.521992, 40.593342, 46.898933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758270, 40.629051, 46.921246>,  <45.152065, 40.688568, 46.958435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758270, 40.629051, 46.921246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102210, -0.055693, -0.993203,
		0.142604, -0.987299, 0.070038,
		-0.984488, -0.148793, -0.092970,
		44.462925, 40.584412, 46.893356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141850, 40.067486, 46.594864>,  <45.152065, 40.688568, 46.958435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141850, 40.067486, 46.594864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.789051, 40.250572, 46.549995>,  <44.577374, 40.360424, 46.523075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.789051, 40.250572, 46.549995>,  <45.141850, 40.067486, 46.594864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789051, 40.250572, 46.549995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134487, 0.016350, -0.990781,
		-0.451666, -0.888946, -0.075978,
		-0.881993, 0.457720, -0.112167,
		44.524452, 40.387890, 46.516346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787186, 39.771805, 45.969349>,  <45.141850, 40.067486, 46.594864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787186, 39.771805, 45.969349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.614845, 40.127083, 46.033207>,  <44.511440, 40.340248, 46.071522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.614845, 40.127083, 46.033207>,  <44.787186, 39.771805, 45.969349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614845, 40.127083, 46.033207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097856, 0.221847, -0.970159,
		-0.897104, -0.402368, -0.182497,
		-0.430847, 0.888191, 0.159646,
		44.485592, 40.393539, 46.081100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265739, 39.757931, 45.480427>,  <44.787186, 39.771805, 45.969349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265739, 39.757931, 45.480427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.328735, 40.140816, 45.577545>,  <44.366531, 40.370544, 45.635815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.328735, 40.140816, 45.577545>,  <44.265739, 39.757931, 45.480427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328735, 40.140816, 45.577545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018834, 0.248730, -0.968390,
		-0.987342, 0.147935, 0.057199,
		0.157486, 0.957209, 0.242795,
		44.375980, 40.427979, 45.650383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882484, 40.085583, 45.029224>,  <44.265739, 39.757931, 45.480427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882484, 40.085583, 45.029224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113548, 40.387749, 45.152939>,  <44.252186, 40.569050, 45.227165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113548, 40.387749, 45.152939>,  <43.882484, 40.085583, 45.029224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113548, 40.387749, 45.152939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152109, 0.272640, -0.950016,
		-0.801981, 0.595829, 0.042587,
		0.577658, 0.755417, 0.309283,
		44.286846, 40.614372, 45.245724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659050, 40.698933, 44.706684>,  <43.882484, 40.085583, 45.029224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659050, 40.698933, 44.706684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042007, 40.768288, 44.799065>,  <44.271782, 40.809898, 44.854492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042007, 40.768288, 44.799065>,  <43.659050, 40.698933, 44.706684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042007, 40.768288, 44.799065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177354, 0.278156, -0.944021,
		-0.227919, 0.944758, 0.235554,
		0.957392, 0.173384, 0.230954,
		44.329224, 40.820301, 44.868351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823971, 41.380299, 44.586723>,  <43.659050, 40.698933, 44.706684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823971, 41.380299, 44.586723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127586, 41.134109, 44.501816>,  <44.309753, 40.986397, 44.450871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127586, 41.134109, 44.501816>,  <43.823971, 41.380299, 44.586723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127586, 41.134109, 44.501816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078351, 0.410032, -0.908700,
		0.646317, 0.673104, 0.359452,
		0.759036, -0.615472, -0.212272,
		44.355297, 40.949467, 44.438133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550800, 41.670494, 44.424290>,  <43.823971, 41.380299, 44.586723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550800, 41.670494, 44.424290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482288, 41.341110, 44.207932>,  <44.441181, 41.143478, 44.078117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482288, 41.341110, 44.207932>,  <44.550800, 41.670494, 44.424290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482288, 41.341110, 44.207932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058306, 0.539577, -0.839915,
		0.983496, -0.175397, -0.044405,
		-0.171279, -0.823464, -0.540898,
		44.430904, 41.094070, 44.045662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085167, 42.117638, 44.206161>,  <44.550800, 41.670494, 44.424290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.085167, 42.117638, 44.206161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.219368, 42.493050, 44.173683>,  <45.299889, 42.718300, 44.154198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.219368, 42.493050, 44.173683>,  <45.085167, 42.117638, 44.206161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219368, 42.493050, 44.173683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036056, 0.098920, 0.994442,
		0.941350, -0.330707, 0.067027,
		0.335499, 0.938535, -0.081195,
		45.320019, 42.774609, 44.149326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622051, 42.268192, 44.714710>,  <45.085167, 42.117638, 44.206161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622051, 42.268192, 44.714710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.450737, 42.613449, 44.607708>,  <45.347950, 42.820602, 44.543507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.450737, 42.613449, 44.607708>,  <45.622051, 42.268192, 44.714710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450737, 42.613449, 44.607708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126846, 0.235674, 0.963519,
		0.894698, 0.446590, 0.008551,
		-0.428283, 0.863143, -0.267505,
		45.322250, 42.872391, 44.527458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933578, 42.758335, 45.125011>,  <45.622051, 42.268192, 44.714710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933578, 42.758335, 45.125011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599884, 42.941521, 45.002171>,  <45.399666, 43.051430, 44.928467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599884, 42.941521, 45.002171>,  <45.933578, 42.758335, 45.125011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599884, 42.941521, 45.002171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162396, 0.328190, 0.930548,
		0.526944, 0.826173, -0.199418,
		-0.834241, 0.457962, -0.307105,
		45.349613, 43.078911, 44.910038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028763, 43.433735, 45.235287>,  <45.933578, 42.758335, 45.125011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028763, 43.433735, 45.235287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.629654, 43.407501, 45.230270>,  <45.390190, 43.391762, 45.227261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.629654, 43.407501, 45.230270>,  <46.028763, 43.433735, 45.235287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629654, 43.407501, 45.230270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042155, 0.473089, 0.880005,
		-0.051783, 0.878570, -0.474798,
		-0.997768, -0.065584, -0.012538,
		45.330322, 43.387825, 45.226509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745289, 44.106461, 45.421631>,  <46.028763, 43.433735, 45.235287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745289, 44.106461, 45.421631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.412010, 43.891891, 45.475361>,  <45.212044, 43.763149, 45.507599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.412010, 43.891891, 45.475361>,  <45.745289, 44.106461, 45.421631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412010, 43.891891, 45.475361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125010, 0.419327, 0.899187,
		-0.538668, 0.732404, -0.416438,
		-0.833192, -0.536422, 0.134320,
		45.162052, 43.730965, 45.515656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373714, 44.551731, 45.800865>,  <45.745289, 44.106461, 45.421631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373714, 44.551731, 45.800865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175354, 44.207626, 45.848255>,  <45.056339, 44.001163, 45.876690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175354, 44.207626, 45.848255>,  <45.373714, 44.551731, 45.800865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175354, 44.207626, 45.848255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372296, 0.333875, 0.865981,
		-0.784525, 0.385331, -0.485839,
		-0.495899, -0.860260, 0.118476,
		45.026585, 43.949547, 45.883797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708195, 44.735531, 45.999092>,  <45.373714, 44.551731, 45.800865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708195, 44.735531, 45.999092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.785149, 44.366966, 46.134144>,  <44.831322, 44.145828, 46.215176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.785149, 44.366966, 46.134144>,  <44.708195, 44.735531, 45.999092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785149, 44.366966, 46.134144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243043, 0.288599, 0.926089,
		-0.950747, -0.260220, -0.168422,
		0.192381, -0.921410, 0.337629,
		44.842861, 44.090542, 46.235432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137089, 44.607670, 46.417328>,  <44.708195, 44.735531, 45.999092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137089, 44.607670, 46.417328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.422707, 44.350914, 46.529121>,  <44.594078, 44.196861, 46.596199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.422707, 44.350914, 46.529121>,  <44.137089, 44.607670, 46.417328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422707, 44.350914, 46.529121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252973, 0.135676, 0.957913,
		-0.652795, -0.754698, -0.065502,
		0.714047, -0.641891, 0.279487,
		44.636921, 44.158348, 46.612968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772900, 44.215324, 46.953094>,  <44.137089, 44.607670, 46.417328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772900, 44.215324, 46.953094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.170490, 44.190872, 46.989464>,  <44.409046, 44.176201, 47.011284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.170490, 44.190872, 46.989464>,  <43.772900, 44.215324, 46.953094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170490, 44.190872, 46.989464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087335, 0.059001, 0.994430,
		-0.066159, -0.996384, 0.053306,
		0.993979, -0.061135, 0.090923,
		44.468685, 44.172531, 47.016739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907482, 43.670349, 47.515045>,  <43.772900, 44.215324, 46.953094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907482, 43.670349, 47.515045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216129, 43.921669, 47.475353>,  <44.401318, 44.072460, 47.451538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216129, 43.921669, 47.475353>,  <43.907482, 43.670349, 47.515045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216129, 43.921669, 47.475353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100665, 0.274652, 0.956260,
		0.628073, -0.727876, 0.275173,
		0.771615, 0.628302, -0.099230,
		44.447613, 44.110161, 47.445583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105694, 43.629292, 48.099270>,  <43.907482, 43.670349, 47.515045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105694, 43.629292, 48.099270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.290283, 43.961906, 47.975601>,  <44.401039, 44.161476, 47.901402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.290283, 43.961906, 47.975601>,  <44.105694, 43.629292, 48.099270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290283, 43.961906, 47.975601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084157, 0.387956, 0.917828,
		0.883152, -0.397538, 0.249012,
		0.461477, 0.831537, -0.309168,
		44.428726, 44.211369, 47.882851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540688, 43.796452, 48.624237>,  <44.105694, 43.629292, 48.099270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540688, 43.796452, 48.624237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527802, 44.122887, 48.393425>,  <44.520069, 44.318748, 48.254936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527802, 44.122887, 48.393425>,  <44.540688, 43.796452, 48.624237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527802, 44.122887, 48.393425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030820, 0.576244, 0.816697,
		0.999006, 0.044093, 0.006588,
		-0.032215, 0.816088, -0.577030,
		44.518139, 44.367714, 48.220318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125153, 44.252674, 48.874176>,  <44.540688, 43.796452, 48.624237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125153, 44.252674, 48.874176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831764, 44.459183, 48.697323>,  <44.655731, 44.583088, 48.591209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831764, 44.459183, 48.697323>,  <45.125153, 44.252674, 48.874176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831764, 44.459183, 48.697323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124625, 0.537293, 0.834137,
		0.668197, 0.666917, -0.329749,
		-0.733472, 0.516273, -0.442132,
		44.611721, 44.614063, 48.564682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147598, 44.908031, 49.202213>,  <45.125153, 44.252674, 48.874176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147598, 44.908031, 49.202213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.783852, 44.916809, 49.036045>,  <44.565605, 44.922077, 48.936344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.783852, 44.916809, 49.036045>,  <45.147598, 44.908031, 49.202213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783852, 44.916809, 49.036045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315586, 0.614230, 0.723275,
		0.271032, 0.788822, -0.551635,
		-0.909366, 0.021943, -0.415417,
		44.511044, 44.923393, 48.911419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272442, 45.599743, 48.758549>,  <45.147598, 44.908031, 49.202213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272442, 45.599743, 48.758549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493576, 45.930298, 48.801357>,  <45.626255, 46.128632, 48.827042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493576, 45.930298, 48.801357>,  <45.272442, 45.599743, 48.758549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493576, 45.930298, 48.801357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358645, -0.120043, -0.925723,
		-0.752162, 0.550153, -0.362745,
		0.552834, 0.826391, 0.107018,
		45.659428, 46.178215, 48.833462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230389, 46.071842, 48.121483>,  <45.272442, 45.599743, 48.758549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230389, 46.071842, 48.121483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.580200, 46.180046, 48.282494>,  <45.790085, 46.244968, 48.379101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.580200, 46.180046, 48.282494>,  <45.230389, 46.071842, 48.121483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580200, 46.180046, 48.282494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432606, -0.059943, -0.899588,
		-0.219217, 0.960850, -0.169445,
		0.874526, 0.270508, 0.402529,
		45.842560, 46.261200, 48.403252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524719, 46.573387, 47.727673>,  <45.230389, 46.071842, 48.121483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524719, 46.573387, 47.727673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.846207, 46.441544, 47.925823>,  <46.039101, 46.362438, 48.044712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.846207, 46.441544, 47.925823>,  <45.524719, 46.573387, 47.727673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846207, 46.441544, 47.925823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479110, -0.135192, -0.867281,
		0.352833, 0.934389, 0.049262,
		0.803718, -0.329607, 0.495375,
		46.087322, 46.342663, 48.074436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156460, 46.936207, 47.422455>,  <45.524719, 46.573387, 47.727673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156460, 46.936207, 47.422455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.306870, 46.618164, 47.612789>,  <46.397114, 46.427338, 47.726990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.306870, 46.618164, 47.612789>,  <46.156460, 46.936207, 47.422455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306870, 46.618164, 47.612789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585655, -0.194013, -0.786999,
		0.718063, 0.574604, 0.392703,
		0.376023, -0.795104, 0.475833,
		46.419678, 46.379631, 47.755539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921719, 47.004608, 47.507332>,  <46.156460, 46.936207, 47.422455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921719, 47.004608, 47.507332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.833534, 46.614952, 47.527111>,  <46.780624, 46.381157, 47.538979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.833534, 46.614952, 47.527111>,  <46.921719, 47.004608, 47.507332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.833534, 46.614952, 47.527111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575549, -0.170848, -0.799721,
		0.787489, -0.147853, 0.598332,
		-0.220465, -0.974141, 0.049444,
		46.767395, 46.322708, 47.541943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.482162, 46.761806, 47.219563>,  <46.921719, 47.004608, 47.507332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.482162, 46.761806, 47.219563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.223343, 46.457077, 47.231930>,  <47.068050, 46.274239, 47.239349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.223343, 46.457077, 47.231930>,  <47.482162, 46.761806, 47.219563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223343, 46.457077, 47.231930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485886, -0.443253, -0.753287,
		0.587577, -0.472388, 0.656964,
		-0.647045, -0.761824, 0.030918,
		47.029228, 46.228531, 47.241207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.837090, 46.092480, 47.288857>,  <47.482162, 46.761806, 47.219563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.837090, 46.092480, 47.288857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.471901, 45.997612, 47.156048>,  <47.252789, 45.940693, 47.076363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.471901, 45.997612, 47.156048>,  <47.837090, 46.092480, 47.288857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.471901, 45.997612, 47.156048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407804, -0.557182, -0.723356,
		-0.013440, -0.795801, 0.605408,
		-0.912971, -0.237167, -0.332020,
		47.198009, 45.926460, 47.056442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.966751, 45.382328, 47.114723>,  <47.837090, 46.092480, 47.288857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.966751, 45.382328, 47.114723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.630508, 45.476379, 46.919540>,  <47.428764, 45.532810, 46.802433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.630508, 45.476379, 46.919540>,  <47.966751, 45.382328, 47.114723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.630508, 45.476379, 46.919540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391864, -0.357930, -0.847543,
		-0.373923, -0.903663, 0.208746,
		-0.840609, 0.235116, -0.487951,
		47.378326, 45.546917, 46.773155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.648895, 44.770538, 46.905117>,  <47.966751, 45.382328, 47.114723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.648895, 44.770538, 46.905117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.530785, 45.063675, 46.659920>,  <47.459919, 45.239555, 46.512802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.530785, 45.063675, 46.659920>,  <47.648895, 44.770538, 46.905117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.530785, 45.063675, 46.659920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468515, -0.448094, -0.761384,
		-0.832649, -0.512017, -0.211032,
		-0.295279, 0.732837, -0.612993,
		47.442200, 45.283527, 46.476021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.530041, 44.497723, 46.240189>,  <47.648895, 44.770538, 46.905117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.530041, 44.497723, 46.240189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.601555, 44.874504, 46.126514>,  <47.644463, 45.100574, 46.058311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.601555, 44.874504, 46.126514>,  <47.530041, 44.497723, 46.240189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.601555, 44.874504, 46.126514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399724, -0.333467, -0.853827,
		-0.899031, 0.039053, -0.436139,
		0.178783, 0.941953, -0.284187,
		47.655190, 45.157089, 46.041260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.440876, 44.487389, 45.599510>,  <47.530041, 44.497723, 46.240189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.440876, 44.487389, 45.599510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.649857, 44.823967, 45.654652>,  <47.775246, 45.025913, 45.687737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.649857, 44.823967, 45.654652>,  <47.440876, 44.487389, 45.599510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.649857, 44.823967, 45.654652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503706, -0.174132, -0.846143,
		-0.687984, 0.511507, -0.514820,
		0.522455, 0.841450, 0.137849,
		47.806595, 45.076401, 45.696007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.546356, 44.839355, 44.936783>,  <47.440876, 44.487389, 45.599510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.546356, 44.839355, 44.936783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.839409, 44.963905, 45.178875>,  <48.015240, 45.038635, 45.324131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.839409, 44.963905, 45.178875>,  <47.546356, 44.839355, 44.936783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.839409, 44.963905, 45.178875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655575, -0.083788, -0.750467,
		-0.182962, 0.946587, -0.265513,
		0.732630, 0.311371, 0.605229,
		48.059196, 45.057316, 45.360443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.547283, 46.469273, 51.865166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906300, 46.573181, 52.007683>,  <44.121708, 46.635529, 52.093193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906300, 46.573181, 52.007683>,  <43.547283, 46.469273, 51.865166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906300, 46.573181, 52.007683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360612, 0.032540, -0.932148,
		-0.253741, 0.965121, -0.064471,
		0.897538, 0.259773, 0.356291,
		44.175560, 46.651112, 52.114571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756889, 47.187595, 51.588821>,  <43.547283, 46.469273, 51.865166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756889, 47.187595, 51.588821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087975, 46.990181, 51.695641>,  <44.286625, 46.871731, 51.759731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087975, 46.990181, 51.695641>,  <43.756889, 47.187595, 51.588821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087975, 46.990181, 51.695641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425153, 0.240946, -0.872462,
		0.366250, 0.835682, 0.409263,
		0.827712, -0.493538, 0.267046,
		44.336288, 46.842121, 51.775753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279408, 47.670139, 51.377930>,  <43.756889, 47.187595, 51.588821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279408, 47.670139, 51.377930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471035, 47.323830, 51.435791>,  <44.586010, 47.116043, 51.470509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471035, 47.323830, 51.435791>,  <44.279408, 47.670139, 51.377930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471035, 47.323830, 51.435791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395612, 0.065851, -0.916054,
		0.783574, 0.496076, 0.374060,
		0.479064, -0.865779, 0.144654,
		44.614754, 47.064095, 51.479187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946198, 47.790497, 51.116936>,  <44.279408, 47.670139, 51.377930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946198, 47.790497, 51.116936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870674, 47.397881, 51.104729>,  <44.825359, 47.162312, 51.097404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870674, 47.397881, 51.104729>,  <44.946198, 47.790497, 51.116936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870674, 47.397881, 51.104729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313398, -0.030779, -0.949123,
		0.930663, -0.188764, 0.313424,
		-0.188807, -0.981540, -0.030514,
		44.814034, 47.103420, 51.095573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637375, 47.461880, 50.903477>,  <44.946198, 47.790497, 51.116936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637375, 47.461880, 50.903477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348938, 47.196800, 50.822632>,  <45.175877, 47.037750, 50.774124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348938, 47.196800, 50.822632>,  <45.637375, 47.461880, 50.903477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348938, 47.196800, 50.822632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413364, -0.177398, -0.893118,
		0.556018, -0.727567, 0.401858,
		-0.721092, -0.662704, -0.202113,
		45.132610, 46.997990, 50.761997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068317, 46.878796, 50.748306>,  <45.637375, 47.461880, 50.903477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068317, 46.878796, 50.748306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702850, 46.817123, 50.597870>,  <45.483570, 46.780121, 50.507610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702850, 46.817123, 50.597870>,  <46.068317, 46.878796, 50.748306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702850, 46.817123, 50.597870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402054, -0.206916, -0.891929,
		0.059696, -0.966134, 0.251040,
		-0.913668, -0.154176, -0.376086,
		45.428749, 46.770870, 50.485043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124687, 46.275055, 50.419437>,  <46.068317, 46.878796, 50.748306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124687, 46.275055, 50.419437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804527, 46.434036, 50.239929>,  <45.612431, 46.529427, 50.132225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804527, 46.434036, 50.239929>,  <46.124687, 46.275055, 50.419437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804527, 46.434036, 50.239929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412919, -0.177176, -0.893368,
		-0.434584, -0.900355, -0.022305,
		-0.800396, 0.397454, -0.448771,
		45.564407, 46.553272, 50.105297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953873, 45.770187, 50.019970>,  <46.124687, 46.275055, 50.419437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953873, 45.770187, 50.019970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780510, 46.097527, 49.868988>,  <45.676495, 46.293930, 49.778400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780510, 46.097527, 49.868988>,  <45.953873, 45.770187, 50.019970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.780510, 46.097527, 49.868988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344870, -0.236345, -0.908408,
		-0.832601, -0.523880, -0.179791,
		-0.433404, 0.818346, -0.377451,
		45.650490, 46.343029, 49.755753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.588749, 45.473862, 49.400852>,  <45.953873, 45.770187, 50.019970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.588749, 45.473862, 49.400852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625229, 45.869553, 49.355045>,  <45.647118, 46.106968, 49.327560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625229, 45.869553, 49.355045>,  <45.588749, 45.473862, 49.400852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625229, 45.869553, 49.355045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234387, -0.133090, -0.962990,
		-0.967856, 0.060981, -0.244000,
		0.091198, 0.989226, -0.114519,
		45.652588, 46.166321, 49.320690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816853, 45.605530, 49.320568>,  <45.588749, 45.473862, 49.400852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816853, 45.605530, 49.320568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503113, 45.373032, 49.233898>,  <44.314869, 45.233532, 49.181896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503113, 45.373032, 49.233898>,  <44.816853, 45.605530, 49.320568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503113, 45.373032, 49.233898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543737, 0.476089, 0.691150,
		-0.298571, 0.659919, -0.689465,
		-0.784350, -0.581245, -0.216677,
		44.267807, 45.198658, 49.168896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214592, 45.984737, 49.340328>,  <44.816853, 45.605530, 49.320568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214592, 45.984737, 49.340328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068626, 45.612595, 49.354576>,  <43.981049, 45.389309, 49.363125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068626, 45.612595, 49.354576>,  <44.214592, 45.984737, 49.340328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068626, 45.612595, 49.354576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560532, 0.250078, 0.789471,
		-0.743399, 0.268125, -0.612754,
		-0.364913, -0.930360, 0.035616,
		43.959152, 45.333488, 49.365261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499187, 46.052593, 49.512508>,  <44.214592, 45.984737, 49.340328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499187, 46.052593, 49.512508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547783, 45.662224, 49.584969>,  <43.576942, 45.428001, 49.628445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547783, 45.662224, 49.584969>,  <43.499187, 46.052593, 49.512508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547783, 45.662224, 49.584969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503276, 0.096736, 0.858694,
		-0.855543, -0.195490, -0.479406,
		0.121490, -0.975923, 0.181147,
		43.584229, 45.369446, 49.639313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841114, 45.769409, 49.639801>,  <43.499187, 46.052593, 49.512508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841114, 45.769409, 49.639801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129570, 45.564873, 49.826771>,  <43.302643, 45.442150, 49.938953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129570, 45.564873, 49.826771>,  <42.841114, 45.769409, 49.639801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129570, 45.564873, 49.826771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562090, -0.037443, 0.826228,
		-0.404983, -0.858561, -0.314422,
		0.721141, -0.511342, 0.467425,
		43.345913, 45.411469, 49.966999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491341, 45.265144, 49.940941>,  <42.841114, 45.769409, 49.639801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491341, 45.265144, 49.940941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833115, 45.271103, 50.148678>,  <43.038181, 45.274677, 50.273319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833115, 45.271103, 50.148678>,  <42.491341, 45.265144, 49.940941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833115, 45.271103, 50.148678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513595, -0.126760, 0.848618,
		0.078472, -0.991822, -0.100659,
		0.854437, 0.014895, 0.519341,
		43.089447, 45.275570, 50.304482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446739, 44.704620, 50.288311>,  <42.491341, 45.265144, 49.940941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446739, 44.704620, 50.288311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722832, 44.879959, 50.518593>,  <42.888485, 44.985161, 50.656761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722832, 44.879959, 50.518593>,  <42.446739, 44.704620, 50.288311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722832, 44.879959, 50.518593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438510, -0.379486, 0.814677,
		0.575582, -0.814767, -0.069714,
		0.690227, 0.438343, 0.575709,
		42.929901, 45.011463, 50.691307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671883, 44.235172, 50.776421>,  <42.446739, 44.704620, 50.288311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671883, 44.235172, 50.776421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747990, 44.590836, 50.942886>,  <42.793655, 44.804234, 51.042767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747990, 44.590836, 50.942886>,  <42.671883, 44.235172, 50.776421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747990, 44.590836, 50.942886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235895, -0.370085, 0.898549,
		0.952969, -0.269141, 0.139331,
		0.190272, 0.889157, 0.416169,
		42.805073, 44.857582, 51.067738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092220, 44.110931, 51.317547>,  <42.671883, 44.235172, 50.776421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092220, 44.110931, 51.317547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949795, 44.473427, 51.408726>,  <42.864338, 44.690922, 51.463432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949795, 44.473427, 51.408726>,  <43.092220, 44.110931, 51.317547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949795, 44.473427, 51.408726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095092, -0.277804, 0.955920,
		0.929610, 0.318693, 0.185092,
		-0.356064, 0.906234, 0.227944,
		42.842976, 44.745296, 51.477108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313156, 44.208645, 51.949055>,  <43.092220, 44.110931, 51.317547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313156, 44.208645, 51.949055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022415, 44.482437, 51.926521>,  <42.847973, 44.646713, 51.913002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022415, 44.482437, 51.926521>,  <43.313156, 44.208645, 51.949055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022415, 44.482437, 51.926521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262979, -0.201607, 0.943502,
		0.634455, 0.700597, 0.326542,
		-0.726848, 0.684484, -0.056332,
		42.804359, 44.687782, 51.909622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399158, 44.701855, 52.549934>,  <43.313156, 44.208645, 51.949055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399158, 44.701855, 52.549934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019432, 44.715523, 52.424950>,  <42.791595, 44.723724, 52.349960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019432, 44.715523, 52.424950>,  <43.399158, 44.701855, 52.549934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019432, 44.715523, 52.424950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314322, -0.106485, 0.943325,
		-0.001038, 0.993727, 0.111828,
		-0.949316, 0.034171, -0.312461,
		42.734638, 44.725773, 52.331211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948261, 45.171856, 53.069199>,  <43.399158, 44.701855, 52.549934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948261, 45.171856, 53.069199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664585, 44.960487, 52.882511>,  <42.494381, 44.833668, 52.770500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664585, 44.960487, 52.882511>,  <42.948261, 45.171856, 53.069199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664585, 44.960487, 52.882511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444144, -0.179254, 0.877841,
		-0.547531, 0.829842, -0.107571,
		-0.709187, -0.528422, -0.466716,
		42.451828, 44.801960, 52.742496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338375, 45.315090, 53.398182>,  <42.948261, 45.171856, 53.069199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338375, 45.315090, 53.398182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249718, 44.971275, 53.213982>,  <42.196522, 44.764984, 53.103462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249718, 44.971275, 53.213982>,  <42.338375, 45.315090, 53.398182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249718, 44.971275, 53.213982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572204, -0.267752, 0.775172,
		-0.789592, 0.435317, -0.432486,
		-0.221647, -0.859539, -0.460505,
		42.183224, 44.713413, 53.075829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624466, 45.299046, 53.346565>,  <42.338375, 45.315090, 53.398182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624466, 45.299046, 53.346565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763573, 44.925186, 53.316940>,  <41.847038, 44.700871, 53.299164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763573, 44.925186, 53.316940>,  <41.624466, 45.299046, 53.346565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763573, 44.925186, 53.316940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394601, -0.217564, 0.892724,
		-0.850498, -0.281235, -0.444476,
		0.347767, -0.934651, -0.074062,
		41.867905, 44.644791, 53.294724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129593, 44.866383, 53.779499>,  <41.624466, 45.299046, 53.346565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129593, 44.866383, 53.779499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402946, 44.585457, 53.699764>,  <41.566959, 44.416901, 53.651924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402946, 44.585457, 53.699764>,  <41.129593, 44.866383, 53.779499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402946, 44.585457, 53.699764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299186, -0.518482, 0.801039,
		-0.665940, -0.487776, -0.564445,
		0.683383, -0.702318, -0.199342,
		41.607960, 44.374763, 53.639961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.626415, 42.424458, 56.155502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.354980, 42.637154, 55.952808>,  <47.192120, 42.764771, 55.831192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.354980, 42.637154, 55.952808>,  <47.626415, 42.424458, 56.155502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.354980, 42.637154, 55.952808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112083, -0.606842, -0.786880,
		-0.725919, -0.590762, 0.352196,
		-0.678586, 0.531736, -0.506732,
		47.151405, 42.796673, 55.800789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.341881, 41.854153, 55.786476>,  <47.626415, 42.424458, 56.155502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.341881, 41.854153, 55.786476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.214966, 42.198898, 55.628231>,  <47.138817, 42.405746, 55.533283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.214966, 42.198898, 55.628231>,  <47.341881, 41.854153, 55.786476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.214966, 42.198898, 55.628231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092379, -0.387098, -0.917399,
		-0.943819, -0.327628, 0.043204,
		-0.317290, 0.861867, -0.395616,
		47.119778, 42.457458, 55.509544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742371, 41.724033, 55.352551>,  <47.341881, 41.854153, 55.786476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742371, 41.724033, 55.352551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.949265, 42.043884, 55.230530>,  <47.073402, 42.235794, 55.157318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.949265, 42.043884, 55.230530>,  <46.742371, 41.724033, 55.352551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.949265, 42.043884, 55.230530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015230, -0.364980, -0.930891,
		-0.855706, 0.476846, -0.200960,
		0.517238, 0.799630, -0.305053,
		47.104435, 42.283772, 55.139015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.568237, 41.761875, 54.688728>,  <46.742371, 41.724033, 55.352551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.568237, 41.761875, 54.688728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.855652, 42.039986, 54.695637>,  <47.028099, 42.206852, 54.699780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.855652, 42.039986, 54.695637>,  <46.568237, 41.761875, 54.688728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.855652, 42.039986, 54.695637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196929, -0.179580, -0.963831,
		-0.667028, 0.695947, -0.265955,
		0.718535, 0.695276, 0.017267,
		47.071213, 42.248569, 54.700817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.370598, 42.256981, 54.194065>,  <46.568237, 41.761875, 54.688728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.370598, 42.256981, 54.194065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.766098, 42.295265, 54.240051>,  <47.003399, 42.318237, 54.267643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.766098, 42.295265, 54.240051>,  <46.370598, 42.256981, 54.194065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.766098, 42.295265, 54.240051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105887, 0.095118, -0.989818,
		-0.105672, 0.990854, 0.083913,
		0.988747, 0.095711, 0.114970,
		47.062721, 42.323978, 54.274544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487446, 42.808102, 53.711262>,  <46.370598, 42.256981, 54.194065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487446, 42.808102, 53.711262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.842865, 42.634979, 53.772141>,  <47.056118, 42.531105, 53.808666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.842865, 42.634979, 53.772141>,  <46.487446, 42.808102, 53.711262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.842865, 42.634979, 53.772141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087353, -0.166072, -0.982237,
		0.450391, 0.886060, -0.109756,
		0.888548, -0.432803, 0.152197,
		47.109428, 42.505138, 53.817799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.957386, 43.221783, 53.282780>,  <46.487446, 42.808102, 53.711262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.957386, 43.221783, 53.282780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.152107, 42.882858, 53.367710>,  <47.268940, 42.679504, 53.418667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.152107, 42.882858, 53.367710>,  <46.957386, 43.221783, 53.282780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.152107, 42.882858, 53.367710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319480, -0.053522, -0.946080,
		0.812990, 0.528391, 0.244644,
		0.486806, -0.847313, 0.212323,
		47.298149, 42.628666, 53.431408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.589733, 43.404732, 53.152683>,  <46.957386, 43.221783, 53.282780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.589733, 43.404732, 53.152683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.512489, 43.014061, 53.115135>,  <47.466145, 42.779659, 53.092606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.512489, 43.014061, 53.115135>,  <47.589733, 43.404732, 53.152683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.512489, 43.014061, 53.115135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238132, 0.046162, -0.970135,
		0.951841, -0.209697, 0.223664,
		-0.193110, -0.976676, -0.093874,
		47.454556, 42.721058, 53.086971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.114166, 43.293472, 52.697140>,  <47.589733, 43.404732, 53.152683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.114166, 43.293472, 52.697140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.899307, 42.956596, 52.678425>,  <47.770393, 42.754471, 52.667194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.899307, 42.956596, 52.678425>,  <48.114166, 43.293472, 52.697140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.899307, 42.956596, 52.678425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302707, -0.140694, -0.942642,
		0.787302, -0.520500, 0.330510,
		-0.537145, -0.842191, -0.046791,
		47.738163, 42.703938, 52.664387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.521347, 42.675877, 52.532085>,  <48.114166, 43.293472, 52.697140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.521347, 42.675877, 52.532085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.148720, 42.558464, 52.446274>,  <47.925144, 42.488014, 52.394787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.148720, 42.558464, 52.446274>,  <48.521347, 42.675877, 52.532085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.148720, 42.558464, 52.446274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308555, -0.326206, -0.893523,
		0.192298, -0.898570, 0.394453,
		-0.931566, -0.293533, -0.214530,
		47.869251, 42.470406, 52.381916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.602650, 42.015961, 52.421070>,  <48.521347, 42.675877, 52.532085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.602650, 42.015961, 52.421070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.273979, 42.123550, 52.220070>,  <48.076778, 42.188107, 52.099468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.273979, 42.123550, 52.220070>,  <48.602650, 42.015961, 52.421070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.273979, 42.123550, 52.220070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383538, -0.391224, -0.836566,
		-0.421608, -0.880111, 0.218295,
		-0.821672, 0.268978, -0.502499,
		48.027477, 42.204243, 52.069321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.408546, 41.453384, 51.982441>,  <48.602650, 42.015961, 52.421070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.408546, 41.453384, 51.982441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.233147, 41.776314, 51.824474>,  <48.127907, 41.970070, 51.729694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.233147, 41.776314, 51.824474>,  <48.408546, 41.453384, 51.982441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.233147, 41.776314, 51.824474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342141, -0.256373, -0.903998,
		-0.831060, -0.531516, -0.163798,
		-0.438496, 0.807319, -0.394915,
		48.101597, 42.018509, 51.706001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.160332, 41.170750, 51.457645>,  <48.408546, 41.453384, 51.982441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.160332, 41.170750, 51.457645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.178085, 41.564575, 51.389923>,  <48.188736, 41.800869, 51.349289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.178085, 41.564575, 51.389923>,  <48.160332, 41.170750, 51.457645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.178085, 41.564575, 51.389923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266135, -0.174999, -0.947917,
		-0.962913, -0.002987, -0.269794,
		0.044382, 0.984564, -0.169304,
		48.191399, 41.859943, 51.339130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.755772, 41.339096, 50.812912>,  <48.160332, 41.170750, 51.457645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.755772, 41.339096, 50.812912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.012459, 41.640327, 50.870983>,  <48.166470, 41.821064, 50.905827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.012459, 41.640327, 50.870983>,  <47.755772, 41.339096, 50.812912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.012459, 41.640327, 50.870983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308733, -0.080376, -0.947747,
		-0.702057, 0.653005, -0.284078,
		0.641716, 0.753076, 0.145176,
		48.204975, 41.866249, 50.914536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001083, 41.039547, 50.698143>,  <47.755772, 41.339096, 50.812912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001083, 41.039547, 50.698143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.924774, 40.660706, 50.594913>,  <46.878990, 40.433403, 50.532974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.924774, 40.660706, 50.594913>,  <47.001083, 41.039547, 50.698143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.924774, 40.660706, 50.594913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413476, -0.160917, 0.896183,
		-0.890305, 0.277678, -0.360905,
		-0.190775, -0.947101, -0.258079,
		46.867542, 40.376575, 50.517490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358929, 40.896137, 50.985069>,  <47.001083, 41.039547, 50.698143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358929, 40.896137, 50.985069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.512131, 40.529053, 50.942894>,  <46.604053, 40.308804, 50.917587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.512131, 40.529053, 50.942894>,  <46.358929, 40.896137, 50.985069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512131, 40.529053, 50.942894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331855, -0.243218, 0.911437,
		-0.862077, -0.314099, -0.397700,
		0.383009, -0.917708, -0.105437,
		46.627033, 40.253742, 50.911263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746670, 40.431877, 51.070175>,  <46.358929, 40.896137, 50.985069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746670, 40.431877, 51.070175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.078499, 40.228363, 51.162216>,  <46.277596, 40.106255, 51.217442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.078499, 40.228363, 51.162216>,  <45.746670, 40.431877, 51.070175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.078499, 40.228363, 51.162216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385023, -0.222729, 0.895628,
		-0.404435, -0.831581, -0.380665,
		0.829572, -0.508788, 0.230098,
		46.327370, 40.075726, 51.231247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462662, 39.887985, 51.383923>,  <45.746670, 40.431877, 51.070175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462662, 39.887985, 51.383923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.838089, 39.876350, 51.521473>,  <46.063343, 39.869370, 51.604004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.838089, 39.876350, 51.521473>,  <45.462662, 39.887985, 51.383923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838089, 39.876350, 51.521473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344188, -0.151301, 0.926630,
		0.025073, -0.988060, -0.152018,
		0.938566, -0.029089, 0.343872,
		46.119659, 39.867622, 51.624634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464890, 39.308517, 51.904953>,  <45.462662, 39.887985, 51.383923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464890, 39.308517, 51.904953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.779381, 39.543327, 51.982162>,  <45.968075, 39.684212, 52.028488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.779381, 39.543327, 51.982162>,  <45.464890, 39.308517, 51.904953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779381, 39.543327, 51.982162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299686, 0.089051, 0.949873,
		0.540408, -0.804658, 0.245936,
		0.786224, 0.587023, 0.193020,
		46.015247, 39.719433, 52.040070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815231, 39.033859, 52.552212>,  <45.464890, 39.308517, 51.904953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815231, 39.033859, 52.552212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.946465, 39.410645, 52.523716>,  <46.025204, 39.636715, 52.506618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.946465, 39.410645, 52.523716>,  <45.815231, 39.033859, 52.552212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.946465, 39.410645, 52.523716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021199, 0.082739, 0.996346,
		0.944411, -0.325373, 0.047114,
		0.328082, 0.941959, -0.071242,
		46.044888, 39.693233, 52.502342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438667, 39.067905, 52.923916>,  <45.815231, 39.033859, 52.552212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438667, 39.067905, 52.923916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.250854, 39.420898, 52.912838>,  <46.138168, 39.632694, 52.906193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.250854, 39.420898, 52.912838>,  <46.438667, 39.067905, 52.923916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.250854, 39.420898, 52.912838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026674, 0.045533, 0.998607,
		0.882515, 0.468135, -0.044918,
		-0.469528, 0.882483, -0.027696,
		46.109997, 39.685642, 52.904530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.662292, 39.318432, 53.589199>,  <46.438667, 39.067905, 52.923916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.662292, 39.318432, 53.589199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.366676, 39.567886, 53.487301>,  <46.189304, 39.717560, 53.426163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.366676, 39.567886, 53.487301>,  <46.662292, 39.318432, 53.589199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366676, 39.567886, 53.487301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242560, 0.106450, 0.964278,
		0.628475, 0.774435, 0.072598,
		-0.739043, 0.623634, -0.254748,
		46.144962, 39.754978, 53.410877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806255, 39.975323, 53.960270>,  <46.662292, 39.318432, 53.589199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806255, 39.975323, 53.960270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.419174, 39.985085, 53.859898>,  <46.186928, 39.990940, 53.799675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.419174, 39.985085, 53.859898>,  <46.806255, 39.975323, 53.960270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419174, 39.985085, 53.859898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230070, 0.321513, 0.918530,
		0.103093, 0.946591, -0.305513,
		-0.967698, 0.024405, -0.250928,
		46.128864, 39.992405, 53.784618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636215, 40.484108, 54.376789>,  <46.806255, 39.975323, 53.960270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636215, 40.484108, 54.376789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.288651, 40.326859, 54.256496>,  <46.080112, 40.232510, 54.184319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.288651, 40.326859, 54.256496>,  <46.636215, 40.484108, 54.376789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.288651, 40.326859, 54.256496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455295, 0.396499, 0.797180,
		-0.194147, 0.829605, -0.523510,
		-0.868915, -0.393121, -0.300736,
		46.027977, 40.208923, 54.166275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160084, 40.996788, 54.255402>,  <46.636215, 40.484108, 54.376789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160084, 40.996788, 54.255402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.931572, 40.674744, 54.319191>,  <45.794464, 40.481518, 54.357464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.931572, 40.674744, 54.319191>,  <46.160084, 40.996788, 54.255402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.931572, 40.674744, 54.319191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509410, 0.500161, 0.700243,
		-0.643540, 0.318794, -0.695864,
		-0.571277, -0.805115, 0.159477,
		45.760189, 40.433208, 54.367035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514339, 41.270557, 54.224678>,  <46.160084, 40.996788, 54.255402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514339, 41.270557, 54.224678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.482376, 40.937096, 54.443268>,  <45.463200, 40.737019, 54.574421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.482376, 40.937096, 54.443268>,  <45.514339, 41.270557, 54.224678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482376, 40.937096, 54.443268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467617, 0.515510, 0.718042,
		-0.880312, -0.198162, -0.431025,
		-0.079909, -0.833656, 0.546473,
		45.458405, 40.687000, 54.607208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838844, 41.278351, 54.520451>,  <45.514339, 41.270557, 54.224678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838844, 41.278351, 54.520451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.029125, 41.010689, 54.748817>,  <45.143295, 40.850094, 54.885838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.029125, 41.010689, 54.748817>,  <44.838844, 41.278351, 54.520451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029125, 41.010689, 54.748817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383794, 0.426112, 0.819226,
		-0.791460, -0.608822, -0.054113,
		0.475704, -0.669152, 0.570912,
		45.171837, 40.809944, 54.920090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278812, 41.019093, 54.899738>,  <44.838844, 41.278351, 54.520451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278812, 41.019093, 54.899738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.629211, 40.975082, 55.087582>,  <44.839451, 40.948677, 55.200287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.629211, 40.975082, 55.087582>,  <44.278812, 41.019093, 54.899738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629211, 40.975082, 55.087582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346489, 0.533756, 0.771395,
		-0.335531, -0.838450, 0.429443,
		0.875994, -0.110030, 0.469605,
		44.892010, 40.942074, 55.228462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776215, 40.566467, 54.936539>,  <44.278812, 41.019093, 54.899738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776215, 40.566467, 54.936539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.397366, 40.527824, 54.814144>,  <43.170055, 40.504639, 54.740707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.397366, 40.527824, 54.814144>,  <43.776215, 40.566467, 54.936539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397366, 40.527824, 54.814144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318073, -0.156822, -0.935006,
		0.042346, -0.982890, 0.179259,
		-0.947120, -0.096611, -0.305990,
		43.113228, 40.498840, 54.722347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731895, 39.901096, 54.545631>,  <43.776215, 40.566467, 54.936539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731895, 39.901096, 54.545631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.404770, 40.104744, 54.438316>,  <43.208496, 40.226933, 54.373928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.404770, 40.104744, 54.438316>,  <43.731895, 39.901096, 54.545631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404770, 40.104744, 54.438316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177421, -0.220430, -0.959131,
		-0.547449, -0.831991, 0.089942,
		-0.817815, 0.509118, -0.268287,
		43.159424, 40.257481, 54.357830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348774, 39.392353, 54.029949>,  <43.731895, 39.901096, 54.545631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348774, 39.392353, 54.029949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.239647, 39.772339, 53.969112>,  <43.174171, 40.000332, 53.932610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.239647, 39.772339, 53.969112>,  <43.348774, 39.392353, 54.029949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239647, 39.772339, 53.969112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061308, -0.140603, -0.988166,
		-0.960111, -0.278910, -0.019882,
		-0.272814, 0.949968, -0.152094,
		43.157803, 40.057331, 53.923485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833111, 39.352879, 53.554127>,  <43.348774, 39.392353, 54.029949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833111, 39.352879, 53.554127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.944092, 39.737175, 53.553848>,  <43.010681, 39.967751, 53.553680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.944092, 39.737175, 53.553848>,  <42.833111, 39.352879, 53.554127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944092, 39.737175, 53.553848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003923, -0.001858, -0.999991,
		-0.960731, 0.277448, -0.004284,
		0.277453, 0.960739, -0.000697,
		43.027328, 40.025398, 53.553638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340408, 39.724815, 53.204731>,  <42.833111, 39.352879, 53.554127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340408, 39.724815, 53.204731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.697296, 39.905281, 53.196877>,  <42.911430, 40.013561, 53.192162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.697296, 39.905281, 53.196877>,  <42.340408, 39.724815, 53.204731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697296, 39.905281, 53.196877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004413, -0.052199, -0.998627,
		-0.451573, 0.890911, -0.048564,
		0.892223, 0.451168, -0.019640,
		42.964962, 40.040630, 53.190983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257725, 40.221352, 52.613197>,  <42.340408, 39.724815, 53.204731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257725, 40.221352, 52.613197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.651985, 40.198669, 52.676796>,  <42.888542, 40.185059, 52.714954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.651985, 40.198669, 52.676796>,  <42.257725, 40.221352, 52.613197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651985, 40.198669, 52.676796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163728, 0.091825, -0.982223,
		0.041099, 0.994159, 0.099792,
		0.985649, -0.056707, 0.158998,
		42.947681, 40.181656, 52.724495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655521, 40.879173, 52.328770>,  <42.257725, 40.221352, 52.613197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655521, 40.879173, 52.328770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.878723, 40.547699, 52.346260>,  <43.012646, 40.348816, 52.356754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.878723, 40.547699, 52.346260>,  <42.655521, 40.879173, 52.328770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878723, 40.547699, 52.346260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162813, 0.057659, -0.984971,
		0.813709, 0.556737, 0.167095,
		0.558004, -0.828685, 0.043726,
		43.046124, 40.299095, 52.359379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076080, 40.997341, 51.745510>,  <42.655521, 40.879173, 52.328770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076080, 40.997341, 51.745510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.174484, 40.627357, 51.861389>,  <43.233528, 40.405365, 51.930916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.174484, 40.627357, 51.861389>,  <43.076080, 40.997341, 51.745510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174484, 40.627357, 51.861389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476413, -0.144900, -0.867200,
		0.844103, 0.351357, 0.405016,
		0.246009, -0.924961, 0.289701,
		43.248287, 40.349869, 51.948299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736595, 40.929096, 51.897972>,  <43.076080, 40.997341, 51.745510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736595, 40.929096, 51.897972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.619827, 40.574318, 51.754803>,  <43.549767, 40.361450, 51.668900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.619827, 40.574318, 51.754803>,  <43.736595, 40.929096, 51.897972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619827, 40.574318, 51.754803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270846, 0.282249, -0.920314,
		0.917294, -0.365596, 0.157833,
		-0.291915, -0.886947, -0.357926,
		43.532253, 40.308235, 51.647427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267719, 40.685436, 51.441231>,  <43.736595, 40.929096, 51.897972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267719, 40.685436, 51.441231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.964409, 40.445374, 51.339386>,  <43.782421, 40.301334, 51.278278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.964409, 40.445374, 51.339386>,  <44.267719, 40.685436, 51.441231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964409, 40.445374, 51.339386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312402, 0.008290, -0.949914,
		0.572208, -0.799839, 0.181204,
		-0.758276, -0.600157, -0.254615,
		43.736927, 40.265327, 51.263000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521282, 40.202808, 50.979492>,  <44.267719, 40.685436, 51.441231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521282, 40.202808, 50.979492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.126293, 40.192299, 50.917248>,  <43.889301, 40.185993, 50.879902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.126293, 40.192299, 50.917248>,  <44.521282, 40.202808, 50.979492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126293, 40.192299, 50.917248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156223, -0.023002, -0.987454,
		0.022369, -0.999390, 0.026819,
		-0.987468, -0.026278, -0.155613,
		43.830051, 40.184418, 50.870564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336830, 39.722988, 50.351761>,  <44.521282, 40.202808, 50.979492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336830, 39.722988, 50.351761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.021854, 39.968422, 50.375290>,  <43.832870, 40.115681, 50.389408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.021854, 39.968422, 50.375290>,  <44.336830, 39.722988, 50.351761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021854, 39.968422, 50.375290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067869, 0.008546, -0.997658,
		-0.612649, -0.789584, 0.034914,
		-0.787436, 0.613584, 0.058824,
		43.785625, 40.152496, 50.392937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813213, 39.346992, 50.047855>,  <44.336830, 39.722988, 50.351761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813213, 39.346992, 50.047855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.715271, 39.731804, 49.999596>,  <43.656506, 39.962688, 49.970642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.715271, 39.731804, 49.999596>,  <43.813213, 39.346992, 50.047855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715271, 39.731804, 49.999596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022183, -0.129961, -0.991271,
		-0.969306, -0.240041, 0.053162,
		-0.244855, 0.962024, -0.120647,
		43.641815, 40.020412, 49.963402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261105, 39.310234, 49.649673>,  <43.813213, 39.346992, 50.047855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261105, 39.310234, 49.649673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.376625, 39.691200, 49.610687>,  <43.445938, 39.919781, 49.587296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.376625, 39.691200, 49.610687>,  <43.261105, 39.310234, 49.649673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376625, 39.691200, 49.610687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103268, -0.070217, -0.992172,
		-0.951802, 0.296610, 0.078075,
		0.288806, 0.952414, -0.097463,
		43.463268, 39.976925, 49.581448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.812012, 44.107529, 53.960953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.211540, 44.111626, 53.979935>,  <41.451256, 44.114086, 53.991325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.211540, 44.111626, 53.979935>,  <40.812012, 44.107529, 53.960953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211540, 44.111626, 53.979935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035733, -0.506531, 0.861481,
		0.032865, -0.862161, -0.505567,
		0.998821, 0.010247, 0.047455,
		41.511185, 44.114700, 53.994171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015953, 43.509903, 54.218266>,  <40.812012, 44.107529, 53.960953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015953, 43.509903, 54.218266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.338123, 43.736717, 54.287270>,  <41.531425, 43.872807, 54.328674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.338123, 43.736717, 54.287270>,  <41.015953, 43.509903, 54.218266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338123, 43.736717, 54.287270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054829, -0.218534, 0.974288,
		0.590160, -0.794172, -0.144922,
		0.805422, 0.567040, 0.172513,
		41.579750, 43.906830, 54.339024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402031, 43.056393, 54.601372>,  <41.015953, 43.509903, 54.218266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402031, 43.056393, 54.601372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561264, 43.412811, 54.688610>,  <41.656803, 43.626663, 54.740952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561264, 43.412811, 54.688610>,  <41.402031, 43.056393, 54.601372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561264, 43.412811, 54.688610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024608, -0.227286, 0.973517,
		0.917020, -0.392906, -0.068552,
		0.398081, 0.891048, 0.218094,
		41.680687, 43.680126, 54.754040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829994, 42.891026, 55.042736>,  <41.402031, 43.056393, 54.601372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829994, 42.891026, 55.042736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.776493, 43.282700, 55.103790>,  <41.744392, 43.517704, 55.140423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.776493, 43.282700, 55.103790>,  <41.829994, 42.891026, 55.042736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776493, 43.282700, 55.103790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105401, -0.167202, 0.980272,
		0.985393, 0.115030, 0.125572,
		-0.133756, 0.979189, 0.152636,
		41.736366, 43.576458, 55.149582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355350, 43.028275, 55.590431>,  <41.829994, 42.891026, 55.042736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355350, 43.028275, 55.590431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062416, 43.299812, 55.611820>,  <41.886658, 43.462734, 55.624653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062416, 43.299812, 55.611820>,  <42.355350, 43.028275, 55.590431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062416, 43.299812, 55.611820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072718, -0.156045, 0.985070,
		0.677053, 0.717510, 0.163641,
		-0.732333, 0.678844, 0.053474,
		41.842716, 43.503464, 55.627861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478851, 43.368675, 56.165329>,  <42.355350, 43.028275, 55.590431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478851, 43.368675, 56.165329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.101273, 43.474503, 56.086365>,  <41.874725, 43.537998, 56.038986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.101273, 43.474503, 56.086365>,  <42.478851, 43.368675, 56.165329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101273, 43.474503, 56.086365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205127, -0.001561, 0.978734,
		0.258632, 0.964366, 0.055744,
		-0.943945, 0.264567, -0.197414,
		41.818089, 43.553871, 56.027142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334885, 43.861156, 56.648922>,  <42.478851, 43.368675, 56.165329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334885, 43.861156, 56.648922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.985977, 43.706863, 56.528679>,  <41.776634, 43.614288, 56.456532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.985977, 43.706863, 56.528679>,  <42.334885, 43.861156, 56.648922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985977, 43.706863, 56.528679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316040, -0.024458, 0.948430,
		-0.373189, 0.922288, -0.100572,
		-0.872266, -0.385729, -0.300607,
		41.724297, 43.591145, 56.438496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869217, 44.170994, 57.104916>,  <42.334885, 43.861156, 56.648922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869217, 44.170994, 57.104916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663597, 43.861549, 56.956718>,  <41.540226, 43.675880, 56.867798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663597, 43.861549, 56.956718>,  <41.869217, 44.170994, 57.104916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663597, 43.861549, 56.956718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528150, -0.054876, 0.847376,
		-0.675875, 0.631275, -0.380375,
		-0.514054, -0.773615, -0.370497,
		41.509380, 43.629463, 56.845570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146351, 44.293137, 57.190937>,  <41.869217, 44.170994, 57.104916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146351, 44.293137, 57.190937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.119629, 43.899231, 57.126724>,  <41.103596, 43.662888, 57.088196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.119629, 43.899231, 57.126724>,  <41.146351, 44.293137, 57.190937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119629, 43.899231, 57.126724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561510, -0.095892, 0.821895,
		-0.824769, 0.145047, -0.546551,
		-0.066803, -0.984767, -0.160534,
		41.099586, 43.603802, 57.078564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348091, 44.053558, 57.186783>,  <41.146351, 44.293137, 57.190937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348091, 44.053558, 57.186783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.576820, 43.743080, 57.293018>,  <40.714058, 43.556793, 57.356758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.576820, 43.743080, 57.293018>,  <40.348091, 44.053558, 57.186783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576820, 43.743080, 57.293018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582981, -0.156692, 0.797233,
		-0.577197, -0.610706, -0.542109,
		0.571819, -0.776199, 0.265588,
		40.748367, 43.510220, 57.372696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934662, 43.637234, 57.501366>,  <40.348091, 44.053558, 57.186783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934662, 43.637234, 57.501366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.285675, 43.501266, 57.636658>,  <40.496281, 43.419685, 57.717834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.285675, 43.501266, 57.636658>,  <39.934662, 43.637234, 57.501366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285675, 43.501266, 57.636658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391980, -0.102186, 0.914281,
		-0.276218, -0.934887, -0.222912,
		0.877528, -0.339918, 0.338232,
		40.548935, 43.399292, 57.738129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804871, 43.146152, 57.932701>,  <39.934662, 43.637234, 57.501366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804871, 43.146152, 57.932701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.176655, 43.252052, 58.035469>,  <40.399727, 43.315590, 58.097130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.176655, 43.252052, 58.035469>,  <39.804871, 43.146152, 57.932701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176655, 43.252052, 58.035469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264662, -0.006647, 0.964318,
		0.257010, -0.964295, 0.063891,
		0.929462, 0.264749, 0.256920,
		40.455494, 43.331478, 58.112545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040569, 42.814129, 58.560287>,  <39.804871, 43.146152, 57.932701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040569, 42.814129, 58.560287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.288582, 43.127907, 58.566044>,  <40.437389, 43.316174, 58.569500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.288582, 43.127907, 58.566044>,  <40.040569, 42.814129, 58.560287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288582, 43.127907, 58.566044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116809, 0.074155, 0.990382,
		0.775830, -0.615753, 0.137608,
		0.620035, 0.784442, 0.014394,
		40.474594, 43.363239, 58.570362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439476, 42.735516, 59.284683>,  <40.040569, 42.814129, 58.560287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439476, 42.735516, 59.284683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.402760, 43.101158, 59.126709>,  <40.380730, 43.320545, 59.031925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.402760, 43.101158, 59.126709>,  <40.439476, 42.735516, 59.284683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402760, 43.101158, 59.126709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053836, 0.391478, 0.918611,
		0.994322, 0.105581, 0.013279,
		-0.091790, 0.914110, -0.394939,
		40.375221, 43.375393, 59.008228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706032, 42.104946, 59.660442>,  <40.439476, 42.735516, 59.284683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706032, 42.104946, 59.660442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.960999, 41.824989, 59.789345>,  <41.113979, 41.657013, 59.866684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.960999, 41.824989, 59.789345>,  <40.706032, 42.104946, 59.660442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960999, 41.824989, 59.789345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372179, -0.086535, -0.924118,
		0.674671, 0.708985, 0.205327,
		0.637418, -0.699894, 0.322252,
		41.152225, 41.615021, 59.886021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339458, 42.203117, 59.376602>,  <40.706032, 42.104946, 59.660442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339458, 42.203117, 59.376602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.399261, 41.828590, 59.503700>,  <41.435143, 41.603874, 59.579960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.399261, 41.828590, 59.503700>,  <41.339458, 42.203117, 59.376602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399261, 41.828590, 59.503700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599950, -0.169533, -0.781868,
		0.785944, 0.307521, 0.536398,
		0.149503, -0.936317, 0.317741,
		41.444111, 41.547695, 59.599022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073372, 42.102776, 59.310482>,  <41.339458, 42.203117, 59.376602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073372, 42.102776, 59.310482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.885826, 41.751968, 59.268524>,  <41.773300, 41.541485, 59.243351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.885826, 41.751968, 59.268524>,  <42.073372, 42.102776, 59.310482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885826, 41.751968, 59.268524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539925, -0.190594, -0.819851,
		0.699035, -0.441030, 0.562888,
		-0.468862, -0.877021, -0.104891,
		41.745167, 41.488861, 59.237057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556805, 41.681637, 59.021152>,  <42.073372, 42.102776, 59.310482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556805, 41.681637, 59.021152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.232567, 41.456863, 58.955219>,  <42.038025, 41.321999, 58.915661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.232567, 41.456863, 58.955219>,  <42.556805, 41.681637, 59.021152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232567, 41.456863, 58.955219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410025, -0.343644, -0.844860,
		0.418109, -0.752425, 0.508962,
		-0.810595, -0.561930, -0.164833,
		41.989388, 41.288284, 58.905769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817932, 41.142029, 58.588970>,  <42.556805, 41.681637, 59.021152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817932, 41.142029, 58.588970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.422974, 41.080208, 58.575317>,  <42.185997, 41.043114, 58.567127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.422974, 41.080208, 58.575317>,  <42.817932, 41.142029, 58.588970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422974, 41.080208, 58.575317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095081, -0.406804, -0.908554,
		0.126534, -0.900347, 0.416371,
		-0.987395, -0.154552, -0.034131,
		42.126755, 41.033844, 58.565079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698215, 40.437790, 58.443905>,  <42.817932, 41.142029, 58.588970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698215, 40.437790, 58.443905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.396622, 40.664574, 58.311203>,  <42.215664, 40.800644, 58.231583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.396622, 40.664574, 58.311203>,  <42.698215, 40.437790, 58.443905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396622, 40.664574, 58.311203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019518, -0.485476, -0.874032,
		-0.656598, -0.665484, 0.354978,
		-0.753988, 0.566959, -0.331752,
		42.170425, 40.834660, 58.211678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168758, 40.041092, 58.233810>,  <42.698215, 40.437790, 58.443905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168758, 40.041092, 58.233810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.130249, 40.371002, 58.010929>,  <42.107143, 40.568951, 57.877201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.130249, 40.371002, 58.010929>,  <42.168758, 40.041092, 58.233810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130249, 40.371002, 58.010929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110610, -0.547468, -0.829484,
		-0.989190, -0.141492, -0.038521,
		-0.096276, 0.824778, -0.557200,
		42.101364, 40.618435, 57.843769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857582, 39.826393, 57.516068>,  <42.168758, 40.041092, 58.233810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857582, 39.826393, 57.516068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.962803, 40.203934, 57.436127>,  <42.025936, 40.430458, 57.388161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.962803, 40.203934, 57.436127>,  <41.857582, 39.826393, 57.516068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962803, 40.203934, 57.436127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202907, -0.256643, -0.944967,
		-0.943203, 0.208024, -0.259025,
		0.263053, 0.943854, -0.199857,
		42.041718, 40.487091, 57.376171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553391, 39.984219, 56.844963>,  <41.857582, 39.826393, 57.516068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553391, 39.984219, 56.844963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.836075, 40.266060, 56.870560>,  <42.005684, 40.435165, 56.885918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.836075, 40.266060, 56.870560>,  <41.553391, 39.984219, 56.844963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836075, 40.266060, 56.870560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234260, -0.147688, -0.960891,
		-0.667597, 0.694061, -0.269433,
		0.706708, 0.704605, 0.063995,
		42.048088, 40.477440, 56.889759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372833, 40.468708, 56.317169>,  <41.553391, 39.984219, 56.844963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372833, 40.468708, 56.317169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.763885, 40.499809, 56.395336>,  <41.998516, 40.518471, 56.442238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.763885, 40.499809, 56.395336>,  <41.372833, 40.468708, 56.317169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763885, 40.499809, 56.395336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200479, -0.063590, -0.977632,
		-0.063590, 0.994942, -0.077756,
		0.977632, 0.077756, 0.195421,
		42.057175, 40.523136, 56.453964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599659, 41.090252, 56.037205>,  <41.372833, 40.468708, 56.317169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599659, 41.090252, 56.037205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.920261, 40.853043, 56.067963>,  <42.112621, 40.710716, 56.086418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.920261, 40.853043, 56.067963>,  <41.599659, 41.090252, 56.037205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920261, 40.853043, 56.067963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120814, 0.034655, -0.992070,
		0.585657, 0.804438, 0.099422,
		0.801504, -0.593025, 0.076892,
		42.160713, 40.675137, 56.091030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086765, 41.400162, 55.685303>,  <41.599659, 41.090252, 56.037205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086765, 41.400162, 55.685303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.240128, 41.032066, 55.716709>,  <42.332146, 40.811211, 55.735554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.240128, 41.032066, 55.716709>,  <42.086765, 41.400162, 55.685303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240128, 41.032066, 55.716709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370089, 0.075189, -0.925949,
		0.846187, 0.384075, 0.369397,
		0.383408, -0.920235, 0.078517,
		42.355148, 40.755997, 55.740265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774082, 41.474327, 55.464539>,  <42.086765, 41.400162, 55.685303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774082, 41.474327, 55.464539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.688824, 41.087372, 55.409790>,  <42.637669, 40.855198, 55.376942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.688824, 41.087372, 55.409790>,  <42.774082, 41.474327, 55.464539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688824, 41.087372, 55.409790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486341, 0.016452, -0.873614,
		0.847374, -0.252773, 0.466973,
		-0.213143, -0.967386, -0.136875,
		42.624882, 40.797157, 55.368729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393738, 41.145374, 55.248840>,  <42.774082, 41.474327, 55.464539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393738, 41.145374, 55.248840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.103405, 40.890625, 55.144875>,  <42.929203, 40.737774, 55.082497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.103405, 40.890625, 55.144875>,  <43.393738, 41.145374, 55.248840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103405, 40.890625, 55.144875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456707, -0.163632, -0.874439,
		0.514378, -0.753402, 0.409635,
		-0.725834, -0.636875, -0.259915,
		42.885654, 40.699562, 55.066898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035370, 40.872894, 55.599545>,  <43.393738, 41.145374, 55.248840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035370, 40.872894, 55.599545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.424713, 40.956451, 55.637352>,  <44.658318, 41.006588, 55.660038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.424713, 40.956451, 55.637352>,  <44.035370, 40.872894, 55.599545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424713, 40.956451, 55.637352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196618, 0.548383, 0.812784,
		0.117953, -0.809715, 0.574847,
		0.973359, 0.208895, 0.094521,
		44.716721, 41.019119, 55.665707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193951, 40.689278, 56.337372>,  <44.035370, 40.872894, 55.599545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193951, 40.689278, 56.337372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.490059, 40.927208, 56.212036>,  <44.667725, 41.069965, 56.136833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.490059, 40.927208, 56.212036>,  <44.193951, 40.689278, 56.337372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490059, 40.927208, 56.212036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009333, 0.456933, 0.889452,
		0.672244, -0.661360, 0.332703,
		0.740271, 0.594824, -0.313343,
		44.712139, 41.105656, 56.118034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620247, 40.621140, 56.876995>,  <44.193951, 40.689278, 56.337372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620247, 40.621140, 56.876995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.712738, 40.952049, 56.672192>,  <44.768234, 41.150593, 56.549309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.712738, 40.952049, 56.672192>,  <44.620247, 40.621140, 56.876995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712738, 40.952049, 56.672192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075572, 0.539954, 0.838295,
		0.969960, -0.155144, 0.187371,
		0.231228, 0.827273, -0.512010,
		44.782108, 41.200230, 56.518589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.280666, 40.908916, 57.176991>,  <44.620247, 40.621140, 56.876995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.280666, 40.908916, 57.176991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.047863, 41.189621, 57.012650>,  <44.908180, 41.358044, 56.914043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.047863, 41.189621, 57.012650>,  <45.280666, 40.908916, 57.176991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047863, 41.189621, 57.012650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069352, 0.460568, 0.884911,
		0.810222, 0.543517, -0.219384,
		-0.582006, 0.701760, -0.410857,
		44.873260, 41.400150, 56.889393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585293, 41.532246, 57.339539>,  <45.280666, 40.908916, 57.176991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585293, 41.532246, 57.339539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.216110, 41.658318, 57.251160>,  <44.994602, 41.733959, 57.198132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.216110, 41.658318, 57.251160>,  <45.585293, 41.532246, 57.339539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216110, 41.658318, 57.251160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058990, 0.451418, 0.890361,
		0.380360, 0.834797, -0.398046,
		-0.922955, 0.315177, -0.220946,
		44.939224, 41.752869, 57.184875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562778, 42.221233, 57.647850>,  <45.585293, 41.532246, 57.339539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562778, 42.221233, 57.647850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.185188, 42.105606, 57.584152>,  <44.958633, 42.036232, 57.545933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.185188, 42.105606, 57.584152>,  <45.562778, 42.221233, 57.647850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185188, 42.105606, 57.584152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247364, 0.300320, 0.921205,
		-0.218464, 0.908983, -0.354998,
		-0.943973, -0.289064, -0.159240,
		44.901997, 42.018887, 57.536381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123154, 42.802773, 57.766586>,  <45.562778, 42.221233, 57.647850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.123154, 42.802773, 57.766586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.906548, 42.473579, 57.835247>,  <44.776585, 42.276062, 57.876446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.906548, 42.473579, 57.835247>,  <45.123154, 42.802773, 57.766586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906548, 42.473579, 57.835247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261346, 0.358858, 0.896058,
		-0.799039, 0.440365, -0.409409,
		-0.541512, -0.822982, 0.171654,
		44.744095, 42.226685, 57.886742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213242, 43.527576, 57.853447>,  <45.123154, 42.802773, 57.766586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213242, 43.527576, 57.853447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.520729, 43.757622, 57.965385>,  <45.705223, 43.895649, 58.032547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.520729, 43.757622, 57.965385>,  <45.213242, 43.527576, 57.853447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520729, 43.757622, 57.965385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412835, -0.111980, -0.903896,
		-0.488507, 0.810372, -0.323509,
		0.768719, 0.575115, 0.279847,
		45.751343, 43.930157, 58.049339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320240, 44.044407, 57.320648>,  <45.213242, 43.527576, 57.853447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320240, 44.044407, 57.320648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.678940, 44.061218, 57.496864>,  <45.894157, 44.071304, 57.602596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.678940, 44.061218, 57.496864>,  <45.320240, 44.044407, 57.320648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678940, 44.061218, 57.496864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441186, -0.162852, -0.882516,
		0.034649, 0.985755, -0.164581,
		0.896747, 0.042033, 0.440544,
		45.947964, 44.073830, 57.629028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776852, 44.441948, 56.953720>,  <45.320240, 44.044407, 57.320648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776852, 44.441948, 56.953720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.015503, 44.206581, 57.172005>,  <46.158691, 44.065361, 57.302975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.015503, 44.206581, 57.172005>,  <45.776852, 44.441948, 56.953720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015503, 44.206581, 57.172005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392338, -0.379332, -0.837961,
		0.700079, 0.714051, 0.004541,
		0.596624, -0.588421, 0.545712,
		46.194489, 44.030056, 57.335720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464310, 44.562992, 56.679852>,  <45.776852, 44.441948, 56.953720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464310, 44.562992, 56.679852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.483719, 44.208595, 56.864311>,  <46.495365, 43.995956, 56.974987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.483719, 44.208595, 56.864311>,  <46.464310, 44.562992, 56.679852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.483719, 44.208595, 56.864311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466957, -0.388006, -0.794609,
		0.882948, 0.253896, 0.394893,
		0.048527, -0.885996, 0.461147,
		46.498276, 43.942795, 57.002655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.162903, 44.358391, 56.487328>,  <46.464310, 44.562992, 56.679852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.162903, 44.358391, 56.487328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.964973, 44.035477, 56.615971>,  <46.846214, 43.841728, 56.693157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.964973, 44.035477, 56.615971>,  <47.162903, 44.358391, 56.487328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964973, 44.035477, 56.615971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467701, -0.559329, -0.684403,
		0.732395, -0.188244, 0.654341,
		-0.494826, -0.807289, 0.321608,
		46.816525, 43.793289, 56.712452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.632114, 43.852322, 56.355881>,  <47.162903, 44.358391, 56.487328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.632114, 43.852322, 56.355881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.281189, 43.660515, 56.348030>,  <47.070633, 43.545429, 56.343319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.281189, 43.660515, 56.348030>,  <47.632114, 43.852322, 56.355881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.281189, 43.660515, 56.348030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291616, -0.500155, -0.815356,
		0.381161, -0.721046, 0.578627,
		-0.877312, -0.479519, -0.019628,
		47.017994, 43.516659, 56.342140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.817379, 43.144989, 56.114120>,  <47.632114, 43.852322, 56.355881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.817379, 43.144989, 56.114120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.421356, 43.166016, 56.061935>,  <47.183743, 43.178631, 56.030624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.421356, 43.166016, 56.061935>,  <47.817379, 43.144989, 56.114120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.421356, 43.166016, 56.061935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057730, -0.693937, -0.717718,
		-0.128263, -0.718115, 0.684003,
		-0.990058, 0.052569, -0.130463,
		47.124340, 43.181786, 56.022797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.706593, 46.079956, 58.755974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.608711, 45.693977, 58.718021>,  <42.549984, 45.462391, 58.695251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.608711, 45.693977, 58.718021>,  <42.706593, 46.079956, 58.755974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608711, 45.693977, 58.718021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319328, 0.012192, -0.947566,
		0.915505, -0.262172, 0.305150,
		-0.244704, -0.964944, -0.094880,
		42.535301, 45.404495, 58.689556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318058, 45.673481, 58.579090>,  <42.706593, 46.079956, 58.755974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318058, 45.673481, 58.579090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.014854, 45.445374, 58.452461>,  <42.832932, 45.308510, 58.376484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.014854, 45.445374, 58.452461>,  <43.318058, 45.673481, 58.579090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014854, 45.445374, 58.452461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377260, 0.012597, -0.926022,
		0.532071, -0.821360, 0.205592,
		-0.758007, -0.570271, -0.316568,
		42.787453, 45.274292, 58.357491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633011, 45.105915, 58.271721>,  <43.318058, 45.673481, 58.579090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633011, 45.105915, 58.271721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.269196, 45.155571, 58.113060>,  <43.050907, 45.185364, 58.017864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.269196, 45.155571, 58.113060>,  <43.633011, 45.105915, 58.271721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269196, 45.155571, 58.113060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410191, 0.114288, -0.904810,
		-0.066988, -0.985661, -0.154869,
		-0.909536, 0.124138, -0.396654,
		42.996334, 45.192814, 57.994064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688614, 44.828037, 57.629883>,  <43.633011, 45.105915, 58.271721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688614, 44.828037, 57.629883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.332031, 45.002586, 57.581074>,  <43.118084, 45.107315, 57.551788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.332031, 45.002586, 57.581074>,  <43.688614, 44.828037, 57.629883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332031, 45.002586, 57.581074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196254, 0.129119, -0.972015,
		-0.408406, -0.890453, -0.200743,
		-0.891453, 0.436373, -0.122022,
		43.064594, 45.133499, 57.544468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576019, 44.552555, 56.988670>,  <43.688614, 44.828037, 57.629883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576019, 44.552555, 56.988670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.314377, 44.851295, 57.036594>,  <43.157391, 45.030540, 57.065350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.314377, 44.851295, 57.036594>,  <43.576019, 44.552555, 56.988670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314377, 44.851295, 57.036594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091609, 0.235449, -0.967560,
		-0.750832, -0.621915, -0.222428,
		-0.654110, 0.746851, 0.119809,
		43.118145, 45.075352, 57.072536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956676, 44.550377, 56.507118>,  <43.576019, 44.552555, 56.988670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956676, 44.550377, 56.507118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.041336, 44.924545, 56.620388>,  <43.092133, 45.149048, 56.688351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.041336, 44.924545, 56.620388>,  <42.956676, 44.550377, 56.507118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041336, 44.924545, 56.620388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083473, 0.271375, -0.958847,
		-0.973774, 0.226578, -0.020646,
		0.211650, 0.935424, 0.283172,
		43.104832, 45.205173, 56.705341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662720, 44.935230, 55.972271>,  <42.956676, 44.550377, 56.507118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662720, 44.935230, 55.972271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.899887, 45.203804, 56.150093>,  <43.042187, 45.364948, 56.256786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.899887, 45.203804, 56.150093>,  <42.662720, 44.935230, 55.972271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899887, 45.203804, 56.150093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246285, 0.374404, -0.893960,
		-0.766676, 0.639532, 0.056627,
		0.592918, 0.671432, 0.444554,
		43.077763, 45.405235, 56.283459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502415, 45.596485, 55.589134>,  <42.662720, 44.935230, 55.972271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502415, 45.596485, 55.589134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.849403, 45.652916, 55.779961>,  <43.057598, 45.686775, 55.894455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.849403, 45.652916, 55.779961>,  <42.502415, 45.596485, 55.589134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849403, 45.652916, 55.779961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331885, 0.550252, -0.766208,
		-0.370599, 0.822994, 0.430508,
		0.867473, 0.141077, 0.477062,
		43.109646, 45.695240, 55.923080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706596, 46.402863, 55.656273>,  <42.502415, 45.596485, 55.589134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706596, 46.402863, 55.656273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.048210, 46.194778, 55.657146>,  <43.253178, 46.069927, 55.657669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.048210, 46.194778, 55.657146>,  <42.706596, 46.402863, 55.656273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048210, 46.194778, 55.657146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312397, 0.509506, -0.801756,
		0.415965, 0.685412, 0.597648,
		0.854038, -0.520206, 0.002184,
		43.304420, 46.038715, 55.657803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208939, 46.824886, 55.492458>,  <42.706596, 46.402863, 55.656273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208939, 46.824886, 55.492458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.406776, 46.484932, 55.419720>,  <43.525478, 46.280960, 55.376076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.406776, 46.484932, 55.419720>,  <43.208939, 46.824886, 55.492458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406776, 46.484932, 55.419720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277403, 0.352658, -0.893689,
		0.823664, 0.391569, 0.410184,
		0.494596, -0.849886, -0.181849,
		43.555157, 46.229965, 55.365166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749123, 47.062859, 55.253212>,  <43.208939, 46.824886, 55.492458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749123, 47.062859, 55.253212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.751270, 46.679886, 55.137768>,  <43.752560, 46.450104, 55.068501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.751270, 46.679886, 55.137768>,  <43.749123, 47.062859, 55.253212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751270, 46.679886, 55.137768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535830, 0.246437, -0.807561,
		0.844309, -0.150310, 0.514344,
		0.005369, -0.957432, -0.288609,
		43.752880, 46.392654, 55.051186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399384, 46.926731, 55.085045>,  <43.749123, 47.062859, 55.253212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399384, 46.926731, 55.085045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.167923, 46.681870, 54.869476>,  <44.029045, 46.534954, 54.740135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.167923, 46.681870, 54.869476>,  <44.399384, 46.926731, 55.085045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167923, 46.681870, 54.869476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527608, 0.222917, -0.819719,
		0.621925, -0.758669, 0.193984,
		-0.578653, -0.612151, -0.538917,
		43.994328, 46.498222, 54.707802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992458, 46.661747, 55.485935>,  <44.399384, 46.926731, 55.085045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992458, 46.661747, 55.485935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.352020, 46.501846, 55.557671>,  <45.567757, 46.405907, 55.600712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.352020, 46.501846, 55.557671>,  <44.992458, 46.661747, 55.485935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352020, 46.501846, 55.557671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166236, 0.067543, 0.983770,
		-0.405380, -0.914130, -0.005739,
		0.898906, -0.399754, 0.179342,
		45.621693, 46.381920, 55.611473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913200, 46.057766, 55.866241>,  <44.992458, 46.661747, 55.485935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913200, 46.057766, 55.866241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.296944, 46.142029, 55.941338>,  <45.527191, 46.192589, 55.986393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.296944, 46.142029, 55.941338>,  <44.913200, 46.057766, 55.866241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296944, 46.142029, 55.941338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208348, 0.080133, 0.974767,
		0.190303, -0.974269, 0.120767,
		0.959363, 0.210663, 0.187737,
		45.584751, 46.205227, 55.997658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136822, 45.585445, 56.436943>,  <44.913200, 46.057766, 55.866241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136822, 45.585445, 56.436943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.383720, 45.899857, 56.450573>,  <45.531860, 46.088505, 56.458752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.383720, 45.899857, 56.450573>,  <45.136822, 45.585445, 56.436943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383720, 45.899857, 56.450573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118990, 0.050457, 0.991613,
		0.777717, -0.616127, 0.124674,
		0.617250, 0.786029, 0.034072,
		45.568897, 46.135666, 56.460796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.522541, 45.436783, 56.976665>,  <45.136822, 45.585445, 56.436943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.522541, 45.436783, 56.976665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.579056, 45.826721, 56.907711>,  <45.612965, 46.060684, 56.866341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.579056, 45.826721, 56.907711>,  <45.522541, 45.436783, 56.976665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579056, 45.826721, 56.907711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096287, 0.159773, 0.982446,
		0.985275, -0.155408, -0.071291,
		0.141289, 0.974844, -0.172384,
		45.621441, 46.119175, 56.855995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023354, 45.675392, 57.356438>,  <45.522541, 45.436783, 56.976665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.023354, 45.675392, 57.356438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.850136, 46.028404, 57.283112>,  <45.746204, 46.240211, 57.239117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.850136, 46.028404, 57.283112>,  <46.023354, 45.675392, 57.356438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850136, 46.028404, 57.283112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017463, 0.211548, 0.977211,
		0.901202, 0.419977, -0.107022,
		-0.433046, 0.882534, -0.183314,
		45.720222, 46.293163, 57.228119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374142, 46.187309, 57.884071>,  <46.023354, 45.675392, 57.356438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374142, 46.187309, 57.884071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.058136, 46.385704, 57.739914>,  <45.868534, 46.504742, 57.653419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.058136, 46.385704, 57.739914>,  <46.374142, 46.187309, 57.884071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058136, 46.385704, 57.739914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158735, 0.402308, 0.901638,
		0.592184, 0.769512, -0.239099,
		-0.790013, 0.495983, -0.360389,
		45.821133, 46.534500, 57.631798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.449684, 46.901012, 58.133076>,  <46.374142, 46.187309, 57.884071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.449684, 46.901012, 58.133076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.060860, 46.834930, 58.066368>,  <45.827564, 46.795280, 58.026344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.060860, 46.834930, 58.066368>,  <46.449684, 46.901012, 58.133076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060860, 46.834930, 58.066368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211319, 0.306458, 0.928131,
		-0.102225, 0.937438, -0.332806,
		-0.972057, -0.165206, -0.166771,
		45.769241, 46.785370, 58.016338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.052341, 47.423550, 58.444885>,  <46.449684, 46.901012, 58.133076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.052341, 47.423550, 58.444885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.756577, 47.157982, 58.400200>,  <45.579117, 46.998642, 58.373390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.756577, 47.157982, 58.400200>,  <46.052341, 47.423550, 58.444885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756577, 47.157982, 58.400200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409109, 0.311298, 0.857743,
		-0.534699, 0.679927, -0.501794,
		-0.739410, -0.663922, -0.111714,
		45.534752, 46.958805, 58.366684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315853, 47.777039, 58.613304>,  <46.052341, 47.423550, 58.444885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315853, 47.777039, 58.613304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.263245, 47.384163, 58.666977>,  <45.231682, 47.148438, 58.699181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.263245, 47.384163, 58.666977>,  <45.315853, 47.777039, 58.613304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263245, 47.384163, 58.666977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472327, 0.181096, 0.862619,
		-0.871557, 0.050070, -0.487732,
		-0.131517, -0.982190, 0.134186,
		45.223789, 47.089504, 58.707233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680195, 47.745247, 59.038643>,  <45.315853, 47.777039, 58.613304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680195, 47.745247, 59.038643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.828476, 47.377586, 59.091911>,  <44.917446, 47.156990, 59.123871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.828476, 47.377586, 59.091911>,  <44.680195, 47.745247, 59.038643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828476, 47.377586, 59.091911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350453, -0.005650, 0.936563,
		-0.860093, -0.393860, -0.324214,
		0.370707, -0.919153, 0.133170,
		44.939690, 47.101841, 59.131863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127716, 47.397461, 59.301991>,  <44.680195, 47.745247, 59.038643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127716, 47.397461, 59.301991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.478500, 47.234497, 59.403938>,  <44.688969, 47.136719, 59.465107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.478500, 47.234497, 59.403938>,  <44.127716, 47.397461, 59.301991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478500, 47.234497, 59.403938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312867, -0.081458, 0.946297,
		-0.364771, -0.909605, -0.198901,
		0.876959, -0.407411, 0.254871,
		44.741589, 47.112274, 59.480400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877712, 46.809868, 59.691246>,  <44.127716, 47.397461, 59.301991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877712, 46.809868, 59.691246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.246571, 46.926544, 59.792881>,  <44.467884, 46.996552, 59.853863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.246571, 46.926544, 59.792881>,  <43.877712, 46.809868, 59.691246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246571, 46.926544, 59.792881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186671, -0.239772, 0.952714,
		0.338821, -0.925973, -0.166655,
		0.922147, 0.291690, 0.254092,
		44.523216, 47.014050, 59.869110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051914, 46.355507, 60.178490>,  <43.877712, 46.809868, 59.691246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051914, 46.355507, 60.178490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.302567, 46.663681, 60.225414>,  <44.452957, 46.848587, 60.253571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.302567, 46.663681, 60.225414>,  <44.051914, 46.355507, 60.178490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302567, 46.663681, 60.225414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058141, -0.196328, 0.978813,
		0.777144, -0.606534, -0.167819,
		0.626631, 0.770436, 0.117310,
		44.490555, 46.894814, 60.260609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457470, 46.078968, 60.552826>,  <44.051914, 46.355507, 60.178490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457470, 46.078968, 60.552826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.532181, 46.466141, 60.620018>,  <44.577007, 46.698444, 60.660332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.532181, 46.466141, 60.620018>,  <44.457470, 46.078968, 60.552826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532181, 46.466141, 60.620018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103153, -0.189364, 0.976474,
		0.976972, -0.165056, -0.135214,
		0.186778, 0.967935, 0.167977,
		44.588215, 46.756523, 60.670410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818432, 46.026035, 60.008949>,  <44.457470, 46.078968, 60.552826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818432, 46.026035, 60.008949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.728149, 45.674812, 60.177746>,  <44.673981, 45.464077, 60.279022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.728149, 45.674812, 60.177746>,  <44.818432, 46.026035, 60.008949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728149, 45.674812, 60.177746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440695, -0.478335, -0.759595,
		0.868819, 0.014526, 0.494916,
		-0.225702, -0.878057, 0.421988,
		44.660439, 45.411396, 60.304344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366821, 45.748505, 60.174332>,  <44.818432, 46.026035, 60.008949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366821, 45.748505, 60.174332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.137161, 45.422989, 60.138321>,  <44.999367, 45.227680, 60.116714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.137161, 45.422989, 60.138321>,  <45.366821, 45.748505, 60.174332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137161, 45.422989, 60.138321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596959, -0.340828, -0.726275,
		0.560349, -0.470733, 0.681483,
		-0.574151, -0.813785, -0.090026,
		44.964916, 45.178852, 60.111313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758724, 45.125793, 60.111946>,  <45.366821, 45.748505, 60.174332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758724, 45.125793, 60.111946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.422791, 45.001381, 59.933987>,  <45.221230, 44.926735, 59.827213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.422791, 45.001381, 59.933987>,  <45.758724, 45.125793, 60.111946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.422791, 45.001381, 59.933987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539230, -0.572321, -0.617802,
		-0.062470, -0.758755, 0.648373,
		-0.839838, -0.311028, -0.444897,
		45.170837, 44.908073, 59.800518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866985, 44.476044, 60.104198>,  <45.758724, 45.125793, 60.111946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866985, 44.476044, 60.104198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.580750, 44.551338, 59.835129>,  <45.409008, 44.596516, 59.673687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.580750, 44.551338, 59.835129>,  <45.866985, 44.476044, 60.104198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580750, 44.551338, 59.835129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512956, -0.512050, -0.688971,
		-0.474130, -0.838078, 0.269866,
		-0.715596, 0.188232, -0.672675,
		45.366070, 44.607807, 59.633327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874676, 43.833973, 59.740192>,  <45.866985, 44.476044, 60.104198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874676, 43.833973, 59.740192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.652679, 44.055542, 59.491951>,  <45.519482, 44.188484, 59.343006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.652679, 44.055542, 59.491951>,  <45.874676, 43.833973, 59.740192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.652679, 44.055542, 59.491951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333096, -0.535639, -0.775976,
		-0.762252, -0.637382, 0.112766,
		-0.554994, 0.553927, -0.620601,
		45.486179, 44.221722, 59.305771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517212, 43.437866, 59.285645>,  <45.874676, 43.833973, 59.740192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517212, 43.437866, 59.285645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.515938, 43.782661, 59.082874>,  <45.515175, 43.989536, 58.961212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.515938, 43.782661, 59.082874>,  <45.517212, 43.437866, 59.285645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515938, 43.782661, 59.082874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317686, -0.479792, -0.817848,
		-0.948191, -0.163648, -0.272312,
		-0.003186, 0.861985, -0.506923,
		45.514980, 44.041256, 58.930798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247047, 43.332573, 58.579449>,  <45.517212, 43.437866, 59.285645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247047, 43.332573, 58.579449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.458939, 43.671158, 58.557941>,  <45.586075, 43.874310, 58.545036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.458939, 43.671158, 58.557941>,  <45.247047, 43.332573, 58.579449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458939, 43.671158, 58.557941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343402, -0.272007, -0.898937,
		-0.775539, 0.457731, -0.434767,
		0.529731, 0.846460, -0.053766,
		45.617859, 43.925095, 58.541813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545628, 43.112354, 58.347263>,  <45.247047, 43.332573, 58.579449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545628, 43.112354, 58.347263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.483612, 42.717880, 58.323898>,  <44.446404, 42.481197, 58.309879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.483612, 42.717880, 58.323898>,  <44.545628, 43.112354, 58.347263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483612, 42.717880, 58.323898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454022, 0.018616, 0.890795,
		-0.877398, 0.164625, -0.450634,
		-0.155036, -0.986180, -0.058410,
		44.437099, 42.422028, 58.306374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832176, 42.997387, 58.366188>,  <44.545628, 43.112354, 58.347263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832176, 42.997387, 58.366188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.018875, 42.671463, 58.503723>,  <44.130894, 42.475906, 58.586246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.018875, 42.671463, 58.503723>,  <43.832176, 42.997387, 58.366188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018875, 42.671463, 58.503723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515315, 0.065401, 0.854502,
		-0.718747, -0.576022, -0.389360,
		0.466747, -0.814814, 0.343839,
		44.158901, 42.427017, 58.606876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361603, 42.726616, 58.858036>,  <43.832176, 42.997387, 58.366188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361603, 42.726616, 58.858036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.690968, 42.521004, 58.954178>,  <43.888584, 42.397636, 59.011864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.690968, 42.521004, 58.954178>,  <43.361603, 42.726616, 58.858036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690968, 42.521004, 58.954178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357982, -0.141905, 0.922882,
		-0.440280, -0.845953, -0.300859,
		0.823409, -0.514029, 0.240358,
		43.937992, 42.366795, 59.026287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109390, 42.161552, 59.237850>,  <43.361603, 42.726616, 58.858036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109390, 42.161552, 59.237850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.496746, 42.175560, 59.336636>,  <43.729160, 42.183964, 59.395908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.496746, 42.175560, 59.336636>,  <43.109390, 42.161552, 59.237850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496746, 42.175560, 59.336636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240023, -0.138578, 0.960825,
		0.067875, -0.989732, -0.125791,
		0.968392, 0.035024, 0.246964,
		43.787262, 42.186066, 59.410725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213631, 41.667030, 59.764435>,  <43.109390, 42.161552, 59.237850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213631, 41.667030, 59.764435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.547203, 41.878532, 59.827660>,  <43.747345, 42.005432, 59.865597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.547203, 41.878532, 59.827660>,  <43.213631, 41.667030, 59.764435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547203, 41.878532, 59.827660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016096, -0.262989, 0.964665,
		0.551638, -0.807006, -0.210803,
		0.833928, 0.528752, 0.158064,
		43.797382, 42.037159, 59.875080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689941, 41.244785, 60.260120>,  <43.213631, 41.667030, 59.764435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689941, 41.244785, 60.260120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.778545, 41.634201, 60.282593>,  <43.831707, 41.867851, 60.296078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.778545, 41.634201, 60.282593>,  <43.689941, 41.244785, 60.260120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778545, 41.634201, 60.282593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034633, -0.065432, 0.997256,
		0.974543, -0.218954, -0.048210,
		0.221508, 0.973539, 0.056184,
		43.844997, 41.926262, 60.299446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298225, 41.289932, 60.816162>,  <43.689941, 41.244785, 60.260120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298225, 41.289932, 60.816162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.153091, 41.662361, 60.800964>,  <44.066010, 41.885818, 60.791847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.153091, 41.662361, 60.800964>,  <44.298225, 41.289932, 60.816162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153091, 41.662361, 60.800964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055897, 0.018951, 0.998257,
		0.930174, 0.364331, 0.045168,
		-0.362840, 0.931077, -0.037992,
		44.044239, 41.941685, 60.789566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631321, 41.780758, 61.293171>,  <44.298225, 41.289932, 60.816162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631321, 41.780758, 61.293171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.285347, 41.968193, 61.221272>,  <44.077763, 42.080654, 61.178131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.285347, 41.968193, 61.221272>,  <44.631321, 41.780758, 61.293171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285347, 41.968193, 61.221272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109472, 0.173385, 0.978751,
		0.489798, 0.866235, -0.098670,
		-0.864936, 0.468588, -0.179752,
		44.025867, 42.108768, 61.167347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644802, 42.253635, 61.763500>,  <44.631321, 41.780758, 61.293171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644802, 42.253635, 61.763500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.260323, 42.231148, 61.655472>,  <44.029636, 42.217655, 61.590656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.260323, 42.231148, 61.655472>,  <44.644802, 42.253635, 61.763500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260323, 42.231148, 61.655472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273930, 0.078898, 0.958508,
		-0.032581, 0.995296, -0.091237,
		-0.961197, -0.056221, -0.270071,
		43.971962, 42.214283, 61.574451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<48.017639, 41.466290, 45.796356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.638451, 41.346878, 45.752129>,  <47.410938, 41.275230, 45.725594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.638451, 41.346878, 45.752129>,  <48.017639, 41.466290, 45.796356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.638451, 41.346878, 45.752129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094074, -0.069103, 0.993164,
		-0.304131, 0.951895, 0.037424,
		-0.947974, -0.298532, -0.110565,
		47.354057, 41.257317, 45.718960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.653580, 41.808552, 46.297970>,  <48.017639, 41.466290, 45.796356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.653580, 41.808552, 46.297970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.395332, 41.516335, 46.208992>,  <47.240383, 41.341003, 46.155605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.395332, 41.516335, 46.208992>,  <47.653580, 41.808552, 46.297970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.395332, 41.516335, 46.208992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195547, -0.123427, 0.972896,
		-0.738201, 0.671616, -0.063170,
		-0.645616, -0.730546, -0.222446,
		47.201649, 41.297173, 46.142258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.016544, 41.955471, 46.585033>,  <47.653580, 41.808552, 46.297970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.016544, 41.955471, 46.585033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.021683, 41.557907, 46.541245>,  <47.024765, 41.319370, 46.514969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.021683, 41.557907, 46.541245>,  <47.016544, 41.955471, 46.585033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.021683, 41.557907, 46.541245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334160, -0.107457, 0.936370,
		-0.942429, 0.024553, -0.333504,
		0.012847, -0.993906, -0.109475,
		47.025536, 41.259735, 46.508404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401268, 41.780136, 46.933826>,  <47.016544, 41.955471, 46.585033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401268, 41.780136, 46.933826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.624748, 41.448647, 46.920757>,  <46.758835, 41.249752, 46.912914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.624748, 41.448647, 46.920757>,  <46.401268, 41.780136, 46.933826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.624748, 41.448647, 46.920757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259208, -0.211904, 0.942289,
		-0.787822, -0.517988, -0.333203,
		0.558702, -0.828725, -0.032675,
		46.792358, 41.200027, 46.910954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987690, 41.308804, 47.264671>,  <46.401268, 41.780136, 46.933826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987690, 41.308804, 47.264671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.361603, 41.166809, 47.269890>,  <46.585949, 41.081612, 47.273022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.361603, 41.166809, 47.269890>,  <45.987690, 41.308804, 47.264671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.361603, 41.166809, 47.269890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133409, -0.316784, 0.939069,
		-0.329227, -0.879562, -0.343482,
		0.934779, -0.354990, 0.013048,
		46.642036, 41.060314, 47.273804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.932880, 40.544632, 47.485329>,  <45.987690, 41.308804, 47.264671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.932880, 40.544632, 47.485329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.321350, 40.638054, 47.504383>,  <46.554432, 40.694107, 47.515816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.321350, 40.638054, 47.504383>,  <45.932880, 40.544632, 47.485329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321350, 40.638054, 47.504383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038431, -0.350648, 0.935718,
		0.235244, -0.906917, -0.349517,
		0.971176, 0.233554, 0.047634,
		46.612701, 40.708118, 47.518673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216618, 39.863583, 47.860016>,  <45.932880, 40.544632, 47.485329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216618, 39.863583, 47.860016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.473167, 40.164757, 47.918991>,  <46.627098, 40.345459, 47.954376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.473167, 40.164757, 47.918991>,  <46.216618, 39.863583, 47.860016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.473167, 40.164757, 47.918991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127044, -0.293741, 0.947405,
		0.756639, -0.588907, -0.284052,
		0.641371, 0.752931, 0.147438,
		46.665581, 40.390636, 47.963223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.811634, 39.575825, 48.143917>,  <46.216618, 39.863583, 47.860016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.811634, 39.575825, 48.143917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.829712, 39.963326, 48.241478>,  <46.840557, 40.195824, 48.300014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.829712, 39.963326, 48.241478>,  <46.811634, 39.575825, 48.143917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829712, 39.963326, 48.241478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305609, -0.245848, 0.919871,
		0.951084, 0.032968, -0.307168,
		0.045190, 0.968748, 0.243898,
		46.843269, 40.253948, 48.314648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.438313, 39.611813, 48.580006>,  <46.811634, 39.575825, 48.143917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.438313, 39.611813, 48.580006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.244980, 39.953331, 48.657379>,  <47.128979, 40.158241, 48.703804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.244980, 39.953331, 48.657379>,  <47.438313, 39.611813, 48.580006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.244980, 39.953331, 48.657379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244129, -0.080738, 0.966376,
		0.840707, 0.514307, -0.169413,
		-0.483335, 0.853797, 0.193434,
		47.099979, 40.209469, 48.715408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.869312, 39.917393, 49.150417>,  <47.438313, 39.611813, 48.580006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.869312, 39.917393, 49.150417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.516182, 40.103401, 49.176876>,  <47.304302, 40.215008, 49.192753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.516182, 40.103401, 49.176876>,  <47.869312, 39.917393, 49.150417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.516182, 40.103401, 49.176876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045123, -0.056215, 0.997399,
		0.467530, 0.883513, 0.028645,
		-0.882825, 0.465021, 0.066149,
		47.251335, 40.242908, 49.196720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.846859, 40.331898, 49.759331>,  <47.869312, 39.917393, 49.150417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.846859, 40.331898, 49.759331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.450546, 40.346291, 49.707081>,  <47.212761, 40.354927, 49.675732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.450546, 40.346291, 49.707081>,  <47.846859, 40.331898, 49.759331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.450546, 40.346291, 49.707081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133238, -0.083632, 0.987549,
		0.024611, 0.995847, 0.087655,
		-0.990778, 0.035983, -0.130627,
		47.153313, 40.357086, 49.667892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.600460, 40.850792, 50.245243>,  <47.846859, 40.331898, 49.759331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.600460, 40.850792, 50.245243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.314110, 40.581955, 50.169552>,  <47.142300, 40.420650, 50.124138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.314110, 40.581955, 50.169552>,  <47.600460, 40.850792, 50.245243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.314110, 40.581955, 50.169552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167398, -0.097904, 0.981016,
		-0.677863, 0.733963, -0.042421,
		-0.715877, -0.672096, -0.189229,
		47.099346, 40.380325, 50.112782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.723999, 41.626465, 50.165054>,  <47.600460, 40.850792, 50.245243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.723999, 41.626465, 50.165054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.054482, 41.786232, 50.323975>,  <48.252769, 41.882092, 50.419327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.054482, 41.786232, 50.323975>,  <47.723999, 41.626465, 50.165054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.054482, 41.786232, 50.323975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348149, 0.192458, -0.917470,
		-0.442921, 0.896339, 0.019951,
		0.826204, 0.399421, 0.397303,
		48.302341, 41.906059, 50.443165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.922028, 42.229244, 49.785095>,  <47.723999, 41.626465, 50.165054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.922028, 42.229244, 49.785095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.259399, 42.141075, 49.981071>,  <48.461823, 42.088173, 50.098660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.259399, 42.141075, 49.981071>,  <47.922028, 42.229244, 49.785095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.259399, 42.141075, 49.981071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535271, 0.266702, -0.801471,
		0.045993, 0.938235, 0.342929,
		0.843427, -0.220422, 0.489943,
		48.512428, 42.074947, 50.128056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.370033, 42.777481, 49.706631>,  <47.922028, 42.229244, 49.785095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.370033, 42.777481, 49.706631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.631599, 42.488396, 49.796135>,  <48.788540, 42.314945, 49.849838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.631599, 42.488396, 49.796135>,  <48.370033, 42.777481, 49.706631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.631599, 42.488396, 49.796135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478754, 0.166275, -0.862060,
		0.585819, 0.670846, 0.454733,
		0.653920, -0.722717, 0.223763,
		48.827774, 42.271580, 49.863262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.004051, 43.106434, 49.540459>,  <48.370033, 42.777481, 49.706631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.004051, 43.106434, 49.540459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.066566, 42.711548, 49.552933>,  <49.104076, 42.474617, 49.560417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.066566, 42.711548, 49.552933>,  <49.004051, 43.106434, 49.540459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.066566, 42.711548, 49.552933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388129, 0.032351, -0.921037,
		0.908256, 0.156052, 0.388224,
		0.156290, -0.987219, 0.031185,
		49.113453, 42.415382, 49.562290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.747646, 43.028816, 49.481316>,  <49.004051, 43.106434, 49.540459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.747646, 43.028816, 49.481316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.578979, 42.676407, 49.395535>,  <49.477779, 42.464962, 49.344063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.578979, 42.676407, 49.395535>,  <49.747646, 43.028816, 49.481316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.578979, 42.676407, 49.395535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534374, -0.050373, -0.843746,
		0.732559, -0.470379, 0.492038,
		-0.421665, -0.881026, -0.214457,
		49.452480, 42.412098, 49.331196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.230888, 42.585850, 49.327526>,  <49.747646, 43.028816, 49.481316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.230888, 42.585850, 49.327526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.916641, 42.413139, 49.150272>,  <49.728092, 42.309513, 49.043919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.916641, 42.413139, 49.150272>,  <50.230888, 42.585850, 49.327526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.916641, 42.413139, 49.150272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502397, -0.027172, -0.864210,
		0.361107, -0.901570, 0.238271,
		-0.785620, -0.431779, -0.443134,
		49.680954, 42.283607, 49.017334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.621513, 42.023602, 48.920578>,  <50.230888, 42.585850, 49.327526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.621513, 42.023602, 48.920578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.248970, 42.089775, 48.790833>,  <50.025444, 42.129478, 48.712986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.248970, 42.089775, 48.790833>,  <50.621513, 42.023602, 48.920578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.248970, 42.089775, 48.790833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318840, -0.059672, -0.945928,
		-0.175844, -0.984414, 0.002828,
		-0.931353, 0.165434, -0.324363,
		49.969563, 42.139404, 48.693523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.509262, 41.549328, 48.318993>,  <50.621513, 42.023602, 48.920578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.509262, 41.549328, 48.318993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.238449, 41.836380, 48.253716>,  <50.075962, 42.008610, 48.214550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.238449, 41.836380, 48.253716>,  <50.509262, 41.549328, 48.318993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.238449, 41.836380, 48.253716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274534, 0.040527, -0.960723,
		-0.682829, -0.695245, -0.224452,
		-0.677034, 0.717629, -0.163195,
		50.035339, 42.051670, 48.204758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.038376, 41.386555, 47.769707>,  <50.509262, 41.549328, 48.318993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.038376, 41.386555, 47.769707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.025246, 41.786163, 47.757790>,  <50.017368, 42.025928, 47.750641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.025246, 41.786163, 47.757790>,  <50.038376, 41.386555, 47.769707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.025246, 41.786163, 47.757790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136560, -0.025045, -0.990315,
		-0.990088, -0.036571, -0.135604,
		-0.032821, 0.999017, -0.029791,
		50.015400, 42.085869, 47.748852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.641262, 41.587517, 47.007595>,  <50.038376, 41.386555, 47.769707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.641262, 41.587517, 47.007595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.807877, 41.909409, 47.176781>,  <49.907845, 42.102543, 47.278294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.807877, 41.909409, 47.176781>,  <49.641262, 41.587517, 47.007595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.807877, 41.909409, 47.176781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185511, 0.380220, -0.906101,
		-0.889989, 0.455892, 0.009090,
		0.416541, 0.804733, 0.422965,
		49.932838, 42.150829, 47.303669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.406631, 42.186695, 46.619526>,  <49.641262, 41.587517, 47.007595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.406631, 42.186695, 46.619526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.747406, 42.306244, 46.791519>,  <49.951870, 42.377972, 46.894714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.747406, 42.306244, 46.791519>,  <49.406631, 42.186695, 46.619526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.747406, 42.306244, 46.791519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334292, 0.321624, -0.885893,
		-0.403061, 0.898462, 0.174093,
		0.851934, 0.298871, 0.429983,
		50.002987, 42.395905, 46.920513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.491493, 42.788853, 46.330074>,  <49.406631, 42.186695, 46.619526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.491493, 42.788853, 46.330074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.853424, 42.689484, 46.468399>,  <50.070583, 42.629864, 46.551392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.853424, 42.689484, 46.468399>,  <49.491493, 42.788853, 46.330074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.853424, 42.689484, 46.468399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414819, 0.331136, -0.847511,
		0.096028, 0.910295, 0.402668,
		0.904822, -0.248419, 0.345809,
		50.124870, 42.614956, 46.572144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.849957, 43.365887, 46.205017>,  <49.491493, 42.788853, 46.330074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.849957, 43.365887, 46.205017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.096443, 43.052147, 46.233505>,  <50.244335, 42.863903, 46.250599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.096443, 43.052147, 46.233505>,  <49.849957, 43.365887, 46.205017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.096443, 43.052147, 46.233505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418106, 0.249164, -0.873559,
		0.667432, 0.568077, 0.481480,
		0.616216, -0.784351, 0.071216,
		50.281307, 42.816841, 46.254871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.384739, 43.699741, 45.982666>,  <49.849957, 43.365887, 46.205017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.384739, 43.699741, 45.982666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.465157, 43.309349, 45.949112>,  <50.513405, 43.075111, 45.928982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.465157, 43.309349, 45.949112>,  <50.384739, 43.699741, 45.982666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.465157, 43.309349, 45.949112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344984, 0.150686, -0.926434,
		0.916825, 0.157314, 0.366993,
		0.201042, -0.975985, -0.083882,
		50.525471, 43.016552, 45.923946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.776596, 44.129700, 46.516979>,  <50.384739, 43.699741, 45.982666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.776596, 44.129700, 46.516979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.948837, 43.850922, 46.746361>,  <51.052181, 43.683655, 46.883987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.948837, 43.850922, 46.746361>,  <50.776596, 44.129700, 46.516979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.948837, 43.850922, 46.746361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900105, -0.284979, 0.329543,
		-0.066251, -0.658070, -0.750036,
		0.430607, -0.696944, 0.573452,
		51.078018, 43.641838, 46.918396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.239117, 44.679012, 46.421295>,  <50.776596, 44.129700, 46.516979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.239117, 44.679012, 46.421295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.015793, 45.006805, 46.369541>,  <50.881798, 45.203480, 46.338490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.015793, 45.006805, 46.369541>,  <51.239117, 44.679012, 46.421295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.015793, 45.006805, 46.369541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298967, -0.053260, 0.952776,
		0.773892, 0.570625, 0.274734,
		-0.558310, 0.819482, -0.129381,
		50.848301, 45.252651, 46.330727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.422829, 45.110249, 46.951035>,  <51.239117, 44.679012, 46.421295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.422829, 45.110249, 46.951035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.043686, 45.143303, 46.827911>,  <50.816200, 45.163136, 46.754040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.043686, 45.143303, 46.827911>,  <51.422829, 45.110249, 46.951035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.043686, 45.143303, 46.827911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307127, 0.021091, 0.951435,
		0.085116, 0.996357, 0.005389,
		-0.947855, 0.082637, -0.307803,
		50.759331, 45.168095, 46.735569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.112320, 45.799736, 47.198067>,  <51.422829, 45.110249, 46.951035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.112320, 45.799736, 47.198067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.798019, 45.568977, 47.108814>,  <50.609440, 45.430523, 47.055264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.798019, 45.568977, 47.108814>,  <51.112320, 45.799736, 47.198067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.798019, 45.568977, 47.108814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365011, 0.141225, 0.920229,
		-0.499362, 0.804518, -0.321540,
		-0.785751, -0.576893, -0.223136,
		50.562294, 45.395908, 47.041874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.533161, 46.109219, 47.477123>,  <51.112320, 45.799736, 47.198067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.533161, 46.109219, 47.477123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.417458, 45.730736, 47.419128>,  <50.348034, 45.503647, 47.384331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.417458, 45.730736, 47.419128>,  <50.533161, 46.109219, 47.477123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.417458, 45.730736, 47.419128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575545, 0.050884, 0.816185,
		-0.764902, 0.319537, -0.559303,
		-0.289261, -0.946207, -0.144987,
		50.330681, 45.446873, 47.375633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.982578, 46.153309, 47.907764>,  <50.533161, 46.109219, 47.477123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.982578, 46.153309, 47.907764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.025764, 45.765846, 47.818279>,  <50.051678, 45.533367, 47.764587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.025764, 45.765846, 47.818279>,  <49.982578, 46.153309, 47.907764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.025764, 45.765846, 47.818279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605174, -0.242575, 0.758236,
		-0.788737, 0.053522, -0.612396,
		0.107970, -0.968655, -0.223718,
		50.058155, 45.475250, 47.751163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.261967, 45.887108, 47.867397>,  <49.982578, 46.153309, 47.907764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.261967, 45.887108, 47.867397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.516968, 45.587120, 47.937977>,  <49.669968, 45.407127, 47.980324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.516968, 45.587120, 47.937977>,  <49.261967, 45.887108, 47.867397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.516968, 45.587120, 47.937977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607722, -0.348726, 0.713487,
		-0.473562, -0.562081, -0.678088,
		0.637505, -0.749969, 0.176446,
		49.708218, 45.362129, 47.990910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.851391, 45.332672, 47.949970>,  <49.261967, 45.887108, 47.867397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.851391, 45.332672, 47.949970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.195084, 45.231537, 48.127869>,  <49.401299, 45.170856, 48.234608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.195084, 45.231537, 48.127869>,  <48.851391, 45.332672, 47.949970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.195084, 45.231537, 48.127869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510069, -0.356434, 0.782805,
		-0.039400, -0.899460, -0.435224,
		0.859230, -0.252837, 0.444743,
		49.452854, 45.155685, 48.261292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.791889, 44.609528, 48.041000>,  <48.851391, 45.332672, 47.949970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.791889, 44.609528, 48.041000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.062622, 44.743942, 48.302986>,  <49.225060, 44.824593, 48.460178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.062622, 44.743942, 48.302986>,  <48.791889, 44.609528, 48.041000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.062622, 44.743942, 48.302986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491868, -0.455529, 0.741997,
		0.547695, -0.824362, -0.143029,
		0.676828, 0.336036, 0.654969,
		49.265671, 44.844753, 48.499477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.812664, 44.080780, 48.493996>,  <48.791889, 44.609528, 48.041000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.812664, 44.080780, 48.493996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.962296, 44.387657, 48.702408>,  <49.052074, 44.571785, 48.827457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.962296, 44.387657, 48.702408>,  <48.812664, 44.080780, 48.493996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.962296, 44.387657, 48.702408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518881, -0.292513, 0.803243,
		0.768654, -0.570830, 0.288661,
		0.374078, 0.767196, 0.521034,
		49.074520, 44.617817, 48.858719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.902218, 43.831505, 49.267612>,  <48.812664, 44.080780, 48.493996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.902218, 43.831505, 49.267612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.939972, 44.226868, 49.315182>,  <48.962624, 44.464085, 49.343723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.939972, 44.226868, 49.315182>,  <48.902218, 43.831505, 49.267612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.939972, 44.226868, 49.315182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349719, -0.078921, 0.933525,
		0.932088, -0.129702, 0.338215,
		0.094388, 0.988407, 0.118921,
		48.968288, 44.523392, 49.350857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.094379, 43.890007, 50.045326>,  <48.902218, 43.831505, 49.267612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.094379, 43.890007, 50.045326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.970642, 44.251007, 49.925457>,  <48.896400, 44.467606, 49.853535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.970642, 44.251007, 49.925457>,  <49.094379, 43.890007, 50.045326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.970642, 44.251007, 49.925457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335957, 0.191088, 0.922290,
		0.889629, 0.385980, 0.244089,
		-0.309343, 0.902500, -0.299670,
		48.877838, 44.521755, 49.835556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.319565, 44.447556, 50.558140>,  <49.094379, 43.890007, 50.045326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.319565, 44.447556, 50.558140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.003014, 44.612770, 50.377865>,  <48.813084, 44.711899, 50.269699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.003014, 44.612770, 50.377865>,  <49.319565, 44.447556, 50.558140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.003014, 44.612770, 50.377865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416810, 0.174755, 0.892037,
		0.447205, 0.893790, 0.033861,
		-0.791377, 0.413037, -0.450692,
		48.765602, 44.736683, 50.242657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.196407, 45.061085, 50.866516>,  <49.319565, 44.447556, 50.558140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.196407, 45.061085, 50.866516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.847992, 44.959328, 50.698433>,  <48.638943, 44.898273, 50.597584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.847992, 44.959328, 50.698433>,  <49.196407, 45.061085, 50.866516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.847992, 44.959328, 50.698433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480116, 0.260091, 0.837760,
		-0.103831, 0.931469, -0.348689,
		-0.871038, -0.254397, -0.420207,
		48.586681, 44.883007, 50.572372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.805767, 45.512039, 51.218704>,  <49.196407, 45.061085, 50.866516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.805767, 45.512039, 51.218704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.566917, 45.229637, 51.066391>,  <48.423607, 45.060196, 50.975002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.566917, 45.229637, 51.066391>,  <48.805767, 45.512039, 51.218704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.566917, 45.229637, 51.066391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577894, 0.049411, 0.814615,
		-0.556309, 0.706479, -0.437501,
		-0.597126, -0.706007, -0.380782,
		48.387779, 45.017834, 50.952156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.133972, 45.793755, 51.239845>,  <48.805767, 45.512039, 51.218704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.133972, 45.793755, 51.239845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.077255, 45.398407, 51.217869>,  <48.043224, 45.161198, 51.204681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.077255, 45.398407, 51.217869>,  <48.133972, 45.793755, 51.239845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.077255, 45.398407, 51.217869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645417, 0.050225, 0.762178,
		-0.750554, 0.143532, -0.645032,
		-0.141793, -0.988371, -0.054942,
		48.034718, 45.101894, 51.201385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.445843, 45.794918, 51.219631>,  <48.133972, 45.793755, 51.239845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.445843, 45.794918, 51.219631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.548058, 45.416725, 51.300388>,  <47.609386, 45.189808, 51.348843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.548058, 45.416725, 51.300388>,  <47.445843, 45.794918, 51.219631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.548058, 45.416725, 51.300388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725651, -0.049583, 0.686274,
		-0.638851, -0.321873, -0.698761,
		0.255540, -0.945484, 0.201891,
		47.624722, 45.133080, 51.360954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823051, 45.425854, 51.214439>,  <47.445843, 45.794918, 51.219631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823051, 45.425854, 51.214439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.079315, 45.195580, 51.417671>,  <47.233074, 45.057415, 51.539608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.079315, 45.195580, 51.417671>,  <46.823051, 45.425854, 51.214439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079315, 45.195580, 51.417671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623116, -0.003169, 0.782123,
		-0.448650, -0.817662, -0.360752,
		0.640655, -0.575690, 0.508076,
		47.271511, 45.022873, 51.570095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357578, 45.009666, 51.535694>,  <46.823051, 45.425854, 51.214439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357578, 45.009666, 51.535694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.691483, 44.989876, 51.755047>,  <46.891827, 44.978001, 51.886658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.691483, 44.989876, 51.755047>,  <46.357578, 45.009666, 51.535694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691483, 44.989876, 51.755047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540604, 0.115372, 0.833328,
		-0.104496, -0.992090, 0.069562,
		0.834762, -0.049474, 0.548384,
		46.941910, 44.975033, 51.919563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128250, 44.758835, 52.148560>,  <46.357578, 45.009666, 51.535694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128250, 44.758835, 52.148560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.476372, 44.929276, 52.247356>,  <46.685246, 45.031540, 52.306633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.476372, 44.929276, 52.247356>,  <46.128250, 44.758835, 52.148560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.476372, 44.929276, 52.247356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392595, 0.297388, 0.870304,
		0.297388, -0.854397, 0.426105,
		-0.870304, -0.426105, -0.246992,
		46.737465, 45.057106, 52.321453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328373, 44.431839, 52.806011>,  <46.128250, 44.758835, 52.148560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328373, 44.431839, 52.806011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.513283, 44.785126, 52.774448>,  <46.624229, 44.997101, 52.755512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.513283, 44.785126, 52.774448>,  <46.328373, 44.431839, 52.806011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.513283, 44.785126, 52.774448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203575, 0.192310, 0.959987,
		0.863055, -0.427711, 0.268701,
		0.462270, 0.883222, -0.078903,
		46.651962, 45.050091, 52.750778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686893, 44.471367, 53.474075>,  <46.328373, 44.431839, 52.806011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.686893, 44.471367, 53.474075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.714561, 44.849976, 53.348022>,  <46.731163, 45.077141, 53.272392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.714561, 44.849976, 53.348022>,  <46.686893, 44.471367, 53.474075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714561, 44.849976, 53.348022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151835, 0.322193, 0.934418,
		0.985983, -0.016783, 0.166000,
		0.069166, 0.946525, -0.315128,
		46.735310, 45.133934, 53.253483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211338, 44.782990, 53.899273>,  <46.686893, 44.471367, 53.474075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211338, 44.782990, 53.899273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.964630, 45.060455, 53.750454>,  <46.816605, 45.226936, 53.661163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.964630, 45.060455, 53.750454>,  <47.211338, 44.782990, 53.899273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964630, 45.060455, 53.750454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098788, 0.400708, 0.910864,
		0.780922, 0.598546, -0.178618,
		-0.616768, 0.693669, -0.372051,
		46.779598, 45.268555, 53.638840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.453465, 45.359322, 54.261990>,  <47.211338, 44.782990, 53.899273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.453465, 45.359322, 54.261990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.086525, 45.433525, 54.121105>,  <46.866360, 45.478046, 54.036575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.086525, 45.433525, 54.121105>,  <47.453465, 45.359322, 54.261990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.086525, 45.433525, 54.121105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256754, 0.400424, 0.879624,
		0.304215, 0.897355, -0.319698,
		-0.917350, 0.185511, -0.352214,
		46.811321, 45.489178, 54.015442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.186661, 45.985390, 54.617886>,  <47.453465, 45.359322, 54.261990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.186661, 45.985390, 54.617886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.853798, 45.854874, 54.438530>,  <46.654079, 45.776566, 54.330917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.853798, 45.854874, 54.438530>,  <47.186661, 45.985390, 54.617886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853798, 45.854874, 54.438530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554316, 0.512578, 0.655742,
		0.015875, 0.794229, -0.607410,
		-0.832155, -0.326288, -0.448391,
		46.604153, 45.756989, 54.304012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.776699, 46.638500, 54.458111>,  <47.186661, 45.985390, 54.617886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.776699, 46.638500, 54.458111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.551323, 46.309685, 54.491074>,  <46.416096, 46.112396, 54.510853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.551323, 46.309685, 54.491074>,  <46.776699, 46.638500, 54.458111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.551323, 46.309685, 54.491074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493363, 0.414808, 0.764544,
		-0.662667, 0.390117, -0.639282,
		-0.563441, -0.822036, 0.082410,
		46.382290, 46.063072, 54.515797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.041992, 46.878922, 54.523434>,  <46.776699, 46.638500, 54.458111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.041992, 46.878922, 54.523434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.011032, 46.500145, 54.648216>,  <45.992455, 46.272881, 54.723083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.011032, 46.500145, 54.648216>,  <46.041992, 46.878922, 54.523434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011032, 46.500145, 54.648216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495296, 0.308071, 0.812265,
		-0.865270, -0.091641, -0.492859,
		-0.077399, -0.946939, 0.311954,
		45.987812, 46.216064, 54.741802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368252, 46.883350, 54.910652>,  <46.041992, 46.878922, 54.523434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368252, 46.883350, 54.910652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.561615, 46.564720, 55.055862>,  <45.677631, 46.373543, 55.142986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.561615, 46.564720, 55.055862>,  <45.368252, 46.883350, 54.910652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561615, 46.564720, 55.055862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272136, 0.257402, 0.927193,
		-0.832021, -0.547004, -0.092347,
		0.483407, -0.796575, 0.363023,
		45.706638, 46.325748, 55.164768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977280, 46.334248, 54.582928>,  <45.368252, 46.883350, 54.910652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977280, 46.334248, 54.582928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.610752, 46.288712, 54.429352>,  <44.390835, 46.261391, 54.337208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.610752, 46.288712, 54.429352>,  <44.977280, 46.334248, 54.582928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610752, 46.288712, 54.429352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318894, 0.372481, -0.871530,
		0.242225, -0.921031, -0.305006,
		-0.916315, -0.113841, -0.383935,
		44.335857, 46.254559, 54.314171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079067, 46.133488, 53.977928>,  <44.977280, 46.334248, 54.582928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079067, 46.133488, 53.977928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.696411, 46.226418, 53.907650>,  <44.466816, 46.282177, 53.865482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.696411, 46.226418, 53.907650>,  <45.079067, 46.133488, 53.977928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696411, 46.226418, 53.907650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212889, 0.146000, -0.966107,
		-0.198798, -0.961618, -0.189129,
		-0.956639, 0.232324, -0.175693,
		44.409420, 46.296116, 53.854942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782940, 45.727909, 53.372437>,  <45.079067, 46.133488, 53.977928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782940, 45.727909, 53.372437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.533287, 46.040062, 53.387787>,  <44.383495, 46.227352, 53.396996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.533287, 46.040062, 53.387787>,  <44.782940, 45.727909, 53.372437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533287, 46.040062, 53.387787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033782, 0.076019, -0.996534,
		-0.780591, -0.620669, -0.073808,
		-0.624128, 0.780379, 0.038372,
		44.346050, 46.274178, 53.399300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217884, 45.603374, 52.894245>,  <44.782940, 45.727909, 53.372437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217884, 45.603374, 52.894245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.248501, 46.000069, 52.935432>,  <44.266872, 46.238087, 52.960144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.248501, 46.000069, 52.935432>,  <44.217884, 45.603374, 52.894245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248501, 46.000069, 52.935432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024088, 0.101398, -0.994554,
		-0.996775, 0.078609, -0.016127,
		0.076545, 0.991735, 0.102965,
		44.271465, 46.297588, 52.966320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764328, 45.869579, 52.414600>,  <44.217884, 45.603374, 52.894245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764328, 45.869579, 52.414600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.012211, 46.169060, 52.508755>,  <44.160942, 46.348747, 52.565247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.012211, 46.169060, 52.508755>,  <43.764328, 45.869579, 52.414600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012211, 46.169060, 52.508755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077580, 0.240014, -0.967664,
		-0.780990, 0.617929, 0.090653,
		0.619706, 0.748704, 0.235387,
		44.198124, 46.393669, 52.579372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
