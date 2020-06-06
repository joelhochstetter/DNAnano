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
	<4.238365, 15.059375, 15.270308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.383408, 14.926215, 14.922125>,  <4.470433, 14.846319, 14.713215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.383408, 14.926215, 14.922125>,  <4.238365, 15.059375, 15.270308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.383408, 14.926215, 14.922125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753264, -0.654654, -0.063420,
		-0.548735, 0.678680, -0.488143,
		0.362607, -0.332900, -0.870457,
		4.492189, 14.826345, 14.660988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.667766, 15.106357, 14.779288>,  <4.238365, 15.059375, 15.270308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.667766, 15.106357, 14.779288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.004913, 15.308801, 14.852420>,  <4.207201, 15.430267, 14.896298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.004913, 15.308801, 14.852420>,  <3.667766, 15.106357, 14.779288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.004913, 15.308801, 14.852420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447633, -0.470860, -0.760208,
		-0.298662, 0.722595, -0.623424,
		0.842868, 0.506110, 0.182829,
		4.257773, 15.460634, 14.907269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.173034, 15.261489, 14.167036>,  <3.667766, 15.106357, 14.779288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.173034, 15.261489, 14.167036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.412042, 15.257388, 14.487752>,  <4.555446, 15.254928, 14.680182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.412042, 15.257388, 14.487752>,  <4.173034, 15.261489, 14.167036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.412042, 15.257388, 14.487752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652861, -0.574332, -0.493877,
		0.465557, 0.818558, -0.336481,
		0.597519, -0.010252, 0.801789,
		4.591298, 15.254313, 14.728289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.868383, 15.142174, 13.975431>,  <4.173034, 15.261489, 14.167036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.868383, 15.142174, 13.975431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.905590, 15.027605, 14.356862>,  <4.927914, 14.958864, 14.585721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.905590, 15.027605, 14.356862>,  <4.868383, 15.142174, 13.975431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.905590, 15.027605, 14.356862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700778, -0.661509, -0.267052,
		0.707289, 0.693086, 0.139187,
		0.093016, -0.286422, 0.953578,
		4.933495, 14.941678, 14.642936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.567190, 15.188133, 14.221338>,  <4.868383, 15.142174, 13.975431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.567190, 15.188133, 14.221338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.370899, 14.883671, 14.390963>,  <5.253125, 14.700994, 14.492738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.370899, 14.883671, 14.390963>,  <5.567190, 15.188133, 14.221338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.370899, 14.883671, 14.390963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684403, -0.637931, -0.353039,
		0.539240, 0.116983, 0.833988,
		-0.490727, -0.761156, 0.424061,
		5.223681, 14.655324, 14.518181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.074229, 14.693605, 14.511839>,  <5.567190, 15.188133, 14.221338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.074229, 14.693605, 14.511839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.733275, 14.494583, 14.447495>,  <5.528702, 14.375170, 14.408890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.733275, 14.494583, 14.447495>,  <6.074229, 14.693605, 14.511839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.733275, 14.494583, 14.447495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520463, -0.836997, -0.168979,
		-0.050562, -0.227757, 0.972404,
		-0.852386, -0.497556, -0.160859,
		5.477559, 14.345316, 14.399238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.116949, 13.975528, 14.793344>,  <6.074229, 14.693605, 14.511839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.116949, 13.975528, 14.793344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.812264, 13.935366, 14.537310>,  <5.629453, 13.911268, 14.383689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.812264, 13.935366, 14.537310>,  <6.116949, 13.975528, 14.793344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.812264, 13.935366, 14.537310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350771, -0.894523, -0.277105,
		-0.544750, -0.435599, 0.716590,
		-0.761713, -0.100406, -0.640087,
		5.583750, 13.905244, 14.345284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.058173, 13.309388, 14.797281>,  <6.116949, 13.975528, 14.793344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.058173, 13.309388, 14.797281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.811100, 13.410891, 14.499536>,  <5.662856, 13.471792, 14.320889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.811100, 13.410891, 14.499536>,  <6.058173, 13.309388, 14.797281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.811100, 13.410891, 14.499536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069881, -0.925058, -0.373342,
		-0.783316, -0.282624, 0.553660,
		-0.617683, 0.253755, -0.744363,
		5.625795, 13.487017, 14.276227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.435390, 12.837656, 14.847561>,  <6.058173, 13.309388, 14.797281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.435390, 12.837656, 14.847561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.519883, 12.983059, 14.484630>,  <5.570579, 13.070300, 14.266870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.519883, 12.983059, 14.484630>,  <5.435390, 12.837656, 14.847561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.519883, 12.983059, 14.484630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034408, -0.924933, -0.378570,
		-0.976830, 0.111186, -0.182868,
		0.211232, 0.363507, -0.907328,
		5.583252, 13.092111, 14.212431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.971373, 12.462348, 14.364345>,  <5.435390, 12.837656, 14.847561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.971373, 12.462348, 14.364345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.255112, 12.618922, 14.129873>,  <5.425355, 12.712867, 13.989190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.255112, 12.618922, 14.129873>,  <4.971373, 12.462348, 14.364345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.255112, 12.618922, 14.129873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036654, -0.810015, -0.585262,
		-0.703906, 0.436639, -0.560234,
		0.709347, 0.391435, -0.586179,
		5.467916, 12.736353, 13.954020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.750102, 12.351605, 13.656170>,  <4.971373, 12.462348, 14.364345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.750102, 12.351605, 13.656170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.146229, 12.404757, 13.640108>,  <5.383906, 12.436647, 13.630471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.146229, 12.404757, 13.640108>,  <4.750102, 12.351605, 13.656170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.146229, 12.404757, 13.640108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080649, -0.786211, -0.612673,
		-0.112980, 0.603504, -0.789315,
		0.990319, 0.132877, -0.040155,
		5.443325, 12.444620, 13.628061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.895591, 12.364270, 12.898654>,  <4.750102, 12.351605, 13.656170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.895591, 12.364270, 12.898654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.230655, 12.269628, 13.095568>,  <5.431693, 12.212842, 13.213716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.230655, 12.269628, 13.095568>,  <4.895591, 12.364270, 12.898654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.230655, 12.269628, 13.095568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023962, -0.916353, -0.399653,
		0.545666, 0.322977, -0.773262,
		0.837660, -0.236606, 0.492283,
		5.481953, 12.198646, 13.243253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.214625, 11.948226, 12.481962>,  <4.895591, 12.364270, 12.898654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.214625, 11.948226, 12.481962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.428352, 11.857495, 12.807674>,  <5.556588, 11.803057, 13.003102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.428352, 11.857495, 12.807674>,  <5.214625, 11.948226, 12.481962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.428352, 11.857495, 12.807674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107812, -0.937168, -0.331803,
		0.838380, 0.265078, -0.476291,
		0.534318, -0.226827, 0.814281,
		5.588647, 11.789447, 13.051959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.926611, 11.867014, 12.354587>,  <5.214625, 11.948226, 12.481962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.926611, 11.867014, 12.354587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.823544, 11.631104, 12.660729>,  <5.761704, 11.489557, 12.844416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.823544, 11.631104, 12.660729>,  <5.926611, 11.867014, 12.354587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.823544, 11.631104, 12.660729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446323, -0.775184, -0.447087,
		0.856974, 0.226397, 0.462969,
		-0.257667, -0.589775, 0.765358,
		5.746244, 11.454171, 12.890337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.518405, 11.346524, 12.367165>,  <5.926611, 11.867014, 12.354587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.518405, 11.346524, 12.367165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.227148, 11.226180, 12.613511>,  <6.052394, 11.153974, 12.761319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.227148, 11.226180, 12.613511>,  <6.518405, 11.346524, 12.367165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.227148, 11.226180, 12.613511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295490, -0.948519, -0.114008,
		0.618462, 0.098968, 0.779558,
		-0.728142, -0.300861, 0.615867,
		6.008706, 11.135921, 12.798271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.791210, 10.846107, 12.818482>,  <6.518405, 11.346524, 12.367165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.791210, 10.846107, 12.818482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.397078, 10.780943, 12.838826>,  <6.160599, 10.741844, 12.851032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.397078, 10.780943, 12.838826>,  <6.791210, 10.846107, 12.818482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.397078, 10.780943, 12.838826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163409, -0.986542, 0.005752,
		0.049239, 0.013979, 0.998689,
		-0.985329, -0.162912, 0.050860,
		6.101480, 10.732069, 12.854084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.760568, 10.416603, 13.411179>,  <6.791210, 10.846107, 12.818482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.760568, 10.416603, 13.411179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.434231, 10.385455, 13.181975>,  <6.238429, 10.366767, 13.044454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.434231, 10.385455, 13.181975>,  <6.760568, 10.416603, 13.411179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.434231, 10.385455, 13.181975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001754, -0.990554, 0.137109,
		-0.578273, 0.112864, 0.807999,
		-0.815842, -0.077869, -0.573008,
		6.189479, 10.362095, 13.010073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.229666, 10.055074, 13.819830>,  <6.760568, 10.416603, 13.411179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.229666, 10.055074, 13.819830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.147694, 9.998713, 13.432397>,  <6.098511, 9.964896, 13.199937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.147694, 9.998713, 13.432397>,  <6.229666, 10.055074, 13.819830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.147694, 9.998713, 13.432397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074946, -0.988937, 0.128008,
		-0.975903, -0.046359, 0.213222,
		-0.204929, -0.140903, -0.968582,
		6.086215, 9.956442, 13.141823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.734270, 9.464261, 13.789742>,  <6.229666, 10.055074, 13.819830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.734270, 9.464261, 13.789742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.927527, 9.507861, 13.442249>,  <6.043481, 9.534021, 13.233754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.927527, 9.507861, 13.442249>,  <5.734270, 9.464261, 13.789742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.927527, 9.507861, 13.442249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098265, -0.992702, -0.069904,
		-0.870010, -0.051592, -0.490328,
		0.483144, 0.108999, -0.868730,
		6.072470, 9.540561, 13.181630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.369679, 9.011130, 13.360085>,  <5.734270, 9.464261, 13.789742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.369679, 9.011130, 13.360085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.718306, 9.084476, 13.178205>,  <5.927482, 9.128483, 13.069078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.718306, 9.084476, 13.178205>,  <5.369679, 9.011130, 13.360085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.718306, 9.084476, 13.178205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138198, -0.981705, -0.130985,
		-0.470396, 0.051324, -0.880962,
		0.871567, 0.183362, -0.454697,
		5.979775, 9.139484, 13.041797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.341949, 8.571247, 12.683380>,  <5.369679, 9.011130, 13.360085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.341949, 8.571247, 12.683380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.724442, 8.664307, 12.754369>,  <5.953938, 8.720142, 12.796962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.724442, 8.664307, 12.754369>,  <5.341949, 8.571247, 12.683380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.724442, 8.664307, 12.754369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250175, -0.964597, -0.083458,
		0.151772, 0.124204, -0.980581,
		0.956231, 0.232650, 0.177471,
		6.011312, 8.734101, 12.807611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.632823, 8.191912, 12.292938>,  <5.341949, 8.571247, 12.683380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.632823, 8.191912, 12.292938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.928142, 8.286442, 12.545625>,  <6.105333, 8.343160, 12.697237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.928142, 8.286442, 12.545625>,  <5.632823, 8.191912, 12.292938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.928142, 8.286442, 12.545625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337447, -0.940381, -0.042582,
		0.583992, 0.244610, -0.774028,
		0.738297, 0.236326, 0.631717,
		6.149632, 8.357340, 12.735140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.072850, 7.684497, 12.031263>,  <5.632823, 8.191912, 12.292938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.072850, 7.684497, 12.031263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.208179, 7.816829, 12.383647>,  <6.289377, 7.896228, 12.595078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.208179, 7.816829, 12.383647>,  <6.072850, 7.684497, 12.031263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.208179, 7.816829, 12.383647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386369, -0.902453, 0.190520,
		0.858054, 0.275917, -0.433143,
		0.338324, 0.330830, 0.880959,
		6.309676, 7.916078, 12.647935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.750141, 7.442662, 12.125710>,  <6.072850, 7.684497, 12.031263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.750141, 7.442662, 12.125710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.581324, 7.495232, 12.484510>,  <6.480034, 7.526774, 12.699790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.581324, 7.495232, 12.484510>,  <6.750141, 7.442662, 12.125710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.581324, 7.495232, 12.484510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440143, -0.835297, 0.329473,
		0.792562, 0.533860, 0.294684,
		-0.422041, 0.131425, 0.897000,
		6.454712, 7.534659, 12.753611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.284033, 7.413065, 12.553869>,  <6.750141, 7.442662, 12.125710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.284033, 7.413065, 12.553869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.970262, 7.331660, 12.788221>,  <6.782000, 7.282817, 12.928833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.970262, 7.331660, 12.788221>,  <7.284033, 7.413065, 12.553869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.970262, 7.331660, 12.788221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493361, -0.777201, 0.390582,
		0.375859, 0.595434, 0.710063,
		-0.784427, -0.203513, 0.585881,
		6.734934, 7.270606, 12.963985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.521425, 7.328870, 13.263148>,  <7.284033, 7.413065, 12.553869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.521425, 7.328870, 13.263148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.177284, 7.133145, 13.206059>,  <6.970800, 7.015710, 13.171806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.177284, 7.133145, 13.206059>,  <7.521425, 7.328870, 13.263148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.177284, 7.133145, 13.206059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359781, -0.781344, 0.509960,
		-0.361045, 0.387395, 0.848275,
		-0.860351, -0.489312, -0.142723,
		6.919179, 6.986351, 13.163242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.385933, 6.933047, 13.942294>,  <7.521425, 7.328870, 13.263148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.385933, 6.933047, 13.942294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.192434, 6.747316, 13.645541>,  <7.076334, 6.635878, 13.467489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.192434, 6.747316, 13.645541>,  <7.385933, 6.933047, 13.942294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.192434, 6.747316, 13.645541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374805, -0.875908, 0.303819,
		-0.790891, -0.131089, 0.597751,
		-0.483748, -0.464328, -0.741881,
		7.047309, 6.608018, 13.422976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.887052, 6.434165, 14.252033>,  <7.385933, 6.933047, 13.942294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.887052, 6.434165, 14.252033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.047371, 6.371058, 13.891041>,  <7.143563, 6.333194, 13.674445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.047371, 6.371058, 13.891041>,  <6.887052, 6.434165, 14.252033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.047371, 6.371058, 13.891041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382360, -0.866367, 0.321262,
		-0.832564, -0.473833, -0.286914,
		0.400797, -0.157767, -0.902480,
		7.167611, 6.323728, 13.620296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.756568, 5.825034, 13.924188>,  <6.887052, 6.434165, 14.252033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.756568, 5.825034, 13.924188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.101703, 5.944680, 13.761195>,  <7.308784, 6.016468, 13.663400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.101703, 5.944680, 13.761195>,  <6.756568, 5.825034, 13.924188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.101703, 5.944680, 13.761195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458020, -0.803670, 0.379910,
		-0.213843, -0.514436, -0.830438,
		0.862837, 0.299116, -0.407481,
		7.360554, 6.034415, 13.638950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.513737, 5.328109, 14.443762>,  <6.756568, 5.825034, 13.924188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.513737, 5.328109, 14.443762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.570234, 5.109801, 14.774140>,  <6.604132, 4.978817, 14.972367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.570234, 5.109801, 14.774140>,  <6.513737, 5.328109, 14.443762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.570234, 5.109801, 14.774140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733065, 0.503054, 0.457768,
		-0.665332, -0.670128, -0.329033,
		0.141242, -0.545770, 0.825945,
		6.612607, 4.946070, 15.021924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.833812, 5.195198, 14.782621>,  <6.513737, 5.328109, 14.443762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.833812, 5.195198, 14.782621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.121068, 5.169033, 15.059748>,  <6.293423, 5.153334, 15.226024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.121068, 5.169033, 15.059748>,  <5.833812, 5.195198, 14.782621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.121068, 5.169033, 15.059748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544177, 0.567759, 0.617674,
		-0.433756, -0.820592, 0.372135,
		0.718142, -0.065413, 0.692816,
		6.336511, 5.149409, 15.267592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.339101, 4.723159, 14.368183>,  <5.833812, 5.195198, 14.782621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.339101, 4.723159, 14.368183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.498464, 4.627295, 14.722321>,  <5.594082, 4.569776, 14.934803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.498464, 4.627295, 14.722321>,  <5.339101, 4.723159, 14.368183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.498464, 4.627295, 14.722321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527777, 0.729545, 0.434989,
		-0.750149, -0.640567, 0.164168,
		0.398408, -0.239662, 0.885343,
		5.617987, 4.555396, 14.987924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.855574, 4.540932, 14.761767>,  <5.339101, 4.723159, 14.368183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.855574, 4.540932, 14.761767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.167119, 4.695744, 14.959185>,  <5.354045, 4.788630, 15.077635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.167119, 4.695744, 14.959185>,  <4.855574, 4.540932, 14.761767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.167119, 4.695744, 14.959185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576976, 0.750668, 0.321864,
		-0.245917, -0.535450, 0.807971,
		0.778861, 0.387028, 0.493544,
		5.400777, 4.811852, 15.107248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.585603, 4.791120, 15.383326>,  <4.855574, 4.540932, 14.761767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.585603, 4.791120, 15.383326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.916576, 4.995475, 15.290074>,  <5.115160, 5.118089, 15.234123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.916576, 4.995475, 15.290074>,  <4.585603, 4.791120, 15.383326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.916576, 4.995475, 15.290074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456882, 0.853817, 0.249508,
		0.326520, -0.099939, 0.939892,
		0.827432, 0.510890, -0.233128,
		5.164805, 5.148742, 15.220136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.669693, 5.338479, 15.915827>,  <4.585603, 4.791120, 15.383326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.669693, 5.338479, 15.915827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.865478, 5.418110, 15.576228>,  <4.982949, 5.465889, 15.372469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.865478, 5.418110, 15.576228>,  <4.669693, 5.338479, 15.915827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.865478, 5.418110, 15.576228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247937, 0.965181, 0.083381,
		0.836035, 0.169686, 0.521778,
		0.489461, 0.199078, -0.848997,
		5.012316, 5.477833, 15.321529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.129961, 5.878966, 16.102121>,  <4.669693, 5.338479, 15.915827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.129961, 5.878966, 16.102121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.061413, 5.877280, 15.708042>,  <5.020284, 5.876268, 15.471595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.061413, 5.877280, 15.708042>,  <5.129961, 5.878966, 16.102121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.061413, 5.877280, 15.708042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120121, 0.992620, 0.016646,
		0.977857, 0.121196, -0.170611,
		-0.171370, -0.004217, -0.985198,
		5.010002, 5.876015, 15.412483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.657696, 6.407977, 15.707952>,  <5.129961, 5.878966, 16.102121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.657696, 6.407977, 15.707952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.308700, 6.371573, 15.515919>,  <5.099302, 6.349730, 15.400699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.308700, 6.371573, 15.515919>,  <5.657696, 6.407977, 15.707952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.308700, 6.371573, 15.515919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128305, 0.990696, 0.045370,
		0.471486, 0.101182, -0.876050,
		-0.872490, -0.091011, -0.480082,
		5.046953, 6.344270, 15.371894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.753540, 6.902996, 15.173961>,  <5.657696, 6.407977, 15.707952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.753540, 6.902996, 15.173961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.365847, 6.826748, 15.236252>,  <5.133231, 6.780999, 15.273626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.365847, 6.826748, 15.236252>,  <5.753540, 6.902996, 15.173961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.365847, 6.826748, 15.236252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193012, 0.981196, -0.000252,
		-0.152750, -0.030302, -0.987800,
		-0.969234, -0.190619, 0.155727,
		5.075077, 6.769562, 15.282969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.444558, 7.363605, 14.826458>,  <5.753540, 6.902996, 15.173961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.444558, 7.363605, 14.826458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.161591, 7.264184, 15.091118>,  <4.991811, 7.204531, 15.249914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.161591, 7.264184, 15.091118>,  <5.444558, 7.363605, 14.826458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.161591, 7.264184, 15.091118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123136, 0.965152, 0.230910,
		-0.695987, 0.081877, -0.713371,
		-0.707418, -0.248552, 0.661651,
		4.949366, 7.189618, 15.289613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.901176, 7.759958, 14.586599>,  <5.444558, 7.363605, 14.826458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.901176, 7.759958, 14.586599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.797832, 7.653938, 14.958190>,  <4.735825, 7.590326, 15.181145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.797832, 7.653938, 14.958190>,  <4.901176, 7.759958, 14.586599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.797832, 7.653938, 14.958190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347729, 0.922685, 0.166546,
		-0.901296, -0.280003, -0.330551,
		-0.258361, -0.265050, 0.928977,
		4.720323, 7.574423, 15.236883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.258683, 8.187578, 14.703132>,  <4.901176, 7.759958, 14.586599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.258683, 8.187578, 14.703132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.394576, 8.076187, 15.062471>,  <4.476112, 8.009353, 15.278075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.394576, 8.076187, 15.062471>,  <4.258683, 8.187578, 14.703132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.394576, 8.076187, 15.062471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233681, 0.900217, 0.367428,
		-0.911030, -0.334754, 0.240757,
		0.339731, -0.278477, 0.898350,
		4.496496, 7.992644, 15.331976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.846308, 8.482890, 15.121385>,  <4.258683, 8.187578, 14.703132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.846308, 8.482890, 15.121385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.147523, 8.391497, 15.368197>,  <4.328252, 8.336660, 15.516285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.147523, 8.391497, 15.368197>,  <3.846308, 8.482890, 15.121385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.147523, 8.391497, 15.368197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103575, 0.884918, 0.454084,
		-0.649774, -0.405851, 0.642712,
		0.753038, -0.228483, 0.617033,
		4.373434, 8.322951, 15.553308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.671306, 8.514095, 15.794308>,  <3.846308, 8.482890, 15.121385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.671306, 8.514095, 15.794308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.066090, 8.562725, 15.836506>,  <4.302960, 8.591903, 15.861825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.066090, 8.562725, 15.836506>,  <3.671306, 8.514095, 15.794308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.066090, 8.562725, 15.836506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155711, 0.887180, 0.434357,
		-0.040788, -0.445120, 0.894542,
		0.986960, 0.121574, 0.105496,
		4.362178, 8.599197, 15.868155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.716818, 8.683731, 16.429293>,  <3.671306, 8.514095, 15.794308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.716818, 8.683731, 16.429293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.073377, 8.783806, 16.278126>,  <4.287312, 8.843851, 16.187426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.073377, 8.783806, 16.278126>,  <3.716818, 8.683731, 16.429293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.073377, 8.783806, 16.278126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047555, 0.880863, 0.470977,
		0.450724, -0.401855, 0.797095,
		0.891396, 0.250187, -0.377915,
		4.340796, 8.858862, 16.164751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.054247, 9.037264, 16.973442>,  <3.716818, 8.683731, 16.429293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.054247, 9.037264, 16.973442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.251191, 9.144356, 16.642164>,  <4.369357, 9.208611, 16.443398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.251191, 9.144356, 16.642164>,  <4.054247, 9.037264, 16.973442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.251191, 9.144356, 16.642164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122030, 0.963352, 0.238876,
		0.861795, -0.016548, 0.506986,
		0.492359, 0.267730, -0.828193,
		4.398899, 9.224675, 16.393707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.792280, 9.377780, 17.127182>,  <4.054247, 9.037264, 16.973442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.792280, 9.377780, 17.127182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.652814, 9.514055, 16.777927>,  <4.569134, 9.595820, 16.568375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.652814, 9.514055, 16.777927>,  <4.792280, 9.377780, 17.127182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.652814, 9.514055, 16.777927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047150, 0.936791, 0.346697,
		0.936061, 0.079713, -0.342689,
		-0.348664, 0.340688, -0.873135,
		4.548214, 9.616261, 16.515987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.074093, 9.976192, 17.156601>,  <4.792280, 9.377780, 17.127182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.074093, 9.976192, 17.156601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.780207, 10.028550, 16.890350>,  <4.603875, 10.059965, 16.730600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.780207, 10.028550, 16.890350>,  <5.074093, 9.976192, 17.156601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.780207, 10.028550, 16.890350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172608, 0.984985, 0.003171,
		0.656049, -0.112563, -0.746277,
		-0.734715, 0.130894, -0.665628,
		4.559792, 10.067819, 16.690662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.219960, 10.507799, 16.706390>,  <5.074093, 9.976192, 17.156601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.219960, 10.507799, 16.706390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.833541, 10.482535, 16.606180>,  <4.601690, 10.467377, 16.546055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.833541, 10.482535, 16.606180>,  <5.219960, 10.507799, 16.706390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.833541, 10.482535, 16.606180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077018, 0.995973, 0.045897,
		0.246617, 0.063634, -0.967021,
		-0.966048, -0.063160, -0.250525,
		4.543727, 10.463588, 16.531023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.080039, 10.906746, 16.089670>,  <5.219960, 10.507799, 16.706390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.080039, 10.906746, 16.089670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.722307, 10.888003, 16.267649>,  <4.507667, 10.876758, 16.374435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.722307, 10.888003, 16.267649>,  <5.080039, 10.906746, 16.089670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.722307, 10.888003, 16.267649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121813, 0.982432, -0.141384,
		-0.430504, -0.180644, -0.884327,
		-0.894331, -0.046856, 0.444945,
		4.454007, 10.873946, 16.401133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.747900, 11.395180, 15.708915>,  <5.080039, 10.906746, 16.089670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.747900, 11.395180, 15.708915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.531789, 11.328463, 16.038832>,  <4.402122, 11.288432, 16.236782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.531789, 11.328463, 16.038832>,  <4.747900, 11.395180, 15.708915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.531789, 11.328463, 16.038832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163359, 0.982302, 0.091638,
		-0.825478, -0.085227, -0.557962,
		-0.540277, -0.166793, 0.824791,
		4.369706, 11.278424, 16.286268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.968293, 11.620518, 15.634305>,  <4.747900, 11.395180, 15.708915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.968293, 11.620518, 15.634305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.095047, 11.617662, 16.013680>,  <4.171100, 11.615950, 16.241304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.095047, 11.617662, 16.013680>,  <3.968293, 11.620518, 15.634305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.095047, 11.617662, 16.013680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095146, 0.995167, -0.024300,
		-0.943679, 0.097940, 0.316034,
		0.316887, -0.007138, 0.948436,
		4.190114, 11.615521, 16.298210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.754410, 12.244993, 15.770370>,  <3.968293, 11.620518, 15.634305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.754410, 12.244993, 15.770370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.968872, 12.175205, 16.100727>,  <4.097549, 12.133332, 16.298941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.968872, 12.175205, 16.100727>,  <3.754410, 12.244993, 15.770370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.968872, 12.175205, 16.100727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248569, 0.967657, 0.043052,
		-0.806692, 0.182209, 0.562182,
		0.536155, -0.174471, 0.825892,
		4.129718, 12.122864, 16.348495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.432427, 12.646322, 16.297199>,  <3.754410, 12.244993, 15.770370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.432427, 12.646322, 16.297199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.812911, 12.591249, 16.407650>,  <4.041201, 12.558206, 16.473921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.812911, 12.591249, 16.407650>,  <3.432427, 12.646322, 16.297199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.812911, 12.591249, 16.407650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232743, 0.907696, -0.349168,
		-0.202563, 0.396398, 0.895454,
		0.951209, -0.137682, 0.276125,
		4.098274, 12.549945, 16.490488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.666781, 13.206123, 16.715252>,  <3.432427, 12.646322, 16.297199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.666781, 13.206123, 16.715252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.020136, 13.033326, 16.642580>,  <4.232149, 12.929647, 16.598978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.020136, 13.033326, 16.642580>,  <3.666781, 13.206123, 16.715252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.020136, 13.033326, 16.642580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405251, 0.898857, -0.166815,
		0.235366, 0.073737, 0.969106,
		0.883388, -0.431994, -0.181678,
		4.285152, 12.903728, 16.588078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.126049, 13.511086, 17.173353>,  <3.666781, 13.206123, 16.715252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.126049, 13.511086, 17.173353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.358926, 13.355095, 16.887985>,  <4.498652, 13.261500, 16.716764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.358926, 13.355095, 16.887985>,  <4.126049, 13.511086, 17.173353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.358926, 13.355095, 16.887985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368647, 0.908696, -0.195885,
		0.724674, -0.148958, 0.672800,
		0.582192, -0.389978, -0.713421,
		4.533583, 13.238101, 16.673960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.870380, 13.594968, 17.305588>,  <4.126049, 13.511086, 17.173353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.870380, 13.594968, 17.305588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.824272, 13.546490, 16.911222>,  <4.796607, 13.517403, 16.674603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.824272, 13.546490, 16.911222>,  <4.870380, 13.594968, 17.305588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.824272, 13.546490, 16.911222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425586, 0.890793, -0.159261,
		0.897546, -0.437949, -0.051103,
		-0.115270, -0.121195, -0.985913,
		4.789690, 13.510131, 16.615448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.465224, 13.688541, 16.978231>,  <4.870380, 13.594968, 17.305588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.465224, 13.688541, 16.978231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.186122, 13.809361, 16.718414>,  <5.018661, 13.881853, 16.562525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.186122, 13.809361, 16.718414>,  <5.465224, 13.688541, 16.978231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.186122, 13.809361, 16.718414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537729, 0.819934, -0.196357,
		0.473272, -0.486287, -0.734533,
		-0.697754, 0.302049, -0.649542,
		4.976796, 13.899976, 16.523552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.768416, 13.799410, 16.202238>,  <5.465224, 13.688541, 16.978231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.768416, 13.799410, 16.202238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.460043, 14.003082, 16.355286>,  <5.275019, 14.125285, 16.447115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.460043, 14.003082, 16.355286>,  <5.768416, 13.799410, 16.202238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.460043, 14.003082, 16.355286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552233, 0.833684, 0.003237,
		-0.317337, 0.213791, -0.923900,
		-0.770932, 0.509180, 0.382621,
		5.228763, 14.155836, 16.470072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.940776, 14.472015, 16.001249>,  <5.768416, 13.799410, 16.202238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.940776, 14.472015, 16.001249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.684377, 14.509357, 16.305988>,  <5.530538, 14.531763, 16.488831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.684377, 14.509357, 16.305988>,  <5.940776, 14.472015, 16.001249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.684377, 14.509357, 16.305988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397600, 0.889407, 0.225544,
		-0.656535, 0.447482, -0.607225,
		-0.640997, 0.093355, 0.761845,
		5.492078, 14.537364, 16.534542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.952397, 14.602880, 15.327284>,  <5.940776, 14.472015, 16.001249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.952397, 14.602880, 15.327284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.911832, 14.999435, 15.294150>,  <5.887493, 15.237369, 15.274270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.911832, 14.999435, 15.294150>,  <5.952397, 14.602880, 15.327284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.911832, 14.999435, 15.294150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860599, 0.129194, 0.492623,
		0.499083, -0.021328, -0.866291,
		-0.101413, 0.991390, -0.082833,
		5.881408, 15.296852, 15.269300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.644110, 14.928855, 15.114456>,  <5.952397, 14.602880, 15.327284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.644110, 14.928855, 15.114456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.413939, 15.206945, 15.286755>,  <6.275837, 15.373800, 15.390134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.413939, 15.206945, 15.286755>,  <6.644110, 14.928855, 15.114456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.413939, 15.206945, 15.286755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785291, 0.322539, 0.528476,
		0.228478, 0.642361, -0.731553,
		-0.575427, 0.695227, 0.430747,
		6.241312, 15.415514, 15.415978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.824059, 15.594320, 15.055571>,  <6.644110, 14.928855, 15.114456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.824059, 15.594320, 15.055571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.627654, 15.614274, 15.403460>,  <6.509811, 15.626246, 15.612193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.627654, 15.614274, 15.403460>,  <6.824059, 15.594320, 15.055571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.627654, 15.614274, 15.403460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793955, 0.436504, 0.423201,
		-0.358527, 0.898318, -0.253935,
		-0.491013, 0.049885, 0.869723,
		6.480350, 15.629239, 15.664376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.795945, 16.331657, 15.334982>,  <6.824059, 15.594320, 15.055571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.795945, 16.331657, 15.334982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752199, 16.098171, 15.656805>,  <6.725952, 15.958079, 15.849899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752199, 16.098171, 15.656805>,  <6.795945, 16.331657, 15.334982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.752199, 16.098171, 15.656805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659468, 0.563014, 0.498114,
		-0.743735, 0.585056, 0.323369,
		-0.109364, -0.583716, 0.804559,
		6.719390, 15.923057, 15.898172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.484342, 16.693071, 15.974328>,  <6.795945, 16.331657, 15.334982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.484342, 16.693071, 15.974328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.715513, 16.387094, 16.088074>,  <6.854215, 16.203508, 16.156321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.715513, 16.387094, 16.088074>,  <6.484342, 16.693071, 15.974328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.715513, 16.387094, 16.088074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531810, 0.617310, 0.579747,
		-0.619014, -0.183824, 0.763564,
		0.577927, -0.764943, 0.284364,
		6.888891, 16.157612, 16.173384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.470488, 16.539038, 16.788332>,  <6.484342, 16.693071, 15.974328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.470488, 16.539038, 16.788332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.805263, 16.415680, 16.607479>,  <7.006128, 16.341665, 16.498966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.805263, 16.415680, 16.607479>,  <6.470488, 16.539038, 16.788332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.805263, 16.415680, 16.607479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527641, 0.674077, 0.516929,
		0.145355, -0.671203, 0.726883,
		0.836939, -0.308395, -0.452134,
		7.056345, 16.323162, 16.471838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.899634, 16.594986, 17.337435>,  <6.470488, 16.539038, 16.788332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.899634, 16.594986, 17.337435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.126410, 16.585159, 17.008078>,  <7.262475, 16.579264, 16.810463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.126410, 16.585159, 17.008078>,  <6.899634, 16.594986, 17.337435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.126410, 16.585159, 17.008078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623893, 0.665499, 0.409718,
		0.537901, -0.745994, 0.392625,
		0.566939, -0.024568, -0.823393,
		7.296492, 16.577789, 16.761059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.638188, 16.554512, 17.631731>,  <6.899634, 16.594986, 17.337435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.638188, 16.554512, 17.631731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.661315, 16.645876, 17.242992>,  <7.675192, 16.700695, 17.009748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.661315, 16.645876, 17.242992>,  <7.638188, 16.554512, 17.631731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.661315, 16.645876, 17.242992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831058, 0.528389, 0.173628,
		0.553172, -0.817700, -0.159271,
		0.057819, 0.228410, -0.971847,
		7.678661, 16.714399, 16.951439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.283368, 16.332775, 17.487768>,  <7.638188, 16.554512, 17.631731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.283368, 16.332775, 17.487768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.185537, 16.638231, 17.248758>,  <8.126839, 16.821505, 17.105352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.185537, 16.638231, 17.248758>,  <8.283368, 16.332775, 17.487768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.185537, 16.638231, 17.248758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856901, 0.458611, 0.235364,
		0.453765, -0.454455, -0.766530,
		-0.244576, 0.763640, -0.597525,
		8.112164, 16.867323, 17.069500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.875959, 16.464979, 17.274879>,  <8.283368, 16.332775, 17.487768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.875959, 16.464979, 17.274879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.675759, 16.797476, 17.178101>,  <8.555639, 16.996973, 17.120033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.675759, 16.797476, 17.178101>,  <8.875959, 16.464979, 17.274879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.675759, 16.797476, 17.178101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785382, 0.553537, 0.277078,
		0.364246, -0.051345, -0.929886,
		-0.500500, 0.831240, -0.241949,
		8.525609, 17.046848, 17.105516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.311852, 16.854538, 16.814993>,  <8.875959, 16.464979, 17.274879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.311852, 16.854538, 16.814993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.051459, 17.103334, 16.989052>,  <8.895224, 17.252611, 17.093487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.051459, 17.103334, 16.989052>,  <9.311852, 16.854538, 16.814993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.051459, 17.103334, 16.989052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748723, 0.620552, 0.233085,
		-0.125055, 0.477539, -0.869665,
		-0.650980, 0.621989, 0.435148,
		8.856165, 17.289932, 17.119596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.629074, 17.540411, 16.699411>,  <9.311852, 16.854538, 16.814993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.629074, 17.540411, 16.699411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.351694, 17.616360, 16.977427>,  <9.185266, 17.661928, 17.144236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.351694, 17.616360, 16.977427>,  <9.629074, 17.540411, 16.699411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.351694, 17.616360, 16.977427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631491, 0.624628, 0.459412,
		-0.346911, 0.757489, -0.553049,
		-0.693449, 0.189870, 0.695038,
		9.143660, 17.673321, 17.185938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.627537, 18.194963, 16.838869>,  <9.629074, 17.540411, 16.699411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.627537, 18.194963, 16.838869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.471732, 18.054445, 17.179426>,  <9.378249, 17.970135, 17.383760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.471732, 18.054445, 17.179426>,  <9.627537, 18.194963, 16.838869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.471732, 18.054445, 17.179426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670838, 0.525181, 0.523604,
		-0.631075, 0.775098, 0.031097,
		-0.389513, -0.351295, 0.851394,
		9.354878, 17.949057, 17.434845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.679110, 18.684132, 17.268740>,  <9.627537, 18.194963, 16.838869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.679110, 18.684132, 17.268740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581347, 18.419552, 17.552359>,  <9.522690, 18.260803, 17.722530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581347, 18.419552, 17.552359>,  <9.679110, 18.684132, 17.268740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.581347, 18.419552, 17.552359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646306, 0.433997, 0.627642,
		-0.722879, 0.611662, 0.321428,
		-0.244406, -0.661450, 0.709049,
		9.508025, 18.221117, 17.765074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.518381, 19.048756, 17.797199>,  <9.679110, 18.684132, 17.268740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.518381, 19.048756, 17.797199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.622403, 18.695284, 17.952881>,  <9.684816, 18.483200, 18.046289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.622403, 18.695284, 17.952881>,  <9.518381, 19.048756, 17.797199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.622403, 18.695284, 17.952881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494741, 0.468086, 0.732207,
		-0.829218, 0.002142, 0.558921,
		0.260055, -0.883681, 0.389205,
		9.700419, 18.430180, 18.069643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.409087, 19.178978, 18.459131>,  <9.518381, 19.048756, 17.797199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.409087, 19.178978, 18.459131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.624319, 18.841942, 18.468145>,  <9.753458, 18.639719, 18.473553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.624319, 18.841942, 18.468145>,  <9.409087, 19.178978, 18.459131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.624319, 18.841942, 18.468145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408494, 0.284063, 0.867433,
		-0.737294, -0.457543, 0.497043,
		0.538080, -0.842593, 0.022534,
		9.785743, 18.589165, 18.474905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.143066, 18.753174, 18.996218>,  <9.409087, 19.178978, 18.459131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.143066, 18.753174, 18.996218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524003, 18.651051, 18.929451>,  <9.752565, 18.589777, 18.889391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524003, 18.651051, 18.929451>,  <9.143066, 18.753174, 18.996218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.524003, 18.651051, 18.929451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192627, 0.079067, 0.978081,
		-0.236516, -0.963621, 0.124478,
		0.952342, -0.255310, -0.166919,
		9.809706, 18.574457, 18.879375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.279458, 18.245014, 19.480665>,  <9.143066, 18.753174, 18.996218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.279458, 18.245014, 19.480665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.635795, 18.388590, 19.369265>,  <9.849597, 18.474735, 19.302423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.635795, 18.388590, 19.369265>,  <9.279458, 18.245014, 19.480665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.635795, 18.388590, 19.369265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300948, -0.007000, 0.953615,
		0.340339, -0.933335, -0.114257,
		0.890842, 0.358937, -0.278503,
		9.903048, 18.496271, 19.285713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.759335, 17.839024, 19.799309>,  <9.279458, 18.245014, 19.480665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.759335, 17.839024, 19.799309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.946582, 18.184519, 19.724669>,  <10.058930, 18.391817, 19.679884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.946582, 18.184519, 19.724669>,  <9.759335, 17.839024, 19.799309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.946582, 18.184519, 19.724669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342177, 0.017513, 0.939472,
		0.814728, -0.503633, -0.287354,
		0.468117, 0.863740, -0.186600,
		10.087017, 18.443642, 19.668688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.363096, 17.781750, 20.105957>,  <9.759335, 17.839024, 19.799309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.363096, 17.781750, 20.105957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.324471, 18.177307, 20.060760>,  <10.301296, 18.414642, 20.033642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.324471, 18.177307, 20.060760>,  <10.363096, 17.781750, 20.105957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.324471, 18.177307, 20.060760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351024, 0.140061, 0.925832,
		0.931374, 0.049738, -0.360650,
		-0.096562, 0.988893, -0.112991,
		10.295503, 18.473974, 20.026863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.743208, 17.969681, 20.658316>,  <10.363096, 17.781750, 20.105957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.743208, 17.969681, 20.658316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.578887, 18.319063, 20.553764>,  <10.480294, 18.528692, 20.491034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.578887, 18.319063, 20.553764>,  <10.743208, 17.969681, 20.658316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.578887, 18.319063, 20.553764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161517, 0.351874, 0.922007,
		0.897304, 0.336545, -0.285628,
		-0.410802, 0.873454, -0.261380,
		10.455647, 18.581100, 20.475351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.223436, 18.498852, 20.805603>,  <10.743208, 17.969681, 20.658316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.223436, 18.498852, 20.805603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.877243, 18.698513, 20.788696>,  <10.669527, 18.818310, 20.778553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.877243, 18.698513, 20.788696>,  <11.223436, 18.498852, 20.805603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.877243, 18.698513, 20.788696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223275, 0.459910, 0.859436,
		0.448427, 0.734391, -0.509493,
		-0.865483, 0.499151, -0.042265,
		10.617598, 18.848259, 20.776016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.325413, 19.196274, 21.115501>,  <11.223436, 18.498852, 20.805603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.325413, 19.196274, 21.115501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.936873, 19.104549, 21.140478>,  <10.703750, 19.049515, 21.155464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.936873, 19.104549, 21.140478>,  <11.325413, 19.196274, 21.115501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.936873, 19.104549, 21.140478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036561, 0.403797, 0.914118,
		-0.234831, 0.885644, -0.400611,
		-0.971348, -0.229310, 0.062444,
		10.645469, 19.035757, 21.159212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.045097, 19.848158, 21.367411>,  <11.325413, 19.196274, 21.115501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.045097, 19.848158, 21.367411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.764209, 19.568037, 21.418737>,  <10.595675, 19.399965, 21.449533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.764209, 19.568037, 21.418737>,  <11.045097, 19.848158, 21.367411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.764209, 19.568037, 21.418737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190831, 0.358775, 0.913709,
		-0.685907, 0.617139, -0.385579,
		-0.702221, -0.700300, 0.128317,
		10.553542, 19.357946, 21.457233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.408952, 20.226570, 21.521690>,  <11.045097, 19.848158, 21.367411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.408952, 20.226570, 21.521690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.376140, 19.861713, 21.682323>,  <10.356453, 19.642799, 21.778704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.376140, 19.861713, 21.682323>,  <10.408952, 20.226570, 21.521690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.376140, 19.861713, 21.682323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383357, 0.400817, 0.832096,
		-0.919950, -0.085693, -0.382555,
		-0.082030, -0.912142, 0.401582,
		10.351531, 19.588070, 21.802797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.868253, 20.289267, 21.854816>,  <10.408952, 20.226570, 21.521690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.868253, 20.289267, 21.854816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071791, 19.985243, 22.016500>,  <10.193913, 19.802828, 22.113510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071791, 19.985243, 22.016500>,  <9.868253, 20.289267, 21.854816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.071791, 19.985243, 22.016500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392434, 0.213114, 0.894750,
		-0.766207, -0.613914, -0.189831,
		0.508844, -0.760061, 0.404211,
		10.224444, 19.757225, 22.137764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.427416, 20.081682, 22.344706>,  <9.868253, 20.289267, 21.854816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.427416, 20.081682, 22.344706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.774714, 19.915257, 22.452808>,  <9.983093, 19.815401, 22.517670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.774714, 19.915257, 22.452808>,  <9.427416, 20.081682, 22.344706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.774714, 19.915257, 22.452808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233878, 0.137169, 0.962541,
		-0.437548, -0.898931, 0.021789,
		0.868247, -0.416062, 0.270258,
		10.035189, 19.790438, 22.533886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.327724, 19.671364, 22.915586>,  <9.427416, 20.081682, 22.344706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.327724, 19.671364, 22.915586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.717603, 19.754381, 22.948793>,  <9.951530, 19.804192, 22.968718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.717603, 19.754381, 22.948793>,  <9.327724, 19.671364, 22.915586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.717603, 19.754381, 22.948793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118058, 0.162595, 0.979605,
		0.189825, -0.964616, 0.182984,
		0.974694, 0.207556, 0.083016,
		10.010012, 19.816645, 22.973700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.460545, 19.470636, 23.607256>,  <9.327724, 19.671364, 22.915586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.460545, 19.470636, 23.607256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.779500, 19.695814, 23.520292>,  <9.970873, 19.830921, 23.468115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.779500, 19.695814, 23.520292>,  <9.460545, 19.470636, 23.607256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.779500, 19.695814, 23.520292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018649, 0.383082, 0.923526,
		0.603178, -0.732354, 0.315964,
		0.797388, 0.562943, -0.217409,
		10.018717, 19.864697, 23.455070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.899798, 19.352472, 24.110525>,  <9.460545, 19.470636, 23.607256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.899798, 19.352472, 24.110525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.034433, 19.706139, 23.980936>,  <10.115214, 19.918339, 23.903183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.034433, 19.706139, 23.980936>,  <9.899798, 19.352472, 24.110525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.034433, 19.706139, 23.980936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095101, 0.374204, 0.922457,
		0.936837, -0.279678, 0.210038,
		0.336588, 0.884167, -0.323971,
		10.135409, 19.971388, 23.883745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.545244, 19.533251, 24.491131>,  <9.899798, 19.352472, 24.110525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.545244, 19.533251, 24.491131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.383037, 19.874865, 24.360788>,  <10.285712, 20.079832, 24.282583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.383037, 19.874865, 24.360788>,  <10.545244, 19.533251, 24.491131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.383037, 19.874865, 24.360788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137381, 0.409377, 0.901963,
		0.903704, 0.320997, -0.283338,
		-0.405519, 0.854032, -0.325857,
		10.261381, 20.131075, 24.263031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.000588, 19.990305, 24.583038>,  <10.545244, 19.533251, 24.491131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.000588, 19.990305, 24.583038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.687528, 20.237377, 24.552244>,  <10.499691, 20.385620, 24.533768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.687528, 20.237377, 24.552244>,  <11.000588, 19.990305, 24.583038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.687528, 20.237377, 24.552244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318886, 0.504089, 0.802624,
		0.534573, 0.603626, -0.591496,
		-0.782652, 0.617681, -0.076984,
		10.452732, 20.422682, 24.529148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.218901, 20.730989, 24.594379>,  <11.000588, 19.990305, 24.583038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.218901, 20.730989, 24.594379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.836997, 20.692738, 24.707012>,  <10.607855, 20.669786, 24.774591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.836997, 20.692738, 24.707012>,  <11.218901, 20.730989, 24.594379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.836997, 20.692738, 24.707012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177654, 0.575924, 0.797966,
		-0.238479, 0.811891, -0.532880,
		-0.954760, -0.095629, 0.281581,
		10.550569, 20.664049, 24.791487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.897888, 21.496479, 24.721781>,  <11.218901, 20.730989, 24.594379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.897888, 21.496479, 24.721781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.684130, 21.236687, 24.938150>,  <10.555875, 21.080812, 25.067972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.684130, 21.236687, 24.938150>,  <10.897888, 21.496479, 24.721781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.684130, 21.236687, 24.938150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066409, 0.605726, 0.792897,
		-0.842620, 0.459644, -0.280567,
		-0.534397, -0.649479, 0.540922,
		10.523810, 21.041843, 25.100428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.545325, 21.911619, 25.146353>,  <10.897888, 21.496479, 24.721781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.545325, 21.911619, 25.146353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.495582, 21.547888, 25.305174>,  <10.465735, 21.329649, 25.400467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.495582, 21.547888, 25.305174>,  <10.545325, 21.911619, 25.146353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.495582, 21.547888, 25.305174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211848, 0.415267, 0.884689,
		-0.969358, 0.025905, -0.244282,
		-0.124360, -0.909331, 0.397054,
		10.458274, 21.275089, 25.424290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.971005, 21.957695, 25.495388>,  <10.545325, 21.911619, 25.146353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.971005, 21.957695, 25.495388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.199372, 21.671810, 25.657001>,  <10.336392, 21.500278, 25.753969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.199372, 21.671810, 25.657001>,  <9.971005, 21.957695, 25.495388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.199372, 21.671810, 25.657001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144258, 0.397133, 0.906353,
		-0.808235, -0.575736, 0.123627,
		0.570916, -0.714712, 0.404031,
		10.370647, 21.457397, 25.778212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.786954, 21.951071, 26.144829>,  <9.971005, 21.957695, 25.495388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.786954, 21.951071, 26.144829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.131472, 21.749825, 26.173250>,  <10.338182, 21.629076, 26.190304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.131472, 21.749825, 26.173250>,  <9.786954, 21.951071, 26.144829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.131472, 21.749825, 26.173250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033220, 0.195300, 0.980181,
		-0.507021, -0.841862, 0.184924,
		0.861293, -0.503116, 0.071055,
		10.389859, 21.598890, 26.194567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.789663, 21.860411, 26.822599>,  <9.786954, 21.951071, 26.144829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.789663, 21.860411, 26.822599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.165554, 21.752701, 26.738310>,  <10.391088, 21.688074, 26.687737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.165554, 21.752701, 26.738310>,  <9.789663, 21.860411, 26.822599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.165554, 21.752701, 26.738310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266209, 0.189416, 0.945121,
		-0.214584, -0.944252, 0.249683,
		0.939727, -0.269276, -0.210723,
		10.447472, 21.671919, 26.675093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.033759, 21.530127, 27.510798>,  <9.789663, 21.860411, 26.822599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.033759, 21.530127, 27.510798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.361070, 21.571516, 27.284622>,  <10.557456, 21.596350, 27.148918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.361070, 21.571516, 27.284622>,  <10.033759, 21.530127, 27.510798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.361070, 21.571516, 27.284622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574185, -0.193596, 0.795508,
		-0.027149, -0.975609, -0.217830,
		0.818275, 0.103477, -0.565436,
		10.606552, 21.602558, 27.114992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.412423, 20.891987, 27.482550>,  <10.033759, 21.530127, 27.510798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.412423, 20.891987, 27.482550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.622001, 21.230951, 27.448187>,  <10.747747, 21.434330, 27.427568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.622001, 21.230951, 27.448187>,  <10.412423, 20.891987, 27.482550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.622001, 21.230951, 27.448187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285144, -0.079469, 0.955185,
		0.802606, -0.524959, -0.283271,
		0.523944, 0.847410, -0.085907,
		10.779183, 21.485174, 27.422415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.017776, 20.751169, 27.909254>,  <10.412423, 20.891987, 27.482550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.017776, 20.751169, 27.909254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016994, 21.144777, 27.838039>,  <11.016524, 21.380943, 27.795311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016994, 21.144777, 27.838039>,  <11.017776, 20.751169, 27.909254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.016994, 21.144777, 27.838039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630995, 0.139333, 0.763172,
		0.775784, -0.110849, -0.621186,
		-0.001955, 0.984022, -0.178037,
		11.016407, 21.439983, 27.784628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.746742, 21.032864, 27.983215>,  <11.017776, 20.751169, 27.909254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.746742, 21.032864, 27.983215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501422, 21.341711, 28.049786>,  <11.354230, 21.527020, 28.089727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501422, 21.341711, 28.049786>,  <11.746742, 21.032864, 27.983215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.501422, 21.341711, 28.049786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421378, 0.141630, 0.895757,
		0.668059, 0.619496, -0.412215,
		-0.613300, 0.772117, 0.166425,
		11.317431, 21.573347, 28.099712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.184772, 21.627064, 28.085360>,  <11.746742, 21.032864, 27.983215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.184772, 21.627064, 28.085360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.845634, 21.750147, 28.258091>,  <11.642152, 21.823997, 28.361729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.845634, 21.750147, 28.258091>,  <12.184772, 21.627064, 28.085360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.845634, 21.750147, 28.258091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492744, 0.156398, 0.856004,
		0.195862, 0.938539, -0.284222,
		-0.847845, 0.307708, 0.431827,
		11.591281, 21.842459, 28.387640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.377029, 22.232157, 28.426338>,  <12.184772, 21.627064, 28.085360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.377029, 22.232157, 28.426338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.044642, 22.077414, 28.586256>,  <11.845210, 21.984568, 28.682207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.044642, 22.077414, 28.586256>,  <12.377029, 22.232157, 28.426338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.044642, 22.077414, 28.586256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337195, 0.221351, 0.915043,
		-0.442486, 0.895179, -0.053489,
		-0.830967, -0.386857, 0.399794,
		11.795352, 21.961357, 28.706194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.057642, 22.714954, 28.802238>,  <12.377029, 22.232157, 28.426338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.057642, 22.714954, 28.802238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.903280, 22.374739, 28.945158>,  <11.810663, 22.170609, 29.030910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.903280, 22.374739, 28.945158>,  <12.057642, 22.714954, 28.802238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.903280, 22.374739, 28.945158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291052, 0.255272, 0.922022,
		-0.875424, 0.459805, 0.149040,
		-0.385904, -0.850539, 0.357298,
		11.787509, 22.119577, 29.052347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.778996, 22.988491, 29.398329>,  <12.057642, 22.714954, 28.802238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.778996, 22.988491, 29.398329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.808070, 22.590401, 29.424385>,  <11.825515, 22.351547, 29.440020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.808070, 22.590401, 29.424385>,  <11.778996, 22.988491, 29.398329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.808070, 22.590401, 29.424385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272309, 0.082635, 0.958655,
		-0.959460, -0.051943, 0.277016,
		0.072686, -0.995225, 0.065141,
		11.829876, 22.291834, 29.443928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.945881, 22.942696, 30.162798>,  <11.778996, 22.988491, 29.398329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.945881, 22.942696, 30.162798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.006715, 23.223927, 30.440662>,  <12.043215, 23.392666, 30.607382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.006715, 23.223927, 30.440662>,  <11.945881, 22.942696, 30.162798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.006715, 23.223927, 30.440662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340028, -0.697154, 0.631156,
		0.928036, 0.140215, -0.345092,
		0.152085, 0.703077, 0.694661,
		12.052341, 23.434849, 30.649061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.604316, 22.921761, 30.399668>,  <11.945881, 22.942696, 30.162798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.604316, 22.921761, 30.399668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.394459, 23.069075, 30.706684>,  <12.268545, 23.157463, 30.890894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.394459, 23.069075, 30.706684>,  <12.604316, 22.921761, 30.399668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.394459, 23.069075, 30.706684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263235, -0.787223, 0.557662,
		0.809604, 0.494616, 0.316065,
		-0.524642, 0.368286, 0.767539,
		12.237066, 23.179560, 30.936945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.940676, 22.944002, 31.093821>,  <12.604316, 22.921761, 30.399668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.940676, 22.944002, 31.093821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.551029, 22.855963, 31.073217>,  <12.317241, 22.803139, 31.060856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.551029, 22.855963, 31.073217>,  <12.940676, 22.944002, 31.093821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.551029, 22.855963, 31.073217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190495, -0.921992, 0.337109,
		-0.121687, 0.318572, 0.940055,
		-0.974117, -0.220098, -0.051508,
		12.258794, 22.789934, 31.057766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.667245, 22.538906, 31.757166>,  <12.940676, 22.944002, 31.093821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.667245, 22.538906, 31.757166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489286, 22.438953, 31.413160>,  <12.382511, 22.378981, 31.206757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489286, 22.438953, 31.413160>,  <12.667245, 22.538906, 31.757166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.489286, 22.438953, 31.413160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167995, -0.966525, 0.193925,
		-0.879684, -0.058201, 0.471984,
		-0.444897, -0.249884, -0.860014,
		12.355817, 22.363989, 31.155155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.246772, 21.958115, 31.891470>,  <12.667245, 22.538906, 31.757166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.246772, 21.958115, 31.891470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.299882, 21.970917, 31.495218>,  <12.331748, 21.978598, 31.257467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.299882, 21.970917, 31.495218>,  <12.246772, 21.958115, 31.891470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.299882, 21.970917, 31.495218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037084, -0.998939, -0.027304,
		-0.990452, -0.033112, -0.133821,
		0.132775, 0.032006, -0.990629,
		12.339714, 21.980518, 31.198029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.666803, 21.604214, 31.571800>,  <12.246772, 21.958115, 31.891470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.666803, 21.604214, 31.571800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.026396, 21.637486, 31.399794>,  <12.242151, 21.657448, 31.296591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.026396, 21.637486, 31.399794>,  <11.666803, 21.604214, 31.571800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.026396, 21.637486, 31.399794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068146, -0.996408, -0.050275,
		-0.432652, 0.015893, -0.901421,
		0.898982, 0.083180, -0.430015,
		12.296090, 21.662439, 31.270790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.722202, 21.192133, 31.010353>,  <11.666803, 21.604214, 31.571800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.722202, 21.192133, 31.010353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.098091, 21.216557, 31.144932>,  <12.323625, 21.231211, 31.225679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.098091, 21.216557, 31.144932>,  <11.722202, 21.192133, 31.010353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.098091, 21.216557, 31.144932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074082, -0.996913, -0.026000,
		0.333820, 0.049357, -0.941344,
		0.939721, 0.061058, 0.336446,
		12.380008, 21.234875, 31.245865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.307686, 21.114313, 30.490368>,  <11.722202, 21.192133, 31.010353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.307686, 21.114313, 30.490368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359043, 20.970421, 30.860041>,  <12.389857, 20.884085, 31.081844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359043, 20.970421, 30.860041>,  <12.307686, 21.114313, 30.490368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.359043, 20.970421, 30.860041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035063, -0.932957, -0.358277,
		0.991104, 0.013595, -0.132398,
		0.128393, -0.359732, 0.924180,
		12.397561, 20.862501, 31.137295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.883566, 20.534668, 30.576929>,  <12.307686, 21.114313, 30.490368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.883566, 20.534668, 30.576929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.600703, 20.482069, 30.854818>,  <12.430985, 20.450510, 31.021551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.600703, 20.482069, 30.854818>,  <12.883566, 20.534668, 30.576929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.600703, 20.482069, 30.854818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099147, -0.954403, -0.281575,
		0.700071, -0.267998, 0.661875,
		-0.707157, -0.131499, 0.694721,
		12.388556, 20.442619, 31.063234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.064652, 20.037338, 30.930964>,  <12.883566, 20.534668, 30.576929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.064652, 20.037338, 30.930964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.670194, 20.072533, 30.874718>,  <12.433518, 20.093649, 30.840971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.670194, 20.072533, 30.874718>,  <13.064652, 20.037338, 30.930964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.670194, 20.072533, 30.874718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018906, -0.901820, -0.431698,
		-0.164791, -0.423060, 0.890991,
		-0.986148, 0.087985, -0.140613,
		12.374350, 20.098928, 30.832533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.710822, 19.375885, 31.251688>,  <13.064652, 20.037338, 30.930964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.710822, 19.375885, 31.251688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.545416, 19.560375, 30.937675>,  <12.446172, 19.671068, 30.749268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.545416, 19.560375, 30.937675>,  <12.710822, 19.375885, 31.251688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.545416, 19.560375, 30.937675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047998, -0.872047, -0.487063,
		-0.909230, -0.163729, 0.382745,
		-0.413518, 0.461223, -0.785033,
		12.421361, 19.698742, 30.702166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.174205, 19.030136, 31.022230>,  <12.710822, 19.375885, 31.251688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.174205, 19.030136, 31.022230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.343095, 19.226686, 30.717527>,  <12.444428, 19.344616, 30.534706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.343095, 19.226686, 30.717527>,  <12.174205, 19.030136, 31.022230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.343095, 19.226686, 30.717527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005074, -0.841605, -0.540069,
		-0.906477, 0.224165, -0.357839,
		0.422224, 0.491376, -0.761759,
		12.469762, 19.374100, 30.489000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.820669, 18.751450, 30.451338>,  <12.174205, 19.030136, 31.022230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.820669, 18.751450, 30.451338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.132749, 18.931326, 30.277411>,  <12.319997, 19.039251, 30.173054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.132749, 18.931326, 30.277411>,  <11.820669, 18.751450, 30.451338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.132749, 18.931326, 30.277411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045904, -0.734402, -0.677161,
		-0.623844, 0.508361, -0.593622,
		0.780200, 0.449692, -0.434817,
		12.366809, 19.066233, 30.146965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.769156, 18.741129, 29.699816>,  <11.820669, 18.751450, 30.451338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.769156, 18.741129, 29.699816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.160951, 18.794605, 29.760122>,  <12.396028, 18.826691, 29.796307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.160951, 18.794605, 29.760122>,  <11.769156, 18.741129, 29.699816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.160951, 18.794605, 29.760122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200948, -0.703487, -0.681709,
		0.014924, 0.698021, -0.715921,
		0.979488, 0.133689, 0.150765,
		12.454797, 18.834711, 29.805351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.039242, 18.862061, 29.096487>,  <11.769156, 18.741129, 29.699816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.039242, 18.862061, 29.096487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.338084, 18.711870, 29.315887>,  <12.517389, 18.621756, 29.447527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.338084, 18.711870, 29.315887>,  <12.039242, 18.862061, 29.096487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.338084, 18.711870, 29.315887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247816, -0.608345, -0.753992,
		0.616783, 0.699238, -0.361449,
		0.747105, -0.375476, 0.548499,
		12.562216, 18.599228, 29.480436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.565651, 18.756905, 28.629042>,  <12.039242, 18.862061, 29.096487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.565651, 18.756905, 28.629042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.702918, 18.547337, 28.940872>,  <12.785278, 18.421595, 29.127972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.702918, 18.547337, 28.940872>,  <12.565651, 18.756905, 28.629042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.702918, 18.547337, 28.940872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261971, -0.743656, -0.615099,
		0.902002, 0.415309, -0.117946,
		0.343167, -0.523922, 0.779578,
		12.805868, 18.390160, 29.174746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122731, 18.398756, 28.460817>,  <12.565651, 18.756905, 28.629042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.122731, 18.398756, 28.460817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011079, 18.175165, 28.773132>,  <12.944088, 18.041012, 28.960522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011079, 18.175165, 28.773132>,  <13.122731, 18.398756, 28.460817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011079, 18.175165, 28.773132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478297, -0.785997, -0.391715,
		0.832657, 0.264110, 0.486752,
		-0.279130, -0.558976, 0.780789,
		12.927340, 18.007473, 29.007370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.698146, 17.994440, 28.513115>,  <13.122731, 18.398756, 28.460817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.698146, 17.994440, 28.513115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410017, 17.800848, 28.711870>,  <13.237140, 17.684692, 28.831123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410017, 17.800848, 28.711870>,  <13.698146, 17.994440, 28.513115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410017, 17.800848, 28.711870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162890, -0.814343, -0.557057,
		0.674242, -0.320323, 0.665426,
		-0.720323, -0.483982, 0.496887,
		13.193920, 17.655653, 28.860937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.914793, 17.195387, 28.656921>,  <13.698146, 17.994440, 28.513115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.914793, 17.195387, 28.656921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526159, 17.189182, 28.751396>,  <13.292979, 17.185459, 28.808081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526159, 17.189182, 28.751396>,  <13.914793, 17.195387, 28.656921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.526159, 17.189182, 28.751396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138379, -0.772336, -0.619958,
		0.192031, -0.635024, 0.748243,
		-0.971584, -0.015510, 0.236187,
		13.234684, 17.184530, 28.822252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.782155, 16.461582, 28.717854>,  <13.914793, 17.195387, 28.656921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.782155, 16.461582, 28.717854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458861, 16.676800, 28.622129>,  <13.264885, 16.805931, 28.564695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458861, 16.676800, 28.622129>,  <13.782155, 16.461582, 28.717854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.458861, 16.676800, 28.622129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250424, -0.681863, -0.687278,
		-0.532961, -0.495553, 0.685843,
		-0.808233, 0.538043, -0.239308,
		13.216392, 16.838213, 28.550337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.291613, 16.005192, 28.554790>,  <13.782155, 16.461582, 28.717854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.291613, 16.005192, 28.554790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.103896, 16.314594, 28.384399>,  <12.991266, 16.500235, 28.282166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.103896, 16.314594, 28.384399>,  <13.291613, 16.005192, 28.554790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.103896, 16.314594, 28.384399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120931, -0.534147, -0.836697,
		-0.874723, -0.341141, 0.344212,
		-0.469292, 0.773504, -0.425976,
		12.963108, 16.546646, 28.256607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.869538, 15.664178, 28.160995>,  <13.291613, 16.005192, 28.554790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.869538, 15.664178, 28.160995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.871900, 16.037107, 28.016367>,  <12.873317, 16.260866, 27.929590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.871900, 16.037107, 28.016367>,  <12.869538, 15.664178, 28.160995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.871900, 16.037107, 28.016367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103307, -0.359076, -0.927573,
		-0.994632, 0.042829, 0.094195,
		0.005904, 0.932325, -0.361574,
		12.873671, 16.316805, 27.907894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.257604, 15.621400, 27.856495>,  <12.869538, 15.664178, 28.160995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.257604, 15.621400, 27.856495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.469272, 15.912743, 27.682381>,  <12.596272, 16.087549, 27.577911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.469272, 15.912743, 27.682381>,  <12.257604, 15.621400, 27.856495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.469272, 15.912743, 27.682381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116719, -0.445639, -0.887571,
		-0.840450, 0.520482, -0.150805,
		0.529170, 0.728358, -0.435287,
		12.628022, 16.131250, 27.551794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.776350, 15.815677, 27.424963>,  <12.257604, 15.621400, 27.856495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.776350, 15.815677, 27.424963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.109898, 15.994942, 27.296083>,  <12.310026, 16.102501, 27.218756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.109898, 15.994942, 27.296083>,  <11.776350, 15.815677, 27.424963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.109898, 15.994942, 27.296083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251382, -0.211329, -0.944535,
		-0.491396, 0.868614, -0.063560,
		0.833869, 0.448163, -0.322200,
		12.360058, 16.129391, 27.199423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.628433, 16.317760, 26.977190>,  <11.776350, 15.815677, 27.424963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.628433, 16.317760, 26.977190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.999797, 16.203747, 26.881849>,  <12.222615, 16.135338, 26.824646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.999797, 16.203747, 26.881849>,  <11.628433, 16.317760, 26.977190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.999797, 16.203747, 26.881849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189007, 0.189998, -0.963420,
		0.319894, 0.939498, 0.122522,
		0.928409, -0.285035, -0.238350,
		12.278319, 16.118237, 26.810345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.837229, 16.836763, 26.466059>,  <11.628433, 16.317760, 26.977190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.837229, 16.836763, 26.466059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.053146, 16.503191, 26.420134>,  <12.182696, 16.303047, 26.392578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.053146, 16.503191, 26.420134>,  <11.837229, 16.836763, 26.466059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.053146, 16.503191, 26.420134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266900, -0.040194, -0.962886,
		0.798366, 0.550403, -0.244273,
		0.539793, -0.833931, -0.114813,
		12.215084, 16.253012, 26.385689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.234002, 16.867315, 25.789391>,  <11.837229, 16.836763, 26.466059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.234002, 16.867315, 25.789391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.217334, 16.479340, 25.885288>,  <12.207333, 16.246553, 25.942827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.217334, 16.479340, 25.885288>,  <12.234002, 16.867315, 25.789391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.217334, 16.479340, 25.885288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254042, -0.221780, -0.941422,
		0.966295, -0.100135, -0.237164,
		-0.041671, -0.969941, 0.239743,
		12.204833, 16.188356, 25.957211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.818797, 16.584688, 25.379534>,  <12.234002, 16.867315, 25.789391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.818797, 16.584688, 25.379534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561277, 16.292898, 25.471954>,  <12.406766, 16.117825, 25.527407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561277, 16.292898, 25.471954>,  <12.818797, 16.584688, 25.379534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.561277, 16.292898, 25.471954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048564, -0.262392, -0.963738,
		0.763652, -0.631675, 0.133501,
		-0.643799, -0.729477, 0.231053,
		12.368137, 16.074055, 25.541269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.935791, 16.093550, 24.849907>,  <12.818797, 16.584688, 25.379534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.935791, 16.093550, 24.849907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604970, 15.946444, 25.019958>,  <12.406478, 15.858180, 25.121988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604970, 15.946444, 25.019958>,  <12.935791, 16.093550, 24.849907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.604970, 15.946444, 25.019958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286243, -0.375355, -0.881574,
		0.483787, -0.850797, 0.205168,
		-0.827052, -0.367767, 0.425127,
		12.356854, 15.836114, 25.147497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.846233, 15.504962, 24.511318>,  <12.935791, 16.093550, 24.849907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.846233, 15.504962, 24.511318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.487159, 15.587273, 24.667171>,  <12.271714, 15.636660, 24.760683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.487159, 15.587273, 24.667171>,  <12.846233, 15.504962, 24.511318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.487159, 15.587273, 24.667171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438332, -0.326785, -0.837303,
		-0.044972, -0.922425, 0.383549,
		-0.897688, 0.205777, 0.389633,
		12.217853, 15.649006, 24.784061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.418573, 14.866283, 24.610657>,  <12.846233, 15.504962, 24.511318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.418573, 14.866283, 24.610657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.155320, 15.166469, 24.586437>,  <11.997368, 15.346580, 24.571905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.155320, 15.166469, 24.586437>,  <12.418573, 14.866283, 24.610657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.155320, 15.166469, 24.586437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452814, -0.458785, -0.764510,
		-0.601514, -0.475734, 0.641762,
		-0.658134, 0.750462, -0.060547,
		11.957880, 15.391607, 24.568274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.759963, 14.570662, 24.561611>,  <12.418573, 14.866283, 24.610657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.759963, 14.570662, 24.561611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.692254, 14.931732, 24.403360>,  <11.651628, 15.148375, 24.308411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.692254, 14.931732, 24.403360>,  <11.759963, 14.570662, 24.561611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.692254, 14.931732, 24.403360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675026, -0.398671, -0.620808,
		-0.718114, 0.161972, 0.676814,
		-0.169273, 0.902677, -0.395626,
		11.641472, 15.202536, 24.284672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.173321, 14.475430, 24.491037>,  <11.759963, 14.570662, 24.561611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.173321, 14.475430, 24.491037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.203866, 14.786583, 24.241537>,  <11.222193, 14.973275, 24.091837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.203866, 14.786583, 24.241537>,  <11.173321, 14.475430, 24.491037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.203866, 14.786583, 24.241537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585027, -0.471622, -0.659785,
		-0.807411, 0.415294, 0.419069,
		0.076363, 0.777884, -0.623751,
		11.226775, 15.019948, 24.054411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.509446, 14.638728, 24.262299>,  <11.173321, 14.475430, 24.491037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.509446, 14.638728, 24.262299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.722941, 14.841851, 23.991816>,  <10.851039, 14.963725, 23.829527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.722941, 14.841851, 23.991816>,  <10.509446, 14.638728, 24.262299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.722941, 14.841851, 23.991816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481754, -0.474598, -0.736661,
		-0.695008, 0.718949, -0.008673,
		0.533738, 0.507807, -0.676207,
		10.883062, 14.994193, 23.788954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.046251, 15.014619, 23.747057>,  <10.509446, 14.638728, 24.262299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.046251, 15.014619, 23.747057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.389524, 14.929323, 23.560272>,  <10.595489, 14.878145, 23.448202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.389524, 14.929323, 23.560272>,  <10.046251, 15.014619, 23.747057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.389524, 14.929323, 23.560272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508965, -0.234861, -0.828127,
		0.066919, 0.948350, -0.310085,
		0.858182, -0.213240, -0.466961,
		10.646979, 14.865351, 23.420183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.949843, 15.324249, 23.220060>,  <10.046251, 15.014619, 23.747057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.949843, 15.324249, 23.220060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.246159, 15.065057, 23.149229>,  <10.423947, 14.909541, 23.106731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.246159, 15.065057, 23.149229>,  <9.949843, 15.324249, 23.220060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.246159, 15.065057, 23.149229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425059, -0.248048, -0.870515,
		0.520153, 0.720135, -0.459181,
		0.740787, -0.647980, -0.177077,
		10.468394, 14.870663, 23.096106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.174814, 15.441445, 22.566214>,  <9.949843, 15.324249, 23.220060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.174814, 15.441445, 22.566214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.338952, 15.078415, 22.601818>,  <10.437434, 14.860597, 22.623180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.338952, 15.078415, 22.601818>,  <10.174814, 15.441445, 22.566214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.338952, 15.078415, 22.601818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211435, -0.189633, -0.958820,
		0.887081, 0.374626, -0.269708,
		0.410344, -0.907577, 0.089010,
		10.462055, 14.806142, 22.628521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.601215, 15.308157, 22.053257>,  <10.174814, 15.441445, 22.566214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.601215, 15.308157, 22.053257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.528874, 14.935106, 22.178156>,  <10.485470, 14.711276, 22.253096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.528874, 14.935106, 22.178156>,  <10.601215, 15.308157, 22.053257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.528874, 14.935106, 22.178156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050757, -0.308210, -0.949963,
		0.982200, -0.187651, 0.008403,
		-0.180852, -0.932627, 0.312249,
		10.474619, 14.655318, 22.271832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.029637, 15.042698, 21.725595>,  <10.601215, 15.308157, 22.053257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.029637, 15.042698, 21.725595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.759360, 14.766506, 21.828884>,  <10.597194, 14.600791, 21.890858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.759360, 14.766506, 21.828884>,  <11.029637, 15.042698, 21.725595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.759360, 14.766506, 21.828884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055256, -0.396736, -0.916268,
		0.735110, -0.604847, 0.306225,
		-0.675693, -0.690479, 0.258222,
		10.556652, 14.559362, 21.906351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.307815, 14.406994, 21.497103>,  <11.029637, 15.042698, 21.725595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.307815, 14.406994, 21.497103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.914550, 14.344960, 21.535761>,  <10.678591, 14.307740, 21.558956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.914550, 14.344960, 21.535761>,  <11.307815, 14.406994, 21.497103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.914550, 14.344960, 21.535761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001992, -0.519764, -0.854308,
		0.182723, -0.840116, 0.510703,
		-0.983163, -0.155085, 0.096646,
		10.619601, 14.298435, 21.564754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.208032, 13.818439, 21.035118>,  <11.307815, 14.406994, 21.497103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.208032, 13.818439, 21.035118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.845548, 13.980917, 21.082087>,  <10.628057, 14.078404, 21.110268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.845548, 13.980917, 21.082087>,  <11.208032, 13.818439, 21.035118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.845548, 13.980917, 21.082087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310216, -0.450007, -0.837413,
		-0.287312, -0.795298, 0.533809,
		-0.906211, 0.406195, 0.117422,
		10.573685, 14.102777, 21.117313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.806264, 13.344501, 20.711380>,  <11.208032, 13.818439, 21.035118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.806264, 13.344501, 20.711380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.582010, 13.675071, 20.732208>,  <10.447458, 13.873412, 20.744705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.582010, 13.675071, 20.732208>,  <10.806264, 13.344501, 20.711380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.582010, 13.675071, 20.732208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137114, -0.030632, -0.990082,
		-0.816632, -0.562214, 0.130487,
		-0.560635, 0.826424, 0.052073,
		10.413819, 13.922998, 20.747829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.229301, 13.175296, 20.332972>,  <10.806264, 13.344501, 20.711380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.229301, 13.175296, 20.332972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.259668, 13.573914, 20.346462>,  <10.277888, 13.813084, 20.354557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.259668, 13.573914, 20.346462>,  <10.229301, 13.175296, 20.332972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.259668, 13.573914, 20.346462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067015, 0.038846, -0.996996,
		-0.994860, 0.073430, 0.069732,
		0.075918, 0.996544, 0.033726,
		10.282444, 13.872877, 20.356581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.614397, 13.349350, 19.938025>,  <10.229301, 13.175296, 20.332972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.614397, 13.349350, 19.938025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.857938, 13.666541, 19.946821>,  <10.004063, 13.856856, 19.952099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.857938, 13.666541, 19.946821>,  <9.614397, 13.349350, 19.938025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.857938, 13.666541, 19.946821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247281, 0.216059, -0.944548,
		-0.753758, 0.569652, 0.327636,
		0.608853, 0.792978, 0.021992,
		10.040594, 13.904434, 19.953419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.303197, 13.875435, 19.516684>,  <9.614397, 13.349350, 19.938025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.303197, 13.875435, 19.516684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.690718, 13.974209, 19.525137>,  <9.923230, 14.033473, 19.530209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.690718, 13.974209, 19.525137>,  <9.303197, 13.875435, 19.516684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.690718, 13.974209, 19.525137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047765, 0.269714, -0.961755,
		-0.243192, 0.930740, 0.273094,
		0.968801, 0.246936, 0.021136,
		9.981359, 14.048289, 19.531477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.295694, 14.490494, 19.136530>,  <9.303197, 13.875435, 19.516684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.295694, 14.490494, 19.136530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.680047, 14.383208, 19.108908>,  <9.910659, 14.318837, 19.092335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.680047, 14.383208, 19.108908>,  <9.295694, 14.490494, 19.136530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.680047, 14.383208, 19.108908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033119, 0.136271, -0.990118,
		0.274974, 0.953672, 0.122057,
		0.960881, -0.268215, -0.069056,
		9.968311, 14.302744, 19.088190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.690727, 15.025642, 18.900917>,  <9.295694, 14.490494, 19.136530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.690727, 15.025642, 18.900917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.893655, 14.702379, 18.781246>,  <10.015411, 14.508421, 18.709444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.893655, 14.702379, 18.781246>,  <9.690727, 15.025642, 18.900917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.893655, 14.702379, 18.781246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017403, 0.356710, -0.934053,
		0.861582, 0.468657, 0.195031,
		0.507320, -0.808158, -0.299178,
		10.045851, 14.459932, 18.691492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.027543, 15.313239, 18.400896>,  <9.690727, 15.025642, 18.900917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.027543, 15.313239, 18.400896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.023781, 14.919236, 18.331991>,  <10.021523, 14.682835, 18.290648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.023781, 14.919236, 18.331991>,  <10.027543, 15.313239, 18.400896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.023781, 14.919236, 18.331991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318856, 0.166231, -0.933112,
		0.947756, 0.046151, -0.315638,
		-0.009404, -0.985006, -0.172262,
		10.020960, 14.623734, 18.280313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.505430, 15.321396, 17.830502>,  <10.027543, 15.313239, 18.400896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.505430, 15.321396, 17.830502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.397432, 14.936992, 17.806625>,  <10.332634, 14.706349, 17.792299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.397432, 14.936992, 17.806625>,  <10.505430, 15.321396, 17.830502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.397432, 14.936992, 17.806625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158263, 0.105443, -0.981751,
		0.949766, -0.255620, -0.180562,
		-0.269994, -0.961010, -0.059691,
		10.316434, 14.648688, 17.788717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.892707, 14.947591, 17.219170>,  <10.505430, 15.321396, 17.830502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.892707, 14.947591, 17.219170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.538412, 14.781138, 17.301443>,  <10.325835, 14.681267, 17.350807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.538412, 14.781138, 17.301443>,  <10.892707, 14.947591, 17.219170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.538412, 14.781138, 17.301443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366626, 0.355371, -0.859824,
		0.284701, -0.836988, -0.467329,
		-0.885737, -0.416128, 0.205687,
		10.272691, 14.656300, 17.363150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.571154, 14.646868, 17.477886>,  <10.892707, 14.947591, 17.219170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.571154, 14.646868, 17.477886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.848183, 14.489655, 17.235937>,  <12.014400, 14.395329, 17.090769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.848183, 14.489655, 17.235937>,  <11.571154, 14.646868, 17.477886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.848183, 14.489655, 17.235937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443375, -0.429494, 0.786736,
		-0.569000, -0.813057, -0.123196,
		0.692573, -0.393031, -0.604872,
		12.055955, 14.371746, 17.054476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.691936, 13.956882, 17.628441>,  <11.571154, 14.646868, 17.477886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.691936, 13.956882, 17.628441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.027515, 14.109487, 17.473204>,  <12.228863, 14.201049, 17.380060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.027515, 14.109487, 17.473204>,  <11.691936, 13.956882, 17.628441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.027515, 14.109487, 17.473204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504038, -0.275803, 0.818461,
		0.205215, -0.882259, -0.423680,
		0.838947, 0.381511, -0.388094,
		12.279200, 14.223940, 17.356775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.224713, 13.487737, 17.888845>,  <11.691936, 13.956882, 17.628441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.224713, 13.487737, 17.888845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.418530, 13.819911, 17.778868>,  <12.534821, 14.019216, 17.712881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.418530, 13.819911, 17.778868>,  <12.224713, 13.487737, 17.888845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.418530, 13.819911, 17.778868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634305, -0.117105, 0.764162,
		0.602391, -0.544667, -0.583492,
		0.484543, 0.830436, -0.274942,
		12.563893, 14.069042, 17.696384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931069, 13.413171, 17.742281>,  <12.224713, 13.487737, 17.888845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931069, 13.413171, 17.742281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.915821, 13.804412, 17.824121>,  <12.906672, 14.039157, 17.873226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.915821, 13.804412, 17.824121>,  <12.931069, 13.413171, 17.742281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.915821, 13.804412, 17.824121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557954, -0.149028, 0.816381,
		0.828996, 0.145281, -0.540055,
		-0.038121, 0.978102, 0.204603,
		12.904385, 14.097842, 17.885502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.585459, 13.590251, 18.053741>,  <12.931069, 13.413171, 17.742281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.585459, 13.590251, 18.053741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.345564, 13.897533, 18.143341>,  <13.201627, 14.081903, 18.197102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.345564, 13.897533, 18.143341>,  <13.585459, 13.590251, 18.053741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.345564, 13.897533, 18.143341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402839, 0.047980, 0.914013,
		0.691402, 0.638403, -0.338238,
		-0.599737, 0.768206, 0.224000,
		13.165643, 14.127995, 18.210541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.027226, 14.155704, 18.370008>,  <13.585459, 13.590251, 18.053741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.027226, 14.155704, 18.370008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652054, 14.192538, 18.503757>,  <13.426950, 14.214639, 18.584007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652054, 14.192538, 18.503757>,  <14.027226, 14.155704, 18.370008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.652054, 14.192538, 18.503757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341976, 0.084935, 0.935862,
		0.057777, 0.992122, -0.111153,
		-0.937931, 0.092083, 0.334375,
		13.370674, 14.220163, 18.604071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.162724, 14.713766, 18.770149>,  <14.027226, 14.155704, 18.370008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.162724, 14.713766, 18.770149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801984, 14.597422, 18.897938>,  <13.585539, 14.527615, 18.974611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801984, 14.597422, 18.897938>,  <14.162724, 14.713766, 18.770149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801984, 14.597422, 18.897938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260509, 0.223810, 0.939172,
		-0.344671, 0.930219, -0.126071,
		-0.901852, -0.290862, 0.319471,
		13.531428, 14.510163, 18.993778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.838923, 15.338551, 19.239473>,  <14.162724, 14.713766, 18.770149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.838923, 15.338551, 19.239473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.657174, 14.992762, 19.325481>,  <13.548124, 14.785289, 19.377087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.657174, 14.992762, 19.325481>,  <13.838923, 15.338551, 19.239473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.657174, 14.992762, 19.325481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040710, 0.220974, 0.974429,
		-0.889881, 0.451508, -0.065212,
		-0.454372, -0.864472, 0.215022,
		13.520863, 14.733420, 19.389988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.318262, 15.540645, 19.707012>,  <13.838923, 15.338551, 19.239473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.318262, 15.540645, 19.707012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.351724, 15.145832, 19.761816>,  <13.371800, 14.908944, 19.794699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.351724, 15.145832, 19.761816>,  <13.318262, 15.540645, 19.707012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.351724, 15.145832, 19.761816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160146, 0.149019, 0.975780,
		-0.983542, -0.059686, 0.170535,
		0.083653, -0.987031, 0.137008,
		13.376820, 14.849723, 19.802919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823685, 15.428968, 20.191784>,  <13.318262, 15.540645, 19.707012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823685, 15.428968, 20.191784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.094952, 15.136270, 20.219013>,  <13.257711, 14.960650, 20.235352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.094952, 15.136270, 20.219013>,  <12.823685, 15.428968, 20.191784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.094952, 15.136270, 20.219013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025357, 0.115875, 0.992940,
		-0.734470, -0.671653, 0.097138,
		0.678167, -0.731748, 0.068076,
		13.298402, 14.916745, 20.239435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.634122, 15.006377, 20.787151>,  <12.823685, 15.428968, 20.191784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.634122, 15.006377, 20.787151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.016891, 14.905185, 20.730164>,  <13.246553, 14.844469, 20.695971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.016891, 14.905185, 20.730164>,  <12.634122, 15.006377, 20.787151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.016891, 14.905185, 20.730164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154224, 0.027158, 0.987663,
		-0.245991, -0.967090, 0.065004,
		0.956924, -0.252981, -0.142467,
		13.303968, 14.829290, 20.687424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768454, 14.531880, 21.314878>,  <12.634122, 15.006377, 20.787151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768454, 14.531880, 21.314878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141056, 14.624589, 21.202753>,  <13.364617, 14.680214, 21.135477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141056, 14.624589, 21.202753>,  <12.768454, 14.531880, 21.314878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.141056, 14.624589, 21.202753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318310, -0.146558, 0.936589,
		0.175994, -0.961667, -0.210295,
		0.931507, 0.231773, -0.280315,
		13.420508, 14.694120, 21.118658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.228009, 14.035935, 21.593391>,  <12.768454, 14.531880, 21.314878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.228009, 14.035935, 21.593391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.454323, 14.357587, 21.520437>,  <13.590111, 14.550578, 21.476664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.454323, 14.357587, 21.520437>,  <13.228009, 14.035935, 21.593391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.454323, 14.357587, 21.520437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411410, -0.083611, 0.907607,
		0.714584, -0.588545, -0.378133,
		0.565784, 0.804129, -0.182386,
		13.624058, 14.598825, 21.465721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.837706, 13.873867, 21.889784>,  <13.228009, 14.035935, 21.593391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.837706, 13.873867, 21.889784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853837, 14.271137, 21.846006>,  <13.863516, 14.509500, 21.819740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853837, 14.271137, 21.846006>,  <13.837706, 13.873867, 21.889784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.853837, 14.271137, 21.846006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342935, 0.089119, 0.935122,
		0.938493, -0.075244, -0.337000,
		0.040329, 0.993175, -0.109441,
		13.865936, 14.569090, 21.813173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.426442, 14.066543, 22.301367>,  <13.837706, 13.873867, 21.889784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.426442, 14.066543, 22.301367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.257567, 14.422791, 22.233772>,  <14.156242, 14.636539, 22.193216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.257567, 14.422791, 22.233772>,  <14.426442, 14.066543, 22.301367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.257567, 14.422791, 22.233772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438265, 0.363713, 0.821971,
		0.793525, 0.272966, -0.543882,
		-0.422187, 0.890619, -0.168984,
		14.130911, 14.689977, 22.183077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.931771, 14.544156, 22.329723>,  <14.426442, 14.066543, 22.301367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.931771, 14.544156, 22.329723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588778, 14.731894, 22.414047>,  <14.382983, 14.844536, 22.464642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588778, 14.731894, 22.414047>,  <14.931771, 14.544156, 22.329723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588778, 14.731894, 22.414047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404902, 0.362758, 0.839322,
		0.317458, 0.805061, -0.501096,
		-0.857482, 0.469344, 0.210810,
		14.331533, 14.872697, 22.477291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.126102, 15.235628, 22.606232>,  <14.931771, 14.544156, 22.329723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.126102, 15.235628, 22.606232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.756106, 15.162605, 22.739538>,  <14.534109, 15.118792, 22.819523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.756106, 15.162605, 22.739538>,  <15.126102, 15.235628, 22.606232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.756106, 15.162605, 22.739538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277869, 0.273275, 0.920929,
		-0.259195, 0.944454, -0.202050,
		-0.924990, -0.182557, 0.333266,
		14.478609, 15.107838, 22.839518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975630, 15.757966, 23.058908>,  <15.126102, 15.235628, 22.606232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.975630, 15.757966, 23.058908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673433, 15.527165, 23.183039>,  <14.492115, 15.388685, 23.257517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673433, 15.527165, 23.183039>,  <14.975630, 15.757966, 23.058908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673433, 15.527165, 23.183039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159945, 0.296896, 0.941419,
		-0.635335, 0.760869, -0.132013,
		-0.755491, -0.577002, 0.310326,
		14.446786, 15.354065, 23.276136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.539202, 16.220400, 23.468121>,  <14.975630, 15.757966, 23.058908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.539202, 16.220400, 23.468121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.514567, 15.838396, 23.584164>,  <14.499787, 15.609194, 23.653790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.514567, 15.838396, 23.584164>,  <14.539202, 16.220400, 23.468121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.514567, 15.838396, 23.584164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319762, 0.256463, 0.912129,
		-0.945494, 0.148940, 0.289582,
		-0.061585, -0.955010, 0.290109,
		14.496092, 15.551893, 23.671196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.099615, 16.262291, 24.062006>,  <14.539202, 16.220400, 23.468121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.099615, 16.262291, 24.062006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.291048, 15.916281, 24.122261>,  <14.405908, 15.708675, 24.158415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.291048, 15.916281, 24.122261>,  <14.099615, 16.262291, 24.062006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.291048, 15.916281, 24.122261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149798, 0.249485, 0.956722,
		-0.865170, -0.435305, 0.248978,
		0.478582, -0.865024, 0.150640,
		14.434623, 15.656774, 24.167454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.805433, 16.084167, 24.639200>,  <14.099615, 16.262291, 24.062006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.805433, 16.084167, 24.639200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132706, 15.855478, 24.614836>,  <14.329069, 15.718265, 24.600218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132706, 15.855478, 24.614836>,  <13.805433, 16.084167, 24.639200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132706, 15.855478, 24.614836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107836, 0.048533, 0.992983,
		-0.564757, -0.819009, 0.101361,
		0.818181, -0.571725, -0.060909,
		14.378160, 15.683961, 24.596563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.723149, 15.588389, 25.159792>,  <13.805433, 16.084167, 24.639200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.723149, 15.588389, 25.159792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.111173, 15.592651, 25.062737>,  <14.343987, 15.595208, 25.004503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.111173, 15.592651, 25.062737>,  <13.723149, 15.588389, 25.159792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.111173, 15.592651, 25.062737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241746, 0.053688, 0.968853,
		0.023343, -0.998501, 0.049507,
		0.970058, 0.010648, -0.242637,
		14.402190, 15.595847, 24.989944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.002572, 15.228499, 25.599747>,  <13.723149, 15.588389, 25.159792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.002572, 15.228499, 25.599747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315739, 15.446618, 25.479950>,  <14.503638, 15.577489, 25.408072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315739, 15.446618, 25.479950>,  <14.002572, 15.228499, 25.599747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.315739, 15.446618, 25.479950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231673, 0.191230, 0.953813,
		0.577381, -0.816140, 0.023386,
		0.782916, 0.545296, -0.299490,
		14.550613, 15.610207, 25.390102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.463759, 15.039214, 26.119436>,  <14.002572, 15.228499, 25.599747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.463759, 15.039214, 26.119436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.650817, 15.348989, 25.948997>,  <14.763051, 15.534853, 25.846735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.650817, 15.348989, 25.948997>,  <14.463759, 15.039214, 26.119436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650817, 15.348989, 25.948997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294093, 0.318271, 0.901229,
		0.833558, -0.546766, -0.078918,
		0.467644, 0.774435, -0.426097,
		14.791110, 15.581319, 25.821169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.166312, 15.078489, 26.400883>,  <14.463759, 15.039214, 26.119436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.166312, 15.078489, 26.400883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.035771, 15.434513, 26.273579>,  <14.957447, 15.648128, 26.197197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.035771, 15.434513, 26.273579>,  <15.166312, 15.078489, 26.400883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.035771, 15.434513, 26.273579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241579, 0.404049, 0.882261,
		0.913857, 0.211043, -0.346882,
		-0.326352, 0.890060, -0.318259,
		14.937866, 15.701530, 26.178101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.797990, 15.552477, 26.492809>,  <15.166312, 15.078489, 26.400883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.797990, 15.552477, 26.492809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.473941, 15.785739, 26.468708>,  <15.279511, 15.925696, 26.454247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.473941, 15.785739, 26.468708>,  <15.797990, 15.552477, 26.492809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.473941, 15.785739, 26.468708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324253, 0.531322, 0.782660,
		0.488426, 0.614513, -0.619527,
		-0.810123, 0.583155, -0.060254,
		15.230904, 15.960686, 26.450632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.095564, 16.164635, 26.429527>,  <15.797990, 15.552477, 26.492809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.095564, 16.164635, 26.429527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.723928, 16.219479, 26.566931>,  <15.500948, 16.252384, 26.649374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.723928, 16.219479, 26.566931>,  <16.095564, 16.164635, 26.429527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.723928, 16.219479, 26.566931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361948, 0.528138, 0.768157,
		-0.076100, 0.838017, -0.540312,
		-0.929087, 0.137108, 0.343510,
		15.445202, 16.260611, 26.669983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122833, 16.774986, 26.582209>,  <16.095564, 16.164635, 26.429527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122833, 16.774986, 26.582209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.806995, 16.647310, 26.791840>,  <15.617493, 16.570704, 26.917618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.806995, 16.647310, 26.791840>,  <16.122833, 16.774986, 26.582209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.806995, 16.647310, 26.791840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296833, 0.548809, 0.781472,
		-0.537059, 0.772609, -0.338590,
		-0.789594, -0.319192, 0.524078,
		15.570117, 16.551552, 26.949062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.676935, 17.375799, 26.819361>,  <16.122833, 16.774986, 26.582209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.676935, 17.375799, 26.819361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.603065, 17.075155, 27.072651>,  <15.558742, 16.894770, 27.224625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.603065, 17.075155, 27.072651>,  <15.676935, 17.375799, 26.819361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.603065, 17.075155, 27.072651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247265, 0.588050, 0.770102,
		-0.951185, 0.298796, 0.077248,
		-0.184678, -0.751610, 0.633227,
		15.547661, 16.849672, 27.262619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.120995, 17.620378, 27.302197>,  <15.676935, 17.375799, 26.819361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.120995, 17.620378, 27.302197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.303420, 17.315947, 27.486700>,  <15.412875, 17.133287, 27.597403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.303420, 17.315947, 27.486700>,  <15.120995, 17.620378, 27.302197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.303420, 17.315947, 27.486700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083652, 0.552668, 0.829193,
		-0.886007, -0.339578, 0.315717,
		0.456063, -0.761081, 0.461261,
		15.440239, 17.087622, 27.625078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.911850, 17.710089, 27.899145>,  <15.120995, 17.620378, 27.302197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.911850, 17.710089, 27.899145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.219252, 17.463037, 27.966005>,  <15.403692, 17.314808, 28.006121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.219252, 17.463037, 27.966005>,  <14.911850, 17.710089, 27.899145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.219252, 17.463037, 27.966005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217249, 0.497589, 0.839767,
		-0.601834, -0.609051, 0.516578,
		0.768504, -0.617626, 0.167150,
		15.449802, 17.277750, 28.016150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.841819, 17.459335, 28.587454>,  <14.911850, 17.710089, 27.899145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.841819, 17.459335, 28.587454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221935, 17.455696, 28.462963>,  <15.450006, 17.453512, 28.388268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221935, 17.455696, 28.462963>,  <14.841819, 17.459335, 28.587454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.221935, 17.455696, 28.462963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247511, 0.628511, 0.737369,
		0.188903, -0.777748, 0.599520,
		0.950292, -0.009097, -0.311228,
		15.507023, 17.452967, 28.369595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196149, 17.633202, 29.163832>,  <14.841819, 17.459335, 28.587454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.196149, 17.633202, 29.163832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430301, 17.742760, 28.858595>,  <15.570791, 17.808495, 28.675453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430301, 17.742760, 28.858595>,  <15.196149, 17.633202, 29.163832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430301, 17.742760, 28.858595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312481, 0.792273, 0.524079,
		0.748122, -0.545237, 0.378193,
		0.585379, 0.273897, -0.763093,
		15.605914, 17.824928, 28.629667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628873, 17.945440, 29.714752>,  <15.196149, 17.633202, 29.163832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628873, 17.945440, 29.714752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.661843, 18.074383, 29.337543>,  <15.681625, 18.151749, 29.111217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.661843, 18.074383, 29.337543>,  <15.628873, 17.945440, 29.714752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.661843, 18.074383, 29.337543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332370, 0.883177, 0.330951,
		0.939540, -0.340711, -0.034344,
		0.082427, 0.322356, -0.943023,
		15.686571, 18.171089, 29.054636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098394, 18.502295, 29.560184>,  <15.628873, 17.945440, 29.714752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098394, 18.502295, 29.560184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.794125, 18.617590, 29.327532>,  <15.611563, 18.686768, 29.187941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.794125, 18.617590, 29.327532>,  <16.098394, 18.502295, 29.560184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794125, 18.617590, 29.327532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025539, 0.882028, 0.470505,
		0.648631, 0.372756, -0.663575,
		-0.760674, 0.288237, -0.581630,
		15.565923, 18.704062, 29.153042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023516, 19.110865, 29.172041>,  <16.098394, 18.502295, 29.560184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023516, 19.110865, 29.172041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653927, 19.120316, 29.324734>,  <15.432174, 19.125986, 29.416349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653927, 19.120316, 29.324734>,  <16.023516, 19.110865, 29.172041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653927, 19.120316, 29.324734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194891, 0.887871, 0.416776,
		-0.329084, 0.459485, -0.824971,
		-0.923970, 0.023625, 0.381734,
		15.376736, 19.127403, 29.439253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445025, 19.687016, 28.899498>,  <16.023516, 19.110865, 29.172041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445025, 19.687016, 28.899498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.434227, 19.581165, 29.285088>,  <15.427748, 19.517654, 29.516441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.434227, 19.581165, 29.285088>,  <15.445025, 19.687016, 28.899498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434227, 19.581165, 29.285088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120021, 0.956491, 0.265933,
		-0.992404, 0.122876, 0.005940,
		-0.026996, -0.264626, 0.963973,
		15.426128, 19.501778, 29.574280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.065216, 20.151995, 29.221388>,  <15.445025, 19.687016, 28.899498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.065216, 20.151995, 29.221388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.978739, 19.975021, 28.873247>,  <14.926852, 19.868837, 28.664362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.978739, 19.975021, 28.873247>,  <15.065216, 20.151995, 29.221388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.978739, 19.975021, 28.873247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372486, -0.786636, 0.492401,
		-0.902505, 0.430648, 0.005265,
		-0.216193, -0.442433, -0.870353,
		14.913881, 19.842291, 28.612141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.803913, 20.941357, 29.239674>,  <15.065216, 20.151995, 29.221388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.803913, 20.941357, 29.239674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.919814, 21.275986, 29.053688>,  <14.989355, 21.476763, 28.942097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.919814, 21.275986, 29.053688>,  <14.803913, 20.941357, 29.239674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919814, 21.275986, 29.053688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334556, -0.366631, -0.868132,
		-0.896725, 0.407101, 0.173648,
		0.289752, 0.836570, -0.464966,
		15.006740, 21.526957, 28.914198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.277937, 21.161285, 28.888727>,  <14.803913, 20.941357, 29.239674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.277937, 21.161285, 28.888727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.579700, 21.347782, 28.703909>,  <14.760756, 21.459681, 28.593018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.579700, 21.347782, 28.703909>,  <14.277937, 21.161285, 28.888727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579700, 21.347782, 28.703909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370254, -0.278985, -0.886047,
		-0.542019, 0.839514, -0.037839,
		0.754406, 0.466244, -0.462048,
		14.806022, 21.487656, 28.565294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.947615, 21.459549, 28.189453>,  <14.277937, 21.161285, 28.888727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.947615, 21.459549, 28.189453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343490, 21.425707, 28.143217>,  <14.581015, 21.405401, 28.115475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343490, 21.425707, 28.143217>,  <13.947615, 21.459549, 28.189453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343490, 21.425707, 28.143217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134001, -0.261621, -0.955823,
		0.050626, 0.961455, -0.270260,
		0.989687, -0.084604, -0.115591,
		14.640396, 21.400326, 28.108540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.979025, 21.696302, 27.573168>,  <13.947615, 21.459549, 28.189453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.979025, 21.696302, 27.573168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.331305, 21.524237, 27.652491>,  <14.542673, 21.420998, 27.700085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.331305, 21.524237, 27.652491>,  <13.979025, 21.696302, 27.573168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.331305, 21.524237, 27.652491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020220, -0.384138, -0.923054,
		0.473242, 0.816944, -0.329612,
		0.880700, -0.430163, 0.198309,
		14.595514, 21.395187, 27.711983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393516, 21.807293, 27.036009>,  <13.979025, 21.696302, 27.573168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.393516, 21.807293, 27.036009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573135, 21.497917, 27.214960>,  <14.680907, 21.312292, 27.322330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573135, 21.497917, 27.214960>,  <14.393516, 21.807293, 27.036009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.573135, 21.497917, 27.214960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208082, -0.396411, -0.894182,
		0.868940, 0.494622, -0.017069,
		0.449049, -0.773439, 0.447379,
		14.707850, 21.265886, 27.349174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.059110, 21.662483, 26.636683>,  <14.393516, 21.807293, 27.036009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.059110, 21.662483, 26.636683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993247, 21.332417, 26.852825>,  <14.953730, 21.134377, 26.982512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993247, 21.332417, 26.852825>,  <15.059110, 21.662483, 26.636683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.993247, 21.332417, 26.852825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166623, -0.563232, -0.809325,
		0.972176, -0.043224, 0.230231,
		-0.164655, -0.825167, 0.540358,
		14.943851, 21.084866, 27.014933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.617873, 21.243866, 26.452250>,  <15.059110, 21.662483, 26.636683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.617873, 21.243866, 26.452250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.324264, 21.009317, 26.589291>,  <15.148098, 20.868587, 26.671516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.324264, 21.009317, 26.589291>,  <15.617873, 21.243866, 26.452250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.324264, 21.009317, 26.589291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115090, -0.604588, -0.788180,
		0.669300, -0.539113, 0.511268,
		-0.734024, -0.586371, 0.342604,
		15.104056, 20.833406, 26.692072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.738610, 20.631186, 26.135618>,  <15.617873, 21.243866, 26.452250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.738610, 20.631186, 26.135618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.389096, 20.537136, 26.305895>,  <15.179388, 20.480705, 26.408060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.389096, 20.537136, 26.305895>,  <15.738610, 20.631186, 26.135618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.389096, 20.537136, 26.305895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162336, -0.684116, -0.711078,
		0.458416, -0.690435, 0.559602,
		-0.873786, -0.235126, 0.425692,
		15.126961, 20.466599, 26.433603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678673, 19.784573, 26.201900>,  <15.738610, 20.631186, 26.135618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.678673, 19.784573, 26.201900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.321404, 19.962776, 26.177349>,  <15.107043, 20.069698, 26.162619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.321404, 19.962776, 26.177349>,  <15.678673, 19.784573, 26.201900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.321404, 19.962776, 26.177349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188715, -0.495183, -0.848045,
		-0.408204, -0.745867, 0.526357,
		-0.893172, 0.445507, -0.061379,
		15.053453, 20.096428, 26.158936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.186393, 19.255243, 26.153858>,  <15.678673, 19.784573, 26.201900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.186393, 19.255243, 26.153858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.994702, 19.575075, 26.009073>,  <14.879688, 19.766973, 25.922203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.994702, 19.575075, 26.009073>,  <15.186393, 19.255243, 26.153858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994702, 19.575075, 26.009073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347531, -0.551563, -0.758287,
		-0.805956, -0.237597, 0.542202,
		-0.479226, 0.799578, -0.361963,
		14.850934, 19.814949, 25.900484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494230, 18.978117, 25.781603>,  <15.186393, 19.255243, 26.153858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494230, 18.978117, 25.781603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504093, 19.358192, 25.657326>,  <14.510011, 19.586239, 25.582760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504093, 19.358192, 25.657326>,  <14.494230, 18.978117, 25.781603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.504093, 19.358192, 25.657326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389651, -0.277074, -0.878295,
		-0.920632, 0.142718, 0.363411,
		0.024657, 0.950191, -0.310693,
		14.511490, 19.643250, 25.564117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.864787, 19.144920, 25.383730>,  <14.494230, 18.978117, 25.781603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.864787, 19.144920, 25.383730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.157976, 19.383173, 25.252291>,  <14.333890, 19.526125, 25.173428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.157976, 19.383173, 25.252291>,  <13.864787, 19.144920, 25.383730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.157976, 19.383173, 25.252291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142914, -0.337436, -0.930437,
		-0.665076, 0.728946, -0.162208,
		0.732973, 0.595630, -0.328597,
		14.377868, 19.561861, 25.153711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.612897, 19.511665, 24.816359>,  <13.864787, 19.144920, 25.383730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.612897, 19.511665, 24.816359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.011576, 19.483637, 24.799932>,  <14.250783, 19.466820, 24.790077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.011576, 19.483637, 24.799932>,  <13.612897, 19.511665, 24.816359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.011576, 19.483637, 24.799932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061577, -0.322266, -0.944644,
		0.052959, 0.944052, -0.325516,
		0.996696, -0.070072, -0.041064,
		14.310585, 19.462616, 24.787613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.819089, 19.708672, 24.148397>,  <13.612897, 19.511665, 24.816359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.819089, 19.708672, 24.148397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.173611, 19.544733, 24.234646>,  <14.386324, 19.446371, 24.286396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.173611, 19.544733, 24.234646>,  <13.819089, 19.708672, 24.148397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.173611, 19.544733, 24.234646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074881, -0.332649, -0.940073,
		0.457010, 0.849336, -0.264139,
		0.886304, -0.409844, 0.215623,
		14.439502, 19.421780, 24.299334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.314529, 19.890444, 23.590437>,  <13.819089, 19.708672, 24.148397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.314529, 19.890444, 23.590437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437240, 19.558439, 23.776756>,  <14.510866, 19.359236, 23.888548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437240, 19.558439, 23.776756>,  <14.314529, 19.890444, 23.590437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437240, 19.558439, 23.776756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108711, -0.455636, -0.883503,
		0.945553, 0.321675, -0.049547,
		0.306777, -0.830013, 0.465798,
		14.529273, 19.309435, 23.916496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038013, 19.706417, 23.282812>,  <14.314529, 19.890444, 23.590437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.038013, 19.706417, 23.282812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886254, 19.374413, 23.446341>,  <14.795198, 19.175209, 23.544458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886254, 19.374413, 23.446341>,  <15.038013, 19.706417, 23.282812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886254, 19.374413, 23.446341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079207, -0.411098, -0.908144,
		0.921837, -0.376930, 0.090227,
		-0.379399, -0.830014, 0.408820,
		14.772434, 19.125408, 23.568987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.426983, 19.228176, 23.055468>,  <15.038013, 19.706417, 23.282812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.426983, 19.228176, 23.055468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.129177, 18.999714, 23.193729>,  <14.950494, 18.862637, 23.276686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.129177, 18.999714, 23.193729>,  <15.426983, 19.228176, 23.055468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.129177, 18.999714, 23.193729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058566, -0.571634, -0.818416,
		0.665032, -0.589079, 0.459040,
		-0.744515, -0.571157, 0.345655,
		14.905823, 18.828367, 23.297426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.612638, 18.483856, 22.979650>,  <15.426983, 19.228176, 23.055468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.612638, 18.483856, 22.979650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.214341, 18.488018, 23.016287>,  <14.975363, 18.490515, 23.038269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.214341, 18.488018, 23.016287>,  <15.612638, 18.483856, 22.979650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.214341, 18.488018, 23.016287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085355, -0.479285, -0.873499,
		0.034812, -0.877598, 0.478132,
		-0.995742, 0.010403, 0.091592,
		14.915619, 18.491138, 23.043764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346609, 17.758373, 22.879276>,  <15.612638, 18.483856, 22.979650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.346609, 17.758373, 22.879276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.036015, 18.002764, 22.817602>,  <14.849658, 18.149399, 22.780598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.036015, 18.002764, 22.817602>,  <15.346609, 17.758373, 22.879276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.036015, 18.002764, 22.817602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218451, -0.490521, -0.843604,
		-0.591057, -0.621365, 0.514352,
		-0.776486, 0.610979, -0.154188,
		14.803068, 18.186058, 22.771345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811020, 17.282852, 22.698721>,  <15.346609, 17.758373, 22.879276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.811020, 17.282852, 22.698721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.741693, 17.656853, 22.574957>,  <14.700097, 17.881252, 22.500698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.741693, 17.656853, 22.574957>,  <14.811020, 17.282852, 22.698721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.741693, 17.656853, 22.574957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155239, -0.336174, -0.928918,
		-0.972554, -0.112964, 0.203413,
		-0.173317, 0.935001, -0.309410,
		14.689698, 17.937353, 22.482134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.187281, 17.353539, 22.570604>,  <14.811020, 17.282852, 22.698721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.187281, 17.353539, 22.570604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.351480, 17.632309, 22.335390>,  <14.450001, 17.799572, 22.194262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.351480, 17.632309, 22.335390>,  <14.187281, 17.353539, 22.570604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.351480, 17.632309, 22.335390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237982, -0.540642, -0.806890,
		-0.880258, 0.471170, -0.056078,
		0.410500, 0.696925, -0.588034,
		14.474630, 17.841387, 22.158979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.882532, 17.246386, 21.986101>,  <14.187281, 17.353539, 22.570604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.882532, 17.246386, 21.986101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.182201, 17.491121, 21.884598>,  <14.362003, 17.637962, 21.823696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.182201, 17.491121, 21.884598>,  <13.882532, 17.246386, 21.986101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.182201, 17.491121, 21.884598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140280, -0.520970, -0.841969,
		-0.647350, 0.595183, -0.476125,
		0.749173, 0.611839, -0.253758,
		14.406953, 17.674673, 21.808470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.838434, 17.181225, 21.339874>,  <13.882532, 17.246386, 21.986101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.838434, 17.181225, 21.339874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.198485, 17.353003, 21.369118>,  <14.414516, 17.456070, 21.386663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.198485, 17.353003, 21.369118>,  <13.838434, 17.181225, 21.339874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198485, 17.353003, 21.369118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302739, -0.496004, -0.813836,
		-0.313236, 0.754690, -0.576477,
		0.900129, 0.429445, 0.073107,
		14.468524, 17.481836, 21.391050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.063512, 17.359863, 20.596493>,  <13.838434, 17.181225, 21.339874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.063512, 17.359863, 20.596493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378684, 17.358774, 20.842796>,  <14.567787, 17.358120, 20.990578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378684, 17.358774, 20.842796>,  <14.063512, 17.359863, 20.596493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378684, 17.358774, 20.842796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553274, -0.435803, -0.709903,
		0.270282, 0.900038, -0.341876,
		0.787931, -0.002723, 0.615758,
		14.615064, 17.357958, 21.027523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601958, 17.603354, 20.151920>,  <14.063512, 17.359863, 20.596493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601958, 17.603354, 20.151920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.789596, 17.380907, 20.426346>,  <14.902178, 17.247438, 20.591002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.789596, 17.380907, 20.426346>,  <14.601958, 17.603354, 20.151920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.789596, 17.380907, 20.426346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499408, -0.473668, -0.725417,
		0.728384, 0.682915, 0.055534,
		0.469093, -0.556117, 0.686065,
		14.930324, 17.214071, 20.632166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.316305, 17.665152, 19.965826>,  <14.601958, 17.603354, 20.151920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.316305, 17.665152, 19.965826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272717, 17.354191, 20.213623>,  <15.246565, 17.167614, 20.362301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272717, 17.354191, 20.213623>,  <15.316305, 17.665152, 19.965826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.272717, 17.354191, 20.213623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547444, -0.567115, -0.615375,
		0.829718, 0.272082, 0.487381,
		-0.108969, -0.777401, 0.619495,
		15.240026, 17.120970, 20.399471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.992593, 17.294500, 19.989773>,  <15.316305, 17.665152, 19.965826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.992593, 17.294500, 19.989773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.714245, 17.026329, 20.092760>,  <15.547235, 16.865427, 20.154552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.714245, 17.026329, 20.092760>,  <15.992593, 17.294500, 19.989773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714245, 17.026329, 20.092760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490385, -0.705494, -0.511664,
		0.524678, -0.229792, 0.819700,
		-0.695870, -0.670428, 0.257471,
		15.505484, 16.825201, 20.170002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.331087, 16.672094, 19.927589>,  <15.992593, 17.294500, 19.989773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.331087, 16.672094, 19.927589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950496, 16.551020, 19.949759>,  <15.722141, 16.478374, 19.963060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950496, 16.551020, 19.949759>,  <16.331087, 16.672094, 19.927589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950496, 16.551020, 19.949759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171141, -0.670199, -0.722180,
		0.255740, -0.677652, 0.689481,
		-0.951477, -0.302689, 0.055423,
		15.665052, 16.460213, 19.966385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.410114, 15.982486, 20.014479>,  <16.331087, 16.672094, 19.927589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.410114, 15.982486, 20.014479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.045523, 16.074375, 19.877989>,  <15.826768, 16.129509, 19.796095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.045523, 16.074375, 19.877989>,  <16.410114, 15.982486, 20.014479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045523, 16.074375, 19.877989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066409, -0.736467, -0.673206,
		-0.405949, -0.636274, 0.656019,
		-0.911479, 0.229722, -0.341222,
		15.772079, 16.143291, 19.775621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.183493, 15.365251, 19.812922>,  <16.410114, 15.982486, 20.014479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.183493, 15.365251, 19.812922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963508, 15.635798, 19.616936>,  <15.831516, 15.798127, 19.499344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963508, 15.635798, 19.616936>,  <16.183493, 15.365251, 19.812922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963508, 15.635798, 19.616936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262454, -0.416971, -0.870203,
		-0.792879, -0.607173, 0.051803,
		-0.549964, 0.676370, -0.489963,
		15.798518, 15.838710, 19.469948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.668735, 15.054133, 19.464945>,  <16.183493, 15.365251, 19.812922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.668735, 15.054133, 19.464945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683806, 15.404989, 19.273441>,  <15.692849, 15.615502, 19.158539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683806, 15.404989, 19.273441>,  <15.668735, 15.054133, 19.464945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.683806, 15.404989, 19.273441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384816, -0.454885, -0.803117,
		-0.922224, -0.153972, -0.354677,
		0.037680, 0.877139, -0.478757,
		15.695110, 15.668131, 19.129814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282198, 15.085392, 18.906847>,  <15.668735, 15.054133, 19.464945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282198, 15.085392, 18.906847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.545035, 15.364410, 18.792543>,  <15.702738, 15.531821, 18.723961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.545035, 15.364410, 18.792543>,  <15.282198, 15.085392, 18.906847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545035, 15.364410, 18.792543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262265, -0.566956, -0.780883,
		-0.706716, 0.438167, -0.555484,
		0.657092, 0.697546, -0.285761,
		15.742163, 15.573674, 18.706816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.333976, 15.154783, 18.150293>,  <15.282198, 15.085392, 18.906847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.333976, 15.154783, 18.150293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652232, 15.387388, 18.218176>,  <15.843185, 15.526951, 18.258905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652232, 15.387388, 18.218176>,  <15.333976, 15.154783, 18.150293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.652232, 15.387388, 18.218176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357115, -0.223976, -0.906810,
		-0.489311, 0.782098, -0.385871,
		0.795640, 0.581513, 0.169705,
		15.890924, 15.561842, 18.269087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.559361, 15.349836, 17.537260>,  <15.333976, 15.154783, 18.150293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.559361, 15.349836, 17.537260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.889478, 15.445635, 17.741823>,  <16.087547, 15.503114, 17.864561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.889478, 15.445635, 17.741823>,  <15.559361, 15.349836, 17.537260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.889478, 15.445635, 17.741823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535390, -0.043837, -0.843467,
		-0.179590, 0.969907, -0.164402,
		0.825291, 0.239497, 0.511406,
		16.137066, 15.517484, 17.895245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760464, 15.823281, 17.146627>,  <15.559361, 15.349836, 17.537260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.760464, 15.823281, 17.146627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.093628, 15.703730, 17.332932>,  <16.293526, 15.631998, 17.444714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.093628, 15.703730, 17.332932>,  <15.760464, 15.823281, 17.146627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.093628, 15.703730, 17.332932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524298, 0.156795, -0.836975,
		0.177126, 0.941322, 0.287298,
		0.832910, -0.298880, 0.465760,
		16.343500, 15.614066, 17.472660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.255789, 16.265682, 16.886230>,  <15.760464, 15.823281, 17.146627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.255789, 16.265682, 16.886230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468409, 15.963141, 17.038752>,  <16.595980, 15.781617, 17.130264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468409, 15.963141, 17.038752>,  <16.255789, 16.265682, 16.886230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.468409, 15.963141, 17.038752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608096, 0.027383, -0.793391,
		0.589640, 0.653594, 0.474489,
		0.531549, -0.756350, 0.381301,
		16.627872, 15.736237, 17.153141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.004835, 16.434826, 16.827896>,  <16.255789, 16.265682, 16.886230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.004835, 16.434826, 16.827896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.987106, 16.041151, 16.896494>,  <16.976469, 15.804946, 16.937653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.987106, 16.041151, 16.896494>,  <17.004835, 16.434826, 16.827896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987106, 16.041151, 16.896494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638442, -0.159936, -0.752870,
		0.768393, 0.076121, 0.635435,
		-0.044320, -0.984188, 0.171493,
		16.973810, 15.745894, 16.947941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.674633, 16.219835, 16.900763>,  <17.004835, 16.434826, 16.827896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.674633, 16.219835, 16.900763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.465208, 15.901591, 16.778851>,  <17.339554, 15.710645, 16.705704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.465208, 15.901591, 16.778851>,  <17.674633, 16.219835, 16.900763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.465208, 15.901591, 16.778851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659134, -0.151583, -0.736590,
		0.539838, -0.586540, 0.603776,
		-0.523562, -0.795609, -0.304778,
		17.308140, 15.662909, 16.687416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.160719, 15.809100, 16.695169>,  <17.674633, 16.219835, 16.900763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.160719, 15.809100, 16.695169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.855875, 15.600988, 16.541027>,  <17.672970, 15.476121, 16.448542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.855875, 15.600988, 16.541027>,  <18.160719, 15.809100, 16.695169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.855875, 15.600988, 16.541027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538329, -0.178524, -0.823609,
		0.359712, -0.835128, 0.416137,
		-0.762109, -0.520280, -0.385356,
		17.627243, 15.444904, 16.425421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.410589, 15.086093, 16.634706>,  <18.160719, 15.809100, 16.695169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.410589, 15.086093, 16.634706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109034, 15.159928, 16.382490>,  <17.928101, 15.204229, 16.231161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109034, 15.159928, 16.382490>,  <18.410589, 15.086093, 16.634706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.109034, 15.159928, 16.382490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601180, -0.193315, -0.775378,
		-0.265019, -0.963616, 0.034766,
		-0.753888, 0.184589, -0.630539,
		17.882868, 15.215304, 16.193329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.121685, 14.476623, 16.370810>,  <18.410589, 15.086093, 16.634706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.121685, 14.476623, 16.370810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.099993, 14.793933, 16.128233>,  <18.086977, 14.984320, 15.982687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.099993, 14.793933, 16.128233>,  <18.121685, 14.476623, 16.370810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.099993, 14.793933, 16.128233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635824, -0.440860, -0.633538,
		-0.769927, -0.419946, -0.480477,
		-0.054229, 0.793276, -0.606442,
		18.083725, 15.031916, 15.946301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.944658, 14.068343, 15.765574>,  <18.121685, 14.476623, 16.370810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.944658, 14.068343, 15.765574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158724, 14.406215, 15.761233>,  <18.287163, 14.608937, 15.758629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158724, 14.406215, 15.761233>,  <17.944658, 14.068343, 15.765574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158724, 14.406215, 15.761233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824327, -0.524991, -0.211823,
		-0.184619, 0.104415, -0.977248,
		0.535164, 0.844679, -0.010851,
		18.319273, 14.659618, 15.757977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.607117, 13.968844, 15.428725>,  <17.944658, 14.068343, 15.765574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.607117, 13.968844, 15.428725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.836220, 14.268093, 15.294703>,  <18.973680, 14.447642, 15.214289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.836220, 14.268093, 15.294703>,  <18.607117, 13.968844, 15.428725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.836220, 14.268093, 15.294703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807922, -0.446086, 0.385058,
		0.138606, -0.491243, -0.859923,
		0.572756, 0.748123, -0.335056,
		19.008047, 14.492530, 15.194185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.109257, 13.795146, 14.899963>,  <18.607117, 13.968844, 15.428725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.109257, 13.795146, 14.899963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248522, 14.093184, 15.127512>,  <19.332081, 14.272007, 15.264041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248522, 14.093184, 15.127512>,  <19.109257, 13.795146, 14.899963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.248522, 14.093184, 15.127512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725670, -0.598382, 0.339621,
		0.593453, 0.294571, -0.749028,
		0.348162, 0.745096, 0.568872,
		19.352970, 14.316713, 15.298174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.716572, 13.362339, 14.891540>,  <19.109257, 13.795146, 14.899963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.716572, 13.362339, 14.891540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.077641, 13.190331, 14.885038>,  <20.294281, 13.087126, 14.881138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.077641, 13.190331, 14.885038>,  <19.716572, 13.362339, 14.891540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.077641, 13.190331, 14.885038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417873, -0.884941, 0.205578,
		-0.102787, -0.178778, -0.978506,
		0.902672, -0.430022, -0.016254,
		20.348442, 13.061324, 14.880162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628624, 12.838771, 14.463393>,  <19.716572, 13.362339, 14.891540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628624, 12.838771, 14.463393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.918779, 12.708659, 14.706046>,  <20.092873, 12.630592, 14.851638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.918779, 12.708659, 14.706046>,  <19.628624, 12.838771, 14.463393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.918779, 12.708659, 14.706046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431197, -0.901686, 0.032120,
		0.536544, -0.284877, -0.794333,
		0.725389, -0.325280, 0.606633,
		20.136396, 12.611075, 14.888036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.889433, 12.156747, 14.271309>,  <19.628624, 12.838771, 14.463393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.889433, 12.156747, 14.271309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.922495, 12.207671, 14.666674>,  <19.942331, 12.238226, 14.903893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.922495, 12.207671, 14.666674>,  <19.889433, 12.156747, 14.271309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.922495, 12.207671, 14.666674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467706, -0.870842, 0.151278,
		0.880011, -0.474790, -0.012432,
		0.082652, 0.127312, 0.988413,
		19.947290, 12.245865, 14.963198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.348022, 12.156454, 13.729983>,  <19.889433, 12.156747, 14.271309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.348022, 12.156454, 13.729983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.088024, 11.858450, 13.670033>,  <19.932026, 11.679647, 13.634062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.088024, 11.858450, 13.670033>,  <20.348022, 12.156454, 13.729983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.088024, 11.858450, 13.670033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245885, 0.392795, -0.886145,
		0.719059, -0.539138, -0.438503,
		-0.649996, -0.745012, -0.149877,
		19.893024, 11.634947, 13.625070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.454020, 11.738389, 13.088577>,  <20.348022, 12.156454, 13.729983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.454020, 11.738389, 13.088577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.658922, 11.681054, 12.749863>,  <20.781864, 11.646653, 12.546634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.658922, 11.681054, 12.749863>,  <20.454020, 11.738389, 13.088577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.658922, 11.681054, 12.749863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527631, 0.725435, -0.441984,
		0.677641, 0.673200, 0.295981,
		0.512259, -0.143337, -0.846785,
		20.812599, 11.638053, 12.495827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.509069, 12.427700, 12.810695>,  <20.454020, 11.738389, 13.088577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.509069, 12.427700, 12.810695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.609587, 12.214838, 12.487297>,  <20.669897, 12.087121, 12.293259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.609587, 12.214838, 12.487297>,  <20.509069, 12.427700, 12.810695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.609587, 12.214838, 12.487297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579893, 0.586017, -0.565958,
		0.774969, 0.611061, -0.161331,
		0.251292, -0.532155, -0.808495,
		20.684975, 12.055192, 12.244749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.639530, 12.892137, 12.293965>,  <20.509069, 12.427700, 12.810695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.639530, 12.892137, 12.293965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.560009, 12.561819, 12.082857>,  <20.512297, 12.363628, 11.956192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.560009, 12.561819, 12.082857>,  <20.639530, 12.892137, 12.293965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.560009, 12.561819, 12.082857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498439, 0.548866, -0.671047,
		0.843822, 0.129657, -0.520724,
		-0.198802, -0.825794, -0.527771,
		20.500368, 12.314081, 11.924526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790672, 13.079046, 11.571735>,  <20.639530, 12.892137, 12.293965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790672, 13.079046, 11.571735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556559, 12.754799, 11.564327>,  <20.416090, 12.560250, 11.559882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556559, 12.754799, 11.564327>,  <20.790672, 13.079046, 11.571735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.556559, 12.754799, 11.564327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545424, 0.410502, -0.730754,
		0.599965, -0.417595, -0.682390,
		-0.585281, -0.810619, -0.018520,
		20.380974, 12.511614, 11.558771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.846664, 12.934189, 10.916651>,  <20.790672, 13.079046, 11.571735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.846664, 12.934189, 10.916651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506161, 12.784424, 11.063715>,  <20.301859, 12.694565, 11.151954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506161, 12.784424, 11.063715>,  <20.846664, 12.934189, 10.916651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.506161, 12.784424, 11.063715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506762, 0.404710, -0.761184,
		0.136200, -0.834282, -0.534251,
		-0.851259, -0.374411, 0.367661,
		20.250784, 12.672100, 11.174013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.472109, 12.617759, 10.315829>,  <20.846664, 12.934189, 10.916651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.472109, 12.617759, 10.315829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.200535, 12.703062, 10.596847>,  <20.037590, 12.754244, 10.765457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.200535, 12.703062, 10.596847>,  <20.472109, 12.617759, 10.315829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.200535, 12.703062, 10.596847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532353, 0.515982, -0.671090,
		-0.505615, -0.829629, -0.236790,
		-0.678935, 0.213258, 0.702544,
		19.996855, 12.767039, 10.807610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.861153, 12.557492, 9.990608>,  <20.472109, 12.617759, 10.315829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.861153, 12.557492, 9.990608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778938, 12.748702, 10.332192>,  <19.729610, 12.863428, 10.537143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778938, 12.748702, 10.332192>,  <19.861153, 12.557492, 9.990608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.778938, 12.748702, 10.332192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518999, 0.686539, -0.509219,
		-0.829696, -0.547867, 0.106987,
		-0.205534, 0.478023, 0.853961,
		19.717278, 12.892109, 10.588381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183916, 12.632437, 10.013665>,  <19.861153, 12.557492, 9.990608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183916, 12.632437, 10.013665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.321974, 12.919727, 10.255335>,  <19.404808, 13.092102, 10.400336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.321974, 12.919727, 10.255335>,  <19.183916, 12.632437, 10.013665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.321974, 12.919727, 10.255335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473103, 0.689101, -0.548919,
		-0.810586, -0.096382, 0.577634,
		0.345142, 0.718227, 0.604174,
		19.425516, 13.135196, 10.436587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.652840, 13.201508, 10.032105>,  <19.183916, 12.632437, 10.013665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.652840, 13.201508, 10.032105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.975700, 13.360206, 10.206964>,  <19.169416, 13.455424, 10.311880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.975700, 13.360206, 10.206964>,  <18.652840, 13.201508, 10.032105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.975700, 13.360206, 10.206964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240776, 0.897353, -0.369845,
		-0.539011, 0.193266, 0.819827,
		0.807152, 0.396745, 0.437149,
		19.217846, 13.479229, 10.338109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463654, 13.900146, 10.352543>,  <18.652840, 13.201508, 10.032105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463654, 13.900146, 10.352543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.858234, 13.886196, 10.288427>,  <19.094984, 13.877826, 10.249958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.858234, 13.886196, 10.288427>,  <18.463654, 13.900146, 10.352543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.858234, 13.886196, 10.288427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035115, 0.909590, -0.414020,
		0.160236, 0.414040, 0.896044,
		0.986454, -0.034876, -0.160289,
		19.154171, 13.875733, 10.240341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841167, 14.482423, 10.726942>,  <18.463654, 13.900146, 10.352543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841167, 14.482423, 10.726942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.050232, 14.347741, 10.413649>,  <19.175671, 14.266932, 10.225673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.050232, 14.347741, 10.413649>,  <18.841167, 14.482423, 10.726942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.050232, 14.347741, 10.413649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133314, 0.875125, -0.465170,
		0.842054, 0.347542, 0.412505,
		0.522660, -0.336705, -0.783234,
		19.207029, 14.246730, 10.178679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.173918, 15.029169, 10.499660>,  <18.841167, 14.482423, 10.726942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.173918, 15.029169, 10.499660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.216328, 14.804170, 10.171671>,  <19.241774, 14.669170, 9.974877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.216328, 14.804170, 10.171671>,  <19.173918, 15.029169, 10.499660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.216328, 14.804170, 10.171671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346666, 0.751973, -0.560677,
		0.931977, 0.343702, -0.115271,
		0.106025, -0.562499, -0.819972,
		19.248135, 14.635420, 9.925679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610565, 15.347800, 10.049296>,  <19.173918, 15.029169, 10.499660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.610565, 15.347800, 10.049296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.402544, 15.102863, 9.811109>,  <19.277731, 14.955901, 9.668196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.402544, 15.102863, 9.811109>,  <19.610565, 15.347800, 10.049296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.402544, 15.102863, 9.811109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263667, 0.778203, -0.569982,
		0.812421, -0.139413, -0.566159,
		-0.520050, -0.612343, -0.595470,
		19.246529, 14.919161, 9.632468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892839, 15.504977, 9.459337>,  <19.610565, 15.347800, 10.049296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892839, 15.504977, 9.459337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.547274, 15.323961, 9.370919>,  <19.339933, 15.215352, 9.317868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.547274, 15.323961, 9.370919>,  <19.892839, 15.504977, 9.459337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.547274, 15.323961, 9.370919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169256, 0.674243, -0.718852,
		0.474346, -0.583614, -0.659083,
		-0.863914, -0.452539, -0.221044,
		19.288099, 15.188199, 9.304605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.787956, 15.550486, 8.669441>,  <19.892839, 15.504977, 9.459337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.787956, 15.550486, 8.669441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.433619, 15.427264, 8.808228>,  <19.221016, 15.353332, 8.891500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.433619, 15.427264, 8.808228>,  <19.787956, 15.550486, 8.669441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.433619, 15.427264, 8.808228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462396, 0.524305, -0.715048,
		0.038357, -0.793856, -0.606895,
		-0.885843, -0.308052, 0.346965,
		19.167866, 15.334848, 8.912317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.357075, 15.303712, 7.982366>,  <19.787956, 15.550486, 8.669441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.357075, 15.303712, 7.982366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.148050, 15.388206, 8.312774>,  <19.022635, 15.438902, 8.511019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.148050, 15.388206, 8.312774>,  <19.357075, 15.303712, 7.982366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.148050, 15.388206, 8.312774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646256, 0.533806, -0.545347,
		-0.556130, -0.818799, -0.142436,
		-0.522563, 0.211234, 0.826019,
		18.991282, 15.451575, 8.560579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.630951, 15.195624, 7.865959>,  <19.357075, 15.303712, 7.982366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.630951, 15.195624, 7.865959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618076, 15.452278, 8.172493>,  <18.610352, 15.606271, 8.356413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618076, 15.452278, 8.172493>,  <18.630951, 15.195624, 7.865959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.618076, 15.452278, 8.172493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627291, 0.583949, -0.515277,
		-0.778120, -0.497300, 0.383695,
		-0.032189, 0.641635, 0.766334,
		18.608419, 15.644769, 8.402393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968477, 15.570452, 7.876993>,  <18.630951, 15.195624, 7.865959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.968477, 15.570452, 7.876993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.205286, 15.814195, 8.087968>,  <18.347372, 15.960441, 8.214553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.205286, 15.814195, 8.087968>,  <17.968477, 15.570452, 7.876993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.205286, 15.814195, 8.087968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395170, 0.789868, -0.468989,
		-0.702388, 0.069225, 0.708420,
		0.592024, 0.609358, 0.527438,
		18.382893, 15.997003, 8.246200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.489714, 16.015753, 8.131047>,  <17.968477, 15.570452, 7.876993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.489714, 16.015753, 8.131047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.852505, 16.183765, 8.143483>,  <18.070179, 16.284573, 8.150945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.852505, 16.183765, 8.143483>,  <17.489714, 16.015753, 8.131047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852505, 16.183765, 8.143483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364892, 0.820486, -0.440064,
		-0.210349, 0.387784, 0.897428,
		0.906977, 0.420031, 0.031089,
		18.124598, 16.309774, 8.152810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451330, 16.650698, 8.488258>,  <17.489714, 16.015753, 8.131047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451330, 16.650698, 8.488258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.756680, 16.650940, 8.229876>,  <17.939890, 16.651085, 8.074846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.756680, 16.650940, 8.229876>,  <17.451330, 16.650698, 8.488258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.756680, 16.650940, 8.229876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386104, 0.802129, -0.455535,
		0.517865, 0.597150, 0.612558,
		0.763374, 0.000605, -0.645957,
		17.985691, 16.651121, 8.036089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620686, 17.383553, 8.436399>,  <17.451330, 16.650698, 8.488258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620686, 17.383553, 8.436399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.746559, 17.185286, 8.112599>,  <17.822083, 17.066326, 7.918320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.746559, 17.185286, 8.112599>,  <17.620686, 17.383553, 8.436399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.746559, 17.185286, 8.112599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131387, 0.821870, -0.554317,
		0.940059, 0.280792, 0.193505,
		0.314684, -0.495667, -0.809499,
		17.840963, 17.036585, 7.869750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643932, 17.460155, 9.284246>,  <17.620686, 17.383553, 8.436399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.643932, 17.460155, 9.284246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.541618, 17.779562, 9.502218>,  <17.480230, 17.971205, 9.633001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.541618, 17.779562, 9.502218>,  <17.643932, 17.460155, 9.284246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541618, 17.779562, 9.502218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040117, -0.554428, 0.831264,
		0.965900, 0.234487, 0.109781,
		-0.255786, 0.798514, 0.544929,
		17.464882, 18.019115, 9.665697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149536, 17.688869, 9.866025>,  <17.643932, 17.460155, 9.284246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.149536, 17.688869, 9.866025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.773088, 17.782059, 9.964020>,  <17.547220, 17.837973, 10.022817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.773088, 17.782059, 9.964020>,  <18.149536, 17.688869, 9.866025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.773088, 17.782059, 9.964020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064426, -0.587784, 0.806449,
		0.331880, 0.774748, 0.538165,
		-0.941119, 0.232973, 0.244987,
		17.490753, 17.851950, 10.037516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214455, 18.067461, 10.378572>,  <18.149536, 17.688869, 9.866025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214455, 18.067461, 10.378572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.892832, 17.830061, 10.392720>,  <17.699858, 17.687620, 10.401209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.892832, 17.830061, 10.392720>,  <18.214455, 18.067461, 10.378572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.892832, 17.830061, 10.392720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416332, -0.519570, 0.746133,
		-0.424453, 0.614658, 0.664857,
		-0.804057, -0.593500, 0.035369,
		17.651615, 17.652012, 10.403331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.082920, 17.912821, 11.031252>,  <18.214455, 18.067461, 10.378572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.082920, 17.912821, 11.031252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.905922, 17.605970, 10.845471>,  <17.799723, 17.421860, 10.734003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.905922, 17.605970, 10.845471>,  <18.082920, 17.912821, 11.031252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.905922, 17.605970, 10.845471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522754, -0.641473, 0.561464,
		-0.728646, 0.005653, 0.684867,
		-0.442498, -0.767125, -0.464452,
		17.773172, 17.375834, 10.706136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850901, 17.501476, 11.526009>,  <18.082920, 17.912821, 11.031252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.850901, 17.501476, 11.526009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902254, 17.258778, 11.212225>,  <17.933065, 17.113159, 11.023954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902254, 17.258778, 11.212225>,  <17.850901, 17.501476, 11.526009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902254, 17.258778, 11.212225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362587, -0.707524, 0.606581,
		-0.923065, -0.362309, 0.129164,
		0.128383, -0.606747, -0.784459,
		17.940769, 17.076754, 10.976887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844070, 16.840698, 11.866751>,  <17.850901, 17.501476, 11.526009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844070, 16.840698, 11.866751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.003206, 16.793451, 11.502823>,  <18.098688, 16.765102, 11.284466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.003206, 16.793451, 11.502823>,  <17.844070, 16.840698, 11.866751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.003206, 16.793451, 11.502823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531575, -0.778582, 0.333524,
		-0.747764, -0.616327, -0.246963,
		0.397841, -0.118118, -0.909819,
		18.122559, 16.758017, 11.229877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413605, 17.262226, 12.255598>,  <17.844070, 16.840698, 11.866751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413605, 17.262226, 12.255598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.321499, 17.427679, 11.903261>,  <17.266235, 17.526951, 11.691859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.321499, 17.427679, 11.903261>,  <17.413605, 17.262226, 12.255598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.321499, 17.427679, 11.903261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964588, -0.022642, -0.262789,
		-0.128642, -0.910161, -0.393773,
		-0.230265, 0.413634, -0.880843,
		17.252419, 17.551769, 11.639009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.290222, 17.047562, 12.925023>,  <17.413605, 17.262226, 12.255598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.290222, 17.047562, 12.925023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459116, 17.314802, 13.170089>,  <17.560452, 17.475147, 13.317128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459116, 17.314802, 13.170089>,  <17.290222, 17.047562, 12.925023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.459116, 17.314802, 13.170089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900854, -0.384492, -0.201562,
		0.100901, 0.637027, -0.764209,
		0.422233, 0.668103, 0.612664,
		17.585785, 17.515234, 13.353888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.987160, 17.016281, 12.618977>,  <17.290222, 17.047562, 12.925023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.987160, 17.016281, 12.618977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.010798, 17.171633, 12.986818>,  <18.024981, 17.264843, 13.207523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.010798, 17.171633, 12.986818>,  <17.987160, 17.016281, 12.618977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.010798, 17.171633, 12.986818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949286, -0.306842, 0.068585,
		0.308810, 0.868914, -0.386814,
		0.059096, 0.388377, 0.919604,
		18.028526, 17.288145, 13.262699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.475843, 17.519207, 12.585770>,  <17.987160, 17.016281, 12.618977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.475843, 17.519207, 12.585770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.448320, 17.400175, 12.966656>,  <18.431807, 17.328756, 13.195188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.448320, 17.400175, 12.966656>,  <18.475843, 17.519207, 12.585770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.448320, 17.400175, 12.966656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997184, -0.049068, 0.056722,
		0.029844, 0.953435, 0.300118,
		-0.068807, -0.297580, 0.952214,
		18.427679, 17.310902, 13.252320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.087450, 17.861849, 12.977796>,  <18.475843, 17.519207, 12.585770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.087450, 17.861849, 12.977796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.963507, 17.555151, 13.202684>,  <18.889141, 17.371132, 13.337618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.963507, 17.555151, 13.202684>,  <19.087450, 17.861849, 12.977796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963507, 17.555151, 13.202684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950196, -0.228961, 0.211433,
		-0.033388, 0.599735, 0.799502,
		-0.309859, -0.766743, 0.562221,
		18.870548, 17.325129, 13.371351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.441498, 17.957140, 13.617908>,  <19.087450, 17.861849, 12.977796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.441498, 17.957140, 13.617908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335922, 17.571352, 13.622587>,  <19.272577, 17.339880, 13.625395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335922, 17.571352, 13.622587>,  <19.441498, 17.957140, 13.617908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.335922, 17.571352, 13.622587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964136, -0.263459, 0.032123,
		-0.027899, 0.019759, 0.999416,
		-0.263939, -0.964468, 0.011700,
		19.256741, 17.282011, 13.626098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.841549, 17.646626, 14.217418>,  <19.441498, 17.957140, 13.617908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.841549, 17.646626, 14.217418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757183, 17.332293, 13.984873>,  <19.706564, 17.143692, 13.845346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757183, 17.332293, 13.984873>,  <19.841549, 17.646626, 14.217418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757183, 17.332293, 13.984873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893740, -0.395909, 0.210914,
		-0.395909, -0.475101, 0.785834,
		-0.210914, -0.785834, -0.581361,
		19.693909, 17.096542, 13.810465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154001, 17.164083, 14.591794>,  <19.841549, 17.646626, 14.217418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.154001, 17.164083, 14.591794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.087204, 17.008274, 14.229494>,  <20.047125, 16.914789, 14.012114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.087204, 17.008274, 14.229494>,  <20.154001, 17.164083, 14.591794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.087204, 17.008274, 14.229494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853970, -0.516298, 0.064589,
		-0.492796, -0.762698, 0.418860,
		-0.166995, -0.389523, -0.905751,
		20.037106, 16.891417, 13.957768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.401320, 16.517710, 14.599191>,  <20.154001, 17.164083, 14.591794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.401320, 16.517710, 14.599191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.395681, 16.599775, 14.207741>,  <20.392298, 16.649015, 13.972871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.395681, 16.599775, 14.207741>,  <20.401320, 16.517710, 14.599191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.395681, 16.599775, 14.207741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926576, -0.365202, -0.089910,
		-0.375842, -0.908039, -0.184953,
		-0.014096, 0.205165, -0.978626,
		20.391453, 16.661325, 13.914153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.444029, 15.957071, 14.285727>,  <20.401320, 16.517710, 14.599191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.444029, 15.957071, 14.285727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.587004, 16.224157, 14.024531>,  <20.672789, 16.384409, 13.867814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.587004, 16.224157, 14.024531>,  <20.444029, 15.957071, 14.285727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.587004, 16.224157, 14.024531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900776, -0.431134, 0.052217,
		-0.246660, -0.606860, -0.755566,
		0.357438, 0.667716, -0.652988,
		20.694235, 16.424473, 13.828635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.801077, 15.574863, 13.757402>,  <20.444029, 15.957071, 14.285727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.801077, 15.574863, 13.757402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.930325, 15.953299, 13.766454>,  <21.007874, 16.180359, 13.771885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.930325, 15.953299, 13.766454>,  <20.801077, 15.574863, 13.757402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.930325, 15.953299, 13.766454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938248, -0.323383, 0.122943,
		0.123632, -0.018493, -0.992156,
		0.323120, 0.946087, 0.022629,
		21.027260, 16.237125, 13.773243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.311073, 15.559817, 13.329576>,  <20.801077, 15.574863, 13.757402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.311073, 15.559817, 13.329576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.397860, 15.891914, 13.534954>,  <21.449930, 16.091173, 13.658181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.397860, 15.891914, 13.534954>,  <21.311073, 15.559817, 13.329576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.397860, 15.891914, 13.534954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968928, -0.247147, -0.009798,
		0.118762, 0.499617, -0.858067,
		0.216964, 0.830242, 0.513445,
		21.462948, 16.140987, 13.688988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.763866, 15.891274, 12.918960>,  <21.311073, 15.559817, 13.329576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.763866, 15.891274, 12.918960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.797359, 16.025127, 13.294408>,  <21.817455, 16.105438, 13.519677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.797359, 16.025127, 13.294408>,  <21.763866, 15.891274, 12.918960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.797359, 16.025127, 13.294408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913103, -0.402957, 0.062203,
		0.399039, 0.851849, -0.339294,
		0.083734, 0.334632, 0.938621,
		21.822479, 16.125517, 13.575994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.264463, 16.399933, 12.964892>,  <21.763866, 15.891274, 12.918960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.264463, 16.399933, 12.964892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.233988, 16.291937, 13.348829>,  <22.215702, 16.227139, 13.579191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.233988, 16.291937, 13.348829>,  <22.264463, 16.399933, 12.964892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.233988, 16.291937, 13.348829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977955, -0.207936, 0.019139,
		0.194418, 0.940142, 0.279883,
		-0.076191, -0.269992, 0.959843,
		22.211130, 16.210939, 13.636783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.818161, 16.679155, 13.286863>,  <22.264463, 16.399933, 12.964892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.818161, 16.679155, 13.286863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.709091, 16.416691, 13.568317>,  <22.643648, 16.259212, 13.737190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.709091, 16.416691, 13.568317>,  <22.818161, 16.679155, 13.286863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.709091, 16.416691, 13.568317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961164, -0.153437, 0.229390,
		-0.042552, 0.738859, 0.672516,
		-0.272676, -0.656159, 0.703636,
		22.627289, 16.219843, 13.779408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.248878, 16.863569, 13.912725>,  <22.818161, 16.679155, 13.286863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.248878, 16.863569, 13.912725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.089819, 16.499729, 13.960898>,  <22.994383, 16.281425, 13.989802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.089819, 16.499729, 13.960898>,  <23.248878, 16.863569, 13.912725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.089819, 16.499729, 13.960898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910992, -0.375745, 0.170027,
		-0.109405, 0.177325, 0.978052,
		-0.397648, -0.909600, 0.120433,
		22.970524, 16.226849, 13.997028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.750526, 16.527561, 14.395819>,  <23.248878, 16.863569, 13.912725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.750526, 16.527561, 14.395819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.570038, 16.201895, 14.249651>,  <23.461744, 16.006495, 14.161950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.570038, 16.201895, 14.249651>,  <23.750526, 16.527561, 14.395819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.570038, 16.201895, 14.249651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874502, -0.485021, 0.000802,
		-0.177889, -0.319198, 0.930843,
		-0.451223, -0.814166, -0.365419,
		23.434671, 15.957644, 14.140025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.917950, 15.932130, 14.758356>,  <23.750526, 16.527561, 14.395819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.917950, 15.932130, 14.758356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.821110, 15.814476, 14.388518>,  <23.763006, 15.743884, 14.166615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.821110, 15.814476, 14.388518>,  <23.917950, 15.932130, 14.758356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.821110, 15.814476, 14.388518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880244, -0.467419, -0.081790,
		-0.408116, -0.833669, 0.372071,
		-0.242099, -0.294134, -0.924594,
		23.748480, 15.726236, 14.111140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.276400, 15.254751, 14.699009>,  <23.917950, 15.932130, 14.758356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.276400, 15.254751, 14.699009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216673, 15.444588, 14.352029>,  <24.180838, 15.558490, 14.143841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216673, 15.444588, 14.352029>,  <24.276400, 15.254751, 14.699009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.216673, 15.444588, 14.352029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952744, -0.165658, -0.254630,
		-0.264545, -0.864478, -0.427428,
		-0.149315, 0.474590, -0.867450,
		24.171879, 15.586965, 14.091794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456764, 14.873074, 14.032234>,  <24.276400, 15.254751, 14.699009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456764, 14.873074, 14.032234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539446, 15.262022, 13.988840>,  <24.589054, 15.495391, 13.962804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539446, 15.262022, 13.988840>,  <24.456764, 14.873074, 14.032234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539446, 15.262022, 13.988840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882133, -0.233177, -0.409231,
		-0.423221, -0.011110, -0.905959,
		0.206702, 0.972371, -0.108485,
		24.601456, 15.553733, 13.956294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609671, 14.985451, 13.285454>,  <24.456764, 14.873074, 14.032234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609671, 14.985451, 13.285454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782743, 15.264782, 13.513534>,  <24.886587, 15.432381, 13.650381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782743, 15.264782, 13.513534>,  <24.609671, 14.985451, 13.285454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782743, 15.264782, 13.513534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849085, -0.103043, -0.518108,
		-0.303054, 0.708322, -0.637524,
		0.432681, 0.698328, 0.570198,
		24.912548, 15.474280, 13.684593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267008, 15.059332, 13.070108>,  <24.609671, 14.985451, 13.285454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267008, 15.059332, 13.070108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296053, 15.334421, 13.359041>,  <25.313480, 15.499475, 13.532401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296053, 15.334421, 13.359041>,  <25.267008, 15.059332, 13.070108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296053, 15.334421, 13.359041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909919, 0.250871, -0.330320,
		-0.408382, 0.681248, -0.607557,
		0.072611, 0.687724, 0.722332,
		25.317837, 15.540738, 13.575741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838766, 14.502525, 13.240702>,  <25.267008, 15.059332, 13.070108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838766, 14.502525, 13.240702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200344, 14.536489, 13.073047>,  <26.417290, 14.556868, 12.972454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200344, 14.536489, 13.073047>,  <25.838766, 14.502525, 13.240702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200344, 14.536489, 13.073047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150564, 0.854150, 0.497753,
		0.400271, -0.513048, 0.759319,
		0.903943, 0.084910, -0.419138,
		26.471527, 14.561962, 12.947306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510347, 14.660264, 13.618159>,  <25.838766, 14.502525, 13.240702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510347, 14.660264, 13.618159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589472, 14.810728, 13.256083>,  <26.636946, 14.901007, 13.038836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589472, 14.810728, 13.256083>,  <26.510347, 14.660264, 13.618159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589472, 14.810728, 13.256083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391029, 0.816504, 0.424756,
		0.898870, -0.437978, 0.014423,
		0.197811, 0.376161, -0.905193,
		26.648815, 14.923576, 12.984525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880060, 14.761247, 13.957268>,  <26.510347, 14.660264, 13.618159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880060, 14.761247, 13.957268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504999, 14.883111, 14.024188>,  <25.279963, 14.956229, 14.064341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504999, 14.883111, 14.024188>,  <25.880060, 14.761247, 13.957268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504999, 14.883111, 14.024188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337909, 0.686317, 0.644039,
		0.081391, 0.660417, -0.746475,
		-0.937653, 0.304660, 0.167301,
		25.223703, 14.974509, 14.074378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068720, 14.588326, 14.758788>,  <25.880060, 14.761247, 13.957268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068720, 14.588326, 14.758788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730556, 14.450420, 14.595608>,  <25.527658, 14.367677, 14.497700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730556, 14.450420, 14.595608>,  <26.068720, 14.588326, 14.758788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730556, 14.450420, 14.595608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180413, -0.534567, 0.825645,
		-0.502731, 0.771605, 0.389727,
		-0.845407, -0.344765, -0.407951,
		25.476934, 14.346991, 14.473223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882637, 15.217718, 14.859212>,  <26.068720, 14.588326, 14.758788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882637, 15.217718, 14.859212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154486, 15.140056, 15.142173>,  <26.317595, 15.093458, 15.311950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154486, 15.140056, 15.142173>,  <25.882637, 15.217718, 14.859212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154486, 15.140056, 15.142173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015032, -0.967821, -0.251190,
		0.733409, 0.160080, -0.660671,
		0.679621, -0.194156, 0.707402,
		26.358372, 15.081809, 15.354394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611124, 15.087297, 14.692350>,  <25.882637, 15.217718, 14.859212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611124, 15.087297, 14.692350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454063, 14.866338, 14.986474>,  <26.359827, 14.733762, 15.162949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454063, 14.866338, 14.986474>,  <26.611124, 15.087297, 14.692350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454063, 14.866338, 14.986474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133092, -0.825235, -0.548884,
		0.910006, -0.117657, 0.397550,
		-0.392652, -0.552399, 0.735310,
		26.336267, 14.700618, 15.207067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.866199, 21.461390, 21.914913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.487054, 21.567007, 21.986288>,  <13.259567, 21.630377, 22.029112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.487054, 21.567007, 21.986288>,  <13.866199, 21.461390, 21.914913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.487054, 21.567007, 21.986288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318609, -0.773136, -0.548406,
		-0.006848, -0.576664, 0.816953,
		-0.947861, 0.264044, 0.178436,
		13.202696, 21.646221, 22.039820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.447248, 20.839434, 22.151106>,  <13.866199, 21.461390, 21.914913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.447248, 20.839434, 22.151106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.213925, 21.114380, 21.978001>,  <13.073932, 21.279346, 21.874138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.213925, 21.114380, 21.978001>,  <13.447248, 20.839434, 22.151106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.213925, 21.114380, 21.978001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404257, -0.707798, -0.579308,
		-0.704529, -0.162938, 0.690717,
		-0.583279, 0.687367, -0.432795,
		13.038934, 21.320589, 21.848171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.814677, 20.415445, 22.102364>,  <13.447248, 20.839434, 22.151106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.814677, 20.415445, 22.102364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.769425, 20.740723, 21.874008>,  <12.742274, 20.935890, 21.736994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.769425, 20.740723, 21.874008>,  <12.814677, 20.415445, 22.102364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.769425, 20.740723, 21.874008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580868, -0.520290, -0.626012,
		-0.806098, 0.260792, 0.531219,
		-0.113129, 0.813195, -0.570890,
		12.735486, 20.984682, 21.702742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.098447, 20.365997, 21.868761>,  <12.814677, 20.415445, 22.102364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.098447, 20.365997, 21.868761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.314462, 20.588095, 21.615759>,  <12.444071, 20.721354, 21.463957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.314462, 20.588095, 21.615759>,  <12.098447, 20.365997, 21.868761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.314462, 20.588095, 21.615759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444732, -0.449772, -0.774545,
		-0.714545, 0.699578, 0.004042,
		0.540036, 0.555245, -0.632506,
		12.476473, 20.754667, 21.426006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.651044, 20.584557, 21.366997>,  <12.098447, 20.365997, 21.868761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.651044, 20.584557, 21.366997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.005886, 20.642611, 21.191734>,  <12.218792, 20.677443, 21.086576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.005886, 20.642611, 21.191734>,  <11.651044, 20.584557, 21.366997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.005886, 20.642611, 21.191734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369815, -0.344531, -0.862865,
		-0.276188, 0.927488, -0.251963,
		0.887106, 0.145133, -0.438154,
		12.272017, 20.686152, 21.060287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.466742, 20.871750, 20.672947>,  <11.651044, 20.584557, 21.366997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.466742, 20.871750, 20.672947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.829991, 20.704271, 20.673553>,  <12.047941, 20.603785, 20.673918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.829991, 20.704271, 20.673553>,  <11.466742, 20.871750, 20.672947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.829991, 20.704271, 20.673553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126910, -0.278710, -0.951953,
		0.399002, 0.864300, -0.306240,
		0.908125, -0.418697, 0.001517,
		12.102428, 20.578663, 20.674009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.715893, 21.055784, 20.008947>,  <11.466742, 20.871750, 20.672947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.715893, 21.055784, 20.008947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.960639, 20.761080, 20.124048>,  <12.107487, 20.584257, 20.193110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.960639, 20.761080, 20.124048>,  <11.715893, 21.055784, 20.008947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.960639, 20.761080, 20.124048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015059, -0.374587, -0.927070,
		0.790819, 0.562908, -0.240291,
		0.611864, -0.736763, 0.287754,
		12.144198, 20.540051, 20.210375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.202712, 20.994341, 19.553459>,  <11.715893, 21.055784, 20.008947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.202712, 20.994341, 19.553459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.240221, 20.633572, 19.722095>,  <12.262727, 20.417110, 19.823277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.240221, 20.633572, 19.722095>,  <12.202712, 20.994341, 19.553459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.240221, 20.633572, 19.722095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150016, -0.431421, -0.889591,
		0.984226, 0.020174, -0.175759,
		0.093773, -0.901925, 0.421589,
		12.268353, 20.362993, 19.848572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.741804, 20.699467, 19.134274>,  <12.202712, 20.994341, 19.553459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.741804, 20.699467, 19.134274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.589536, 20.383938, 19.327290>,  <12.498175, 20.194620, 19.443100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.589536, 20.383938, 19.327290>,  <12.741804, 20.699467, 19.134274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.589536, 20.383938, 19.327290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225094, -0.585179, -0.779037,
		0.896896, -0.187940, 0.400321,
		-0.380672, -0.788824, 0.482540,
		12.475334, 20.147291, 19.472052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.261146, 20.202711, 18.957800>,  <12.741804, 20.699467, 19.134274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.261146, 20.202711, 18.957800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.909188, 20.036379, 19.049776>,  <12.698013, 19.936579, 19.104961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.909188, 20.036379, 19.049776>,  <13.261146, 20.202711, 18.957800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.909188, 20.036379, 19.049776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052027, -0.565308, -0.823238,
		0.472314, -0.712399, 0.519045,
		-0.879894, -0.415831, 0.229939,
		12.645220, 19.911631, 19.118757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.419860, 19.570293, 18.796038>,  <13.261146, 20.202711, 18.957800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.419860, 19.570293, 18.796038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.022189, 19.533125, 18.817873>,  <12.783587, 19.510824, 18.830975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.022189, 19.533125, 18.817873>,  <13.419860, 19.570293, 18.796038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022189, 19.533125, 18.817873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031025, -0.731851, -0.680758,
		0.103209, -0.675100, 0.730471,
		-0.994176, -0.092923, 0.054589,
		12.723936, 19.505247, 18.834249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.333876, 18.886690, 18.912441>,  <13.419860, 19.570293, 18.796038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.333876, 18.886690, 18.912441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.013606, 19.040993, 18.729088>,  <12.821445, 19.133574, 18.619076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.013606, 19.040993, 18.729088>,  <13.333876, 18.886690, 18.912441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.013606, 19.040993, 18.729088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052727, -0.716776, -0.695307,
		-0.596776, -0.580883, 0.553564,
		-0.800674, 0.385755, -0.458383,
		12.773404, 19.156719, 18.591574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.950033, 18.314657, 18.570873>,  <13.333876, 18.886690, 18.912441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.950033, 18.314657, 18.570873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.790297, 18.639145, 18.400015>,  <12.694455, 18.833838, 18.297501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.790297, 18.639145, 18.400015>,  <12.950033, 18.314657, 18.570873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.790297, 18.639145, 18.400015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048128, -0.446717, -0.893380,
		-0.915539, -0.377321, 0.139349,
		-0.399340, 0.811217, -0.427147,
		12.670494, 18.882509, 18.271872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.451759, 18.090078, 18.120607>,  <12.950033, 18.314657, 18.570873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.451759, 18.090078, 18.120607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.551674, 18.446934, 17.970037>,  <12.611623, 18.661047, 17.879696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.551674, 18.446934, 17.970037>,  <12.451759, 18.090078, 18.120607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.551674, 18.446934, 17.970037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101668, -0.410763, -0.906056,
		-0.962949, 0.188050, -0.193305,
		0.249786, 0.892139, -0.376425,
		12.626610, 18.714575, 17.857109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.991416, 18.183998, 17.573524>,  <12.451759, 18.090078, 18.120607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.991416, 18.183998, 17.573524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.309528, 18.414495, 17.498188>,  <12.500396, 18.552794, 17.452986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.309528, 18.414495, 17.498188>,  <11.991416, 18.183998, 17.573524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.309528, 18.414495, 17.498188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000207, -0.310415, -0.950601,
		-0.606241, 0.756034, -0.246748,
		0.795281, 0.576243, -0.188343,
		12.548113, 18.587368, 17.441685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927508, 18.588600, 16.946922>,  <11.991416, 18.183998, 17.573524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927508, 18.588600, 16.946922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.323135, 18.544374, 16.985956>,  <12.560512, 18.517839, 17.009377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.323135, 18.544374, 16.985956>,  <11.927508, 18.588600, 16.946922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.323135, 18.544374, 16.985956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075080, -0.191995, -0.978520,
		0.126924, 0.975148, -0.181595,
		0.989067, -0.110563, 0.097583,
		12.619856, 18.511206, 17.015230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.120791, 18.760599, 16.302265>,  <11.927508, 18.588600, 16.946922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.120791, 18.760599, 16.302265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.465356, 18.612101, 16.440914>,  <12.672094, 18.523003, 16.524103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.465356, 18.612101, 16.440914>,  <12.120791, 18.760599, 16.302265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.465356, 18.612101, 16.440914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341313, -0.082285, -0.936341,
		0.376134, 0.924882, 0.055830,
		0.861411, -0.371245, 0.346624,
		12.723780, 18.500727, 16.544901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.638927, 19.089670, 15.964407>,  <12.120791, 18.760599, 16.302265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.638927, 19.089670, 15.964407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.799848, 18.745472, 16.089436>,  <12.896400, 18.538954, 16.164454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.799848, 18.745472, 16.089436>,  <12.638927, 19.089670, 15.964407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.799848, 18.745472, 16.089436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394118, -0.145382, -0.907488,
		0.826331, 0.488275, 0.280649,
		0.402303, -0.860495, 0.312572,
		12.920538, 18.487324, 16.183207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.262004, 19.198008, 15.734695>,  <12.638927, 19.089670, 15.964407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.262004, 19.198008, 15.734695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.212393, 18.805199, 15.791615>,  <13.182627, 18.569513, 15.825766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.212393, 18.805199, 15.791615>,  <13.262004, 19.198008, 15.734695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.212393, 18.805199, 15.791615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547515, -0.187326, -0.815559,
		0.827553, -0.023241, 0.560906,
		-0.124026, -0.982023, 0.142297,
		13.175185, 18.510592, 15.834304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.883430, 18.975210, 15.709921>,  <13.262004, 19.198008, 15.734695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.883430, 18.975210, 15.709921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.656945, 18.649681, 15.657614>,  <13.521054, 18.454365, 15.626229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.656945, 18.649681, 15.657614>,  <13.883430, 18.975210, 15.709921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.656945, 18.649681, 15.657614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530981, -0.238786, -0.813044,
		0.630446, -0.529790, 0.567327,
		-0.566212, -0.813821, -0.130767,
		13.487082, 18.405535, 15.618383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350467, 18.463480, 15.642597>,  <13.883430, 18.975210, 15.709921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350467, 18.463480, 15.642597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.010732, 18.355133, 15.461376>,  <13.806890, 18.290125, 15.352644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.010732, 18.355133, 15.461376>,  <14.350467, 18.463480, 15.642597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.010732, 18.355133, 15.461376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516925, -0.253095, -0.817760,
		0.106841, -0.928748, 0.354983,
		-0.849337, -0.270870, -0.453052,
		13.755931, 18.273872, 15.325460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.480710, 17.829020, 15.330626>,  <14.350467, 18.463480, 15.642597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.480710, 17.829020, 15.330626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.171430, 18.001963, 15.145056>,  <13.985862, 18.105728, 15.033713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.171430, 18.001963, 15.145056>,  <14.480710, 17.829020, 15.330626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.171430, 18.001963, 15.145056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395182, -0.243653, -0.885700,
		-0.495976, -0.868159, 0.017533,
		-0.773200, 0.432357, -0.463927,
		13.939469, 18.131670, 15.005877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.873256, 17.316933, 15.733502>,  <14.480710, 17.829020, 15.330626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.873256, 17.316933, 15.733502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.211224, 17.137949, 15.850729>,  <15.414004, 17.030558, 15.921065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.211224, 17.137949, 15.850729>,  <14.873256, 17.316933, 15.733502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.211224, 17.137949, 15.850729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147795, 0.721867, 0.676066,
		-0.514068, -0.527908, 0.676053,
		0.844921, -0.447461, 0.293067,
		15.464700, 17.003712, 15.938649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.899917, 17.260027, 16.524626>,  <14.873256, 17.316933, 15.733502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.899917, 17.260027, 16.524626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.259364, 17.276365, 16.349895>,  <15.475033, 17.286167, 16.245056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.259364, 17.276365, 16.349895>,  <14.899917, 17.260027, 16.524626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.259364, 17.276365, 16.349895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352034, 0.527084, 0.773469,
		0.261835, -0.848831, 0.459269,
		0.898618, 0.040843, -0.436826,
		15.528950, 17.288618, 16.218847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.396522, 17.245840, 17.083235>,  <14.899917, 17.260027, 16.524626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.396522, 17.245840, 17.083235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.616262, 17.375267, 16.775074>,  <15.748107, 17.452923, 16.590178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.616262, 17.375267, 16.775074>,  <15.396522, 17.245840, 17.083235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616262, 17.375267, 16.775074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517085, 0.592604, 0.617611,
		0.656380, -0.737649, 0.158239,
		0.549353, 0.323565, -0.770400,
		15.781068, 17.472336, 16.543953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.086958, 17.200991, 17.349192>,  <15.396522, 17.245840, 17.083235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.086958, 17.200991, 17.349192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.103985, 17.447231, 17.034430>,  <16.114201, 17.594976, 16.845572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.103985, 17.447231, 17.034430>,  <16.086958, 17.200991, 17.349192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.103985, 17.447231, 17.034430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542698, 0.647048, 0.535544,
		0.838848, -0.449849, -0.306544,
		0.042566, 0.615601, -0.786907,
		16.116755, 17.631912, 16.798357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.738159, 17.470798, 17.330851>,  <16.086958, 17.200991, 17.349192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.738159, 17.470798, 17.330851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.540384, 17.726076, 17.094803>,  <16.421721, 17.879242, 16.953175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.540384, 17.726076, 17.094803>,  <16.738159, 17.470798, 17.330851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.540384, 17.726076, 17.094803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355654, 0.768019, 0.532595,
		0.793122, 0.053455, -0.606712,
		-0.494436, 0.638192, -0.590122,
		16.392054, 17.917534, 16.917767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262644, 17.987192, 17.009079>,  <16.738159, 17.470798, 17.330851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262644, 17.987192, 17.009079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.892178, 18.137939, 17.003574>,  <16.669899, 18.228388, 17.000273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.892178, 18.137939, 17.003574>,  <17.262644, 17.987192, 17.009079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892178, 18.137939, 17.003574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332010, 0.832136, 0.444206,
		0.178858, 0.406839, -0.895819,
		-0.926164, 0.376871, -0.013759,
		16.614328, 18.251001, 16.999447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.320452, 18.706970, 16.929878>,  <17.262644, 17.987192, 17.009079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.320452, 18.706970, 16.929878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.946547, 18.688660, 17.070803>,  <16.722204, 18.677673, 17.155357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.946547, 18.688660, 17.070803>,  <17.320452, 18.706970, 16.929878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946547, 18.688660, 17.070803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140730, 0.862838, 0.485496,
		-0.326213, 0.503404, -0.800106,
		-0.934762, -0.045777, 0.352313,
		16.666119, 18.674927, 17.176497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993862, 19.457399, 16.850117>,  <17.320452, 18.706970, 16.929878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.993862, 19.457399, 16.850117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.833889, 19.225874, 17.134378>,  <16.737906, 19.086960, 17.304935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.833889, 19.225874, 17.134378>,  <16.993862, 19.457399, 16.850117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.833889, 19.225874, 17.134378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035179, 0.765099, 0.642951,
		-0.915870, 0.282137, -0.285625,
		-0.399932, -0.578812, 0.710656,
		16.713909, 19.052231, 17.347576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575148, 19.920385, 17.133232>,  <16.993862, 19.457399, 16.850117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.575148, 19.920385, 17.133232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.601448, 19.620806, 17.396976>,  <16.617228, 19.441059, 17.555223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.601448, 19.620806, 17.396976>,  <16.575148, 19.920385, 17.133232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601448, 19.620806, 17.396976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010796, 0.661285, 0.750057,
		-0.997778, -0.042197, 0.051565,
		0.065749, -0.748947, 0.659359,
		16.621172, 19.396122, 17.594784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.007811, 19.885677, 17.594646>,  <16.575148, 19.920385, 17.133232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.007811, 19.885677, 17.594646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.316107, 19.710495, 17.779753>,  <16.501083, 19.605385, 17.890818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.316107, 19.710495, 17.779753>,  <16.007811, 19.885677, 17.594646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.316107, 19.710495, 17.779753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018171, 0.741121, 0.671125,
		-0.636892, -0.508854, 0.579169,
		0.770739, -0.437958, 0.462768,
		16.547329, 19.579107, 17.918583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.744127, 19.939201, 18.345570>,  <16.007811, 19.885677, 17.594646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.744127, 19.939201, 18.345570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.127613, 19.832506, 18.385002>,  <16.357704, 19.768488, 18.408663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.127613, 19.832506, 18.385002>,  <15.744127, 19.939201, 18.345570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.127613, 19.832506, 18.385002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094517, 0.625843, 0.774201,
		-0.268208, -0.732919, 0.625215,
		0.958713, -0.266740, 0.098582,
		16.415228, 19.752483, 18.414577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.840697, 19.835747, 19.077522>,  <15.744127, 19.939201, 18.345570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.840697, 19.835747, 19.077522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.188070, 19.920540, 18.898239>,  <16.396494, 19.971416, 18.790670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.188070, 19.920540, 18.898239>,  <15.840697, 19.835747, 19.077522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.188070, 19.920540, 18.898239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151144, 0.747775, 0.646519,
		0.472209, -0.629202, 0.617352,
		0.868432, 0.211983, -0.448206,
		16.448601, 19.984135, 18.763777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.376097, 19.705091, 19.499481>,  <15.840697, 19.835747, 19.077522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.376097, 19.705091, 19.499481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.535978, 19.980518, 19.257452>,  <16.631907, 20.145775, 19.112234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.535978, 19.980518, 19.257452>,  <16.376097, 19.705091, 19.499481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535978, 19.980518, 19.257452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344904, 0.498609, 0.795255,
		0.849281, -0.526558, -0.038195,
		0.399703, 0.688568, -0.605071,
		16.655890, 20.187088, 19.075932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.096128, 19.818926, 19.682669>,  <16.376097, 19.705091, 19.499481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.096128, 19.818926, 19.682669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.897041, 20.129091, 19.527229>,  <16.777590, 20.315191, 19.433966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.897041, 20.129091, 19.527229>,  <17.096128, 19.818926, 19.682669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.897041, 20.129091, 19.527229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179282, 0.530335, 0.828615,
		0.848609, 0.342747, -0.402974,
		-0.497716, 0.775416, -0.388598,
		16.747726, 20.361715, 19.410650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.528395, 20.462259, 19.862057>,  <17.096128, 19.818926, 19.682669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.528395, 20.462259, 19.862057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.155199, 20.593740, 19.803431>,  <16.931282, 20.672628, 19.768255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.155199, 20.593740, 19.803431>,  <17.528395, 20.462259, 19.862057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.155199, 20.593740, 19.803431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062430, 0.548882, 0.833565,
		0.354442, 0.768559, -0.532623,
		-0.932991, 0.328702, -0.146566,
		16.875301, 20.692350, 19.759460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548306, 21.215504, 20.012281>,  <17.528395, 20.462259, 19.862057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548306, 21.215504, 20.012281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.165976, 21.098839, 20.026897>,  <16.936579, 21.028839, 20.035667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.165976, 21.098839, 20.026897>,  <17.548306, 21.215504, 20.012281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.165976, 21.098839, 20.026897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183163, 0.688205, 0.702015,
		-0.229900, 0.664309, -0.711224,
		-0.955823, -0.291663, 0.036541,
		16.879229, 21.011339, 20.037859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.125313, 21.858006, 20.083210>,  <17.548306, 21.215504, 20.012281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.125313, 21.858006, 20.083210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.826773, 21.604700, 20.165125>,  <16.647648, 21.452717, 20.214273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.826773, 21.604700, 20.165125>,  <17.125313, 21.858006, 20.083210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.826773, 21.604700, 20.165125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214057, 0.519744, 0.827071,
		-0.630191, 0.573449, -0.523466,
		-0.746351, -0.633264, 0.204787,
		16.602867, 21.414721, 20.226561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.440243, 22.263262, 20.138107>,  <17.125313, 21.858006, 20.083210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.440243, 22.263262, 20.138107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.418461, 21.929916, 20.358122>,  <16.405392, 21.729910, 20.490131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.418461, 21.929916, 20.358122>,  <16.440243, 22.263262, 20.138107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.418461, 21.929916, 20.358122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224293, 0.546985, 0.806536,
		-0.972999, -0.079450, -0.216703,
		-0.054454, -0.833364, 0.550036,
		16.402124, 21.679907, 20.523132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<15.580488, 22.151016, 20.447527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.835531, 21.937931, 20.670120>,  <15.988557, 21.810080, 20.803677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.835531, 21.937931, 20.670120>,  <15.580488, 22.151016, 20.447527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835531, 21.937931, 20.670120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470403, 0.302824, 0.828866,
		-0.610063, -0.790264, -0.057506,
		0.637609, -0.532711, 0.556484,
		16.026814, 21.778118, 20.837065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170770, 21.757645, 20.961586>,  <15.580488, 22.151016, 20.447527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.170770, 21.757645, 20.961586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.540357, 21.820549, 21.101044>,  <15.762109, 21.858292, 21.184719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.540357, 21.820549, 21.101044>,  <15.170770, 21.757645, 20.961586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.540357, 21.820549, 21.101044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382315, 0.353694, 0.853660,
		0.010934, -0.922046, 0.386925,
		0.923967, 0.157261, 0.348645,
		15.817547, 21.867727, 21.205637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.153832, 21.445395, 21.658428>,  <15.170770, 21.757645, 20.961586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.153832, 21.445395, 21.658428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.486712, 21.667183, 21.657299>,  <15.686439, 21.800257, 21.656622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.486712, 21.667183, 21.657299>,  <15.153832, 21.445395, 21.658428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486712, 21.667183, 21.657299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202865, 0.309204, 0.929107,
		0.516036, -0.772628, 0.369802,
		0.832197, 0.554472, -0.002821,
		15.736371, 21.833525, 21.656452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412096, 21.290258, 22.313107>,  <15.153832, 21.445395, 21.658428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412096, 21.290258, 22.313107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.614557, 21.622423, 22.219959>,  <15.736033, 21.821722, 22.164070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.614557, 21.622423, 22.219959>,  <15.412096, 21.290258, 22.313107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.614557, 21.622423, 22.219959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002986, 0.271696, 0.962379,
		0.862439, -0.486414, 0.139998,
		0.506152, 0.830411, -0.232869,
		15.766403, 21.871546, 22.150099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939424, 21.293745, 22.852472>,  <15.412096, 21.290258, 22.313107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939424, 21.293745, 22.852472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.912077, 21.663994, 22.703585>,  <15.895669, 21.886143, 22.614252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.912077, 21.663994, 22.703585>,  <15.939424, 21.293745, 22.852472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.912077, 21.663994, 22.703585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044057, 0.375529, 0.925763,
		0.996687, 0.046893, -0.066455,
		-0.068367, 0.925624, -0.372219,
		15.891567, 21.941681, 22.591919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.323515, 21.734165, 23.334730>,  <15.939424, 21.293745, 22.852472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.323515, 21.734165, 23.334730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.098948, 21.982063, 23.115377>,  <15.964207, 22.130802, 22.983767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.098948, 21.982063, 23.115377>,  <16.323515, 21.734165, 23.334730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098948, 21.982063, 23.115377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292510, 0.471273, 0.832069,
		0.774110, 0.627547, -0.083300,
		-0.561419, 0.619747, -0.548381,
		15.930522, 22.167988, 22.950863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.493999, 22.458315, 23.440863>,  <16.323515, 21.734165, 23.334730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.493999, 22.458315, 23.440863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.123783, 22.462793, 23.289473>,  <15.901652, 22.465481, 23.198639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.123783, 22.462793, 23.289473>,  <16.493999, 22.458315, 23.440863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123783, 22.462793, 23.289473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301172, 0.584052, 0.753776,
		0.229489, 0.811639, -0.537193,
		-0.925543, 0.011196, -0.378476,
		15.846120, 22.466152, 23.175930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240536, 23.126556, 23.349030>,  <16.493999, 22.458315, 23.440863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.240536, 23.126556, 23.349030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.896838, 22.925327, 23.386158>,  <15.690619, 22.804590, 23.408436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.896838, 22.925327, 23.386158>,  <16.240536, 23.126556, 23.349030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.896838, 22.925327, 23.386158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223708, 0.532690, 0.816208,
		-0.460056, 0.680559, -0.570253,
		-0.859246, -0.503072, 0.092821,
		15.639065, 22.774406, 23.414003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913932, 23.587484, 23.650099>,  <16.240536, 23.126556, 23.349030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.913932, 23.587484, 23.650099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.655849, 23.287477, 23.708321>,  <15.501000, 23.107473, 23.743254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.655849, 23.287477, 23.708321>,  <15.913932, 23.587484, 23.650099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.655849, 23.287477, 23.708321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156852, 0.316493, 0.935537,
		-0.747734, 0.580783, -0.321845,
		-0.645206, -0.750015, 0.145556,
		15.462288, 23.062473, 23.751987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301542, 23.909515, 23.929899>,  <15.913932, 23.587484, 23.650099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301542, 23.909515, 23.929899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.302157, 23.523426, 24.034466>,  <15.302526, 23.291773, 24.097206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.302157, 23.523426, 24.034466>,  <15.301542, 23.909515, 23.929899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.302157, 23.523426, 24.034466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266831, 0.251542, 0.930337,
		-0.963742, -0.071184, -0.257165,
		0.001537, -0.965225, 0.261416,
		15.302619, 23.233858, 24.112890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.898992, 23.976894, 24.332443>,  <15.301542, 23.909515, 23.929899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.898992, 23.976894, 24.332443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.062230, 23.618151, 24.400681>,  <15.160173, 23.402905, 24.441624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.062230, 23.618151, 24.400681>,  <14.898992, 23.976894, 24.332443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.062230, 23.618151, 24.400681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149341, 0.118763, 0.981627,
		-0.900641, -0.426075, -0.085471,
		0.408096, -0.896858, 0.170593,
		15.184659, 23.349092, 24.451859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.438806, 23.677313, 24.776199>,  <14.898992, 23.976894, 24.332443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.438806, 23.677313, 24.776199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.798560, 23.510836, 24.829699>,  <15.014413, 23.410950, 24.861797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.798560, 23.510836, 24.829699>,  <14.438806, 23.677313, 24.776199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.798560, 23.510836, 24.829699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086563, 0.130343, 0.987683,
		-0.428501, -0.899885, 0.081202,
		0.899385, -0.416194, 0.133749,
		15.068376, 23.385977, 24.869823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.378277, 23.228411, 25.303768>,  <14.438806, 23.677313, 24.776199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.378277, 23.228411, 25.303768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.764711, 23.331676, 25.305994>,  <14.996572, 23.393635, 25.307329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.764711, 23.331676, 25.305994>,  <14.378277, 23.228411, 25.303768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.764711, 23.331676, 25.305994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043143, 0.140117, 0.989195,
		0.254596, -0.955886, 0.146503,
		0.966085, 0.258165, 0.005566,
		15.054537, 23.409126, 25.307665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.537432, 23.071964, 25.972876>,  <14.378277, 23.228411, 25.303768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.537432, 23.071964, 25.972876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.865369, 23.272312, 25.861887>,  <15.062131, 23.392521, 25.795294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.865369, 23.272312, 25.861887>,  <14.537432, 23.071964, 25.972876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.865369, 23.272312, 25.861887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209303, 0.188909, 0.959430,
		0.532965, -0.844656, 0.050042,
		0.819842, 0.500868, -0.277471,
		15.111321, 23.422573, 25.778646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.042142, 22.843893, 26.425169>,  <14.537432, 23.071964, 25.972876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.042142, 22.843893, 26.425169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.156359, 23.209997, 26.311491>,  <15.224889, 23.429659, 26.243284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.156359, 23.209997, 26.311491>,  <15.042142, 22.843893, 26.425169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.156359, 23.209997, 26.311491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088193, 0.320377, 0.943176,
		0.954300, -0.244253, 0.172200,
		0.285543, 0.915259, -0.284194,
		15.242022, 23.484575, 26.226233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511229, 23.013931, 26.850760>,  <15.042142, 22.843893, 26.425169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511229, 23.013931, 26.850760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.413784, 23.372080, 26.701649>,  <15.355317, 23.586969, 26.612183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.413784, 23.372080, 26.701649>,  <15.511229, 23.013931, 26.850760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.413784, 23.372080, 26.701649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084997, 0.363167, 0.927839,
		0.966141, 0.257716, -0.012368,
		-0.243611, 0.895372, -0.372776,
		15.340701, 23.640692, 26.589815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980952, 23.582176, 27.162086>,  <15.511229, 23.013931, 26.850760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980952, 23.582176, 27.162086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.630376, 23.748167, 27.064398>,  <15.420030, 23.847761, 27.005785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.630376, 23.748167, 27.064398>,  <15.980952, 23.582176, 27.162086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.630376, 23.748167, 27.064398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049966, 0.426077, 0.903306,
		0.478909, 0.803898, -0.352696,
		-0.876441, 0.414979, -0.244220,
		15.367443, 23.872662, 26.991133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.956075, 24.071642, 27.655464>,  <15.980952, 23.582176, 27.162086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.956075, 24.071642, 27.655464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.597285, 24.114115, 27.483809>,  <15.382011, 24.139599, 27.380816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.597285, 24.114115, 27.483809>,  <15.956075, 24.071642, 27.655464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597285, 24.114115, 27.483809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255034, 0.668623, 0.698499,
		0.361102, 0.735982, -0.572658,
		-0.896974, 0.106182, -0.429141,
		15.328193, 24.145969, 27.355066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825288, 24.829708, 27.595324>,  <15.956075, 24.071642, 27.655464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825288, 24.829708, 27.595324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.496454, 24.604124, 27.626642>,  <15.299154, 24.468775, 27.645433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.496454, 24.604124, 27.626642>,  <15.825288, 24.829708, 27.595324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.496454, 24.604124, 27.626642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254284, 0.486701, 0.835740,
		-0.509430, 0.667138, -0.543514,
		-0.822083, -0.563958, 0.078298,
		15.249829, 24.434937, 27.650131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.273701, 25.309372, 27.827417>,  <15.825288, 24.829708, 27.595324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.273701, 25.309372, 27.827417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.118513, 24.953062, 27.922071>,  <15.025400, 24.739275, 27.978865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.118513, 24.953062, 27.922071>,  <15.273701, 25.309372, 27.827417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.118513, 24.953062, 27.922071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450311, 0.407216, 0.794604,
		-0.804176, 0.201722, -0.559114,
		-0.387970, -0.890777, 0.236636,
		15.002122, 24.685829, 27.993063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.651668, 25.481642, 28.125965>,  <15.273701, 25.309372, 27.827417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.651668, 25.481642, 28.125965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.697420, 25.111423, 28.270346>,  <14.724872, 24.889294, 28.356974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.697420, 25.111423, 28.270346>,  <14.651668, 25.481642, 28.125965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.697420, 25.111423, 28.270346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478682, 0.267027, 0.836397,
		-0.870506, -0.268448, -0.412499,
		0.114381, -0.925544, 0.360950,
		14.731734, 24.833759, 28.378630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.005354, 25.100702, 28.220654>,  <14.651668, 25.481642, 28.125965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.005354, 25.100702, 28.220654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.274533, 24.971266, 28.486715>,  <14.436041, 24.893604, 28.646353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.274533, 24.971266, 28.486715>,  <14.005354, 25.100702, 28.220654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274533, 24.971266, 28.486715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590689, 0.306164, 0.746559,
		-0.445227, -0.895294, 0.014891,
		0.672949, -0.323593, 0.665153,
		14.476418, 24.874187, 28.686260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396954, 25.298529, 28.566978>,  <14.005354, 25.100702, 28.220654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.396954, 25.298529, 28.566978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.631569, 25.235964, 28.884848>,  <13.772338, 25.198425, 29.075569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.631569, 25.235964, 28.884848>,  <13.396954, 25.298529, 28.566978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.631569, 25.235964, 28.884848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364065, -0.927378, 0.086178,
		0.723484, -0.339860, -0.600888,
		0.586538, -0.156414, 0.794674,
		13.807530, 25.189039, 29.123249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.222330, 25.606258, 29.220009>,  <13.396954, 25.298529, 28.566978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.222330, 25.606258, 29.220009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.879975, 25.523932, 29.409786>,  <12.674562, 25.474535, 29.523653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.879975, 25.523932, 29.409786>,  <13.222330, 25.606258, 29.220009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.879975, 25.523932, 29.409786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302429, -0.544995, -0.781996,
		0.419517, -0.812786, 0.404209,
		-0.855887, -0.205816, 0.474444,
		12.623209, 25.462187, 29.552120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.194918, 24.912289, 29.412090>,  <13.222330, 25.606258, 29.220009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.194918, 24.912289, 29.412090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.831800, 25.060682, 29.333830>,  <12.613929, 25.149717, 29.286873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.831800, 25.060682, 29.333830>,  <13.194918, 24.912289, 29.412090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.831800, 25.060682, 29.333830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070584, -0.594967, -0.800644,
		-0.413430, -0.713012, 0.566294,
		-0.907796, 0.370981, -0.195650,
		12.559461, 25.171976, 29.275135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.897968, 24.367935, 29.155016>,  <13.194918, 24.912289, 29.412090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.897968, 24.367935, 29.155016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.623053, 24.635239, 29.041132>,  <12.458103, 24.795622, 28.972801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.623053, 24.635239, 29.041132>,  <12.897968, 24.367935, 29.155016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.623053, 24.635239, 29.041132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216661, -0.562711, -0.797756,
		-0.693319, -0.486604, 0.531531,
		-0.687289, 0.668262, -0.284710,
		12.416865, 24.835716, 28.955719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.306325, 23.934124, 29.090626>,  <12.897968, 24.367935, 29.155016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.306325, 23.934124, 29.090626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.300806, 24.273203, 28.878506>,  <12.297495, 24.476650, 28.751234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.300806, 24.273203, 28.878506>,  <12.306325, 23.934124, 29.090626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.300806, 24.273203, 28.878506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082504, -0.529506, -0.844284,
		-0.996495, 0.032103, 0.077244,
		-0.013797, 0.847699, -0.530299,
		12.296667, 24.527512, 28.719416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.802878, 23.710876, 28.622831>,  <12.306325, 23.934124, 29.090626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.802878, 23.710876, 28.622831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.013911, 24.006802, 28.455818>,  <12.140531, 24.184357, 28.355610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.013911, 24.006802, 28.455818>,  <11.802878, 23.710876, 28.622831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013911, 24.006802, 28.455818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101194, -0.542733, -0.833787,
		-0.843455, 0.397640, -0.361201,
		0.527582, 0.739813, -0.417533,
		12.172186, 24.228746, 28.330559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647094, 23.745264, 27.993034>,  <11.802878, 23.710876, 28.622831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647094, 23.745264, 27.993034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.979938, 23.961117, 27.941824>,  <12.179644, 24.090630, 27.911098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.979938, 23.961117, 27.941824>,  <11.647094, 23.745264, 27.993034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.979938, 23.961117, 27.941824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082172, -0.348249, -0.933793,
		-0.548491, 0.766498, -0.334124,
		0.832109, 0.539633, -0.128027,
		12.229570, 24.123007, 27.903416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.481296, 24.028297, 27.436764>,  <11.647094, 23.745264, 27.993034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.481296, 24.028297, 27.436764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.878945, 24.015066, 27.477991>,  <12.117536, 24.007128, 27.502728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.878945, 24.015066, 27.477991>,  <11.481296, 24.028297, 27.436764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.878945, 24.015066, 27.477991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085616, -0.342335, -0.935669,
		0.066231, 0.938996, -0.337491,
		0.994124, -0.033076, 0.103066,
		12.177183, 24.005144, 27.508911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.698058, 24.234495, 26.872108>,  <11.481296, 24.028297, 27.436764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.698058, 24.234495, 26.872108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.025973, 24.047701, 27.004696>,  <12.222723, 23.935625, 27.084248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.025973, 24.047701, 27.004696>,  <11.698058, 24.234495, 26.872108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.025973, 24.047701, 27.004696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231162, -0.259717, -0.937609,
		0.523937, 0.845264, -0.104964,
		0.819789, -0.466985, 0.331468,
		12.271910, 23.907606, 27.104136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.307384, 24.474615, 26.386724>,  <11.698058, 24.234495, 26.872108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.307384, 24.474615, 26.386724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.356256, 24.109524, 26.542671>,  <12.385579, 23.890469, 26.636240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.356256, 24.109524, 26.542671>,  <12.307384, 24.474615, 26.386724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.356256, 24.109524, 26.542671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289024, -0.343067, -0.893739,
		0.949493, 0.221879, 0.221885,
		0.122181, -0.912729, 0.389868,
		12.392910, 23.835705, 26.659632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.918193, 24.176638, 26.061222>,  <12.307384, 24.474615, 26.386724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.918193, 24.176638, 26.061222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.733905, 23.855347, 26.212250>,  <12.623332, 23.662571, 26.302866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.733905, 23.855347, 26.212250>,  <12.918193, 24.176638, 26.061222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.733905, 23.855347, 26.212250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173127, -0.498570, -0.849385,
		0.870496, -0.325961, 0.368762,
		-0.460720, -0.803229, 0.377571,
		12.595689, 23.614378, 26.325521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.407879, 23.624386, 26.069521>,  <12.918193, 24.176638, 26.061222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.407879, 23.624386, 26.069521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.045852, 23.454350, 26.074364>,  <12.828635, 23.352327, 26.077269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.045852, 23.454350, 26.074364>,  <13.407879, 23.624386, 26.069521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.045852, 23.454350, 26.074364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212641, -0.477020, -0.852781,
		0.368286, -0.769251, 0.522129,
		-0.905069, -0.425093, 0.012105,
		12.774331, 23.326822, 26.077995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.552836, 22.976460, 25.897535>,  <13.407879, 23.624386, 26.069521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.552836, 22.976460, 25.897535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.162749, 23.033401, 25.829790>,  <12.928697, 23.067566, 25.789143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.162749, 23.033401, 25.829790>,  <13.552836, 22.976460, 25.897535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.162749, 23.033401, 25.829790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061772, -0.559871, -0.826274,
		-0.212446, -0.816260, 0.537203,
		-0.975219, 0.142354, -0.169364,
		12.870184, 23.076107, 25.778980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.382639, 22.347248, 25.563351>,  <13.552836, 22.976460, 25.897535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.382639, 22.347248, 25.563351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.046248, 22.553144, 25.496656>,  <12.844414, 22.676682, 25.456640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.046248, 22.553144, 25.496656>,  <13.382639, 22.347248, 25.563351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046248, 22.553144, 25.496656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077672, -0.419817, -0.904279,
		-0.535470, -0.747526, 0.393037,
		-0.840975, 0.514742, -0.166737,
		12.793956, 22.707567, 25.446636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.885360, 21.864601, 25.346420>,  <13.382639, 22.347248, 25.563351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.885360, 21.864601, 25.346420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.794941, 22.221352, 25.189722>,  <12.740689, 22.435402, 25.095703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.794941, 22.221352, 25.189722>,  <12.885360, 21.864601, 25.346420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794941, 22.221352, 25.189722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045842, -0.391968, -0.918836,
		-0.973037, -0.225659, 0.047718,
		-0.226047, 0.891874, -0.391744,
		12.727127, 22.488914, 25.072199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.517299, 21.693413, 24.700943>,  <12.885360, 21.864601, 25.346420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.517299, 21.693413, 24.700943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.614339, 22.080276, 24.670620>,  <12.672564, 22.312395, 24.652426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.614339, 22.080276, 24.670620>,  <12.517299, 21.693413, 24.700943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.614339, 22.080276, 24.670620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033596, -0.086472, -0.995688,
		-0.969544, 0.239009, -0.053471,
		0.242602, 0.967160, -0.075808,
		12.687119, 22.370424, 24.647877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.042619, 22.048447, 24.230522>,  <12.517299, 21.693413, 24.700943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.042619, 22.048447, 24.230522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.371063, 22.276613, 24.238569>,  <12.568130, 22.413513, 24.243399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.371063, 22.276613, 24.238569>,  <12.042619, 22.048447, 24.230522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.371063, 22.276613, 24.238569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051946, -0.039579, -0.997865,
		-0.568400, 0.820403, -0.062129,
		0.821111, 0.570414, 0.020120,
		12.617396, 22.447737, 24.244606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.041088, 22.457045, 23.677029>,  <12.042619, 22.048447, 24.230522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.041088, 22.457045, 23.677029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.432974, 22.476175, 23.754869>,  <12.668105, 22.487654, 23.801575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.432974, 22.476175, 23.754869>,  <12.041088, 22.457045, 23.677029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.432974, 22.476175, 23.754869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191791, 0.057694, -0.979739,
		-0.058086, 0.997188, 0.047351,
		0.979715, 0.047827, 0.194603,
		12.726889, 22.490524, 23.813250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.305675, 22.961304, 23.111263>,  <12.041088, 22.457045, 23.677029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.305675, 22.961304, 23.111263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.604273, 22.742479, 23.262772>,  <12.783432, 22.611185, 23.353676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.604273, 22.742479, 23.262772>,  <12.305675, 22.961304, 23.111263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.604273, 22.742479, 23.262772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364229, -0.140428, -0.920661,
		0.556849, 0.825229, 0.094427,
		0.746496, -0.547062, 0.378769,
		12.828221, 22.578362, 23.376402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.923100, 23.235176, 22.823669>,  <12.305675, 22.961304, 23.111263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.923100, 23.235176, 22.823669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.990118, 22.862156, 22.951595>,  <13.030329, 22.638344, 23.028351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.990118, 22.862156, 22.951595>,  <12.923100, 23.235176, 22.823669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.990118, 22.862156, 22.951595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230530, -0.278348, -0.932405,
		0.958533, 0.229947, 0.168344,
		0.167545, -0.932549, 0.319815,
		13.040381, 22.582392, 23.047541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.525074, 23.041405, 22.584719>,  <12.923100, 23.235176, 22.823669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.525074, 23.041405, 22.584719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.303496, 22.715216, 22.651829>,  <13.170549, 22.519503, 22.692095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.303496, 22.715216, 22.651829>,  <13.525074, 23.041405, 22.584719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.303496, 22.715216, 22.651829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140138, -0.289975, -0.946719,
		0.820675, -0.500917, 0.274909,
		-0.553944, -0.815473, 0.167778,
		13.137313, 22.470573, 22.702162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.852269, 22.483768, 22.333160>,  <13.525074, 23.041405, 22.584719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.852269, 22.483768, 22.333160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.488239, 22.323984, 22.377329>,  <13.269821, 22.228113, 22.403830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.488239, 22.323984, 22.377329>,  <13.852269, 22.483768, 22.333160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.488239, 22.323984, 22.377329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223764, -0.697869, -0.680374,
		0.348844, -0.594483, 0.724498,
		-0.910076, -0.399461, 0.110423,
		13.215217, 22.204145, 22.410456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.545130, 14.657135, 6.607149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.332335, 14.961921, 6.459420>,  <20.204657, 15.144792, 6.370783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.332335, 14.961921, 6.459420>,  <20.545130, 14.657135, 6.607149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.332335, 14.961921, 6.459420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843471, -0.438514, 0.310261,
		0.074455, 0.476567, 0.875979,
		-0.531990, 0.761963, -0.369321,
		20.172737, 15.190510, 6.348624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.065905, 15.065073, 7.128253>,  <20.545130, 14.657135, 6.607149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.065905, 15.065073, 7.128253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.911301, 15.117126, 6.763030>,  <19.818539, 15.148357, 6.543896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.911301, 15.117126, 6.763030>,  <20.065905, 15.065073, 7.128253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.911301, 15.117126, 6.763030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904630, -0.246270, 0.347845,
		-0.179593, 0.960425, 0.212907,
		-0.386512, 0.130131, -0.913058,
		19.795347, 15.156165, 6.489113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.457516, 15.483215, 7.215676>,  <20.065905, 15.065073, 7.128253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.457516, 15.483215, 7.215676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.418997, 15.287433, 6.868998>,  <19.395885, 15.169963, 6.660991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.418997, 15.287433, 6.868998>,  <19.457516, 15.483215, 7.215676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.418997, 15.287433, 6.868998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936400, -0.250667, 0.245603,
		-0.337464, 0.835224, -0.434188,
		-0.096297, -0.489456, -0.866695,
		19.390108, 15.140596, 6.608990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.850912, 15.551670, 6.788832>,  <19.457516, 15.483215, 7.215676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.850912, 15.551670, 6.788832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.976830, 15.174781, 6.743016>,  <19.052380, 14.948647, 6.715527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.976830, 15.174781, 6.743016>,  <18.850912, 15.551670, 6.788832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976830, 15.174781, 6.743016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919891, -0.332595, 0.207801,
		-0.233890, 0.039949, -0.971442,
		0.314796, -0.942223, -0.114540,
		19.071268, 14.892114, 6.708654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.305483, 15.136670, 6.371436>,  <18.850912, 15.551670, 6.788832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.305483, 15.136670, 6.371436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.532867, 14.888257, 6.587277>,  <18.669298, 14.739209, 6.716782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.532867, 14.888257, 6.587277>,  <18.305483, 15.136670, 6.371436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.532867, 14.888257, 6.587277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822660, -0.421771, 0.381235,
		-0.009170, -0.660626, -0.750659,
		0.568460, -0.621033, 0.539603,
		18.703405, 14.701947, 6.749158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.591200, 15.748257, 6.126772>,  <18.305483, 15.136670, 6.371436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.591200, 15.748257, 6.126772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.926376, 15.930758, 6.006980>,  <19.127481, 16.040258, 5.935105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.926376, 15.930758, 6.006980>,  <18.591200, 15.748257, 6.126772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.926376, 15.930758, 6.006980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508162, 0.852401, -0.123217,
		0.199059, 0.255433, 0.946113,
		0.837942, 0.456251, -0.299480,
		19.177759, 16.067633, 5.917136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.774826, 16.265713, 6.620119>,  <18.591200, 15.748257, 6.126772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.774826, 16.265713, 6.620119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.876034, 16.348274, 6.242044>,  <18.936758, 16.397812, 6.015200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.876034, 16.348274, 6.242044>,  <18.774826, 16.265713, 6.620119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.876034, 16.348274, 6.242044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490062, 0.869707, 0.058736,
		0.834158, 0.448338, 0.321205,
		0.253021, 0.206406, -0.945186,
		18.951941, 16.410196, 5.958488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.071619, 16.340807, 6.855855>,  <18.774826, 16.265713, 6.620119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.071619, 16.340807, 6.855855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.801327, 16.634163, 6.885598>,  <17.639151, 16.810177, 6.903443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.801327, 16.634163, 6.885598>,  <18.071619, 16.340807, 6.855855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.801327, 16.634163, 6.885598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309389, 0.373721, -0.874420,
		-0.669078, -0.567868, -0.479438,
		-0.675731, 0.733388, 0.074357,
		17.598608, 16.854179, 6.907905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.328836, 17.024429, 6.895219>,  <18.071619, 16.340807, 6.855855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.328836, 17.024429, 6.895219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.275621, 17.232807, 7.232482>,  <18.243692, 17.357834, 7.434840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.275621, 17.232807, 7.232482>,  <18.328836, 17.024429, 6.895219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.275621, 17.232807, 7.232482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517226, -0.689195, 0.507433,
		0.845445, 0.503612, -0.177757,
		-0.133040, 0.520947, 0.843158,
		18.235710, 17.389091, 7.485430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910995, 17.370428, 7.271092>,  <18.328836, 17.024429, 6.895219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910995, 17.370428, 7.271092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.623268, 17.236366, 7.514486>,  <18.450632, 17.155930, 7.660523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.623268, 17.236366, 7.514486>,  <18.910995, 17.370428, 7.271092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623268, 17.236366, 7.514486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602928, -0.736275, 0.307208,
		0.345050, 0.587853, 0.731689,
		-0.719317, -0.335154, 0.608485,
		18.407473, 17.135820, 7.697032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.286669, 16.790724, 7.591318>,  <18.910995, 17.370428, 7.271092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.286669, 16.790724, 7.591318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.912848, 16.803146, 7.733103>,  <18.688555, 16.810600, 7.818175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.912848, 16.803146, 7.733103>,  <19.286669, 16.790724, 7.591318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.912848, 16.803146, 7.733103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221758, -0.728221, 0.648473,
		0.278268, 0.684638, 0.673674,
		-0.934554, 0.031057, 0.354464,
		18.632481, 16.812464, 7.839443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.240213, 16.943682, 8.332057>,  <19.286669, 16.790724, 7.591318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.240213, 16.943682, 8.332057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.911154, 16.727640, 8.261022>,  <18.713718, 16.598015, 8.218401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.911154, 16.727640, 8.261022>,  <19.240213, 16.943682, 8.332057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.911154, 16.727640, 8.261022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206686, -0.575076, 0.791561,
		-0.529652, 0.614471, 0.584718,
		-0.822648, -0.540104, -0.177587,
		18.664360, 16.565609, 8.207746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061720, 16.763655, 9.076659>,  <19.240213, 16.943682, 8.332057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.061720, 16.763655, 9.076659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.852531, 16.540209, 8.819147>,  <18.727018, 16.406141, 8.664639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.852531, 16.540209, 8.819147>,  <19.061720, 16.763655, 9.076659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.852531, 16.540209, 8.819147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055839, -0.776132, 0.628093,
		-0.850520, 0.292526, 0.437087,
		-0.522971, -0.558613, -0.643781,
		18.695641, 16.372625, 8.626013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.667696, 16.282257, 9.499960>,  <19.061720, 16.763655, 9.076659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.667696, 16.282257, 9.499960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.648798, 16.092945, 9.148102>,  <18.637459, 15.979358, 8.936987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.648798, 16.092945, 9.148102>,  <18.667696, 16.282257, 9.499960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.648798, 16.092945, 9.148102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111335, -0.877636, 0.466219,
		-0.992659, -0.075908, 0.094157,
		-0.047246, -0.473279, -0.879645,
		18.634624, 15.950961, 8.884209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233698, 15.776800, 9.623143>,  <18.667696, 16.282257, 9.499960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.233698, 15.776800, 9.623143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.430405, 15.673983, 9.290375>,  <18.548429, 15.612292, 9.090714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.430405, 15.673983, 9.290375>,  <18.233698, 15.776800, 9.623143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430405, 15.673983, 9.290375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075388, -0.939276, 0.334779,
		-0.867457, -0.227350, -0.442528,
		0.491768, -0.257045, -0.831921,
		18.577934, 15.596869, 9.040798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022099, 15.078192, 9.514782>,  <18.233698, 15.776800, 9.623143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022099, 15.078192, 9.514782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.353874, 15.130888, 9.297646>,  <18.552940, 15.162505, 9.167364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.353874, 15.130888, 9.297646>,  <18.022099, 15.078192, 9.514782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.353874, 15.130888, 9.297646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247858, -0.957686, 0.146300,
		-0.500598, -0.255894, -0.826994,
		0.829438, 0.131740, -0.542841,
		18.602705, 15.170410, 9.134793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.153618, 14.547093, 8.921520>,  <18.022099, 15.078192, 9.514782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.153618, 14.547093, 8.921520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.503740, 14.698302, 9.042144>,  <18.713814, 14.789027, 9.114518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.503740, 14.698302, 9.042144>,  <18.153618, 14.547093, 8.921520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.503740, 14.698302, 9.042144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268839, -0.898768, 0.346325,
		0.401950, -0.222070, -0.888325,
		0.875307, 0.378022, 0.301559,
		18.766333, 14.811709, 9.132611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.767885, 14.059854, 8.848180>,  <18.153618, 14.547093, 8.921520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.767885, 14.059854, 8.848180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.933355, 14.332371, 9.089746>,  <19.032637, 14.495881, 9.234685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.933355, 14.332371, 9.089746>,  <18.767885, 14.059854, 8.848180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933355, 14.332371, 9.089746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387300, -0.732007, 0.560504,
		0.823937, 0.002029, -0.566678,
		0.413675, 0.681294, 0.603914,
		19.057457, 14.536758, 9.270920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.421885, 13.862700, 8.918209>,  <18.767885, 14.059854, 8.848180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.421885, 13.862700, 8.918209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.387497, 14.123474, 9.219563>,  <19.366865, 14.279939, 9.400374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.387497, 14.123474, 9.219563>,  <19.421885, 13.862700, 8.918209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.387497, 14.123474, 9.219563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493528, -0.629020, 0.600636,
		0.865471, 0.423452, -0.267673,
		-0.085969, 0.651937, 0.753384,
		19.361706, 14.319056, 9.445578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.041901, 13.919791, 9.216056>,  <19.421885, 13.862700, 8.918209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.041901, 13.919791, 9.216056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.788475, 14.022006, 9.508164>,  <19.636419, 14.083335, 9.683430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.788475, 14.022006, 9.508164>,  <20.041901, 13.919791, 9.216056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.788475, 14.022006, 9.508164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359024, -0.739000, 0.570071,
		0.685344, 0.623362, 0.376461,
		-0.633565, 0.255536, 0.730271,
		19.598406, 14.098667, 9.727245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.440853, 13.815326, 9.899938>,  <20.041901, 13.919791, 9.216056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.440853, 13.815326, 9.899938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.060638, 13.843184, 10.021016>,  <19.832510, 13.859900, 10.093663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.060638, 13.843184, 10.021016>,  <20.440853, 13.815326, 9.899938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.060638, 13.843184, 10.021016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176850, -0.679789, 0.711766,
		0.255343, 0.730093, 0.633849,
		-0.950539, 0.069648, 0.302696,
		19.775476, 13.864079, 10.111825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370907, 13.942938, 10.675254>,  <20.440853, 13.815326, 9.899938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370907, 13.942938, 10.675254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.010672, 13.794310, 10.585032>,  <19.794531, 13.705132, 10.530900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.010672, 13.794310, 10.585032>,  <20.370907, 13.942938, 10.675254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.010672, 13.794310, 10.585032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080216, -0.652064, 0.753908,
		-0.427206, 0.660869, 0.617047,
		-0.900589, -0.371571, -0.225554,
		19.740496, 13.682838, 10.517366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859615, 14.041391, 11.223435>,  <20.370907, 13.942938, 10.675254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859615, 14.041391, 11.223435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.750826, 13.734181, 10.991515>,  <19.685553, 13.549855, 10.852363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.750826, 13.734181, 10.991515>,  <19.859615, 14.041391, 11.223435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750826, 13.734181, 10.991515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040834, -0.611181, 0.790437,
		-0.961438, 0.191301, 0.197586,
		-0.271972, -0.768024, -0.579801,
		19.669235, 13.503774, 10.817575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.475239, 13.587556, 11.675009>,  <19.859615, 14.041391, 11.223435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.475239, 13.587556, 11.675009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.542915, 13.361065, 11.352329>,  <19.583521, 13.225170, 11.158722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.542915, 13.361065, 11.352329>,  <19.475239, 13.587556, 11.675009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.542915, 13.361065, 11.352329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174748, -0.788296, 0.589960,
		-0.969968, -0.240785, -0.034425,
		0.169190, -0.566227, -0.806699,
		19.593672, 13.191197, 11.110320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.133316, 12.938132, 11.786971>,  <19.475239, 13.587556, 11.675009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.133316, 12.938132, 11.786971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.397608, 12.872455, 11.493993>,  <19.556183, 12.833048, 11.318206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.397608, 12.872455, 11.493993>,  <19.133316, 12.938132, 11.786971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.397608, 12.872455, 11.493993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312791, -0.826799, 0.467510,
		-0.682347, -0.538000, -0.494933,
		0.660730, -0.164193, -0.732445,
		19.595827, 12.823196, 11.274260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184134, 12.162364, 11.603463>,  <19.133316, 12.938132, 11.786971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184134, 12.162364, 11.603463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.520933, 12.332486, 11.470708>,  <19.723013, 12.434560, 11.391055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.520933, 12.332486, 11.470708>,  <19.184134, 12.162364, 11.603463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.520933, 12.332486, 11.470708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532049, -0.756403, 0.380498,
		-0.089212, -0.496960, -0.863176,
		0.842001, 0.425306, -0.331887,
		19.773533, 12.460078, 11.371141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595543, 11.455295, 11.372426>,  <19.184134, 12.162364, 11.603463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595543, 11.455295, 11.372426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.823908, 11.778523, 11.430496>,  <19.960928, 11.972461, 11.465338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.823908, 11.778523, 11.430496>,  <19.595543, 11.455295, 11.372426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.823908, 11.778523, 11.430496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682982, -0.565578, 0.462230,
		0.455624, -0.164742, -0.874795,
		0.570914, 0.808073, 0.145175,
		19.995182, 12.020946, 11.474049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.267408, 11.389466, 11.115736>,  <19.595543, 11.455295, 11.372426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.267408, 11.389466, 11.115736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.322283, 11.652051, 11.412448>,  <20.355207, 11.809602, 11.590475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.322283, 11.652051, 11.412448>,  <20.267408, 11.389466, 11.115736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.322283, 11.652051, 11.412448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758144, -0.551536, 0.347889,
		0.637494, 0.514651, -0.573355,
		0.137185, 0.656463, 0.741780,
		20.363438, 11.848989, 11.634982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.885508, 11.215516, 11.300821>,  <20.267408, 11.389466, 11.115736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.885508, 11.215516, 11.300821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.819149, 11.488411, 11.585646>,  <20.779333, 11.652147, 11.756540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.819149, 11.488411, 11.585646>,  <20.885508, 11.215516, 11.300821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.819149, 11.488411, 11.585646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739982, -0.391170, 0.547186,
		0.651847, 0.617689, -0.439949,
		-0.165896, 0.682236, 0.712062,
		20.769381, 11.693082, 11.799264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.545046, 11.409603, 11.452995>,  <20.885508, 11.215516, 11.300821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.545046, 11.409603, 11.452995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.309013, 11.484580, 11.767109>,  <21.167395, 11.529566, 11.955577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.309013, 11.484580, 11.767109>,  <21.545046, 11.409603, 11.452995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.309013, 11.484580, 11.767109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665766, -0.437232, 0.604635,
		0.456686, 0.879599, 0.133209,
		-0.590079, 0.187442, 0.785285,
		21.131990, 11.540812, 12.002694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.859657, 11.767030, 11.974900>,  <21.545046, 11.409603, 11.452995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.859657, 11.767030, 11.974900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.571024, 11.523430, 12.106617>,  <21.397844, 11.377270, 12.185647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.571024, 11.523430, 12.106617>,  <21.859657, 11.767030, 11.974900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.571024, 11.523430, 12.106617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672613, -0.503974, 0.541850,
		-0.164032, 0.612477, 0.773282,
		-0.721585, -0.609001, 0.329292,
		21.354549, 11.340730, 12.205404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.672304, 11.850828, 12.676783>,  <21.859657, 11.767030, 11.974900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.672304, 11.850828, 12.676783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.610746, 11.460962, 12.611857>,  <21.573812, 11.227043, 12.572903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.610746, 11.460962, 12.611857>,  <21.672304, 11.850828, 12.676783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610746, 11.460962, 12.611857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632352, -0.223373, 0.741778,
		-0.759242, 0.011515, 0.650707,
		-0.153892, -0.974665, -0.162312,
		21.564579, 11.168563, 12.563164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.743113, 12.686017, 12.759254>,  <21.672304, 11.850828, 12.676783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.743113, 12.686017, 12.759254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.491251, 12.694721, 12.448627>,  <21.340134, 12.699944, 12.262250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.491251, 12.694721, 12.448627>,  <21.743113, 12.686017, 12.759254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.491251, 12.694721, 12.448627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724583, -0.344090, -0.597145,
		-0.280202, -0.938685, 0.200893,
		-0.629655, 0.021757, -0.776569,
		21.302355, 12.701249, 12.215655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.210890, 13.243973, 12.375005>,  <21.743113, 12.686017, 12.759254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.210890, 13.243973, 12.375005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.336597, 12.976593, 12.105365>,  <22.412022, 12.816165, 11.943581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.336597, 12.976593, 12.105365>,  <22.210890, 13.243973, 12.375005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.336597, 12.976593, 12.105365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923096, -0.049375, -0.381388,
		0.221655, 0.742117, -0.632559,
		0.314267, -0.668449, -0.674101,
		22.430878, 12.776058, 11.903134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.906940, 13.645803, 11.745943>,  <22.210890, 13.243973, 12.375005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.906940, 13.645803, 11.745943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.935814, 13.246854, 11.743551>,  <21.953138, 13.007484, 11.742116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.935814, 13.246854, 11.743551>,  <21.906940, 13.645803, 11.745943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.935814, 13.246854, 11.743551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986085, -0.070466, -0.150567,
		0.149750, 0.016766, -0.988582,
		0.072186, -0.997373, -0.005980,
		21.957470, 12.947641, 11.741757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.415716, 13.952526, 12.148730>,  <21.906940, 13.645803, 11.745943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.415716, 13.952526, 12.148730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.752262, 13.973419, 12.363905>,  <22.954189, 13.985955, 12.493010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.752262, 13.973419, 12.363905>,  <22.415716, 13.952526, 12.148730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.752262, 13.973419, 12.363905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187539, 0.905261, -0.381224,
		-0.506885, 0.421633, 0.751860,
		0.841366, 0.052234, 0.537936,
		23.004671, 13.989089, 12.525286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.520247, 14.516253, 12.665085>,  <22.415716, 13.952526, 12.148730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.520247, 14.516253, 12.665085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.861937, 14.424651, 12.478385>,  <23.066950, 14.369690, 12.366365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.861937, 14.424651, 12.478385>,  <22.520247, 14.516253, 12.665085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.861937, 14.424651, 12.478385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065382, 0.937955, -0.340538,
		0.515776, 0.260379, 0.816198,
		0.854225, -0.229006, -0.466750,
		23.118204, 14.355949, 12.338360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.042450, 15.071288, 12.755414>,  <22.520247, 14.516253, 12.665085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.042450, 15.071288, 12.755414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.160229, 14.865830, 12.433055>,  <23.230896, 14.742556, 12.239639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.160229, 14.865830, 12.433055>,  <23.042450, 15.071288, 12.755414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.160229, 14.865830, 12.433055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102947, 0.855422, -0.507597,
		0.950107, 0.066496, 0.304755,
		0.294447, -0.513645, -0.805897,
		23.248564, 14.711737, 12.191286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.770815, 15.064993, 13.483603>,  <23.042450, 15.071288, 12.755414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.770815, 15.064993, 13.483603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.966002, 15.313737, 13.728610>,  <23.083113, 15.462983, 13.875614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.966002, 15.313737, 13.728610>,  <22.770815, 15.064993, 13.483603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.966002, 15.313737, 13.728610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869771, 0.405419, 0.281307,
		-0.073393, -0.670020, 0.738706,
		0.487967, 0.621859, 0.612519,
		23.112392, 15.500295, 13.912366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.572996, 15.004604, 14.225140>,  <22.770815, 15.064993, 13.483603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.572996, 15.004604, 14.225140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.693052, 15.380243, 14.158190>,  <22.765085, 15.605626, 14.118020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.693052, 15.380243, 14.158190>,  <22.572996, 15.004604, 14.225140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.693052, 15.380243, 14.158190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917845, 0.332097, 0.217423,
		0.259765, 0.088366, 0.961620,
		0.300138, 0.939097, -0.167373,
		22.783094, 15.661972, 14.107978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185009, 15.319039, 14.598234>,  <22.572996, 15.004604, 14.225140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185009, 15.319039, 14.598234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.332905, 15.601970, 14.357242>,  <22.421642, 15.771728, 14.212646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.332905, 15.601970, 14.357242>,  <22.185009, 15.319039, 14.598234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.332905, 15.601970, 14.357242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833004, 0.539586, 0.122275,
		0.411579, 0.456660, 0.788710,
		0.369739, 0.707325, -0.602482,
		22.443827, 15.814167, 14.176497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.952486, 15.966592, 14.859865>,  <22.185009, 15.319039, 14.598234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.952486, 15.966592, 14.859865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.062521, 16.043083, 14.482982>,  <22.128542, 16.088978, 14.256851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.062521, 16.043083, 14.482982>,  <21.952486, 15.966592, 14.859865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.062521, 16.043083, 14.482982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829652, 0.542417, -0.132139,
		0.485801, 0.818056, 0.307865,
		0.275088, 0.191227, -0.942209,
		22.145048, 16.100451, 14.200319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741203, 16.717136, 14.718874>,  <21.952486, 15.966592, 14.859865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741203, 16.717136, 14.718874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.802923, 16.537804, 14.366694>,  <21.839954, 16.430204, 14.155387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.802923, 16.537804, 14.366694>,  <21.741203, 16.717136, 14.718874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.802923, 16.537804, 14.366694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764821, 0.509946, -0.393704,
		0.625492, 0.734134, -0.264211,
		0.154298, -0.448333, -0.880448,
		21.849213, 16.403303, 14.102560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.742662, 17.300093, 14.226684>,  <21.741203, 16.717136, 14.718874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.742662, 17.300093, 14.226684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.646954, 16.947428, 14.063994>,  <21.589527, 16.735828, 13.966381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.646954, 16.947428, 14.063994>,  <21.742662, 17.300093, 14.226684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.646954, 16.947428, 14.063994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851430, 0.391872, -0.348573,
		0.466706, 0.262892, -0.844437,
		-0.239274, -0.881660, -0.406723,
		21.575171, 16.682930, 13.941978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.380898, 17.510502, 13.674316>,  <21.742662, 17.300093, 14.226684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.380898, 17.510502, 13.674316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.282251, 17.123854, 13.702091>,  <21.223063, 16.891865, 13.718756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.282251, 17.123854, 13.702091>,  <21.380898, 17.510502, 13.674316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.282251, 17.123854, 13.702091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895889, 0.200075, -0.396678,
		0.369545, -0.160035, -0.915328,
		-0.246617, -0.966622, 0.069437,
		21.208265, 16.833866, 13.722922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127541, 17.320612, 12.971976>,  <21.380898, 17.510502, 13.674316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127541, 17.320612, 12.971976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.993168, 17.065941, 13.249621>,  <20.912544, 16.913139, 13.416208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.993168, 17.065941, 13.249621>,  <21.127541, 17.320612, 12.971976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.993168, 17.065941, 13.249621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941521, 0.247497, -0.228656,
		-0.026211, -0.730335, -0.682586,
		-0.335933, -0.636676, 0.694113,
		20.892387, 16.874939, 13.457855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.467915, 17.065039, 12.693691>,  <21.127541, 17.320612, 12.971976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.467915, 17.065039, 12.693691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.456844, 16.956497, 13.078524>,  <20.450201, 16.891373, 13.309423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.456844, 16.956497, 13.078524>,  <20.467915, 17.065039, 12.693691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.456844, 16.956497, 13.078524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999134, 0.037407, -0.018193,
		-0.031052, -0.961752, -0.272156,
		-0.027678, -0.271356, 0.962081,
		20.448542, 16.875090, 13.367148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.006575, 16.415541, 12.743466>,  <20.467915, 17.065039, 12.693691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.006575, 16.415541, 12.743466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.993372, 16.527000, 13.127397>,  <19.985451, 16.593876, 13.357755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.993372, 16.527000, 13.127397>,  <20.006575, 16.415541, 12.743466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.993372, 16.527000, 13.127397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982684, 0.166144, -0.082024,
		-0.182326, -0.945912, 0.268342,
		-0.033004, 0.278651, 0.959825,
		19.983471, 16.610596, 13.415344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.412518, 16.085287, 12.989912>,  <20.006575, 16.415541, 12.743466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.412518, 16.085287, 12.989912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.492519, 16.388536, 13.238186>,  <19.540520, 16.570486, 13.387150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.492519, 16.388536, 13.238186>,  <19.412518, 16.085287, 12.989912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.492519, 16.388536, 13.238186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971560, 0.235412, 0.025525,
		-0.126766, -0.608137, 0.783645,
		0.200002, 0.758123, 0.620684,
		19.552521, 16.615973, 13.424391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.866314, 16.043980, 13.551463>,  <19.412518, 16.085287, 12.989912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.866314, 16.043980, 13.551463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.002228, 16.415983, 13.607502>,  <19.083776, 16.639185, 13.641125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.002228, 16.415983, 13.607502>,  <18.866314, 16.043980, 13.551463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.002228, 16.415983, 13.607502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940277, 0.339177, 0.028953,
		-0.020591, -0.141568, 0.989714,
		0.339787, 0.930009, 0.140097,
		19.104164, 16.694986, 13.649531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481634, 16.228922, 14.041133>,  <18.866314, 16.043980, 13.551463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481634, 16.228922, 14.041133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.600317, 16.551170, 13.836021>,  <18.671528, 16.744518, 13.712955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.600317, 16.551170, 13.836021>,  <18.481634, 16.228922, 14.041133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.600317, 16.551170, 13.836021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925058, 0.375801, 0.055151,
		0.237133, 0.457987, 0.856747,
		0.296708, 0.805619, -0.512779,
		18.689329, 16.792856, 13.682188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.385490, 16.901499, 14.456877>,  <18.481634, 16.228922, 14.041133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.385490, 16.901499, 14.456877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.388636, 16.965813, 14.062094>,  <18.390522, 17.004400, 13.825224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.388636, 16.965813, 14.062094>,  <18.385490, 16.901499, 14.456877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.388636, 16.965813, 14.062094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878709, 0.472208, 0.069927,
		0.477293, 0.866699, 0.144994,
		0.007862, 0.160784, -0.986959,
		18.390995, 17.014048, 13.766006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.631342, 20.150156, 18.409193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.258335, 20.057232, 18.519785>,  <17.034531, 20.001476, 18.586140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.258335, 20.057232, 18.519785>,  <17.631342, 20.150156, 18.409193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.258335, 20.057232, 18.519785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087067, -0.887659, -0.452195,
		0.350469, -0.397608, 0.847986,
		-0.932518, -0.232312, 0.276478,
		16.978580, 19.987537, 18.602728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.646879, 19.460634, 18.500681>,  <17.631342, 20.150156, 18.409193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.646879, 19.460634, 18.500681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256498, 19.547400, 18.492052>,  <17.022270, 19.599459, 18.486876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256498, 19.547400, 18.492052>,  <17.646879, 19.460634, 18.500681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.256498, 19.547400, 18.492052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187214, -0.884778, -0.426754,
		-0.111654, -0.412454, 0.904110,
		-0.975953, 0.216911, -0.021571,
		16.963713, 19.612473, 18.485580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312195, 18.797068, 18.579733>,  <17.646879, 19.460634, 18.500681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.312195, 18.797068, 18.579733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058458, 19.048033, 18.399080>,  <16.906218, 19.198612, 18.290689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058458, 19.048033, 18.399080>,  <17.312195, 18.797068, 18.579733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058458, 19.048033, 18.399080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369964, -0.759352, -0.535268,
		-0.678777, -0.172457, 0.713808,
		-0.634342, 0.627410, -0.451628,
		16.868156, 19.236256, 18.263592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645041, 18.500795, 18.540924>,  <17.312195, 18.797068, 18.579733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.645041, 18.500795, 18.540924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.654802, 18.760466, 18.236824>,  <16.660660, 18.916267, 18.054365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.654802, 18.760466, 18.236824>,  <16.645041, 18.500795, 18.540924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.654802, 18.760466, 18.236824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437625, -0.676800, -0.591968,
		-0.898826, 0.347151, 0.267578,
		0.024405, 0.649175, -0.760248,
		16.662125, 18.955217, 18.008749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914876, 18.423971, 18.230284>,  <16.645041, 18.500795, 18.540924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.914876, 18.423971, 18.230284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171124, 18.600174, 17.978708>,  <16.324871, 18.705896, 17.827763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171124, 18.600174, 17.978708>,  <15.914876, 18.423971, 18.230284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.171124, 18.600174, 17.978708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316714, -0.594573, -0.739037,
		-0.699500, 0.672633, -0.241379,
		0.640618, 0.440508, -0.628937,
		16.363308, 18.732327, 17.790028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.509502, 18.754292, 17.645269>,  <15.914876, 18.423971, 18.230284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.509502, 18.754292, 17.645269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874997, 18.705242, 17.490326>,  <16.094294, 18.675814, 17.397360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874997, 18.705242, 17.490326>,  <15.509502, 18.754292, 17.645269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874997, 18.705242, 17.490326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404643, -0.360778, -0.840300,
		-0.036711, 0.924555, -0.379275,
		0.913738, -0.122622, -0.387359,
		16.149118, 18.668455, 17.374119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.385204, 18.809464, 16.938721>,  <15.509502, 18.754292, 17.645269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.385204, 18.809464, 16.938721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748064, 18.641785, 16.953428>,  <15.965780, 18.541178, 16.962254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748064, 18.641785, 16.953428>,  <15.385204, 18.809464, 16.938721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.748064, 18.641785, 16.953428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225904, -0.558844, -0.797910,
		0.355031, 0.715518, -0.601654,
		0.907150, -0.419199, 0.036769,
		16.020208, 18.516026, 16.964458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577708, 18.762991, 16.298309>,  <15.385204, 18.809464, 16.938721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577708, 18.762991, 16.298309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837267, 18.504456, 16.458899>,  <15.993002, 18.349335, 16.555252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837267, 18.504456, 16.458899>,  <15.577708, 18.762991, 16.298309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.837267, 18.504456, 16.458899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229179, -0.669168, -0.706888,
		0.725540, 0.366690, -0.582349,
		0.648898, -0.646338, 0.401471,
		16.031937, 18.310555, 16.579340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.072334, 18.468309, 15.778396>,  <15.577708, 18.762991, 16.298309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.072334, 18.468309, 15.778396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.118744, 18.208721, 16.079161>,  <16.146589, 18.052967, 16.259621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.118744, 18.208721, 16.079161>,  <16.072334, 18.468309, 15.778396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118744, 18.208721, 16.079161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110983, -0.760756, -0.639478,
		0.987026, -0.009253, -0.160292,
		0.116025, -0.648971, 0.751914,
		16.153551, 18.014030, 16.304735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496309, 17.997774, 15.561088>,  <16.072334, 18.468309, 15.778396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.496309, 17.997774, 15.561088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280935, 17.834333, 15.855879>,  <16.151711, 17.736269, 16.032753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280935, 17.834333, 15.855879>,  <16.496309, 17.997774, 15.561088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.280935, 17.834333, 15.855879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151318, -0.813478, -0.561567,
		0.828970, -0.413884, 0.376175,
		-0.538433, -0.408600, 0.736977,
		16.119406, 17.711754, 16.076971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.746941, 17.256634, 15.667130>,  <16.496309, 17.997774, 15.561088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.746941, 17.256634, 15.667130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372841, 17.311113, 15.797828>,  <16.148382, 17.343801, 15.876246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372841, 17.311113, 15.797828>,  <16.746941, 17.256634, 15.667130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372841, 17.311113, 15.797828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300912, -0.792034, -0.531163,
		0.186450, -0.595090, 0.781731,
		-0.935248, 0.136197, 0.326745,
		16.092266, 17.351973, 15.895851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494123, 16.606348, 15.759102>,  <16.746941, 17.256634, 15.667130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.494123, 16.606348, 15.759102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.153456, 16.811195, 15.714570>,  <15.949055, 16.934103, 15.687851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.153456, 16.811195, 15.714570>,  <16.494123, 16.606348, 15.759102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153456, 16.811195, 15.714570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382497, -0.752621, -0.535964,
		-0.358264, -0.413881, 0.836868,
		-0.851671, 0.512117, -0.111329,
		15.897955, 16.964830, 15.681171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.795195, 16.323368, 15.969507>,  <16.494123, 16.606348, 15.759102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.795195, 16.323368, 15.969507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.803363, 16.556210, 15.644363>,  <15.808264, 16.695913, 15.449277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.803363, 16.556210, 15.644363>,  <15.795195, 16.323368, 15.969507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803363, 16.556210, 15.644363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432286, -0.727962, -0.532166,
		-0.901505, 0.362255, 0.236769,
		0.020421, 0.582102, -0.812859,
		15.809489, 16.730841, 15.400506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218319, 15.974996, 15.412147>,  <15.795195, 16.323368, 15.969507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218319, 15.974996, 15.412147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245392, 16.146198, 15.051652>,  <16.261637, 16.248920, 14.835355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245392, 16.146198, 15.051652>,  <16.218319, 15.974996, 15.412147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.245392, 16.146198, 15.051652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475379, -0.780345, -0.406295,
		-0.877174, 0.455929, 0.150649,
		0.067684, 0.428007, -0.901237,
		16.265697, 16.274601, 14.781281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.913847, 15.520288, 15.334517>,  <16.218319, 15.974996, 15.412147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.913847, 15.520288, 15.334517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.197746, 15.394814, 15.586821>,  <17.368086, 15.319529, 15.738203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.197746, 15.394814, 15.586821>,  <16.913847, 15.520288, 15.334517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.197746, 15.394814, 15.586821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678294, -0.062564, 0.732122,
		-0.190196, -0.947463, -0.257178,
		0.709748, -0.313689, 0.630759,
		17.410671, 15.300708, 15.776049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.622612, 14.898638, 15.787303>,  <16.913847, 15.520288, 15.334517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.622612, 14.898638, 15.787303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930086, 15.042545, 15.998846>,  <17.114571, 15.128890, 16.125772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930086, 15.042545, 15.998846>,  <16.622612, 14.898638, 15.787303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.930086, 15.042545, 15.998846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593922, 0.094533, 0.798949,
		0.237444, -0.928240, 0.286342,
		0.768685, 0.359770, 0.528856,
		17.160692, 15.150476, 16.157503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687738, 14.504395, 16.464060>,  <16.622612, 14.898638, 15.787303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687738, 14.504395, 16.464060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898127, 14.837141, 16.534895>,  <17.024359, 15.036788, 16.577396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898127, 14.837141, 16.534895>,  <16.687738, 14.504395, 16.464060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898127, 14.837141, 16.534895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411905, 0.066978, 0.908762,
		0.744105, -0.550924, 0.377877,
		0.525968, 0.831863, 0.177089,
		17.055918, 15.086700, 16.588022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.008902, 14.486966, 17.138123>,  <16.687738, 14.504395, 16.464060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.008902, 14.486966, 17.138123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999441, 14.881788, 17.074675>,  <16.993765, 15.118682, 17.036606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999441, 14.881788, 17.074675>,  <17.008902, 14.486966, 17.138123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.999441, 14.881788, 17.074675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226908, 0.149225, 0.962416,
		0.973629, 0.058755, 0.220442,
		-0.023651, 0.987056, -0.158622,
		16.992346, 15.177905, 17.027088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.291878, 14.721549, 17.716913>,  <17.008902, 14.486966, 17.138123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.291878, 14.721549, 17.716913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.101461, 15.027894, 17.544014>,  <16.987211, 15.211701, 17.440273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.101461, 15.027894, 17.544014>,  <17.291878, 14.721549, 17.716913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101461, 15.027894, 17.544014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439430, 0.218604, 0.871271,
		0.761766, 0.604703, 0.232479,
		-0.476039, 0.765863, -0.432250,
		16.958649, 15.257653, 17.414339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.287970, 15.161682, 18.215689>,  <17.291878, 14.721549, 17.716913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.287970, 15.161682, 18.215689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.003372, 15.328454, 17.989433>,  <16.832615, 15.428517, 17.853680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.003372, 15.328454, 17.989433>,  <17.287970, 15.161682, 18.215689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003372, 15.328454, 17.989433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454935, 0.340184, 0.822988,
		0.535550, 0.842879, -0.052362,
		-0.711492, 0.416930, -0.565640,
		16.789925, 15.453533, 17.819740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.162994, 15.728163, 18.657358>,  <17.287970, 15.161682, 18.215689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.162994, 15.728163, 18.657358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.861141, 15.669180, 18.401613>,  <16.680029, 15.633790, 18.248167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.861141, 15.669180, 18.401613>,  <17.162994, 15.728163, 18.657358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.861141, 15.669180, 18.401613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637919, 0.392951, 0.662305,
		0.153576, 0.907660, -0.390600,
		-0.754634, -0.147457, -0.639362,
		16.634750, 15.624943, 18.209805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.865835, 16.353834, 18.601170>,  <17.162994, 15.728163, 18.657358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.865835, 16.353834, 18.601170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581066, 16.092083, 18.499224>,  <16.410206, 15.935032, 18.438055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581066, 16.092083, 18.499224>,  <16.865835, 16.353834, 18.601170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581066, 16.092083, 18.499224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611140, 0.398526, 0.683875,
		-0.345943, 0.642624, -0.683636,
		-0.711921, -0.654379, -0.254866,
		16.367491, 15.895769, 18.422764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263853, 16.721085, 18.462105>,  <16.865835, 16.353834, 18.601170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.263853, 16.721085, 18.462105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.130066, 16.357437, 18.561407>,  <16.049793, 16.139248, 18.620989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.130066, 16.357437, 18.561407>,  <16.263853, 16.721085, 18.462105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.130066, 16.357437, 18.561407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577486, 0.405893, 0.708351,
		-0.744742, 0.093557, -0.660762,
		-0.334470, -0.909119, 0.248258,
		16.029724, 16.084702, 18.635885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.608645, 16.832211, 18.555639>,  <16.263853, 16.721085, 18.462105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.608645, 16.832211, 18.555639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649792, 16.472189, 18.725027>,  <15.674479, 16.256176, 18.826660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649792, 16.472189, 18.725027>,  <15.608645, 16.832211, 18.555639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.649792, 16.472189, 18.725027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663398, 0.255138, 0.703426,
		-0.741163, -0.353286, -0.570847,
		0.102866, -0.900052, 0.423468,
		15.680652, 16.202173, 18.852068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.957780, 16.660662, 18.825521>,  <15.608645, 16.832211, 18.555639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.957780, 16.660662, 18.825521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206122, 16.414740, 19.020067>,  <15.355128, 16.267185, 19.136795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206122, 16.414740, 19.020067>,  <14.957780, 16.660662, 18.825521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.206122, 16.414740, 19.020067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451979, 0.226183, 0.862877,
		-0.640510, -0.755549, -0.137452,
		0.620856, -0.614807, 0.486364,
		15.392380, 16.230297, 19.165976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561086, 16.240091, 19.308197>,  <14.957780, 16.660662, 18.825521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561086, 16.240091, 19.308197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937413, 16.218439, 19.442020>,  <15.163210, 16.205448, 19.522314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937413, 16.218439, 19.442020>,  <14.561086, 16.240091, 19.308197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.937413, 16.218439, 19.442020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323239, 0.153373, 0.933806,
		-0.101862, -0.986684, 0.126798,
		0.940819, -0.054134, 0.334558,
		15.219659, 16.202200, 19.542387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.451481, 16.094133, 19.944036>,  <14.561086, 16.240091, 19.308197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.451481, 16.094133, 19.944036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835060, 16.205797, 19.963982>,  <15.065207, 16.272797, 19.975948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835060, 16.205797, 19.963982>,  <14.451481, 16.094133, 19.944036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.835060, 16.205797, 19.963982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152889, 0.360858, 0.920003,
		0.238832, -0.889861, 0.388724,
		0.958950, 0.279158, 0.049866,
		15.122745, 16.289545, 19.978941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.639494, 16.004490, 20.638653>,  <14.451481, 16.094133, 19.944036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.639494, 16.004490, 20.638653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.920915, 16.252329, 20.499445>,  <15.089767, 16.401031, 20.415920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.920915, 16.252329, 20.499445>,  <14.639494, 16.004490, 20.638653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920915, 16.252329, 20.499445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061234, 0.540755, 0.838948,
		0.708002, -0.568932, 0.418389,
		0.703551, 0.619596, -0.348018,
		15.131980, 16.438208, 20.395041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554849, 15.197394, 20.641020>,  <14.639494, 16.004490, 20.638653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.554849, 15.197394, 20.641020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.224917, 15.034041, 20.797421>,  <14.026958, 14.936029, 20.891262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.224917, 15.034041, 20.797421>,  <14.554849, 15.197394, 20.641020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.224917, 15.034041, 20.797421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267901, -0.326702, -0.906363,
		0.497885, -0.852343, 0.160067,
		-0.824827, -0.408383, 0.391004,
		13.977469, 14.911527, 20.914722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.578188, 14.479106, 20.460823>,  <14.554849, 15.197394, 20.641020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.578188, 14.479106, 20.460823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201770, 14.582085, 20.548601>,  <13.975919, 14.643872, 20.601269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201770, 14.582085, 20.548601>,  <14.578188, 14.479106, 20.460823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.201770, 14.582085, 20.548601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288737, -0.273277, -0.917579,
		-0.176256, -0.926845, 0.331500,
		-0.941045, 0.257445, 0.219448,
		13.919456, 14.659319, 20.614435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128169, 13.923547, 20.262829>,  <14.578188, 14.479106, 20.460823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128169, 13.923547, 20.262829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853350, 14.214147, 20.267925>,  <13.688458, 14.388507, 20.270983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853350, 14.214147, 20.267925>,  <14.128169, 13.923547, 20.262829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.853350, 14.214147, 20.267925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344082, -0.309851, -0.886340,
		-0.639977, -0.613344, 0.462859,
		-0.687049, 0.726499, 0.012743,
		13.647235, 14.432096, 20.271748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.435457, 13.602628, 20.082613>,  <14.128169, 13.923547, 20.262829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.435457, 13.602628, 20.082613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.425561, 13.991974, 19.991446>,  <13.419623, 14.225581, 19.936745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.425561, 13.991974, 19.991446>,  <13.435457, 13.602628, 20.082613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.425561, 13.991974, 19.991446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395741, -0.218901, -0.891892,
		-0.918029, 0.068131, 0.390616,
		-0.024741, 0.973365, -0.227920,
		13.418139, 14.283983, 19.923069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.864428, 13.650146, 19.764547>,  <13.435457, 13.602628, 20.082613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.864428, 13.650146, 19.764547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.079970, 13.958981, 19.629776>,  <13.209296, 14.144280, 19.548914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.079970, 13.958981, 19.629776>,  <12.864428, 13.650146, 19.764547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.079970, 13.958981, 19.629776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412108, -0.107223, -0.904804,
		-0.734711, 0.626410, 0.260404,
		0.538856, 0.772084, -0.336927,
		13.241628, 14.190606, 19.528698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.390882, 13.947428, 19.416016>,  <12.864428, 13.650146, 19.764547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.390882, 13.947428, 19.416016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730845, 14.117812, 19.291943>,  <12.934823, 14.220043, 19.217499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730845, 14.117812, 19.291943>,  <12.390882, 13.947428, 19.416016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.730845, 14.117812, 19.291943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357583, 0.033869, -0.933267,
		-0.387030, 0.904108, 0.181102,
		0.849908, 0.425961, -0.310185,
		12.985818, 14.245601, 19.198887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.212471, 14.555793, 19.023960>,  <12.390882, 13.947428, 19.416016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.212471, 14.555793, 19.023960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.568057, 14.421540, 18.899323>,  <12.781409, 14.340988, 18.824541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.568057, 14.421540, 18.899323>,  <12.212471, 14.555793, 19.023960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568057, 14.421540, 18.899323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282923, 0.132542, -0.949940,
		0.360130, 0.932622, 0.022867,
		0.888966, -0.335632, -0.311593,
		12.834747, 14.320850, 18.805845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.353954, 15.119688, 18.522797>,  <12.212471, 14.555793, 19.023960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.353954, 15.119688, 18.522797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.597001, 14.812006, 18.443678>,  <12.742829, 14.627397, 18.396206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.597001, 14.812006, 18.443678>,  <12.353954, 15.119688, 18.522797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.597001, 14.812006, 18.443678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232486, 0.065879, -0.970366,
		0.759441, 0.635597, -0.138800,
		0.607618, -0.769205, -0.197799,
		12.779286, 14.581244, 18.384338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.831809, 15.349237, 18.122131>,  <12.353954, 15.119688, 18.522797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.831809, 15.349237, 18.122131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.824176, 14.954085, 18.060516>,  <12.819595, 14.716994, 18.023548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.824176, 14.954085, 18.060516>,  <12.831809, 15.349237, 18.122131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.824176, 14.954085, 18.060516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179024, 0.154951, -0.971566,
		0.983660, 0.009035, -0.179812,
		-0.019084, -0.987881, -0.154036,
		12.818451, 14.657722, 18.014305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.024741, 15.280307, 17.462456>,  <12.831809, 15.349237, 18.122131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.024741, 15.280307, 17.462456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.904536, 14.901764, 17.509951>,  <12.832414, 14.674638, 17.538448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.904536, 14.901764, 17.509951>,  <13.024741, 15.280307, 17.462456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.904536, 14.901764, 17.509951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348426, -0.006962, -0.937310,
		0.887858, -0.323044, -0.327644,
		-0.300511, -0.946358, 0.118738,
		12.814383, 14.617856, 17.545572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.301190, 14.938923, 16.918217>,  <13.024741, 15.280307, 17.462456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.301190, 14.938923, 16.918217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982582, 14.735808, 17.049492>,  <12.791417, 14.613939, 17.128256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982582, 14.735808, 17.049492>,  <13.301190, 14.938923, 16.918217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.982582, 14.735808, 17.049492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385184, 0.007786, -0.922807,
		0.466035, -0.861447, -0.201794,
		-0.796520, -0.507788, 0.328187,
		12.743626, 14.583472, 17.147947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.123247, 14.348666, 16.489559>,  <13.301190, 14.938923, 16.918217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.123247, 14.348666, 16.489559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.777719, 14.433890, 16.672171>,  <12.570401, 14.485024, 16.781736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.777719, 14.433890, 16.672171>,  <13.123247, 14.348666, 16.489559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.777719, 14.433890, 16.672171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450715, 0.078046, -0.889249,
		-0.225094, -0.973917, 0.028612,
		-0.863822, 0.213061, 0.456527,
		12.518572, 14.497808, 16.809128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.179408, 16.722187, 26.351641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.507751, 16.496740, 26.388592>,  <14.704756, 16.361473, 26.410763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.507751, 16.496740, 26.388592>,  <14.179408, 16.722187, 26.351641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507751, 16.496740, 26.388592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108885, -0.313209, -0.943422,
		0.560660, 0.764355, -0.318468,
		0.820856, -0.563615, 0.092377,
		14.754007, 16.327656, 26.416306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.605511, 16.913338, 25.854319>,  <14.179408, 16.722187, 26.351641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.605511, 16.913338, 25.854319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.716097, 16.542439, 25.955338>,  <14.782449, 16.319899, 26.015949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.716097, 16.542439, 25.955338>,  <14.605511, 16.913338, 25.854319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.716097, 16.542439, 25.955338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079049, -0.283840, -0.955608,
		0.957767, 0.244230, -0.151770,
		0.276467, -0.927247, 0.252546,
		14.799037, 16.264265, 26.031101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.193980, 16.743366, 25.352375>,  <14.605511, 16.913338, 25.854319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.193980, 16.743366, 25.352375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.109929, 16.377861, 25.491449>,  <15.059498, 16.158558, 25.574894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.109929, 16.377861, 25.491449>,  <15.193980, 16.743366, 25.352375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.109929, 16.377861, 25.491449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017076, -0.352141, -0.935791,
		0.977525, -0.202574, 0.058391,
		-0.210129, -0.913762, 0.347685,
		15.046890, 16.103733, 25.595755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.614733, 16.298595, 24.947445>,  <15.193980, 16.743366, 25.352375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.614733, 16.298595, 24.947445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.304458, 16.087301, 25.085588>,  <15.118292, 15.960525, 25.168474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.304458, 16.087301, 25.085588>,  <15.614733, 16.298595, 24.947445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.304458, 16.087301, 25.085588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043718, -0.500934, -0.864381,
		0.629600, -0.685589, 0.365475,
		-0.775689, -0.528236, 0.345361,
		15.071751, 15.928830, 25.189198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698870, 15.526427, 24.829050>,  <15.614733, 16.298595, 24.947445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698870, 15.526427, 24.829050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.305225, 15.582698, 24.872385>,  <15.069039, 15.616460, 24.898386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.305225, 15.582698, 24.872385>,  <15.698870, 15.526427, 24.829050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305225, 15.582698, 24.872385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170077, -0.571584, -0.802724,
		-0.050999, -0.808395, 0.586428,
		-0.984110, 0.140676, 0.108339,
		15.009993, 15.624901, 24.904886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535532, 15.047475, 24.417166>,  <15.698870, 15.526427, 24.829050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.535532, 15.047475, 24.417166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.174038, 15.209007, 24.473995>,  <14.957142, 15.305927, 24.508093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.174038, 15.209007, 24.473995>,  <15.535532, 15.047475, 24.417166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.174038, 15.209007, 24.473995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248783, -0.225350, -0.941979,
		-0.348387, -0.886643, 0.304123,
		-0.903733, 0.403834, 0.142072,
		14.902918, 15.330156, 24.516617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.120801, 14.537472, 24.291204>,  <15.535532, 15.047475, 24.417166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.120801, 14.537472, 24.291204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.910147, 14.873862, 24.241545>,  <14.783754, 15.075697, 24.211750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.910147, 14.873862, 24.241545>,  <15.120801, 14.537472, 24.291204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.910147, 14.873862, 24.241545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380981, -0.364042, -0.849898,
		-0.759940, -0.400288, 0.512114,
		-0.526635, 0.840977, -0.124148,
		14.752156, 15.126156, 24.204300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.535746, 14.309697, 23.952847>,  <15.120801, 14.537472, 24.291204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.535746, 14.309697, 23.952847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.529968, 14.700871, 23.869478>,  <14.526502, 14.935575, 23.819458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.529968, 14.700871, 23.869478>,  <14.535746, 14.309697, 23.952847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.529968, 14.700871, 23.869478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363283, -0.199331, -0.910105,
		-0.931567, 0.062571, 0.358145,
		-0.014443, 0.977932, -0.208421,
		14.525636, 14.994250, 23.806952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.760468, 14.397629, 23.674601>,  <14.535746, 14.309697, 23.952847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.760468, 14.397629, 23.674601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.992033, 14.691180, 23.532455>,  <14.130972, 14.867311, 23.447168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.992033, 14.691180, 23.532455>,  <13.760468, 14.397629, 23.674601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.992033, 14.691180, 23.532455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504071, -0.020461, -0.863420,
		-0.640917, 0.678972, 0.358082,
		0.578911, 0.733879, -0.355364,
		14.165707, 14.911344, 23.425846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.274759, 14.931688, 23.404739>,  <13.760468, 14.397629, 23.674601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.274759, 14.931688, 23.404739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.627978, 14.984267, 23.224539>,  <13.839910, 15.015815, 23.116419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.627978, 14.984267, 23.224539>,  <13.274759, 14.931688, 23.404739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.627978, 14.984267, 23.224539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466770, 0.146771, -0.872115,
		-0.048517, 0.980398, 0.190961,
		0.883047, 0.131447, -0.450499,
		13.892893, 15.023702, 23.089390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.139175, 15.308771, 22.766584>,  <13.274759, 14.931688, 23.404739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.139175, 15.308771, 22.766584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.508384, 15.176816, 22.687382>,  <13.729909, 15.097643, 22.639860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.508384, 15.176816, 22.687382>,  <13.139175, 15.308771, 22.766584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.508384, 15.176816, 22.687382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286569, -0.246044, -0.925927,
		0.256734, 0.911392, -0.321640,
		0.923020, -0.329889, -0.198009,
		13.785290, 15.077849, 22.627979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.281316, 15.661372, 22.161486>,  <13.139175, 15.308771, 22.766584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.281316, 15.661372, 22.161486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.541206, 15.357587, 22.174572>,  <13.697141, 15.175316, 22.182425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.541206, 15.357587, 22.174572>,  <13.281316, 15.661372, 22.161486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.541206, 15.357587, 22.174572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075780, -0.107534, -0.991309,
		0.756382, 0.641600, -0.127420,
		0.649726, -0.759464, 0.032716,
		13.736124, 15.129747, 22.184387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.797206, 15.850101, 21.736803>,  <13.281316, 15.661372, 22.161486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.797206, 15.850101, 21.736803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.847276, 15.454126, 21.763206>,  <13.877317, 15.216541, 21.779049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.847276, 15.454126, 21.763206>,  <13.797206, 15.850101, 21.736803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.847276, 15.454126, 21.763206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043098, -0.061042, -0.997204,
		0.991198, 0.127670, 0.035023,
		0.125175, -0.989936, 0.066007,
		13.884829, 15.157146, 21.783009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.310660, 15.728499, 21.319839>,  <13.797206, 15.850101, 21.736803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.310660, 15.728499, 21.319839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.105375, 15.386557, 21.350386>,  <13.982204, 15.181391, 21.368713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.105375, 15.386557, 21.350386>,  <14.310660, 15.728499, 21.319839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.105375, 15.386557, 21.350386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083713, -0.038693, -0.995738,
		0.854170, -0.517417, -0.051705,
		-0.513212, -0.854858, 0.076365,
		13.951411, 15.130099, 21.373295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.016536, 16.106209, 21.265518>,  <14.310660, 15.728499, 21.319839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.016536, 16.106209, 21.265518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.129088, 16.397278, 21.015297>,  <15.196620, 16.571920, 20.865164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.129088, 16.397278, 21.015297>,  <15.016536, 16.106209, 21.265518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.129088, 16.397278, 21.015297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063402, 0.664564, 0.744537,
		0.957499, -0.169838, 0.233133,
		0.281383, 0.727674, -0.625551,
		15.213503, 16.615580, 20.827631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563279, 16.584404, 21.521881>,  <15.016536, 16.106209, 21.265518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.563279, 16.584404, 21.521881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.375875, 16.798653, 21.240852>,  <15.263433, 16.927202, 21.072235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.375875, 16.798653, 21.240852>,  <15.563279, 16.584404, 21.521881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.375875, 16.798653, 21.240852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150859, 0.735066, 0.660998,
		0.870483, 0.415673, -0.263582,
		-0.468509, 0.535624, -0.702571,
		15.235323, 16.959339, 21.030081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794477, 17.224808, 21.586756>,  <15.563279, 16.584404, 21.521881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.794477, 17.224808, 21.586756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.438731, 17.291870, 21.416618>,  <15.225284, 17.332108, 21.314535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.438731, 17.291870, 21.416618>,  <15.794477, 17.224808, 21.586756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.438731, 17.291870, 21.416618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118549, 0.813953, 0.568707,
		0.441558, 0.556213, -0.704027,
		-0.889367, 0.167655, -0.425345,
		15.171921, 17.342167, 21.289015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684174, 17.921562, 21.551880>,  <15.794477, 17.224808, 21.586756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684174, 17.921562, 21.551880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.312246, 17.780584, 21.509514>,  <15.089089, 17.695997, 21.484095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.312246, 17.780584, 21.509514>,  <15.684174, 17.921562, 21.551880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.312246, 17.780584, 21.509514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323429, 0.645274, 0.692109,
		-0.175586, 0.677793, -0.713979,
		-0.929819, -0.352446, -0.105917,
		15.033300, 17.674850, 21.477739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.272024, 18.492661, 21.310612>,  <15.684174, 17.921562, 21.551880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.272024, 18.492661, 21.310612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.030275, 18.234997, 21.498140>,  <14.885226, 18.080399, 21.610657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.030275, 18.234997, 21.498140>,  <15.272024, 18.492661, 21.310612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.030275, 18.234997, 21.498140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257299, 0.714733, 0.650349,
		-0.754010, 0.272426, -0.597706,
		-0.604372, -0.644159, 0.468821,
		14.848964, 18.041748, 21.638786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900925, 19.021107, 21.666582>,  <15.272024, 18.492661, 21.310612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.900925, 19.021107, 21.666582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.756301, 18.665754, 21.779757>,  <14.669526, 18.452543, 21.847660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.756301, 18.665754, 21.779757>,  <14.900925, 19.021107, 21.666582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.756301, 18.665754, 21.779757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205456, 0.371922, 0.905241,
		-0.909430, 0.269169, -0.316996,
		-0.361561, -0.888382, 0.282934,
		14.647833, 18.399240, 21.864637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272267, 19.064310, 22.082256>,  <14.900925, 19.021107, 21.666582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272267, 19.064310, 22.082256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.442139, 18.721502, 22.198990>,  <14.544062, 18.515818, 22.269032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.442139, 18.721502, 22.198990>,  <14.272267, 19.064310, 22.082256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.442139, 18.721502, 22.198990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235999, 0.206411, 0.949578,
		-0.874043, -0.472139, -0.114597,
		0.424679, -0.857018, 0.291836,
		14.569543, 18.464397, 22.286541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.793946, 18.914713, 22.543274>,  <14.272267, 19.064310, 22.082256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.793946, 18.914713, 22.543274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.113615, 18.687052, 22.620621>,  <14.305416, 18.550455, 22.667028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.113615, 18.687052, 22.620621>,  <13.793946, 18.914713, 22.543274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.113615, 18.687052, 22.620621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077613, 0.221294, 0.972114,
		-0.596071, -0.791894, 0.132678,
		0.799172, -0.569151, 0.193368,
		14.353367, 18.516306, 22.678631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.613913, 18.497791, 23.114618>,  <13.793946, 18.914713, 22.543274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.613913, 18.497791, 23.114618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.013829, 18.505894, 23.115513>,  <14.253779, 18.510756, 23.116049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.013829, 18.505894, 23.115513>,  <13.613913, 18.497791, 23.114618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.013829, 18.505894, 23.115513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004671, 0.120920, 0.992651,
		0.019834, -0.992456, 0.120990,
		0.999793, 0.020254, 0.002237,
		14.313766, 18.511971, 23.116184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.828133, 18.247496, 23.672123>,  <13.613913, 18.497791, 23.114618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.828133, 18.247496, 23.672123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.181525, 18.400740, 23.564281>,  <14.393561, 18.492685, 23.499577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.181525, 18.400740, 23.564281>,  <13.828133, 18.247496, 23.672123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.181525, 18.400740, 23.564281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187819, 0.237550, 0.953045,
		0.429166, -0.892634, 0.137916,
		0.883482, 0.383111, -0.269602,
		14.446570, 18.515673, 23.483400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.332068, 18.000383, 24.123007>,  <13.828133, 18.247496, 23.672123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.332068, 18.000383, 24.123007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.472733, 18.342253, 23.970238>,  <14.557131, 18.547375, 23.878576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.472733, 18.342253, 23.970238>,  <14.332068, 18.000383, 24.123007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.472733, 18.342253, 23.970238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212791, 0.324321, 0.921703,
		0.911622, -0.405397, -0.067817,
		0.351661, 0.854675, -0.381923,
		14.578231, 18.598656, 23.855661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992105, 18.199602, 24.524788>,  <14.332068, 18.000383, 24.123007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992105, 18.199602, 24.524788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.865789, 18.536770, 24.350538>,  <14.790001, 18.739071, 24.245989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.865789, 18.536770, 24.350538>,  <14.992105, 18.199602, 24.524788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.865789, 18.536770, 24.350538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386196, 0.533551, 0.752447,
		0.866678, 0.069377, -0.494020,
		-0.315787, 0.842918, -0.435624,
		14.771053, 18.789644, 24.219851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480371, 18.735935, 24.660711>,  <14.992105, 18.199602, 24.524788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.480371, 18.735935, 24.660711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.163157, 18.957674, 24.559681>,  <14.972828, 19.090717, 24.499063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.163157, 18.957674, 24.559681>,  <15.480371, 18.735935, 24.660711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.163157, 18.957674, 24.559681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212613, 0.640419, 0.738010,
		0.570866, 0.531568, -0.625737,
		-0.793037, 0.554345, -0.252575,
		14.925245, 19.123978, 24.483908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636702, 19.512476, 24.617636>,  <15.480371, 18.735935, 24.660711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636702, 19.512476, 24.617636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.244855, 19.473240, 24.687756>,  <15.009747, 19.449699, 24.729828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.244855, 19.473240, 24.687756>,  <15.636702, 19.512476, 24.617636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.244855, 19.473240, 24.687756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100060, 0.518431, 0.849245,
		-0.174181, 0.849475, -0.498049,
		-0.979617, -0.098088, 0.175299,
		14.950970, 19.443813, 24.740345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.519299, 21.261290, 24.350813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.823717, 21.005806, 24.396168>,  <10.006369, 20.852516, 24.423382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.823717, 21.005806, 24.396168>,  <9.519299, 21.261290, 24.350813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.823717, 21.005806, 24.396168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037590, -0.131078, -0.990659,
		0.647607, 0.758200, -0.075747,
		0.761047, -0.638710, 0.113388,
		10.052032, 20.814194, 24.430183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.778378, 21.179289, 23.688330>,  <9.519299, 21.261290, 24.350813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.778378, 21.179289, 23.688330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.925591, 20.861444, 23.881470>,  <10.013920, 20.670738, 23.997353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.925591, 20.861444, 23.881470>,  <9.778378, 21.179289, 23.688330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.925591, 20.861444, 23.881470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375244, -0.348199, -0.859040,
		0.850730, 0.497343, 0.170024,
		0.368036, -0.794611, 0.482848,
		10.036002, 20.623060, 24.026323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.452040, 21.116526, 23.346054>,  <9.778378, 21.179289, 23.688330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.452040, 21.116526, 23.346054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.351889, 20.772905, 23.524643>,  <10.291798, 20.566732, 23.631796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.351889, 20.772905, 23.524643>,  <10.452040, 21.116526, 23.346054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.351889, 20.772905, 23.524643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071179, -0.476248, -0.876425,
		0.965528, -0.187658, 0.180388,
		-0.250378, -0.859053, 0.446474,
		10.276775, 20.515190, 23.658585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.964694, 20.675205, 23.135647>,  <10.452040, 21.116526, 23.346054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.964694, 20.675205, 23.135647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.673552, 20.423412, 23.244440>,  <10.498866, 20.272337, 23.309717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.673552, 20.423412, 23.244440>,  <10.964694, 20.675205, 23.135647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.673552, 20.423412, 23.244440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227429, -0.595784, -0.770271,
		0.646917, -0.498789, 0.576808,
		-0.727856, -0.629484, 0.271984,
		10.455194, 20.234568, 23.326035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.292529, 19.952171, 22.961760>,  <10.964694, 20.675205, 23.135647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.292529, 19.952171, 22.961760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.900449, 19.880798, 22.996090>,  <10.665200, 19.837975, 23.016687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.900449, 19.880798, 22.996090>,  <11.292529, 19.952171, 22.961760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.900449, 19.880798, 22.996090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045581, -0.625162, -0.779163,
		0.192684, -0.759824, 0.620918,
		-0.980201, -0.178434, 0.085826,
		10.606388, 19.827269, 23.021837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.182493, 19.214750, 22.897501>,  <11.292529, 19.952171, 22.961760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.182493, 19.214750, 22.897501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.836282, 19.384970, 22.791845>,  <10.628555, 19.487101, 22.728453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.836282, 19.384970, 22.791845>,  <11.182493, 19.214750, 22.897501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.836282, 19.384970, 22.791845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004156, -0.521248, -0.853395,
		-0.500837, -0.739738, 0.449388,
		-0.865532, 0.425544, -0.264135,
		10.576623, 19.512634, 22.712605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.695755, 18.620302, 22.668558>,  <11.182493, 19.214750, 22.897501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.695755, 18.620302, 22.668558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.570689, 18.950455, 22.480522>,  <10.495649, 19.148546, 22.367701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.570689, 18.950455, 22.480522>,  <10.695755, 18.620302, 22.668558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.570689, 18.950455, 22.480522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073032, -0.514328, -0.854478,
		-0.947052, -0.232834, 0.221092,
		-0.312665, 0.825382, -0.470091,
		10.476890, 19.198069, 22.339495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.185354, 18.355627, 22.138119>,  <10.695755, 18.620302, 22.668558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.185354, 18.355627, 22.138119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.228756, 18.737078, 22.025814>,  <10.254797, 18.965948, 21.958431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.228756, 18.737078, 22.025814>,  <10.185354, 18.355627, 22.138119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.228756, 18.737078, 22.025814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046077, -0.277301, -0.959678,
		-0.993027, 0.117066, 0.013852,
		0.108505, 0.953625, -0.280761,
		10.261308, 19.023165, 21.941586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.682422, 18.460201, 21.646509>,  <10.185354, 18.355627, 22.138119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.682422, 18.460201, 21.646509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.968424, 18.734007, 21.589645>,  <10.140025, 18.898291, 21.555527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.968424, 18.734007, 21.589645>,  <9.682422, 18.460201, 21.646509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.968424, 18.734007, 21.589645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221907, 0.029384, -0.974625,
		-0.662966, 0.728409, 0.172908,
		0.715006, 0.684512, -0.142159,
		10.182925, 18.939360, 21.546997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.404152, 18.885973, 21.280245>,  <9.682422, 18.460201, 21.646509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.404152, 18.885973, 21.280245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.796919, 18.932713, 21.220667>,  <10.032579, 18.960756, 21.184919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.796919, 18.932713, 21.220667>,  <9.404152, 18.885973, 21.280245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.796919, 18.932713, 21.220667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163669, 0.128578, -0.978100,
		-0.095139, 0.984792, 0.145378,
		0.981917, 0.116849, -0.148947,
		10.091494, 18.967768, 21.175983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.457413, 19.377825, 20.764700>,  <9.404152, 18.885973, 21.280245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.457413, 19.377825, 20.764700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.820980, 19.211103, 20.769539>,  <10.039121, 19.111071, 20.772442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.820980, 19.211103, 20.769539>,  <9.457413, 19.377825, 20.764700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.820980, 19.211103, 20.769539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023039, -0.079168, -0.996595,
		0.416340, 0.905544, -0.081560,
		0.908917, -0.416801, 0.012098,
		10.093656, 19.086063, 20.773169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.774941, 19.679134, 20.208693>,  <9.457413, 19.377825, 20.764700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.774941, 19.679134, 20.208693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.980132, 19.344515, 20.285677>,  <10.103247, 19.143744, 20.331867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.980132, 19.344515, 20.285677>,  <9.774941, 19.679134, 20.208693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.980132, 19.344515, 20.285677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008612, -0.219181, -0.975646,
		0.858360, 0.502141, -0.105230,
		0.512976, -0.836549, 0.192461,
		10.134025, 19.093550, 20.343414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.332329, 19.750078, 19.779289>,  <9.774941, 19.679134, 20.208693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.332329, 19.750078, 19.779289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.297164, 19.361702, 19.868320>,  <10.276065, 19.128675, 19.921740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.297164, 19.361702, 19.868320>,  <10.332329, 19.750078, 19.779289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.297164, 19.361702, 19.868320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119167, -0.232090, -0.965367,
		0.988975, -0.058344, 0.136108,
		-0.087913, -0.970943, 0.222579,
		10.270790, 19.070419, 19.935095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.816552, 19.514412, 19.425083>,  <10.332329, 19.750078, 19.779289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.816552, 19.514412, 19.425083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.583705, 19.195881, 19.490808>,  <10.443996, 19.004763, 19.530243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.583705, 19.195881, 19.490808>,  <10.816552, 19.514412, 19.425083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.583705, 19.195881, 19.490808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163586, -0.312647, -0.935677,
		0.796478, -0.517796, 0.312266,
		-0.582119, -0.796329, 0.164313,
		10.409069, 18.956982, 19.540102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.536005, 19.215494, 19.420513>,  <10.816552, 19.514412, 19.425083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.536005, 19.215494, 19.420513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.872478, 19.414047, 19.334709>,  <12.074363, 19.533178, 19.283226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.872478, 19.414047, 19.334709>,  <11.536005, 19.215494, 19.420513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.872478, 19.414047, 19.334709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069686, 0.492890, 0.867297,
		0.536242, -0.714606, 0.449202,
		0.841182, 0.496384, -0.214510,
		12.124833, 19.562962, 19.270357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.860466, 19.211868, 20.078785>,  <11.536005, 19.215494, 19.420513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.860466, 19.211868, 20.078785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.065698, 19.490105, 19.877626>,  <12.188836, 19.657045, 19.756931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.065698, 19.490105, 19.877626>,  <11.860466, 19.211868, 20.078785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.065698, 19.490105, 19.877626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213561, 0.464018, 0.859697,
		0.831350, -0.548491, 0.089526,
		0.513078, 0.695589, -0.502898,
		12.219621, 19.698782, 19.726757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.489526, 19.254929, 20.461811>,  <11.860466, 19.211868, 20.078785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.489526, 19.254929, 20.461811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.431742, 19.602486, 20.272430>,  <12.397071, 19.811020, 20.158802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.431742, 19.602486, 20.272430>,  <12.489526, 19.254929, 20.461811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431742, 19.602486, 20.272430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230530, 0.494856, 0.837839,
		0.962282, 0.011890, -0.271793,
		-0.144461, 0.868894, -0.473450,
		12.388404, 19.863153, 20.130396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982264, 19.705278, 20.722385>,  <12.489526, 19.254929, 20.461811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.982264, 19.705278, 20.722385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.736892, 19.960718, 20.536528>,  <12.589668, 20.113981, 20.425013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.736892, 19.960718, 20.536528>,  <12.982264, 19.705278, 20.722385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.736892, 19.960718, 20.536528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281734, 0.726587, 0.626655,
		0.737787, 0.253502, -0.625625,
		-0.613430, 0.638598, -0.464647,
		12.552863, 20.152298, 20.397133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.377560, 20.330454, 20.565184>,  <12.982264, 19.705278, 20.722385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.377560, 20.330454, 20.565184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.983577, 20.392607, 20.595427>,  <12.747188, 20.429899, 20.613571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.983577, 20.392607, 20.595427>,  <13.377560, 20.330454, 20.565184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.983577, 20.392607, 20.595427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165076, 0.716711, 0.677551,
		0.051093, 0.679839, -0.731579,
		-0.984957, 0.155384, 0.075606,
		12.688089, 20.439222, 20.618109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.279087, 20.992371, 20.299067>,  <13.377560, 20.330454, 20.565184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.279087, 20.992371, 20.299067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.995137, 20.862425, 20.549040>,  <12.824767, 20.784458, 20.699024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.995137, 20.862425, 20.549040>,  <13.279087, 20.992371, 20.299067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.995137, 20.862425, 20.549040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272923, 0.691081, 0.669268,
		-0.649300, 0.645655, -0.401918,
		-0.709875, -0.324863, 0.624933,
		12.782175, 20.764965, 20.736521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.134024, 21.566021, 20.703596>,  <13.279087, 20.992371, 20.299067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.134024, 21.566021, 20.703596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.927065, 21.310310, 20.931149>,  <12.802890, 21.156885, 21.067680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.927065, 21.310310, 20.931149>,  <13.134024, 21.566021, 20.703596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.927065, 21.310310, 20.931149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163948, 0.578416, 0.799097,
		-0.839894, 0.506718, -0.194463,
		-0.517397, -0.639275, 0.568883,
		12.771846, 21.118528, 21.101814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.456257, 21.900095, 20.841082>,  <13.134024, 21.566021, 20.703596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.456257, 21.900095, 20.841082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.556665, 21.636524, 21.124718>,  <12.616911, 21.478382, 21.294899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.556665, 21.636524, 21.124718>,  <12.456257, 21.900095, 20.841082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.556665, 21.636524, 21.124718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069389, 0.742908, 0.665788,
		-0.965491, -0.117925, 0.232208,
		0.251022, -0.658925, 0.709088,
		12.631972, 21.438847, 21.337444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.002632, 22.004971, 21.525890>,  <12.456257, 21.900095, 20.841082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.002632, 22.004971, 21.525890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.333737, 21.805452, 21.628664>,  <12.532400, 21.685741, 21.690329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.333737, 21.805452, 21.628664>,  <12.002632, 22.004971, 21.525890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.333737, 21.805452, 21.628664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088185, 0.567891, 0.818366,
		-0.554106, -0.654755, 0.514065,
		0.827762, -0.498795, 0.256932,
		12.582066, 21.655813, 21.705744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.053295, 22.142492, 22.190634>,  <12.002632, 22.004971, 21.525890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.053295, 22.142492, 22.190634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.401555, 21.950119, 22.149313>,  <12.610511, 21.834696, 22.124521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.401555, 21.950119, 22.149313>,  <12.053295, 22.142492, 22.190634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.401555, 21.950119, 22.149313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331139, 0.417742, 0.846073,
		-0.363750, -0.770841, 0.522963,
		0.870651, -0.480932, -0.103302,
		12.662750, 21.805840, 22.118322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.126278, 21.504034, 22.647724>,  <12.053295, 22.142492, 22.190634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.126278, 21.504034, 22.647724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.460979, 21.713840, 22.584824>,  <12.661799, 21.839724, 22.547083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.460979, 21.713840, 22.584824>,  <12.126278, 21.504034, 22.647724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.460979, 21.713840, 22.584824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096615, 0.424086, 0.900454,
		0.538991, -0.738264, 0.405531,
		0.836753, 0.524516, -0.157251,
		12.712005, 21.871195, 22.537649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.631060, 21.343754, 23.208006>,  <12.126278, 21.504034, 22.647724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.631060, 21.343754, 23.208006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.760261, 21.674728, 23.024260>,  <12.837781, 21.873314, 22.914011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.760261, 21.674728, 23.024260>,  <12.631060, 21.343754, 23.208006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.760261, 21.674728, 23.024260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338729, 0.352155, 0.872497,
		0.883703, -0.437420, -0.166529,
		0.323003, 0.827436, -0.459367,
		12.857162, 21.922958, 22.886450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.298601, 21.412516, 23.398052>,  <12.631060, 21.343754, 23.208006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.298601, 21.412516, 23.398052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.213160, 21.787430, 23.287872>,  <13.161895, 22.012379, 23.221766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.213160, 21.787430, 23.287872>,  <13.298601, 21.412516, 23.398052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.213160, 21.787430, 23.287872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272825, 0.327971, 0.904435,
		0.938051, 0.118042, -0.325770,
		-0.213605, 0.937284, -0.275448,
		13.149078, 22.068615, 23.205238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.847311, 21.888744, 23.613707>,  <13.298601, 21.412516, 23.398052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.847311, 21.888744, 23.613707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.518762, 22.110325, 23.559320>,  <13.321632, 22.243273, 23.526688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.518762, 22.110325, 23.559320>,  <13.847311, 21.888744, 23.613707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.518762, 22.110325, 23.559320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053018, 0.311487, 0.948770,
		0.567922, 0.772086, -0.285217,
		-0.821373, 0.553949, -0.135966,
		13.272349, 22.276510, 23.518530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.483624, 22.256044, 23.338732>,  <13.847311, 21.888744, 23.613707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.483624, 22.256044, 23.338732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.851860, 22.407829, 23.375664>,  <15.072802, 22.498901, 23.397823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.851860, 22.407829, 23.375664>,  <14.483624, 22.256044, 23.338732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.851860, 22.407829, 23.375664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193797, -0.238623, -0.951579,
		-0.339058, 0.893905, -0.293213,
		0.920588, 0.379464, 0.092329,
		15.128036, 22.521669, 23.403362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.616387, 22.513981, 22.721273>,  <14.483624, 22.256044, 23.338732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.616387, 22.513981, 22.721273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.985986, 22.477976, 22.869936>,  <15.207745, 22.456373, 22.959133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.985986, 22.477976, 22.869936>,  <14.616387, 22.513981, 22.721273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985986, 22.477976, 22.869936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331903, -0.293928, -0.896352,
		0.189923, 0.951580, -0.241713,
		0.923997, -0.090013, 0.371656,
		15.263185, 22.450972, 22.981432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.066998, 22.882751, 22.279680>,  <14.616387, 22.513981, 22.721273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.066998, 22.882751, 22.279680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.320406, 22.658739, 22.493227>,  <15.472451, 22.524332, 22.621355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.320406, 22.658739, 22.493227>,  <15.066998, 22.882751, 22.279680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.320406, 22.658739, 22.493227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479857, -0.256879, -0.838898,
		0.606950, 0.787640, 0.105997,
		0.633521, -0.560033, 0.533867,
		15.510462, 22.490728, 22.653387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686166, 23.115423, 22.016012>,  <15.066998, 22.882751, 22.279680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.686166, 23.115423, 22.016012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.758953, 22.766239, 22.197044>,  <15.802626, 22.556728, 22.305664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.758953, 22.766239, 22.197044>,  <15.686166, 23.115423, 22.016012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758953, 22.766239, 22.197044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381722, -0.361457, -0.850669,
		0.906188, 0.327555, 0.267454,
		0.181967, -0.872959, 0.452582,
		15.813543, 22.504351, 22.332819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381399, 22.951843, 21.809231>,  <15.686166, 23.115423, 22.016012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381399, 22.951843, 21.809231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.225779, 22.599888, 21.918365>,  <16.132406, 22.388716, 21.983847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.225779, 22.599888, 21.918365>,  <16.381399, 22.951843, 21.809231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.225779, 22.599888, 21.918365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430825, -0.435569, -0.790360,
		0.814266, -0.189946, 0.548535,
		-0.389051, -0.879886, 0.272836,
		16.109064, 22.335922, 22.000216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868145, 22.451424, 21.615938>,  <16.381399, 22.951843, 21.809231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.868145, 22.451424, 21.615938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.514847, 22.266321, 21.646235>,  <16.302868, 22.155260, 21.664412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.514847, 22.266321, 21.646235>,  <16.868145, 22.451424, 21.615938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.514847, 22.266321, 21.646235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218846, -0.549656, -0.806216,
		0.414714, -0.695510, 0.586752,
		-0.883243, -0.462758, 0.075741,
		16.249874, 22.127495, 21.668957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.042433, 21.740013, 21.627945>,  <16.868145, 22.451424, 21.615938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.042433, 21.740013, 21.627945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.667171, 21.787584, 21.497885>,  <16.442015, 21.816128, 21.419847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.667171, 21.787584, 21.497885>,  <17.042433, 21.740013, 21.627945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.667171, 21.787584, 21.497885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210114, -0.550855, -0.807719,
		-0.275173, -0.826084, 0.491798,
		-0.938153, 0.118929, -0.325152,
		16.385725, 21.823263, 21.400339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944759, 21.092674, 21.458277>,  <17.042433, 21.740013, 21.627945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.944759, 21.092674, 21.458277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.652164, 21.307304, 21.289984>,  <16.476608, 21.436083, 21.189009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.652164, 21.307304, 21.289984>,  <16.944759, 21.092674, 21.458277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.652164, 21.307304, 21.289984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040999, -0.581311, -0.812648,
		-0.680622, -0.611691, 0.403221,
		-0.731487, 0.536575, -0.420732,
		16.432718, 21.468277, 21.163765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.282919, 20.618996, 21.267132>,  <16.944759, 21.092674, 21.458277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.282919, 20.618996, 21.267132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.304832, 20.941376, 21.031353>,  <16.317982, 21.134804, 20.889887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.304832, 20.941376, 21.031353>,  <16.282919, 20.618996, 21.267132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.304832, 20.941376, 21.031353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103753, -0.591731, -0.799430,
		-0.993093, -0.017360, -0.116038,
		0.054785, 0.805948, -0.589446,
		16.321268, 21.183161, 20.854519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909451, 20.447031, 20.700352>,  <16.282919, 20.618996, 21.267132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909451, 20.447031, 20.700352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.122726, 20.751253, 20.552155>,  <16.250692, 20.933786, 20.463236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.122726, 20.751253, 20.552155>,  <15.909451, 20.447031, 20.700352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122726, 20.751253, 20.552155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119084, -0.501051, -0.857185,
		-0.837572, 0.412923, -0.357725,
		0.533190, 0.760554, -0.370494,
		16.282684, 20.979420, 20.441006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623959, 20.661009, 20.068481>,  <15.909451, 20.447031, 20.700352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.623959, 20.661009, 20.068481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.998864, 20.798571, 20.045622>,  <16.223808, 20.881107, 20.031906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.998864, 20.798571, 20.045622>,  <15.623959, 20.661009, 20.068481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.998864, 20.798571, 20.045622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072438, -0.352467, -0.933016,
		-0.341013, 0.870342, -0.355266,
		0.937263, 0.343906, -0.057150,
		16.280043, 20.901743, 20.028477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652189, 21.065453, 19.526163>,  <15.623959, 20.661009, 20.068481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652189, 21.065453, 19.526163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.033138, 20.965134, 19.595545>,  <16.261707, 20.904942, 19.637173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.033138, 20.965134, 19.595545>,  <15.652189, 21.065453, 19.526163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033138, 20.965134, 19.595545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138258, -0.151845, -0.978687,
		0.271790, 0.956056, -0.109938,
		0.952373, -0.250797, 0.173452,
		16.318850, 20.889894, 19.647581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916634, 21.169817, 18.919256>,  <15.652189, 21.065453, 19.526163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916634, 21.169817, 18.919256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.201447, 20.938118, 19.077993>,  <16.372334, 20.799099, 19.173237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.201447, 20.938118, 19.077993>,  <15.916634, 21.169817, 18.919256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.201447, 20.938118, 19.077993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296814, -0.263897, -0.917747,
		0.636328, 0.771254, -0.015974,
		0.712031, -0.579246, 0.396844,
		16.415056, 20.764343, 19.197046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.617180, 21.384056, 18.537191>,  <15.916634, 21.169817, 18.919256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.617180, 21.384056, 18.537191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.600889, 21.014259, 18.688797>,  <16.591114, 20.792381, 18.779760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.600889, 21.014259, 18.688797>,  <16.617180, 21.384056, 18.537191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.600889, 21.014259, 18.688797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167353, -0.380284, -0.909603,
		0.985055, 0.026385, 0.170204,
		-0.040726, -0.924493, 0.379016,
		16.588671, 20.736912, 18.802502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<8.272099, 4.079803, 11.844721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.217941, 3.897880, 12.196816>,  <8.185447, 3.788727, 12.408073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.217941, 3.897880, 12.196816>,  <8.272099, 4.079803, 11.844721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.217941, 3.897880, 12.196816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788606, 0.587301, 0.182150,
		-0.599808, -0.669499, -0.438180,
		-0.135394, -0.454807, 0.880238,
		8.177323, 3.761438, 12.460888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.653399, 3.623914, 11.981952>,  <8.272099, 4.079803, 11.844721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.653399, 3.623914, 11.981952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.807831, 3.839386, 12.281489>,  <7.900490, 3.968668, 12.461212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.807831, 3.839386, 12.281489>,  <7.653399, 3.623914, 11.981952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.807831, 3.839386, 12.281489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868766, 0.485261, 0.098836,
		-0.310144, -0.688729, 0.655335,
		0.386079, 0.538679, 0.748844,
		7.923655, 4.000989, 12.506143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.093954, 3.787442, 12.464808>,  <7.653399, 3.623914, 11.981952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.093954, 3.787442, 12.464808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.376825, 4.054270, 12.558544>,  <7.546547, 4.214367, 12.614786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.376825, 4.054270, 12.558544>,  <7.093954, 3.787442, 12.464808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.376825, 4.054270, 12.558544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706968, 0.662544, 0.247451,
		0.009805, -0.340664, 0.940134,
		0.707178, 0.667071, 0.234342,
		7.588978, 4.254392, 12.628847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.010779, 4.126120, 13.130237>,  <7.093954, 3.787442, 12.464808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.010779, 4.126120, 13.130237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.187953, 4.387149, 12.884324>,  <7.294258, 4.543766, 12.736776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.187953, 4.387149, 12.884324>,  <7.010779, 4.126120, 13.130237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.187953, 4.387149, 12.884324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655451, 0.703560, 0.274570,
		0.611712, 0.281342, 0.739361,
		0.442937, 0.652572, -0.614781,
		7.320835, 4.582921, 12.699889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.234904, 4.675625, 13.566129>,  <7.010779, 4.126120, 13.130237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.234904, 4.675625, 13.566129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.154200, 4.823821, 13.203465>,  <7.105777, 4.912738, 12.985868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.154200, 4.823821, 13.203465>,  <7.234904, 4.675625, 13.566129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.154200, 4.823821, 13.203465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375176, 0.825855, 0.420958,
		0.904730, 0.425089, -0.027627,
		-0.201761, 0.370489, -0.906659,
		7.093671, 4.934967, 12.931468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.362758, 5.365079, 13.726407>,  <7.234904, 4.675625, 13.566129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.362758, 5.365079, 13.726407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.064377, 5.313270, 13.465093>,  <6.885349, 5.282185, 13.308304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.064377, 5.313270, 13.465093>,  <7.362758, 5.365079, 13.726407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.064377, 5.313270, 13.465093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415188, 0.857409, 0.304087,
		0.520747, 0.498070, -0.693361,
		-0.745950, -0.129522, -0.653286,
		6.840592, 5.274414, 13.269107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.341811, 5.754436, 13.080098>,  <7.362758, 5.365079, 13.726407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.341811, 5.754436, 13.080098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.987450, 5.685609, 13.252410>,  <6.774833, 5.644313, 13.355797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.987450, 5.685609, 13.252410>,  <7.341811, 5.754436, 13.080098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.987450, 5.685609, 13.252410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138523, 0.984416, 0.108332,
		-0.442706, 0.036299, -0.895932,
		-0.885902, -0.172066, 0.430779,
		6.721679, 5.633989, 13.381643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.955954, 6.156560, 12.747250>,  <7.341811, 5.754436, 13.080098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.955954, 6.156560, 12.747250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.754793, 6.088992, 13.086320>,  <6.634096, 6.048450, 13.289762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.754793, 6.088992, 13.086320>,  <6.955954, 6.156560, 12.747250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.754793, 6.088992, 13.086320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256079, 0.965805, 0.040537,
		-0.825538, -0.196686, -0.528962,
		-0.502902, -0.168922, 0.847677,
		6.603922, 6.038315, 13.340623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.244369, 6.296256, 12.655961>,  <6.955954, 6.156560, 12.747250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.244369, 6.296256, 12.655961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.358183, 6.364802, 13.033251>,  <6.426472, 6.405930, 13.259624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.358183, 6.364802, 13.033251>,  <6.244369, 6.296256, 12.655961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.358183, 6.364802, 13.033251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207058, 0.971656, -0.114069,
		-0.936037, -0.162846, 0.311955,
		0.284538, 0.171366, 0.943224,
		6.443545, 6.416212, 13.316218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.782708, 6.779805, 13.020452>,  <6.244369, 6.296256, 12.655961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.782708, 6.779805, 13.020452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.138384, 6.855088, 13.187264>,  <6.351790, 6.900258, 13.287353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.138384, 6.855088, 13.187264>,  <5.782708, 6.779805, 13.020452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.138384, 6.855088, 13.187264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128722, 0.977566, -0.166718,
		-0.439055, 0.094563, 0.893470,
		0.889192, 0.188208, 0.417033,
		6.405142, 6.911551, 13.312374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.687952, 7.221502, 13.641186>,  <5.782708, 6.779805, 13.020452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.687952, 7.221502, 13.641186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.035483, 7.236294, 13.443693>,  <6.244001, 7.245169, 13.325197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.035483, 7.236294, 13.443693>,  <5.687952, 7.221502, 13.641186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.035483, 7.236294, 13.443693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111856, 0.986085, -0.122981,
		0.482313, 0.162076, 0.860875,
		0.868828, 0.036978, -0.493731,
		6.296131, 7.247387, 13.295574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.232383, 7.837500, 13.968699>,  <5.687952, 7.221502, 13.641186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.232383, 7.837500, 13.968699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.285201, 7.747672, 13.582510>,  <6.316891, 7.693775, 13.350797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.285201, 7.747672, 13.582510>,  <6.232383, 7.837500, 13.968699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.285201, 7.747672, 13.582510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057949, 0.970584, -0.233685,
		0.989549, 0.086805, 0.115145,
		0.132043, -0.224570, -0.965470,
		6.324813, 7.680301, 13.292869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.738955, 8.189493, 13.868617>,  <6.232383, 7.837500, 13.968699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.738955, 8.189493, 13.868617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.622425, 8.111893, 13.493918>,  <6.552506, 8.065332, 13.269099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.622425, 8.111893, 13.493918>,  <6.738955, 8.189493, 13.868617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.622425, 8.111893, 13.493918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115066, 0.979218, -0.167011,
		0.949678, 0.059133, -0.307595,
		-0.291326, -0.194000, -0.936746,
		6.535027, 8.053693, 13.212894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.189665, 8.533303, 13.418429>,  <6.738955, 8.189493, 13.868617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.189665, 8.533303, 13.418429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.845465, 8.486640, 13.220064>,  <6.638945, 8.458642, 13.101045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.845465, 8.486640, 13.220064>,  <7.189665, 8.533303, 13.418429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.845465, 8.486640, 13.220064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001000, 0.973040, -0.230634,
		0.509449, -0.198957, -0.837185,
		-0.860500, -0.116659, -0.495913,
		6.587315, 8.451642, 13.071290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.251134, 8.963902, 12.864635>,  <7.189665, 8.533303, 13.418429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.251134, 8.963902, 12.864635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.855460, 8.905391, 12.860357>,  <6.618056, 8.870284, 12.857791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.855460, 8.905391, 12.860357>,  <7.251134, 8.963902, 12.864635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.855460, 8.905391, 12.860357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131083, 0.914420, -0.382954,
		0.065798, -0.377411, -0.923706,
		-0.989185, -0.146280, -0.010695,
		6.558704, 8.861506, 12.857149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.009535, 9.418933, 12.354333>,  <7.251134, 8.963902, 12.864635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.009535, 9.418933, 12.354333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.671072, 9.326183, 12.546272>,  <6.467995, 9.270534, 12.661436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.671072, 9.326183, 12.546272>,  <7.009535, 9.418933, 12.354333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.671072, 9.326183, 12.546272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333570, 0.932638, -0.137539,
		-0.415632, -0.276443, -0.866504,
		-0.846156, -0.231874, 0.479847,
		6.417225, 9.256621, 12.690227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.557889, 9.708722, 12.001544>,  <7.009535, 9.418933, 12.354333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.557889, 9.708722, 12.001544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.398407, 9.652541, 12.364048>,  <6.302718, 9.618833, 12.581551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.398407, 9.652541, 12.364048>,  <6.557889, 9.708722, 12.001544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.398407, 9.652541, 12.364048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307165, 0.951576, 0.012340,
		-0.864109, -0.273451, -0.422540,
		-0.398705, -0.140453, 0.906260,
		6.278796, 9.610405, 12.635926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.867418, 9.871589, 11.907287>,  <6.557889, 9.708722, 12.001544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.867418, 9.871589, 11.907287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.907633, 9.891246, 12.304774>,  <5.931762, 9.903040, 12.543267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.907633, 9.891246, 12.304774>,  <5.867418, 9.871589, 11.907287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.907633, 9.891246, 12.304774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399592, 0.916680, -0.004905,
		-0.911163, -0.396589, 0.111798,
		0.100538, 0.049143, 0.993719,
		5.937794, 9.905989, 12.602890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.194291, 10.151969, 12.176067>,  <5.867418, 9.871589, 11.907287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.194291, 10.151969, 12.176067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.487639, 10.209538, 12.441834>,  <5.663649, 10.244081, 12.601295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.487639, 10.209538, 12.441834>,  <5.194291, 10.151969, 12.176067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.487639, 10.209538, 12.441834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260039, 0.962398, 0.078554,
		-0.628129, -0.230384, 0.743221,
		0.733372, 0.143924, 0.664419,
		5.707651, 10.252716, 12.641160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.882191, 10.399826, 12.891060>,  <5.194291, 10.151969, 12.176067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.882191, 10.399826, 12.891060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.268113, 10.505007, 12.892302>,  <5.499666, 10.568115, 12.893046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.268113, 10.505007, 12.892302>,  <4.882191, 10.399826, 12.891060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.268113, 10.505007, 12.892302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244247, 0.891669, 0.381142,
		0.097453, -0.368486, 0.924511,
		0.964804, 0.262952, 0.003105,
		5.557554, 10.583893, 12.893233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.007471, 10.724094, 13.635454>,  <4.882191, 10.399826, 12.891060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.007471, 10.724094, 13.635454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.315302, 10.829197, 13.402660>,  <5.500001, 10.892259, 13.262984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.315302, 10.829197, 13.402660>,  <5.007471, 10.724094, 13.635454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.315302, 10.829197, 13.402660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086991, 0.859777, 0.503205,
		0.632597, -0.437884, 0.638810,
		0.769580, 0.262755, -0.581985,
		5.546176, 10.908024, 13.228065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.361248, 11.067695, 14.115568>,  <5.007471, 10.724094, 13.635454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.361248, 11.067695, 14.115568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.512400, 11.154267, 13.755486>,  <5.603090, 11.206211, 13.539437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.512400, 11.154267, 13.755486>,  <5.361248, 11.067695, 14.115568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.512400, 11.154267, 13.755486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239879, 0.916207, 0.320973,
		0.894241, -0.337228, 0.294297,
		0.377878, 0.216431, -0.900203,
		5.625763, 11.219196, 13.485426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.025051, 11.333683, 14.149381>,  <5.361248, 11.067695, 14.115568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.025051, 11.333683, 14.149381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.899531, 11.492805, 13.804525>,  <5.824219, 11.588278, 13.597612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.899531, 11.492805, 13.804525>,  <6.025051, 11.333683, 14.149381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.899531, 11.492805, 13.804525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258799, 0.909457, 0.325441,
		0.913539, -0.120997, -0.388338,
		-0.313800, 0.397804, -0.862138,
		5.805391, 11.612145, 13.545884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.562151, 11.734424, 13.823034>,  <6.025051, 11.333683, 14.149381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.562151, 11.734424, 13.823034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.232924, 11.890246, 13.657719>,  <6.035388, 11.983740, 13.558530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.232924, 11.890246, 13.657719>,  <6.562151, 11.734424, 13.823034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.232924, 11.890246, 13.657719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244396, 0.899803, 0.361422,
		0.512672, 0.196468, -0.835803,
		-0.823066, 0.389558, -0.413288,
		5.986005, 12.007113, 13.533732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.702041, 12.454161, 13.663085>,  <6.562151, 11.734424, 13.823034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.702041, 12.454161, 13.663085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.302340, 12.443170, 13.652228>,  <6.062519, 12.436575, 13.645715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.302340, 12.443170, 13.652228>,  <6.702041, 12.454161, 13.663085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.302340, 12.443170, 13.652228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036784, 0.891274, 0.451970,
		0.011771, 0.452632, -0.891620,
		-0.999254, -0.027477, -0.027141,
		6.002563, 12.434926, 13.644086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.435304, 12.976002, 13.169976>,  <6.702041, 12.454161, 13.663085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.435304, 12.976002, 13.169976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.132402, 12.931133, 13.427342>,  <5.950661, 12.904212, 13.581762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.132402, 12.931133, 13.427342>,  <6.435304, 12.976002, 13.169976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.132402, 12.931133, 13.427342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070009, 0.965524, 0.250724,
		-0.649357, 0.234906, -0.723294,
		-0.757254, -0.112172, 0.643415,
		5.905226, 12.897482, 13.620367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.832657, 13.528916, 13.050270>,  <6.435304, 12.976002, 13.169976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.832657, 13.528916, 13.050270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.773022, 13.398313, 13.423615>,  <5.737241, 13.319950, 13.647621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.773022, 13.398313, 13.423615>,  <5.832657, 13.528916, 13.050270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.773022, 13.398313, 13.423615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218002, 0.931539, 0.291050,
		-0.964494, -0.160082, -0.210061,
		-0.149088, -0.326510, 0.933362,
		5.728296, 13.300360, 13.703623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.316270, 13.961939, 13.134628>,  <5.832657, 13.528916, 13.050270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.316270, 13.961939, 13.134628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.403835, 13.804635, 13.491823>,  <5.456374, 13.710253, 13.706140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.403835, 13.804635, 13.491823>,  <5.316270, 13.961939, 13.134628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.403835, 13.804635, 13.491823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392594, 0.802338, 0.449582,
		-0.893279, -0.449001, 0.021250,
		0.218913, -0.393260, 0.892986,
		5.469509, 13.686657, 13.759719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.637653, 13.935197, 13.461473>,  <5.316270, 13.961939, 13.134628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.637653, 13.935197, 13.461473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.925650, 13.905657, 13.737491>,  <5.098447, 13.887933, 13.903101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.925650, 13.905657, 13.737491>,  <4.637653, 13.935197, 13.461473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.925650, 13.905657, 13.737491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517695, 0.605036, 0.604916,
		-0.462175, -0.792766, 0.397388,
		0.719991, -0.073851, 0.690043,
		5.141647, 13.883502, 13.944504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.334064, 13.732342, 14.142115>,  <4.637653, 13.935197, 13.461473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.334064, 13.732342, 14.142115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.685327, 13.915771, 14.196595>,  <4.896085, 14.025827, 14.229283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.685327, 13.915771, 14.196595>,  <4.334064, 13.732342, 14.142115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.685327, 13.915771, 14.196595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409910, 0.574567, 0.708411,
		0.246600, -0.677927, 0.692533,
		0.878159, 0.458571, 0.136201,
		4.948774, 14.053342, 14.237455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.319908, 13.742755, 14.865305>,  <4.334064, 13.732342, 14.142115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.319908, 13.742755, 14.865305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.587642, 14.010005, 14.735321>,  <4.748282, 14.170355, 14.657331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.587642, 14.010005, 14.735321>,  <4.319908, 13.742755, 14.865305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.587642, 14.010005, 14.735321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171057, 0.564217, 0.807712,
		0.723002, -0.485043, 0.491937,
		0.669334, 0.668127, -0.324959,
		4.788442, 14.210443, 14.637834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.689325, 13.199564, 15.336746>,  <4.319908, 13.742755, 14.865305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.689325, 13.199564, 15.336746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.772706, 13.289083, 15.717580>,  <4.822735, 13.342795, 15.946080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.772706, 13.289083, 15.717580>,  <4.689325, 13.199564, 15.336746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.772706, 13.289083, 15.717580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365596, -0.885067, 0.288090,
		0.907131, -0.408131, -0.102675,
		0.208453, 0.223798, 0.952083,
		4.835242, 13.356223, 16.003204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.092945, 12.676798, 15.613982>,  <4.689325, 13.199564, 15.336746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.092945, 12.676798, 15.613982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.916435, 12.868263, 15.917603>,  <4.810529, 12.983143, 16.099775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.916435, 12.868263, 15.917603>,  <5.092945, 12.676798, 15.613982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.916435, 12.868263, 15.917603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491465, -0.836635, 0.241875,
		0.750826, -0.266314, 0.604432,
		-0.441274, 0.478663, 0.759051,
		4.784053, 13.011862, 16.145317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.394831, 12.345274, 16.219454>,  <5.092945, 12.676798, 15.613982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.394831, 12.345274, 16.219454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.052672, 12.532607, 16.307964>,  <4.847377, 12.645007, 16.361071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.052672, 12.532607, 16.307964>,  <5.394831, 12.345274, 16.219454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.052672, 12.532607, 16.307964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390540, -0.863760, 0.318429,
		0.340258, 0.185967, 0.921759,
		-0.855396, 0.468332, 0.221274,
		4.796053, 12.673107, 16.374346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.303972, 12.128700, 16.892418>,  <5.394831, 12.345274, 16.219454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.303972, 12.128700, 16.892418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.939637, 12.243674, 16.773926>,  <4.721035, 12.312658, 16.702829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.939637, 12.243674, 16.773926>,  <5.303972, 12.128700, 16.892418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.939637, 12.243674, 16.773926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402740, -0.776069, 0.485301,
		-0.090404, 0.561336, 0.822636,
		-0.910839, 0.287435, -0.296232,
		4.666385, 12.329905, 16.685057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.868354, 11.980337, 17.423180>,  <5.303972, 12.128700, 16.892418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.868354, 11.980337, 17.423180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.637996, 12.017060, 17.098238>,  <4.499781, 12.039094, 16.903273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.637996, 12.017060, 17.098238>,  <4.868354, 11.980337, 17.423180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.637996, 12.017060, 17.098238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389356, -0.904542, 0.173797,
		-0.718851, 0.416383, 0.556668,
		-0.575895, 0.091808, -0.812352,
		4.465227, 12.044602, 16.854532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.222909, 11.586406, 17.596893>,  <4.868354, 11.980337, 17.423180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.222909, 11.586406, 17.596893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.216324, 11.606381, 17.197447>,  <4.212374, 11.618367, 16.957779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.216324, 11.606381, 17.197447>,  <4.222909, 11.586406, 17.596893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.216324, 11.606381, 17.197447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341295, -0.939047, -0.041334,
		-0.939812, 0.340143, 0.032505,
		-0.016464, 0.049940, -0.998616,
		4.211386, 11.621363, 16.897861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.659254, 11.151284, 17.401920>,  <4.222909, 11.586406, 17.596893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.659254, 11.151284, 17.401920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.885961, 11.179893, 17.073614>,  <4.021985, 11.197058, 16.876631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.885961, 11.179893, 17.073614>,  <3.659254, 11.151284, 17.401920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.885961, 11.179893, 17.073614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219136, -0.947253, -0.233863,
		-0.794200, 0.312406, -0.521199,
		0.566768, 0.071521, -0.820768,
		4.055991, 11.201348, 16.827383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.299596, 10.780046, 16.819788>,  <3.659254, 11.151284, 17.401920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.299596, 10.780046, 16.819788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.676123, 10.799520, 16.686190>,  <3.902039, 10.811204, 16.606031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.676123, 10.799520, 16.686190>,  <3.299596, 10.780046, 16.819788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.676123, 10.799520, 16.686190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056991, -0.952410, -0.299445,
		-0.332680, 0.300907, -0.893744,
		0.941316, 0.048684, -0.333996,
		3.958518, 10.814125, 16.585991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.288304, 10.418065, 16.187998>,  <3.299596, 10.780046, 16.819788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.288304, 10.418065, 16.187998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.672361, 10.438365, 16.297945>,  <3.902795, 10.450545, 16.363913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.672361, 10.438365, 16.297945>,  <3.288304, 10.418065, 16.187998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.672361, 10.438365, 16.297945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162683, -0.901119, -0.401893,
		0.227290, 0.430591, -0.873459,
		0.960142, 0.050751, 0.274866,
		3.960404, 10.453590, 16.380405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.621803, 10.247933, 15.628406>,  <3.288304, 10.418065, 16.187998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.621803, 10.247933, 15.628406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.903193, 10.200514, 15.908711>,  <4.072027, 10.172062, 16.076895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.903193, 10.200514, 15.908711>,  <3.621803, 10.247933, 15.628406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.903193, 10.200514, 15.908711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421775, -0.723962, -0.545880,
		0.572040, 0.679577, -0.459288,
		0.703475, -0.118549, 0.700764,
		4.114235, 10.164949, 16.118940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.257645, 10.034048, 15.274615>,  <3.621803, 10.247933, 15.628406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.257645, 10.034048, 15.274615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.323939, 9.913185, 15.650111>,  <4.363715, 9.840667, 15.875409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.323939, 9.913185, 15.650111>,  <4.257645, 10.034048, 15.274615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.323939, 9.913185, 15.650111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430238, -0.834384, -0.344528,
		0.887371, 0.460982, -0.008287,
		0.165736, -0.302158, 0.938740,
		4.373660, 9.822537, 15.931733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.834470, 9.597144, 15.215878>,  <4.257645, 10.034048, 15.274615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.834470, 9.597144, 15.215878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.712645, 9.488188, 15.580964>,  <4.639549, 9.422814, 15.800015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.712645, 9.488188, 15.580964>,  <4.834470, 9.597144, 15.215878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.712645, 9.488188, 15.580964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364358, -0.918673, -0.152587,
		0.880048, 0.286082, 0.379041,
		-0.304563, -0.272391, 0.912713,
		4.621276, 9.406470, 15.854778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.416569, 9.374981, 15.645788>,  <4.834470, 9.597144, 15.215878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.416569, 9.374981, 15.645788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.089892, 9.198867, 15.795007>,  <4.893886, 9.093199, 15.884538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.089892, 9.198867, 15.795007>,  <5.416569, 9.374981, 15.645788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.089892, 9.198867, 15.795007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359085, -0.893775, -0.268745,
		0.451743, -0.085527, 0.888039,
		-0.816692, -0.440285, 0.373046,
		4.844884, 9.066781, 15.906920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.639813, 8.698017, 15.990069>,  <5.416569, 9.374981, 15.645788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.639813, 8.698017, 15.990069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.246214, 8.673919, 15.922993>,  <5.010055, 8.659460, 15.882747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.246214, 8.673919, 15.922993>,  <5.639813, 8.698017, 15.990069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.246214, 8.673919, 15.922993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087753, -0.982914, -0.161803,
		-0.155078, -0.173929, 0.972471,
		-0.983997, -0.060245, -0.167691,
		4.951015, 8.655846, 15.872685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.462082, 8.044399, 16.237379>,  <5.639813, 8.698017, 15.990069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.462082, 8.044399, 16.237379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.109354, 8.121163, 16.065069>,  <4.897718, 8.167222, 15.961683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.109354, 8.121163, 16.065069>,  <5.462082, 8.044399, 16.237379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.109354, 8.121163, 16.065069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054194, -0.948640, -0.311680,
		-0.468463, -0.251501, 0.846930,
		-0.881819, 0.191909, -0.430773,
		4.844809, 8.178736, 15.935837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.943979, 7.650203, 16.518671>,  <5.462082, 8.044399, 16.237379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.943979, 7.650203, 16.518671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.816267, 7.739995, 16.150394>,  <4.739641, 7.793871, 15.929429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.816267, 7.739995, 16.150394>,  <4.943979, 7.650203, 16.518671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.816267, 7.739995, 16.150394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066625, -0.963818, -0.258101,
		-0.945316, -0.143747, 0.292771,
		-0.319279, 0.224481, -0.920689,
		4.720484, 7.807340, 15.874187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.345578, 7.248765, 16.439804>,  <4.943979, 7.650203, 16.518671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.345578, 7.248765, 16.439804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.478018, 7.352218, 16.076820>,  <4.557483, 7.414289, 15.859030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.478018, 7.352218, 16.076820>,  <4.345578, 7.248765, 16.439804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.478018, 7.352218, 16.076820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068908, -0.965763, -0.250105,
		-0.941076, 0.020279, -0.337587,
		0.331101, 0.258631, -0.907459,
		4.577349, 7.429807, 15.804583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.934829, 6.945031, 16.063862>,  <4.345578, 7.248765, 16.439804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.934829, 6.945031, 16.063862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.250186, 7.007780, 15.825929>,  <4.439401, 7.045429, 15.683168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.250186, 7.007780, 15.825929>,  <3.934829, 6.945031, 16.063862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.250186, 7.007780, 15.825929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009691, -0.969987, -0.242965,
		-0.615095, 0.185787, -0.766251,
		0.788394, 0.156872, -0.594833,
		4.486704, 7.054841, 15.647479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.815075, 6.517050, 15.494552>,  <3.934829, 6.945031, 16.063862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.815075, 6.517050, 15.494552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.200432, 6.599753, 15.426283>,  <4.431646, 6.649375, 15.385322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.200432, 6.599753, 15.426283>,  <3.815075, 6.517050, 15.494552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.200432, 6.599753, 15.426283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126786, -0.912267, -0.389480,
		-0.236227, 0.353582, -0.905084,
		0.963391, 0.206758, -0.170672,
		4.489449, 6.661781, 15.375081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.952861, 5.994226, 14.965314>,  <3.815075, 6.517050, 15.494552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.952861, 5.994226, 14.965314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.321005, 6.121693, 15.055993>,  <4.541891, 6.198173, 15.110400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.321005, 6.121693, 15.055993>,  <3.952861, 5.994226, 14.965314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.321005, 6.121693, 15.055993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391009, -0.760447, -0.518490,
		0.007166, 0.565838, -0.824486,
		0.920359, 0.318665, 0.226697,
		4.597113, 6.217292, 15.124002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.380552, 6.026513, 14.303499>,  <3.952861, 5.994226, 14.965314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.380552, 6.026513, 14.303499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.599561, 5.961492, 14.631840>,  <4.730967, 5.922480, 14.828844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.599561, 5.961492, 14.631840>,  <4.380552, 6.026513, 14.303499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.599561, 5.961492, 14.631840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362717, -0.837902, -0.407868,
		0.754092, 0.521053, -0.399811,
		0.547523, -0.162551, 0.820850,
		4.763818, 5.912726, 14.878095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.269892, 20.333290, 24.765326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.986176, 20.089579, 24.907135>,  <14.815948, 19.943352, 24.992222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.986176, 20.089579, 24.907135>,  <15.269892, 20.333290, 24.765326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.986176, 20.089579, 24.907135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008749, 0.495283, 0.868688,
		-0.704863, 0.619253, -0.345968,
		-0.709289, -0.609279, 0.354525,
		14.773390, 19.906796, 25.013493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.859565, 20.812969, 25.144276>,  <15.269892, 20.333290, 24.765326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.859565, 20.812969, 25.144276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.776011, 20.442308, 25.269291>,  <14.725880, 20.219912, 25.344299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.776011, 20.442308, 25.269291>,  <14.859565, 20.812969, 25.144276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.776011, 20.442308, 25.269291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110361, 0.339882, 0.933970,
		-0.971693, 0.160599, -0.173262,
		-0.208884, -0.926654, 0.312537,
		14.713346, 20.164312, 25.363052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201201, 20.822714, 25.422281>,  <14.859565, 20.812969, 25.144276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201201, 20.822714, 25.422281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.412167, 20.524643, 25.585522>,  <14.538746, 20.345800, 25.683466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.412167, 20.524643, 25.585522>,  <14.201201, 20.822714, 25.422281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.412167, 20.524643, 25.585522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019291, 0.469713, 0.882608,
		-0.849391, -0.473371, 0.233357,
		0.527412, -0.745178, 0.408102,
		14.570390, 20.301090, 25.707952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.052204, 20.894299, 26.066624>,  <14.201201, 20.822714, 25.422281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.052204, 20.894299, 26.066624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.352814, 20.632935, 26.102983>,  <14.533179, 20.476116, 26.124800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.352814, 20.632935, 26.102983>,  <14.052204, 20.894299, 26.066624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.352814, 20.632935, 26.102983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208070, 0.365527, 0.907247,
		-0.626033, -0.662905, 0.410657,
		0.751525, -0.653412, 0.090901,
		14.578271, 20.436911, 26.130255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918072, 20.419889, 26.639294>,  <14.052204, 20.894299, 26.066624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.918072, 20.419889, 26.639294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.314272, 20.430120, 26.585249>,  <14.551992, 20.436260, 26.552822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.314272, 20.430120, 26.585249>,  <13.918072, 20.419889, 26.639294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.314272, 20.430120, 26.585249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127864, 0.190221, 0.973379,
		0.050597, -0.981408, 0.185144,
		0.990500, 0.025577, -0.135111,
		14.611422, 20.437794, 26.544716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.152649, 20.116159, 27.190031>,  <13.918072, 20.419889, 26.639294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.152649, 20.116159, 27.190031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.458137, 20.331690, 27.047821>,  <14.641429, 20.461008, 26.962496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.458137, 20.331690, 27.047821>,  <14.152649, 20.116159, 27.190031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.458137, 20.331690, 27.047821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139974, 0.399409, 0.906024,
		0.630190, -0.741712, 0.229614,
		0.763719, 0.538828, -0.355524,
		14.687252, 20.493338, 26.941164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.761076, 19.999912, 27.612520>,  <14.152649, 20.116159, 27.190031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.761076, 19.999912, 27.612520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.830027, 20.353642, 27.438965>,  <14.871397, 20.565878, 27.334831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.830027, 20.353642, 27.438965>,  <14.761076, 19.999912, 27.612520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.830027, 20.353642, 27.438965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169826, 0.407208, 0.897408,
		0.970281, -0.228378, -0.079987,
		0.172377, 0.884322, -0.433891,
		14.881740, 20.618938, 27.308798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.462955, 20.332247, 27.816883>,  <14.761076, 19.999912, 27.612520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.462955, 20.332247, 27.816883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.190879, 20.600178, 27.697773>,  <15.027633, 20.760937, 27.626307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.190879, 20.600178, 27.697773>,  <15.462955, 20.332247, 27.816883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.190879, 20.600178, 27.697773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175350, 0.543107, 0.821150,
		0.711752, 0.506326, -0.486871,
		-0.680192, 0.669828, -0.297773,
		14.986821, 20.801126, 27.608440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723911, 20.802616, 28.040033>,  <15.462955, 20.332247, 27.816883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.723911, 20.802616, 28.040033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.369141, 20.961264, 27.945330>,  <15.156278, 21.056452, 27.888508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.369141, 20.961264, 27.945330>,  <15.723911, 20.802616, 28.040033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.369141, 20.961264, 27.945330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089736, 0.650751, 0.753970,
		0.453108, 0.647471, -0.612760,
		-0.886927, 0.396617, -0.236759,
		15.103063, 21.080248, 27.874302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.932518, 21.382210, 27.931105>,  <15.723911, 20.802616, 28.040033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.932518, 21.382210, 27.931105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.540043, 21.405865, 28.004616>,  <15.304558, 21.420057, 28.048721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.540043, 21.405865, 28.004616>,  <15.932518, 21.382210, 27.931105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.540043, 21.405865, 28.004616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185074, 0.559035, 0.808225,
		-0.054940, 0.827032, -0.559463,
		-0.981188, 0.059138, 0.183776,
		15.245687, 21.423607, 28.059748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760141, 22.147322, 28.001577>,  <15.932518, 21.382210, 27.931105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.760141, 22.147322, 28.001577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.442529, 21.963427, 28.160652>,  <15.251961, 21.853090, 28.256098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.442529, 21.963427, 28.160652>,  <15.760141, 22.147322, 28.001577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442529, 21.963427, 28.160652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029219, 0.624604, 0.780395,
		-0.607174, 0.631278, -0.482523,
		-0.794032, -0.459736, 0.397688,
		15.204319, 21.825506, 28.279959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352442, 22.659702, 28.347158>,  <15.760141, 22.147322, 28.001577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.352442, 22.659702, 28.347158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.250820, 22.315844, 28.524456>,  <15.189847, 22.109528, 28.630835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.250820, 22.315844, 28.524456>,  <15.352442, 22.659702, 28.347158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.250820, 22.315844, 28.524456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327122, 0.354899, 0.875807,
		-0.910191, 0.367497, 0.191046,
		-0.254054, -0.859647, 0.443242,
		15.174604, 22.057949, 28.657429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825989, 23.254921, 28.469578>,  <15.352442, 22.659702, 28.347158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825989, 23.254921, 28.469578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.011606, 23.178932, 28.815659>,  <16.122976, 23.133339, 29.023306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.011606, 23.178932, 28.815659>,  <15.825989, 23.254921, 28.469578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.011606, 23.178932, 28.815659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230979, 0.968893, 0.088858,
		-0.855168, 0.158610, 0.493489,
		0.464044, -0.189974, 0.865201,
		16.150820, 23.121941, 29.075218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689985, 23.870853, 28.727915>,  <15.825989, 23.254921, 28.469578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.689985, 23.870853, 28.727915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.968592, 23.730515, 28.978283>,  <16.135756, 23.646311, 29.128504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.968592, 23.730515, 28.978283>,  <15.689985, 23.870853, 28.727915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968592, 23.730515, 28.978283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158345, 0.925959, 0.342823,
		-0.699852, -0.139670, 0.700499,
		0.696515, -0.350846, 0.625918,
		16.177546, 23.625261, 29.166058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279160, 24.264919, 29.233381>,  <15.689985, 23.870853, 28.727915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279160, 24.264919, 29.233381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.919342, 24.336351, 29.073919>,  <14.703451, 24.379211, 28.978241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.919342, 24.336351, 29.073919>,  <15.279160, 24.264919, 29.233381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919342, 24.336351, 29.073919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342816, -0.277012, -0.897631,
		-0.270717, -0.944129, 0.187971,
		-0.899549, 0.178565, -0.398655,
		14.649478, 24.389925, 28.954323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875961, 23.679365, 28.889935>,  <15.279160, 24.264919, 29.233381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.875961, 23.679365, 28.889935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.800696, 24.032574, 28.717951>,  <14.755537, 24.244499, 28.614759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.800696, 24.032574, 28.717951>,  <14.875961, 23.679365, 28.889935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800696, 24.032574, 28.717951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319256, -0.359014, -0.877032,
		-0.928800, -0.302293, -0.214357,
		-0.188163, 0.883022, -0.429961,
		14.744247, 24.297480, 28.588963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.617561, 23.487066, 28.186308>,  <14.875961, 23.679365, 28.889935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.617561, 23.487066, 28.186308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.664162, 23.882421, 28.147278>,  <14.692122, 24.119635, 28.123859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.664162, 23.882421, 28.147278>,  <14.617561, 23.487066, 28.186308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.664162, 23.882421, 28.147278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367073, -0.134136, -0.920470,
		-0.922868, 0.071419, -0.378437,
		0.116501, 0.988386, -0.097574,
		14.699112, 24.178938, 28.118006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.243631, 23.670637, 27.598690>,  <14.617561, 23.487066, 28.186308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.243631, 23.670637, 27.598690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.532533, 23.946833, 27.614571>,  <14.705873, 24.112551, 27.624100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.532533, 23.946833, 27.614571>,  <14.243631, 23.670637, 27.598690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.532533, 23.946833, 27.614571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154660, -0.105291, -0.982341,
		-0.674115, 0.715639, -0.182838,
		0.722253, 0.690489, 0.039702,
		14.749208, 24.153980, 27.626482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078917, 24.170259, 27.115891>,  <14.243631, 23.670637, 27.598690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.078917, 24.170259, 27.115891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.475439, 24.151987, 27.165245>,  <14.713352, 24.141024, 27.194859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.475439, 24.151987, 27.165245>,  <14.078917, 24.170259, 27.115891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.475439, 24.151987, 27.165245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119551, -0.078872, -0.989690,
		0.054942, 0.995837, -0.072725,
		0.991307, -0.045681, 0.123387,
		14.772831, 24.138283, 27.202261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.405926, 24.540466, 26.460762>,  <14.078917, 24.170259, 27.115891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.405926, 24.540466, 26.460762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.723854, 24.354599, 26.616888>,  <14.914611, 24.243078, 26.710564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.723854, 24.354599, 26.616888>,  <14.405926, 24.540466, 26.460762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723854, 24.354599, 26.616888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239565, -0.350688, -0.905332,
		0.557557, 0.813082, -0.167416,
		0.794820, -0.464668, 0.390315,
		14.962300, 24.215199, 26.733982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951346, 24.799379, 26.044485>,  <14.405926, 24.540466, 26.460762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951346, 24.799379, 26.044485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.078433, 24.462475, 26.218683>,  <15.154685, 24.260332, 26.323202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.078433, 24.462475, 26.218683>,  <14.951346, 24.799379, 26.044485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.078433, 24.462475, 26.218683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393878, -0.300553, -0.868636,
		0.862506, 0.447511, 0.236257,
		0.317717, -0.842260, 0.435494,
		15.173748, 24.209797, 26.349331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588209, 24.700417, 25.766424>,  <14.951346, 24.799379, 26.044485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.588209, 24.700417, 25.766424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.479313, 24.336235, 25.890978>,  <15.413976, 24.117725, 25.965710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.479313, 24.336235, 25.890978>,  <15.588209, 24.700417, 25.766424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.479313, 24.336235, 25.890978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312330, -0.389695, -0.866365,
		0.910129, -0.138605, 0.390452,
		-0.272240, -0.910454, 0.311382,
		15.397641, 24.063099, 25.984392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113958, 24.275862, 25.554550>,  <15.588209, 24.700417, 25.766424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113958, 24.275862, 25.554550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.823807, 24.006502, 25.611620>,  <15.649715, 23.844887, 25.645863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.823807, 24.006502, 25.611620>,  <16.113958, 24.275862, 25.554550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.823807, 24.006502, 25.611620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206434, -0.410549, -0.888164,
		0.656664, -0.614803, 0.436817,
		-0.725381, -0.673399, 0.142677,
		15.606193, 23.804482, 25.654423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338282, 23.662504, 25.293045>,  <16.113958, 24.275862, 25.554550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.338282, 23.662504, 25.293045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.945773, 23.585526, 25.296331>,  <15.710268, 23.539339, 25.298304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.945773, 23.585526, 25.296331>,  <16.338282, 23.662504, 25.293045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.945773, 23.585526, 25.296331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095496, -0.523090, -0.846911,
		0.167284, -0.830266, 0.531672,
		-0.981273, -0.192447, 0.008218,
		15.651391, 23.527792, 25.298796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244049, 22.961628, 25.044989>,  <16.338282, 23.662504, 25.293045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.244049, 22.961628, 25.044989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.887004, 23.129534, 24.979216>,  <15.672777, 23.230278, 24.939751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.887004, 23.129534, 24.979216>,  <16.244049, 22.961628, 25.044989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.887004, 23.129534, 24.979216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010850, -0.384640, -0.923003,
		-0.450696, -0.822099, 0.347889,
		-0.892611, 0.419769, -0.164436,
		15.619220, 23.255463, 24.929886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868206, 22.296185, 24.691633>,  <16.244049, 22.961628, 25.044989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868206, 22.296185, 24.691633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.637160, 22.616091, 24.626225>,  <15.498533, 22.808035, 24.586979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.637160, 22.616091, 24.626225>,  <15.868206, 22.296185, 24.691633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637160, 22.616091, 24.626225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237078, -0.356040, -0.903897,
		-0.781125, -0.483336, 0.395260,
		-0.577614, 0.799764, -0.163523,
		15.463876, 22.856020, 24.577168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.199480, 21.960361, 24.486561>,  <15.868206, 22.296185, 24.691633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.199480, 21.960361, 24.486561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.211139, 22.345373, 24.378716>,  <15.218134, 22.576380, 24.314009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.211139, 22.345373, 24.378716>,  <15.199480, 21.960361, 24.486561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.211139, 22.345373, 24.378716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018390, -0.270198, -0.962629,
		-0.999406, 0.023100, -0.025576,
		0.029147, 0.962527, -0.269613,
		15.219883, 22.634132, 24.297832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602211, 22.093184, 24.030014>,  <15.199480, 21.960361, 24.486561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602211, 22.093184, 24.030014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.885998, 22.365076, 23.955585>,  <15.056270, 22.528212, 23.910929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.885998, 22.365076, 23.955585>,  <14.602211, 22.093184, 24.030014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.885998, 22.365076, 23.955585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038850, -0.301348, -0.952722,
		-0.703666, 0.668697, -0.240204,
		0.709468, 0.679730, -0.186070,
		15.098838, 22.568995, 23.899765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.936009, 22.514717, 24.105398>,  <14.602211, 22.093184, 24.030014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.936009, 22.514717, 24.105398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.553206, 22.526939, 23.990019>,  <13.323524, 22.534273, 23.920792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.553206, 22.526939, 23.990019>,  <13.936009, 22.514717, 24.105398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.553206, 22.526939, 23.990019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267279, 0.293422, 0.917859,
		0.112684, 0.955495, -0.272640,
		-0.957008, 0.030557, -0.288447,
		13.266104, 22.536106, 23.903484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.665530, 23.221729, 24.186052>,  <13.936009, 22.514717, 24.105398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.665530, 23.221729, 24.186052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.346128, 22.981857, 24.207108>,  <13.154486, 22.837934, 24.219740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.346128, 22.981857, 24.207108>,  <13.665530, 23.221729, 24.186052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.346128, 22.981857, 24.207108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252781, 0.413372, 0.874772,
		-0.546343, 0.685205, -0.481668,
		-0.798506, -0.599681, 0.052636,
		13.106576, 22.801952, 24.222898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.054060, 23.628649, 24.512648>,  <13.665530, 23.221729, 24.186052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.054060, 23.628649, 24.512648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.955837, 23.243536, 24.557812>,  <12.896904, 23.012468, 24.584909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.955837, 23.243536, 24.557812>,  <13.054060, 23.628649, 24.512648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.955837, 23.243536, 24.557812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236573, 0.172473, 0.956183,
		-0.940072, 0.208086, -0.270121,
		-0.245557, -0.962784, 0.112909,
		12.882170, 22.954700, 24.591684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.422561, 23.675667, 24.691395>,  <13.054060, 23.628649, 24.512648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.422561, 23.675667, 24.691395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.528046, 23.306875, 24.804821>,  <12.591336, 23.085600, 24.872877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.528046, 23.306875, 24.804821>,  <12.422561, 23.675667, 24.691395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.528046, 23.306875, 24.804821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249722, 0.218696, 0.943298,
		-0.931716, -0.319571, -0.172566,
		0.263711, -0.921979, 0.283567,
		12.607160, 23.030281, 24.889891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.800590, 23.442305, 25.114950>,  <12.422561, 23.675667, 24.691395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.800590, 23.442305, 25.114950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.116402, 23.219463, 25.217928>,  <12.305889, 23.085758, 25.279715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.116402, 23.219463, 25.217928>,  <11.800590, 23.442305, 25.114950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.116402, 23.219463, 25.217928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258257, 0.078937, 0.962846,
		-0.556727, -0.826683, -0.081553,
		0.789530, -0.557104, 0.257443,
		12.353261, 23.052332, 25.295160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.541862, 23.134161, 25.577908>,  <11.800590, 23.442305, 25.114950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.541862, 23.134161, 25.577908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.936580, 23.116722, 25.640310>,  <12.173410, 23.106258, 25.677752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.936580, 23.116722, 25.640310>,  <11.541862, 23.134161, 25.577908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.936580, 23.116722, 25.640310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149994, 0.117724, 0.981653,
		-0.061162, -0.992089, 0.109630,
		0.986794, -0.043596, 0.156008,
		12.232617, 23.103643, 25.687113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.604826, 22.812757, 26.210587>,  <11.541862, 23.134161, 25.577908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.604826, 22.812757, 26.210587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.970694, 22.969135, 26.169519>,  <12.190214, 23.062962, 26.144880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.970694, 22.969135, 26.169519>,  <11.604826, 22.812757, 26.210587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.970694, 22.969135, 26.169519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020976, 0.299564, 0.953845,
		0.403659, -0.870299, 0.282203,
		0.914669, 0.390948, -0.102667,
		12.245094, 23.086420, 26.138720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.558725, 22.108397, 26.447460>,  <11.604826, 22.812757, 26.210587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.558725, 22.108397, 26.447460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.264611, 21.964495, 26.677219>,  <11.088143, 21.878153, 26.815075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.264611, 21.964495, 26.677219>,  <11.558725, 22.108397, 26.447460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.264611, 21.964495, 26.677219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351955, -0.521592, -0.777219,
		0.579210, -0.773639, 0.256901,
		-0.735284, -0.359756, 0.574398,
		11.044026, 21.856567, 26.849539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.724787, 21.457634, 26.328989>,  <11.558725, 22.108397, 26.447460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.724787, 21.457634, 26.328989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.341565, 21.515625, 26.427876>,  <11.111632, 21.550421, 26.487207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.341565, 21.515625, 26.427876>,  <11.724787, 21.457634, 26.328989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.341565, 21.515625, 26.427876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285652, -0.552809, -0.782819,
		0.023171, -0.820600, 0.571033,
		-0.958053, 0.144978, 0.247215,
		11.054149, 21.559118, 26.502041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.544933, 20.941015, 26.029598>,  <11.724787, 21.457634, 26.328989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.544933, 20.941015, 26.029598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.191566, 21.097107, 26.133358>,  <10.979545, 21.190762, 26.195614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.191566, 21.097107, 26.133358>,  <11.544933, 20.941015, 26.029598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.191566, 21.097107, 26.133358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454111, -0.576470, -0.679312,
		-0.115551, -0.717915, 0.686473,
		-0.883420, 0.390230, 0.259402,
		10.926539, 21.214176, 26.211178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.000696, 20.423887, 26.297283>,  <11.544933, 20.941015, 26.029598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.000696, 20.423887, 26.297283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.811263, 20.737318, 26.136423>,  <10.697603, 20.925377, 26.039907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.811263, 20.737318, 26.136423>,  <11.000696, 20.423887, 26.297283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.811263, 20.737318, 26.136423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462698, -0.609863, -0.643412,
		-0.749421, -0.118633, 0.651379,
		-0.473582, 0.783578, -0.402152,
		10.669188, 20.972391, 26.015778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.485373, 20.089663, 25.996826>,  <11.000696, 20.423887, 26.297283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.485373, 20.089663, 25.996826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.437327, 20.461483, 25.857391>,  <10.408501, 20.684574, 25.773731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.437327, 20.461483, 25.857391>,  <10.485373, 20.089663, 25.996826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.437327, 20.461483, 25.857391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463344, -0.363028, -0.808407,
		-0.878000, 0.064415, 0.474306,
		-0.120113, 0.929549, -0.348585,
		10.401294, 20.740347, 25.752815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.746556, 20.265741, 25.802277>,  <10.485373, 20.089663, 25.996826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.746556, 20.265741, 25.802277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.979465, 20.497295, 25.573944>,  <10.119211, 20.636229, 25.436945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.979465, 20.497295, 25.573944>,  <9.746556, 20.265741, 25.802277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.979465, 20.497295, 25.573944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420830, -0.386137, -0.820854,
		-0.695600, 0.718184, 0.018775,
		0.582274, 0.578887, -0.570830,
		10.154148, 20.670961, 25.402695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.381141, 20.628820, 25.330214>,  <9.746556, 20.265741, 25.802277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.381141, 20.628820, 25.330214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.742159, 20.635006, 25.158087>,  <9.958770, 20.638718, 25.054811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.742159, 20.635006, 25.158087>,  <9.381141, 20.628820, 25.330214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.742159, 20.635006, 25.158087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373190, -0.470436, -0.799637,
		-0.214801, 0.882299, -0.418819,
		0.902546, 0.015463, -0.430315,
		10.012922, 20.639645, 25.028992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<18.077272, 18.613529, 25.997753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.385719, 18.358957, 26.005100>,  <18.570787, 18.206215, 26.009508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.385719, 18.358957, 26.005100>,  <18.077272, 18.613529, 25.997753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.385719, 18.358957, 26.005100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632490, 0.762397, -0.136772,
		0.073043, 0.117084, 0.990432,
		0.771117, -0.636429, 0.018367,
		18.617054, 18.168028, 26.010611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.655313, 18.726515, 26.518873>,  <18.077272, 18.613529, 25.997753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.655313, 18.726515, 26.518873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.802937, 18.575121, 26.179335>,  <18.891510, 18.484283, 25.975611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.802937, 18.575121, 26.179335>,  <18.655313, 18.726515, 26.518873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.802937, 18.575121, 26.179335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348897, 0.902946, -0.250916,
		0.861433, -0.203557, 0.465294,
		0.369059, -0.378487, -0.848848,
		18.913654, 18.461575, 25.924681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260971, 18.269503, 26.975821>,  <18.655313, 18.726515, 26.518873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260971, 18.269503, 26.975821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.557062, 18.020540, 27.077545>,  <18.734716, 17.871162, 27.138580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.557062, 18.020540, 27.077545>,  <18.260971, 18.269503, 26.975821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.557062, 18.020540, 27.077545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205874, -0.150254, -0.966974,
		0.640060, 0.768139, 0.016915,
		0.740229, -0.622404, 0.254311,
		18.779131, 17.833818, 27.153839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.948334, 17.584368, 26.832920>,  <18.260971, 18.269503, 26.975821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.948334, 17.584368, 26.832920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.004629, 17.277004, 27.082636>,  <18.038406, 17.092587, 27.232466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.004629, 17.277004, 27.082636>,  <17.948334, 17.584368, 26.832920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004629, 17.277004, 27.082636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520013, 0.479208, 0.707068,
		-0.842484, -0.424152, -0.332140,
		0.140740, -0.768411, 0.624290,
		18.046852, 17.046480, 27.269922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.371613, 17.184191, 27.017376>,  <17.948334, 17.584368, 26.832920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.371613, 17.184191, 27.017376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.623211, 17.191355, 27.328257>,  <17.774170, 17.195654, 27.514786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.623211, 17.191355, 27.328257>,  <17.371613, 17.184191, 27.017376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623211, 17.191355, 27.328257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611013, 0.629504, 0.479988,
		-0.480655, -0.776791, 0.406898,
		0.628994, 0.017911, 0.777203,
		17.811909, 17.196728, 27.561419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028574, 16.966360, 27.577879>,  <17.371613, 17.184191, 27.017376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028574, 16.966360, 27.577879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.283863, 17.243103, 27.712938>,  <17.437037, 17.409149, 27.793974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.283863, 17.243103, 27.712938>,  <17.028574, 16.966360, 27.577879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.283863, 17.243103, 27.712938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769119, 0.592140, 0.240471,
		-0.033563, -0.413165, 0.910037,
		0.638224, 0.691856, 0.337647,
		17.475330, 17.450661, 27.814232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.746796, 17.261620, 28.225485>,  <17.028574, 16.966360, 27.577879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.746796, 17.261620, 28.225485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.962044, 17.527426, 28.018084>,  <17.091192, 17.686911, 27.893642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.962044, 17.527426, 28.018084>,  <16.746796, 17.261620, 28.225485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962044, 17.527426, 28.018084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787315, 0.615927, -0.027728,
		0.300933, 0.423145, 0.854627,
		0.538121, 0.664516, -0.518501,
		17.123480, 17.726780, 27.862534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.420362, 16.528374, 28.236013>,  <16.746796, 17.261620, 28.225485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.420362, 16.528374, 28.236013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.080385, 16.733601, 28.188087>,  <15.876399, 16.856737, 28.159332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.080385, 16.733601, 28.188087>,  <16.420362, 16.528374, 28.236013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.080385, 16.733601, 28.188087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303008, -0.662036, -0.685489,
		-0.431023, -0.546323, 0.718157,
		-0.849944, 0.513069, -0.119812,
		15.825402, 16.887522, 28.152143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968146, 16.052876, 28.159195>,  <16.420362, 16.528374, 28.236013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.968146, 16.052876, 28.159195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.801098, 16.378738, 27.998232>,  <15.700869, 16.574255, 27.901655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.801098, 16.378738, 27.998232>,  <15.968146, 16.052876, 28.159195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.801098, 16.378738, 27.998232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359661, -0.554914, -0.750143,
		-0.834409, -0.168545, 0.524743,
		-0.417620, 0.814655, -0.402406,
		15.675812, 16.623135, 27.877510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.225553, 15.836212, 27.966759>,  <15.968146, 16.052876, 28.159195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.225553, 15.836212, 27.966759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.317251, 16.160097, 27.750679>,  <15.372271, 16.354427, 27.621031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.317251, 16.160097, 27.750679>,  <15.225553, 15.836212, 27.966759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.317251, 16.160097, 27.750679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487200, -0.385003, -0.783843,
		-0.842664, 0.442877, 0.306231,
		0.229246, 0.809712, -0.540197,
		15.386025, 16.403011, 27.588619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.578550, 16.112328, 27.670628>,  <15.225553, 15.836212, 27.966759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.578550, 16.112328, 27.670628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.870262, 16.253023, 27.435875>,  <15.045289, 16.337440, 27.295023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.870262, 16.253023, 27.435875>,  <14.578550, 16.112328, 27.670628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.870262, 16.253023, 27.435875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470558, -0.364859, -0.803401,
		-0.496716, 0.862066, -0.100571,
		0.729279, 0.351738, -0.586884,
		15.089046, 16.358545, 27.259809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.244876, 16.456903, 27.064293>,  <14.578550, 16.112328, 27.670628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.244876, 16.456903, 27.064293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.619311, 16.370661, 26.953115>,  <14.843972, 16.318914, 26.886408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.619311, 16.370661, 26.953115>,  <14.244876, 16.456903, 27.064293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.619311, 16.370661, 26.953115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320610, -0.197823, -0.926324,
		0.144739, 0.956232, -0.254306,
		0.936088, -0.215608, -0.277945,
		14.900138, 16.305979, 26.869732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.550879, 16.438911, 26.776340>,  <14.244876, 16.456903, 27.064293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.550879, 16.438911, 26.776340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.178858, 16.361074, 26.901005>,  <12.955645, 16.314373, 26.975803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.178858, 16.361074, 26.901005>,  <13.550879, 16.438911, 26.776340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.178858, 16.361074, 26.901005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201881, 0.438074, 0.875976,
		-0.306989, 0.877624, -0.368149,
		-0.930055, -0.194593, 0.311660,
		12.899841, 16.302696, 26.994503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.326423, 17.018694, 26.922018>,  <13.550879, 16.438911, 26.776340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.326423, 17.018694, 26.922018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.106804, 16.766863, 27.141901>,  <12.975033, 16.615765, 27.273830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.106804, 16.766863, 27.141901>,  <13.326423, 17.018694, 26.922018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.106804, 16.766863, 27.141901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043843, 0.635108, 0.771178,
		-0.834641, 0.447514, -0.321102,
		-0.549047, -0.629578, 0.549708,
		12.942090, 16.577990, 27.306814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.798522, 17.435173, 27.257299>,  <13.326423, 17.018694, 26.922018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.798522, 17.435173, 27.257299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.838273, 17.103123, 27.476761>,  <12.862123, 16.903893, 27.608437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.838273, 17.103123, 27.476761>,  <12.798522, 17.435173, 27.257299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.838273, 17.103123, 27.476761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125915, 0.536458, 0.834481,
		-0.987051, -0.152012, -0.051213,
		0.099378, -0.830123, 0.548652,
		12.868087, 16.854086, 27.641357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.451825, 17.631872, 27.828875>,  <12.798522, 17.435173, 27.257299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.451825, 17.631872, 27.828875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.616047, 17.290398, 27.957039>,  <12.714581, 17.085512, 28.033937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.616047, 17.290398, 27.957039>,  <12.451825, 17.631872, 27.828875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.616047, 17.290398, 27.957039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011021, 0.356012, 0.934416,
		-0.911769, -0.380098, 0.155571,
		0.410555, -0.853686, 0.320412,
		12.739214, 17.034292, 28.053162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.036709, 17.367064, 28.472160>,  <12.451825, 17.631872, 27.828875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.036709, 17.367064, 28.472160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.410589, 17.228481, 28.503912>,  <12.634917, 17.145332, 28.522963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.410589, 17.228481, 28.503912>,  <12.036709, 17.367064, 28.472160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.410589, 17.228481, 28.503912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082663, 0.429102, 0.899466,
		-0.345689, -0.834170, 0.429721,
		0.934701, -0.346458, 0.079381,
		12.691000, 17.124544, 28.527725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.948600, 17.117943, 29.119503>,  <12.036709, 17.367064, 28.472160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.948600, 17.117943, 29.119503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.335836, 17.139393, 29.021587>,  <12.568178, 17.152264, 28.962837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.335836, 17.139393, 29.021587>,  <11.948600, 17.117943, 29.119503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.335836, 17.139393, 29.021587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183185, 0.515131, 0.837307,
		0.171001, -0.855432, 0.488871,
		0.968092, 0.053626, -0.244790,
		12.626264, 17.155481, 28.948151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.133822, 17.211920, 29.719572>,  <11.948600, 17.117943, 29.119503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.133822, 17.211920, 29.719572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.442376, 17.323544, 29.490805>,  <12.627508, 17.390518, 29.353544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.442376, 17.323544, 29.490805>,  <12.133822, 17.211920, 29.719572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.442376, 17.323544, 29.490805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208471, 0.738313, 0.641431,
		0.601251, -0.614019, 0.511349,
		0.771386, 0.279060, -0.571917,
		12.673792, 17.407261, 29.319229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.649227, 17.348225, 30.121395>,  <12.133822, 17.211920, 29.719572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.649227, 17.348225, 30.121395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.758650, 17.540300, 29.788027>,  <12.824304, 17.655546, 29.588007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.758650, 17.540300, 29.788027>,  <12.649227, 17.348225, 30.121395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.758650, 17.540300, 29.788027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036408, 0.860679, 0.507845,
		0.961166, -0.169267, 0.217963,
		0.273558, 0.480188, -0.833418,
		12.840717, 17.684357, 29.538002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.123958, 17.784182, 30.315908>,  <12.649227, 17.348225, 30.121395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.123958, 17.784182, 30.315908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.018098, 17.940653, 29.963331>,  <12.954582, 18.034534, 29.751785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.018098, 17.940653, 29.963331>,  <13.123958, 17.784182, 30.315908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.018098, 17.940653, 29.963331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082067, 0.919853, 0.383583,
		0.960846, 0.029179, -0.275542,
		-0.264650, 0.391177, -0.881442,
		12.938703, 18.058006, 29.698898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.643302, 18.314939, 30.223270>,  <13.123958, 17.784182, 30.315908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.643302, 18.314939, 30.223270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.315780, 18.395929, 30.008398>,  <13.119267, 18.444523, 29.879475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.315780, 18.395929, 30.008398>,  <13.643302, 18.314939, 30.223270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.315780, 18.395929, 30.008398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003011, 0.934208, 0.356715,
		0.574064, 0.293698, -0.764324,
		-0.818805, 0.202476, -0.537180,
		13.070138, 18.456673, 29.847244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.713381, 18.943626, 30.042685>,  <13.643302, 18.314939, 30.223270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.713381, 18.943626, 30.042685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.320665, 18.914387, 29.972546>,  <13.085036, 18.896843, 29.930462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.320665, 18.914387, 29.972546>,  <13.713381, 18.943626, 30.042685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.320665, 18.914387, 29.972546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133756, 0.921433, 0.364788,
		0.134905, 0.381598, -0.914431,
		-0.981789, -0.073099, -0.175348,
		13.026129, 18.892458, 29.919941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.453645, 19.463102, 29.673685>,  <13.713381, 18.943626, 30.042685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.453645, 19.463102, 29.673685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.106327, 19.335476, 29.825613>,  <12.897937, 19.258900, 29.916769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.106327, 19.335476, 29.825613>,  <13.453645, 19.463102, 29.673685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.106327, 19.335476, 29.825613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200421, 0.926059, 0.319760,
		-0.453759, 0.201522, -0.868039,
		-0.868294, -0.319067, 0.379818,
		12.845839, 19.239756, 29.939558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.967992, 19.984554, 29.479944>,  <13.453645, 19.463102, 29.673685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.967992, 19.984554, 29.479944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.821194, 19.793146, 29.799026>,  <12.733114, 19.678301, 29.990477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.821194, 19.793146, 29.799026>,  <12.967992, 19.984554, 29.479944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.821194, 19.793146, 29.799026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241763, 0.877140, 0.414942,
		-0.898257, -0.040574, -0.437595,
		-0.366996, -0.478518, 0.797706,
		12.711095, 19.649591, 30.038338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.323445, 20.282598, 29.583933>,  <12.967992, 19.984554, 29.479944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.323445, 20.282598, 29.583933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.466671, 20.122585, 29.921398>,  <12.552607, 20.026577, 30.123877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.466671, 20.122585, 29.921398>,  <12.323445, 20.282598, 29.583933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.466671, 20.122585, 29.921398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289335, 0.811554, 0.507608,
		-0.887737, -0.425856, 0.174844,
		0.358063, -0.400034, 0.843661,
		12.574090, 20.002575, 30.174496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.978354, 21.021286, 29.592819>,  <12.323445, 20.282598, 29.583933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.978354, 21.021286, 29.592819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.911741, 21.413954, 29.555737>,  <11.871774, 21.649553, 29.533487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.911741, 21.413954, 29.555737>,  <11.978354, 21.021286, 29.592819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.911741, 21.413954, 29.555737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515869, -0.166867, -0.840259,
		-0.840325, -0.092104, 0.534201,
		-0.166531, 0.981668, -0.092708,
		11.861782, 21.708454, 29.527924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.187895, 21.055645, 29.520002>,  <11.978354, 21.021286, 29.592819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.187895, 21.055645, 29.520002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.368144, 21.389385, 29.393009>,  <11.476294, 21.589630, 29.316814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.368144, 21.389385, 29.393009>,  <11.187895, 21.055645, 29.520002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.368144, 21.389385, 29.393009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537181, -0.030614, -0.842911,
		-0.713004, 0.550381, 0.434403,
		0.450624, 0.834352, -0.317482,
		11.503331, 21.639690, 29.297764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.727262, 21.414103, 29.233641>,  <11.187895, 21.055645, 29.520002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.727262, 21.414103, 29.233641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.050059, 21.585827, 29.071428>,  <11.243737, 21.688862, 28.974100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.050059, 21.585827, 29.071428>,  <10.727262, 21.414103, 29.233641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.050059, 21.585827, 29.071428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484396, 0.088372, -0.870374,
		-0.337824, 0.898823, 0.279272,
		0.806992, 0.429311, -0.405532,
		11.292157, 21.714621, 28.949768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.479466, 22.030922, 28.967062>,  <10.727262, 21.414103, 29.233641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.479466, 22.030922, 28.967062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.824984, 21.947920, 28.783409>,  <11.032294, 21.898119, 28.673218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.824984, 21.947920, 28.783409>,  <10.479466, 22.030922, 28.967062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.824984, 21.947920, 28.783409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447379, 0.103288, -0.888360,
		0.231763, 0.972766, -0.003615,
		0.863793, -0.207506, -0.459133,
		11.084122, 21.885668, 28.645670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.448227, 22.515793, 28.327944>,  <10.479466, 22.030922, 28.967062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.448227, 22.515793, 28.327944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.706022, 22.216816, 28.263493>,  <10.860700, 22.037430, 28.224821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.706022, 22.216816, 28.263493>,  <10.448227, 22.515793, 28.327944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.706022, 22.216816, 28.263493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303989, -0.057113, -0.950962,
		0.701587, 0.661866, -0.264023,
		0.644489, -0.747443, -0.161130,
		10.899369, 21.992582, 28.215153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.058990, 22.716074, 27.821035>,  <10.448227, 22.515793, 28.327944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.058990, 22.716074, 27.821035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.002839, 22.320108, 27.813358>,  <10.969149, 22.082529, 27.808752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.002839, 22.320108, 27.813358>,  <11.058990, 22.716074, 27.821035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.002839, 22.320108, 27.813358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079821, 0.030635, -0.996338,
		0.986876, -0.138330, -0.083316,
		-0.140375, -0.989912, -0.019191,
		10.960727, 22.023134, 27.807600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.381283, 22.579510, 27.191473>,  <11.058990, 22.716074, 27.821035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.381283, 22.579510, 27.191473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.171153, 22.250242, 27.277660>,  <11.045075, 22.052681, 27.329372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.171153, 22.250242, 27.277660>,  <11.381283, 22.579510, 27.191473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.171153, 22.250242, 27.277660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096253, -0.194109, -0.976246,
		0.845441, -0.533585, 0.022738,
		-0.525324, -0.823170, 0.215467,
		11.013556, 22.003292, 27.342300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.997711, 22.674549, 26.923962>,  <11.381283, 22.579510, 27.191473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.997711, 22.674549, 26.923962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.189603, 22.963011, 26.724043>,  <12.304738, 23.136087, 26.604092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.189603, 22.963011, 26.724043>,  <11.997711, 22.674549, 26.923962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.189603, 22.963011, 26.724043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100329, 0.520802, 0.847762,
		0.871662, -0.456840, 0.177491,
		0.479729, 0.721154, -0.499797,
		12.333522, 23.179358, 26.574104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.739145, 22.715631, 27.261866>,  <11.997711, 22.674549, 26.923962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.739145, 22.715631, 27.261866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.616922, 23.047625, 27.075207>,  <12.543589, 23.246820, 26.963211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.616922, 23.047625, 27.075207>,  <12.739145, 22.715631, 27.261866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.616922, 23.047625, 27.075207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115059, 0.518681, 0.847191,
		0.945197, 0.205172, -0.253983,
		-0.305556, 0.829985, -0.466648,
		12.525255, 23.296619, 26.935213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.258555, 23.245171, 27.579594>,  <12.739145, 22.715631, 27.261866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.258555, 23.245171, 27.579594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.948191, 23.441336, 27.420872>,  <12.761971, 23.559034, 27.325638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.948191, 23.441336, 27.420872>,  <13.258555, 23.245171, 27.579594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.948191, 23.441336, 27.420872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038620, 0.664760, 0.746058,
		0.629658, 0.563551, -0.534735,
		-0.775912, 0.490413, -0.396807,
		12.715417, 23.588459, 27.301830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.519238, 23.976660, 27.616079>,  <13.258555, 23.245171, 27.579594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.519238, 23.976660, 27.616079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.119768, 23.978069, 27.595558>,  <12.880086, 23.978914, 27.583246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.119768, 23.978069, 27.595558>,  <13.519238, 23.976660, 27.616079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.119768, 23.978069, 27.595558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037729, 0.627674, 0.777562,
		0.034942, 0.778469, -0.626710,
		-0.998677, 0.003524, -0.051304,
		12.820165, 23.979126, 27.580168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.346866, 24.740150, 27.783886>,  <13.519238, 23.976660, 27.616079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.346866, 24.740150, 27.783886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.987657, 24.568466, 27.822529>,  <12.772131, 24.465456, 27.845715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.987657, 24.568466, 27.822529>,  <13.346866, 24.740150, 27.783886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.987657, 24.568466, 27.822529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188916, 0.574522, 0.796389,
		-0.397322, 0.696925, -0.597018,
		-0.898024, -0.429209, 0.096610,
		12.718249, 24.439703, 27.851511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847857, 25.259897, 27.916960>,  <13.346866, 24.740150, 27.783886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847857, 25.259897, 27.916960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.640636, 24.942320, 28.044256>,  <12.516305, 24.751774, 28.120634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.640636, 24.942320, 28.044256>,  <12.847857, 25.259897, 27.916960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.640636, 24.942320, 28.044256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344822, 0.534339, 0.771738,
		-0.782766, 0.290061, -0.550583,
		-0.518049, -0.793944, 0.318243,
		12.485222, 24.704136, 28.139729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.266724, 25.640144, 28.144655>,  <12.847857, 25.259897, 27.916960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.266724, 25.640144, 28.144655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.273435, 25.283659, 28.325966>,  <12.277461, 25.069769, 28.434753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.273435, 25.283659, 28.325966>,  <12.266724, 25.640144, 28.144655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.273435, 25.283659, 28.325966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341017, 0.421060, 0.840486,
		-0.939907, -0.168676, -0.296854,
		0.016777, -0.891211, 0.453278,
		12.278467, 25.016296, 28.461950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.617042, 25.711508, 28.464439>,  <12.266724, 25.640144, 28.144655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.617042, 25.711508, 28.464439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.862431, 25.439260, 28.624645>,  <12.009664, 25.275911, 28.720768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.862431, 25.439260, 28.624645>,  <11.617042, 25.711508, 28.464439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.862431, 25.439260, 28.624645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007761, 0.512333, 0.858752,
		-0.789678, -0.523712, 0.319584,
		0.613472, -0.680618, 0.400514,
		12.046473, 25.235075, 28.744799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.379181, 25.669142, 29.106468>,  <11.617042, 25.711508, 28.464439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.379181, 25.669142, 29.106468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.735641, 25.489912, 29.134993>,  <11.949516, 25.382374, 29.152107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.735641, 25.489912, 29.134993>,  <11.379181, 25.669142, 29.106468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.735641, 25.489912, 29.134993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170908, 0.477107, 0.862067,
		-0.420291, -0.756042, 0.501752,
		0.891149, -0.448073, 0.071310,
		12.002985, 25.355490, 29.156385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.814030, 18.395632, 14.509726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.146394, 18.214050, 14.638419>,  <13.345812, 18.105101, 14.715635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.146394, 18.214050, 14.638419>,  <12.814030, 18.395632, 14.509726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.146394, 18.214050, 14.638419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340805, 0.041845, 0.939202,
		-0.439819, -0.890041, -0.119941,
		0.830910, -0.453955, 0.321734,
		13.395667, 18.077864, 14.734940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.704682, 17.660723, 14.829788>,  <12.814030, 18.395632, 14.509726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.704682, 17.660723, 14.829788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.015350, 17.856533, 14.988358>,  <13.201751, 17.974018, 15.083499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.015350, 17.856533, 14.988358>,  <12.704682, 17.660723, 14.829788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.015350, 17.856533, 14.988358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470759, 0.032927, 0.881647,
		0.418536, -0.871367, 0.256021,
		0.776669, 0.489525, 0.396423,
		13.248351, 18.003391, 15.107285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721085, 17.356382, 15.436887>,  <12.704682, 17.660723, 14.829788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.721085, 17.356382, 15.436887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.952459, 17.679392, 15.483053>,  <13.091284, 17.873198, 15.510753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.952459, 17.679392, 15.483053>,  <12.721085, 17.356382, 15.436887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.952459, 17.679392, 15.483053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437577, 0.187758, 0.879359,
		0.688432, -0.559156, 0.461959,
		0.578436, 0.807522, 0.115415,
		13.125990, 17.921648, 15.517678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.059245, 17.253860, 16.111830>,  <12.721085, 17.356382, 15.436887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.059245, 17.253860, 16.111830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063498, 17.640903, 16.010939>,  <13.066051, 17.873129, 15.950404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063498, 17.640903, 16.010939>,  <13.059245, 17.253860, 16.111830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063498, 17.640903, 16.010939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212301, 0.248677, 0.945033,
		0.977146, 0.043499, 0.208069,
		0.010634, 0.967609, -0.252228,
		13.066689, 17.931187, 15.935270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.516114, 17.465067, 16.678261>,  <13.059245, 17.253860, 16.111830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.516114, 17.465067, 16.678261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.379455, 17.803623, 16.514849>,  <13.297459, 18.006758, 16.416801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.379455, 17.803623, 16.514849>,  <13.516114, 17.465067, 16.678261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.379455, 17.803623, 16.514849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045901, 0.419138, 0.906761,
		0.938706, 0.328546, -0.104348,
		-0.341649, 0.846393, -0.408528,
		13.276959, 18.057541, 16.392290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.856276, 18.000368, 16.997356>,  <13.516114, 17.465067, 16.678261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.856276, 18.000368, 16.997356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.514719, 18.162960, 16.867344>,  <13.309785, 18.260515, 16.789337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.514719, 18.162960, 16.867344>,  <13.856276, 18.000368, 16.997356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.514719, 18.162960, 16.867344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114959, 0.461783, 0.879512,
		0.507596, 0.788373, -0.347584,
		-0.853892, 0.406479, -0.325029,
		13.258552, 18.284904, 16.769835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.837891, 18.752174, 17.123106>,  <13.856276, 18.000368, 16.997356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.837891, 18.752174, 17.123106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.457836, 18.635000, 17.080347>,  <13.229803, 18.564695, 17.054691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.457836, 18.635000, 17.080347>,  <13.837891, 18.752174, 17.123106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.457836, 18.635000, 17.080347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227949, 0.418534, 0.879130,
		-0.212788, 0.859661, -0.464440,
		-0.950137, -0.292937, -0.106900,
		13.172795, 18.547119, 17.048277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558916, 19.346262, 17.317698>,  <13.837891, 18.752174, 17.123106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558916, 19.346262, 17.317698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.234064, 19.114273, 17.343233>,  <13.039153, 18.975080, 17.358555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.234064, 19.114273, 17.343233>,  <13.558916, 19.346262, 17.317698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.234064, 19.114273, 17.343233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312358, 0.524572, 0.791996,
		-0.492825, 0.623263, -0.607180,
		-0.812131, -0.579973, 0.063841,
		12.990425, 18.940281, 17.362385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.950996, 19.825876, 17.275711>,  <13.558916, 19.346262, 17.317698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.950996, 19.825876, 17.275711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.847474, 19.487238, 17.461742>,  <12.785361, 19.284056, 17.573362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.847474, 19.487238, 17.461742>,  <12.950996, 19.825876, 17.275711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.847474, 19.487238, 17.461742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288839, 0.527282, 0.799091,
		-0.921733, 0.072476, -0.380992,
		-0.258805, -0.846594, 0.465080,
		12.769833, 19.233259, 17.601267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.291470, 19.930599, 17.648493>,  <12.950996, 19.825876, 17.275711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.291470, 19.930599, 17.648493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.438678, 19.611483, 17.839527>,  <12.527002, 19.420013, 17.954147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.438678, 19.611483, 17.839527>,  <12.291470, 19.930599, 17.648493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.438678, 19.611483, 17.839527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364035, 0.349008, 0.863523,
		-0.855594, -0.491651, -0.161982,
		0.368019, -0.797792, 0.477587,
		12.549084, 19.372145, 17.982803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.700769, 19.763391, 18.065348>,  <12.291470, 19.930599, 17.648493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.700769, 19.763391, 18.065348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.007229, 19.553007, 18.213068>,  <12.191105, 19.426777, 18.301701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.007229, 19.553007, 18.213068>,  <11.700769, 19.763391, 18.065348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.007229, 19.553007, 18.213068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294883, 0.222870, 0.929179,
		-0.571018, -0.820788, 0.015654,
		0.766148, -0.525961, 0.369299,
		12.237073, 19.395218, 18.323858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.455390, 19.416111, 18.633083>,  <11.700769, 19.763391, 18.065348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.455390, 19.416111, 18.633083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.846306, 19.446613, 18.712170>,  <12.080855, 19.464914, 18.759621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.846306, 19.446613, 18.712170>,  <11.455390, 19.416111, 18.633083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.846306, 19.446613, 18.712170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211397, 0.285867, 0.934661,
		0.014754, -0.955230, 0.295496,
		0.977289, 0.076257, 0.197715,
		12.139493, 19.469490, 18.771484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.002632, 18.953428, 18.830084>,  <11.455390, 19.416111, 18.633083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.002632, 18.953428, 18.830084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.674866, 18.784019, 18.984583>,  <10.478206, 18.682373, 19.077282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.674866, 18.784019, 18.984583>,  <11.002632, 18.953428, 18.830084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.674866, 18.784019, 18.984583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175835, -0.455627, -0.872632,
		0.545565, -0.782963, 0.298878,
		-0.819415, -0.423524, 0.386246,
		10.429041, 18.656961, 19.100456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.016837, 18.147898, 18.744289>,  <11.002632, 18.953428, 18.830084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.016837, 18.147898, 18.744289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638160, 18.262215, 18.803747>,  <10.410954, 18.330805, 18.839422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638160, 18.262215, 18.803747>,  <11.016837, 18.147898, 18.744289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.638160, 18.262215, 18.803747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300276, -0.615799, -0.728441,
		-0.116647, -0.734244, 0.668789,
		-0.946693, 0.285792, 0.148644,
		10.354152, 18.347952, 18.848341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.605951, 17.534580, 18.491499>,  <11.016837, 18.147898, 18.744289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.605951, 17.534580, 18.491499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.358850, 17.848993, 18.500746>,  <10.210588, 18.037642, 18.506294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.358850, 17.848993, 18.500746>,  <10.605951, 17.534580, 18.491499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.358850, 17.848993, 18.500746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673373, -0.513573, -0.531801,
		-0.406137, -0.344092, 0.846554,
		-0.617756, 0.786030, 0.023121,
		10.173523, 18.084803, 18.507681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.974220, 17.272787, 18.560568>,  <10.605951, 17.534580, 18.491499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.974220, 17.272787, 18.560568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.864976, 17.641354, 18.450003>,  <9.799430, 17.862494, 18.383663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.864976, 17.641354, 18.450003>,  <9.974220, 17.272787, 18.560568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.864976, 17.641354, 18.450003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699778, -0.387456, -0.600158,
		-0.660092, 0.029518, 0.750604,
		-0.273110, 0.921416, -0.276413,
		9.783043, 17.917778, 18.367079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.252947, 17.237228, 18.595560>,  <9.974220, 17.272787, 18.560568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.252947, 17.237228, 18.595560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.343538, 17.543192, 18.354357>,  <9.397893, 17.726770, 18.209635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.343538, 17.543192, 18.354357>,  <9.252947, 17.237228, 18.595560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.343538, 17.543192, 18.354357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714073, -0.290654, -0.636882,
		-0.662425, 0.574833, 0.480374,
		0.226479, 0.764910, -0.603010,
		9.411482, 17.772665, 18.173454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.666888, 17.682354, 18.546192>,  <9.252947, 17.237228, 18.595560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.666888, 17.682354, 18.546192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.875204, 17.771194, 18.216478>,  <9.000194, 17.824499, 18.018650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.875204, 17.771194, 18.216478>,  <8.666888, 17.682354, 18.546192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.875204, 17.771194, 18.216478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826046, -0.112593, -0.552241,
		-0.215463, 0.968501, 0.124830,
		0.520791, 0.222103, -0.824286,
		9.031442, 17.837826, 17.969193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.221134, 17.947676, 18.049742>,  <8.666888, 17.682354, 18.546192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.221134, 17.947676, 18.049742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.503668, 17.861046, 17.780169>,  <8.673188, 17.809067, 17.618423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.503668, 17.861046, 17.780169>,  <8.221134, 17.947676, 18.049742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.503668, 17.861046, 17.780169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707769, -0.232853, -0.666965,
		-0.012479, 0.948089, -0.317758,
		0.706334, -0.216577, -0.673934,
		8.715568, 17.796072, 17.577988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.945626, 18.233091, 17.414633>,  <8.221134, 17.947676, 18.049742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.945626, 18.233091, 17.414633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.227921, 17.964535, 17.324152>,  <8.397298, 17.803400, 17.269863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.227921, 17.964535, 17.324152>,  <7.945626, 18.233091, 17.414633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.227921, 17.964535, 17.324152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607059, -0.408458, -0.681646,
		0.365259, 0.618380, -0.695839,
		0.705737, -0.671393, -0.226200,
		8.439642, 17.763117, 17.256292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.952539, 18.132097, 16.742605>,  <7.945626, 18.233091, 17.414633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.952539, 18.132097, 16.742605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.104861, 17.783899, 16.867331>,  <8.196255, 17.574980, 16.942165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.104861, 17.783899, 16.867331>,  <7.952539, 18.132097, 16.742605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.104861, 17.783899, 16.867331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680751, -0.492146, -0.542558,
		0.625752, -0.005659, -0.780002,
		0.380805, -0.870494, 0.311813,
		8.219103, 17.522751, 16.960875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.869713, 17.767334, 16.219412>,  <7.952539, 18.132097, 16.742605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.869713, 17.767334, 16.219412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.937235, 17.487915, 16.497559>,  <7.977748, 17.320265, 16.664448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.937235, 17.487915, 16.497559>,  <7.869713, 17.767334, 16.219412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.937235, 17.487915, 16.497559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517205, -0.663339, -0.540814,
		0.839049, -0.268356, -0.473267,
		0.168806, -0.698546, 0.695369,
		7.987876, 17.278351, 16.706169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.655552, 17.311499, 15.801123>,  <7.869713, 17.767334, 16.219412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.655552, 17.311499, 15.801123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.679434, 17.125582, 16.154484>,  <7.693763, 17.014030, 16.366501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.679434, 17.125582, 16.154484>,  <7.655552, 17.311499, 15.801123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.679434, 17.125582, 16.154484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478301, -0.790096, -0.383375,
		0.876164, -0.399644, -0.269483,
		0.059703, -0.464793, 0.883404,
		7.697345, 16.986143, 16.419504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.025756, 16.607073, 15.686005>,  <7.655552, 17.311499, 15.801123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.025756, 16.607073, 15.686005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.811507, 16.589714, 16.023342>,  <7.682958, 16.579298, 16.225744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.811507, 16.589714, 16.023342>,  <8.025756, 16.607073, 15.686005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.811507, 16.589714, 16.023342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448677, -0.831428, -0.327746,
		0.715402, -0.553936, 0.425859,
		-0.535621, -0.043397, 0.843343,
		7.650821, 16.576694, 16.276344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.190699, 15.893804, 16.047686>,  <8.025756, 16.607073, 15.686005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.190699, 15.893804, 16.047686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.831183, 16.034218, 16.152719>,  <7.615473, 16.118467, 16.215740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.831183, 16.034218, 16.152719>,  <8.190699, 15.893804, 16.047686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.831183, 16.034218, 16.152719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412235, -0.880553, -0.233856,
		0.149128, -0.318434, 0.936141,
		-0.898790, 0.351036, 0.262585,
		7.561546, 16.139528, 16.231495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.847296, 15.304180, 16.389668>,  <8.190699, 15.893804, 16.047686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.847296, 15.304180, 16.389668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.558958, 15.565588, 16.297325>,  <7.385955, 15.722433, 16.241919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.558958, 15.565588, 16.297325>,  <7.847296, 15.304180, 16.389668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.558958, 15.565588, 16.297325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592344, -0.753826, -0.284385,
		-0.359877, -0.068250, 0.930500,
		-0.720845, 0.653519, -0.230858,
		7.342705, 15.761643, 16.228067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.444358, 15.017618, 16.681530>,  <7.847296, 15.304180, 16.389668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.444358, 15.017618, 16.681530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.829539, 15.062983, 16.583666>,  <9.060648, 15.090201, 16.524948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.829539, 15.062983, 16.583666>,  <8.444358, 15.017618, 16.681530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.829539, 15.062983, 16.583666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260347, 0.154507, -0.953073,
		-0.070288, 0.981461, 0.178309,
		0.962953, 0.113412, -0.244660,
		9.118425, 15.097006, 16.510267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.949393, 14.695627, 17.162199>,  <8.444358, 15.017618, 16.681530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.949393, 14.695627, 17.162199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.334733, 14.609986, 17.097555>,  <9.565937, 14.558601, 17.058769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.334733, 14.609986, 17.097555>,  <8.949393, 14.695627, 17.162199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.334733, 14.609986, 17.097555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061186, -0.411202, 0.909488,
		-0.261177, -0.886044, -0.383032,
		0.963350, -0.214101, -0.161610,
		9.623738, 14.545755, 17.049072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.107019, 14.096008, 17.532637>,  <8.949393, 14.695627, 17.162199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.107019, 14.096008, 17.532637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.481483, 14.221531, 17.469223>,  <9.706161, 14.296844, 17.431175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.481483, 14.221531, 17.469223>,  <9.107019, 14.096008, 17.532637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.481483, 14.221531, 17.469223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246787, -0.265361, 0.932030,
		0.250407, -0.911652, -0.325863,
		0.936158, 0.313806, -0.158536,
		9.762330, 14.315673, 17.421661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.580490, 13.563110, 17.683981>,  <9.107019, 14.096008, 17.532637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.580490, 13.563110, 17.683981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.780116, 13.906902, 17.728216>,  <9.899892, 14.113177, 17.754757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.780116, 13.906902, 17.728216>,  <9.580490, 13.563110, 17.683981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.780116, 13.906902, 17.728216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250714, -0.265368, 0.930980,
		0.829504, -0.436893, -0.347919,
		0.499065, 0.859479, 0.110588,
		9.929835, 14.164746, 17.761393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.305609, 13.408620, 17.890537>,  <9.580490, 13.563110, 17.683981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.305609, 13.408620, 17.890537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.184613, 13.770846, 18.009499>,  <10.112016, 13.988182, 18.080875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.184613, 13.770846, 18.009499>,  <10.305609, 13.408620, 17.890537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.184613, 13.770846, 18.009499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159387, -0.259572, 0.952480,
		0.939732, 0.335518, -0.065818,
		-0.302489, 0.905566, 0.297406,
		10.093866, 14.042517, 18.098721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.758663, 13.451772, 18.494974>,  <10.305609, 13.408620, 17.890537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.758663, 13.451772, 18.494974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.541398, 13.781925, 18.556574>,  <10.411039, 13.980018, 18.593533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.541398, 13.781925, 18.556574>,  <10.758663, 13.451772, 18.494974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.541398, 13.781925, 18.556574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206821, -0.046236, 0.977286,
		0.813756, 0.562675, -0.145593,
		-0.543163, 0.825384, 0.153998,
		10.378449, 14.029540, 18.602774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.175434, 13.827993, 18.904310>,  <10.758663, 13.451772, 18.494974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.175434, 13.827993, 18.904310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.805005, 13.964030, 18.969704>,  <10.582747, 14.045652, 19.008940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.805005, 13.964030, 18.969704>,  <11.175434, 13.827993, 18.904310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.805005, 13.964030, 18.969704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192977, 0.054540, 0.979686,
		0.324266, 0.938810, -0.116138,
		-0.926073, 0.340091, 0.163483,
		10.527184, 14.066057, 19.018749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.218708, 14.372066, 19.453455>,  <11.175434, 13.827993, 18.904310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.218708, 14.372066, 19.453455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.834192, 14.265127, 19.480135>,  <10.603483, 14.200964, 19.496143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.834192, 14.265127, 19.480135>,  <11.218708, 14.372066, 19.453455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.834192, 14.265127, 19.480135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040919, 0.100872, 0.994058,
		-0.272486, 0.958306, -0.086028,
		-0.961289, -0.267347, 0.066699,
		10.545806, 14.184923, 19.500145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.834732, 14.888128, 19.867458>,  <11.218708, 14.372066, 19.453455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.834732, 14.888128, 19.867458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.570374, 14.588684, 19.888628>,  <10.411760, 14.409018, 19.901329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.570374, 14.588684, 19.888628>,  <10.834732, 14.888128, 19.867458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.570374, 14.588684, 19.888628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041305, 0.034127, 0.998564,
		-0.749341, 0.662131, 0.008367,
		-0.660894, -0.748611, 0.052922,
		10.372107, 14.364100, 19.904505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.268972, 15.151540, 20.316309>,  <10.834732, 14.888128, 19.867458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.268972, 15.151540, 20.316309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.259424, 14.751736, 20.324408>,  <10.253695, 14.511853, 20.329268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.259424, 14.751736, 20.324408>,  <10.268972, 15.151540, 20.316309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.259424, 14.751736, 20.324408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073458, 0.021951, 0.997057,
		-0.997013, 0.022313, -0.073946,
		-0.023871, -0.999510, 0.020247,
		10.252263, 14.451882, 20.330482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.640118, 14.932666, 20.732180>,  <10.268972, 15.151540, 20.316309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.640118, 14.932666, 20.732180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.903975, 14.632852, 20.754326>,  <10.062289, 14.452963, 20.767614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.903975, 14.632852, 20.754326>,  <9.640118, 14.932666, 20.732180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.903975, 14.632852, 20.754326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063274, 0.018021, 0.997833,
		-0.748911, -0.661717, -0.035539,
		0.659643, -0.749537, 0.055366,
		10.101868, 14.407990, 20.770935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.353208, 14.550797, 21.286875>,  <9.640118, 14.932666, 20.732180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.353208, 14.550797, 21.286875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.722577, 14.404412, 21.240639>,  <9.944199, 14.316582, 21.212896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.722577, 14.404412, 21.240639>,  <9.353208, 14.550797, 21.286875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.722577, 14.404412, 21.240639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092264, -0.080663, 0.992462,
		-0.372526, -0.927127, -0.040721,
		0.923424, -0.365961, -0.115589,
		9.999604, 14.294623, 21.205961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.458402, 13.926384, 21.639067>,  <9.353208, 14.550797, 21.286875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.458402, 13.926384, 21.639067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.818306, 14.094927, 21.593657>,  <10.034248, 14.196053, 21.566410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.818306, 14.094927, 21.593657>,  <9.458402, 13.926384, 21.639067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.818306, 14.094927, 21.593657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102202, 0.049446, 0.993534,
		0.424246, -0.905546, 0.001426,
		0.899761, 0.421358, -0.113526,
		10.088234, 14.221334, 21.559599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.708308, 13.630515, 22.261927>,  <9.458402, 13.926384, 21.639067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.708308, 13.630515, 22.261927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.954606, 13.920674, 22.138861>,  <10.102385, 14.094769, 22.065022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.954606, 13.920674, 22.138861>,  <9.708308, 13.630515, 22.261927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.954606, 13.920674, 22.138861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230806, 0.207290, 0.950663,
		0.753384, -0.656376, -0.039788,
		0.615745, 0.725397, -0.307664,
		10.139330, 14.138293, 22.046562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.215120, 13.475450, 22.665148>,  <9.708308, 13.630515, 22.261927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.215120, 13.475450, 22.665148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.302688, 13.842691, 22.532991>,  <10.355228, 14.063037, 22.453697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.302688, 13.842691, 22.532991>,  <10.215120, 13.475450, 22.665148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.302688, 13.842691, 22.532991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375716, 0.233181, 0.896919,
		0.900507, -0.320486, -0.293899,
		0.218918, 0.918104, -0.330393,
		10.368363, 14.118123, 22.433874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.858781, 13.628795, 22.819551>,  <10.215120, 13.475450, 22.665148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.858781, 13.628795, 22.819551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.717155, 14.000043, 22.773546>,  <10.632178, 14.222792, 22.745943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.717155, 14.000043, 22.773546>,  <10.858781, 13.628795, 22.819551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.717155, 14.000043, 22.773546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682074, 0.340409, 0.647222,
		0.639853, 0.150711, -0.753575,
		-0.354067, 0.928121, -0.115015,
		10.610934, 14.278480, 22.739042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.480570, 14.060663, 22.902025>,  <10.858781, 13.628795, 22.819551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.480570, 14.060663, 22.902025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.175581, 14.315059, 22.949615>,  <10.992587, 14.467696, 22.978168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.175581, 14.315059, 22.949615>,  <11.480570, 14.060663, 22.902025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.175581, 14.315059, 22.949615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527679, 0.504826, 0.683159,
		0.374420, 0.583670, -0.720513,
		-0.762473, 0.635988, 0.118974,
		10.946839, 14.505855, 22.985308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.795810, 14.728891, 22.886229>,  <11.480570, 14.060663, 22.902025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.795810, 14.728891, 22.886229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.437300, 14.799868, 23.048811>,  <11.222194, 14.842453, 23.146360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.437300, 14.799868, 23.048811>,  <11.795810, 14.728891, 22.886229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.437300, 14.799868, 23.048811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418066, 0.643922, 0.640769,
		-0.148028, 0.744231, -0.651313,
		-0.896275, 0.177440, 0.406456,
		11.168417, 14.853100, 23.170748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.846668, 15.398886, 22.933033>,  <11.795810, 14.728891, 22.886229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.846668, 15.398886, 22.933033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.565102, 15.293572, 23.196907>,  <11.396162, 15.230385, 23.355232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.565102, 15.293572, 23.196907>,  <11.846668, 15.398886, 22.933033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.565102, 15.293572, 23.196907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353391, 0.675831, 0.646813,
		-0.616131, 0.688429, -0.382687,
		-0.703916, -0.263283, 0.659685,
		11.353927, 15.214587, 23.394812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.659266, 16.028515, 23.281689>,  <11.846668, 15.398886, 22.933033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.659266, 16.028515, 23.281689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.529510, 15.729288, 23.513262>,  <11.451656, 15.549751, 23.652206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.529510, 15.729288, 23.513262>,  <11.659266, 16.028515, 23.281689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.529510, 15.729288, 23.513262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162683, 0.558790, 0.813196,
		-0.931829, 0.357975, -0.059568,
		-0.324390, -0.748069, 0.578933,
		11.432193, 15.504868, 23.686941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.343106, 16.389420, 23.943979>,  <11.659266, 16.028515, 23.281689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.343106, 16.389420, 23.943979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.451471, 16.013714, 24.028252>,  <11.516490, 15.788290, 24.078815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.451471, 16.013714, 24.028252>,  <11.343106, 16.389420, 23.943979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.451471, 16.013714, 24.028252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238366, 0.277506, 0.930684,
		-0.932624, -0.201914, 0.299069,
		0.270912, -0.939266, 0.210679,
		11.532744, 15.731934, 24.091455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.214866, 16.427694, 24.561676>,  <11.343106, 16.389420, 23.943979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.214866, 16.427694, 24.561676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.430986, 16.091158, 24.555811>,  <11.560659, 15.889235, 24.552292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.430986, 16.091158, 24.555811>,  <11.214866, 16.427694, 24.561676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.430986, 16.091158, 24.555811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395139, 0.238294, 0.887176,
		-0.742926, -0.485137, 0.461198,
		0.540302, -0.841343, -0.014662,
		11.593077, 15.838755, 24.551413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.014315, 15.927464, 25.195179>,  <11.214866, 16.427694, 24.561676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.014315, 15.927464, 25.195179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.387116, 15.833059, 25.085150>,  <11.610797, 15.776416, 25.019133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.387116, 15.833059, 25.085150>,  <11.014315, 15.927464, 25.195179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.387116, 15.833059, 25.085150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274616, -0.035492, 0.960899,
		-0.236548, -0.971101, 0.031734,
		0.932004, -0.236013, -0.275075,
		11.666718, 15.762256, 25.002626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.160175, 15.532675, 25.702518>,  <11.014315, 15.927464, 25.195179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.160175, 15.532675, 25.702518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.509749, 15.599199, 25.519836>,  <11.719494, 15.639113, 25.410227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.509749, 15.599199, 25.519836>,  <11.160175, 15.532675, 25.702518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.509749, 15.599199, 25.519836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472045, -0.066526, 0.879061,
		0.115816, -0.983826, -0.136646,
		0.873934, 0.166312, -0.456705,
		11.771930, 15.649093, 25.382824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.706430, 15.030464, 25.992418>,  <11.160175, 15.532675, 25.702518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.706430, 15.030464, 25.992418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.892169, 15.350542, 25.840591>,  <12.003613, 15.542588, 25.749495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.892169, 15.350542, 25.840591>,  <11.706430, 15.030464, 25.992418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.892169, 15.350542, 25.840591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545343, 0.079358, 0.834448,
		0.697842, -0.594468, -0.399531,
		0.464347, 0.800194, -0.379568,
		12.031473, 15.590600, 25.726721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.391469, 14.932330, 26.085293>,  <11.706430, 15.030464, 25.992418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.391469, 14.932330, 26.085293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.333365, 15.326276, 26.047464>,  <12.298504, 15.562643, 26.024767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.333365, 15.326276, 26.047464>,  <12.391469, 14.932330, 26.085293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.333365, 15.326276, 26.047464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608491, 0.164297, 0.776366,
		0.780153, 0.055228, -0.623147,
		-0.145259, 0.984864, -0.094571,
		12.289788, 15.621735, 26.019093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.990876, 15.230147, 26.281057>,  <12.391469, 14.932330, 26.085293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.990876, 15.230147, 26.281057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.753754, 15.551909, 26.296612>,  <12.611480, 15.744967, 26.305944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.753754, 15.551909, 26.296612>,  <12.990876, 15.230147, 26.281057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.753754, 15.551909, 26.296612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401002, 0.252957, 0.880460,
		0.698411, 0.537535, -0.472523,
		-0.592807, 0.804406, 0.038885,
		12.575912, 15.793231, 26.308277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.446651, 15.738866, 26.491997>,  <12.990876, 15.230147, 26.281057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.446651, 15.738866, 26.491997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.080637, 15.863094, 26.594959>,  <12.861029, 15.937632, 26.656736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.080637, 15.863094, 26.594959>,  <13.446651, 15.738866, 26.491997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.080637, 15.863094, 26.594959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364794, 0.364771, 0.856660,
		0.172158, 0.877774, -0.447072,
		-0.915034, 0.310571, 0.257409,
		12.806127, 15.956265, 26.672182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
