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
	<1.959296, 2.219291, 1.114449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.165714, 1.884216, 1.042919>,  <2.289565, 1.683172, 1.000001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.165714, 1.884216, 1.042919>,  <1.959296, 2.219291, 1.114449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.165714, 1.884216, 1.042919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662111, -0.522556, 0.537163,
		-0.543422, -0.158795, -0.824304,
		0.516044, -0.837687, -0.178829,
		2.320528, 1.632910, 0.989272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.543765, 1.786698, 0.842538>,  <1.959296, 2.219291, 1.114449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.543765, 1.786698, 0.842538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.816196, 1.607101, 1.073895>,  <1.979656, 1.499343, 1.212709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.816196, 1.607101, 1.073895>,  <1.543765, 1.786698, 0.842538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.816196, 1.607101, 1.073895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721996, -0.280336, 0.632561,
		-0.121869, -0.848422, -0.515101,
		0.681080, -0.448990, 0.578393,
		2.020520, 1.472404, 1.247412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.427031, 1.016890, 0.848664>,  <1.543765, 1.786698, 0.842538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.427031, 1.016890, 0.848664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.554947, 1.212296, 1.173401>,  <1.631696, 1.329539, 1.368243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.554947, 1.212296, 1.173401>,  <1.427031, 1.016890, 0.848664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.554947, 1.212296, 1.173401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842961, -0.244529, 0.479188,
		0.432610, -0.837592, 0.333600,
		0.319789, 0.488514, 0.811843,
		1.650884, 1.358850, 1.416954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.140630, 0.707824, 1.343856>,  <1.427031, 1.016890, 0.848664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.140630, 0.707824, 1.343856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.237167, 1.058334, 1.510658>,  <1.295090, 1.268641, 1.610740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.237167, 1.058334, 1.510658>,  <1.140630, 0.707824, 1.343856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.237167, 1.058334, 1.510658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928107, 0.082886, 0.362972,
		0.283499, -0.474627, 0.833281,
		0.241343, 0.876276, 0.417007,
		1.309570, 1.321217, 1.635760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.926556, 0.681071, 1.999462>,  <1.140630, 0.707824, 1.343856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.926556, 0.681071, 1.999462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.945400, 1.069427, 1.905525>,  <0.956707, 1.302441, 1.849163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.945400, 1.069427, 1.905525>,  <0.926556, 0.681071, 1.999462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.945400, 1.069427, 1.905525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932043, 0.127285, 0.339255,
		0.359272, 0.202902, 0.910909,
		0.047110, 0.970891, -0.234843,
		0.959533, 1.360695, 1.835072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.816446, 1.190208, 2.604769>,  <0.926556, 0.681071, 1.999462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.816446, 1.190208, 2.604769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.708061, 1.369492, 2.264019>,  <0.643030, 1.477062, 2.059569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.708061, 1.369492, 2.264019>,  <0.816446, 1.190208, 2.604769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.708061, 1.369492, 2.264019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959280, -0.052404, 0.277554,
		0.079761, 0.892392, 0.444157,
		-0.270963, 0.448208, -0.851873,
		0.626772, 1.503954, 2.008457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.430637, 1.737764, 2.790383>,  <0.816446, 1.190208, 2.604769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.430637, 1.737764, 2.790383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.318001, 1.664413, 2.413643>,  <0.250419, 1.620403, 2.187599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.318001, 1.664413, 2.413643>,  <0.430637, 1.737764, 2.790383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.318001, 1.664413, 2.413643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958517, 0.008551, 0.284908,
		-0.044192, 0.983006, -0.178177,
		-0.281589, -0.183376, -0.941850,
		0.233524, 1.609401, 2.131088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.157488, 2.124467, 2.668194>,  <0.430637, 1.737764, 2.790383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.157488, 2.124467, 2.668194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.189774, 1.871964, 2.359650>,  <-0.209145, 1.720461, 2.174523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.189774, 1.871964, 2.359650>,  <-0.157488, 2.124467, 2.668194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.189774, 1.871964, 2.359650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996190, 0.076723, 0.041451,
		0.033016, 0.771768, -0.635046,
		-0.080713, -0.631259, -0.771361,
		-0.213987, 1.682586, 2.128241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.035125, 1.755659, 3.002219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.888994, 1.388382, 2.940956>,  <3.801315, 1.168016, 2.904198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.888994, 1.388382, 2.940956>,  <4.035125, 1.755659, 3.002219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.888994, 1.388382, 2.940956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573032, -0.092163, -0.814335,
		0.733601, -0.385263, 0.559823,
		-0.365328, -0.918193, -0.153157,
		3.779395, 1.112924, 2.895009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.604036, 1.215814, 2.959003>,  <4.035125, 1.755659, 3.002219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.604036, 1.215814, 2.959003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.292309, 1.103241, 2.735054>,  <4.105272, 1.035697, 2.600685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.292309, 1.103241, 2.735054>,  <4.604036, 1.215814, 2.959003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.292309, 1.103241, 2.735054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610738, -0.141205, -0.779141,
		0.140221, -0.949134, 0.281926,
		-0.779318, -0.281435, -0.559873,
		4.058513, 1.018811, 2.567092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.760274, 0.612491, 2.505785>,  <4.604036, 1.215814, 2.959003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.760274, 0.612491, 2.505785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.505670, 0.896423, 2.385124>,  <4.352907, 1.066783, 2.312728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.505670, 0.896423, 2.385124>,  <4.760274, 0.612491, 2.505785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.505670, 0.896423, 2.385124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601369, 0.211875, -0.770366,
		-0.482918, -0.671750, -0.561732,
		-0.636510, 0.709832, -0.301652,
		4.314716, 1.109373, 2.294629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.581235, 0.477965, 1.808337>,  <4.760274, 0.612491, 2.505785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.581235, 0.477965, 1.808337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.522702, 0.867630, 1.877151>,  <4.487583, 1.101429, 1.918440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.522702, 0.867630, 1.877151>,  <4.581235, 0.477965, 1.808337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.522702, 0.867630, 1.877151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709812, 0.224529, -0.667648,
		-0.689024, 0.024415, -0.724327,
		-0.146332, 0.974161, 0.172036,
		4.478803, 1.159878, 1.928762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.569279, 0.819843, 1.186980>,  <4.581235, 0.477965, 1.808337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.569279, 0.819843, 1.186980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.668102, 1.079056, 1.475151>,  <4.727396, 1.234584, 1.648054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.668102, 1.079056, 1.475151>,  <4.569279, 0.819843, 1.186980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.668102, 1.079056, 1.475151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732138, 0.362200, -0.576875,
		-0.634773, 0.669974, -0.384965,
		0.247057, 0.648033, 0.720428,
		4.742219, 1.273466, 1.691280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.908206, 1.451865, 0.896343>,  <4.569279, 0.819843, 1.186980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.908206, 1.451865, 0.896343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.007513, 1.471436, 1.283325>,  <5.067097, 1.483178, 1.515514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.007513, 1.471436, 1.283325>,  <4.908206, 1.451865, 0.896343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.007513, 1.471436, 1.283325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963686, 0.088923, -0.251798,
		-0.098348, 0.994836, -0.025072,
		0.248268, 0.048925, 0.967455,
		5.081994, 1.486113, 1.573562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.197339, 2.127257, 0.975709>,  <4.908206, 1.451865, 0.896343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.197339, 2.127257, 0.975709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.329144, 1.901245, 1.278275>,  <5.408228, 1.765638, 1.459814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.329144, 1.901245, 1.278275>,  <5.197339, 2.127257, 0.975709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.329144, 1.901245, 1.278275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940336, 0.268344, -0.209187,
		-0.084782, 0.780213, 0.619741,
		0.329515, -0.565029, 0.756414,
		5.427999, 1.731736, 1.505199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.804133, 2.365028, 1.137621>,  <5.197339, 2.127257, 0.975709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.804133, 2.365028, 1.137621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.855168, 2.033615, 1.355705>,  <5.885789, 1.834767, 1.486556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.855168, 2.033615, 1.355705>,  <5.804133, 2.365028, 1.137621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.855168, 2.033615, 1.355705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980472, 0.188303, 0.056709,
		-0.149650, 0.527330, 0.836378,
		0.127588, -0.828532, 0.545212,
		5.893445, 1.785055, 1.519269>
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
