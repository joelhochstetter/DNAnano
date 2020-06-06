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
	<24.592194, 34.646614, 35.057106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291262, 34.905426, 35.007557>,  <24.110703, 35.060715, 34.977829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291262, 34.905426, 35.007557>,  <24.592194, 34.646614, 35.057106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291262, 34.905426, 35.007557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581825, -0.564401, 0.585603,
		0.308992, 0.512639, 0.801077,
		-0.752332, 0.647034, -0.123871,
		24.065561, 35.099537, 34.970394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810286, 34.071888, 35.485123>,  <24.592194, 34.646614, 35.057106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810286, 34.071888, 35.485123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120991, 34.287899, 35.614742>,  <25.307415, 34.417507, 35.692513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120991, 34.287899, 35.614742>,  <24.810286, 34.071888, 35.485123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.120991, 34.287899, 35.614742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068621, -0.584039, 0.808820,
		0.626042, -0.606026, -0.490718,
		0.776764, 0.540029, 0.324047,
		25.354019, 34.449909, 35.711956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.407057, 33.661213, 35.567726>,  <24.810286, 34.071888, 35.485123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.407057, 33.661213, 35.567726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447786, 33.976280, 35.810776>,  <25.472223, 34.165321, 35.956608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447786, 33.976280, 35.810776>,  <25.407057, 33.661213, 35.567726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447786, 33.976280, 35.810776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069787, -0.603641, 0.794196,
		0.992352, -0.123272, -0.006495,
		0.101822, 0.787668, 0.607627,
		25.478333, 34.212582, 35.993065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874897, 33.478867, 36.110207>,  <25.407057, 33.661213, 35.567726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874897, 33.478867, 36.110207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691395, 33.784218, 36.292107>,  <25.581293, 33.967430, 36.401245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691395, 33.784218, 36.292107>,  <25.874897, 33.478867, 36.110207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691395, 33.784218, 36.292107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129664, -0.563813, 0.815661,
		0.879052, 0.315223, 0.357634,
		-0.458754, 0.763380, 0.454748,
		25.553768, 34.013233, 36.428532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136333, 33.457523, 36.776703>,  <25.874897, 33.478867, 36.110207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136333, 33.457523, 36.776703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789976, 33.655426, 36.806236>,  <25.582163, 33.774166, 36.823956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789976, 33.655426, 36.806236>,  <26.136333, 33.457523, 36.776703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789976, 33.655426, 36.806236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223127, -0.514098, 0.828202,
		0.447712, 0.700659, 0.555546,
		-0.865892, 0.494753, 0.073832,
		25.530209, 33.803852, 36.828384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977688, 33.844440, 37.498760>,  <26.136333, 33.457523, 36.776703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977688, 33.844440, 37.498760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.640257, 33.706398, 37.334187>,  <25.437798, 33.623573, 37.235443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.640257, 33.706398, 37.334187>,  <25.977688, 33.844440, 37.498760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.640257, 33.706398, 37.334187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193164, -0.519870, 0.832119,
		-0.501060, 0.781432, 0.371890,
		-0.843579, -0.345106, -0.411431,
		25.387182, 33.602867, 37.210758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421389, 34.121578, 37.914787>,  <25.977688, 33.844440, 37.498760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421389, 34.121578, 37.914787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314316, 33.781448, 37.733547>,  <25.250072, 33.577370, 37.624802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314316, 33.781448, 37.733547>,  <25.421389, 34.121578, 37.914787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314316, 33.781448, 37.733547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123955, -0.435963, 0.891387,
		-0.955500, 0.294773, 0.011298,
		-0.267683, -0.850320, -0.453102,
		25.234011, 33.526352, 37.597618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781397, 33.879219, 38.153381>,  <25.421389, 34.121578, 37.914787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781397, 33.879219, 38.153381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992380, 33.561848, 38.031887>,  <25.118971, 33.371426, 37.958992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992380, 33.561848, 38.031887>,  <24.781397, 33.879219, 38.153381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.992380, 33.561848, 38.031887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035184, -0.336807, 0.940916,
		-0.848851, -0.506983, -0.149736,
		0.527460, -0.793429, -0.303736,
		25.150618, 33.323818, 37.940765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504463, 33.309139, 38.473557>,  <24.781397, 33.879219, 38.153381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504463, 33.309139, 38.473557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865931, 33.173618, 38.368793>,  <25.082811, 33.092304, 38.305935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865931, 33.173618, 38.368793>,  <24.504463, 33.309139, 38.473557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865931, 33.173618, 38.368793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038757, -0.544382, 0.837942,
		-0.426471, -0.767374, -0.478811,
		0.903670, -0.338800, -0.261904,
		25.137032, 33.071980, 38.290222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499699, 32.621136, 38.770309>,  <24.504463, 33.309139, 38.473557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499699, 32.621136, 38.770309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879442, 32.727352, 38.703129>,  <25.107288, 32.791080, 38.662819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879442, 32.727352, 38.703129>,  <24.499699, 32.621136, 38.770309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.879442, 32.727352, 38.703129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255114, -0.339432, 0.905374,
		0.183403, -0.902372, -0.389986,
		0.949358, 0.265539, -0.167954,
		25.164249, 32.807014, 38.652744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985435, 32.073772, 38.937908>,  <24.499699, 32.621136, 38.770309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985435, 32.073772, 38.937908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180035, 32.422867, 38.954182>,  <25.296793, 32.632324, 38.963947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180035, 32.422867, 38.954182>,  <24.985435, 32.073772, 38.937908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180035, 32.422867, 38.954182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129899, -0.118307, 0.984444,
		0.863972, -0.473643, -0.170923,
		0.486497, 0.872734, 0.040688,
		25.325983, 32.684689, 38.966389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687712, 32.077705, 39.125961>,  <24.985435, 32.073772, 38.937908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687712, 32.077705, 39.125961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533981, 32.430450, 39.235226>,  <25.441742, 32.642097, 39.300785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533981, 32.430450, 39.235226>,  <25.687712, 32.077705, 39.125961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.533981, 32.430450, 39.235226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062556, -0.270325, 0.960734,
		0.921075, 0.386325, 0.048728,
		-0.384328, 0.881860, 0.273157,
		25.418682, 32.695007, 39.317173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137762, 31.917768, 39.649307>,  <25.687712, 32.077705, 39.125961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137762, 31.917768, 39.649307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006598, 32.256981, 39.482784>,  <24.927898, 32.460510, 39.382870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006598, 32.256981, 39.482784>,  <25.137762, 31.917768, 39.649307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006598, 32.256981, 39.482784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417884, -0.525425, -0.741149,
		-0.847258, -0.069063, 0.526673,
		-0.327913, 0.848033, -0.416310,
		24.908224, 32.511391, 39.357891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.908527, 32.585674, 39.956768>,  <25.137762, 31.917768, 39.649307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.908527, 32.585674, 39.956768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230026, 32.805870, 40.047050>,  <25.422926, 32.937988, 40.101219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230026, 32.805870, 40.047050>,  <24.908527, 32.585674, 39.956768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230026, 32.805870, 40.047050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262515, 0.012311, -0.964849,
		-0.533923, 0.834748, -0.134618,
		0.803749, 0.550494, 0.225707,
		25.471151, 32.971020, 40.114761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.968321, 33.201225, 39.665184>,  <24.908527, 32.585674, 39.956768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.968321, 33.201225, 39.665184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354019, 33.129639, 39.743366>,  <25.585438, 33.086685, 39.790276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354019, 33.129639, 39.743366>,  <24.968321, 33.201225, 39.665184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354019, 33.129639, 39.743366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194001, -0.025765, -0.980663,
		0.180542, 0.983518, 0.009876,
		0.964245, -0.178967, 0.195455,
		25.643293, 33.075947, 39.802002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444302, 33.788246, 39.339516>,  <24.968321, 33.201225, 39.665184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444302, 33.788246, 39.339516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586164, 33.414356, 39.348503>,  <25.671282, 33.190022, 39.353897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586164, 33.414356, 39.348503>,  <25.444302, 33.788246, 39.339516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586164, 33.414356, 39.348503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085025, 0.008312, -0.996344,
		0.931123, 0.355269, 0.082423,
		0.354655, -0.934727, 0.022467,
		25.692560, 33.133938, 39.355244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118834, 33.731632, 39.003788>,  <25.444302, 33.788246, 39.339516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118834, 33.731632, 39.003788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876465, 33.413883, 38.986687>,  <25.731045, 33.223232, 38.976425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876465, 33.413883, 38.986687>,  <26.118834, 33.731632, 39.003788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876465, 33.413883, 38.986687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042018, 0.021711, -0.998881,
		0.794415, -0.607038, 0.020223,
		-0.605920, -0.794376, -0.042754,
		25.694689, 33.175571, 38.973862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403259, 33.261368, 38.579781>,  <26.118834, 33.731632, 39.003788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403259, 33.261368, 38.579781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021591, 33.142593, 38.594692>,  <25.792591, 33.071327, 38.603638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021591, 33.142593, 38.594692>,  <26.403259, 33.261368, 38.579781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021591, 33.142593, 38.594692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027321, -0.037617, -0.998919,
		0.298023, -0.954154, 0.027780,
		-0.954168, -0.296941, 0.037279,
		25.735340, 33.053513, 38.605877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333126, 32.753391, 38.011009>,  <26.403259, 33.261368, 38.579781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333126, 32.753391, 38.011009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956966, 32.852535, 38.104145>,  <25.731270, 32.912022, 38.160027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956966, 32.852535, 38.104145>,  <26.333126, 32.753391, 38.011009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956966, 32.852535, 38.104145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230909, 0.037242, -0.972262,
		-0.249653, -0.968081, 0.022210,
		-0.940402, 0.247857, 0.232836,
		25.674847, 32.926891, 38.173996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958208, 32.427128, 37.522224>,  <26.333126, 32.753391, 38.011009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958208, 32.427128, 37.522224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719252, 32.713558, 37.666645>,  <25.575878, 32.885418, 37.753300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719252, 32.713558, 37.666645>,  <25.958208, 32.427128, 37.522224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719252, 32.713558, 37.666645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238724, 0.271022, -0.932501,
		-0.765594, -0.643260, 0.009038,
		-0.597391, 0.716075, 0.361054,
		25.540033, 32.928379, 37.774960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167656, 32.270500, 37.442543>,  <25.958208, 32.427128, 37.522224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167656, 32.270500, 37.442543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083979, 32.633789, 37.587528>,  <25.033773, 32.851761, 37.674519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083979, 32.633789, 37.587528>,  <25.167656, 32.270500, 37.442543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083979, 32.633789, 37.587528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145567, 0.395456, -0.906876,
		-0.966979, -0.136949, -0.214933,
		-0.209192, 0.908218, 0.362463,
		25.021221, 32.906254, 37.696266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813541, 32.489750, 36.932911>,  <25.167656, 32.270500, 37.442543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813541, 32.489750, 36.932911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909122, 32.811771, 37.150089>,  <24.966471, 33.004986, 37.280396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909122, 32.811771, 37.150089>,  <24.813541, 32.489750, 36.932911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909122, 32.811771, 37.150089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111574, 0.578203, -0.808228,
		-0.964600, 0.132549, 0.227987,
		0.238953, 0.805054, 0.542946,
		24.980808, 33.053288, 37.312973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.267311, 33.044750, 36.867809>,  <24.813541, 32.489750, 36.932911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.267311, 33.044750, 36.867809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623203, 33.203426, 36.958153>,  <24.836739, 33.298634, 37.012360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623203, 33.203426, 36.958153>,  <24.267311, 33.044750, 36.867809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.623203, 33.203426, 36.958153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050489, 0.577265, -0.814994,
		-0.453683, 0.713723, 0.533640,
		0.889732, 0.396692, 0.225861,
		24.890123, 33.322433, 37.025909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.369267, 33.788910, 36.715870>,  <24.267311, 33.044750, 36.867809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.369267, 33.788910, 36.715870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681824, 33.835735, 36.961056>,  <24.869358, 33.863831, 37.108166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681824, 33.835735, 36.961056>,  <24.369267, 33.788910, 36.715870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681824, 33.835735, 36.961056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419600, 0.628498, -0.654924,
		-0.461912, 0.768952, 0.441984,
		0.781391, 0.117061, 0.612963,
		24.916241, 33.870853, 37.144943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.471851, 34.517082, 36.981010>,  <24.369267, 33.788910, 36.715870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.471851, 34.517082, 36.981010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820564, 34.321880, 36.963852>,  <25.029793, 34.204758, 36.953556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820564, 34.321880, 36.963852>,  <24.471851, 34.517082, 36.981010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.820564, 34.321880, 36.963852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368522, 0.710976, -0.598920,
		0.322774, 0.506322, 0.799659,
		0.871785, -0.488008, -0.042893,
		25.082100, 34.175480, 36.950985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922867, 35.031055, 36.964043>,  <24.471851, 34.517082, 36.981010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922867, 35.031055, 36.964043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116371, 34.722935, 36.797855>,  <25.232473, 34.538063, 36.698143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116371, 34.722935, 36.797855>,  <24.922867, 35.031055, 36.964043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116371, 34.722935, 36.797855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437085, 0.623915, -0.647832,
		0.758241, 0.131801, 0.638512,
		0.483763, -0.770298, -0.415470,
		25.261499, 34.491844, 36.673214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614527, 35.298767, 36.778526>,  <24.922867, 35.031055, 36.964043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614527, 35.298767, 36.778526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561249, 34.976418, 36.547764>,  <25.529282, 34.783009, 36.409306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561249, 34.976418, 36.547764>,  <25.614527, 35.298767, 36.778526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561249, 34.976418, 36.547764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440871, 0.473152, -0.762732,
		0.887633, -0.355934, 0.292266,
		-0.133196, -0.805877, -0.576906,
		25.521290, 34.734653, 36.374691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280844, 35.097088, 36.362049>,  <25.614527, 35.298767, 36.778526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280844, 35.097088, 36.362049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930607, 35.002144, 36.193764>,  <25.720465, 34.945175, 36.092793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930607, 35.002144, 36.193764>,  <26.280844, 35.097088, 36.362049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930607, 35.002144, 36.193764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253809, 0.514971, -0.818771,
		0.410999, -0.823689, -0.390660,
		-0.875591, -0.237361, -0.420713,
		25.667931, 34.930935, 36.067551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338400, 34.544777, 35.817627>,  <26.280844, 35.097088, 36.362049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338400, 34.544777, 35.817627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727533, 34.529896, 35.726227>,  <26.961014, 34.520966, 35.671387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727533, 34.529896, 35.726227>,  <26.338400, 34.544777, 35.817627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727533, 34.529896, 35.726227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223305, 0.109619, -0.968565,
		0.061081, 0.993277, 0.098334,
		0.972833, -0.037202, -0.228499,
		27.019382, 34.518734, 35.657677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586344, 35.124130, 35.337376>,  <26.338400, 34.544777, 35.817627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586344, 35.124130, 35.337376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804432, 34.790985, 35.299282>,  <26.935286, 34.591099, 35.276424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804432, 34.790985, 35.299282>,  <26.586344, 35.124130, 35.337376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804432, 34.790985, 35.299282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200812, -0.019465, -0.979437,
		0.813885, 0.553133, -0.177862,
		0.545221, -0.832866, -0.095233,
		26.967999, 34.541126, 35.270714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584261, 35.084518, 34.642521>,  <26.586344, 35.124130, 35.337376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584261, 35.084518, 34.642521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789001, 34.748531, 34.714592>,  <26.911846, 34.546940, 34.757835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789001, 34.748531, 34.714592>,  <26.584261, 35.084518, 34.642521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789001, 34.748531, 34.714592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048278, -0.237527, -0.970181,
		0.857718, 0.487888, -0.162130,
		0.511849, -0.839968, 0.180177,
		26.942556, 34.496540, 34.768646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077087, 35.056660, 34.111137>,  <26.584261, 35.084518, 34.642521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077087, 35.056660, 34.111137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987801, 34.687344, 34.236176>,  <26.934229, 34.465755, 34.311199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987801, 34.687344, 34.236176>,  <27.077087, 35.056660, 34.111137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987801, 34.687344, 34.236176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237028, -0.259653, -0.936161,
		0.945512, -0.283061, -0.160886,
		-0.223216, -0.923286, 0.312598,
		26.920835, 34.410358, 34.329956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432468, 34.638638, 33.711887>,  <27.077087, 35.056660, 34.111137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432468, 34.638638, 33.711887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129305, 34.416336, 33.848541>,  <26.947407, 34.282955, 33.930534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129305, 34.416336, 33.848541>,  <27.432468, 34.638638, 33.711887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129305, 34.416336, 33.848541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256496, -0.227647, -0.939354,
		0.599823, -0.799571, 0.029986,
		-0.757906, -0.555755, 0.341635,
		26.901934, 34.249611, 33.951031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417053, 34.077969, 33.306507>,  <27.432468, 34.638638, 33.711887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417053, 34.077969, 33.306507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050898, 34.079700, 33.467525>,  <26.831203, 34.080738, 33.564137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050898, 34.079700, 33.467525>,  <27.417053, 34.077969, 33.306507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050898, 34.079700, 33.467525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402136, -0.056330, -0.913846,
		0.018727, -0.998403, 0.053302,
		-0.915389, 0.004321, 0.402548,
		26.776281, 34.080997, 33.588291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549904, 33.814884, 32.555367>,  <27.417053, 34.077969, 33.306507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549904, 33.814884, 32.555367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324234, 33.566563, 32.337631>,  <27.188831, 33.417568, 32.206989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324234, 33.566563, 32.337631>,  <27.549904, 33.814884, 32.555367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324234, 33.566563, 32.337631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063783, -0.690084, 0.720913,
		-0.823187, 0.372002, 0.428926,
		-0.564176, -0.620805, -0.544341,
		27.154982, 33.380322, 32.174328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799212, 33.597374, 32.686668>,  <27.549904, 33.814884, 32.555367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799212, 33.597374, 32.686668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998829, 33.294621, 32.517872>,  <27.118599, 33.112968, 32.416595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998829, 33.294621, 32.517872>,  <26.799212, 33.597374, 32.686668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998829, 33.294621, 32.517872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365454, -0.625363, 0.689467,
		-0.785747, -0.189856, -0.588691,
		0.499045, -0.756886, -0.421993,
		27.148542, 33.067554, 32.391273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754719, 32.897156, 33.153065>,  <26.799212, 33.597374, 32.686668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754719, 32.897156, 33.153065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541128, 33.209614, 33.282482>,  <26.412973, 33.397087, 33.360134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541128, 33.209614, 33.282482>,  <26.754719, 32.897156, 33.153065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541128, 33.209614, 33.282482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760276, -0.276178, -0.587968,
		-0.369934, -0.559942, 0.741359,
		-0.533975, 0.781147, 0.323543,
		26.380936, 33.443958, 33.379547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093843, 32.642609, 33.328201>,  <26.754719, 32.897156, 33.153065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093843, 32.642609, 33.328201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077053, 33.033203, 33.243614>,  <26.066978, 33.267559, 33.192863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077053, 33.033203, 33.243614>,  <26.093843, 32.642609, 33.328201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077053, 33.033203, 33.243614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692963, -0.180924, -0.697902,
		-0.719750, 0.117243, 0.684262,
		-0.041976, 0.976484, -0.211465,
		26.064461, 33.326149, 33.180176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400646, 32.761009, 33.330120>,  <26.093843, 32.642609, 33.328201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400646, 32.761009, 33.330120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571615, 33.064495, 33.133488>,  <25.674196, 33.246586, 33.015507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571615, 33.064495, 33.133488>,  <25.400646, 32.761009, 33.330120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571615, 33.064495, 33.133488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597115, -0.171348, -0.783641,
		-0.678795, 0.628479, 0.379804,
		0.427423, 0.758718, -0.491585,
		25.699842, 33.292110, 32.986012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.936586, 33.477753, 33.268738>,  <25.400646, 32.761009, 33.330120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.936586, 33.477753, 33.268738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165115, 33.375954, 32.956631>,  <25.302233, 33.314877, 32.769367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165115, 33.375954, 32.956631>,  <24.936586, 33.477753, 33.268738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165115, 33.375954, 32.956631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814837, -0.062204, -0.576343,
		0.098140, 0.965072, -0.242909,
		0.571322, -0.254494, -0.780272,
		25.336512, 33.299606, 32.722549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168665, 34.012062, 32.830338>,  <24.936586, 33.477753, 33.268738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168665, 34.012062, 32.830338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077423, 33.692741, 32.607384>,  <25.022678, 33.501148, 32.473614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077423, 33.692741, 32.607384>,  <25.168665, 34.012062, 32.830338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.077423, 33.692741, 32.607384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878600, 0.415465, -0.235481,
		0.419565, 0.436024, -0.796146,
		-0.228096, -0.798293, -0.557405,
		25.008991, 33.453251, 32.440170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.982113, 34.279472, 32.082344>,  <25.168665, 34.012062, 32.830338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.982113, 34.279472, 32.082344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.817066, 33.937710, 32.208668>,  <24.718039, 33.732651, 32.284462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.817066, 33.937710, 32.208668>,  <24.982113, 34.279472, 32.082344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.817066, 33.937710, 32.208668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887122, 0.298219, -0.352250,
		0.206785, -0.425505, -0.881014,
		-0.412619, -0.854407, 0.315807,
		24.693281, 33.681389, 32.303410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740532, 34.162434, 31.704519>,  <24.982113, 34.279472, 32.082344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740532, 34.162434, 31.704519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500452, 34.256447, 31.398705>,  <25.356403, 34.312855, 31.215216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500452, 34.256447, 31.398705>,  <25.740532, 34.162434, 31.704519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500452, 34.256447, 31.398705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383884, 0.923214, -0.017553,
		0.701707, -0.304029, -0.644339,
		-0.600200, 0.235035, -0.764539,
		25.320393, 34.326958, 31.169342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220114, 34.262924, 32.317619>,  <25.740532, 34.162434, 31.704519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220114, 34.262924, 32.317619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068731, 33.958199, 32.527916>,  <25.977901, 33.775364, 32.654095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068731, 33.958199, 32.527916>,  <26.220114, 34.262924, 32.317619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068731, 33.958199, 32.527916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444754, 0.348464, 0.825086,
		-0.811766, 0.546087, 0.206942,
		-0.378457, -0.761815, 0.525746,
		25.955194, 33.729652, 32.685638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975813, 34.601086, 32.920528>,  <26.220114, 34.262924, 32.317619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975813, 34.601086, 32.920528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991375, 34.208000, 32.992920>,  <26.000711, 33.972149, 33.036354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991375, 34.208000, 32.992920>,  <25.975813, 34.601086, 32.920528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991375, 34.208000, 32.992920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377715, 0.182142, 0.907830,
		-0.925104, 0.033042, 0.378273,
		0.038903, -0.982717, 0.180980,
		26.003046, 33.913185, 33.047215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546429, 34.458855, 33.468674>,  <25.975813, 34.601086, 32.920528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546429, 34.458855, 33.468674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833244, 34.180878, 33.447098>,  <26.005335, 34.014091, 33.434151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833244, 34.180878, 33.447098>,  <25.546429, 34.458855, 33.468674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.833244, 34.180878, 33.447098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311280, 0.250016, 0.916840,
		-0.623665, -0.674201, 0.395593,
		0.717040, -0.694942, -0.053939,
		26.048357, 33.972397, 33.430916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578365, 33.949055, 34.111004>,  <25.546429, 34.458855, 33.468674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.578365, 33.949055, 34.111004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944349, 33.974556, 33.951614>,  <26.163940, 33.989857, 33.855980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944349, 33.974556, 33.951614>,  <25.578365, 33.949055, 34.111004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944349, 33.974556, 33.951614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394287, 0.069073, 0.916388,
		0.085953, -0.995572, 0.038059,
		0.914959, 0.063760, -0.398478,
		26.218838, 33.993683, 33.832069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911591, 33.488949, 34.426685>,  <25.578365, 33.949055, 34.111004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911591, 33.488949, 34.426685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192310, 33.736168, 34.284985>,  <26.360743, 33.884499, 34.199963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192310, 33.736168, 34.284985>,  <25.911591, 33.488949, 34.426685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192310, 33.736168, 34.284985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417239, 0.046447, 0.907609,
		0.577397, -0.784770, -0.225276,
		0.701801, 0.618045, -0.354255,
		26.402851, 33.921581, 34.178707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371157, 33.334812, 34.830204>,  <25.911591, 33.488949, 34.426685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371157, 33.334812, 34.830204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552515, 33.660423, 34.684994>,  <26.661329, 33.855789, 34.597870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552515, 33.660423, 34.684994>,  <26.371157, 33.334812, 34.830204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552515, 33.660423, 34.684994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549058, 0.065758, 0.833193,
		0.702118, -0.577085, -0.417137,
		0.453394, 0.814032, -0.363024,
		26.688534, 33.904633, 34.576088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160221, 33.307678, 34.997482>,  <26.371157, 33.334812, 34.830204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160221, 33.307678, 34.997482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142597, 33.696030, 34.903282>,  <27.132023, 33.929039, 34.846764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142597, 33.696030, 34.903282>,  <27.160221, 33.307678, 34.997482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142597, 33.696030, 34.903282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457371, 0.229174, 0.859238,
		0.888184, -0.069851, -0.454148,
		-0.044060, 0.970876, -0.235497,
		27.129379, 33.987293, 34.832634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823208, 33.604198, 35.139927>,  <27.160221, 33.307678, 34.997482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823208, 33.604198, 35.139927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548807, 33.893929, 35.167492>,  <27.384167, 34.067768, 35.184029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548807, 33.893929, 35.167492>,  <27.823208, 33.604198, 35.139927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548807, 33.893929, 35.167492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510762, 0.411948, 0.754600,
		0.518190, 0.552855, -0.652557,
		-0.686004, 0.724327, 0.068911,
		27.343006, 34.111225, 35.188164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414236, 33.393642, 35.339428>,  <27.823208, 33.604198, 35.139927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414236, 33.393642, 35.339428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156269, 33.227478, 35.082829>,  <28.001490, 33.127781, 34.928871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156269, 33.227478, 35.082829>,  <28.414236, 33.393642, 35.339428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156269, 33.227478, 35.082829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601080, -0.794099, -0.090055,
		-0.472000, -0.443668, 0.761824,
		-0.644918, -0.415411, -0.641494,
		27.962793, 33.102856, 34.890381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850164, 33.874466, 34.924255>,  <28.414236, 33.393642, 35.339428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850164, 33.874466, 34.924255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679781, 33.968533, 35.273712>,  <28.577551, 34.024971, 35.483387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679781, 33.968533, 35.273712>,  <28.850164, 33.874466, 34.924255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679781, 33.968533, 35.273712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504230, -0.740055, 0.445051,
		0.751206, 0.630092, 0.196657,
		-0.425960, 0.235165, 0.873645,
		28.551992, 34.039082, 35.535805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323900, 33.948761, 35.465164>,  <28.850164, 33.874466, 34.924255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323900, 33.948761, 35.465164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978737, 33.813534, 35.615417>,  <28.771639, 33.732399, 35.705570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978737, 33.813534, 35.615417>,  <29.323900, 33.948761, 35.465164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978737, 33.813534, 35.615417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470314, -0.809196, 0.352145,
		0.184913, 0.480534, 0.857260,
		-0.862909, -0.338065, 0.375633,
		28.719864, 33.712112, 35.728107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481106, 33.817242, 36.131275>,  <29.323900, 33.948761, 35.465164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481106, 33.817242, 36.131275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167135, 33.604599, 36.003975>,  <28.978752, 33.477013, 35.927593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167135, 33.604599, 36.003975>,  <29.481106, 33.817242, 36.131275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167135, 33.604599, 36.003975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400744, -0.827339, 0.393591,
		-0.472538, 0.181403, 0.862439,
		-0.784928, -0.531604, -0.318253,
		28.931656, 33.445118, 35.908501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996719, 33.452477, 36.687019>,  <29.481106, 33.817242, 36.131275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996719, 33.452477, 36.687019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079491, 33.291592, 36.330276>,  <29.129152, 33.195061, 36.116230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079491, 33.291592, 36.330276>,  <28.996719, 33.452477, 36.687019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079491, 33.291592, 36.330276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468091, -0.759779, 0.451250,
		-0.859111, -0.510846, 0.031051,
		0.206927, -0.402209, -0.891857,
		29.141569, 33.170929, 36.062717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818939, 32.683926, 36.664669>,  <28.996719, 33.452477, 36.687019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818939, 32.683926, 36.664669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112886, 32.833305, 36.438217>,  <29.289255, 32.922932, 36.302345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112886, 32.833305, 36.438217>,  <28.818939, 32.683926, 36.664669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112886, 32.833305, 36.438217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651705, -0.619921, 0.437011,
		-0.187756, -0.690096, -0.698938,
		0.734867, 0.373450, -0.566133,
		29.333347, 32.945339, 36.268375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258577, 32.142548, 36.664360>,  <28.818939, 32.683926, 36.664669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258577, 32.142548, 36.664360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486973, 32.417255, 36.484444>,  <29.624010, 32.582081, 36.376492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486973, 32.417255, 36.484444>,  <29.258577, 32.142548, 36.664360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486973, 32.417255, 36.484444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803513, -0.579859, 0.134651,
		-0.168342, -0.438299, -0.882924,
		0.570989, 0.686773, -0.449793,
		29.658270, 32.623287, 36.349506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616484, 31.876568, 36.109905>,  <29.258577, 32.142548, 36.664360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616484, 31.876568, 36.109905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851051, 32.191479, 36.186119>,  <29.991793, 32.380424, 36.231850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851051, 32.191479, 36.186119>,  <29.616484, 31.876568, 36.109905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851051, 32.191479, 36.186119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805377, -0.591822, -0.033385,
		0.086481, 0.173032, -0.981112,
		0.586420, 0.787278, 0.190537,
		30.026978, 32.427662, 36.243279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332977, 31.854498, 35.621391>,  <29.616484, 31.876568, 36.109905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332977, 31.854498, 35.621391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383673, 32.061142, 35.960106>,  <30.414091, 32.185127, 36.163334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383673, 32.061142, 35.960106>,  <30.332977, 31.854498, 35.621391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383673, 32.061142, 35.960106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871560, -0.465604, 0.153609,
		0.473624, 0.718559, -0.509267,
		0.126739, 0.516610, 0.846789,
		30.421694, 32.216125, 36.214142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079969, 31.982887, 35.648228>,  <30.332977, 31.854498, 35.621391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079969, 31.982887, 35.648228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938038, 32.006176, 36.021473>,  <30.852879, 32.020149, 36.245422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938038, 32.006176, 36.021473>,  <31.079969, 31.982887, 35.648228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938038, 32.006176, 36.021473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785455, -0.522783, 0.331298,
		0.507106, 0.850475, 0.139768,
		-0.354829, 0.058222, 0.933117,
		30.831589, 32.023643, 36.301407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694933, 32.190750, 36.009769>,  <31.079969, 31.982887, 35.648228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694933, 32.190750, 36.009769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455118, 32.076836, 36.308956>,  <31.311230, 32.008488, 36.488468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455118, 32.076836, 36.308956>,  <31.694933, 32.190750, 36.009769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455118, 32.076836, 36.308956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799945, -0.183531, 0.571319,
		-0.025427, 0.940858, 0.337844,
		-0.599535, -0.284784, 0.747968,
		31.275257, 31.991400, 36.533348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849419, 32.530701, 36.681618>,  <31.694933, 32.190750, 36.009769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849419, 32.530701, 36.681618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680664, 32.185139, 36.791664>,  <31.579411, 31.977802, 36.857693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680664, 32.185139, 36.791664>,  <31.849419, 32.530701, 36.681618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680664, 32.185139, 36.791664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757611, -0.169232, 0.630386,
		-0.498033, 0.474380, 0.725897,
		-0.421887, -0.863901, 0.275112,
		31.554098, 31.925968, 36.874199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775051, 32.490646, 37.441208>,  <31.849419, 32.530701, 36.681618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775051, 32.490646, 37.441208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780951, 32.129086, 37.270214>,  <31.784491, 31.912149, 37.167618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780951, 32.129086, 37.270214>,  <31.775051, 32.490646, 37.441208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780951, 32.129086, 37.270214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755746, -0.269859, 0.596678,
		-0.654699, -0.331874, 0.679139,
		0.014750, -0.903900, -0.427489,
		31.785376, 31.857916, 37.141968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658133, 31.856449, 37.835312>,  <31.775051, 32.490646, 37.441208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658133, 31.856449, 37.835312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926847, 31.808867, 37.542862>,  <32.088078, 31.780317, 37.367390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926847, 31.808867, 37.542862>,  <31.658133, 31.856449, 37.835312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926847, 31.808867, 37.542862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704959, -0.200393, 0.680349,
		-0.227447, -0.972466, -0.050759,
		0.671789, -0.118960, -0.731128,
		32.128384, 31.773180, 37.323524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107914, 31.311037, 38.055012>,  <31.658133, 31.856449, 37.835312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107914, 31.311037, 38.055012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317142, 31.487261, 37.763176>,  <32.442680, 31.592995, 37.588074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317142, 31.487261, 37.763176>,  <32.107914, 31.311037, 38.055012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317142, 31.487261, 37.763176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834593, -0.091238, 0.543259,
		0.172772, -0.893074, -0.415413,
		0.523072, 0.440561, -0.729590,
		32.474064, 31.619429, 37.544300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935501, 31.901398, 38.498089>,  <32.107914, 31.311037, 38.055012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935501, 31.901398, 38.498089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750753, 32.005634, 38.837208>,  <31.639904, 32.068176, 39.040680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750753, 32.005634, 38.837208>,  <31.935501, 31.901398, 38.498089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750753, 32.005634, 38.837208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873372, 0.300221, 0.383522,
		-0.154587, 0.917584, -0.366255,
		-0.461871, 0.260589, 0.847802,
		31.612192, 32.083813, 39.091549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186237, 32.519966, 38.863728>,  <31.935501, 31.901398, 38.498089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186237, 32.519966, 38.863728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060204, 32.333191, 39.194229>,  <31.984583, 32.221127, 39.392529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060204, 32.333191, 39.194229>,  <32.186237, 32.519966, 38.863728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060204, 32.333191, 39.194229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838172, 0.271466, 0.473047,
		-0.445183, 0.841590, 0.305841,
		-0.315086, -0.466940, 0.826249,
		31.965677, 32.193108, 39.442104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605793, 32.543278, 38.247440>,  <32.186237, 32.519966, 38.863728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605793, 32.543278, 38.247440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693996, 32.933277, 38.258434>,  <32.746918, 33.167274, 38.265030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693996, 32.933277, 38.258434>,  <32.605793, 32.543278, 38.247440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693996, 32.933277, 38.258434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590113, 0.155798, -0.792145,
		-0.776621, 0.158456, 0.609713,
		0.220512, 0.974997, 0.027489,
		32.760151, 33.225777, 38.266682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009232, 32.998417, 38.054707>,  <32.605793, 32.543278, 38.247440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009232, 32.998417, 38.054707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306767, 33.265751, 38.057011>,  <32.485287, 33.426151, 38.058392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306767, 33.265751, 38.057011>,  <32.009232, 32.998417, 38.054707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306767, 33.265751, 38.057011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374727, 0.424163, -0.824418,
		-0.553432, 0.611074, 0.565952,
		0.743837, 0.668337, 0.005759,
		32.529919, 33.466251, 38.058739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686953, 33.641171, 37.861736>,  <32.009232, 32.998417, 38.054707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686953, 33.641171, 37.861736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072811, 33.687634, 37.767109>,  <32.304325, 33.715511, 37.710331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072811, 33.687634, 37.767109>,  <31.686953, 33.641171, 37.861736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072811, 33.687634, 37.767109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262972, 0.483602, -0.834850,
		0.017433, 0.867546, 0.497051,
		0.964646, 0.116156, -0.236571,
		32.362206, 33.722481, 37.696136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831728, 34.349438, 37.544178>,  <31.686953, 33.641171, 37.861736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831728, 34.349438, 37.544178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138447, 34.132702, 37.406521>,  <32.322479, 34.002663, 37.323925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138447, 34.132702, 37.406521>,  <31.831728, 34.349438, 37.544178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138447, 34.132702, 37.406521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210248, 0.294555, -0.932219,
		0.606480, 0.787178, 0.111944,
		0.766797, -0.541837, -0.344145,
		32.368484, 33.970150, 37.303276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187592, 34.834190, 37.041378>,  <31.831728, 34.349438, 37.544178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187592, 34.834190, 37.041378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272064, 34.451580, 36.960926>,  <32.322750, 34.222012, 36.912655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272064, 34.451580, 36.960926>,  <32.187592, 34.834190, 37.041378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272064, 34.451580, 36.960926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030716, 0.212167, -0.976750,
		0.976963, 0.200098, 0.074188,
		0.211186, -0.956528, -0.201133,
		32.335419, 34.164623, 36.900585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802948, 34.936157, 36.685173>,  <32.187592, 34.834190, 37.041378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802948, 34.936157, 36.685173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644615, 34.580280, 36.594162>,  <32.549618, 34.366756, 36.539555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644615, 34.580280, 36.594162>,  <32.802948, 34.936157, 36.685173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644615, 34.580280, 36.594162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034916, 0.233006, -0.971848,
		0.917660, -0.392631, -0.061166,
		-0.395830, -0.889690, -0.227530,
		32.525867, 34.313374, 36.525902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141846, 34.752155, 36.078625>,  <32.802948, 34.936157, 36.685173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141846, 34.752155, 36.078625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811230, 34.527023, 36.075958>,  <32.612858, 34.391945, 36.074360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811230, 34.527023, 36.075958>,  <33.141846, 34.752155, 36.078625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811230, 34.527023, 36.075958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038438, 0.068256, -0.996927,
		0.561559, -0.823748, -0.078051,
		-0.826544, -0.562833, -0.006666,
		32.563267, 34.358173, 36.073959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224739, 34.294601, 35.598541>,  <33.141846, 34.752155, 36.078625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224739, 34.294601, 35.598541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825474, 34.288868, 35.622078>,  <32.585915, 34.285427, 35.636200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825474, 34.288868, 35.622078>,  <33.224739, 34.294601, 35.598541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825474, 34.288868, 35.622078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060486, 0.186121, -0.980663,
		0.003101, -0.982423, -0.186646,
		-0.998164, -0.014330, 0.058845,
		32.526024, 34.284569, 35.639732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015263, 33.844990, 35.012497>,  <33.224739, 34.294601, 35.598541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015263, 33.844990, 35.012497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684868, 34.041389, 35.123245>,  <32.486629, 34.159229, 35.189693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684868, 34.041389, 35.123245>,  <33.015263, 33.844990, 35.012497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684868, 34.041389, 35.123245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240887, 0.136612, -0.960890,
		-0.509620, -0.860382, 0.005435,
		-0.825991, 0.490998, 0.276875,
		32.437069, 34.188690, 35.206306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563999, 33.642483, 34.383575>,  <33.015263, 33.844990, 35.012497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563999, 33.642483, 34.383575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395668, 33.954685, 34.568493>,  <32.294670, 34.142006, 34.679443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395668, 33.954685, 34.568493>,  <32.563999, 33.642483, 34.383575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395668, 33.954685, 34.568493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254468, 0.387583, -0.886016,
		-0.870719, -0.490496, 0.035510,
		-0.420824, 0.780508, 0.462292,
		32.269421, 34.188839, 34.707180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960960, 33.731419, 34.016373>,  <32.563999, 33.642483, 34.383575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960960, 33.731419, 34.016373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016895, 34.079613, 34.205139>,  <32.050457, 34.288528, 34.318398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016895, 34.079613, 34.205139>,  <31.960960, 33.731419, 34.016373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016895, 34.079613, 34.205139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291845, 0.491658, -0.820426,
		-0.946188, -0.022997, 0.322800,
		0.139840, 0.870485, 0.471913,
		32.058846, 34.340759, 34.346714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361965, 34.228992, 33.934967>,  <31.960960, 33.731419, 34.016373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361965, 34.228992, 33.934967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682232, 34.459194, 34.001564>,  <31.874392, 34.597317, 34.041523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682232, 34.459194, 34.001564>,  <31.361965, 34.228992, 33.934967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682232, 34.459194, 34.001564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272185, 0.596993, -0.754662,
		-0.533709, 0.558918, 0.634638,
		0.800668, 0.575509, 0.166492,
		31.922432, 34.631847, 34.051510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077061, 34.857025, 33.959785>,  <31.361965, 34.228992, 33.934967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077061, 34.857025, 33.959785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464811, 34.909645, 33.876839>,  <31.697462, 34.941216, 33.827068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464811, 34.909645, 33.876839>,  <31.077061, 34.857025, 33.959785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464811, 34.909645, 33.876839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230972, 0.775238, -0.587927,
		0.083422, 0.617820, 0.781882,
		0.969377, 0.131547, -0.207371,
		31.755625, 34.949108, 33.814629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090483, 35.448597, 33.948544>,  <31.077061, 34.857025, 33.959785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090483, 35.448597, 33.948544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432413, 35.374218, 33.754765>,  <31.637571, 35.329590, 33.638496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432413, 35.374218, 33.754765>,  <31.090483, 35.448597, 33.948544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432413, 35.374218, 33.754765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199369, 0.744242, -0.637461,
		0.479086, 0.641503, 0.599124,
		0.854827, -0.185952, -0.484452,
		31.688862, 35.318432, 33.609428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492035, 36.126122, 33.926460>,  <31.090483, 35.448597, 33.948544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492035, 36.126122, 33.926460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611065, 35.887291, 33.628479>,  <31.682484, 35.743992, 33.449692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611065, 35.887291, 33.628479>,  <31.492035, 36.126122, 33.926460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611065, 35.887291, 33.628479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339137, 0.663299, -0.667099,
		0.892432, 0.451152, -0.005109,
		0.297574, -0.597073, -0.744952,
		31.700336, 35.708168, 33.404995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731583, 36.609749, 33.483070>,  <31.492035, 36.126122, 33.926460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731583, 36.609749, 33.483070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718014, 36.287575, 33.246384>,  <31.709873, 36.094273, 33.104370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718014, 36.287575, 33.246384>,  <31.731583, 36.609749, 33.483070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718014, 36.287575, 33.246384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224317, 0.583089, -0.780826,
		0.973926, 0.106246, -0.200452,
		-0.033922, -0.805431, -0.591718,
		31.707838, 36.045944, 33.068867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282280, 36.734135, 32.919666>,  <31.731583, 36.609749, 33.483070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282280, 36.734135, 32.919666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018066, 36.456120, 32.806095>,  <31.859537, 36.289310, 32.737953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018066, 36.456120, 32.806095>,  <32.282280, 36.734135, 32.919666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018066, 36.456120, 32.806095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220551, 0.541116, -0.811511,
		0.717667, -0.473413, -0.510718,
		-0.660538, -0.695035, -0.283930,
		31.819904, 36.247608, 32.720917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415020, 36.721375, 32.276028>,  <32.282280, 36.734135, 32.919666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415020, 36.721375, 32.276028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038052, 36.590874, 32.305439>,  <31.811871, 36.512573, 32.323086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038052, 36.590874, 32.305439>,  <32.415020, 36.721375, 32.276028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038052, 36.590874, 32.305439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212721, 0.415118, -0.884549,
		0.258061, -0.849257, -0.460616,
		-0.942419, -0.326250, 0.073529,
		31.755325, 36.493000, 32.327499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331478, 36.338425, 31.647854>,  <32.415020, 36.721375, 32.276028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331478, 36.338425, 31.647854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975105, 36.452690, 31.789072>,  <31.761282, 36.521248, 31.873802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975105, 36.452690, 31.789072>,  <32.331478, 36.338425, 31.647854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975105, 36.452690, 31.789072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172510, 0.506241, -0.844962,
		-0.420102, -0.813705, -0.401744,
		-0.890929, 0.285665, 0.353045,
		31.707827, 36.538391, 31.894985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851982, 36.100216, 31.132547>,  <32.331478, 36.338425, 31.647854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851982, 36.100216, 31.132547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649368, 36.360249, 31.359110>,  <31.527800, 36.516270, 31.495047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649368, 36.360249, 31.359110>,  <31.851982, 36.100216, 31.132547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649368, 36.360249, 31.359110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333707, 0.457909, -0.823990,
		-0.795024, -0.606392, -0.015009,
		-0.506534, 0.650084, 0.566406,
		31.497408, 36.555275, 31.529032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303595, 36.117573, 30.822706>,  <31.851982, 36.100216, 31.132547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303595, 36.117573, 30.822706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294472, 36.448067, 31.047852>,  <31.288998, 36.646362, 31.182940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294472, 36.448067, 31.047852>,  <31.303595, 36.117573, 30.822706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294472, 36.448067, 31.047852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268480, 0.537268, -0.799538,
		-0.963015, -0.169353, 0.209574,
		-0.022807, 0.826234, 0.562865,
		31.287630, 36.695938, 31.216711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573338, 36.327473, 30.847345>,  <31.303595, 36.117573, 30.822706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573338, 36.327473, 30.847345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818380, 36.633389, 30.927156>,  <30.965406, 36.816936, 30.975042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818380, 36.633389, 30.927156>,  <30.573338, 36.327473, 30.847345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818380, 36.633389, 30.927156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378892, 0.505703, -0.775052,
		-0.693650, 0.399205, 0.599570,
		0.612609, 0.764787, 0.199526,
		31.002163, 36.862823, 30.987015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166529, 37.032379, 30.810822>,  <30.573338, 36.327473, 30.847345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166529, 37.032379, 30.810822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551458, 37.125828, 30.755180>,  <30.782417, 37.181896, 30.721796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551458, 37.125828, 30.755180>,  <30.166529, 37.032379, 30.810822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551458, 37.125828, 30.755180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242116, 0.503493, -0.829382,
		-0.123725, 0.831815, 0.541088,
		0.962326, 0.233621, -0.139101,
		30.840157, 37.195915, 30.713449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114515, 37.774075, 30.599844>,  <30.166529, 37.032379, 30.810822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114515, 37.774075, 30.599844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479080, 37.657516, 30.483624>,  <30.697819, 37.587582, 30.413891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479080, 37.657516, 30.483624>,  <30.114515, 37.774075, 30.599844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479080, 37.657516, 30.483624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066911, 0.591743, -0.803346,
		0.406021, 0.751619, 0.519823,
		0.911411, -0.291393, -0.290552,
		30.752504, 37.570099, 30.396458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561478, 38.401207, 30.310102>,  <30.114515, 37.774075, 30.599844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561478, 38.401207, 30.310102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742031, 38.083488, 30.147449>,  <30.850363, 37.892857, 30.049858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742031, 38.083488, 30.147449>,  <30.561478, 38.401207, 30.310102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742031, 38.083488, 30.147449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029585, 0.468768, -0.882825,
		0.891840, 0.386462, 0.235093,
		0.451383, -0.794294, -0.406633,
		30.877445, 37.845200, 30.025459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987175, 38.714409, 29.830591>,  <30.561478, 38.401207, 30.310102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987175, 38.714409, 29.830591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948572, 38.330250, 29.726036>,  <30.925409, 38.099754, 29.663303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948572, 38.330250, 29.726036>,  <30.987175, 38.714409, 29.830591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948572, 38.330250, 29.726036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021431, 0.260545, -0.965224,
		0.995101, -0.098754, -0.004563,
		-0.096509, -0.960398, -0.261386,
		30.919619, 38.042130, 29.647621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521469, 38.590046, 29.401541>,  <30.987175, 38.714409, 29.830591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521469, 38.590046, 29.401541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256964, 38.304115, 29.310541>,  <31.098261, 38.132557, 29.255941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256964, 38.304115, 29.310541>,  <31.521469, 38.590046, 29.401541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256964, 38.304115, 29.310541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116149, 0.202051, -0.972463,
		0.741108, -0.669477, -0.050583,
		-0.661263, -0.714826, -0.227501,
		31.058584, 38.089668, 29.242290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969728, 38.086296, 28.915808>,  <31.521469, 38.590046, 29.401541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969728, 38.086296, 28.915808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576992, 38.057919, 28.845434>,  <31.341351, 38.040894, 28.803209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576992, 38.057919, 28.845434>,  <31.969728, 38.086296, 28.915808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576992, 38.057919, 28.845434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167274, 0.113649, -0.979338,
		0.089462, -0.990986, -0.099720,
		-0.981843, -0.070932, -0.175934,
		31.282440, 38.036636, 28.792654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834112, 37.752380, 28.264795>,  <31.969728, 38.086296, 28.915808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834112, 37.752380, 28.264795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480051, 37.932507, 28.311657>,  <31.267614, 38.040581, 28.339773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480051, 37.932507, 28.311657>,  <31.834112, 37.752380, 28.264795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480051, 37.932507, 28.311657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002412, 0.256213, -0.966617,
		-0.465297, -0.855320, -0.227873,
		-0.885151, 0.450314, 0.117152,
		31.214506, 38.067600, 28.346802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391455, 37.475895, 27.755732>,  <31.834112, 37.752380, 28.264795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391455, 37.475895, 27.755732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188570, 37.807343, 27.850494>,  <31.066839, 38.006210, 27.907352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188570, 37.807343, 27.850494>,  <31.391455, 37.475895, 27.755732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188570, 37.807343, 27.850494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218762, 0.142098, -0.965376,
		-0.833595, -0.541475, 0.109197,
		-0.507210, 0.828621, 0.236907,
		31.036407, 38.055927, 27.921566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847778, 37.449833, 27.323883>,  <31.391455, 37.475895, 27.755732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847778, 37.449833, 27.323883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870394, 37.826965, 27.455257>,  <30.883963, 38.053246, 27.534082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870394, 37.826965, 27.455257>,  <30.847778, 37.449833, 27.323883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870394, 37.826965, 27.455257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282159, 0.330642, -0.900590,
		-0.957700, -0.041755, 0.284722,
		0.056538, 0.942832, 0.328438,
		30.887356, 38.109814, 27.553789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221176, 37.793781, 27.127390>,  <30.847778, 37.449833, 27.323883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221176, 37.793781, 27.127390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513668, 38.061356, 27.180794>,  <30.689163, 38.221901, 27.212837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513668, 38.061356, 27.180794>,  <30.221176, 37.793781, 27.127390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513668, 38.061356, 27.180794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184811, 0.382688, -0.905204,
		-0.656618, 0.637238, 0.403460,
		0.731230, 0.668938, 0.133512,
		30.733038, 38.262035, 27.220848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927156, 38.479469, 26.998337>,  <30.221176, 37.793781, 27.127390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927156, 38.479469, 26.998337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320225, 38.540665, 26.956484>,  <30.556067, 38.577381, 26.931372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320225, 38.540665, 26.956484>,  <29.927156, 38.479469, 26.998337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320225, 38.540665, 26.956484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156921, 0.386268, -0.908940,
		-0.098642, 0.909610, 0.403582,
		0.982673, 0.152990, -0.104634,
		30.615026, 38.586563, 26.925093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889208, 39.075375, 26.832150>,  <29.927156, 38.479469, 26.998337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889208, 39.075375, 26.832150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272694, 39.007679, 26.740740>,  <30.502785, 38.967060, 26.685894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272694, 39.007679, 26.740740>,  <29.889208, 39.075375, 26.832150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272694, 39.007679, 26.740740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070620, 0.636745, -0.767833,
		0.275458, 0.752272, 0.598506,
		0.958716, -0.169239, -0.228522,
		30.560308, 38.956909, 26.672184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295481, 39.670441, 26.971468>,  <29.889208, 39.075375, 26.832150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295481, 39.670441, 26.971468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464188, 39.440723, 26.690811>,  <30.565413, 39.302895, 26.522417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464188, 39.440723, 26.690811>,  <30.295481, 39.670441, 26.971468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464188, 39.440723, 26.690811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107341, 0.800021, -0.590292,
		0.900327, 0.173652, 0.399069,
		0.421769, -0.574292, -0.701640,
		30.590717, 39.268436, 26.480318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535254, 40.258121, 26.515179>,  <30.295481, 39.670441, 26.971468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535254, 40.258121, 26.515179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572859, 39.921600, 26.302248>,  <30.595423, 39.719688, 26.174490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572859, 39.921600, 26.302248>,  <30.535254, 40.258121, 26.515179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572859, 39.921600, 26.302248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006290, 0.534182, -0.845346,
		0.995551, 0.082822, 0.044928,
		0.094013, -0.841303, -0.532326,
		30.601063, 39.669209, 26.142550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167501, 40.243011, 26.210287>,  <30.535254, 40.258121, 26.515179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167501, 40.243011, 26.210287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936096, 40.003193, 25.989067>,  <30.797253, 39.859303, 25.856335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936096, 40.003193, 25.989067>,  <31.167501, 40.243011, 26.210287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936096, 40.003193, 25.989067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076566, 0.635122, -0.768607,
		0.812073, -0.486993, -0.321521,
		-0.578512, -0.599548, -0.553052,
		30.762543, 39.823330, 25.823151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402882, 40.417000, 25.513353>,  <31.167501, 40.243011, 26.210287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402882, 40.417000, 25.513353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044006, 40.250484, 25.454355>,  <30.828680, 40.150578, 25.418957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044006, 40.250484, 25.454355>,  <31.402882, 40.417000, 25.513353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044006, 40.250484, 25.454355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219428, 0.710002, -0.669140,
		0.383276, -0.567981, -0.728352,
		-0.897191, -0.416286, -0.147496,
		30.774849, 40.125599, 25.410107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412941, 40.527840, 24.891155>,  <31.402882, 40.417000, 25.513353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412941, 40.527840, 24.891155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026432, 40.467857, 24.974895>,  <30.794527, 40.431870, 25.025139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026432, 40.467857, 24.974895>,  <31.412941, 40.527840, 24.891155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026432, 40.467857, 24.974895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244991, 0.785767, -0.567934,
		-0.079335, -0.600069, -0.796005,
		-0.966274, -0.149957, 0.209350,
		30.736549, 40.422871, 25.037701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106350, 40.702919, 24.276247>,  <31.412941, 40.527840, 24.891155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106350, 40.702919, 24.276247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830654, 40.720398, 24.565533>,  <30.665236, 40.730885, 24.739103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830654, 40.720398, 24.565533>,  <31.106350, 40.702919, 24.276247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830654, 40.720398, 24.565533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383866, 0.824547, -0.415655,
		-0.614487, -0.564103, -0.551537,
		-0.689241, 0.043698, 0.723213,
		30.623882, 40.733509, 24.782497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477272, 40.742805, 23.908232>,  <31.106350, 40.702919, 24.276247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477272, 40.742805, 23.908232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399614, 40.869659, 24.279551>,  <30.353020, 40.945770, 24.502342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399614, 40.869659, 24.279551>,  <30.477272, 40.742805, 23.908232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399614, 40.869659, 24.279551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286685, 0.886647, -0.362862,
		-0.938147, -0.336576, -0.081218,
		-0.194143, 0.317134, 0.928297,
		30.341372, 40.964798, 24.558039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805490, 41.110405, 23.841825>,  <30.477272, 40.742805, 23.908232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805490, 41.110405, 23.841825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973368, 41.246395, 24.178461>,  <30.074093, 41.327991, 24.380442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973368, 41.246395, 24.178461>,  <29.805490, 41.110405, 23.841825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973368, 41.246395, 24.178461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205170, 0.938737, -0.276909,
		-0.884174, -0.056452, 0.463734,
		0.419692, 0.339980, 0.841589,
		30.099276, 41.348389, 24.430939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367416, 41.619648, 24.281319>,  <29.805490, 41.110405, 23.841825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367416, 41.619648, 24.281319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746809, 41.712780, 24.367273>,  <29.974443, 41.768658, 24.418846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746809, 41.712780, 24.367273>,  <29.367416, 41.619648, 24.281319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746809, 41.712780, 24.367273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201279, 0.966568, -0.158849,
		-0.244687, 0.107413, 0.963634,
		0.948480, 0.232827, 0.214886,
		30.031353, 41.782627, 24.431740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584787, 42.040356, 24.971870>,  <29.367416, 41.619648, 24.281319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584787, 42.040356, 24.971870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775654, 42.088070, 24.623598>,  <29.890173, 42.116699, 24.414635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775654, 42.088070, 24.623598>,  <29.584787, 42.040356, 24.971870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775654, 42.088070, 24.623598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289026, 0.956932, -0.027290,
		0.829926, 0.264671, 0.491092,
		0.477165, 0.119290, -0.870680,
		29.918804, 42.123856, 24.362394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914625, 42.535690, 25.136253>,  <29.584787, 42.040356, 24.971870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914625, 42.535690, 25.136253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817947, 42.542400, 24.748171>,  <29.759941, 42.546425, 24.515322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817947, 42.542400, 24.748171>,  <29.914625, 42.535690, 25.136253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817947, 42.542400, 24.748171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400085, 0.909185, 0.115388,
		0.884034, 0.416054, -0.213031,
		-0.241692, 0.016776, -0.970208,
		29.745440, 42.547432, 24.457108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615459, 42.144188, 25.733265>,  <29.914625, 42.535690, 25.136253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615459, 42.144188, 25.733265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676655, 42.528362, 25.826359>,  <29.713371, 42.758865, 25.882215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676655, 42.528362, 25.826359>,  <29.615459, 42.144188, 25.733265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676655, 42.528362, 25.826359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459932, 0.277643, -0.843432,
		-0.874676, 0.021993, 0.484209,
		0.152987, 0.960433, 0.232733,
		29.722551, 42.816490, 25.896179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081869, 42.437386, 25.429697>,  <29.615459, 42.144188, 25.733265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081869, 42.437386, 25.429697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309946, 42.762550, 25.477127>,  <29.446793, 42.957649, 25.505585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309946, 42.762550, 25.477127>,  <29.081869, 42.437386, 25.429697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309946, 42.762550, 25.477127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166899, 0.255955, -0.952172,
		-0.804380, 0.523130, 0.281618,
		0.570191, 0.812909, 0.118575,
		29.481003, 43.006424, 25.512699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722475, 43.041260, 25.227730>,  <29.081869, 42.437386, 25.429697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722475, 43.041260, 25.227730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120226, 43.057430, 25.188587>,  <29.358877, 43.067135, 25.165102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120226, 43.057430, 25.188587>,  <28.722475, 43.041260, 25.227730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120226, 43.057430, 25.188587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105574, 0.448925, -0.887311,
		0.008058, 0.892654, 0.450669,
		0.994379, 0.040429, -0.097858,
		29.418539, 43.069557, 25.159229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113071, 43.675270, 25.365076>,  <28.722475, 43.041260, 25.227730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113071, 43.675270, 25.365076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194868, 43.437214, 25.054209>,  <29.243946, 43.294380, 24.867687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194868, 43.437214, 25.054209>,  <29.113071, 43.675270, 25.365076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194868, 43.437214, 25.054209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395765, 0.675895, -0.621720,
		0.895295, 0.434714, -0.097318,
		0.204494, -0.595138, -0.777170,
		29.256216, 43.258671, 24.821058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788250, 43.851585, 25.137295>,  <29.113071, 43.675270, 25.365076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788250, 43.851585, 25.137295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554661, 43.788654, 24.818743>,  <29.414507, 43.750896, 24.627611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554661, 43.788654, 24.818743>,  <29.788250, 43.851585, 25.137295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554661, 43.788654, 24.818743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127325, 0.951143, -0.281273,
		0.801724, -0.265656, -0.535412,
		-0.583975, -0.157332, -0.796379,
		29.379469, 43.741455, 24.579828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274792, 44.032852, 25.627316>,  <29.788250, 43.851585, 25.137295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274792, 44.032852, 25.627316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009468, 43.734196, 25.607132>,  <29.850275, 43.555000, 25.595022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009468, 43.734196, 25.607132>,  <30.274792, 44.032852, 25.627316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009468, 43.734196, 25.607132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034723, -0.098061, 0.994575,
		-0.747541, 0.657957, 0.090970,
		-0.663308, -0.746644, -0.050458,
		29.810476, 43.510204, 25.591995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793562, 44.131546, 26.184303>,  <30.274792, 44.032852, 25.627316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793562, 44.131546, 26.184303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783636, 43.740623, 26.100163>,  <29.777681, 43.506069, 26.049679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783636, 43.740623, 26.100163>,  <29.793562, 44.131546, 26.184303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783636, 43.740623, 26.100163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046669, -0.209054, 0.976790,
		-0.998602, 0.034054, -0.040423,
		-0.024813, -0.977311, -0.210351,
		29.776192, 43.447430, 26.037058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313166, 43.915775, 26.528027>,  <29.793562, 44.131546, 26.184303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313166, 43.915775, 26.528027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512766, 43.582726, 26.431910>,  <29.632526, 43.382896, 26.374239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512766, 43.582726, 26.431910>,  <29.313166, 43.915775, 26.528027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512766, 43.582726, 26.431910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107806, -0.334770, 0.936112,
		-0.859871, -0.441214, -0.256812,
		0.498999, -0.832622, -0.240293,
		29.662466, 43.332939, 26.359821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021107, 43.398010, 26.961525>,  <29.313166, 43.915775, 26.528027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021107, 43.398010, 26.961525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348740, 43.200928, 26.843992>,  <29.545321, 43.082676, 26.773472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348740, 43.200928, 26.843992>,  <29.021107, 43.398010, 26.961525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348740, 43.200928, 26.843992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093439, -0.390771, 0.915733,
		-0.566012, -0.777518, -0.274036,
		0.819084, -0.492711, -0.293832,
		29.594465, 43.053116, 26.755842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885916, 42.749462, 27.047310>,  <29.021107, 43.398010, 26.961525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885916, 42.749462, 27.047310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282734, 42.794777, 27.069258>,  <29.520824, 42.821964, 27.082426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282734, 42.794777, 27.069258>,  <28.885916, 42.749462, 27.047310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282734, 42.794777, 27.069258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016323, -0.548019, 0.836307,
		0.124813, -0.828759, -0.545509,
		0.992046, 0.113286, 0.054872,
		29.580347, 42.828762, 27.085720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194500, 42.155289, 27.177170>,  <28.885916, 42.749462, 27.047310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194500, 42.155289, 27.177170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487476, 42.402111, 27.292253>,  <29.663261, 42.550205, 27.361303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487476, 42.402111, 27.292253>,  <29.194500, 42.155289, 27.177170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487476, 42.402111, 27.292253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152742, -0.560738, 0.813783,
		0.663476, -0.552103, -0.504957,
		0.732441, 0.617054, 0.287707,
		29.707209, 42.587227, 27.378565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710846, 41.672474, 27.453987>,  <29.194500, 42.155289, 27.177170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710846, 41.672474, 27.453987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827095, 42.023872, 27.605661>,  <29.896845, 42.234711, 27.696667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827095, 42.023872, 27.605661>,  <29.710846, 41.672474, 27.453987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827095, 42.023872, 27.605661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297652, -0.459634, 0.836744,
		0.909364, -0.130310, -0.395066,
		0.290622, 0.878497, 0.379187,
		29.914282, 42.287422, 27.719418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446774, 41.638729, 27.670414>,  <29.710846, 41.672474, 27.453987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446774, 41.638729, 27.670414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301291, 41.940392, 27.889128>,  <30.214001, 42.121387, 28.020355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301291, 41.940392, 27.889128>,  <30.446774, 41.638729, 27.670414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301291, 41.940392, 27.889128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224843, -0.498553, 0.837192,
		0.903970, 0.427434, 0.011762,
		-0.363708, 0.754152, 0.546783,
		30.192179, 42.166637, 28.053164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002026, 42.022991, 28.036432>,  <30.446774, 41.638729, 27.670414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002026, 42.022991, 28.036432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668274, 42.104443, 28.241310>,  <30.468023, 42.153313, 28.364237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668274, 42.104443, 28.241310>,  <31.002026, 42.022991, 28.036432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668274, 42.104443, 28.241310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452114, -0.278694, 0.847303,
		0.315282, 0.938544, 0.140473,
		-0.834380, 0.203630, 0.512196,
		30.417959, 42.165531, 28.394968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204592, 42.231865, 28.741869>,  <31.002026, 42.022991, 28.036432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204592, 42.231865, 28.741869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819374, 42.137840, 28.794466>,  <30.588243, 42.081425, 28.826023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819374, 42.137840, 28.794466>,  <31.204592, 42.231865, 28.741869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819374, 42.137840, 28.794466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180324, -0.200066, 0.963046,
		-0.200066, 0.951168, 0.235059,
		-0.963046, -0.235059, 0.131492,
		30.530460, 42.067322, 28.833914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033033, 42.526207, 29.336807>,  <31.204592, 42.231865, 28.741869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033033, 42.526207, 29.336807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743059, 42.254120, 29.293398>,  <30.569075, 42.090870, 29.267353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743059, 42.254120, 29.293398>,  <31.033033, 42.526207, 29.336807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743059, 42.254120, 29.293398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263011, -0.418957, 0.869080,
		-0.636626, 0.601485, 0.482621,
		-0.724936, -0.680214, -0.108522,
		30.525578, 42.050056, 29.260841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543489, 42.529758, 29.969337>,  <31.033033, 42.526207, 29.336807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543489, 42.529758, 29.969337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530212, 42.167675, 29.799868>,  <30.522247, 41.950424, 29.698185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530212, 42.167675, 29.799868>,  <30.543489, 42.529758, 29.969337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530212, 42.167675, 29.799868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162260, -0.423166, 0.891405,
		-0.986190, -0.039159, 0.160924,
		-0.033191, -0.905206, -0.423676,
		30.520254, 41.896114, 29.672766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302233, 42.068668, 30.504620>,  <30.543489, 42.529758, 29.969337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302233, 42.068668, 30.504620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469362, 41.807346, 30.252075>,  <30.569641, 41.650555, 30.100548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469362, 41.807346, 30.252075>,  <30.302233, 42.068668, 30.504620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469362, 41.807346, 30.252075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183586, -0.619880, 0.762918,
		-0.889786, -0.434675, -0.139064,
		0.417825, -0.653304, -0.631361,
		30.594709, 41.611355, 30.062668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956484, 41.442078, 30.701410>,  <30.302233, 42.068668, 30.504620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956484, 41.442078, 30.701410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289890, 41.317341, 30.518978>,  <30.489933, 41.242500, 30.409519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289890, 41.317341, 30.518978>,  <29.956484, 41.442078, 30.701410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289890, 41.317341, 30.518978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094692, -0.732641, 0.673996,
		-0.544324, -0.604972, -0.581137,
		0.833514, -0.311843, -0.456080,
		30.539944, 41.223789, 30.382154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930508, 40.746777, 30.749689>,  <29.956484, 41.442078, 30.701410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930508, 40.746777, 30.749689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311689, 40.850937, 30.687632>,  <30.540400, 40.913433, 30.650396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311689, 40.850937, 30.687632>,  <29.930508, 40.746777, 30.749689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311689, 40.850937, 30.687632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294392, -0.673249, 0.678284,
		0.072172, -0.692047, -0.718235,
		0.952955, 0.260396, -0.155144,
		30.597576, 40.929054, 30.641088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276182, 40.131794, 30.718412>,  <29.930508, 40.746777, 30.749689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276182, 40.131794, 30.718412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573009, 40.390488, 30.788921>,  <30.751106, 40.545704, 30.831226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573009, 40.390488, 30.788921>,  <30.276182, 40.131794, 30.718412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573009, 40.390488, 30.788921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332184, -0.583200, 0.741304,
		0.582227, -0.491543, -0.647608,
		0.742068, 0.646732, 0.176272,
		30.795630, 40.584507, 30.841803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778009, 39.722332, 30.831676>,  <30.276182, 40.131794, 30.718412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778009, 39.722332, 30.831676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914440, 40.072258, 30.969292>,  <30.996298, 40.282215, 31.051861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914440, 40.072258, 30.969292>,  <30.778009, 39.722332, 30.831676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914440, 40.072258, 30.969292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398977, -0.466103, 0.789661,
		0.851167, -0.132070, -0.508008,
		0.341075, 0.874817, 0.344039,
		31.016762, 40.334702, 31.072504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428448, 39.681282, 30.902708>,  <30.778009, 39.722332, 30.831676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428448, 39.681282, 30.902708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369675, 39.982418, 31.159344>,  <31.334412, 40.163101, 31.313326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369675, 39.982418, 31.159344>,  <31.428448, 39.681282, 30.902708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369675, 39.982418, 31.159344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560201, -0.471245, 0.681251,
		0.815222, 0.459517, -0.352503,
		-0.146931, 0.752843, 0.641591,
		31.325596, 40.208271, 31.351820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085838, 39.880020, 31.279663>,  <31.428448, 39.681282, 30.902708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085838, 39.880020, 31.279663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792673, 40.050369, 31.491879>,  <31.616774, 40.152580, 31.619207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792673, 40.050369, 31.491879>,  <32.085838, 39.880020, 31.279663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792673, 40.050369, 31.491879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477739, -0.233029, 0.847032,
		0.484359, 0.874259, -0.032667,
		-0.732913, 0.425874, 0.530537,
		31.572800, 40.178131, 31.651039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407558, 40.169582, 31.843239>,  <32.085838, 39.880020, 31.279663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407558, 40.169582, 31.843239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024727, 40.122322, 31.949095>,  <31.795027, 40.093967, 32.012608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024727, 40.122322, 31.949095>,  <32.407558, 40.169582, 31.843239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024727, 40.122322, 31.949095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288557, -0.303495, 0.908089,
		-0.026971, 0.945480, 0.324562,
		-0.957083, -0.118147, 0.264639,
		31.737602, 40.086880, 32.028488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418121, 40.230789, 32.529419>,  <32.407558, 40.169582, 31.843239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418121, 40.230789, 32.529419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042923, 40.092239, 32.524025>,  <31.817802, 40.009109, 32.520786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042923, 40.092239, 32.524025>,  <32.418121, 40.230789, 32.529419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042923, 40.092239, 32.524025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153593, -0.450193, 0.879622,
		-0.310750, 0.823014, 0.475482,
		-0.938000, -0.346373, -0.013489,
		31.761522, 39.988327, 32.519978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149498, 40.285282, 33.241879>,  <32.418121, 40.230789, 32.529419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149498, 40.285282, 33.241879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890688, 40.032024, 33.071941>,  <31.735403, 39.880070, 32.969978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890688, 40.032024, 33.071941>,  <32.149498, 40.285282, 33.241879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890688, 40.032024, 33.071941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037651, -0.529979, 0.847174,
		-0.761541, 0.564136, 0.319070,
		-0.647022, -0.633145, -0.424841,
		31.696581, 39.842079, 32.944489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644213, 40.122810, 33.826294>,  <32.149498, 40.285282, 33.241879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644213, 40.122810, 33.826294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623909, 39.832554, 33.551815>,  <31.611727, 39.658401, 33.387127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623909, 39.832554, 33.551815>,  <31.644213, 40.122810, 33.826294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623909, 39.832554, 33.551815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206626, -0.664589, 0.718072,
		-0.977102, 0.178234, -0.116203,
		-0.050758, -0.725640, -0.686200,
		31.608683, 39.614861, 33.345955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034863, 39.778912, 34.060253>,  <31.644213, 40.122810, 33.826294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034863, 39.778912, 34.060253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262127, 39.536167, 33.837933>,  <31.398485, 39.390522, 33.704540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262127, 39.536167, 33.837933>,  <31.034863, 39.778912, 34.060253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262127, 39.536167, 33.837933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014879, -0.682864, 0.730393,
		-0.822781, -0.406713, -0.397008,
		0.568163, -0.606862, -0.555797,
		31.432575, 39.354107, 33.671192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706038, 39.063427, 34.126316>,  <31.034863, 39.778912, 34.060253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706038, 39.063427, 34.126316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086866, 39.012440, 34.015095>,  <31.315363, 38.981846, 33.948364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086866, 39.012440, 34.015095>,  <30.706038, 39.063427, 34.126316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086866, 39.012440, 34.015095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128887, -0.657200, 0.742615,
		-0.277396, -0.742859, -0.609272,
		0.952072, -0.127471, -0.278049,
		31.372488, 38.974197, 33.931679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813683, 38.381256, 34.113995>,  <30.706038, 39.063427, 34.126316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813683, 38.381256, 34.113995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194321, 38.502693, 34.133156>,  <31.422705, 38.575554, 34.144653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194321, 38.502693, 34.133156>,  <30.813683, 38.381256, 34.113995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194321, 38.502693, 34.133156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147507, -0.587851, 0.795408,
		0.269636, -0.749843, -0.604179,
		0.951598, 0.303591, 0.047899,
		31.479799, 38.593769, 34.147526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158199, 37.718521, 34.211082>,  <30.813683, 38.381256, 34.113995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158199, 37.718521, 34.211082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408905, 38.012817, 34.313728>,  <31.559328, 38.189396, 34.375317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408905, 38.012817, 34.313728>,  <31.158199, 37.718521, 34.211082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408905, 38.012817, 34.313728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144803, -0.433570, 0.889410,
		0.765636, -0.520291, -0.378283,
		0.626764, 0.735741, 0.256617,
		31.596933, 38.233540, 34.390713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799717, 37.425259, 34.349804>,  <31.158199, 37.718521, 34.211082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799717, 37.425259, 34.349804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735216, 37.757259, 34.563377>,  <31.696516, 37.956459, 34.691521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735216, 37.757259, 34.563377>,  <31.799717, 37.425259, 34.349804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735216, 37.757259, 34.563377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388842, -0.443824, 0.807355,
		0.907083, 0.337806, -0.251172,
		-0.161253, 0.830005, 0.533938,
		31.686840, 38.006260, 34.723560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397495, 37.510422, 34.880508>,  <31.799717, 37.425259, 34.349804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397495, 37.510422, 34.880508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127605, 37.761501, 35.035809>,  <31.965672, 37.912151, 35.128986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127605, 37.761501, 35.035809>,  <32.397495, 37.510422, 34.880508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127605, 37.761501, 35.035809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216454, -0.334613, 0.917159,
		0.705614, 0.702870, 0.089904,
		-0.674727, 0.627701, 0.388247,
		31.925188, 37.949810, 35.152283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770470, 37.789337, 35.348843>,  <32.397495, 37.510422, 34.880508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770470, 37.789337, 35.348843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397686, 37.877861, 35.463718>,  <32.174015, 37.930977, 35.532646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397686, 37.877861, 35.463718>,  <32.770470, 37.789337, 35.348843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397686, 37.877861, 35.463718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235757, -0.231892, 0.943740,
		0.275460, 0.947231, 0.163937,
		-0.931955, 0.221313, 0.287193,
		32.118099, 37.944256, 35.549877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897518, 38.127743, 35.930031>,  <32.770470, 37.789337, 35.348843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897518, 38.127743, 35.930031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511284, 38.023777, 35.933670>,  <32.279541, 37.961399, 35.935856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511284, 38.023777, 35.933670>,  <32.897518, 38.127743, 35.930031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511284, 38.023777, 35.933670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110168, -0.377075, 0.919607,
		-0.235584, 0.888966, 0.392734,
		-0.965590, -0.259911, 0.009103,
		32.221607, 37.945805, 35.936401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875683, 38.124359, 36.706825>,  <32.897518, 38.127743, 35.930031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875683, 38.124359, 36.706825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567680, 37.929550, 36.541954>,  <32.382877, 37.812664, 36.443031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567680, 37.929550, 36.541954>,  <32.875683, 38.124359, 36.706825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567680, 37.929550, 36.541954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126680, -0.516457, 0.846891,
		-0.625333, 0.704327, 0.335979,
		-0.770007, -0.487027, -0.412182,
		32.336678, 37.783443, 36.418301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322029, 38.129608, 37.166267>,  <32.875683, 38.124359, 36.706825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322029, 38.129608, 37.166267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248043, 37.822502, 36.920887>,  <32.203651, 37.638237, 36.773659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248043, 37.822502, 36.920887>,  <32.322029, 38.129608, 37.166267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248043, 37.822502, 36.920887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071660, -0.612022, 0.787587,
		-0.980128, 0.189640, 0.058188,
		-0.184970, -0.767767, -0.613450,
		32.192551, 37.592171, 36.736851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740562, 37.827568, 37.426460>,  <32.322029, 38.129608, 37.166267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740562, 37.827568, 37.426460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897341, 37.534622, 37.203739>,  <31.991407, 37.358856, 37.070107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897341, 37.534622, 37.203739>,  <31.740562, 37.827568, 37.426460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897341, 37.534622, 37.203739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104400, -0.636723, 0.763993,
		-0.914046, -0.241313, -0.326018,
		0.391945, -0.732361, -0.556801,
		32.014923, 37.314915, 37.036697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363747, 37.202892, 37.615410>,  <31.740562, 37.827568, 37.426460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363747, 37.202892, 37.615410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709377, 37.083126, 37.453560>,  <31.916756, 37.011265, 37.356449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709377, 37.083126, 37.453560>,  <31.363747, 37.202892, 37.615410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709377, 37.083126, 37.453560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049185, -0.749778, 0.659859,
		-0.500949, -0.590071, -0.633140,
		0.864078, -0.299414, -0.404623,
		31.968601, 36.993301, 37.332172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274820, 36.414150, 37.535545>,  <31.363747, 37.202892, 37.615410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274820, 36.414150, 37.535545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666780, 36.492092, 37.518467>,  <31.901957, 36.538857, 37.508221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666780, 36.492092, 37.518467>,  <31.274820, 36.414150, 37.535545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666780, 36.492092, 37.518467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175179, -0.738217, 0.651419,
		0.095412, -0.645807, -0.757515,
		0.979902, 0.194854, -0.042697,
		31.960751, 36.550549, 37.505657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601700, 35.742638, 37.593552>,  <31.274820, 36.414150, 37.535545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601700, 35.742638, 37.593552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865976, 36.019440, 37.709911>,  <32.024544, 36.185520, 37.779728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865976, 36.019440, 37.709911>,  <31.601700, 35.742638, 37.593552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865976, 36.019440, 37.709911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287706, -0.591368, 0.753332,
		0.693333, -0.414028, -0.589805,
		0.660693, 0.692001, 0.290896,
		32.064182, 36.227039, 37.797180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200165, 35.342724, 37.868702>,  <31.601700, 35.742638, 37.593552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200165, 35.342724, 37.868702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232082, 35.713852, 38.014462>,  <32.251232, 35.936527, 38.101917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232082, 35.713852, 38.014462>,  <32.200165, 35.342724, 37.868702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232082, 35.713852, 38.014462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350982, -0.368301, 0.860910,
		0.932976, 0.059203, -0.355035,
		0.079791, 0.927820, 0.364395,
		32.256020, 35.992199, 38.123779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730957, 35.244221, 38.182587>,  <32.200165, 35.342724, 37.868702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730957, 35.244221, 38.182587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602013, 35.592163, 38.331947>,  <32.524647, 35.800930, 38.421562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602013, 35.592163, 38.331947>,  <32.730957, 35.244221, 38.182587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602013, 35.592163, 38.331947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494836, -0.181421, 0.849838,
		0.806981, 0.458729, -0.371953,
		-0.322365, 0.869859, 0.373399,
		32.505302, 35.853119, 38.443966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308254, 35.609959, 38.422787>,  <32.730957, 35.244221, 38.182587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308254, 35.609959, 38.422787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007488, 35.766632, 38.634903>,  <32.827030, 35.860638, 38.762173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007488, 35.766632, 38.634903>,  <33.308254, 35.609959, 38.422787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007488, 35.766632, 38.634903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491908, -0.202204, 0.846841,
		0.438924, 0.897605, -0.040634,
		-0.751912, 0.391687, 0.530292,
		32.781914, 35.884140, 38.793991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690098, 35.930649, 38.980919>,  <33.308254, 35.609959, 38.422787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690098, 35.930649, 38.980919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304138, 35.901966, 39.081974>,  <33.072563, 35.884758, 39.142609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304138, 35.901966, 39.081974>,  <33.690098, 35.930649, 38.980919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304138, 35.901966, 39.081974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259082, -0.102521, 0.960399,
		-0.042965, 0.992143, 0.117500,
		-0.964899, -0.071706, 0.252642,
		33.014668, 35.880455, 39.157768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778805, 36.552757, 38.520966>,  <33.690098, 35.930649, 38.980919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778805, 36.552757, 38.520966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166904, 36.582703, 38.613068>,  <34.399765, 36.600670, 38.668331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166904, 36.582703, 38.613068>,  <33.778805, 36.552757, 38.520966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166904, 36.582703, 38.613068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135599, 0.619861, -0.772907,
		-0.200589, 0.781133, 0.591266,
		0.970246, 0.074861, 0.230258,
		34.457977, 36.605160, 38.682144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892906, 37.217468, 38.658386>,  <33.778805, 36.552757, 38.520966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892906, 37.217468, 38.658386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228069, 37.044815, 38.524761>,  <34.429169, 36.941223, 38.444588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228069, 37.044815, 38.524761>,  <33.892906, 37.217468, 38.658386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228069, 37.044815, 38.524761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017240, 0.632679, -0.774223,
		0.545535, 0.642971, 0.537570,
		0.837911, -0.431633, -0.334064,
		34.479443, 36.915325, 38.424541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337227, 37.783371, 38.454578>,  <33.892906, 37.217468, 38.658386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337227, 37.783371, 38.454578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522503, 37.475040, 38.279636>,  <34.633671, 37.290043, 38.174671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522503, 37.475040, 38.279636>,  <34.337227, 37.783371, 38.454578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522503, 37.475040, 38.279636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031644, 0.507551, -0.861040,
		0.885691, 0.384990, 0.259487,
		0.463195, -0.770827, -0.437351,
		34.661461, 37.243793, 38.148430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985107, 38.000980, 38.211399>,  <34.337227, 37.783371, 38.454578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985107, 38.000980, 38.211399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918339, 37.669476, 37.997749>,  <34.878277, 37.470573, 37.869560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918339, 37.669476, 37.997749>,  <34.985107, 38.000980, 38.211399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918339, 37.669476, 37.997749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043307, 0.547369, -0.835770,
		0.985018, -0.116380, -0.127261,
		-0.166925, -0.828760, -0.534128,
		34.868259, 37.420849, 37.837509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487629, 37.959476, 37.785385>,  <34.985107, 38.000980, 38.211399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487629, 37.959476, 37.785385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201057, 37.739719, 37.613384>,  <35.029114, 37.607864, 37.510185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201057, 37.739719, 37.613384>,  <35.487629, 37.959476, 37.785385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201057, 37.739719, 37.613384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055499, 0.569511, -0.820108,
		0.695451, -0.611412, -0.377522,
		-0.716427, -0.549393, -0.430000,
		34.986130, 37.574902, 37.484383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700363, 37.970257, 37.084694>,  <35.487629, 37.959476, 37.785385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700363, 37.970257, 37.084694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324959, 37.843765, 37.029274>,  <35.099716, 37.767868, 36.996021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324959, 37.843765, 37.029274>,  <35.700363, 37.970257, 37.084694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324959, 37.843765, 37.029274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022462, 0.344521, -0.938510,
		0.344521, -0.883913, -0.316233,
		0.938510, 0.316233, 0.138550,
		35.043407, 37.748894, 36.987709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785805, 37.639160, 36.499146>,  <35.700363, 37.970257, 37.084694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785805, 37.639160, 36.499146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400421, 37.727608, 36.559620>,  <35.169193, 37.780678, 36.595905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400421, 37.727608, 36.559620>,  <35.785805, 37.639160, 36.499146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400421, 37.727608, 36.559620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012064, 0.599652, -0.800170,
		-0.267594, -0.769104, -0.580406,
		-0.963456, 0.221123, 0.151185,
		35.111385, 37.793945, 36.604977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446259, 37.505684, 35.876438>,  <35.785805, 37.639160, 36.499146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446259, 37.505684, 35.876438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234062, 37.771435, 36.087029>,  <35.106743, 37.930885, 36.213383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234062, 37.771435, 36.087029>,  <35.446259, 37.505684, 35.876438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234062, 37.771435, 36.087029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151089, 0.537022, -0.829928,
		-0.834118, -0.519813, -0.184503,
		-0.530490, 0.664381, 0.526477,
		35.074917, 37.970749, 36.244972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988586, 37.712177, 35.334381>,  <35.446259, 37.505684, 35.876438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988586, 37.712177, 35.334381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930500, 37.966415, 35.637680>,  <34.895649, 38.118958, 35.819660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930500, 37.966415, 35.637680>,  <34.988586, 37.712177, 35.334381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930500, 37.966415, 35.637680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041888, 0.761733, -0.646536,
		-0.988513, -0.125648, -0.083991,
		-0.145215, 0.635591, 0.758246,
		34.886936, 38.157093, 35.865154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455742, 38.064339, 35.051979>,  <34.988586, 37.712177, 35.334381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455742, 38.064339, 35.051979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608112, 38.281174, 35.351589>,  <34.699535, 38.411274, 35.531357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608112, 38.281174, 35.351589>,  <34.455742, 38.064339, 35.051979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608112, 38.281174, 35.351589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092123, 0.828323, -0.552625,
		-0.920005, 0.141506, 0.365468,
		0.380925, 0.542086, 0.749025,
		34.722389, 38.443798, 35.576298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914597, 38.445065, 35.353256>,  <34.455742, 38.064339, 35.051979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914597, 38.445065, 35.353256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271099, 38.619274, 35.403809>,  <34.485001, 38.723801, 35.434139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271099, 38.619274, 35.403809>,  <33.914597, 38.445065, 35.353256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271099, 38.619274, 35.403809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261378, 0.721078, -0.641661,
		-0.370592, 0.538853, 0.756505,
		0.891260, 0.435528, 0.126381,
		34.538479, 38.749931, 35.441723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793713, 39.173851, 35.514114>,  <33.914597, 38.445065, 35.353256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793713, 39.173851, 35.514114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167011, 39.151592, 35.372150>,  <34.390991, 39.138237, 35.286972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167011, 39.151592, 35.372150>,  <33.793713, 39.173851, 35.514114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167011, 39.151592, 35.372150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182477, 0.777567, -0.601740,
		0.309446, 0.626333, 0.715507,
		0.933245, -0.055643, -0.354906,
		34.446983, 39.134899, 35.265678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991665, 39.865200, 35.386044>,  <33.793713, 39.173851, 35.514114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991665, 39.865200, 35.386044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254242, 39.650143, 35.174374>,  <34.411789, 39.521107, 35.047371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254242, 39.650143, 35.174374>,  <33.991665, 39.865200, 35.386044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254242, 39.650143, 35.174374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147076, 0.596794, -0.788800,
		0.739899, 0.595632, 0.312687,
		0.656444, -0.537643, -0.529170,
		34.451176, 39.488850, 35.015621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448601, 40.383465, 35.185223>,  <33.991665, 39.865200, 35.386044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448601, 40.383465, 35.185223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524864, 40.068790, 34.950352>,  <34.570621, 39.879986, 34.809429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524864, 40.068790, 34.950352>,  <34.448601, 40.383465, 35.185223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524864, 40.068790, 34.950352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046571, 0.604724, -0.795073,
		0.980552, 0.124238, 0.151930,
		0.190654, -0.786685, -0.587177,
		34.582062, 39.832787, 34.774200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988464, 40.689407, 34.771797>,  <34.448601, 40.383465, 35.185223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988464, 40.689407, 34.771797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795277, 40.369274, 34.629692>,  <34.679363, 40.177193, 34.544430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795277, 40.369274, 34.629692>,  <34.988464, 40.689407, 34.771797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795277, 40.369274, 34.629692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086749, 0.447455, -0.890089,
		0.871332, -0.399064, -0.285533,
		-0.482965, -0.800333, -0.355263,
		34.650387, 40.129173, 34.523113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259983, 40.595936, 34.057980>,  <34.988464, 40.689407, 34.771797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259983, 40.595936, 34.057980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900597, 40.423428, 34.025082>,  <34.684963, 40.319923, 34.005344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900597, 40.423428, 34.025082>,  <35.259983, 40.595936, 34.057980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900597, 40.423428, 34.025082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112129, 0.406522, -0.906734,
		0.424486, -0.805446, -0.413604,
		-0.898464, -0.431273, -0.082249,
		34.631058, 40.294048, 34.000408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218498, 40.261395, 33.435928>,  <35.259983, 40.595936, 34.057980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218498, 40.261395, 33.435928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826714, 40.279064, 33.514629>,  <34.591644, 40.289665, 33.561852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826714, 40.279064, 33.514629>,  <35.218498, 40.261395, 33.435928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826714, 40.279064, 33.514629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163356, 0.398252, -0.902613,
		-0.118232, -0.916212, -0.382854,
		-0.979457, 0.044176, 0.196755,
		34.532875, 40.292316, 33.573654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843037, 39.951492, 32.918468>,  <35.218498, 40.261395, 33.435928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843037, 39.951492, 32.918468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568985, 40.186852, 33.090229>,  <34.404556, 40.328068, 33.193287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568985, 40.186852, 33.090229>,  <34.843037, 39.951492, 32.918468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568985, 40.186852, 33.090229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302689, 0.306218, -0.902558,
		-0.662556, -0.748342, -0.031696,
		-0.685128, 0.588400, 0.429401,
		34.363445, 40.363373, 33.219048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204403, 39.877106, 32.589588>,  <34.843037, 39.951492, 32.918468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204403, 39.877106, 32.589588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158978, 40.226154, 32.779594>,  <34.131721, 40.435581, 32.893597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158978, 40.226154, 32.779594>,  <34.204403, 39.877106, 32.589588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158978, 40.226154, 32.779594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467482, 0.374946, -0.800547,
		-0.876678, -0.312973, 0.365355,
		-0.113561, 0.872619, 0.475016,
		34.124908, 40.487942, 32.922100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619133, 40.155014, 32.317451>,  <34.204403, 39.877106, 32.589588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619133, 40.155014, 32.317451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773842, 40.480228, 32.491524>,  <33.866669, 40.675358, 32.595966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773842, 40.480228, 32.491524>,  <33.619133, 40.155014, 32.317451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773842, 40.480228, 32.491524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429662, 0.576434, -0.695064,
		-0.815962, 0.081854, 0.572281,
		0.386776, 0.813033, 0.435179,
		33.889874, 40.724140, 32.622078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114376, 40.757904, 32.451653>,  <33.619133, 40.155014, 32.317451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114376, 40.757904, 32.451653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480961, 40.916203, 32.428082>,  <33.700912, 41.011181, 32.413937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480961, 40.916203, 32.428082>,  <33.114376, 40.757904, 32.451653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480961, 40.916203, 32.428082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315136, 0.623205, -0.715755,
		-0.246533, 0.674536, 0.695860,
		0.916466, 0.395748, -0.058930,
		33.755901, 41.034927, 32.410404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001694, 41.510880, 32.464729>,  <33.114376, 40.757904, 32.451653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001694, 41.510880, 32.464729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358379, 41.454533, 32.292679>,  <33.572392, 41.420723, 32.189449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358379, 41.454533, 32.292679>,  <33.001694, 41.510880, 32.464729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358379, 41.454533, 32.292679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248316, 0.642272, -0.725139,
		0.378408, 0.753421, 0.537740,
		0.891710, -0.140868, -0.430127,
		33.625893, 41.412273, 32.163639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995743, 42.111710, 32.118900>,  <33.001694, 41.510880, 32.464729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995743, 42.111710, 32.118900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289726, 41.894775, 31.956074>,  <33.466118, 41.764614, 31.858377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289726, 41.894775, 31.956074>,  <32.995743, 42.111710, 32.118900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289726, 41.894775, 31.956074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197187, 0.403425, -0.893513,
		0.648805, 0.736966, 0.189561,
		0.734962, -0.542337, -0.407064,
		33.510216, 41.732075, 31.833954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454105, 42.531631, 31.757624>,  <32.995743, 42.111710, 32.118900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454105, 42.531631, 31.757624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521862, 42.176346, 31.586802>,  <33.562515, 41.963173, 31.484308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521862, 42.176346, 31.586802>,  <33.454105, 42.531631, 31.757624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521862, 42.176346, 31.586802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194942, 0.394560, -0.897953,
		0.966077, 0.235356, -0.106316,
		0.169390, -0.888217, -0.427056,
		33.572678, 41.909882, 31.458685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684891, 42.661312, 31.181877>,  <33.454105, 42.531631, 31.757624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684891, 42.661312, 31.181877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557598, 42.291355, 31.098642>,  <33.481224, 42.069382, 31.048702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557598, 42.291355, 31.098642>,  <33.684891, 42.661312, 31.181877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557598, 42.291355, 31.098642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086625, 0.246949, -0.965149,
		0.944047, -0.289115, -0.158706,
		-0.318231, -0.924893, -0.208087,
		33.462128, 42.013885, 31.036217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967609, 42.548378, 30.511370>,  <33.684891, 42.661312, 31.181877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967609, 42.548378, 30.511370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712994, 42.240211, 30.525707>,  <33.560226, 42.055313, 30.534309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712994, 42.240211, 30.525707>,  <33.967609, 42.548378, 30.511370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712994, 42.240211, 30.525707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295613, 0.200792, -0.933968,
		0.712345, -0.605099, -0.355556,
		-0.636535, -0.770414, 0.035842,
		33.522034, 42.009087, 30.536459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173447, 42.132130, 30.005201>,  <33.967609, 42.548378, 30.511370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173447, 42.132130, 30.005201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791161, 42.036144, 30.073359>,  <33.561790, 41.978554, 30.114252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791161, 42.036144, 30.073359>,  <34.173447, 42.132130, 30.005201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791161, 42.036144, 30.073359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172069, -0.014104, -0.984984,
		0.238768, -0.970678, -0.027811,
		-0.955710, -0.239968, 0.170391,
		33.504448, 41.964153, 30.124475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043980, 41.499439, 29.566605>,  <34.173447, 42.132130, 30.005201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043980, 41.499439, 29.566605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700436, 41.676464, 29.669754>,  <33.494308, 41.782681, 29.731644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700436, 41.676464, 29.669754>,  <34.043980, 41.499439, 29.566605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700436, 41.676464, 29.669754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359310, -0.161752, -0.919093,
		-0.365046, -0.882028, 0.297940,
		-0.858859, 0.442564, 0.257874,
		33.442780, 41.809235, 29.747116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449455, 40.999256, 29.258417>,  <34.043980, 41.499439, 29.566605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449455, 40.999256, 29.258417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317764, 41.372299, 29.317543>,  <33.238750, 41.596127, 29.353018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317764, 41.372299, 29.317543>,  <33.449455, 40.999256, 29.258417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317764, 41.372299, 29.317543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360398, 0.020581, -0.932572,
		-0.872767, -0.360299, 0.329335,
		-0.329227, 0.932610, 0.147814,
		33.218998, 41.652081, 29.361887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809589, 41.070518, 28.935335>,  <33.449455, 40.999256, 29.258417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809589, 41.070518, 28.935335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869781, 41.464001, 28.974689>,  <32.905899, 41.700089, 28.998302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869781, 41.464001, 28.974689>,  <32.809589, 41.070518, 28.935335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869781, 41.464001, 28.974689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168950, 0.123644, -0.977838,
		-0.974069, 0.130527, 0.184804,
		0.150484, 0.983705, 0.098385,
		32.914928, 41.759113, 29.004206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370564, 41.349281, 28.515062>,  <32.809589, 41.070518, 28.935335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370564, 41.349281, 28.515062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600258, 41.668705, 28.587229>,  <32.738075, 41.860359, 28.630527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600258, 41.668705, 28.587229>,  <32.370564, 41.349281, 28.515062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600258, 41.668705, 28.587229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142641, 0.314589, -0.938449,
		-0.806168, 0.513156, 0.294556,
		0.574236, 0.798564, 0.180415,
		32.772530, 41.908276, 28.641354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925154, 41.980465, 28.338587>,  <32.370564, 41.349281, 28.515062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925154, 41.980465, 28.338587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306576, 42.097340, 28.309315>,  <32.535431, 42.167465, 28.291752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306576, 42.097340, 28.309315>,  <31.925154, 41.980465, 28.338587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306576, 42.097340, 28.309315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146902, 0.239022, -0.959838,
		-0.262961, 0.926010, 0.270844,
		0.953557, 0.292188, -0.073179,
		32.592644, 42.184998, 28.287361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942486, 42.706825, 28.097952>,  <31.925154, 41.980465, 28.338587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942486, 42.706825, 28.097952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284435, 42.523731, 28.000240>,  <32.489605, 42.413876, 27.941612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284435, 42.523731, 28.000240>,  <31.942486, 42.706825, 28.097952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284435, 42.523731, 28.000240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148015, 0.236100, -0.960390,
		0.497275, 0.857169, 0.134085,
		0.854874, -0.457732, -0.244280,
		32.540897, 42.386414, 27.926956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332695, 43.160751, 27.682325>,  <31.942486, 42.706825, 28.097952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332695, 43.160751, 27.682325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520702, 42.812576, 27.623781>,  <32.633507, 42.603672, 27.588654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520702, 42.812576, 27.623781>,  <32.332695, 43.160751, 27.682325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520702, 42.812576, 27.623781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011546, 0.159741, -0.987091,
		0.882583, 0.465637, 0.065031,
		0.470014, -0.870440, -0.146361,
		32.661705, 42.551445, 27.579872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869080, 43.327431, 27.165659>,  <32.332695, 43.160751, 27.682325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869080, 43.327431, 27.165659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828987, 42.929657, 27.152700>,  <32.804932, 42.690990, 27.144926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828987, 42.929657, 27.152700>,  <32.869080, 43.327431, 27.165659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828987, 42.929657, 27.152700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017850, 0.034350, -0.999251,
		0.994804, -0.099577, -0.021193,
		-0.100230, -0.994437, -0.032394,
		32.798920, 42.631325, 27.142982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273445, 43.156281, 26.603241>,  <32.869080, 43.327431, 27.165659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273445, 43.156281, 26.603241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996487, 42.876831, 26.675354>,  <32.830311, 42.709160, 26.718622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996487, 42.876831, 26.675354>,  <33.273445, 43.156281, 26.603241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996487, 42.876831, 26.675354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221280, -0.032212, -0.974678,
		0.686745, -0.714759, -0.132289,
		-0.692399, -0.698629, 0.180283,
		32.788769, 42.667244, 26.729439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452816, 42.534954, 26.183737>,  <33.273445, 43.156281, 26.603241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452816, 42.534954, 26.183737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063271, 42.543655, 26.274170>,  <32.829544, 42.548874, 26.328430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063271, 42.543655, 26.274170>,  <33.452816, 42.534954, 26.183737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063271, 42.543655, 26.274170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219060, 0.172991, -0.960254,
		-0.059995, -0.984683, -0.163705,
		-0.973865, 0.021749, 0.226083,
		32.771111, 42.550179, 26.341995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182755, 42.358700, 25.575098>,  <33.452816, 42.534954, 26.183737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182755, 42.358700, 25.575098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868038, 42.490646, 25.783768>,  <32.679207, 42.569813, 25.908970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868038, 42.490646, 25.783768>,  <33.182755, 42.358700, 25.575098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868038, 42.490646, 25.783768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424485, 0.324391, -0.845330,
		-0.448074, -0.886543, -0.115204,
		-0.786793, 0.329868, 0.521675,
		32.632000, 42.589607, 25.940269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686260, 42.519131, 24.993002>,  <33.182755, 42.358700, 25.575098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686260, 42.519131, 24.993002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994961, 42.354408, 24.799171>,  <34.180183, 42.255577, 24.682873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994961, 42.354408, 24.799171>,  <33.686260, 42.519131, 24.993002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994961, 42.354408, 24.799171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257003, -0.495027, 0.829999,
		-0.581674, -0.765092, -0.276205,
		0.771755, -0.411804, -0.484575,
		34.226486, 42.230869, 24.653799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637966, 41.827866, 25.163099>,  <33.686260, 42.519131, 24.993002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637966, 41.827866, 25.163099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011707, 41.894489, 25.037094>,  <34.235954, 41.934464, 24.961491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011707, 41.894489, 25.037094>,  <33.637966, 41.827866, 25.163099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011707, 41.894489, 25.037094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356008, -0.474425, 0.805096,
		-0.015351, -0.864394, -0.502580,
		0.934357, 0.166564, -0.315014,
		34.292015, 41.944458, 24.942591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035007, 41.102982, 25.069975>,  <33.637966, 41.827866, 25.163099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035007, 41.102982, 25.069975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287842, 41.406868, 25.131033>,  <34.439545, 41.589199, 25.167667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287842, 41.406868, 25.131033>,  <34.035007, 41.102982, 25.069975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287842, 41.406868, 25.131033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438137, -0.512864, 0.738246,
		0.639140, -0.399758, -0.657034,
		0.632088, 0.759714, 0.152643,
		34.477467, 41.634781, 25.176826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643116, 40.823895, 25.151665>,  <34.035007, 41.102982, 25.069975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643116, 40.823895, 25.151665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672886, 41.178532, 25.334270>,  <34.690746, 41.391315, 25.443834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672886, 41.178532, 25.334270>,  <34.643116, 40.823895, 25.151665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672886, 41.178532, 25.334270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422860, -0.442647, 0.790729,
		0.903134, 0.134196, -0.407848,
		0.074421, 0.886597, 0.456516,
		34.695213, 41.444511, 25.471226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352329, 40.874111, 25.225811>,  <34.643116, 40.823895, 25.151665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352329, 40.874111, 25.225811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161587, 41.108826, 25.487585>,  <35.047142, 41.249653, 25.644650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161587, 41.108826, 25.487585>,  <35.352329, 40.874111, 25.225811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161587, 41.108826, 25.487585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439244, -0.485830, 0.755668,
		0.761360, 0.647805, -0.026069,
		-0.476861, 0.586786, 0.654435,
		35.018528, 41.284863, 25.683916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832581, 41.011139, 25.795872>,  <35.352329, 40.874111, 25.225811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832581, 41.011139, 25.795872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469463, 41.087360, 25.945328>,  <35.251595, 41.133095, 26.035002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469463, 41.087360, 25.945328>,  <35.832581, 41.011139, 25.795872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469463, 41.087360, 25.945328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269742, -0.416929, 0.867992,
		0.321183, 0.888740, 0.327083,
		-0.907789, 0.190556, 0.373641,
		35.197128, 41.144527, 26.057421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053272, 41.233093, 26.516411>,  <35.832581, 41.011139, 25.795872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053272, 41.233093, 26.516411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664227, 41.140594, 26.525721>,  <35.430798, 41.085094, 26.531305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664227, 41.140594, 26.525721>,  <36.053272, 41.233093, 26.516411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664227, 41.140594, 26.525721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126092, -0.440901, 0.888655,
		-0.195239, 0.867255, 0.457986,
		-0.972616, -0.231248, 0.023273,
		35.372440, 41.071220, 26.532701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792408, 41.530212, 27.193457>,  <36.053272, 41.233093, 26.516411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792408, 41.530212, 27.193457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508701, 41.269257, 27.086632>,  <35.338478, 41.112682, 27.022537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508701, 41.269257, 27.086632>,  <35.792408, 41.530212, 27.193457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508701, 41.269257, 27.086632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015501, -0.393188, 0.919327,
		-0.704767, 0.647911, 0.288990,
		-0.709270, -0.652391, -0.267063,
		35.295921, 41.073540, 27.006514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254421, 41.632030, 27.691189>,  <35.792408, 41.530212, 27.193457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254421, 41.632030, 27.691189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198952, 41.271465, 27.527124>,  <35.165668, 41.055126, 27.428686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198952, 41.271465, 27.527124>,  <35.254421, 41.632030, 27.691189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198952, 41.271465, 27.527124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189856, -0.430676, 0.882311,
		-0.971969, 0.044483, 0.230862,
		-0.138675, -0.901410, -0.410159,
		35.157349, 41.001041, 27.404078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711876, 41.363880, 28.157671>,  <35.254421, 41.632030, 27.691189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711876, 41.363880, 28.157671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858894, 41.040668, 27.973497>,  <34.947105, 40.846741, 27.862993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858894, 41.040668, 27.973497>,  <34.711876, 41.363880, 28.157671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858894, 41.040668, 27.973497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054430, -0.512928, 0.856704,
		-0.928410, -0.289820, -0.232507,
		0.367550, -0.808028, -0.460433,
		34.969158, 40.798260, 27.835367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296322, 40.743801, 28.393665>,  <34.711876, 41.363880, 28.157671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296322, 40.743801, 28.393665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645752, 40.588020, 28.276918>,  <34.855412, 40.494553, 28.206871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645752, 40.588020, 28.276918>,  <34.296322, 40.743801, 28.393665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645752, 40.588020, 28.276918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113558, -0.420043, 0.900371,
		-0.473251, -0.819688, -0.322714,
		0.873578, -0.389455, -0.291868,
		34.907825, 40.471184, 28.189358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289352, 40.063862, 28.726397>,  <34.296322, 40.743801, 28.393665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289352, 40.063862, 28.726397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665146, 40.109268, 28.597103>,  <34.890621, 40.136513, 28.519527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665146, 40.109268, 28.597103>,  <34.289352, 40.063862, 28.726397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665146, 40.109268, 28.597103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334929, -0.502724, 0.796926,
		-0.072036, -0.856961, -0.510321,
		0.939485, 0.113514, -0.323236,
		34.946991, 40.143322, 28.500132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591579, 39.390434, 28.752262>,  <34.289352, 40.063862, 28.726397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591579, 39.390434, 28.752262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922039, 39.615814, 28.751659>,  <35.120316, 39.751041, 28.751299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922039, 39.615814, 28.751659>,  <34.591579, 39.390434, 28.752262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922039, 39.615814, 28.751659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379718, -0.554781, 0.740292,
		0.416281, -0.612164, -0.672284,
		0.826150, 0.563448, -0.001505,
		35.169884, 39.784847, 28.751207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188297, 39.003487, 28.598129>,  <34.591579, 39.390434, 28.752262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188297, 39.003487, 28.598129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303848, 39.322914, 28.809347>,  <35.373177, 39.514572, 28.936079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303848, 39.322914, 28.809347>,  <35.188297, 39.003487, 28.598129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303848, 39.322914, 28.809347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358846, -0.601667, 0.713601,
		0.887571, -0.016652, -0.460370,
		0.288873, 0.798573, 0.528047,
		35.390511, 39.562485, 28.967762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900753, 38.866310, 29.016542>,  <35.188297, 39.003487, 28.598129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900753, 38.866310, 29.016542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777237, 39.198273, 29.202402>,  <35.703125, 39.397449, 29.313917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777237, 39.198273, 29.202402>,  <35.900753, 38.866310, 29.016542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777237, 39.198273, 29.202402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356217, -0.352058, 0.865543,
		0.881905, 0.432789, -0.186914,
		-0.308793, 0.829909, 0.464649,
		35.684601, 39.447247, 29.341797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392445, 39.048630, 29.455387>,  <35.900753, 38.866310, 29.016542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392445, 39.048630, 29.455387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087250, 39.242500, 29.626471>,  <35.904133, 39.358822, 29.729120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087250, 39.242500, 29.626471>,  <36.392445, 39.048630, 29.455387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087250, 39.242500, 29.626471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379292, -0.200106, 0.903380,
		0.523435, 0.851496, -0.031155,
		-0.762990, 0.484677, 0.427709,
		35.858353, 39.387905, 29.754784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755619, 39.401791, 30.065830>,  <36.392445, 39.048630, 29.455387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755619, 39.401791, 30.065830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362606, 39.389683, 30.139273>,  <36.126797, 39.382420, 30.183338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362606, 39.389683, 30.139273>,  <36.755619, 39.401791, 30.065830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362606, 39.389683, 30.139273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185102, -0.260209, 0.947644,
		0.019094, 0.965078, 0.261267,
		-0.982534, -0.030267, 0.183606,
		36.067844, 39.380604, 30.194355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705559, 39.788391, 30.656391>,  <36.755619, 39.401791, 30.065830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705559, 39.788391, 30.656391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358139, 39.591602, 30.632421>,  <36.149689, 39.473530, 30.618040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358139, 39.591602, 30.632421>,  <36.705559, 39.788391, 30.656391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358139, 39.591602, 30.632421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117385, -0.321680, 0.939544,
		-0.481503, 0.809005, 0.337144,
		-0.868548, -0.491969, -0.059924,
		36.097576, 39.444012, 30.614445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263142, 40.022614, 31.146029>,  <36.705559, 39.788391, 30.656391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263142, 40.022614, 31.146029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138367, 39.646332, 31.092710>,  <36.063503, 39.420563, 31.060720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138367, 39.646332, 31.092710>,  <36.263142, 40.022614, 31.146029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138367, 39.646332, 31.092710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064318, -0.160882, 0.984876,
		-0.947925, 0.298642, 0.110688,
		-0.311933, -0.940707, -0.133296,
		36.044788, 39.364120, 31.052721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866215, 39.942982, 31.691835>,  <36.263142, 40.022614, 31.146029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866215, 39.942982, 31.691835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951519, 39.569427, 31.577030>,  <36.002701, 39.345295, 31.508148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951519, 39.569427, 31.577030>,  <35.866215, 39.942982, 31.691835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951519, 39.569427, 31.577030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029940, -0.299878, 0.953508,
		-0.976536, -0.194757, -0.091914,
		0.213265, -0.933886, -0.287011,
		36.015499, 39.289261, 31.490927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375904, 39.537285, 32.123981>,  <35.866215, 39.942982, 31.691835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375904, 39.537285, 32.123981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661716, 39.290604, 31.991840>,  <35.833202, 39.142597, 31.912556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661716, 39.290604, 31.991840>,  <35.375904, 39.537285, 32.123981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661716, 39.290604, 31.991840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269364, -0.193288, 0.943442,
		-0.645674, -0.763100, 0.028008,
		0.714527, -0.616700, -0.330353,
		35.876076, 39.105595, 31.892735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328602, 38.920113, 32.581112>,  <35.375904, 39.537285, 32.123981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328602, 38.920113, 32.581112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695679, 38.885162, 32.426086>,  <35.915924, 38.864193, 32.333073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695679, 38.885162, 32.426086>,  <35.328602, 38.920113, 32.581112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695679, 38.885162, 32.426086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360990, -0.223998, 0.905269,
		-0.165907, -0.970665, -0.174021,
		0.917693, -0.087371, -0.387563,
		35.970985, 38.858952, 32.309818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555283, 38.232021, 32.761730>,  <35.328602, 38.920113, 32.581112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555283, 38.232021, 32.761730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885826, 38.439430, 32.673862>,  <36.084152, 38.563877, 32.621140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885826, 38.439430, 32.673862>,  <35.555283, 38.232021, 32.761730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885826, 38.439430, 32.673862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434853, -0.339702, 0.833970,
		0.357811, -0.784687, -0.506199,
		0.826362, 0.518526, -0.219674,
		36.133736, 38.594990, 32.607960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138954, 37.764019, 32.789852>,  <35.555283, 38.232021, 32.761730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138954, 37.764019, 32.789852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252560, 38.139736, 32.866863>,  <36.320724, 38.365166, 32.913071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252560, 38.139736, 32.866863>,  <36.138954, 37.764019, 32.789852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252560, 38.139736, 32.866863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290450, -0.275648, 0.916328,
		0.913770, -0.204327, -0.351105,
		0.284012, 0.939291, 0.192532,
		36.337765, 38.421524, 32.924622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715641, 37.686039, 33.184143>,  <36.138954, 37.764019, 32.789852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715641, 37.686039, 33.184143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643894, 38.074455, 33.247280>,  <36.600845, 38.307503, 33.285160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643894, 38.074455, 33.247280>,  <36.715641, 37.686039, 33.184143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643894, 38.074455, 33.247280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240510, -0.112291, 0.964129,
		0.953929, 0.210898, -0.213402,
		-0.179370, 0.971037, 0.157841,
		36.590084, 38.365765, 33.294632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372723, 37.907143, 33.536533>,  <36.715641, 37.686039, 33.184143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372723, 37.907143, 33.536533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114296, 38.202972, 33.612030>,  <36.959240, 38.380470, 33.657330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114296, 38.202972, 33.612030>,  <37.372723, 37.907143, 33.536533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114296, 38.202972, 33.612030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215025, -0.060914, 0.974707,
		0.732370, 0.670308, -0.119673,
		-0.646064, 0.739579, 0.188745,
		36.920475, 38.424847, 33.668655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630985, 38.424122, 33.850582>,  <37.372723, 37.907143, 33.536533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630985, 38.424122, 33.850582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250641, 38.429150, 33.974323>,  <37.022434, 38.432167, 34.048569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250641, 38.429150, 33.974323>,  <37.630985, 38.424122, 33.850582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250641, 38.429150, 33.974323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302166, -0.180142, 0.936079,
		0.067495, 0.983560, 0.167492,
		-0.950863, 0.012570, 0.309358,
		36.965382, 38.432922, 34.067131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636497, 38.922722, 34.382290>,  <37.630985, 38.424122, 33.850582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636497, 38.922722, 34.382290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324539, 38.677891, 34.434628>,  <37.137363, 38.530994, 34.466030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324539, 38.677891, 34.434628>,  <37.636497, 38.922722, 34.382290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324539, 38.677891, 34.434628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320873, -0.211494, 0.923207,
		-0.537398, 0.761994, 0.361342,
		-0.779900, -0.612075, 0.130847,
		37.090569, 38.494267, 34.473881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515644, 39.125244, 35.034222>,  <37.636497, 38.922722, 34.382290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515644, 39.125244, 35.034222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345955, 38.769653, 34.965221>,  <37.244141, 38.556301, 34.923820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345955, 38.769653, 34.965221>,  <37.515644, 39.125244, 35.034222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345955, 38.769653, 34.965221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101756, -0.236082, 0.966391,
		-0.899820, 0.392416, 0.190611,
		-0.424228, -0.888974, -0.172501,
		37.218685, 38.502960, 34.913471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068439, 38.875679, 35.558708>,  <37.515644, 39.125244, 35.034222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068439, 38.875679, 35.558708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152241, 38.532310, 35.371422>,  <37.202522, 38.326290, 35.259048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152241, 38.532310, 35.371422>,  <37.068439, 38.875679, 35.558708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152241, 38.532310, 35.371422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152590, -0.444273, 0.882801,
		-0.965828, -0.256395, 0.037909,
		0.209504, -0.858419, -0.468215,
		37.215092, 38.274784, 35.230957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724522, 38.343227, 35.896038>,  <37.068439, 38.875679, 35.558708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724522, 38.343227, 35.896038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012222, 38.142929, 35.703400>,  <37.184841, 38.022751, 35.587818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012222, 38.142929, 35.703400>,  <36.724522, 38.343227, 35.896038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012222, 38.142929, 35.703400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077343, -0.631170, 0.771779,
		-0.690431, -0.592351, -0.415241,
		0.719251, -0.500744, -0.481594,
		37.227997, 37.992706, 35.558922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614632, 37.643101, 36.074249>,  <36.724522, 38.343227, 35.896038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614632, 37.643101, 36.074249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989029, 37.635437, 35.933647>,  <37.213665, 37.630836, 35.849285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989029, 37.635437, 35.933647>,  <36.614632, 37.643101, 36.074249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989029, 37.635437, 35.933647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224077, -0.737672, 0.636890,
		-0.271497, -0.674887, -0.686161,
		0.935991, -0.019161, -0.351503,
		37.269825, 37.629688, 35.828197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755444, 37.021923, 35.663994>,  <36.614632, 37.643101, 36.074249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755444, 37.021923, 35.663994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108089, 37.153908, 35.798981>,  <37.319675, 37.233097, 35.879971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108089, 37.153908, 35.798981>,  <36.755444, 37.021923, 35.663994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108089, 37.153908, 35.798981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162836, -0.883758, 0.438698,
		0.442990, -0.331811, -0.832864,
		0.881615, 0.329958, 0.337465,
		37.372574, 37.252895, 35.900219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161793, 36.370995, 35.743778>,  <36.755444, 37.021923, 35.663994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161793, 36.370995, 35.743778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405418, 36.627113, 35.930992>,  <37.551594, 36.780785, 36.043320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405418, 36.627113, 35.930992>,  <37.161793, 36.370995, 35.743778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405418, 36.627113, 35.930992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343431, -0.744842, 0.572071,
		0.714907, -0.187692, -0.673557,
		0.609067, 0.640298, 0.468034,
		37.588139, 36.819202, 36.071404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749405, 36.013729, 35.807991>,  <37.161793, 36.370995, 35.743778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749405, 36.013729, 35.807991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790649, 36.311882, 36.071438>,  <37.815395, 36.490776, 36.229504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790649, 36.311882, 36.071438>,  <37.749405, 36.013729, 35.807991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790649, 36.311882, 36.071438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455844, -0.623926, 0.634762,
		0.884067, 0.234774, -0.404112,
		0.103110, 0.745384, 0.658613,
		37.821583, 36.535496, 36.269020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433323, 36.022087, 36.060707>,  <37.749405, 36.013729, 35.807991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433323, 36.022087, 36.060707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174072, 36.179092, 36.321739>,  <38.018520, 36.273296, 36.478359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174072, 36.179092, 36.321739>,  <38.433323, 36.022087, 36.060707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174072, 36.179092, 36.321739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216022, -0.726971, 0.651804,
		0.730252, 0.563423, 0.386376,
		-0.648125, 0.392515, 0.652584,
		37.979633, 36.296848, 36.517513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847290, 35.950024, 36.601009>,  <38.433323, 36.022087, 36.060707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847290, 35.950024, 36.601009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474339, 35.997349, 36.737637>,  <38.250568, 36.025745, 36.819614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474339, 35.997349, 36.737637>,  <38.847290, 35.950024, 36.601009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474339, 35.997349, 36.737637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155602, -0.721524, 0.674679,
		0.326274, 0.682206, 0.654325,
		-0.932380, 0.118316, 0.341567,
		38.194626, 36.032845, 36.840107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983772, 35.833481, 37.271915>,  <38.847290, 35.950024, 36.601009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983772, 35.833481, 37.271915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584641, 35.809784, 37.260376>,  <38.345161, 35.795567, 37.253452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584641, 35.809784, 37.260376>,  <38.983772, 35.833481, 37.271915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584641, 35.809784, 37.260376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011598, -0.588868, 0.808146,
		-0.064867, 0.806055, 0.588276,
		-0.997827, -0.059245, -0.028850,
		38.285294, 35.792011, 37.251720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750065, 35.959850, 38.012161>,  <38.983772, 35.833481, 37.271915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750065, 35.959850, 38.012161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474270, 35.755562, 37.806732>,  <38.308792, 35.632988, 37.683475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474270, 35.755562, 37.806732>,  <38.750065, 35.959850, 38.012161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474270, 35.755562, 37.806732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171596, -0.573701, 0.800888,
		-0.703673, 0.640333, 0.307924,
		-0.689492, -0.510725, -0.513576,
		38.267422, 35.602345, 37.652660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235111, 35.744995, 38.499641>,  <38.750065, 35.959850, 38.012161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235111, 35.744995, 38.499641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168518, 35.491131, 38.197784>,  <38.128563, 35.338814, 38.016670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168518, 35.491131, 38.197784>,  <38.235111, 35.744995, 38.499641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168518, 35.491131, 38.197784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156278, -0.738669, 0.655702,
		-0.973581, 0.227097, 0.023792,
		-0.166483, -0.634662, -0.754645,
		38.118572, 35.300732, 37.971390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566135, 35.400078, 38.554249>,  <38.235111, 35.744995, 38.499641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566135, 35.400078, 38.554249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850937, 35.193886, 38.363537>,  <38.021820, 35.070171, 38.249107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850937, 35.193886, 38.363537>,  <37.566135, 35.400078, 38.554249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850937, 35.193886, 38.363537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155843, -0.778089, 0.608515,
		-0.684659, -0.358964, -0.634340,
		0.712008, -0.515483, -0.476784,
		38.064541, 35.039242, 38.220501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234505, 34.716888, 38.584312>,  <37.566135, 35.400078, 38.554249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234505, 34.716888, 38.584312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623569, 34.686756, 38.496445>,  <37.857010, 34.668678, 38.443722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623569, 34.686756, 38.496445>,  <37.234505, 34.716888, 38.584312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623569, 34.686756, 38.496445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060226, -0.831736, 0.551895,
		-0.224283, -0.550037, -0.804460,
		0.972661, -0.075332, -0.219671,
		37.915367, 34.664158, 38.430542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399094, 34.026318, 38.656017>,  <37.234505, 34.716888, 38.584312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399094, 34.026318, 38.656017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761051, 34.196503, 38.651119>,  <37.978226, 34.298615, 38.648182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761051, 34.196503, 38.651119>,  <37.399094, 34.026318, 38.656017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761051, 34.196503, 38.651119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345446, -0.717293, 0.605110,
		0.248669, -0.551790, -0.796048,
		0.904893, 0.425463, -0.012245,
		38.032520, 34.324142, 38.647446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891357, 33.516220, 38.425907>,  <37.399094, 34.026318, 38.656017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891357, 33.516220, 38.425907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040848, 33.800865, 38.663879>,  <38.130543, 33.971653, 38.806664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040848, 33.800865, 38.663879>,  <37.891357, 33.516220, 38.425907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040848, 33.800865, 38.663879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341108, -0.701900, 0.625285,
		0.862539, -0.030752, -0.505056,
		0.373727, 0.711611, 0.594926,
		38.152966, 34.014347, 38.842358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214191, 33.063354, 38.792202>,  <37.891357, 33.516220, 38.425907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214191, 33.063354, 38.792202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285622, 33.408615, 38.981129>,  <38.328480, 33.615772, 39.094486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285622, 33.408615, 38.981129>,  <38.214191, 33.063354, 38.792202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285622, 33.408615, 38.981129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286603, -0.504849, 0.814240,
		0.941260, -0.010034, -0.337533,
		0.178573, 0.863149, 0.472318,
		38.339195, 33.667561, 39.122826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764824, 32.938931, 39.080788>,  <38.214191, 33.063354, 38.792202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764824, 32.938931, 39.080788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629597, 33.250637, 39.291862>,  <38.548462, 33.437660, 39.418507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629597, 33.250637, 39.291862>,  <38.764824, 32.938931, 39.080788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629597, 33.250637, 39.291862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231782, -0.474493, 0.849196,
		0.912133, 0.409395, -0.020208,
		-0.338068, 0.779263, 0.527691,
		38.528175, 33.484417, 39.450169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325161, 33.118549, 39.621037>,  <38.764824, 32.938931, 39.080788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325161, 33.118549, 39.621037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953094, 33.224220, 39.723015>,  <38.729855, 33.287624, 39.784203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953094, 33.224220, 39.723015>,  <39.325161, 33.118549, 39.621037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953094, 33.224220, 39.723015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141041, -0.384005, 0.912495,
		0.338960, 0.884732, 0.319930,
		-0.930169, 0.264176, 0.254945,
		38.674046, 33.303474, 39.799500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398220, 33.444538, 40.219677>,  <39.325161, 33.118549, 39.621037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398220, 33.444538, 40.219677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007725, 33.357857, 40.219849>,  <38.773426, 33.305847, 40.219952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007725, 33.357857, 40.219849>,  <39.398220, 33.444538, 40.219677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007725, 33.357857, 40.219849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097852, -0.439062, 0.893112,
		-0.193354, 0.871931, 0.449834,
		-0.976237, -0.216704, 0.000426,
		38.714855, 33.292847, 40.219978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164280, 33.689445, 40.838390>,  <39.398220, 33.444538, 40.219677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164280, 33.689445, 40.838390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936714, 33.366329, 40.776676>,  <38.800175, 33.172459, 40.739647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936714, 33.366329, 40.776676>,  <39.164280, 33.689445, 40.838390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936714, 33.366329, 40.776676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231889, -0.337560, 0.912294,
		-0.789025, 0.483243, 0.379362,
		-0.568918, -0.807793, -0.154284,
		38.766041, 33.123993, 40.730392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673935, 33.578922, 41.455372>,  <39.164280, 33.689445, 40.838390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673935, 33.578922, 41.455372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754288, 33.240570, 41.257736>,  <38.802498, 33.037560, 41.139153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754288, 33.240570, 41.257736>,  <38.673935, 33.578922, 41.455372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754288, 33.240570, 41.257736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445028, -0.370523, 0.815268,
		-0.872695, -0.383657, 0.302011,
		0.200881, -0.845884, -0.494092,
		38.814552, 32.986805, 41.109509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702412, 33.113194, 41.898308>,  <38.673935, 33.578922, 41.455372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702412, 33.113194, 41.898308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886692, 32.888290, 41.623611>,  <38.997261, 32.753349, 41.458794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886692, 32.888290, 41.623611>,  <38.702412, 33.113194, 41.898308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886692, 32.888290, 41.623611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502085, -0.472948, 0.724038,
		-0.731894, -0.678367, 0.064417,
		0.460698, -0.562262, -0.686745,
		39.024902, 32.719612, 41.417587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785458, 32.337322, 42.133728>,  <38.702412, 33.113194, 41.898308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785458, 32.337322, 42.133728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075657, 32.451878, 41.883408>,  <39.249779, 32.520611, 41.733215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075657, 32.451878, 41.883408>,  <38.785458, 32.337322, 42.133728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075657, 32.451878, 41.883408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686602, -0.363497, 0.629641,
		-0.047158, -0.886484, -0.460350,
		0.725502, 0.286385, -0.625804,
		39.293308, 32.537792, 41.695667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083309, 31.736328, 41.989353>,  <38.785458, 32.337322, 42.133728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083309, 31.736328, 41.989353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397655, 31.976280, 41.929287>,  <39.586266, 32.120251, 41.893246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397655, 31.976280, 41.929287>,  <39.083309, 31.736328, 41.989353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397655, 31.976280, 41.929287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592030, -0.659706, 0.462914,
		0.178630, -0.452692, -0.873591,
		0.785870, 0.599882, -0.150164,
		39.633415, 32.156246, 41.884239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640034, 31.398794, 42.158592>,  <39.083309, 31.736328, 41.989353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640034, 31.398794, 42.158592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844788, 31.741854, 42.138943>,  <39.967640, 31.947689, 42.127155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844788, 31.741854, 42.138943>,  <39.640034, 31.398794, 42.158592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844788, 31.741854, 42.138943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597846, -0.314595, 0.737299,
		0.616890, -0.406780, -0.673778,
		0.511886, 0.857648, -0.049121,
		39.998352, 31.999147, 42.124207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357903, 31.197062, 42.269306>,  <39.640034, 31.398794, 42.158592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357903, 31.197062, 42.269306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333748, 31.593872, 42.313560>,  <40.319256, 31.831959, 42.340115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333748, 31.593872, 42.313560>,  <40.357903, 31.197062, 42.269306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333748, 31.593872, 42.313560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703917, -0.036267, 0.709355,
		0.707711, 0.120713, -0.696114,
		-0.060382, 0.992025, 0.110639,
		40.315632, 31.891479, 42.346752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088791, 31.525135, 42.390526>,  <40.357903, 31.197062, 42.269306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088791, 31.525135, 42.390526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851810, 31.831419, 42.490677>,  <40.709621, 32.015190, 42.550766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851810, 31.831419, 42.490677>,  <41.088791, 31.525135, 42.390526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851810, 31.831419, 42.490677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604844, 0.217488, 0.766069,
		0.532134, 0.605298, -0.591987,
		-0.592450, 0.765711, 0.250378,
		40.674076, 32.061131, 42.565792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489925, 32.149715, 42.455746>,  <41.088791, 31.525135, 42.390526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489925, 32.149715, 42.455746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153667, 32.191761, 42.668262>,  <40.951912, 32.216988, 42.795773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153667, 32.191761, 42.668262>,  <41.489925, 32.149715, 42.455746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153667, 32.191761, 42.668262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541579, 0.155910, 0.826065,
		0.003998, 0.982162, -0.187993,
		-0.840640, 0.105116, 0.531295,
		40.901474, 32.223297, 42.827652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738914, 32.621395, 42.906227>,  <41.489925, 32.149715, 42.455746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738914, 32.621395, 42.906227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412579, 32.467979, 43.079342>,  <41.216778, 32.375931, 43.183208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412579, 32.467979, 43.079342>,  <41.738914, 32.621395, 42.906227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412579, 32.467979, 43.079342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385865, 0.196368, 0.901414,
		-0.430712, 0.902407, -0.012211,
		-0.815840, -0.383538, 0.432785,
		41.167828, 32.352917, 43.209179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519550, 33.078873, 43.391830>,  <41.738914, 32.621395, 42.906227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519550, 33.078873, 43.391830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389248, 32.715347, 43.496098>,  <41.311066, 32.497234, 43.558659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389248, 32.715347, 43.496098>,  <41.519550, 33.078873, 43.391830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389248, 32.715347, 43.496098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516049, 0.060105, 0.854448,
		-0.792197, 0.412861, 0.449410,
		-0.325756, -0.908809, 0.260671,
		41.291523, 32.442703, 43.574299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221081, 33.155182, 44.083832>,  <41.519550, 33.078873, 43.391830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221081, 33.155182, 44.083832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349129, 32.780685, 44.025898>,  <41.425957, 32.555988, 43.991138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349129, 32.780685, 44.025898>,  <41.221081, 33.155182, 44.083832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349129, 32.780685, 44.025898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341823, -0.028442, 0.939334,
		-0.883562, -0.350206, 0.310923,
		0.320117, -0.936241, -0.144839,
		41.445164, 32.499813, 43.982445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120846, 32.831051, 44.636051>,  <41.221081, 33.155182, 44.083832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120846, 32.831051, 44.636051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391010, 32.597771, 44.455521>,  <41.553108, 32.457802, 44.347202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391010, 32.597771, 44.455521>,  <41.120846, 32.831051, 44.636051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391010, 32.597771, 44.455521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600421, 0.079571, 0.795715,
		-0.428147, -0.808424, 0.403907,
		0.675414, -0.583198, -0.451326,
		41.593636, 32.422810, 44.320122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695038, 33.105686, 45.146660>,  <41.120846, 32.831051, 44.636051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695038, 33.105686, 45.146660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883373, 32.778667, 45.279282>,  <41.996376, 32.582455, 45.358852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883373, 32.778667, 45.279282>,  <41.695038, 33.105686, 45.146660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883373, 32.778667, 45.279282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544132, -0.564936, -0.620296,
		0.694426, 0.111654, -0.710848,
		0.470842, -0.817545, 0.331552,
		42.024628, 32.533405, 45.378746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087509, 32.802986, 44.589161>,  <41.695038, 33.105686, 45.146660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087509, 32.802986, 44.589161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002251, 32.518902, 44.857540>,  <41.951096, 32.348454, 45.018566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002251, 32.518902, 44.857540>,  <42.087509, 32.802986, 44.589161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002251, 32.518902, 44.857540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477839, -0.523215, -0.705631,
		0.852195, -0.471012, -0.227841,
		-0.213150, -0.710207, 0.670949,
		41.938305, 32.305840, 45.058826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417271, 32.213661, 44.299110>,  <42.087509, 32.802986, 44.589161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417271, 32.213661, 44.299110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089691, 32.159267, 44.522121>,  <41.893143, 32.126633, 44.655930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089691, 32.159267, 44.522121>,  <42.417271, 32.213661, 44.299110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089691, 32.159267, 44.522121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496621, -0.318899, -0.807262,
		0.287570, -0.937983, 0.193628,
		-0.818945, -0.135985, 0.557527,
		41.844009, 32.118473, 44.689381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092323, 31.592720, 44.166435>,  <42.417271, 32.213661, 44.299110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092323, 31.592720, 44.166435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789131, 31.829109, 44.276871>,  <41.607216, 31.970943, 44.343132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789131, 31.829109, 44.276871>,  <42.092323, 31.592720, 44.166435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789131, 31.829109, 44.276871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496676, -0.248537, -0.831590,
		-0.422829, -0.767451, 0.481907,
		-0.757976, 0.590972, 0.276086,
		41.561737, 32.006401, 44.359695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398899, 31.174557, 44.205608>,  <42.092323, 31.592720, 44.166435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398899, 31.174557, 44.205608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354504, 31.568840, 44.154911>,  <41.327866, 31.805410, 44.124493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354504, 31.568840, 44.154911>,  <41.398899, 31.174557, 44.205608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354504, 31.568840, 44.154911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586723, -0.167926, -0.792185,
		-0.802145, -0.013560, 0.596975,
		-0.110990, 0.985707, -0.126745,
		41.321205, 31.864552, 44.116886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778065, 31.309431, 43.929684>,  <41.398899, 31.174557, 44.205608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778065, 31.309431, 43.929684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910053, 31.675783, 43.838223>,  <40.989246, 31.895596, 43.783348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910053, 31.675783, 43.838223>,  <40.778065, 31.309431, 43.929684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910053, 31.675783, 43.838223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664180, 0.053130, -0.745682,
		-0.670808, 0.397918, 0.625841,
		0.329972, 0.915881, -0.228649,
		41.009045, 31.950548, 43.769627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127583, 31.659817, 43.694740>,  <40.778065, 31.309431, 43.929684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127583, 31.659817, 43.694740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441891, 31.862453, 43.552799>,  <40.630478, 31.984035, 43.467636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441891, 31.862453, 43.552799>,  <40.127583, 31.659817, 43.694740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441891, 31.862453, 43.552799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562803, 0.347667, -0.749920,
		-0.256535, 0.788980, 0.558301,
		0.785775, 0.506594, -0.354852,
		40.677624, 32.014431, 43.446342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869511, 32.401287, 43.626324>,  <40.127583, 31.659817, 43.694740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869511, 32.401287, 43.626324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192173, 32.337959, 43.398556>,  <40.385773, 32.299961, 43.261894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192173, 32.337959, 43.398556>,  <39.869511, 32.401287, 43.626324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192173, 32.337959, 43.398556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531126, 0.228413, -0.815924,
		0.259239, 0.960605, 0.100164,
		0.806660, -0.158320, -0.569416,
		40.434170, 32.290462, 43.227730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002544, 33.043331, 43.294254>,  <39.869511, 32.401287, 43.626324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002544, 33.043331, 43.294254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120434, 32.724415, 43.083557>,  <40.191170, 32.533066, 42.957138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120434, 32.724415, 43.083557>,  <40.002544, 33.043331, 43.294254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120434, 32.724415, 43.083557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532047, 0.320972, -0.783520,
		0.793765, 0.511177, -0.329599,
		0.294726, -0.797292, -0.526746,
		40.208851, 32.485226, 42.925533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170338, 33.215290, 42.678165>,  <40.002544, 33.043331, 43.294254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170338, 33.215290, 42.678165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215435, 32.838409, 42.551956>,  <40.242493, 32.612282, 42.476231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215435, 32.838409, 42.551956>,  <40.170338, 33.215290, 42.678165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215435, 32.838409, 42.551956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448038, 0.235225, -0.862514,
		0.886878, 0.238604, -0.395621,
		0.112739, -0.942198, -0.315520,
		40.249256, 32.555752, 42.457302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378963, 33.250347, 41.948093>,  <40.170338, 33.215290, 42.678165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378963, 33.250347, 41.948093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244503, 32.877197, 41.999859>,  <40.163826, 32.653309, 42.030918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244503, 32.877197, 41.999859>,  <40.378963, 33.250347, 41.948093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244503, 32.877197, 41.999859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410534, 0.021471, -0.911592,
		0.847622, -0.359562, -0.390194,
		-0.336152, -0.932874, 0.129414,
		40.143658, 32.597336, 42.038685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581337, 32.765862, 41.378155>,  <40.378963, 33.250347, 41.948093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581337, 32.765862, 41.378155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238655, 32.665688, 41.558533>,  <40.033047, 32.605583, 41.666759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238655, 32.665688, 41.558533>,  <40.581337, 32.765862, 41.378155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238655, 32.665688, 41.558533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458655, -0.030156, -0.888103,
		0.236009, -0.967664, -0.089028,
		-0.856700, -0.250434, 0.450941,
		39.981644, 32.590557, 41.693813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218983, 32.307545, 40.940636>,  <40.581337, 32.765862, 41.378155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218983, 32.307545, 40.940636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927425, 32.498085, 41.137329>,  <39.752491, 32.612408, 41.255344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927425, 32.498085, 41.137329>,  <40.218983, 32.307545, 40.940636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927425, 32.498085, 41.137329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624532, -0.168390, -0.762630,
		-0.280477, -0.862980, 0.420236,
		-0.728898, 0.476351, 0.491729,
		39.708755, 32.640991, 41.284847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664948, 31.944151, 40.790024>,  <40.218983, 32.307545, 40.940636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664948, 31.944151, 40.790024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491367, 32.273945, 40.935299>,  <39.387218, 32.471821, 41.022465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491367, 32.273945, 40.935299>,  <39.664948, 31.944151, 40.790024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491367, 32.273945, 40.935299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683805, -0.038946, -0.728625,
		-0.586597, -0.564539, 0.580689,
		-0.433952, 0.824487, 0.363189,
		39.361183, 32.521290, 41.044254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949432, 31.862581, 40.452568>,  <39.664948, 31.944151, 40.790024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949432, 31.862581, 40.452568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914635, 32.209511, 40.648602>,  <38.893757, 32.417667, 40.766220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914635, 32.209511, 40.648602>,  <38.949432, 31.862581, 40.452568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914635, 32.209511, 40.648602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778721, 0.247611, -0.576439,
		-0.621310, -0.431784, 0.653863,
		-0.086993, 0.867324, 0.490082,
		38.888538, 32.469707, 40.795628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185581, 31.969067, 40.642365>,  <38.949432, 31.862581, 40.452568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185581, 31.969067, 40.642365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368023, 32.324333, 40.664749>,  <38.477486, 32.537495, 40.678181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368023, 32.324333, 40.664749>,  <38.185581, 31.969067, 40.642365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368023, 32.324333, 40.664749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623922, 0.363976, -0.691551,
		-0.634580, 0.280503, 0.720157,
		0.456102, 0.888166, 0.055960,
		38.504852, 32.590782, 40.681538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803623, 32.360550, 40.234322>,  <38.185581, 31.969067, 40.642365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803623, 32.360550, 40.234322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038837, 32.641792, 40.394249>,  <38.179966, 32.810539, 40.490204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038837, 32.641792, 40.394249>,  <37.803623, 32.360550, 40.234322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038837, 32.641792, 40.394249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439145, 0.692641, -0.572189,
		-0.679240, 0.160890, 0.716064,
		0.588035, 0.703110, 0.399815,
		38.215248, 32.852726, 40.514194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458687, 33.015453, 40.380299>,  <37.803623, 32.360550, 40.234322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458687, 33.015453, 40.380299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844578, 33.102959, 40.321716>,  <38.076111, 33.155460, 40.286568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844578, 33.102959, 40.321716>,  <37.458687, 33.015453, 40.380299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844578, 33.102959, 40.321716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257219, 0.664775, -0.701365,
		-0.056068, 0.714296, 0.697594,
		0.964725, 0.218759, -0.146458,
		38.133995, 33.168587, 40.277779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482132, 33.732761, 40.240597>,  <37.458687, 33.015453, 40.380299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482132, 33.732761, 40.240597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829273, 33.588215, 40.104214>,  <38.037556, 33.501488, 40.022385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829273, 33.588215, 40.104214>,  <37.482132, 33.732761, 40.240597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829273, 33.588215, 40.104214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089010, 0.562081, -0.822278,
		0.488787, 0.743964, 0.455637,
		0.867850, -0.361363, -0.340959,
		38.089630, 33.479805, 40.001926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848999, 34.394394, 40.014622>,  <37.482132, 33.732761, 40.240597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848999, 34.394394, 40.014622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070152, 34.106129, 39.847305>,  <38.202847, 33.933170, 39.746914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070152, 34.106129, 39.847305>,  <37.848999, 34.394394, 40.014622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070152, 34.106129, 39.847305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264429, 0.627792, -0.732089,
		0.790187, 0.294154, 0.537660,
		0.552885, -0.720660, -0.418290,
		38.236019, 33.889931, 39.721817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482754, 34.774185, 39.791584>,  <37.848999, 34.394394, 40.014622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482754, 34.774185, 39.791584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445332, 34.440639, 39.573990>,  <38.422878, 34.240513, 39.443432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445332, 34.440639, 39.573990>,  <38.482754, 34.774185, 39.791584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445332, 34.440639, 39.573990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179498, 0.523306, -0.833025,
		0.979300, -0.175579, 0.100718,
		-0.093555, -0.833860, -0.543990,
		38.417267, 34.190483, 39.410793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096596, 34.697819, 39.426338>,  <38.482754, 34.774185, 39.791584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096596, 34.697819, 39.426338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788536, 34.517479, 39.245846>,  <38.603703, 34.409275, 39.137550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788536, 34.517479, 39.245846>,  <39.096596, 34.697819, 39.426338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788536, 34.517479, 39.245846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048140, 0.664311, -0.745905,
		0.636046, -0.596180, -0.489914,
		-0.770148, -0.450845, -0.451232,
		38.557491, 34.382225, 39.110477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276699, 34.766949, 38.758511>,  <39.096596, 34.697819, 39.426338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276699, 34.766949, 38.758511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900936, 34.633408, 38.727390>,  <38.675480, 34.553284, 38.708717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900936, 34.633408, 38.727390>,  <39.276699, 34.766949, 38.758511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900936, 34.633408, 38.727390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100414, 0.485000, -0.868730,
		0.327764, -0.808280, -0.489137,
		-0.939408, -0.333854, -0.077803,
		38.619114, 34.533253, 38.704048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239674, 34.611874, 38.068565>,  <39.276699, 34.766949, 38.758511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239674, 34.611874, 38.068565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846512, 34.611961, 38.142212>,  <38.610615, 34.612015, 38.186398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846512, 34.611961, 38.142212>,  <39.239674, 34.611874, 38.068565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846512, 34.611961, 38.142212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151574, 0.566672, -0.809882,
		-0.104512, -0.823943, -0.556951,
		-0.982905, 0.000223, 0.184112,
		38.551640, 34.612026, 38.197445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899364, 34.462791, 37.432442>,  <39.239674, 34.611874, 38.068565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899364, 34.462791, 37.432442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645596, 34.648956, 37.679310>,  <38.493336, 34.760654, 37.827431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645596, 34.648956, 37.679310>,  <38.899364, 34.462791, 37.432442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645596, 34.648956, 37.679310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167837, 0.696437, -0.697715,
		-0.754549, -0.546227, -0.363719,
		-0.634418, 0.465415, 0.617173,
		38.455269, 34.788582, 37.864460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582241, 34.157532, 37.553146>,  <38.899364, 34.462791, 37.432442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582241, 34.157532, 37.553146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558277, 34.158943, 37.153866>,  <39.543900, 34.159790, 36.914299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558277, 34.158943, 37.153866>,  <39.582241, 34.157532, 37.553146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558277, 34.158943, 37.153866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983680, 0.170170, -0.058440,
		0.169656, -0.985408, -0.013673,
		-0.059914, 0.003536, -0.998197,
		39.540302, 34.160004, 36.854408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040539, 33.786877, 37.275681>,  <39.582241, 34.157532, 37.553146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040539, 33.786877, 37.275681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960129, 34.047371, 36.982971>,  <39.911880, 34.203667, 36.807346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960129, 34.047371, 36.982971>,  <40.040539, 33.786877, 37.275681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960129, 34.047371, 36.982971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949857, 0.312227, 0.016924,
		0.239499, -0.691673, -0.681343,
		-0.201028, 0.651231, -0.731769,
		39.899822, 34.242741, 36.763439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416260, 33.637581, 36.693920>,  <40.040539, 33.786877, 37.275681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416260, 33.637581, 36.693920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339817, 34.021942, 36.774071>,  <40.293953, 34.252560, 36.822163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339817, 34.021942, 36.774071>,  <40.416260, 33.637581, 36.693920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339817, 34.021942, 36.774071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957750, 0.137840, 0.252419,
		0.214929, 0.240151, -0.946643,
		-0.191104, 0.960899, 0.200379,
		40.282486, 34.310211, 36.834183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854424, 34.063633, 36.291142>,  <40.416260, 33.637581, 36.693920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854424, 34.063633, 36.291142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746120, 34.296864, 36.597530>,  <40.681141, 34.436802, 36.781364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746120, 34.296864, 36.597530>,  <40.854424, 34.063633, 36.291142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746120, 34.296864, 36.597530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958455, 0.237474, 0.158021,
		-0.089761, 0.776937, -0.623147,
		-0.270753, 0.583074, 0.765975,
		40.664894, 34.471786, 36.827324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025146, 34.785610, 36.145744>,  <40.854424, 34.063633, 36.291142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025146, 34.785610, 36.145744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013306, 34.706257, 36.537617>,  <41.006203, 34.658646, 36.772739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013306, 34.706257, 36.537617>,  <41.025146, 34.785610, 36.145744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013306, 34.706257, 36.537617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958519, 0.272335, 0.084111,
		-0.283486, 0.941530, 0.182092,
		-0.029603, -0.198383, 0.979677,
		41.004425, 34.646744, 36.831520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186062, 35.422928, 36.439331>,  <41.025146, 34.785610, 36.145744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186062, 35.422928, 36.439331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281113, 35.112736, 36.673309>,  <41.338142, 34.926620, 36.813694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281113, 35.112736, 36.673309>,  <41.186062, 35.422928, 36.439331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281113, 35.112736, 36.673309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906517, 0.393374, 0.153245,
		-0.348940, 0.493844, 0.796466,
		0.237630, -0.775484, 0.584942,
		41.352402, 34.880089, 36.848793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127762, 35.784508, 35.742916>,  <41.186062, 35.422928, 36.439331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127762, 35.784508, 35.742916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371449, 35.885914, 36.043472>,  <41.517658, 35.946758, 36.223804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371449, 35.885914, 36.043472>,  <41.127762, 35.784508, 35.742916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371449, 35.885914, 36.043472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652002, 0.379213, -0.656575,
		-0.451389, 0.889903, 0.065729,
		0.609213, 0.253515, 0.751391,
		41.554211, 35.961967, 36.268890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215710, 36.553944, 35.820339>,  <41.127762, 35.784508, 35.742916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215710, 36.553944, 35.820339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526276, 36.309727, 35.882835>,  <41.712616, 36.163197, 35.920334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526276, 36.309727, 35.882835>,  <41.215710, 36.553944, 35.820339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526276, 36.309727, 35.882835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368771, 0.239092, -0.898244,
		0.511063, 0.755029, 0.410787,
		0.776416, -0.610546, 0.156241,
		41.759201, 36.126564, 35.929707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872040, 36.891273, 35.645794>,  <41.215710, 36.553944, 35.820339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872040, 36.891273, 35.645794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909569, 36.495411, 35.602386>,  <41.932087, 36.257893, 35.576344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909569, 36.495411, 35.602386>,  <41.872040, 36.891273, 35.645794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909569, 36.495411, 35.602386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285929, 0.131188, -0.949228,
		0.953647, 0.058027, 0.295280,
		0.093819, -0.989658, -0.108516,
		41.937714, 36.198513, 35.569832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635963, 36.757263, 35.430233>,  <41.872040, 36.891273, 35.645794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635963, 36.757263, 35.430233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380611, 36.488766, 35.279549>,  <42.227402, 36.327667, 35.189140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380611, 36.488766, 35.279549>,  <42.635963, 36.757263, 35.430233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380611, 36.488766, 35.279549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299498, 0.234228, -0.924899,
		0.709066, -0.703258, 0.051510,
		-0.638378, -0.671242, -0.376708,
		42.189098, 36.287392, 35.166538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802902, 36.246296, 35.952629>,  <42.635963, 36.757263, 35.430233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802902, 36.246296, 35.952629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028522, 36.569363, 35.883892>,  <43.163895, 36.763203, 35.842651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028522, 36.569363, 35.883892>,  <42.802902, 36.246296, 35.952629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028522, 36.569363, 35.883892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762664, -0.589326, -0.266532,
		-0.316537, 0.019282, -0.948384,
		0.564047, 0.807665, -0.171838,
		43.197735, 36.811661, 35.832340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243008, 36.184204, 35.364296>,  <42.802902, 36.246296, 35.952629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243008, 36.184204, 35.364296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460094, 36.416641, 35.606876>,  <43.590347, 36.556103, 35.752426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460094, 36.416641, 35.606876>,  <43.243008, 36.184204, 35.364296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460094, 36.416641, 35.606876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790428, -0.597538, -0.134804,
		0.284044, 0.552517, -0.783610,
		0.542718, 0.581097, 0.606452,
		43.622910, 36.590969, 35.788811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867554, 36.385056, 35.078480>,  <43.243008, 36.184204, 35.364296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867554, 36.385056, 35.078480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911610, 36.376854, 35.475960>,  <43.938046, 36.371933, 35.714447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911610, 36.376854, 35.475960>,  <43.867554, 36.385056, 35.078480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911610, 36.376854, 35.475960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714058, -0.693819, -0.093465,
		0.691368, 0.719857, -0.061778,
		0.110144, -0.020506, 0.993704,
		43.944653, 36.370701, 35.774071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543774, 36.500145, 35.421474>,  <43.867554, 36.385056, 35.078480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543774, 36.500145, 35.421474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328579, 36.235405, 35.630291>,  <44.199463, 36.076561, 35.755581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328579, 36.235405, 35.630291>,  <44.543774, 36.500145, 35.421474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328579, 36.235405, 35.630291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783411, -0.621189, 0.019789,
		0.311187, 0.419616, 0.852693,
		-0.537987, -0.661851, 0.522038,
		44.167183, 36.036850, 35.786903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037979, 36.027214, 35.873455>,  <44.543774, 36.500145, 35.421474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037979, 36.027214, 35.873455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221371, 36.327232, 35.682777>,  <45.331406, 36.507244, 35.568371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221371, 36.327232, 35.682777>,  <45.037979, 36.027214, 35.873455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221371, 36.327232, 35.682777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883023, -0.445025, 0.149071,
		-0.100330, -0.489275, -0.866339,
		0.458480, 0.750041, -0.476691,
		45.358913, 36.552246, 35.539768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694202, 35.740528, 35.512108>,  <45.037979, 36.027214, 35.873455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694202, 35.740528, 35.512108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722248, 36.135742, 35.567055>,  <45.739075, 36.372871, 35.600025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722248, 36.135742, 35.567055>,  <45.694202, 35.740528, 35.512108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722248, 36.135742, 35.567055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952487, -0.107225, 0.285080,
		0.296399, 0.110856, -0.948609,
		0.070112, 0.988035, 0.137371,
		45.743282, 36.432152, 35.608265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046455, 36.282871, 35.102165>,  <45.694202, 35.740528, 35.512108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046455, 36.282871, 35.102165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.370712, 36.222256, 35.328400>,  <46.565266, 36.185886, 35.464142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.370712, 36.222256, 35.328400>,  <46.046455, 36.282871, 35.102165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.370712, 36.222256, 35.328400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247851, -0.786327, -0.565916,
		0.530493, 0.598939, -0.599875,
		0.810646, -0.151534, 0.565588,
		46.613907, 36.176796, 35.498077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305714, 35.852818, 34.700279>,  <46.046455, 36.282871, 35.102165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305714, 35.852818, 34.700279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588768, 35.893410, 34.979980>,  <46.758602, 35.917763, 35.147800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588768, 35.893410, 34.979980>,  <46.305714, 35.852818, 34.700279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588768, 35.893410, 34.979980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528276, -0.733186, -0.428209,
		0.469227, 0.672414, -0.572438,
		0.707637, 0.101478, 0.699251,
		46.801060, 35.923855, 35.189754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815773, 35.473980, 34.248791>,  <46.305714, 35.852818, 34.700279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815773, 35.473980, 34.248791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967709, 35.549736, 34.610973>,  <47.058868, 35.595188, 34.828285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967709, 35.549736, 34.610973>,  <46.815773, 35.473980, 34.248791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.967709, 35.549736, 34.610973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690786, -0.709086, -0.141466,
		0.615256, 0.679212, -0.400165,
		0.379836, 0.189390, 0.905459,
		47.081661, 35.606552, 34.882610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.538639, 35.750069, 34.355736>,  <46.815773, 35.473980, 34.248791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.538639, 35.750069, 34.355736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426056, 35.530804, 34.670773>,  <47.358505, 35.399246, 34.859795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426056, 35.530804, 34.670773>,  <47.538639, 35.750069, 34.355736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.426056, 35.530804, 34.670773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636908, -0.720626, -0.273947,
		0.717726, 0.424520, 0.551953,
		-0.281455, -0.548162, 0.787592,
		47.341618, 35.366356, 34.907051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.099545, 35.519447, 34.586754>,  <47.538639, 35.750069, 34.355736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.099545, 35.519447, 34.586754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.830475, 35.254227, 34.718128>,  <47.669033, 35.095093, 34.796951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.830475, 35.254227, 34.718128>,  <48.099545, 35.519447, 34.586754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.830475, 35.254227, 34.718128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668074, -0.735052, -0.115657,
		0.318104, 0.141621, 0.937419,
		-0.672672, -0.663056, 0.328436,
		47.628674, 35.055309, 34.816658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.650776, 35.169762, 29.068026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273010, 35.296864, 29.101767>,  <34.046352, 35.373123, 29.122011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273010, 35.296864, 29.101767>,  <34.650776, 35.169762, 29.068026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273010, 35.296864, 29.101767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024477, -0.323829, 0.945799,
		0.327844, 0.891162, 0.313607,
		-0.944415, 0.317751, 0.084352,
		33.989685, 35.392189, 29.127071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643692, 35.630505, 29.591427>,  <34.650776, 35.169762, 29.068026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643692, 35.630505, 29.591427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.263294, 35.506969, 29.585445>,  <34.035053, 35.432850, 29.581856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.263294, 35.506969, 29.585445>,  <34.643692, 35.630505, 29.591427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263294, 35.506969, 29.585445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084937, -0.307441, 0.947769,
		-0.297300, 0.900057, 0.318607,
		-0.950999, -0.308834, -0.014955,
		33.977993, 35.414318, 29.580959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425293, 35.968052, 30.112749>,  <34.643692, 35.630505, 29.591427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425293, 35.968052, 30.112749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.154934, 35.679798, 30.050976>,  <33.992718, 35.506847, 30.013912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.154934, 35.679798, 30.050976>,  <34.425293, 35.968052, 30.112749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154934, 35.679798, 30.050976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042718, -0.170884, 0.984365,
		-0.735754, 0.671929, 0.084716,
		-0.675900, -0.720632, -0.154432,
		33.952164, 35.463608, 30.004646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804626, 36.096848, 30.555204>,  <34.425293, 35.968052, 30.112749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804626, 36.096848, 30.555204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.776409, 35.706615, 30.471994>,  <33.759480, 35.472477, 30.422070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.776409, 35.706615, 30.471994>,  <33.804626, 36.096848, 30.555204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776409, 35.706615, 30.471994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158665, -0.194913, 0.967902,
		-0.984809, 0.101286, -0.141040,
		-0.070544, -0.975577, -0.208023,
		33.755245, 35.413944, 30.409588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219658, 35.738369, 30.921982>,  <33.804626, 36.096848, 30.555204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219658, 35.738369, 30.921982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.469315, 35.436649, 30.840519>,  <33.619110, 35.255619, 30.791641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.469315, 35.436649, 30.840519>,  <33.219658, 35.738369, 30.921982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469315, 35.436649, 30.840519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022335, -0.277783, 0.960384,
		-0.780991, -0.594869, -0.190223,
		0.624143, -0.754300, -0.203659,
		33.656559, 35.210358, 30.779421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850845, 35.156380, 31.249420>,  <33.219658, 35.738369, 30.921982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850845, 35.156380, 31.249420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.231304, 35.041042, 31.205290>,  <33.459579, 34.971840, 31.178812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.231304, 35.041042, 31.205290>,  <32.850845, 35.156380, 31.249420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231304, 35.041042, 31.205290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020504, -0.297571, 0.954480,
		-0.308073, -0.910107, -0.277119,
		0.951142, -0.288368, -0.110335,
		33.516647, 34.954540, 31.172192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910213, 34.522968, 31.389635>,  <32.850845, 35.156380, 31.249420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910213, 34.522968, 31.389635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.300430, 34.603031, 31.425993>,  <33.534561, 34.651070, 31.447807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.300430, 34.603031, 31.425993>,  <32.910213, 34.522968, 31.389635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300430, 34.603031, 31.425993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019645, -0.491201, 0.870825,
		0.218949, -0.847737, -0.483117,
		0.975538, 0.200157, 0.090894,
		33.593090, 34.663078, 31.453260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209179, 33.946655, 31.587566>,  <32.910213, 34.522968, 31.389635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209179, 33.946655, 31.587566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.513096, 34.188198, 31.683958>,  <33.695446, 34.333122, 31.741793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.513096, 34.188198, 31.683958>,  <33.209179, 33.946655, 31.587566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513096, 34.188198, 31.683958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091249, -0.466018, 0.880057,
		0.643728, -0.646673, -0.409179,
		0.759794, 0.603855, 0.240981,
		33.741035, 34.369354, 31.756252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721886, 33.523544, 31.942451>,  <33.209179, 33.946655, 31.587566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721886, 33.523544, 31.942451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.841419, 33.897816, 32.017502>,  <33.913139, 34.122379, 32.062531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.841419, 33.897816, 32.017502>,  <33.721886, 33.523544, 31.942451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841419, 33.897816, 32.017502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366972, -0.294163, 0.882496,
		0.880925, -0.194867, -0.431274,
		0.298834, 0.935679, 0.187625,
		33.931068, 34.178520, 32.073788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356133, 33.421909, 32.186653>,  <33.721886, 33.523544, 31.942451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356133, 33.421909, 32.186653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.215153, 33.772690, 32.317341>,  <34.130566, 33.983158, 32.395752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.215153, 33.772690, 32.317341>,  <34.356133, 33.421909, 32.186653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215153, 33.772690, 32.317341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493538, -0.122443, 0.861062,
		0.795110, 0.464728, -0.389651,
		-0.352450, 0.876947, 0.326717,
		34.109417, 34.035774, 32.415356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953869, 33.635780, 32.662033>,  <34.356133, 33.421909, 32.186653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953869, 33.635780, 32.662033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.606178, 33.819008, 32.736462>,  <34.397564, 33.928944, 32.781120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.606178, 33.819008, 32.736462>,  <34.953869, 33.635780, 32.662033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606178, 33.819008, 32.736462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207788, -0.003046, 0.978169,
		0.448636, 0.888911, -0.092533,
		-0.869224, 0.458069, 0.186071,
		34.345409, 33.956429, 32.792282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087959, 34.313812, 33.193504>,  <34.953869, 33.635780, 32.662033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087959, 34.313812, 33.193504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718632, 34.160328, 33.199871>,  <34.497036, 34.068237, 33.203690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718632, 34.160328, 33.199871>,  <35.087959, 34.313812, 33.193504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718632, 34.160328, 33.199871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067016, -0.120183, 0.990487,
		-0.378150, 0.915599, 0.136682,
		-0.923316, -0.383712, 0.015913,
		34.441639, 34.045216, 33.204643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806187, 34.679798, 33.764931>,  <35.087959, 34.313812, 33.193504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806187, 34.679798, 33.764931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.604958, 34.337944, 33.713535>,  <34.484219, 34.132832, 33.682697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.604958, 34.337944, 33.713535>,  <34.806187, 34.679798, 33.764931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604958, 34.337944, 33.713535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009807, -0.143015, 0.989672,
		-0.864187, 0.499139, 0.063566,
		-0.503074, -0.854639, -0.128487,
		34.454037, 34.081551, 33.674988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349945, 34.636745, 34.320564>,  <34.806187, 34.679798, 33.764931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349945, 34.636745, 34.320564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355312, 34.251209, 34.214111>,  <34.358532, 34.019886, 34.150238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355312, 34.251209, 34.214111>,  <34.349945, 34.636745, 34.320564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355312, 34.251209, 34.214111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193892, -0.258601, 0.946325,
		-0.980931, -0.064298, 0.183412,
		0.013417, -0.963842, -0.266136,
		34.359337, 33.962055, 34.134270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031960, 34.263477, 34.890060>,  <34.349945, 34.636745, 34.320564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031960, 34.263477, 34.890060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258060, 33.994698, 34.698654>,  <34.393723, 33.833431, 34.583809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258060, 33.994698, 34.698654>,  <34.031960, 34.263477, 34.890060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258060, 33.994698, 34.698654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355185, -0.325304, 0.876368,
		-0.744535, -0.665332, 0.054786,
		0.565253, -0.671946, -0.478516,
		34.427635, 33.793114, 34.555099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883007, 33.684170, 35.237320>,  <34.031960, 34.263477, 34.890060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883007, 33.684170, 35.237320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.227680, 33.624409, 35.043339>,  <34.434486, 33.588551, 34.926952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.227680, 33.624409, 35.043339>,  <33.883007, 33.684170, 35.237320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227680, 33.624409, 35.043339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374715, -0.457089, 0.806634,
		-0.342178, -0.876783, -0.337884,
		0.861686, -0.149402, -0.484950,
		34.486187, 33.579586, 34.897854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162907, 33.124264, 35.613113>,  <33.883007, 33.684170, 35.237320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162907, 33.124264, 35.613113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.477921, 33.234074, 35.392418>,  <34.666931, 33.299961, 35.260002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.477921, 33.234074, 35.392418>,  <34.162907, 33.124264, 35.613113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477921, 33.234074, 35.392418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615959, -0.378872, 0.690689,
		-0.019425, -0.883793, -0.467475,
		0.787539, 0.274529, -0.551740,
		34.714184, 33.316433, 35.226894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690411, 32.525547, 35.704739>,  <34.162907, 33.124264, 35.613113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690411, 32.525547, 35.704739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.904358, 32.832138, 35.562515>,  <35.032726, 33.016094, 35.477180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.904358, 32.832138, 35.562515>,  <34.690411, 32.525547, 35.704739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904358, 32.832138, 35.562515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705280, -0.173280, 0.687426,
		0.465288, -0.618451, -0.633266,
		0.534871, 0.766481, -0.355556,
		35.064819, 33.062080, 35.455849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409061, 32.257950, 35.690418>,  <34.690411, 32.525547, 35.704739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409061, 32.257950, 35.690418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445377, 32.656082, 35.703472>,  <35.467167, 32.894962, 35.711304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445377, 32.656082, 35.703472>,  <35.409061, 32.257950, 35.690418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445377, 32.656082, 35.703472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785771, -0.091729, 0.611678,
		0.611818, -0.029887, -0.790433,
		0.090787, 0.995335, 0.032637,
		35.472614, 32.954681, 35.713264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051476, 32.418472, 35.458717>,  <35.409061, 32.257950, 35.690418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051476, 32.418472, 35.458717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.982944, 32.743244, 35.681934>,  <35.941826, 32.938107, 35.815865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.982944, 32.743244, 35.681934>,  <36.051476, 32.418472, 35.458717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982944, 32.743244, 35.681934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828242, -0.188047, 0.527877,
		0.533538, 0.552636, -0.640258,
		-0.171325, 0.811931, 0.558046,
		35.931545, 32.986824, 35.849350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718666, 32.737816, 35.620296>,  <36.051476, 32.418472, 35.458717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718666, 32.737816, 35.620296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475258, 32.895874, 35.895561>,  <36.329212, 32.990707, 36.060719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475258, 32.895874, 35.895561>,  <36.718666, 32.737816, 35.620296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475258, 32.895874, 35.895561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769272, 0.080947, 0.633773,
		0.194726, 0.915047, -0.353229,
		-0.608525, 0.395141, 0.688157,
		36.292702, 33.014416, 36.102009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123207, 33.247143, 35.913872>,  <36.718666, 32.737816, 35.620296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123207, 33.247143, 35.913872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.826866, 33.135551, 36.158268>,  <36.649059, 33.068596, 36.304905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.826866, 33.135551, 36.158268>,  <37.123207, 33.247143, 35.913872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826866, 33.135551, 36.158268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659298, -0.128296, 0.740855,
		-0.128296, 0.951688, 0.278979,
		-0.740855, -0.278979, 0.610987,
		36.604610, 33.051857, 36.341564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370636, 33.105740, 35.264194>,  <37.123207, 33.247143, 35.913872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370636, 33.105740, 35.264194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673939, 33.353611, 35.345238>,  <37.855919, 33.502335, 35.393864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673939, 33.353611, 35.345238>,  <37.370636, 33.105740, 35.264194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673939, 33.353611, 35.345238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105462, 0.423265, -0.899847,
		-0.643373, 0.660944, 0.386295,
		0.758254, 0.619677, 0.202613,
		37.901413, 33.539513, 35.406021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050381, 33.640915, 35.053486>,  <37.370636, 33.105740, 35.264194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050381, 33.640915, 35.053486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444286, 33.710205, 35.059681>,  <37.680630, 33.751778, 35.063400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444286, 33.710205, 35.059681>,  <37.050381, 33.640915, 35.053486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444286, 33.710205, 35.059681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030205, 0.258068, -0.965655,
		-0.171275, 0.950470, 0.259367,
		0.984760, 0.173227, 0.015491,
		37.739716, 33.762173, 35.064327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211765, 34.281197, 34.804867>,  <37.050381, 33.640915, 35.053486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211765, 34.281197, 34.804867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553761, 34.084030, 34.740334>,  <37.758957, 33.965729, 34.701614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553761, 34.084030, 34.740334>,  <37.211765, 34.281197, 34.804867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553761, 34.084030, 34.740334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008172, 0.298227, -0.954460,
		0.518586, 0.817369, 0.250952,
		0.854986, -0.492919, -0.161336,
		37.810257, 33.936153, 34.691933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694004, 34.731915, 34.460224>,  <37.211765, 34.281197, 34.804867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694004, 34.731915, 34.460224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876865, 34.382359, 34.394100>,  <37.986584, 34.172626, 34.354424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876865, 34.382359, 34.394100>,  <37.694004, 34.731915, 34.460224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876865, 34.382359, 34.394100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204388, 0.284125, -0.936749,
		0.865583, 0.394452, 0.308501,
		0.457156, -0.873888, -0.165313,
		38.014011, 34.120193, 34.344505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345444, 34.916973, 34.023064>,  <37.694004, 34.731915, 34.460224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345444, 34.916973, 34.023064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223351, 34.538837, 33.977161>,  <38.150097, 34.311954, 33.949619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223351, 34.538837, 33.977161>,  <38.345444, 34.916973, 34.023064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223351, 34.538837, 33.977161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156472, 0.168655, -0.973177,
		0.939336, -0.279086, -0.199397,
		-0.305229, -0.945340, -0.114754,
		38.131783, 34.255234, 33.942734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756397, 34.563961, 33.438301>,  <38.345444, 34.916973, 34.023064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756397, 34.563961, 33.438301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.423519, 34.343353, 33.461212>,  <38.223793, 34.210987, 33.474957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.423519, 34.343353, 33.461212>,  <38.756397, 34.563961, 33.438301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423519, 34.343353, 33.461212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131031, 0.095239, -0.986793,
		0.538781, -0.828707, -0.151523,
		-0.832194, -0.551520, 0.057273,
		38.173862, 34.177898, 33.478394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838497, 34.086231, 32.941017>,  <38.756397, 34.563961, 33.438301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838497, 34.086231, 32.941017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444611, 34.081383, 33.010517>,  <38.208279, 34.078472, 33.052216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444611, 34.081383, 33.010517>,  <38.838497, 34.086231, 32.941017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444611, 34.081383, 33.010517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171978, 0.225574, -0.958926,
		-0.027567, -0.974151, -0.224211,
		-0.984715, -0.012125, 0.173751,
		38.149197, 34.077744, 33.062641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638687, 33.654724, 32.414669>,  <38.838497, 34.086231, 32.941017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638687, 33.654724, 32.414669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339798, 33.886063, 32.545620>,  <38.160465, 34.024864, 32.624191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339798, 33.886063, 32.545620>,  <38.638687, 33.654724, 32.414669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339798, 33.886063, 32.545620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239501, 0.225159, -0.944427,
		-0.619917, -0.784104, -0.029730,
		-0.747223, 0.578346, 0.327373,
		38.115631, 34.059566, 32.643833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204548, 33.567524, 31.791464>,  <38.638687, 33.654724, 32.414669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204548, 33.567524, 31.791464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077393, 33.884445, 31.999771>,  <38.001099, 34.074596, 32.124756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077393, 33.884445, 31.999771>,  <38.204548, 33.567524, 31.791464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077393, 33.884445, 31.999771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175149, 0.490734, -0.853523,
		-0.931809, -0.362541, -0.017230,
		-0.317892, 0.792303, 0.520769,
		37.982025, 34.122135, 32.156002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609573, 33.775467, 31.394520>,  <38.204548, 33.567524, 31.791464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609573, 33.775467, 31.394520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710506, 34.085632, 31.626059>,  <37.771065, 34.271732, 31.764982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710506, 34.085632, 31.626059>,  <37.609573, 33.775467, 31.394520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710506, 34.085632, 31.626059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206489, 0.627574, -0.750675,
		-0.945353, 0.069892, 0.318469,
		0.252329, 0.775414, 0.578847,
		37.786205, 34.318256, 31.799713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044174, 34.112476, 31.652956>,  <37.609573, 33.775467, 31.394520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044174, 34.112476, 31.652956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331184, 34.390743, 31.666824>,  <37.503391, 34.557705, 31.675146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331184, 34.390743, 31.666824>,  <37.044174, 34.112476, 31.652956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331184, 34.390743, 31.666824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525981, 0.573793, -0.627778,
		-0.456622, 0.432208, 0.777620,
		0.717524, 0.695670, 0.034673,
		37.546440, 34.599445, 31.677227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728119, 34.754757, 31.742413>,  <37.044174, 34.112476, 31.652956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728119, 34.754757, 31.742413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.079582, 34.870121, 31.590208>,  <37.290459, 34.939339, 31.498884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.079582, 34.870121, 31.590208>,  <36.728119, 34.754757, 31.742413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079582, 34.870121, 31.590208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467074, 0.684519, -0.559710,
		0.099044, 0.669519, 0.736162,
		0.878654, 0.288406, -0.380512,
		37.343178, 34.956642, 31.476055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679852, 35.435577, 31.807934>,  <36.728119, 34.754757, 31.742413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679852, 35.435577, 31.807934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968002, 35.344696, 31.545807>,  <37.140892, 35.290169, 31.388531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968002, 35.344696, 31.545807>,  <36.679852, 35.435577, 31.807934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968002, 35.344696, 31.545807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323672, 0.725513, -0.607344,
		0.613433, 0.649622, 0.449100,
		0.720372, -0.227204, -0.655318,
		37.184113, 35.276535, 31.349211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859863, 36.022530, 31.734369>,  <36.679852, 35.435577, 31.807934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859863, 36.022530, 31.734369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030697, 35.835320, 31.424904>,  <37.133198, 35.722996, 31.239225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030697, 35.835320, 31.424904>,  <36.859863, 36.022530, 31.734369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030697, 35.835320, 31.424904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263340, 0.754149, -0.601591,
		0.865014, 0.460668, 0.198837,
		0.427086, -0.468023, -0.773661,
		37.158821, 35.694912, 31.192806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213161, 36.595734, 31.309080>,  <36.859863, 36.022530, 31.734369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213161, 36.595734, 31.309080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197247, 36.285816, 31.056696>,  <37.187698, 36.099865, 30.905266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197247, 36.285816, 31.056696>,  <37.213161, 36.595734, 31.309080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197247, 36.285816, 31.056696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148505, 0.629034, -0.763062,
		0.988111, 0.063341, -0.140089,
		-0.039788, -0.774793, -0.630961,
		37.185310, 36.053379, 30.867407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609516, 36.771229, 30.658916>,  <37.213161, 36.595734, 31.309080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609516, 36.771229, 30.658916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326656, 36.499039, 30.582085>,  <37.156940, 36.335724, 30.535986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326656, 36.499039, 30.582085>,  <37.609516, 36.771229, 30.658916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326656, 36.499039, 30.582085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294536, 0.530461, -0.794896,
		0.642799, -0.505534, -0.575539,
		-0.707148, -0.680475, -0.192082,
		37.114513, 36.294895, 30.524460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508160, 36.623890, 29.920317>,  <37.609516, 36.771229, 30.658916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508160, 36.623890, 29.920317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153812, 36.484219, 30.042505>,  <36.941204, 36.400417, 30.115818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153812, 36.484219, 30.042505>,  <37.508160, 36.623890, 29.920317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153812, 36.484219, 30.042505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442781, 0.439752, -0.781385,
		0.138510, -0.827461, -0.544172,
		-0.885867, -0.349179, 0.305474,
		36.888054, 36.379463, 30.134148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196907, 36.258202, 29.323921>,  <37.508160, 36.623890, 29.920317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196907, 36.258202, 29.323921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918266, 36.381287, 29.583168>,  <36.751080, 36.455139, 29.738716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918266, 36.381287, 29.583168>,  <37.196907, 36.258202, 29.323921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918266, 36.381287, 29.583168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411994, 0.567996, -0.712489,
		-0.587370, -0.763343, -0.268892,
		-0.696604, 0.307713, 0.648117,
		36.709286, 36.473602, 29.777603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.580711, 36.206581, 28.956535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.385464, 36.346092, 29.276560>,  <36.268314, 36.429798, 29.468575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.385464, 36.346092, 29.276560>,  <36.580711, 36.206581, 28.956535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385464, 36.346092, 29.276560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639707, 0.480627, -0.599811,
		-0.593730, -0.804582, -0.011490,
		-0.488119, 0.348775, 0.800060,
		36.239029, 36.450726, 29.516577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828850, 36.032959, 28.825266>,  <36.580711, 36.206581, 28.956535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828850, 36.032959, 28.825266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877686, 36.347202, 29.067890>,  <35.906986, 36.535748, 29.213465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877686, 36.347202, 29.067890>,  <35.828850, 36.032959, 28.825266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877686, 36.347202, 29.067890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557764, 0.559812, -0.612789,
		-0.820971, -0.263499, 0.506533,
		0.122094, 0.785607, 0.606560,
		35.914314, 36.582886, 29.249859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171165, 36.346928, 28.973549>,  <35.828850, 36.032959, 28.825266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171165, 36.346928, 28.973549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420616, 36.653168, 29.036739>,  <35.570286, 36.836910, 29.074654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420616, 36.653168, 29.036739>,  <35.171165, 36.346928, 28.973549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420616, 36.653168, 29.036739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488675, 0.539534, -0.685638,
		-0.610156, 0.350380, 0.710594,
		0.623623, 0.765596, 0.157978,
		35.607704, 36.882847, 29.084133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814369, 37.037098, 28.939964>,  <35.171165, 36.346928, 28.973549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814369, 37.037098, 28.939964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199226, 37.109833, 28.858761>,  <35.430141, 37.153473, 28.810040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199226, 37.109833, 28.858761>,  <34.814369, 37.037098, 28.939964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199226, 37.109833, 28.858761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271598, 0.577789, -0.769672,
		-0.022662, 0.795672, 0.605304,
		0.962144, 0.181842, -0.203008,
		35.487869, 37.164387, 28.797859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766075, 37.583248, 28.651556>,  <34.814369, 37.037098, 28.939964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766075, 37.583248, 28.651556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139374, 37.513683, 28.525822>,  <35.363354, 37.471947, 28.450382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139374, 37.513683, 28.525822>,  <34.766075, 37.583248, 28.651556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139374, 37.513683, 28.525822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166514, 0.565917, -0.807472,
		0.318314, 0.805912, 0.499181,
		0.933247, -0.173909, -0.314335,
		35.419350, 37.461510, 28.431520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093796, 38.255215, 28.396023>,  <34.766075, 37.583248, 28.651556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093796, 38.255215, 28.396023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.310009, 37.964218, 28.226990>,  <35.439735, 37.789619, 28.125570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.310009, 37.964218, 28.226990>,  <35.093796, 38.255215, 28.396023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310009, 37.964218, 28.226990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237106, 0.350199, -0.906168,
		0.807220, 0.590012, 0.016802,
		0.540534, -0.727493, -0.422583,
		35.472168, 37.745972, 28.100214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378803, 38.562332, 27.792442>,  <35.093796, 38.255215, 28.396023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378803, 38.562332, 27.792442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431297, 38.171463, 27.725615>,  <35.462791, 37.936943, 27.685518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431297, 38.171463, 27.725615>,  <35.378803, 38.562332, 27.792442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431297, 38.171463, 27.725615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063819, 0.159848, -0.985077,
		0.989296, 0.139934, -0.041386,
		0.131231, -0.977173, -0.167067,
		35.470665, 37.878311, 27.675495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915520, 38.446899, 27.212452>,  <35.378803, 38.562332, 27.792442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915520, 38.446899, 27.212452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703381, 38.107819, 27.207962>,  <35.576096, 37.904369, 27.205267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703381, 38.107819, 27.207962>,  <35.915520, 38.446899, 27.212452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703381, 38.107819, 27.207962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026366, -0.003256, -0.999647,
		0.847371, -0.530455, 0.024077,
		-0.530346, -0.847707, -0.011227,
		35.544277, 37.853508, 27.204594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239250, 38.029388, 26.671127>,  <35.915520, 38.446899, 27.212452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239250, 38.029388, 26.671127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.891727, 37.843304, 26.738956>,  <35.683216, 37.731651, 26.779654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.891727, 37.843304, 26.738956>,  <36.239250, 38.029388, 26.671127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891727, 37.843304, 26.738956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084669, -0.197844, -0.976570,
		0.487862, -0.862806, 0.132499,
		-0.868805, -0.465213, 0.169574,
		35.631084, 37.703739, 26.789829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229176, 37.445534, 26.316750>,  <36.239250, 38.029388, 26.671127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229176, 37.445534, 26.316750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839458, 37.523621, 26.361742>,  <35.605629, 37.570473, 26.388739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839458, 37.523621, 26.361742>,  <36.229176, 37.445534, 26.316750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839458, 37.523621, 26.361742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124064, -0.048106, -0.991108,
		-0.188074, -0.979579, 0.071089,
		-0.974288, 0.195221, 0.112483,
		35.547173, 37.582188, 26.395487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957493, 37.060146, 25.798199>,  <36.229176, 37.445534, 26.316750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957493, 37.060146, 25.798199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658451, 37.309834, 25.888918>,  <35.479027, 37.459644, 25.943350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658451, 37.309834, 25.888918>,  <35.957493, 37.060146, 25.798199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658451, 37.309834, 25.888918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165899, 0.155144, -0.973863,
		-0.643089, -0.765690, -0.012429,
		-0.747605, 0.624219, 0.226799,
		35.434170, 37.497101, 25.956957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389565, 36.843445, 25.359379>,  <35.957493, 37.060146, 25.798199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389565, 36.843445, 25.359379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339581, 37.228016, 25.457386>,  <35.309589, 37.458759, 25.516190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339581, 37.228016, 25.457386>,  <35.389565, 36.843445, 25.359379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339581, 37.228016, 25.457386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252758, 0.207957, -0.944917,
		-0.959426, -0.180008, 0.217023,
		-0.124961, 0.961432, 0.245018,
		35.302094, 37.516445, 25.530891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856159, 37.052155, 24.906208>,  <35.389565, 36.843445, 25.359379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856159, 37.052155, 24.906208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995255, 37.403095, 25.038469>,  <35.078712, 37.613659, 25.117826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995255, 37.403095, 25.038469>,  <34.856159, 37.052155, 24.906208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995255, 37.403095, 25.038469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287004, 0.435336, -0.853294,
		-0.892586, 0.201822, 0.403186,
		0.347735, 0.877354, 0.330651,
		35.099575, 37.666302, 25.137665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392857, 37.511372, 24.709332>,  <34.856159, 37.052155, 24.906208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392857, 37.511372, 24.709332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688656, 37.768661, 24.788727>,  <34.866135, 37.923035, 24.836365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688656, 37.768661, 24.788727>,  <34.392857, 37.511372, 24.709332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688656, 37.768661, 24.788727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343435, 0.614109, -0.710579,
		-0.578956, 0.457307, 0.675041,
		0.739501, 0.643227, 0.198487,
		34.910507, 37.961628, 24.848272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074158, 38.193409, 24.847998>,  <34.392857, 37.511372, 24.709332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074158, 38.193409, 24.847998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456116, 38.277882, 24.764486>,  <34.685291, 38.328564, 24.714380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456116, 38.277882, 24.764486>,  <34.074158, 38.193409, 24.847998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456116, 38.277882, 24.764486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293264, 0.781155, -0.551174,
		0.046693, 0.587538, 0.807848,
		0.954890, 0.211177, -0.208778,
		34.742584, 38.341236, 24.701853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112049, 38.979740, 24.907644>,  <34.074158, 38.193409, 24.847998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112049, 38.979740, 24.907644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399345, 38.843845, 24.664759>,  <34.571724, 38.762310, 24.519028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399345, 38.843845, 24.664759>,  <34.112049, 38.979740, 24.907644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399345, 38.843845, 24.664759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185973, 0.747207, -0.638040,
		0.670478, 0.571194, 0.473495,
		0.718244, -0.339734, -0.607212,
		34.614819, 38.741924, 24.482595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365486, 39.560226, 24.637966>,  <34.112049, 38.979740, 24.907644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365486, 39.560226, 24.637966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.535469, 39.288193, 24.399004>,  <34.637459, 39.124973, 24.255627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.535469, 39.288193, 24.399004>,  <34.365486, 39.560226, 24.637966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535469, 39.288193, 24.399004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124659, 0.609704, -0.782766,
		0.896588, 0.407115, 0.174320,
		0.424959, -0.680087, -0.597403,
		34.662956, 39.084167, 24.219784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907978, 39.884518, 24.343779>,  <34.365486, 39.560226, 24.637966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907978, 39.884518, 24.343779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.781925, 39.581440, 24.115189>,  <34.706295, 39.399593, 23.978035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.781925, 39.581440, 24.115189>,  <34.907978, 39.884518, 24.343779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781925, 39.581440, 24.115189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253385, 0.647473, -0.718731,
		0.914597, -0.081692, -0.396029,
		-0.315132, -0.757697, -0.571477,
		34.687386, 39.354130, 23.943745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103474, 40.109737, 23.716404>,  <34.907978, 39.884518, 24.343779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103474, 40.109737, 23.716404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854965, 39.809414, 23.626678>,  <34.705860, 39.629219, 23.572844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854965, 39.809414, 23.626678>,  <35.103474, 40.109737, 23.716404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854965, 39.809414, 23.626678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349201, 0.521538, -0.778496,
		0.701489, -0.405322, -0.586197,
		-0.621266, -0.750808, -0.224315,
		34.668587, 39.584171, 23.559383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057358, 40.011444, 22.982283>,  <35.103474, 40.109737, 23.716404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057358, 40.011444, 22.982283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.718906, 39.880737, 23.150703>,  <34.515835, 39.802315, 23.251757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.718906, 39.880737, 23.150703>,  <35.057358, 40.011444, 22.982283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718906, 39.880737, 23.150703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532942, 0.527265, -0.661789,
		-0.005756, -0.784357, -0.620283,
		-0.846132, -0.326766, 0.421051,
		34.465065, 39.782707, 23.277020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671173, 39.722435, 22.411306>,  <35.057358, 40.011444, 22.982283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671173, 39.722435, 22.411306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405910, 39.811234, 22.697227>,  <34.246754, 39.864513, 22.868780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405910, 39.811234, 22.697227>,  <34.671173, 39.722435, 22.411306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405910, 39.811234, 22.697227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510128, 0.564795, -0.648673,
		-0.547720, -0.794811, -0.261300,
		-0.663153, 0.221995, 0.714805,
		34.206963, 39.877831, 22.911669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978546, 39.399590, 22.339577>,  <34.671173, 39.722435, 22.411306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978546, 39.399590, 22.339577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.947521, 39.747814, 22.533937>,  <33.928905, 39.956749, 22.650555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.947521, 39.747814, 22.533937>,  <33.978546, 39.399590, 22.339577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947521, 39.747814, 22.533937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562577, 0.364148, -0.742229,
		-0.823099, -0.330927, 0.461515,
		-0.077564, 0.870565, 0.485902,
		33.924252, 40.008984, 22.679708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235249, 39.496571, 22.581150>,  <33.978546, 39.399590, 22.339577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235249, 39.496571, 22.581150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473526, 39.790817, 22.452145>,  <33.616493, 39.967365, 22.374743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473526, 39.790817, 22.452145>,  <33.235249, 39.496571, 22.581150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473526, 39.790817, 22.452145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685960, 0.257035, -0.680729,
		-0.417859, 0.626738, 0.657719,
		0.595695, 0.735617, -0.322512,
		33.652233, 40.011501, 22.355391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996159, 40.129097, 22.375095>,  <33.235249, 39.496571, 22.581150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996159, 40.129097, 22.375095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332085, 40.139935, 22.158216>,  <33.533642, 40.146435, 22.028090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332085, 40.139935, 22.158216>,  <32.996159, 40.129097, 22.375095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332085, 40.139935, 22.158216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523329, 0.305989, -0.795297,
		0.144361, 0.951649, 0.271152,
		0.839814, 0.027092, -0.542198,
		33.584030, 40.148064, 21.995558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374950, 39.714787, 22.352127>,  <32.996159, 40.129097, 22.375095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374950, 39.714787, 22.352127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.980804, 39.664223, 22.397873>,  <31.744316, 39.633884, 22.425320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.980804, 39.664223, 22.397873>,  <32.374950, 39.714787, 22.352127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980804, 39.664223, 22.397873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161868, -0.483508, 0.860243,
		-0.053443, 0.866165, 0.496893,
		-0.985364, -0.126405, 0.114364,
		31.685196, 39.626301, 22.432182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289680, 39.727707, 23.182713>,  <32.374950, 39.714787, 22.352127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289680, 39.727707, 23.182713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.954672, 39.563873, 23.038050>,  <31.753666, 39.465572, 22.951252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.954672, 39.563873, 23.038050>,  <32.289680, 39.727707, 23.182713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954672, 39.563873, 23.038050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009386, -0.672581, 0.739964,
		-0.546318, 0.616344, 0.567148,
		-0.837525, -0.409579, -0.361658,
		31.703415, 39.440998, 22.929552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807308, 39.713863, 23.776604>,  <32.289680, 39.727707, 23.182713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807308, 39.713863, 23.776604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733953, 39.433735, 23.500656>,  <31.689939, 39.265656, 23.335089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733953, 39.433735, 23.500656>,  <31.807308, 39.713863, 23.776604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733953, 39.433735, 23.500656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128345, -0.712819, 0.689505,
		-0.974626, 0.037906, 0.220606,
		-0.183389, -0.700323, -0.689867,
		31.678936, 39.223637, 23.293695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248911, 39.302399, 24.094313>,  <31.807308, 39.713863, 23.776604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248911, 39.302399, 24.094313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.415876, 39.066734, 23.817572>,  <31.516056, 38.925335, 23.651527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.415876, 39.066734, 23.817572>,  <31.248911, 39.302399, 24.094313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415876, 39.066734, 23.817572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028937, -0.752347, 0.658132,
		-0.908256, -0.294733, -0.296992,
		0.417414, -0.589158, -0.691852,
		31.541100, 38.889988, 23.610016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918171, 38.553326, 24.196175>,  <31.248911, 39.302399, 24.094313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918171, 38.553326, 24.196175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245024, 38.490326, 23.974367>,  <31.441135, 38.452526, 23.841284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245024, 38.490326, 23.974367>,  <30.918171, 38.553326, 24.196175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245024, 38.490326, 23.974367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328271, -0.663598, 0.672217,
		-0.473848, -0.731322, -0.490547,
		0.817133, -0.157496, -0.554517,
		31.490164, 38.443077, 23.808012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002785, 37.805779, 24.191444>,  <30.918171, 38.553326, 24.196175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002785, 37.805779, 24.191444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353737, 37.977016, 24.104784>,  <31.564308, 38.079758, 24.052788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353737, 37.977016, 24.104784>,  <31.002785, 37.805779, 24.191444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353737, 37.977016, 24.104784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471231, -0.683942, 0.556924,
		0.090237, -0.590728, -0.801809,
		0.877382, 0.428092, -0.216653,
		31.616951, 38.105446, 24.039787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445013, 37.267765, 24.204838>,  <31.002785, 37.805779, 24.191444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445013, 37.267765, 24.204838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682932, 37.588566, 24.226795>,  <31.825684, 37.781044, 24.239969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682932, 37.588566, 24.226795>,  <31.445013, 37.267765, 24.204838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682932, 37.588566, 24.226795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673076, -0.534191, 0.511478,
		0.439530, -0.267276, -0.857541,
		0.594796, 0.802000, 0.054896,
		31.861370, 37.829166, 24.243263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059021, 36.983543, 24.446178>,  <31.445013, 37.267765, 24.204838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059021, 36.983543, 24.446178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.140495, 37.370853, 24.504095>,  <32.189381, 37.603237, 24.538845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.140495, 37.370853, 24.504095>,  <32.059021, 36.983543, 24.446178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140495, 37.370853, 24.504095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695912, -0.247214, 0.674234,
		0.688635, -0.036572, -0.724185,
		0.203686, 0.968271, 0.144789,
		32.201603, 37.661335, 24.547531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809433, 37.142048, 24.301655>,  <32.059021, 36.983543, 24.446178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809433, 37.142048, 24.301655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675274, 37.397652, 24.578547>,  <32.594780, 37.551014, 24.744682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675274, 37.397652, 24.578547>,  <32.809433, 37.142048, 24.301655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675274, 37.397652, 24.578547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653194, -0.371754, 0.659649,
		0.678859, 0.673403, -0.292711,
		-0.335393, 0.639006, 0.692230,
		32.574657, 37.589352, 24.786215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366829, 37.199471, 24.846487>,  <32.809433, 37.142048, 24.301655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366829, 37.199471, 24.846487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.057701, 37.349052, 25.051588>,  <32.872227, 37.438801, 25.174648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.057701, 37.349052, 25.051588>,  <33.366829, 37.199471, 24.846487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057701, 37.349052, 25.051588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397601, -0.344431, 0.850459,
		0.494638, 0.861120, 0.117499,
		-0.772818, 0.373951, 0.512751,
		32.825855, 37.461239, 25.205414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651882, 37.477394, 25.446531>,  <33.366829, 37.199471, 24.846487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651882, 37.477394, 25.446531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267132, 37.431244, 25.545713>,  <33.036282, 37.403553, 25.605223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267132, 37.431244, 25.545713>,  <33.651882, 37.477394, 25.446531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267132, 37.431244, 25.545713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272348, -0.321454, 0.906915,
		-0.024930, 0.939870, 0.340621,
		-0.961876, -0.115376, 0.247958,
		32.978569, 37.396629, 25.620100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627892, 37.740353, 26.165934>,  <33.651882, 37.477394, 25.446531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627892, 37.740353, 26.165934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289818, 37.533649, 26.111345>,  <33.086971, 37.409630, 26.078592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289818, 37.533649, 26.111345>,  <33.627892, 37.740353, 26.165934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289818, 37.533649, 26.111345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095792, -0.397662, 0.912518,
		-0.525818, 0.758175, 0.385599,
		-0.845186, -0.516755, -0.136471,
		33.036263, 37.378624, 26.070404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105236, 37.853302, 26.799377>,  <33.627892, 37.740353, 26.165934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105236, 37.853302, 26.799377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014721, 37.509953, 26.615211>,  <32.960411, 37.303944, 26.504713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014721, 37.509953, 26.615211>,  <33.105236, 37.853302, 26.799377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014721, 37.509953, 26.615211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149753, -0.497713, 0.854316,
		-0.962479, 0.124377, 0.241173,
		-0.226292, -0.858378, -0.460413,
		32.946835, 37.252438, 26.477087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731419, 37.592510, 27.248821>,  <33.105236, 37.853302, 26.799377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731419, 37.592510, 27.248821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.840641, 37.281719, 27.021933>,  <32.906174, 37.095245, 26.885799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.840641, 37.281719, 27.021933>,  <32.731419, 37.592510, 27.248821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840641, 37.281719, 27.021933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193455, -0.533234, 0.823551,
		-0.942346, -0.334608, 0.004707,
		0.273057, -0.776981, -0.567222,
		32.922558, 37.048626, 26.851767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347420, 37.029022, 27.494471>,  <32.731419, 37.592510, 27.248821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347420, 37.029022, 27.494471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670559, 36.887566, 27.305862>,  <32.864441, 36.802692, 27.192698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670559, 36.887566, 27.305862>,  <32.347420, 37.029022, 27.494471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670559, 36.887566, 27.305862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169435, -0.626894, 0.760457,
		-0.564516, -0.694223, -0.446515,
		0.807845, -0.353635, -0.471518,
		32.912910, 36.781475, 27.164406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396141, 36.418427, 27.755709>,  <32.347420, 37.029022, 27.494471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396141, 36.418427, 27.755709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.749504, 36.416245, 27.568281>,  <32.961521, 36.414936, 27.455824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.749504, 36.416245, 27.568281>,  <32.396141, 36.418427, 27.755709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749504, 36.416245, 27.568281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385946, -0.558644, 0.734140,
		-0.265767, -0.829389, -0.491408,
		0.883411, -0.005453, -0.468569,
		33.014526, 36.414608, 27.427710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535271, 35.776608, 27.638889>,  <32.396141, 36.418427, 27.755709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535271, 35.776608, 27.638889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906803, 35.922668, 27.613779>,  <33.129723, 36.010307, 27.598713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906803, 35.922668, 27.613779>,  <32.535271, 35.776608, 27.638889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906803, 35.922668, 27.613779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290229, -0.611734, 0.735900,
		0.230316, -0.701743, -0.674174,
		0.928828, 0.365155, -0.062774,
		33.185452, 36.032215, 27.594946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999420, 35.211990, 27.681240>,  <32.535271, 35.776608, 27.638889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999420, 35.211990, 27.681240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228722, 35.518917, 27.796204>,  <33.366302, 35.703075, 27.865181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228722, 35.518917, 27.796204>,  <32.999420, 35.211990, 27.681240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228722, 35.518917, 27.796204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209135, -0.476163, 0.854126,
		0.792242, -0.429520, -0.433434,
		0.573250, 0.767321, 0.287409,
		33.400696, 35.749115, 27.882427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549080, 34.876369, 27.998325>,  <32.999420, 35.211990, 27.681240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549080, 34.876369, 27.998325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.566761, 35.247253, 28.147097>,  <33.577370, 35.469784, 28.236361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.566761, 35.247253, 28.147097>,  <33.549080, 34.876369, 27.998325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566761, 35.247253, 28.147097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311974, -0.366486, 0.876561,
		0.949061, 0.077287, -0.305465,
		0.044202, 0.927208, 0.371929,
		33.580021, 35.525417, 28.258675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247509, 34.892509, 28.361755>,  <33.549080, 34.876369, 27.998325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247509, 34.892509, 28.361755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031052, 35.190979, 28.516880>,  <33.901176, 35.370060, 28.609955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031052, 35.190979, 28.516880>,  <34.247509, 34.892509, 28.361755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031052, 35.190979, 28.516880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306738, -0.254251, 0.917207,
		0.782994, 0.615294, -0.091293,
		-0.541140, 0.746170, 0.387810,
		33.868710, 35.414829, 28.633223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.485790, 35.418537, 31.184315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.116398, 35.292099, 31.271276>,  <37.894764, 35.216236, 31.323454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.116398, 35.292099, 31.271276>,  <38.485790, 35.418537, 31.184315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116398, 35.292099, 31.271276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356017, -0.494957, 0.792635,
		-0.142944, 0.809383, 0.569619,
		-0.923482, -0.316096, 0.217403,
		37.839352, 35.197269, 31.336496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414078, 35.520390, 31.898294>,  <38.485790, 35.418537, 31.184315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414078, 35.520390, 31.898294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.145203, 35.236568, 31.813730>,  <37.983879, 35.066277, 31.762993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.145203, 35.236568, 31.813730>,  <38.414078, 35.520390, 31.898294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145203, 35.236568, 31.813730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225981, -0.468542, 0.854049,
		-0.705049, 0.526308, 0.475295,
		-0.672189, -0.709555, -0.211410,
		37.943546, 35.023701, 31.750307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331894, 35.337673, 32.531097>,  <38.414078, 35.520390, 31.898294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331894, 35.337673, 32.531097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.136337, 35.062248, 32.316856>,  <38.019005, 34.896996, 32.188313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.136337, 35.062248, 32.316856>,  <38.331894, 35.337673, 32.531097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136337, 35.062248, 32.316856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121248, -0.554388, 0.823379,
		-0.863877, 0.467484, 0.187549,
		-0.488891, -0.688559, -0.535605,
		37.989670, 34.855682, 32.156174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690731, 35.147678, 32.942520>,  <38.331894, 35.337673, 32.531097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690731, 35.147678, 32.942520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759956, 34.841339, 32.694801>,  <37.801491, 34.657536, 32.546169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.759956, 34.841339, 32.694801>,  <37.690731, 35.147678, 32.942520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759956, 34.841339, 32.694801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281173, -0.641034, 0.714155,
		-0.943923, 0.050535, -0.326276,
		0.173064, -0.765847, -0.619296,
		37.811874, 34.611584, 32.509014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087574, 34.697124, 33.038010>,  <37.690731, 35.147678, 32.942520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087574, 34.697124, 33.038010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396908, 34.495106, 32.884705>,  <37.582508, 34.373894, 32.792721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396908, 34.495106, 32.884705>,  <37.087574, 34.697124, 33.038010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396908, 34.495106, 32.884705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048973, -0.650288, 0.758107,
		-0.632103, -0.567502, -0.527624,
		0.773335, -0.505041, -0.383257,
		37.628906, 34.343594, 32.769726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862778, 34.008263, 33.219398>,  <37.087574, 34.697124, 33.038010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862778, 34.008263, 33.219398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.257942, 34.048882, 33.172554>,  <37.495041, 34.073254, 33.144447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.257942, 34.048882, 33.172554>,  <36.862778, 34.008263, 33.219398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257942, 34.048882, 33.172554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150567, -0.449115, 0.880696,
		0.036840, -0.887684, -0.458977,
		0.987913, 0.101551, -0.117110,
		37.554317, 34.079346, 33.137421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161999, 33.417984, 33.594711>,  <36.862778, 34.008263, 33.219398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161999, 33.417984, 33.594711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.486156, 33.648380, 33.551838>,  <37.680653, 33.786617, 33.526115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.486156, 33.648380, 33.551838>,  <37.161999, 33.417984, 33.594711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486156, 33.648380, 33.551838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289219, -0.234206, 0.928170,
		0.509520, -0.783184, -0.356389,
		0.810396, 0.575995, -0.107179,
		37.729275, 33.821178, 33.519684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737206, 33.033558, 33.780701>,  <37.161999, 33.417984, 33.594711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737206, 33.033558, 33.780701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856831, 33.412094, 33.829678>,  <37.928608, 33.639217, 33.859062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856831, 33.412094, 33.829678>,  <37.737206, 33.033558, 33.780701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856831, 33.412094, 33.829678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365290, -0.232077, 0.901501,
		0.881546, -0.224882, -0.415097,
		0.299066, 0.946345, 0.122439,
		37.946552, 33.695999, 33.866409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493443, 33.008896, 34.048740>,  <37.737206, 33.033558, 33.780701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493443, 33.008896, 34.048740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.324722, 33.354324, 34.159252>,  <38.223488, 33.561581, 34.225559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.324722, 33.354324, 34.159252>,  <38.493443, 33.008896, 34.048740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324722, 33.354324, 34.159252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322296, -0.142002, 0.935928,
		0.847470, 0.483822, -0.218428,
		-0.421805, 0.863569, 0.276276,
		38.198181, 33.613396, 34.242134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939590, 33.425430, 34.452660>,  <38.493443, 33.008896, 34.048740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939590, 33.425430, 34.452660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582748, 33.583080, 34.541035>,  <38.368645, 33.677670, 34.594059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582748, 33.583080, 34.541035>,  <38.939590, 33.425430, 34.452660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582748, 33.583080, 34.541035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228693, -0.027854, 0.973100,
		0.389681, 0.918633, -0.065286,
		-0.892103, 0.394129, 0.220939,
		38.315117, 33.701321, 34.607315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077332, 33.860432, 35.093250>,  <38.939590, 33.425430, 34.452660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077332, 33.860432, 35.093250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.677761, 33.844120, 35.084370>,  <38.438019, 33.834335, 35.079041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.677761, 33.844120, 35.084370>,  <39.077332, 33.860432, 35.093250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677761, 33.844120, 35.084370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018975, -0.077898, 0.996781,
		-0.042374, 0.996127, 0.077040,
		-0.998922, -0.040775, -0.022203,
		38.378086, 33.831886, 35.077709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793034, 34.346134, 35.644642>,  <39.077332, 33.860432, 35.093250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793034, 34.346134, 35.644642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.527130, 34.058914, 35.562176>,  <38.367588, 33.886581, 35.512695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.527130, 34.058914, 35.562176>,  <38.793034, 34.346134, 35.644642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527130, 34.058914, 35.562176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029251, -0.250744, 0.967611,
		-0.746489, 0.649255, 0.145680,
		-0.664755, -0.718050, -0.206169,
		38.327705, 33.843498, 35.500324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190472, 34.446709, 36.134083>,  <38.793034, 34.346134, 35.644642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190472, 34.446709, 36.134083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.239494, 34.061745, 36.037132>,  <38.268906, 33.830765, 35.978962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.239494, 34.061745, 36.037132>,  <38.190472, 34.446709, 36.134083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239494, 34.061745, 36.037132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171938, -0.219937, 0.960242,
		-0.977455, -0.159356, 0.138520,
		0.122555, -0.962410, -0.242377,
		38.276260, 33.773022, 35.964420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716301, 34.010925, 36.472664>,  <38.190472, 34.446709, 36.134083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716301, 34.010925, 36.472664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068214, 33.830757, 36.411861>,  <38.279362, 33.722656, 36.375381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068214, 33.830757, 36.411861>,  <37.716301, 34.010925, 36.472664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068214, 33.830757, 36.411861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074285, -0.185570, 0.979819,
		-0.469537, -0.873320, -0.129802,
		0.879782, -0.450419, -0.152006,
		38.332150, 33.695633, 36.366261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855499, 34.471706, 37.006443>,  <37.716301, 34.010925, 36.472664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855499, 34.471706, 37.006443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.926174, 34.731319, 37.302425>,  <37.968578, 34.887089, 37.480015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.926174, 34.731319, 37.302425>,  <37.855499, 34.471706, 37.006443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926174, 34.731319, 37.302425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328854, 0.747511, -0.577133,
		-0.927705, -0.141366, 0.345512,
		0.176687, 0.649032, 0.739959,
		37.979179, 34.926029, 37.524414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351967, 35.033100, 36.918007>,  <37.855499, 34.471706, 37.006443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351967, 35.033100, 36.918007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.620495, 35.195004, 37.166359>,  <37.781612, 35.292145, 37.315372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.620495, 35.195004, 37.166359>,  <37.351967, 35.033100, 36.918007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620495, 35.195004, 37.166359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101449, 0.880011, -0.463992,
		-0.734188, 0.248501, 0.631834,
		0.671324, 0.404757, 0.620884,
		37.821892, 35.316429, 37.352623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033817, 35.607681, 37.372059>,  <37.351967, 35.033100, 36.918007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033817, 35.607681, 37.372059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.427612, 35.665695, 37.332554>,  <37.663887, 35.700504, 37.308853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.427612, 35.665695, 37.332554>,  <37.033817, 35.607681, 37.372059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427612, 35.665695, 37.332554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168601, 0.937792, -0.303513,
		0.048596, 0.315455, 0.947695,
		0.984486, 0.145033, -0.098759,
		37.722958, 35.709206, 37.302925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090977, 36.359093, 37.475201>,  <37.033817, 35.607681, 37.372059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090977, 36.359093, 37.475201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.429379, 36.254986, 37.289070>,  <37.632420, 36.192520, 37.177391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.429379, 36.254986, 37.289070>,  <37.090977, 36.359093, 37.475201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429379, 36.254986, 37.289070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109800, 0.939101, -0.325628,
		0.521743, 0.224390, 0.823064,
		0.846008, -0.260266, -0.465331,
		37.683182, 36.176907, 37.149471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545250, 36.854168, 37.643375>,  <37.090977, 36.359093, 37.475201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545250, 36.854168, 37.643375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661270, 36.700405, 37.292809>,  <37.730885, 36.608147, 37.082470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661270, 36.700405, 37.292809>,  <37.545250, 36.854168, 37.643375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661270, 36.700405, 37.292809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088639, 0.922637, -0.375344,
		0.952897, 0.031186, 0.301688,
		0.290054, -0.384406, -0.876413,
		37.748287, 36.585083, 37.029884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793980, 37.445457, 37.198658>,  <37.545250, 36.854168, 37.643375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793980, 37.445457, 37.198658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821384, 37.158108, 36.921749>,  <37.837826, 36.985699, 36.755604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821384, 37.158108, 36.921749>,  <37.793980, 37.445457, 37.198658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821384, 37.158108, 36.921749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192369, 0.671368, -0.715723,
		0.978928, 0.182209, -0.092196,
		0.068514, -0.718377, -0.692272,
		37.841938, 36.942596, 36.714066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378639, 37.589985, 36.722424>,  <37.793980, 37.445457, 37.198658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378639, 37.589985, 36.722424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.141376, 37.357418, 36.499672>,  <37.999020, 37.217876, 36.366020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.141376, 37.357418, 36.499672>,  <38.378639, 37.589985, 36.722424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141376, 37.357418, 36.499672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074895, 0.728556, -0.680879,
		0.801595, -0.362161, -0.475695,
		-0.593158, -0.581416, -0.556882,
		37.963428, 37.182995, 36.332607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556686, 37.711475, 35.993183>,  <38.378639, 37.589985, 36.722424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556686, 37.711475, 35.993183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185612, 37.562775, 35.979343>,  <37.962967, 37.473553, 35.971039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185612, 37.562775, 35.979343>,  <38.556686, 37.711475, 35.993183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185612, 37.562775, 35.979343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231107, 0.644538, -0.728807,
		0.293234, -0.668110, -0.683845,
		-0.927687, -0.371753, -0.034595,
		37.907307, 37.451248, 35.968964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451458, 37.524078, 35.319897>,  <38.556686, 37.711475, 35.993183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451458, 37.524078, 35.319897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.081047, 37.563053, 35.465763>,  <37.858803, 37.586437, 35.553284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.081047, 37.563053, 35.465763>,  <38.451458, 37.524078, 35.319897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081047, 37.563053, 35.465763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330711, 0.256289, -0.908265,
		-0.181956, -0.961677, -0.205108,
		-0.926025, 0.097433, 0.364671,
		37.803238, 37.592281, 35.575165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037449, 37.394707, 34.755146>,  <38.451458, 37.524078, 35.319897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037449, 37.394707, 34.755146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.781479, 37.563526, 35.012012>,  <37.627899, 37.664818, 35.166130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.781479, 37.563526, 35.012012>,  <38.037449, 37.394707, 34.755146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781479, 37.563526, 35.012012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449060, 0.472742, -0.758196,
		-0.623576, -0.773554, -0.112990,
		-0.639921, 0.422053, 0.642163,
		37.589504, 37.690144, 35.204662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327759, 37.140614, 34.599731>,  <38.037449, 37.394707, 34.755146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327759, 37.140614, 34.599731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.303680, 37.481628, 34.807407>,  <37.289234, 37.686237, 34.932014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.303680, 37.481628, 34.807407>,  <37.327759, 37.140614, 34.599731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303680, 37.481628, 34.807407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556930, 0.402963, -0.726258,
		-0.828375, -0.332868, 0.450547,
		-0.060194, 0.852538, 0.519189,
		37.285622, 37.737389, 34.963165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553200, 37.353100, 34.726131>,  <37.327759, 37.140614, 34.599731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553200, 37.353100, 34.726131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.775105, 37.685532, 34.741863>,  <36.908245, 37.884991, 34.751301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.775105, 37.685532, 34.741863>,  <36.553200, 37.353100, 34.726131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775105, 37.685532, 34.741863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629438, 0.450132, -0.633394,
		-0.544106, 0.326625, 0.772829,
		0.554757, 0.831082, 0.039329,
		36.941532, 37.934856, 34.753662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024876, 37.742390, 34.572754>,  <36.553200, 37.353100, 34.726131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024876, 37.742390, 34.572754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.352280, 37.972084, 34.565849>,  <36.548721, 38.109901, 34.561707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.352280, 37.972084, 34.565849>,  <36.024876, 37.742390, 34.572754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352280, 37.972084, 34.565849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395544, 0.541503, -0.741835,
		-0.416643, 0.614025, 0.670360,
		0.818507, 0.574237, -0.017260,
		36.597832, 38.144356, 34.560673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801811, 38.393921, 34.633091>,  <36.024876, 37.742390, 34.572754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801811, 38.393921, 34.633091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.160572, 38.402584, 34.456409>,  <36.375828, 38.407784, 34.350399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.160572, 38.402584, 34.456409>,  <35.801811, 38.393921, 34.633091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160572, 38.402584, 34.456409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365230, 0.599463, -0.712215,
		0.249364, 0.800109, 0.545567,
		0.896897, 0.021656, -0.441708,
		36.429642, 38.409081, 34.323898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693275, 39.040581, 34.966110>,  <35.801811, 38.393921, 34.633091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693275, 39.040581, 34.966110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.303631, 39.070885, 35.051300>,  <35.069843, 39.089069, 35.102413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.303631, 39.070885, 35.051300>,  <35.693275, 39.040581, 34.966110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303631, 39.070885, 35.051300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181657, -0.298370, 0.937004,
		0.134535, 0.951439, 0.276885,
		-0.974115, 0.075762, 0.212977,
		35.011395, 39.093613, 35.115192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750240, 39.278484, 35.678513>,  <35.693275, 39.040581, 34.966110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750240, 39.278484, 35.678513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.383709, 39.134594, 35.608147>,  <35.163792, 39.048260, 35.565926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.383709, 39.134594, 35.608147>,  <35.750240, 39.278484, 35.678513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383709, 39.134594, 35.608147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049883, -0.538431, 0.841192,
		-0.397316, 0.762030, 0.511323,
		-0.916325, -0.359725, -0.175914,
		35.108810, 39.026676, 35.555374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342606, 39.281910, 36.307644>,  <35.750240, 39.278484, 35.678513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342606, 39.281910, 36.307644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.116116, 39.038269, 36.085514>,  <34.980221, 38.892086, 35.952236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.116116, 39.038269, 36.085514>,  <35.342606, 39.281910, 36.307644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116116, 39.038269, 36.085514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336135, -0.444533, 0.830304,
		-0.752599, 0.656802, 0.046965,
		-0.566222, -0.609099, -0.555329,
		34.946247, 38.855537, 35.918915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798054, 39.096397, 36.753532>,  <35.342606, 39.281910, 36.307644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798054, 39.096397, 36.753532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.828308, 38.800903, 36.485634>,  <34.846462, 38.623608, 36.324894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.828308, 38.800903, 36.485634>,  <34.798054, 39.096397, 36.753532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828308, 38.800903, 36.485634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169401, -0.671423, 0.721453,
		-0.982640, 0.058886, -0.175926,
		0.075638, -0.738731, -0.669743,
		34.850998, 38.579285, 36.284710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248184, 38.699310, 36.881161>,  <34.798054, 39.096397, 36.753532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248184, 38.699310, 36.881161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.470062, 38.454735, 36.655434>,  <34.603188, 38.307987, 36.519997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.470062, 38.454735, 36.655434>,  <34.248184, 38.699310, 36.881161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470062, 38.454735, 36.655434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280651, -0.775967, 0.564899,
		-0.783305, -0.154958, -0.602014,
		0.554679, -0.611444, -0.564329,
		34.636471, 38.271301, 36.486137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854088, 38.127060, 36.882782>,  <34.248184, 38.699310, 36.881161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854088, 38.127060, 36.882782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.228477, 38.025162, 36.785580>,  <34.453114, 37.964024, 36.727257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.228477, 38.025162, 36.785580>,  <33.854088, 38.127060, 36.882782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228477, 38.025162, 36.785580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081903, -0.828852, 0.553441,
		-0.342403, -0.498105, -0.796651,
		0.935977, -0.254748, -0.243005,
		34.509270, 37.948738, 36.712677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824310, 37.459911, 36.938828>,  <33.854088, 38.127060, 36.882782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824310, 37.459911, 36.938828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.217571, 37.533016, 36.940239>,  <34.453526, 37.576881, 36.941086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.217571, 37.533016, 36.940239>,  <33.824310, 37.459911, 36.938828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217571, 37.533016, 36.940239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143448, -0.783320, 0.604841,
		0.113307, -0.594144, -0.796339,
		0.983150, 0.182766, 0.003527,
		34.512516, 37.587845, 36.941296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137215, 36.851906, 36.850853>,  <33.824310, 37.459911, 36.938828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137215, 36.851906, 36.850853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.400112, 37.081753, 37.045933>,  <34.557850, 37.219662, 37.162979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.400112, 37.081753, 37.045933>,  <34.137215, 36.851906, 36.850853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400112, 37.081753, 37.045933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163006, -0.740151, 0.652384,
		0.735840, -0.349277, -0.580125,
		0.657243, 0.574614, 0.487699,
		34.597286, 37.254139, 37.192242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603325, 36.382355, 37.158749>,  <34.137215, 36.851906, 36.850853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603325, 36.382355, 37.158749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.702324, 36.702812, 37.376705>,  <34.761723, 36.895088, 37.507481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.702324, 36.702812, 37.376705>,  <34.603325, 36.382355, 37.158749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702324, 36.702812, 37.376705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302372, -0.598169, 0.742135,
		0.920499, -0.018912, -0.390287,
		0.247493, 0.801146, 0.544896,
		34.776573, 36.943157, 37.540173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337284, 36.275909, 37.508121>,  <34.603325, 36.382355, 37.158749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337284, 36.275909, 37.508121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.132851, 36.559021, 37.703197>,  <35.010189, 36.728886, 37.820244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.132851, 36.559021, 37.703197>,  <35.337284, 36.275909, 37.508121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132851, 36.559021, 37.703197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298764, -0.385731, 0.872898,
		0.805936, 0.591830, -0.014317,
		-0.511085, 0.707777, 0.487692,
		34.979527, 36.771355, 37.849506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657486, 36.399204, 38.109917>,  <35.337284, 36.275909, 37.508121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657486, 36.399204, 38.109917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.287472, 36.536865, 38.174248>,  <35.065464, 36.619461, 38.212845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.287472, 36.536865, 38.174248>,  <35.657486, 36.399204, 38.109917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287472, 36.536865, 38.174248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020540, -0.377441, 0.925806,
		0.379320, 0.859709, 0.342078,
		-0.925038, 0.344150, 0.160829,
		35.009960, 36.640110, 38.222496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694111, 36.660679, 38.827869>,  <35.657486, 36.399204, 38.109917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694111, 36.660679, 38.827869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.298504, 36.641079, 38.772106>,  <35.061138, 36.629318, 38.738647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.298504, 36.641079, 38.772106>,  <35.694111, 36.660679, 38.827869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298504, 36.641079, 38.772106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122656, -0.253923, 0.959416,
		-0.082408, 0.965983, 0.245126,
		-0.989022, -0.048997, -0.139409,
		35.001797, 36.626381, 38.730282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.915432, 41.654541, 32.460648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552490, 41.486980, 32.446602>,  <34.334724, 41.386444, 32.438175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552490, 41.486980, 32.446602>,  <34.915432, 41.654541, 32.460648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552490, 41.486980, 32.446602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194111, -0.491618, 0.848901,
		-0.372869, 0.763436, 0.527384,
		-0.907353, -0.418900, -0.035118,
		34.280285, 41.361309, 32.436066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636986, 41.679092, 33.135151>,  <34.915432, 41.654541, 32.460648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636986, 41.679092, 33.135151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426090, 41.381329, 32.971264>,  <34.299553, 41.202671, 32.872932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426090, 41.381329, 32.971264>,  <34.636986, 41.679092, 33.135151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426090, 41.381329, 32.971264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065165, -0.516186, 0.853994,
		-0.847216, 0.423558, 0.320662,
		-0.527237, -0.744413, -0.409720,
		34.267918, 41.158005, 32.848347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025253, 41.589108, 33.573975>,  <34.636986, 41.679092, 33.135151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025253, 41.589108, 33.573975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067936, 41.240120, 33.383224>,  <34.093544, 41.030727, 33.268776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067936, 41.240120, 33.383224>,  <34.025253, 41.589108, 33.573975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067936, 41.240120, 33.383224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029950, -0.476573, 0.878625,
		-0.993840, -0.108036, -0.024723,
		0.106705, -0.872472, -0.476873,
		34.099949, 40.978378, 33.240162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587341, 41.106274, 33.941929>,  <34.025253, 41.589108, 33.573975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587341, 41.106274, 33.941929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830891, 40.875626, 33.724018>,  <33.977020, 40.737236, 33.593269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830891, 40.875626, 33.724018>,  <33.587341, 41.106274, 33.941929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830891, 40.875626, 33.724018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054013, -0.655024, 0.753675,
		-0.791426, -0.488318, -0.367682,
		0.608874, -0.576618, -0.544779,
		34.013554, 40.702641, 33.560585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277031, 40.460278, 33.986164>,  <33.587341, 41.106274, 33.941929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277031, 40.460278, 33.986164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658009, 40.417622, 33.871994>,  <33.886597, 40.392029, 33.803490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658009, 40.417622, 33.871994>,  <33.277031, 40.460278, 33.986164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658009, 40.417622, 33.871994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154004, -0.639805, 0.752949,
		-0.262917, -0.761102, -0.592958,
		0.952448, -0.106644, -0.285429,
		33.943745, 40.385628, 33.786366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471054, 39.689423, 34.017529>,  <33.277031, 40.460278, 33.986164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471054, 39.689423, 34.017529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819992, 39.884979, 34.017845>,  <34.029354, 40.002312, 34.018036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819992, 39.884979, 34.017845>,  <33.471054, 39.689423, 34.017529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819992, 39.884979, 34.017845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377166, -0.674021, 0.635170,
		0.311064, -0.553787, -0.772372,
		0.872344, 0.488892, 0.000794,
		34.081696, 40.031647, 34.018082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975288, 39.152035, 33.868343>,  <33.471054, 39.689423, 34.017529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975288, 39.152035, 33.868343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207409, 39.426804, 34.043331>,  <34.346684, 39.591667, 34.148323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207409, 39.426804, 34.043331>,  <33.975288, 39.152035, 33.868343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207409, 39.426804, 34.043331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403995, -0.709228, 0.577741,
		0.707132, -0.158529, -0.689081,
		0.580304, 0.686924, 0.437473,
		34.381500, 39.632881, 34.174572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592987, 38.808903, 33.904819>,  <33.975288, 39.152035, 33.868343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592987, 38.808903, 33.904819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597832, 39.107498, 34.170933>,  <34.600739, 39.286655, 34.330601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597832, 39.107498, 34.170933>,  <34.592987, 38.808903, 33.904819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597832, 39.107498, 34.170933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477755, -0.588797, 0.651973,
		0.878410, 0.309947, -0.363771,
		0.012110, 0.746493, 0.665283,
		34.601463, 39.331448, 34.370518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274284, 38.841133, 34.197231>,  <34.592987, 38.808903, 33.904819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274284, 38.841133, 34.197231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030876, 39.016151, 34.462032>,  <34.884830, 39.121162, 34.620914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030876, 39.016151, 34.462032>,  <35.274284, 38.841133, 34.197231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030876, 39.016151, 34.462032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341189, -0.608933, 0.716094,
		0.716445, 0.661627, 0.221260,
		-0.608520, 0.437551, 0.662007,
		34.848320, 39.147415, 34.660633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897614, 39.179230, 33.914803>,  <35.274284, 38.841133, 34.197231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897614, 39.179230, 33.914803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222862, 38.956848, 33.845810>,  <36.418011, 38.823418, 33.804417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222862, 38.956848, 33.845810>,  <35.897614, 39.179230, 33.914803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222862, 38.956848, 33.845810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189704, 0.027036, -0.981469,
		0.550319, 0.830770, -0.083484,
		0.813118, -0.555959, -0.172478,
		36.466797, 38.790062, 33.794067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285019, 39.598366, 33.450844>,  <35.897614, 39.179230, 33.914803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285019, 39.598366, 33.450844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408150, 39.219490, 33.414879>,  <36.482029, 38.992165, 33.393299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408150, 39.219490, 33.414879>,  <36.285019, 39.598366, 33.450844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408150, 39.219490, 33.414879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071925, 0.117394, -0.990477,
		0.948721, 0.298427, 0.104263,
		0.307825, -0.947185, -0.089910,
		36.500496, 38.935333, 33.387905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846294, 39.591396, 32.910706>,  <36.285019, 39.598366, 33.450844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846294, 39.591396, 32.910706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669830, 39.233604, 32.939751>,  <36.563950, 39.018929, 32.957176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669830, 39.233604, 32.939751>,  <36.846294, 39.591396, 32.910706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669830, 39.233604, 32.939751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013988, -0.074049, -0.997157,
		0.897318, -0.440925, 0.020156,
		-0.441163, -0.894484, 0.072613,
		36.537479, 38.965260, 32.961536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202503, 39.281918, 32.404751>,  <36.846294, 39.591396, 32.910706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202503, 39.281918, 32.404751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863037, 39.078476, 32.462849>,  <36.659359, 38.956409, 32.497707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863037, 39.078476, 32.462849>,  <37.202503, 39.281918, 32.404751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863037, 39.078476, 32.462849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151176, -0.029901, -0.988055,
		0.506871, -0.860482, -0.051513,
		-0.848662, -0.508603, 0.145240,
		36.608437, 38.925896, 32.506420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165615, 38.885841, 31.851957>,  <37.202503, 39.281918, 32.404751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165615, 38.885841, 31.851957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790199, 38.886223, 31.990028>,  <36.564949, 38.886452, 32.072872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790199, 38.886223, 31.990028>,  <37.165615, 38.885841, 31.851957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790199, 38.886223, 31.990028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342109, 0.130475, -0.930557,
		-0.045927, -0.991451, -0.122129,
		-0.938537, 0.000957, 0.345177,
		36.508636, 38.886509, 32.093582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859825, 38.336025, 31.591631>,  <37.165615, 38.885841, 31.851957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859825, 38.336025, 31.591631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551888, 38.584549, 31.650038>,  <36.367126, 38.733662, 31.685081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551888, 38.584549, 31.650038>,  <36.859825, 38.336025, 31.591631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551888, 38.584549, 31.650038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265807, -0.104120, -0.958387,
		-0.580251, -0.776617, 0.245304,
		-0.769841, 0.621309, 0.146015,
		36.320934, 38.770943, 31.693842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262997, 38.017750, 31.155193>,  <36.859825, 38.336025, 31.591631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262997, 38.017750, 31.155193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151382, 38.388081, 31.257166>,  <36.084415, 38.610279, 31.318350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151382, 38.388081, 31.257166>,  <36.262997, 38.017750, 31.155193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151382, 38.388081, 31.257166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323351, 0.159384, -0.932760,
		-0.904203, -0.342705, 0.254892,
		-0.279036, 0.925824, 0.254930,
		36.067673, 38.665829, 31.333645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601944, 38.172237, 30.909409>,  <36.262997, 38.017750, 31.155193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601944, 38.172237, 30.909409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768219, 38.532940, 30.956800>,  <35.867985, 38.749363, 30.985235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768219, 38.532940, 30.956800>,  <35.601944, 38.172237, 30.909409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768219, 38.532940, 30.956800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295788, 0.257223, -0.919970,
		-0.860067, 0.347374, 0.373653,
		0.415686, 0.901758, 0.118480,
		35.892925, 38.803467, 30.992344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058491, 38.572796, 30.598989>,  <35.601944, 38.172237, 30.909409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058491, 38.572796, 30.598989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357700, 38.838261, 30.599054>,  <35.537228, 38.997540, 30.599092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357700, 38.838261, 30.599054>,  <35.058491, 38.572796, 30.598989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357700, 38.838261, 30.599054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291985, 0.329320, -0.897938,
		-0.595985, 0.671636, 0.440121,
		0.748029, 0.663667, 0.000162,
		35.582108, 39.037361, 30.599102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795193, 39.222160, 30.511742>,  <35.058491, 38.572796, 30.598989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795193, 39.222160, 30.511742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177776, 39.274837, 30.407560>,  <35.407326, 39.306446, 30.345051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177776, 39.274837, 30.407560>,  <34.795193, 39.222160, 30.511742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177776, 39.274837, 30.407560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290415, 0.518064, -0.804530,
		0.028979, 0.845142, 0.533755,
		0.956462, 0.131696, -0.260455,
		35.464714, 39.314346, 30.329424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776333, 39.862156, 30.313879>,  <34.795193, 39.222160, 30.511742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776333, 39.862156, 30.313879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115829, 39.728897, 30.149612>,  <35.319527, 39.648941, 30.051052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115829, 39.728897, 30.149612>,  <34.776333, 39.862156, 30.313879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115829, 39.728897, 30.149612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151280, 0.591172, -0.792231,
		0.506704, 0.734527, 0.451355,
		0.848743, -0.333146, -0.410668,
		35.370453, 39.628952, 30.026411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237358, 40.382473, 30.072609>,  <34.776333, 39.862156, 30.313879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237358, 40.382473, 30.072609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361221, 40.085918, 29.834467>,  <35.435539, 39.907986, 29.691582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361221, 40.085918, 29.834467>,  <35.237358, 40.382473, 30.072609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361221, 40.085918, 29.834467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029774, 0.618266, -0.785405,
		0.950380, 0.260937, 0.169380,
		0.309663, -0.741390, -0.595357,
		35.454121, 39.863503, 29.655861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664501, 40.689640, 29.568882>,  <35.237358, 40.382473, 30.072609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664501, 40.689640, 29.568882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585213, 40.343250, 29.385231>,  <35.537640, 40.135418, 29.275042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585213, 40.343250, 29.385231>,  <35.664501, 40.689640, 29.568882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585213, 40.343250, 29.385231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071716, 0.479979, -0.874344,
		0.977530, -0.140386, -0.157246,
		-0.198221, -0.865975, -0.459126,
		35.525745, 40.083458, 29.247494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050598, 40.721512, 28.910070>,  <35.664501, 40.689640, 29.568882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050598, 40.721512, 28.910070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788662, 40.426662, 28.843325>,  <35.631500, 40.249752, 28.803278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788662, 40.426662, 28.843325>,  <36.050598, 40.721512, 28.910070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788662, 40.426662, 28.843325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041567, 0.255580, -0.965894,
		0.754627, -0.625566, -0.198002,
		-0.654836, -0.737120, -0.166865,
		35.592213, 40.205528, 28.793264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.327898, 37.113724, 28.953917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.582174, 37.418442, 29.003832>,  <30.734739, 37.601273, 29.033781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.582174, 37.418442, 29.003832>,  <30.327898, 37.113724, 28.953917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582174, 37.418442, 29.003832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284051, -0.381151, 0.879795,
		0.717783, -0.523831, -0.458681,
		0.635690, 0.761791, 0.124789,
		30.772881, 37.646980, 29.041269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908867, 36.794479, 29.240322>,  <30.327898, 37.113724, 28.953917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908867, 36.794479, 29.240322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.890951, 37.180313, 29.344299>,  <30.880201, 37.411812, 29.406685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.890951, 37.180313, 29.344299>,  <30.908867, 36.794479, 29.240322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890951, 37.180313, 29.344299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269888, -0.238844, 0.932799,
		0.961849, 0.111936, -0.249632,
		-0.044790, 0.964585, 0.259942,
		30.877514, 37.469688, 29.422281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507248, 36.852917, 29.598049>,  <30.908867, 36.794479, 29.240322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507248, 36.852917, 29.598049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.277676, 37.153660, 29.727856>,  <31.139933, 37.334106, 29.805740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.277676, 37.153660, 29.727856>,  <31.507248, 36.852917, 29.598049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277676, 37.153660, 29.727856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345608, -0.136873, 0.928343,
		0.742401, 0.644959, -0.181294,
		-0.573929, 0.751860, 0.324518,
		31.105497, 37.379219, 29.825211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950212, 37.177525, 30.048309>,  <31.507248, 36.852917, 29.598049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950212, 37.177525, 30.048309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.591507, 37.320683, 30.152405>,  <31.376284, 37.406578, 30.214863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.591507, 37.320683, 30.152405>,  <31.950212, 37.177525, 30.048309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591507, 37.320683, 30.152405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184830, -0.231395, 0.955141,
		0.402057, 0.904637, 0.141358,
		-0.896765, 0.357894, 0.260238,
		31.322477, 37.428051, 30.230476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106262, 37.454887, 30.561935>,  <31.950212, 37.177525, 30.048309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106262, 37.454887, 30.561935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.713654, 37.389374, 30.601501>,  <31.478088, 37.350063, 30.625240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.713654, 37.389374, 30.601501>,  <32.106262, 37.454887, 30.561935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713654, 37.389374, 30.601501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133763, -0.217723, 0.966801,
		-0.136815, 0.962169, 0.235609,
		-0.981524, -0.163788, 0.098915,
		31.419197, 37.340237, 30.631176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828680, 37.892204, 31.183117>,  <32.106262, 37.454887, 30.561935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828680, 37.892204, 31.183117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.592911, 37.574997, 31.121544>,  <31.451448, 37.384670, 31.084600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.592911, 37.574997, 31.121544>,  <31.828680, 37.892204, 31.183117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592911, 37.574997, 31.121544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098897, -0.259954, 0.960543,
		-0.801747, 0.550944, 0.231650,
		-0.589424, -0.793022, -0.153930,
		31.416084, 37.337090, 31.075365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339888, 37.845127, 31.789017>,  <31.828680, 37.892204, 31.183117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339888, 37.845127, 31.789017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.357048, 37.485676, 31.614370>,  <31.367344, 37.270004, 31.509583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.357048, 37.485676, 31.614370>,  <31.339888, 37.845127, 31.789017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357048, 37.485676, 31.614370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040003, -0.435125, 0.899481,
		-0.998278, -0.056054, 0.017281,
		0.042900, -0.898624, -0.436618,
		31.369919, 37.216087, 31.483385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963371, 37.414124, 32.254402>,  <31.339888, 37.845127, 31.789017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963371, 37.414124, 32.254402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.152645, 37.146740, 32.024876>,  <31.266209, 36.986309, 31.887159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.152645, 37.146740, 32.024876>,  <30.963371, 37.414124, 32.254402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152645, 37.146740, 32.024876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010678, -0.646949, 0.762458,
		-0.880900, -0.366909, -0.298987,
		0.473182, -0.668457, -0.573816,
		31.294600, 36.946201, 31.852732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554188, 36.848099, 32.444717>,  <30.963371, 37.414124, 32.254402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554188, 36.848099, 32.444717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.889334, 36.735023, 32.257923>,  <31.090422, 36.667179, 32.145847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.889334, 36.735023, 32.257923>,  <30.554188, 36.848099, 32.444717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889334, 36.735023, 32.257923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097307, -0.764425, 0.637328,
		-0.537134, -0.579435, -0.612978,
		0.837865, -0.282683, -0.466981,
		31.140694, 36.650219, 32.117828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508486, 36.106747, 32.503891>,  <30.554188, 36.848099, 32.444717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508486, 36.106747, 32.503891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.890350, 36.196709, 32.425880>,  <31.119469, 36.250687, 32.379074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.890350, 36.196709, 32.425880>,  <30.508486, 36.106747, 32.503891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890350, 36.196709, 32.425880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294510, -0.809039, 0.508645,
		-0.043384, -0.543021, -0.838597,
		0.954663, 0.224908, -0.195025,
		31.176750, 36.264179, 32.367374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900616, 35.458660, 32.306198>,  <30.508486, 36.106747, 32.503891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900616, 35.458660, 32.306198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.177721, 35.709980, 32.447800>,  <31.343985, 35.860771, 32.532761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.177721, 35.709980, 32.447800>,  <30.900616, 35.458660, 32.306198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177721, 35.709980, 32.447800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392595, -0.740329, 0.545694,
		0.604938, -0.239058, -0.759540,
		0.692762, 0.628302, 0.354001,
		31.385550, 35.898472, 32.554001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448586, 35.042030, 32.372417>,  <30.900616, 35.458660, 32.306198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448586, 35.042030, 32.372417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.538116, 35.363796, 32.592533>,  <31.591835, 35.556854, 32.724602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.538116, 35.363796, 32.592533>,  <31.448586, 35.042030, 32.372417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538116, 35.363796, 32.592533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539986, -0.572389, 0.617078,
		0.811367, 0.159032, -0.562488,
		0.223827, 0.804413, 0.550293,
		31.605265, 35.605122, 32.757622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230350, 34.998524, 32.474792>,  <31.448586, 35.042030, 32.372417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230350, 34.998524, 32.474792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.036125, 35.211693, 32.751984>,  <31.919590, 35.339592, 32.918301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.036125, 35.211693, 32.751984>,  <32.230350, 34.998524, 32.474792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036125, 35.211693, 32.751984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536069, -0.444660, 0.717571,
		0.690550, 0.719911, -0.069772,
		-0.485562, 0.532921, 0.692982,
		31.890457, 35.371571, 32.959877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795162, 35.034374, 32.947227>,  <32.230350, 34.998524, 32.474792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795162, 35.034374, 32.947227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.462582, 35.119968, 33.152321>,  <32.263035, 35.171326, 33.275375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.462582, 35.119968, 33.152321>,  <32.795162, 35.034374, 32.947227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462582, 35.119968, 33.152321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363758, -0.487900, 0.793494,
		0.419960, 0.846264, 0.327827,
		-0.831453, 0.213986, 0.512734,
		32.213146, 35.184166, 33.306141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594509, 35.050457, 32.963501>,  <32.795162, 35.034374, 32.947227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594509, 35.050457, 32.963501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.770531, 34.736172, 32.789604>,  <33.876144, 34.547600, 32.685265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.770531, 34.736172, 32.789604>,  <33.594509, 35.050457, 32.963501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770531, 34.736172, 32.789604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064732, 0.455127, -0.888071,
		0.895637, 0.418938, 0.149418,
		0.440051, -0.785717, -0.434747,
		33.902546, 34.500458, 32.659180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140644, 35.336006, 32.549023>,  <33.594509, 35.050457, 32.963501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140644, 35.336006, 32.549023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085346, 34.967316, 32.404079>,  <34.052170, 34.746101, 32.317112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085346, 34.967316, 32.404079>,  <34.140644, 35.336006, 32.549023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085346, 34.967316, 32.404079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104847, 0.377440, -0.920080,
		0.984833, -0.089201, -0.148818,
		-0.138242, -0.921728, -0.362363,
		34.043873, 34.690796, 32.295372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664711, 35.140392, 32.050854>,  <34.140644, 35.336006, 32.549023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664711, 35.140392, 32.050854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.353928, 34.901993, 31.969738>,  <34.167458, 34.758953, 31.921068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.353928, 34.901993, 31.969738>,  <34.664711, 35.140392, 32.050854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353928, 34.901993, 31.969738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002401, 0.319316, -0.947645,
		0.629549, -0.736767, -0.246664,
		-0.776957, -0.595996, -0.202794,
		34.120842, 34.723194, 31.908899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750095, 35.081779, 31.367294>,  <34.664711, 35.140392, 32.050854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750095, 35.081779, 31.367294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.398754, 34.893616, 31.401268>,  <34.187950, 34.780720, 31.421654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.398754, 34.893616, 31.401268>,  <34.750095, 35.081779, 31.367294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398754, 34.893616, 31.401268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137473, 0.078408, -0.987397,
		0.457817, -0.878960, -0.133538,
		-0.878354, -0.470405, 0.084937,
		34.135246, 34.752495, 31.426748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751785, 34.541687, 30.882158>,  <34.750095, 35.081779, 31.367294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751785, 34.541687, 30.882158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.380817, 34.658596, 30.975519>,  <34.158237, 34.728741, 31.031536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.380817, 34.658596, 30.975519>,  <34.751785, 34.541687, 30.882158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380817, 34.658596, 30.975519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160542, 0.252559, -0.954170,
		-0.337823, -0.922384, -0.187306,
		-0.927417, 0.292270, 0.233401,
		34.102592, 34.746277, 31.045540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227509, 34.125412, 30.440123>,  <34.751785, 34.541687, 30.882158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227509, 34.125412, 30.440123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.059376, 34.467754, 30.560678>,  <33.958496, 34.673161, 30.633013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.059376, 34.467754, 30.560678>,  <34.227509, 34.125412, 30.440123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059376, 34.467754, 30.560678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179070, 0.247382, -0.952227,
		-0.889525, -0.454221, 0.049275,
		-0.420332, 0.855854, 0.301390,
		33.933277, 34.724510, 30.651096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590816, 34.173210, 30.067318>,  <34.227509, 34.125412, 30.440123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590816, 34.173210, 30.067318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645576, 34.547989, 30.195938>,  <33.678432, 34.772854, 30.273109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645576, 34.547989, 30.195938>,  <33.590816, 34.173210, 30.067318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645576, 34.547989, 30.195938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329255, 0.349190, -0.877302,
		-0.934264, 0.014231, 0.356297,
		0.136900, 0.936944, 0.321550,
		33.686646, 34.829071, 30.292402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047066, 34.536793, 29.860332>,  <33.590816, 34.173210, 30.067318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047066, 34.536793, 29.860332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.332878, 34.812225, 29.909807>,  <33.504368, 34.977486, 29.939493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.332878, 34.812225, 29.909807>,  <33.047066, 34.536793, 29.860332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332878, 34.812225, 29.909807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271657, 0.436009, -0.857962,
		-0.644706, 0.579441, 0.498600,
		0.714533, 0.688581, 0.123688,
		33.547237, 35.018799, 29.946915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810844, 35.031975, 29.345028>,  <33.047066, 34.536793, 29.860332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810844, 35.031975, 29.345028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.182453, 35.157619, 29.423264>,  <33.405418, 35.233006, 29.470205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.182453, 35.157619, 29.423264>,  <32.810844, 35.031975, 29.345028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182453, 35.157619, 29.423264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045893, 0.426683, -0.903236,
		-0.367171, 0.848101, 0.381982,
		0.929021, 0.314112, 0.195588,
		33.461159, 35.251854, 29.481939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725361, 35.716259, 29.166992>,  <32.810844, 35.031975, 29.345028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725361, 35.716259, 29.166992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.118324, 35.641975, 29.174824>,  <33.354103, 35.597404, 29.179522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.118324, 35.641975, 29.174824>,  <32.725361, 35.716259, 29.166992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118324, 35.641975, 29.174824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104359, 0.459047, -0.882261,
		0.154859, 0.868785, 0.470352,
		0.982409, -0.185712, 0.019578,
		33.413048, 35.586262, 29.180696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179474, 36.328148, 29.221706>,  <32.725361, 35.716259, 29.166992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179474, 36.328148, 29.221706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.351009, 36.026306, 29.023046>,  <33.453930, 35.845200, 28.903851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.351009, 36.026306, 29.023046>,  <33.179474, 36.328148, 29.221706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351009, 36.026306, 29.023046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076280, 0.517559, -0.852241,
		0.900153, 0.403362, 0.164390,
		0.428843, -0.754607, -0.496651,
		33.479664, 35.799923, 28.874052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644100, 36.680622, 28.817642>,  <33.179474, 36.328148, 29.221706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644100, 36.680622, 28.817642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.633709, 36.328773, 28.627657>,  <33.627472, 36.117664, 28.513666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.633709, 36.328773, 28.627657>,  <33.644100, 36.680622, 28.817642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633709, 36.328773, 28.627657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190105, 0.462108, -0.866208,
		0.981420, -0.112797, 0.155215,
		-0.025980, -0.879621, -0.474965,
		33.625916, 36.064888, 28.485167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188747, 36.725937, 28.228203>,  <33.644100, 36.680622, 28.817642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188747, 36.725937, 28.228203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.918365, 36.445049, 28.138784>,  <33.756138, 36.276516, 28.085135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.918365, 36.445049, 28.138784>,  <34.188747, 36.725937, 28.228203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918365, 36.445049, 28.138784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001073, 0.304277, -0.952583,
		0.736942, -0.643663, -0.206431,
		-0.675955, -0.702220, -0.223544,
		33.715580, 36.234383, 28.071722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267239, 36.719055, 27.615385>,  <34.188747, 36.725937, 28.228203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267239, 36.719055, 27.615385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.929916, 36.504364, 27.604382>,  <33.727524, 36.375549, 27.597780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.929916, 36.504364, 27.604382>,  <34.267239, 36.719055, 27.615385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929916, 36.504364, 27.604382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205733, 0.369688, -0.906093,
		0.496493, -0.758456, -0.422183,
		-0.843308, -0.536725, -0.027508,
		33.676922, 36.343346, 27.596128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864994, 36.765198, 27.205849>,  <34.267239, 36.719055, 27.615385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864994, 36.765198, 27.205849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.082222, 37.101055, 27.202469>,  <35.212559, 37.302570, 27.200441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.082222, 37.101055, 27.202469>,  <34.864994, 36.765198, 27.205849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082222, 37.101055, 27.202469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281903, -0.172834, 0.943747,
		0.790954, -0.514899, -0.330560,
		0.543067, 0.839647, -0.008448,
		35.245144, 37.352951, 27.199934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537762, 36.604359, 27.552538>,  <34.864994, 36.765198, 27.205849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537762, 36.604359, 27.552538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.538925, 37.004295, 27.559601>,  <35.539623, 37.244255, 27.563839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.538925, 37.004295, 27.559601>,  <35.537762, 36.604359, 27.552538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538925, 37.004295, 27.559601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498510, -0.016758, 0.866722,
		0.866879, 0.006282, -0.498479,
		0.002908, 0.999840, 0.017659,
		35.539799, 37.304249, 27.564898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269966, 36.744186, 27.653893>,  <35.537762, 36.604359, 27.552538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269966, 36.744186, 27.653893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026608, 37.034546, 27.782219>,  <35.880592, 37.208763, 27.859215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026608, 37.034546, 27.782219>,  <36.269966, 36.744186, 27.653893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026608, 37.034546, 27.782219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371821, -0.096418, 0.923284,
		0.701142, 0.681011, -0.211243,
		-0.608399, 0.725897, 0.320817,
		35.844090, 37.252316, 27.878464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635357, 37.109409, 28.181694>,  <36.269966, 36.744186, 27.653893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635357, 37.109409, 28.181694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255154, 37.218094, 28.241966>,  <36.027031, 37.283306, 28.278130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255154, 37.218094, 28.241966>,  <36.635357, 37.109409, 28.181694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255154, 37.218094, 28.241966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150780, -0.020646, 0.988352,
		0.271656, 0.962158, -0.021344,
		-0.950510, 0.271710, 0.150683,
		35.970001, 37.299606, 28.287170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714973, 37.576221, 28.778170>,  <36.635357, 37.109409, 28.181694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714973, 37.576221, 28.778170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.343792, 37.435600, 28.728682>,  <36.121082, 37.351227, 28.698988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.343792, 37.435600, 28.728682>,  <36.714973, 37.576221, 28.778170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343792, 37.435600, 28.728682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026021, -0.270045, 0.962496,
		-0.371781, 0.896373, 0.241442,
		-0.927956, -0.351555, -0.123722,
		36.065407, 37.330135, 28.691565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390968, 37.831936, 29.417307>,  <36.714973, 37.576221, 28.778170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390968, 37.831936, 29.417307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.137871, 37.534660, 29.330299>,  <35.986012, 37.356297, 29.278095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.137871, 37.534660, 29.330299>,  <36.390968, 37.831936, 29.417307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137871, 37.534660, 29.330299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105438, -0.360970, 0.926598,
		-0.767151, 0.563362, 0.306761,
		-0.632741, -0.743185, -0.217519,
		35.948048, 37.311707, 29.265043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035698, 37.669422, 30.027842>,  <36.390968, 37.831936, 29.417307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035698, 37.669422, 30.027842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.981995, 37.337460, 29.811237>,  <35.949772, 37.138283, 29.681274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.981995, 37.337460, 29.811237>,  <36.035698, 37.669422, 30.027842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981995, 37.337460, 29.811237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245821, -0.557269, 0.793110,
		-0.959973, -0.026635, 0.278825,
		-0.134256, -0.829905, -0.541510,
		35.941719, 37.088490, 29.648785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734913, 37.252060, 30.453289>,  <36.035698, 37.669422, 30.027842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734913, 37.252060, 30.453289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916725, 37.029171, 30.175322>,  <36.025810, 36.895439, 30.008541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916725, 37.029171, 30.175322>,  <35.734913, 37.252060, 30.453289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916725, 37.029171, 30.175322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359218, -0.599241, 0.715452,
		-0.815088, -0.574819, -0.072208,
		0.454526, -0.557218, -0.694920,
		36.053082, 36.862007, 29.966845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610836, 36.538162, 30.565378>,  <35.734913, 37.252060, 30.453289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610836, 36.538162, 30.565378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930222, 36.513779, 30.325800>,  <36.121853, 36.499149, 30.182053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930222, 36.513779, 30.325800>,  <35.610836, 36.538162, 30.565378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930222, 36.513779, 30.325800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421750, -0.653318, 0.628730,
		-0.429628, -0.754625, -0.495944,
		0.798465, -0.060956, -0.598948,
		36.169762, 36.495491, 30.146116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815792, 35.802353, 30.512024>,  <35.610836, 36.538162, 30.565378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815792, 35.802353, 30.512024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141582, 35.981354, 30.364311>,  <36.337055, 36.088757, 30.275682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141582, 35.981354, 30.364311>,  <35.815792, 35.802353, 30.512024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141582, 35.981354, 30.364311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572697, -0.722103, 0.388053,
		-0.093004, -0.527547, -0.844420,
		0.814474, 0.447507, -0.369283,
		36.385925, 36.115604, 30.253527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331860, 35.283077, 30.159472>,  <35.815792, 35.802353, 30.512024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331860, 35.283077, 30.159472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571873, 35.582386, 30.272640>,  <36.715881, 35.761971, 30.340542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571873, 35.582386, 30.272640>,  <36.331860, 35.283077, 30.159472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571873, 35.582386, 30.272640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634253, -0.660521, 0.401790,
		0.487526, -0.061643, -0.870930,
		0.600035, 0.748273, 0.282924,
		36.751884, 35.806870, 30.357517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049629, 35.036869, 29.993401>,  <36.331860, 35.283077, 30.159472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049629, 35.036869, 29.993401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096489, 35.347115, 30.241495>,  <37.124607, 35.533264, 30.390352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096489, 35.347115, 30.241495>,  <37.049629, 35.036869, 29.993401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096489, 35.347115, 30.241495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716993, -0.498192, 0.487572,
		0.687166, 0.387585, -0.614476,
		0.117151, 0.775617, 0.620236,
		37.131634, 35.579800, 30.427567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689419, 35.153198, 30.066515>,  <37.049629, 35.036869, 29.993401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689419, 35.153198, 30.066515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543495, 35.312637, 30.403095>,  <37.455940, 35.408298, 30.605043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543495, 35.312637, 30.403095>,  <37.689419, 35.153198, 30.066515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543495, 35.312637, 30.403095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665729, -0.520152, 0.535020,
		0.650937, 0.755358, -0.075600,
		-0.364808, 0.398594, 0.841450,
		37.434052, 35.432217, 30.655531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237602, 35.176731, 30.556917>,  <37.689419, 35.153198, 30.066515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237602, 35.176731, 30.556917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918324, 35.216064, 30.794643>,  <37.726757, 35.239666, 30.937279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918324, 35.216064, 30.794643>,  <38.237602, 35.176731, 30.556917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918324, 35.216064, 30.794643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471267, -0.512584, 0.717750,
		0.375216, 0.852988, 0.362801,
		-0.798198, 0.098335, 0.594315,
		37.678864, 35.245564, 30.972939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.208122, 40.477348, 28.262213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.834091, 40.353329, 28.330917>,  <35.609673, 40.278915, 28.372139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.834091, 40.353329, 28.330917>,  <36.208122, 40.477348, 28.262213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834091, 40.353329, 28.330917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208425, 0.089024, -0.973978,
		0.286696, -0.946541, -0.147867,
		-0.935074, -0.310055, 0.171760,
		35.553570, 40.260311, 28.382446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065140, 40.128773, 27.732500>,  <36.208122, 40.477348, 28.262213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065140, 40.128773, 27.732500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702034, 40.203011, 27.882977>,  <35.484169, 40.247555, 27.973263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702034, 40.203011, 27.882977>,  <36.065140, 40.128773, 27.732500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702034, 40.203011, 27.882977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340884, 0.196258, -0.919392,
		-0.244468, -0.962827, -0.114888,
		-0.907763, 0.185598, 0.376191,
		35.429707, 40.258690, 27.995834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549335, 39.742584, 27.325722>,  <36.065140, 40.128773, 27.732500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549335, 39.742584, 27.325722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399872, 40.085796, 27.466667>,  <35.310192, 40.291725, 27.551235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399872, 40.085796, 27.466667>,  <35.549335, 39.742584, 27.325722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399872, 40.085796, 27.466667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313888, 0.240502, -0.918495,
		-0.872840, -0.453811, 0.179458,
		-0.373663, 0.858029, 0.352366,
		35.287773, 40.343204, 27.572376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953388, 39.804546, 27.035372>,  <35.549335, 39.742584, 27.325722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953388, 39.804546, 27.035372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.043941, 40.183434, 27.126177>,  <35.098274, 40.410767, 27.180660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.043941, 40.183434, 27.126177>,  <34.953388, 39.804546, 27.035372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043941, 40.183434, 27.126177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464678, 0.309855, -0.829497,
		-0.856053, 0.082294, 0.510295,
		0.226380, 0.947216, 0.227012,
		35.111855, 40.467598, 27.194281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375751, 40.171803, 26.774347>,  <34.953388, 39.804546, 27.035372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375751, 40.171803, 26.774347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647850, 40.459503, 26.830833>,  <34.811111, 40.632122, 26.864725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647850, 40.459503, 26.830833>,  <34.375751, 40.171803, 26.774347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647850, 40.459503, 26.830833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252001, 0.410407, -0.876391,
		-0.688300, 0.560578, 0.460430,
		0.680249, 0.719249, 0.141217,
		34.851925, 40.675278, 26.873198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086376, 40.699951, 26.477636>,  <34.375751, 40.171803, 26.774347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086376, 40.699951, 26.477636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.451958, 40.856052, 26.522150>,  <34.671307, 40.949715, 26.548859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.451958, 40.856052, 26.522150>,  <34.086376, 40.699951, 26.477636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451958, 40.856052, 26.522150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135482, 0.551925, -0.822814,
		-0.382524, 0.736941, 0.557308,
		0.913958, 0.390252, 0.111282,
		34.726147, 40.973129, 26.555534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964378, 41.470024, 26.433743>,  <34.086376, 40.699951, 26.477636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964378, 41.470024, 26.433743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.343407, 41.377625, 26.345427>,  <34.570824, 41.322186, 26.292437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.343407, 41.377625, 26.345427>,  <33.964378, 41.470024, 26.433743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343407, 41.377625, 26.345427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053947, 0.796677, -0.601993,
		0.314959, 0.558520, 0.767369,
		0.947571, -0.231001, -0.220790,
		34.627678, 41.308323, 26.279190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352802, 42.135548, 26.403141>,  <33.964378, 41.470024, 26.433743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352802, 42.135548, 26.403141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550297, 41.866634, 26.182499>,  <34.668793, 41.705288, 26.050114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550297, 41.866634, 26.182499>,  <34.352802, 42.135548, 26.403141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550297, 41.866634, 26.182499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046907, 0.653975, -0.755061,
		0.868347, 0.346925, 0.354424,
		0.493734, -0.672280, -0.551604,
		34.698418, 41.664951, 26.017017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843636, 42.588573, 25.992113>,  <34.352802, 42.135548, 26.403141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843636, 42.588573, 25.992113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.786049, 42.224892, 25.835850>,  <34.751499, 42.006683, 25.742092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.786049, 42.224892, 25.835850>,  <34.843636, 42.588573, 25.992113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786049, 42.224892, 25.835850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055036, 0.386804, -0.920518,
		0.988051, -0.154023, -0.005646,
		-0.143965, -0.909209, -0.390659,
		34.742859, 41.952129, 25.718653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298737, 42.614941, 25.353788>,  <34.843636, 42.588573, 25.992113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298737, 42.614941, 25.353788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036678, 42.315830, 25.310692>,  <34.879444, 42.136364, 25.284834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036678, 42.315830, 25.310692>,  <35.298737, 42.614941, 25.353788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036678, 42.315830, 25.310692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065362, 0.198176, -0.977984,
		0.752666, -0.633684, -0.178712,
		-0.655150, -0.747777, -0.107742,
		34.840134, 42.091496, 25.278370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507755, 42.280800, 24.712942>,  <35.298737, 42.614941, 25.353788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507755, 42.280800, 24.712942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.122593, 42.194553, 24.777832>,  <34.891495, 42.142807, 24.816767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.122593, 42.194553, 24.777832>,  <35.507755, 42.280800, 24.712942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122593, 42.194553, 24.777832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203703, 0.186601, -0.961086,
		0.176928, -0.958489, -0.223596,
		-0.962913, -0.215590, 0.162232,
		34.833721, 42.129868, 24.826500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268494, 41.864376, 24.099821>,  <35.507755, 42.280800, 24.712942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268494, 41.864376, 24.099821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.935493, 41.998856, 24.275961>,  <34.735691, 42.079544, 24.381645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.935493, 41.998856, 24.275961>,  <35.268494, 41.864376, 24.099821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935493, 41.998856, 24.275961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437410, 0.088945, -0.894853,
		-0.340015, -0.937581, 0.073010,
		-0.832504, 0.336199, 0.440350,
		34.685741, 42.099716, 24.408066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650719, 41.513855, 23.850588>,  <35.268494, 41.864376, 24.099821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650719, 41.513855, 23.850588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512421, 41.873680, 23.957357>,  <34.429443, 42.089577, 24.021420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512421, 41.873680, 23.957357>,  <34.650719, 41.513855, 23.850588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512421, 41.873680, 23.957357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642608, -0.019706, -0.765941,
		-0.683753, -0.436345, 0.584880,
		-0.345741, 0.899564, 0.266925,
		34.408699, 42.143551, 24.037436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932781, 41.507805, 23.792130>,  <34.650719, 41.513855, 23.850588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932781, 41.507805, 23.792130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057240, 41.884930, 23.744308>,  <34.131916, 42.111206, 23.715616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057240, 41.884930, 23.744308>,  <33.932781, 41.507805, 23.792130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057240, 41.884930, 23.744308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694002, 0.139465, -0.706337,
		-0.649269, 0.302744, 0.697707,
		0.311145, 0.942813, -0.119554,
		34.150581, 42.167774, 23.708443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757748, 40.767887, 23.691347>,  <33.932781, 41.507805, 23.792130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757748, 40.767887, 23.691347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766060, 40.535946, 23.365566>,  <33.771046, 40.396782, 23.170097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766060, 40.535946, 23.365566>,  <33.757748, 40.767887, 23.691347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766060, 40.535946, 23.365566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234820, -0.789010, 0.567734,
		-0.971817, -0.203048, 0.119765,
		0.020781, -0.579857, -0.814453,
		33.772293, 40.361988, 23.121231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454819, 40.129181, 23.896835>,  <33.757748, 40.767887, 23.691347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454819, 40.129181, 23.896835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660854, 40.023449, 23.570692>,  <33.784473, 39.960011, 23.375006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660854, 40.023449, 23.570692>,  <33.454819, 40.129181, 23.896835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660854, 40.023449, 23.570692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358810, -0.797403, 0.485184,
		-0.778421, -0.542472, -0.315888,
		0.515088, -0.264334, -0.815360,
		33.815380, 39.944149, 23.326084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420532, 39.366150, 23.854362>,  <33.454819, 40.129181, 23.896835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420532, 39.366150, 23.854362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.740677, 39.477573, 23.642014>,  <33.932762, 39.544430, 23.514605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.740677, 39.477573, 23.642014>,  <33.420532, 39.366150, 23.854362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740677, 39.477573, 23.642014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482537, -0.824812, 0.294691,
		-0.355778, -0.492024, -0.794565,
		0.800363, 0.278562, -0.530870,
		33.980785, 39.561142, 23.482752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757687, 38.690102, 23.463512>,  <33.420532, 39.366150, 23.854362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757687, 38.690102, 23.463512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017570, 38.988514, 23.521898>,  <34.173500, 39.167561, 23.556929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017570, 38.988514, 23.521898>,  <33.757687, 38.690102, 23.463512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017570, 38.988514, 23.521898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631533, -0.636595, 0.442620,
		0.423130, -0.195395, -0.884750,
		0.649713, 0.746035, 0.145964,
		34.212482, 39.212326, 23.565687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421062, 38.465626, 23.067335>,  <33.757687, 38.690102, 23.463512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421062, 38.465626, 23.067335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.505966, 38.727295, 23.357716>,  <34.556908, 38.884296, 23.531944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.505966, 38.727295, 23.357716>,  <34.421062, 38.465626, 23.067335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505966, 38.727295, 23.357716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579989, -0.682224, 0.445179,
		0.786484, 0.326549, -0.524222,
		0.212264, 0.654168, 0.725953,
		34.569645, 38.923546, 23.575502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148026, 38.294418, 23.314020>,  <34.421062, 38.465626, 23.067335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148026, 38.294418, 23.314020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975567, 38.523590, 23.592836>,  <34.872089, 38.661091, 23.760126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975567, 38.523590, 23.592836>,  <35.148026, 38.294418, 23.314020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975567, 38.523590, 23.592836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579383, -0.416422, 0.700648,
		0.691683, 0.705937, -0.152405,
		-0.431148, 0.572928, 0.697040,
		34.846222, 38.695469, 23.801949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640831, 38.294621, 23.780161>,  <35.148026, 38.294418, 23.314020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640831, 38.294621, 23.780161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.334515, 38.428020, 24.000101>,  <35.150723, 38.508060, 24.132065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.334515, 38.428020, 24.000101>,  <35.640831, 38.294621, 23.780161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334515, 38.428020, 24.000101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356877, -0.490891, 0.794773,
		0.534975, 0.804862, 0.256903,
		-0.765794, 0.333501, 0.549851,
		35.104778, 38.528072, 24.165056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960278, 38.440662, 24.303806>,  <35.640831, 38.294621, 23.780161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960278, 38.440662, 24.303806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581844, 38.427471, 24.432699>,  <35.354782, 38.419556, 24.510035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581844, 38.427471, 24.432699>,  <35.960278, 38.440662, 24.303806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581844, 38.427471, 24.432699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302997, -0.441791, 0.844402,
		0.114516, 0.896512, 0.427963,
		-0.946086, -0.032974, 0.322232,
		35.298019, 38.417580, 24.529369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038097, 38.666161, 24.949745>,  <35.960278, 38.440662, 24.303806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038097, 38.666161, 24.949745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686577, 38.475536, 24.939936>,  <35.475666, 38.361164, 24.934050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686577, 38.475536, 24.939936>,  <36.038097, 38.666161, 24.949745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686577, 38.475536, 24.939936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202884, -0.419656, 0.884718,
		-0.431911, 0.772516, 0.465480,
		-0.878801, -0.476558, -0.024523,
		35.422935, 38.332569, 24.932579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637554, 38.822250, 25.505022>,  <36.038097, 38.666161, 24.949745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637554, 38.822250, 25.505022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465408, 38.483952, 25.378847>,  <35.362122, 38.280972, 25.303143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465408, 38.483952, 25.378847>,  <35.637554, 38.822250, 25.505022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465408, 38.483952, 25.378847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141158, -0.282099, 0.948944,
		-0.891548, 0.452922, 0.002023,
		-0.430368, -0.845743, -0.315439,
		35.336296, 38.230228, 25.284216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042034, 38.735001, 25.906635>,  <35.637554, 38.822250, 25.505022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042034, 38.735001, 25.906635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.113873, 38.358921, 25.790863>,  <35.156975, 38.133274, 25.721399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.113873, 38.358921, 25.790863>,  <35.042034, 38.735001, 25.906635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113873, 38.358921, 25.790863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103712, -0.310672, 0.944842,
		-0.978259, -0.139668, -0.153304,
		0.179592, -0.940200, -0.289432,
		35.167751, 38.076862, 25.704033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565178, 38.402767, 26.247889>,  <35.042034, 38.735001, 25.906635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565178, 38.402767, 26.247889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.832829, 38.118446, 26.161139>,  <34.993420, 37.947853, 26.109089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.832829, 38.118446, 26.161139>,  <34.565178, 38.402767, 26.247889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832829, 38.118446, 26.161139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213622, -0.463481, 0.859971,
		-0.711788, -0.529096, -0.461968,
		0.669121, -0.710804, -0.216874,
		35.033566, 37.905205, 26.096077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324116, 37.973156, 26.651493>,  <34.565178, 38.402767, 26.247889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324116, 37.973156, 26.651493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.682095, 37.830814, 26.543835>,  <34.896881, 37.745407, 26.479239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.682095, 37.830814, 26.543835>,  <34.324116, 37.973156, 26.651493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682095, 37.830814, 26.543835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078728, -0.467820, 0.880310,
		-0.439170, -0.809021, -0.390659,
		0.894948, -0.355851, -0.269145,
		34.950577, 37.724056, 26.463091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419464, 37.248802, 26.771807>,  <34.324116, 37.973156, 26.651493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419464, 37.248802, 26.771807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.789265, 37.400425, 26.787853>,  <35.011147, 37.491398, 26.797482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.789265, 37.400425, 26.787853>,  <34.419464, 37.248802, 26.771807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789265, 37.400425, 26.787853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074651, -0.283265, 0.956132,
		0.373793, -0.880952, -0.290176,
		0.924503, 0.379058, 0.040118,
		35.066616, 37.514141, 26.799889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153870, 36.566391, 26.921900>,  <34.419464, 37.248802, 26.771807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153870, 36.566391, 26.921900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788517, 36.499924, 27.070560>,  <33.569305, 36.460041, 27.159758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788517, 36.499924, 27.070560>,  <34.153870, 36.566391, 26.921900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788517, 36.499924, 27.070560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406580, 0.418909, -0.811916,
		-0.020772, -0.892694, -0.450185,
		-0.913379, -0.166170, 0.371653,
		33.514503, 36.450073, 27.182056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877621, 36.143410, 26.440884>,  <34.153870, 36.566391, 26.921900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877621, 36.143410, 26.440884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.594517, 36.338074, 26.645720>,  <33.424652, 36.454872, 26.768621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.594517, 36.338074, 26.645720>,  <33.877621, 36.143410, 26.440884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594517, 36.338074, 26.645720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453369, 0.243017, -0.857554,
		-0.541784, -0.839109, 0.048638,
		-0.707762, 0.486660, 0.512089,
		33.382187, 36.484070, 26.799347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248158, 35.989311, 26.169727>,  <33.877621, 36.143410, 26.440884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248158, 35.989311, 26.169727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153648, 36.321182, 26.372040>,  <33.096943, 36.520306, 26.493427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153648, 36.321182, 26.372040>,  <33.248158, 35.989311, 26.169727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153648, 36.321182, 26.372040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469255, 0.358372, -0.807075,
		-0.850868, -0.428028, 0.304657,
		-0.236270, 0.829676, 0.505782,
		33.082767, 36.570084, 26.523775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530075, 36.110039, 25.912552>,  <33.248158, 35.989311, 26.169727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530075, 36.110039, 25.912552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.687801, 36.435524, 26.083376>,  <32.782436, 36.630817, 26.185869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.687801, 36.435524, 26.083376>,  <32.530075, 36.110039, 25.912552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687801, 36.435524, 26.083376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461832, 0.577234, -0.673433,
		-0.794496, 0.068318, 0.603414,
		0.394318, 0.813716, 0.427059,
		32.806095, 36.679638, 26.211494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991812, 36.635662, 25.966864>,  <32.530075, 36.110039, 25.912552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991812, 36.635662, 25.966864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317505, 36.867477, 25.980511>,  <32.512920, 37.006565, 25.988699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317505, 36.867477, 25.980511>,  <31.991812, 36.635662, 25.966864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317505, 36.867477, 25.980511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454945, 0.673485, -0.582618,
		-0.360627, 0.458864, 0.812030,
		0.814232, 0.579537, 0.034119,
		32.561775, 37.041340, 25.990746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728449, 37.250057, 25.892435>,  <31.991812, 36.635662, 25.966864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728449, 37.250057, 25.892435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115570, 37.322258, 25.822268>,  <32.347843, 37.365578, 25.780167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115570, 37.322258, 25.822268>,  <31.728449, 37.250057, 25.892435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115570, 37.322258, 25.822268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251411, 0.659889, -0.708053,
		-0.012047, 0.729360, 0.684024,
		0.967805, 0.180501, -0.175420,
		32.405910, 37.376408, 25.769642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758379, 37.903656, 25.827307>,  <31.728449, 37.250057, 25.892435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758379, 37.903656, 25.827307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093975, 37.789085, 25.642242>,  <32.295334, 37.720345, 25.531204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093975, 37.789085, 25.642242>,  <31.758379, 37.903656, 25.827307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093975, 37.789085, 25.642242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246779, 0.557501, -0.792649,
		0.484968, 0.779201, 0.397055,
		0.838991, -0.286424, -0.462661,
		32.345673, 37.703159, 25.503445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708643, 38.559128, 26.261835>,  <31.758379, 37.903656, 25.827307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708643, 38.559128, 26.261835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.342625, 38.655933, 26.390907>,  <31.123014, 38.714016, 26.468351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.342625, 38.655933, 26.390907>,  <31.708643, 38.559128, 26.261835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342625, 38.655933, 26.390907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239241, -0.318438, 0.917257,
		0.324743, 0.916530, 0.233486,
		-0.915044, 0.242013, 0.322682,
		31.068111, 38.728539, 26.487711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766777, 39.131897, 26.810816>,  <31.708643, 38.559128, 26.261835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766777, 39.131897, 26.810816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433969, 38.914330, 26.854443>,  <31.234285, 38.783791, 26.880619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433969, 38.914330, 26.854443>,  <31.766777, 39.131897, 26.810816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433969, 38.914330, 26.854443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271453, -0.227726, 0.935123,
		-0.483793, 0.807647, 0.337121,
		-0.832020, -0.543918, 0.109066,
		31.184364, 38.751156, 26.887163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573956, 39.263023, 27.463362>,  <31.766777, 39.131897, 26.810816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573956, 39.263023, 27.463362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312216, 38.968578, 27.394112>,  <31.155172, 38.791912, 27.352562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312216, 38.968578, 27.394112>,  <31.573956, 39.263023, 27.463362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312216, 38.968578, 27.394112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278002, 0.021260, 0.960345,
		-0.703238, 0.676529, -0.218552,
		-0.654348, -0.736109, -0.173125,
		31.115911, 38.747746, 27.342175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953852, 39.376415, 27.860746>,  <31.573956, 39.263023, 27.463362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953852, 39.376415, 27.860746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.919600, 38.989079, 27.766960>,  <30.899048, 38.756676, 27.710690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.919600, 38.989079, 27.766960>,  <30.953852, 39.376415, 27.860746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919600, 38.989079, 27.766960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120797, -0.223502, 0.967189,
		-0.988977, 0.111144, -0.097835,
		-0.085631, -0.968346, -0.234464,
		30.893909, 38.698574, 27.696621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450630, 39.125797, 28.336491>,  <30.953852, 39.376415, 27.860746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450630, 39.125797, 28.336491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.649405, 38.802990, 28.208883>,  <30.768669, 38.609306, 28.132318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.649405, 38.802990, 28.208883>,  <30.450630, 39.125797, 28.336491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649405, 38.802990, 28.208883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216077, -0.471114, 0.855198,
		-0.840457, -0.356044, -0.408491,
		0.496933, -0.807022, -0.319018,
		30.798485, 38.560883, 28.113178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031656, 38.526386, 28.500113>,  <30.450630, 39.125797, 28.336491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031656, 38.526386, 28.500113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.409447, 38.400528, 28.462250>,  <30.636122, 38.325012, 28.439531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.409447, 38.400528, 28.462250>,  <30.031656, 38.526386, 28.500113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409447, 38.400528, 28.462250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085484, -0.513469, 0.853840,
		-0.317261, -0.798341, -0.511857,
		0.944477, -0.314646, -0.094658,
		30.692789, 38.306133, 28.433853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015898, 37.872646, 28.474148>,  <30.031656, 38.526386, 28.500113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015898, 37.872646, 28.474148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.389149, 37.924103, 28.608446>,  <30.613100, 37.954975, 28.689026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.389149, 37.924103, 28.608446>,  <30.015898, 37.872646, 28.474148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389149, 37.924103, 28.608446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199119, -0.592634, 0.780472,
		0.299374, -0.795133, -0.527389,
		0.933127, 0.128640, 0.335746,
		30.669086, 37.962696, 28.709169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.510921, 42.990452, 26.495485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.835032, 42.841660, 26.314341>,  <32.029499, 42.752384, 26.205654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.835032, 42.841660, 26.314341>,  <31.510921, 42.990452, 26.495485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835032, 42.841660, 26.314341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290244, -0.416604, 0.861510,
		-0.509127, -0.829502, -0.229600,
		0.810276, -0.371978, -0.452862,
		32.078114, 42.730068, 26.178482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584270, 42.343418, 26.773111>,  <31.510921, 42.990452, 26.495485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584270, 42.343418, 26.773111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.937452, 42.434887, 26.609114>,  <32.149361, 42.489769, 26.510715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.937452, 42.434887, 26.609114>,  <31.584270, 42.343418, 26.773111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937452, 42.434887, 26.609114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467771, -0.502436, 0.727151,
		-0.039717, -0.833827, -0.550596,
		0.882957, 0.228673, -0.409995,
		32.202339, 42.503490, 26.486115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941668, 41.757671, 26.972218>,  <31.584270, 42.343418, 26.773111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941668, 41.757671, 26.972218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.239403, 42.006706, 26.875599>,  <32.418045, 42.156128, 26.817627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.239403, 42.006706, 26.875599>,  <31.941668, 41.757671, 26.972218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239403, 42.006706, 26.875599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501734, -0.282671, 0.817533,
		0.440708, -0.729713, -0.522777,
		0.744338, 0.622589, -0.241547,
		32.462704, 42.193481, 26.803135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564102, 41.364212, 27.062014>,  <31.941668, 41.757671, 26.972218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564102, 41.364212, 27.062014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.619770, 41.758755, 27.097176>,  <32.653172, 41.995480, 27.118273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.619770, 41.758755, 27.097176>,  <32.564102, 41.364212, 27.062014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619770, 41.758755, 27.097176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312887, -0.128023, 0.941123,
		0.939538, -0.103473, -0.326436,
		0.139172, 0.986359, 0.087907,
		32.661522, 42.054661, 27.123549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339611, 41.477596, 27.234915>,  <32.564102, 41.364212, 27.062014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339611, 41.477596, 27.234915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.136559, 41.803665, 27.346483>,  <33.014729, 41.999306, 27.413424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.136559, 41.803665, 27.346483>,  <33.339611, 41.477596, 27.234915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136559, 41.803665, 27.346483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304061, -0.133401, 0.943266,
		0.806137, 0.563641, -0.180145,
		-0.507632, 0.815177, 0.278921,
		32.984268, 42.048218, 27.430159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705891, 41.983841, 27.562523>,  <33.339611, 41.477596, 27.234915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705891, 41.983841, 27.562523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.348984, 42.100601, 27.700308>,  <33.134838, 42.170658, 27.782978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.348984, 42.100601, 27.700308>,  <33.705891, 41.983841, 27.562523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348984, 42.100601, 27.700308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364385, 0.015046, 0.931127,
		0.266616, 0.956329, -0.119790,
		-0.892266, 0.291903, 0.344461,
		33.081303, 42.188171, 27.803646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770721, 42.595825, 28.094755>,  <33.705891, 41.983841, 27.562523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770721, 42.595825, 28.094755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.419933, 42.423416, 28.179731>,  <33.209461, 42.319969, 28.230717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.419933, 42.423416, 28.179731>,  <33.770721, 42.595825, 28.094755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419933, 42.423416, 28.179731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261600, -0.057391, 0.963468,
		-0.403088, 0.900512, 0.163088,
		-0.876975, -0.431027, 0.212440,
		33.156841, 42.294109, 28.243464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573586, 42.963081, 28.629772>,  <33.770721, 42.595825, 28.094755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573586, 42.963081, 28.629772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.355736, 42.627651, 28.635183>,  <33.225025, 42.426395, 28.638430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.355736, 42.627651, 28.635183>,  <33.573586, 42.963081, 28.629772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355736, 42.627651, 28.635183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208029, -0.119445, 0.970802,
		-0.812473, 0.531533, 0.239500,
		-0.544621, -0.838573, 0.013529,
		33.192348, 42.376080, 28.639242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343323, 42.963837, 29.211290>,  <33.573586, 42.963081, 28.629772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343323, 42.963837, 29.211290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.190754, 42.598637, 29.153391>,  <33.099213, 42.379517, 29.118650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.190754, 42.598637, 29.153391>,  <33.343323, 42.963837, 29.211290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190754, 42.598637, 29.153391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070421, -0.184829, 0.980244,
		-0.921717, 0.363689, 0.134792,
		-0.381417, -0.913000, -0.144749,
		33.076328, 42.324738, 29.109966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849182, 42.862743, 29.703621>,  <33.343323, 42.963837, 29.211290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849182, 42.862743, 29.703621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.951210, 42.492306, 29.592421>,  <33.012424, 42.270042, 29.525700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.951210, 42.492306, 29.592421>,  <32.849182, 42.862743, 29.703621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951210, 42.492306, 29.592421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106129, -0.312588, 0.943941,
		-0.961082, -0.211264, -0.178017,
		0.255067, -0.926097, -0.278001,
		33.027729, 42.214478, 29.509020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264309, 42.407970, 29.825800>,  <32.849182, 42.862743, 29.703621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264309, 42.407970, 29.825800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.618332, 42.222015, 29.835146>,  <32.830746, 42.110443, 29.840754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.618332, 42.222015, 29.835146>,  <32.264309, 42.407970, 29.825800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618332, 42.222015, 29.835146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124373, -0.187814, 0.974298,
		-0.448553, -0.865219, -0.224046,
		0.885060, -0.464890, 0.023366,
		32.883850, 42.082550, 29.842155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275303, 41.737137, 30.163990>,  <32.264309, 42.407970, 29.825800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275303, 41.737137, 30.163990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.667713, 41.814472, 30.169708>,  <32.903160, 41.860874, 30.173140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.667713, 41.814472, 30.169708>,  <32.275303, 41.737137, 30.163990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667713, 41.814472, 30.169708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021058, -0.179564, 0.983521,
		0.192716, -0.964561, -0.180229,
		0.981029, 0.193335, 0.014294,
		32.962021, 41.872471, 30.173996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817627, 41.041592, 30.118774>,  <32.275303, 41.737137, 30.163990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817627, 41.041592, 30.118774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.450298, 41.015163, 30.274885>,  <31.229900, 40.999306, 30.368551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.450298, 41.015163, 30.274885>,  <31.817627, 41.041592, 30.118774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450298, 41.015163, 30.274885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385674, 0.371270, -0.844639,
		-0.089090, -0.926171, -0.366428,
		-0.918324, -0.066073, 0.390276,
		31.174801, 40.995342, 30.391968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470022, 40.729164, 29.608688>,  <31.817627, 41.041592, 30.118774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470022, 40.729164, 29.608688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189774, 40.899174, 29.837944>,  <31.021624, 41.001179, 29.975496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189774, 40.899174, 29.837944>,  <31.470022, 40.729164, 29.608688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189774, 40.899174, 29.837944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438653, 0.376965, -0.815770,
		-0.562772, -0.822954, -0.077673,
		-0.700622, 0.425022, 0.573137,
		30.979588, 41.026680, 30.009886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946798, 40.705467, 29.201195>,  <31.470022, 40.729164, 29.608688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946798, 40.705467, 29.201195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.830786, 40.978283, 29.469732>,  <30.761179, 41.141972, 29.630854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.830786, 40.978283, 29.469732>,  <30.946798, 40.705467, 29.201195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830786, 40.978283, 29.469732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403905, 0.548721, -0.731960,
		-0.867607, -0.483450, 0.116335,
		-0.290031, 0.682042, 0.671342,
		30.743776, 41.182896, 29.671135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172522, 40.730503, 29.188574>,  <30.946798, 40.705467, 29.201195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172522, 40.730503, 29.188574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.298428, 41.080124, 29.336601>,  <30.373972, 41.289898, 29.425417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.298428, 41.080124, 29.336601>,  <30.172522, 40.730503, 29.188574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298428, 41.080124, 29.336601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517266, 0.484866, -0.705224,
		-0.795838, 0.030557, 0.604738,
		0.314767, 0.874055, 0.370069,
		30.392857, 41.342339, 29.447622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544607, 41.235062, 29.152617>,  <30.172522, 40.730503, 29.188574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544607, 41.235062, 29.152617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.845768, 41.497452, 29.173931>,  <30.026464, 41.654884, 29.186720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.845768, 41.497452, 29.173931>,  <29.544607, 41.235062, 29.152617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845768, 41.497452, 29.173931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456401, 0.578745, -0.675834,
		-0.474168, 0.484517, 0.735125,
		0.752903, 0.655971, 0.053289,
		30.071638, 41.694244, 29.189919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244095, 41.911110, 29.074060>,  <29.544607, 41.235062, 29.152617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244095, 41.911110, 29.074060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633410, 41.968777, 29.002584>,  <29.866999, 42.003376, 28.959700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633410, 41.968777, 29.002584>,  <29.244095, 41.911110, 29.074060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633410, 41.968777, 29.002584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228818, 0.673002, -0.703357,
		0.018859, 0.725455, 0.688011,
		0.973286, 0.144165, -0.178689,
		29.925396, 42.012028, 28.948978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388561, 42.659218, 28.944622>,  <29.244095, 41.911110, 29.074060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388561, 42.659218, 28.944622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712505, 42.489044, 28.783062>,  <29.906872, 42.386940, 28.686125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712505, 42.489044, 28.783062>,  <29.388561, 42.659218, 28.944622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712505, 42.489044, 28.783062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192172, 0.458125, -0.867866,
		0.554254, 0.780468, 0.289262,
		0.809860, -0.425430, -0.403902,
		29.955463, 42.361416, 28.661892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791159, 43.180641, 28.720421>,  <29.388561, 42.659218, 28.944622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791159, 43.180641, 28.720421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.915482, 42.862736, 28.511904>,  <29.990076, 42.671993, 28.386793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.915482, 42.862736, 28.511904>,  <29.791159, 43.180641, 28.720421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915482, 42.862736, 28.511904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108136, 0.515327, -0.850144,
		0.944301, 0.320603, 0.074225,
		0.310809, -0.794765, -0.521292,
		30.008724, 42.624306, 28.355516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311768, 43.420410, 28.235693>,  <29.791159, 43.180641, 28.720421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311768, 43.420410, 28.235693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.181610, 43.076439, 28.078392>,  <30.103516, 42.870056, 27.984011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.181610, 43.076439, 28.078392>,  <30.311768, 43.420410, 28.235693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181610, 43.076439, 28.078392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061634, 0.434291, -0.898662,
		0.943569, -0.268179, -0.194316,
		-0.325392, -0.859925, -0.393254,
		30.083992, 42.818462, 27.960415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631563, 43.455196, 27.572077>,  <30.311768, 43.420410, 28.235693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631563, 43.455196, 27.572077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389929, 43.142395, 27.510689>,  <30.244949, 42.954716, 27.473856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389929, 43.142395, 27.510689>,  <30.631563, 43.455196, 27.572077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389929, 43.142395, 27.510689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019263, 0.178194, -0.983807,
		0.796688, -0.597258, -0.092581,
		-0.604084, -0.782004, -0.153470,
		30.208704, 42.907795, 27.464647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899456, 43.036526, 26.923567>,  <30.631563, 43.455196, 27.572077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899456, 43.036526, 26.923567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515627, 42.939007, 26.979824>,  <30.285330, 42.880497, 27.013578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515627, 42.939007, 26.979824>,  <30.899456, 43.036526, 26.923567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515627, 42.939007, 26.979824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173539, 0.119081, -0.977601,
		0.221590, -0.962488, -0.156575,
		-0.959574, -0.243798, 0.140642,
		30.227755, 42.865868, 27.022017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747450, 42.530682, 26.439903>,  <30.899456, 43.036526, 26.923567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747450, 42.530682, 26.439903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.394171, 42.691021, 26.537291>,  <30.182203, 42.787224, 26.595722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.394171, 42.691021, 26.537291>,  <30.747450, 42.530682, 26.439903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394171, 42.691021, 26.537291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236071, 0.068597, -0.969312,
		-0.405252, -0.913571, 0.034045,
		-0.883200, 0.400852, 0.243466,
		30.129211, 42.811275, 26.610331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290653, 42.123146, 26.142694>,  <30.747450, 42.530682, 26.439903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290653, 42.123146, 26.142694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.122204, 42.483280, 26.186604>,  <30.021133, 42.699360, 26.212950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.122204, 42.483280, 26.186604>,  <30.290653, 42.123146, 26.142694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122204, 42.483280, 26.186604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337519, -0.043222, -0.940326,
		-0.841864, -0.433045, 0.322082,
		-0.421124, 0.900336, 0.109774,
		29.995867, 42.753380, 26.219536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710972, 41.713345, 25.530003>,  <30.290653, 42.123146, 26.142694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710972, 41.713345, 25.530003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487770, 41.613098, 25.213566>,  <30.353849, 41.552952, 25.023705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487770, 41.613098, 25.213566>,  <30.710972, 41.713345, 25.530003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487770, 41.613098, 25.213566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082589, -0.965346, 0.247561,
		-0.825717, 0.072805, 0.559366,
		-0.558005, -0.250613, -0.791090,
		30.320368, 41.537914, 24.976238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197145, 41.309032, 25.819023>,  <30.710972, 41.713345, 25.530003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197145, 41.309032, 25.819023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210577, 41.221275, 25.429001>,  <30.218636, 41.168621, 25.194986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210577, 41.221275, 25.429001>,  <30.197145, 41.309032, 25.819023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210577, 41.221275, 25.429001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024992, -0.975487, 0.218632,
		-0.999124, 0.017027, -0.038239,
		0.033579, -0.219396, -0.975058,
		30.220652, 41.155457, 25.136484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609713, 40.798771, 25.726145>,  <30.197145, 41.309032, 25.819023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609713, 40.798771, 25.726145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907202, 40.765285, 25.460855>,  <30.085695, 40.745193, 25.301682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907202, 40.765285, 25.460855>,  <29.609713, 40.798771, 25.726145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907202, 40.765285, 25.460855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121830, -0.958538, 0.257608,
		-0.657293, -0.272390, -0.702688,
		0.743723, -0.083715, -0.663225,
		30.130320, 40.740170, 25.261889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462704, 40.232292, 25.341257>,  <29.609713, 40.798771, 25.726145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462704, 40.232292, 25.341257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.845472, 40.296242, 25.244312>,  <30.075134, 40.334610, 25.186146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.845472, 40.296242, 25.244312>,  <29.462704, 40.232292, 25.341257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845472, 40.296242, 25.244312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230267, -0.926345, 0.298099,
		-0.176854, -0.341066, -0.923253,
		0.956922, 0.159875, -0.242364,
		30.132549, 40.344204, 25.171602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694998, 39.558041, 25.025631>,  <29.462704, 40.232292, 25.341257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694998, 39.558041, 25.025631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013004, 39.748779, 25.175600>,  <30.203808, 39.863220, 25.265581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013004, 39.748779, 25.175600>,  <29.694998, 39.558041, 25.025631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013004, 39.748779, 25.175600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339497, -0.861998, 0.376433,
		0.502684, -0.171984, -0.847189,
		0.795016, 0.476845, 0.374925,
		30.251509, 39.891834, 25.288078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057108, 38.960754, 25.133657>,  <29.694998, 39.558041, 25.025631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057108, 38.960754, 25.133657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262356, 39.231087, 25.345301>,  <30.385504, 39.393288, 25.472286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262356, 39.231087, 25.345301>,  <30.057108, 38.960754, 25.133657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262356, 39.231087, 25.345301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330672, -0.724520, 0.604753,
		0.792063, -0.135349, -0.595245,
		0.513120, 0.675834, 0.529110,
		30.416292, 39.433838, 25.504034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674925, 38.659218, 25.388414>,  <30.057108, 38.960754, 25.133657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674925, 38.659218, 25.388414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.679974, 38.976269, 25.632248>,  <30.683002, 39.166500, 25.778547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.679974, 38.976269, 25.632248>,  <30.674925, 38.659218, 25.388414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679974, 38.976269, 25.632248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284303, -0.587315, 0.757782,
		0.958652, 0.163740, -0.232758,
		0.012623, 0.792623, 0.609582,
		30.683760, 39.214054, 25.815123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294039, 38.550812, 25.680012>,  <30.674925, 38.659218, 25.388414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294039, 38.550812, 25.680012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067535, 38.776379, 25.920460>,  <30.931633, 38.911720, 26.064728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067535, 38.776379, 25.920460>,  <31.294039, 38.550812, 25.680012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067535, 38.776379, 25.920460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325296, -0.517207, 0.791631,
		0.757319, 0.643811, 0.109433,
		-0.566260, 0.563919, 0.601120,
		30.897657, 38.945553, 26.100796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005783, 38.490955, 25.494558>,  <31.294039, 38.550812, 25.680012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005783, 38.490955, 25.494558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.197502, 38.212505, 25.280762>,  <32.312534, 38.045433, 25.152485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.197502, 38.212505, 25.280762>,  <32.005783, 38.490955, 25.494558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197502, 38.212505, 25.280762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282895, 0.453957, -0.844922,
		0.830809, 0.556175, 0.020651,
		0.479299, -0.696127, -0.534490,
		32.341293, 38.003666, 25.120415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351025, 38.886509, 24.911308>,  <32.005783, 38.490955, 25.494558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351025, 38.886509, 24.911308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.294933, 38.507915, 24.795033>,  <32.261276, 38.280758, 24.725267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.294933, 38.507915, 24.795033>,  <32.351025, 38.886509, 24.911308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294933, 38.507915, 24.795033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386558, 0.322629, -0.863993,
		0.911541, -0.008791, -0.411115,
		-0.140233, -0.946485, -0.290691,
		32.252865, 38.223969, 24.707825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657734, 38.867779, 24.286797>,  <32.351025, 38.886509, 24.911308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657734, 38.867779, 24.286797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.417454, 38.548412, 24.303267>,  <32.273285, 38.356792, 24.313148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.417454, 38.548412, 24.303267>,  <32.657734, 38.867779, 24.286797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417454, 38.548412, 24.303267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307335, 0.183070, -0.933826,
		0.738040, -0.573606, -0.355350,
		-0.600702, -0.798412, 0.041176,
		32.237244, 38.308887, 24.315619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790871, 38.527302, 23.669676>,  <32.657734, 38.867779, 24.286797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790871, 38.527302, 23.669676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.428665, 38.399265, 23.781096>,  <32.211342, 38.322445, 23.847948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.428665, 38.399265, 23.781096>,  <32.790871, 38.527302, 23.669676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428665, 38.399265, 23.781096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372555, 0.285540, -0.882989,
		0.203093, -0.903335, -0.377809,
		-0.905514, -0.320083, 0.278551,
		32.157013, 38.303238, 23.864660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526318, 38.221107, 23.060286>,  <32.790871, 38.527302, 23.669676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526318, 38.221107, 23.060286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.224033, 38.309555, 23.306864>,  <32.042664, 38.362621, 23.454811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.224033, 38.309555, 23.306864>,  <32.526318, 38.221107, 23.060286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224033, 38.309555, 23.306864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546561, 0.305610, -0.779662,
		-0.360788, -0.926126, -0.110100,
		-0.755714, 0.221116, 0.616445,
		31.997320, 38.375889, 23.491796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919094, 38.238224, 22.569567>,  <32.526318, 38.221107, 23.060286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919094, 38.238224, 22.569567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.755739, 38.412163, 22.890596>,  <31.657726, 38.516525, 23.083214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.755739, 38.412163, 22.890596>,  <31.919094, 38.238224, 22.569567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755739, 38.412163, 22.890596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591041, 0.544064, -0.595537,
		-0.695621, -0.717564, 0.034825,
		-0.408389, 0.434852, 0.802573,
		31.633223, 38.542618, 23.131369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274906, 38.428341, 22.305395>,  <31.919094, 38.238224, 22.569567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274906, 38.428341, 22.305395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.360901, 38.652912, 22.625040>,  <31.412498, 38.787655, 22.816826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.360901, 38.652912, 22.625040>,  <31.274906, 38.428341, 22.305395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360901, 38.652912, 22.625040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291817, 0.817791, -0.496045,
		-0.932000, -0.126550, 0.339649,
		0.214987, 0.561429, 0.799111,
		31.425398, 38.821342, 22.864773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639894, 38.865959, 22.499924>,  <31.274906, 38.428341, 22.305395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639894, 38.865959, 22.499924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.981230, 39.041756, 22.612114>,  <31.186031, 39.147232, 22.679428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.981230, 39.041756, 22.612114>,  <30.639894, 38.865959, 22.499924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981230, 39.041756, 22.612114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311406, 0.861118, -0.401873,
		-0.418142, 0.255591, 0.871683,
		0.853337, 0.439487, 0.280477,
		31.237230, 39.173603, 22.696257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391998, 39.435509, 22.769907>,  <30.639894, 38.865959, 22.499924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391998, 39.435509, 22.769907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.774004, 39.491825, 22.665504>,  <31.003208, 39.525616, 22.602863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.774004, 39.491825, 22.665504>,  <30.391998, 39.435509, 22.769907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774004, 39.491825, 22.665504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241285, 0.880594, -0.407842,
		0.172418, 0.452472, 0.874952,
		0.955015, 0.140794, -0.261005,
		31.060509, 39.534061, 22.587202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.667751, 32.696869, 37.232735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954430, 32.789677, 36.969673>,  <36.126438, 32.845364, 36.811836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954430, 32.789677, 36.969673>,  <35.667751, 32.696869, 37.232735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954430, 32.789677, 36.969673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614947, 0.655033, -0.439058,
		0.328913, 0.719095, 0.612143,
		0.716698, 0.232024, -0.657654,
		36.169437, 32.859283, 36.772377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512886, 33.427761, 37.004272>,  <35.667751, 32.696869, 37.232735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512886, 33.427761, 37.004272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757339, 33.286098, 36.721123>,  <35.904011, 33.201103, 36.551231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757339, 33.286098, 36.721123>,  <35.512886, 33.427761, 37.004272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757339, 33.286098, 36.721123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512043, 0.505088, -0.694765,
		0.603592, 0.787059, 0.127336,
		0.611137, -0.354153, -0.707875,
		35.940681, 33.179852, 36.508759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626930, 34.033104, 36.606239>,  <35.512886, 33.427761, 37.004272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626930, 34.033104, 36.606239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711525, 33.716072, 36.377472>,  <35.762280, 33.525852, 36.240211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711525, 33.716072, 36.377472>,  <35.626930, 34.033104, 36.606239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711525, 33.716072, 36.377472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636718, 0.332229, -0.695855,
		0.741528, 0.511315, -0.434388,
		0.211485, -0.792578, -0.571921,
		35.774971, 33.478298, 36.205894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574276, 34.191601, 35.925312>,  <35.626930, 34.033104, 36.606239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574276, 34.191601, 35.925312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566711, 33.800179, 35.843262>,  <35.562172, 33.565327, 35.794029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566711, 33.800179, 35.843262>,  <35.574276, 34.191601, 35.925312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566711, 33.800179, 35.843262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525983, 0.184215, -0.830306,
		0.850285, 0.092195, -0.518185,
		-0.018907, -0.978552, -0.205128,
		35.561039, 33.506615, 35.781723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806435, 34.123867, 35.313641>,  <35.574276, 34.191601, 35.925312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806435, 34.123867, 35.313641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569653, 33.801552, 35.320583>,  <35.427586, 33.608162, 35.324749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569653, 33.801552, 35.320583>,  <35.806435, 34.123867, 35.313641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569653, 33.801552, 35.320583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405456, 0.279105, -0.870463,
		0.696563, -0.522310, -0.491928,
		-0.591951, -0.805787, 0.017360,
		35.392067, 33.559814, 35.325790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796406, 33.722065, 34.639305>,  <35.806435, 34.123867, 35.313641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796406, 33.722065, 34.639305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449055, 33.606804, 34.800739>,  <35.240643, 33.537647, 34.897602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449055, 33.606804, 34.800739>,  <35.796406, 33.722065, 34.639305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449055, 33.606804, 34.800739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445696, 0.096693, -0.889947,
		0.217416, -0.952690, -0.212395,
		-0.868381, -0.288152, 0.403588,
		35.188541, 33.520359, 34.921814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548447, 33.249271, 34.201580>,  <35.796406, 33.722065, 34.639305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548447, 33.249271, 34.201580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215790, 33.323360, 34.410988>,  <35.016197, 33.367813, 34.536633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215790, 33.323360, 34.410988>,  <35.548447, 33.249271, 34.201580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215790, 33.323360, 34.410988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510821, 0.114606, -0.852014,
		-0.217811, -0.975991, -0.000695,
		-0.831637, 0.185223, 0.523519,
		34.966297, 33.378925, 34.568043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063869, 32.876011, 33.904980>,  <35.548447, 33.249271, 34.201580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063869, 32.876011, 33.904980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859428, 33.159279, 34.099823>,  <34.736763, 33.329239, 34.216728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859428, 33.159279, 34.099823>,  <35.063869, 32.876011, 33.904980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859428, 33.159279, 34.099823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496420, 0.219435, -0.839890,
		-0.701672, -0.671078, 0.239396,
		-0.511100, 0.708169, 0.487108,
		34.706097, 33.371731, 34.245956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343086, 32.704140, 33.716763>,  <35.063869, 32.876011, 33.904980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343086, 32.704140, 33.716763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333714, 33.077454, 33.860111>,  <34.328091, 33.301441, 33.946121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333714, 33.077454, 33.860111>,  <34.343086, 32.704140, 33.716763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333714, 33.077454, 33.860111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605370, 0.272031, -0.748015,
		-0.795599, -0.234480, 0.558606,
		-0.023436, 0.933284, 0.358375,
		34.326683, 33.357437, 33.967625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662716, 33.023403, 33.335384>,  <34.343086, 32.704140, 33.716763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662716, 33.023403, 33.335384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877804, 33.337307, 33.458675>,  <34.006859, 33.525650, 33.532650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877804, 33.337307, 33.458675>,  <33.662716, 33.023403, 33.335384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877804, 33.337307, 33.458675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178843, 0.463424, -0.867902,
		-0.823935, 0.411567, 0.389542,
		0.537723, 0.784762, 0.308226,
		34.039120, 33.572735, 33.551144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198807, 33.676472, 33.281528>,  <33.662716, 33.023403, 33.335384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198807, 33.676472, 33.281528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586147, 33.771492, 33.250881>,  <33.818550, 33.828503, 33.232491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586147, 33.771492, 33.250881>,  <33.198807, 33.676472, 33.281528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586147, 33.771492, 33.250881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169013, 0.398159, -0.901612,
		-0.183669, 0.886025, 0.425705,
		0.968349, 0.237548, -0.076620,
		33.876652, 33.842758, 33.227894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187828, 34.416920, 33.188606>,  <33.198807, 33.676472, 33.281528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187828, 34.416920, 33.188606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.542084, 34.283958, 33.058899>,  <33.754639, 34.204182, 32.981075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.542084, 34.283958, 33.058899>,  <33.187828, 34.416920, 33.188606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542084, 34.283958, 33.058899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132445, 0.488482, -0.862464,
		0.445082, 0.806781, 0.388595,
		0.885641, -0.332400, -0.324269,
		33.807777, 34.184238, 32.961617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049881, 35.053093, 33.667419>,  <33.187828, 34.416920, 33.188606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049881, 35.053093, 33.667419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652744, 35.056732, 33.715046>,  <32.414463, 35.058918, 33.743622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652744, 35.056732, 33.715046>,  <33.049881, 35.053093, 33.667419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652744, 35.056732, 33.715046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103651, -0.429424, 0.897135,
		0.059294, 0.903057, 0.425408,
		-0.992845, 0.009101, 0.119065,
		32.354893, 35.059464, 33.750767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011665, 35.301979, 34.288940>,  <33.049881, 35.053093, 33.667419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011665, 35.301979, 34.288940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668419, 35.107975, 34.221531>,  <32.462471, 34.991573, 34.181087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668419, 35.107975, 34.221531>,  <33.011665, 35.301979, 34.288940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668419, 35.107975, 34.221531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039704, -0.389906, 0.919998,
		-0.511919, 0.782774, 0.353842,
		-0.858116, -0.485013, -0.168522,
		32.410984, 34.962471, 34.170975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468140, 35.439095, 34.857700>,  <33.011665, 35.301979, 34.288940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468140, 35.439095, 34.857700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353458, 35.087105, 34.706200>,  <32.284649, 34.875912, 34.615299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353458, 35.087105, 34.706200>,  <32.468140, 35.439095, 34.857700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353458, 35.087105, 34.706200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104308, -0.364324, 0.925413,
		-0.952325, 0.304822, 0.012663,
		-0.286699, -0.879973, -0.378750,
		32.267448, 34.823112, 34.592575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762520, 35.316574, 35.122234>,  <32.468140, 35.439095, 34.857700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762520, 35.316574, 35.122234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937923, 34.975994, 35.007179>,  <32.043167, 34.771645, 34.938145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937923, 34.975994, 35.007179>,  <31.762520, 35.316574, 35.122234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937923, 34.975994, 35.007179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188054, -0.399896, 0.897061,
		-0.878832, -0.339278, -0.335477,
		0.438510, -0.851454, -0.287638,
		32.069477, 34.720558, 34.920887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354822, 34.821102, 35.525566>,  <31.762520, 35.316574, 35.122234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354822, 34.821102, 35.525566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691706, 34.634624, 35.417233>,  <31.893835, 34.522739, 35.352234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691706, 34.634624, 35.417233>,  <31.354822, 34.821102, 35.525566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691706, 34.634624, 35.417233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116737, -0.332731, 0.935768,
		-0.526362, -0.819728, -0.225806,
		0.842209, -0.466192, -0.270830,
		31.944368, 34.494766, 35.335983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279009, 34.165737, 35.781902>,  <31.354822, 34.821102, 35.525566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279009, 34.165737, 35.781902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675610, 34.191315, 35.736588>,  <31.913570, 34.206661, 35.709400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675610, 34.191315, 35.736588>,  <31.279009, 34.165737, 35.781902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675610, 34.191315, 35.736588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130046, -0.465032, 0.875690,
		0.003311, -0.882982, -0.469396,
		0.991502, 0.063942, -0.113288,
		31.973061, 34.210499, 35.702602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485880, 33.604145, 36.098541>,  <31.279009, 34.165737, 35.781902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485880, 33.604145, 36.098541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817455, 33.824886, 36.062054>,  <32.016399, 33.957329, 36.040161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817455, 33.824886, 36.062054>,  <31.485880, 33.604145, 36.098541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817455, 33.824886, 36.062054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334444, -0.358287, 0.871652,
		0.448338, -0.753055, -0.481561,
		0.828939, 0.551850, -0.091222,
		32.066135, 33.990440, 36.034687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014389, 33.222584, 36.230469>,  <31.485880, 33.604145, 36.098541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014389, 33.222584, 36.230469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166088, 33.575123, 36.343178>,  <32.257107, 33.786648, 36.410805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166088, 33.575123, 36.343178>,  <32.014389, 33.222584, 36.230469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166088, 33.575123, 36.343178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290033, -0.402407, 0.868303,
		0.878665, -0.247579, -0.408232,
		0.379249, 0.881348, 0.281774,
		32.279861, 33.839527, 36.427711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696743, 32.953110, 36.590702>,  <32.014389, 33.222584, 36.230469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696743, 32.953110, 36.590702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604176, 33.334320, 36.668861>,  <32.548637, 33.563046, 36.715755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604176, 33.334320, 36.668861>,  <32.696743, 32.953110, 36.590702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604176, 33.334320, 36.668861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452969, -0.072197, 0.888598,
		0.860968, 0.294145, -0.414986,
		-0.231416, 0.953030, 0.195398,
		32.534752, 33.620228, 36.727482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332821, 33.270069, 36.848091>,  <32.696743, 32.953110, 36.590702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332821, 33.270069, 36.848091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033684, 33.496090, 36.987492>,  <32.854202, 33.631702, 37.071133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033684, 33.496090, 36.987492>,  <33.332821, 33.270069, 36.848091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033684, 33.496090, 36.987492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377660, -0.069637, 0.923322,
		0.545990, 0.822114, -0.161319,
		-0.747842, 0.565048, 0.348501,
		32.809330, 33.665604, 37.092041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618256, 33.857735, 37.337570>,  <33.332821, 33.270069, 36.848091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618256, 33.857735, 37.337570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236385, 33.794514, 37.438450>,  <33.007263, 33.756580, 37.498978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236385, 33.794514, 37.438450>,  <33.618256, 33.857735, 37.337570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236385, 33.794514, 37.438450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246126, 0.057233, 0.967547,
		-0.167354, 0.985771, -0.015739,
		-0.954680, -0.158049, 0.252202,
		32.949982, 33.747101, 37.514111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588215, 34.254234, 37.935677>,  <33.618256, 33.857735, 37.337570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588215, 34.254234, 37.935677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274307, 34.006435, 37.943207>,  <33.085964, 33.857754, 37.947727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274307, 34.006435, 37.943207>,  <33.588215, 34.254234, 37.935677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274307, 34.006435, 37.943207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085255, -0.077809, 0.993316,
		-0.613896, 0.781129, 0.113878,
		-0.784769, -0.619502, 0.018828,
		33.038876, 33.820583, 37.948856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124615, 34.430847, 38.519650>,  <33.588215, 34.254234, 37.935677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124615, 34.430847, 38.519650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012520, 34.063503, 38.407879>,  <32.945263, 33.843098, 38.340816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012520, 34.063503, 38.407879>,  <33.124615, 34.430847, 38.519650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012520, 34.063503, 38.407879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185970, -0.337514, 0.922767,
		-0.941745, 0.206627, 0.265372,
		-0.280236, -0.918362, -0.279426,
		32.928448, 33.787994, 38.324051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650143, 34.124847, 38.917942>,  <33.124615, 34.430847, 38.519650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650143, 34.124847, 38.917942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832142, 33.802898, 38.765541>,  <32.941341, 33.609730, 38.674103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832142, 33.802898, 38.765541>,  <32.650143, 34.124847, 38.917942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832142, 33.802898, 38.765541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279448, -0.277183, 0.919281,
		-0.845512, -0.524736, 0.098804,
		0.454993, -0.804874, -0.380998,
		32.968639, 33.561436, 38.651241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700974, 34.499809, 39.603012>,  <32.650143, 34.124847, 38.917942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700974, 34.499809, 39.603012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754047, 34.845280, 39.797520>,  <32.785892, 35.052563, 39.914223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754047, 34.845280, 39.797520>,  <32.700974, 34.499809, 39.603012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754047, 34.845280, 39.797520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350131, 0.499818, -0.792206,
		-0.927256, -0.065146, 0.368717,
		0.132682, 0.863677, 0.486269,
		32.793854, 35.104382, 39.943401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143665, 34.992863, 39.302559>,  <32.700974, 34.499809, 39.603012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143665, 34.992863, 39.302559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.381939, 35.264931, 39.473454>,  <32.524902, 35.428173, 39.575989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.381939, 35.264931, 39.473454>,  <32.143665, 34.992863, 39.302559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381939, 35.264931, 39.473454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262425, 0.667515, -0.696818,
		-0.759143, 0.302964, 0.576121,
		0.595680, 0.680173, 0.427234,
		32.560642, 35.468983, 39.601624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793835, 35.623753, 39.459606>,  <32.143665, 34.992863, 39.302559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793835, 35.623753, 39.459606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.180702, 35.686302, 39.379478>,  <32.412823, 35.723831, 39.331402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.180702, 35.686302, 39.379478>,  <31.793835, 35.623753, 39.459606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180702, 35.686302, 39.379478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251363, 0.704620, -0.663572,
		0.037385, 0.692140, 0.720794,
		0.967171, 0.156373, -0.200320,
		32.470852, 35.733215, 39.319382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858334, 36.306137, 39.549320>,  <31.793835, 35.623753, 39.459606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858334, 36.306137, 39.549320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132328, 36.154175, 39.300655>,  <32.296726, 36.062996, 39.151455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132328, 36.154175, 39.300655>,  <31.858334, 36.306137, 39.549320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132328, 36.154175, 39.300655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256317, 0.673067, -0.693745,
		0.681980, 0.634548, 0.363665,
		0.684985, -0.379907, -0.621664,
		32.337822, 36.040203, 39.114155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995699, 36.871815, 39.073963>,  <31.858334, 36.306137, 39.549320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995699, 36.871815, 39.073963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.160248, 36.555202, 38.893188>,  <32.258976, 36.365234, 38.784721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.160248, 36.555202, 38.893188>,  <31.995699, 36.871815, 39.073963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160248, 36.555202, 38.893188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283184, 0.360308, -0.888811,
		0.866359, 0.493616, -0.075928,
		0.411374, -0.791531, -0.451940,
		32.283661, 36.317741, 38.757607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458271, 37.210140, 38.650436>,  <31.995699, 36.871815, 39.073963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458271, 37.210140, 38.650436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399860, 36.858078, 38.469769>,  <32.364815, 36.646843, 38.361366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399860, 36.858078, 38.469769>,  <32.458271, 37.210140, 38.650436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399860, 36.858078, 38.469769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011975, 0.454962, -0.890431,
		0.989209, -0.135433, -0.055896,
		-0.146025, -0.880152, -0.451674,
		32.356052, 36.594032, 38.334267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844990, 37.249050, 38.127491>,  <32.458271, 37.210140, 38.650436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844990, 37.249050, 38.127491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.619205, 36.932621, 38.033184>,  <32.483734, 36.742764, 37.976601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.619205, 36.932621, 38.033184>,  <32.844990, 37.249050, 38.127491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619205, 36.932621, 38.033184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025912, 0.302461, -0.952810,
		0.825055, -0.531711, -0.191225,
		-0.564457, -0.791076, -0.235770,
		32.449867, 36.695297, 37.962452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194115, 36.862801, 37.622280>,  <32.844990, 37.249050, 38.127491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194115, 36.862801, 37.622280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.801212, 36.790764, 37.601368>,  <32.565472, 36.747543, 37.588821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.801212, 36.790764, 37.601368>,  <33.194115, 36.862801, 37.622280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801212, 36.790764, 37.601368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024019, 0.397312, -0.917369,
		0.185978, -0.899839, -0.394590,
		-0.982260, -0.180089, -0.052278,
		32.506535, 36.736736, 37.585686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152355, 36.621765, 36.931965>,  <33.194115, 36.862801, 37.622280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152355, 36.621765, 36.931965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793098, 36.757732, 37.043537>,  <32.577545, 36.839314, 37.110481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793098, 36.757732, 37.043537>,  <33.152355, 36.621765, 36.931965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793098, 36.757732, 37.043537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148078, 0.363480, -0.919758,
		-0.414028, -0.867374, -0.276121,
		-0.898139, 0.339918, 0.278930,
		32.523655, 36.859707, 37.127216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732121, 36.424316, 36.445026>,  <33.152355, 36.621765, 36.931965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732121, 36.424316, 36.445026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529343, 36.716763, 36.627663>,  <32.407677, 36.892231, 36.737244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529343, 36.716763, 36.627663>,  <32.732121, 36.424316, 36.445026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529343, 36.716763, 36.627663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246160, 0.384846, -0.889550,
		-0.826080, -0.563350, -0.015125,
		-0.506948, 0.731116, 0.456588,
		32.377258, 36.936096, 36.764641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992735, 36.554241, 36.012592>,  <32.732121, 36.424316, 36.445026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992735, 36.554241, 36.012592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.057583, 36.878849, 36.237144>,  <32.096493, 37.073616, 36.371876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.057583, 36.878849, 36.237144>,  <31.992735, 36.554241, 36.012592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057583, 36.878849, 36.237144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383820, 0.575967, -0.721765,
		-0.909065, -0.098457, 0.404854,
		0.162120, 0.811522, 0.561381,
		32.106220, 37.122307, 36.405560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375906, 36.953934, 35.882919>,  <31.992735, 36.554241, 36.012592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375906, 36.953934, 35.882919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654102, 37.202171, 36.027775>,  <31.821020, 37.351116, 36.114689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654102, 37.202171, 36.027775>,  <31.375906, 36.953934, 35.882919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654102, 37.202171, 36.027775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373790, 0.742929, -0.555282,
		-0.613653, 0.250829, 0.748675,
		0.695493, 0.620598, 0.362143,
		31.862751, 37.388351, 36.136417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001305, 37.525581, 36.048241>,  <31.375906, 36.953934, 35.882919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001305, 37.525581, 36.048241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383493, 37.634182, 36.002003>,  <31.612806, 37.699345, 35.974262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383493, 37.634182, 36.002003>,  <31.001305, 37.525581, 36.048241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383493, 37.634182, 36.002003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280979, 0.717399, -0.637487,
		-0.090155, 0.641579, 0.761740,
		0.955470, 0.271505, -0.115593,
		31.670134, 37.715633, 35.967323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885414, 38.133533, 35.874645>,  <31.001305, 37.525581, 36.048241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885414, 38.133533, 35.874645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.268709, 38.074345, 35.776760>,  <31.498686, 38.038830, 35.718029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.268709, 38.074345, 35.776760>,  <30.885414, 38.133533, 35.874645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268709, 38.074345, 35.776760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104053, 0.616662, -0.780321,
		0.266372, 0.773196, 0.575512,
		0.958237, -0.147972, -0.244715,
		31.556181, 38.029953, 35.703346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094227, 38.809399, 35.682579>,  <30.885414, 38.133533, 35.874645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094227, 38.809399, 35.682579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343729, 38.541798, 35.520908>,  <31.493431, 38.381237, 35.423904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343729, 38.541798, 35.520908>,  <31.094227, 38.809399, 35.682579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343729, 38.541798, 35.520908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038179, 0.490406, -0.870658,
		0.780686, 0.558509, 0.280352,
		0.623756, -0.669006, -0.404176,
		31.530855, 38.341095, 35.399654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670929, 39.183926, 35.344582>,  <31.094227, 38.809399, 35.682579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670929, 39.183926, 35.344582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676392, 38.826683, 35.164726>,  <31.679668, 38.612339, 35.056812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676392, 38.826683, 35.164726>,  <31.670929, 39.183926, 35.344582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676392, 38.826683, 35.164726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116264, 0.448045, -0.886419,
		0.993124, -0.040172, 0.109955,
		0.013655, -0.893108, -0.449635,
		31.680489, 38.558750, 35.029835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392185, 39.124352, 34.942062>,  <31.670929, 39.183926, 35.344582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392185, 39.124352, 34.942062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140118, 38.871872, 34.761185>,  <31.988878, 38.720383, 34.652657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140118, 38.871872, 34.761185>,  <32.392185, 39.124352, 34.942062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140118, 38.871872, 34.761185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200930, 0.429975, -0.880198,
		0.750013, -0.645529, -0.144128,
		-0.630165, -0.631201, -0.452193,
		31.951069, 38.682510, 34.625526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678322, 38.959377, 34.347443>,  <32.392185, 39.124352, 34.942062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678322, 38.959377, 34.347443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308064, 38.831173, 34.266994>,  <32.085907, 38.754250, 34.218723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308064, 38.831173, 34.266994>,  <32.678322, 38.959377, 34.347443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308064, 38.831173, 34.266994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005573, 0.519919, -0.854198,
		0.378348, -0.791806, -0.479475,
		-0.925647, -0.320512, -0.201123,
		32.030369, 38.735020, 34.206657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635643, 38.793682, 33.572800>,  <32.678322, 38.959377, 34.347443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635643, 38.793682, 33.572800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.251076, 38.831165, 33.676250>,  <32.020336, 38.853653, 33.738323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.251076, 38.831165, 33.676250>,  <32.635643, 38.793682, 33.572800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251076, 38.831165, 33.676250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175420, 0.515366, -0.838824,
		-0.211891, -0.851832, -0.479046,
		-0.961421, 0.093705, 0.258630,
		31.962650, 38.859276, 33.753838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194199, 38.503590, 33.029377>,  <32.635643, 38.793682, 33.572800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194199, 38.503590, 33.029377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.986835, 38.787926, 33.219521>,  <31.862419, 38.958527, 33.333607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.986835, 38.787926, 33.219521>,  <32.194199, 38.503590, 33.029377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986835, 38.787926, 33.219521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336552, 0.341428, -0.877587,
		-0.786124, -0.614927, 0.062237,
		-0.518403, 0.710838, 0.475360,
		31.831314, 39.001179, 33.362129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533468, 38.574650, 32.566059>,  <32.194199, 38.503590, 33.029377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533468, 38.574650, 32.566059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.560070, 38.894695, 32.804520>,  <31.576031, 39.086723, 32.947598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.560070, 38.894695, 32.804520>,  <31.533468, 38.574650, 32.566059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560070, 38.894695, 32.804520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176335, 0.597496, -0.782243,
		-0.982081, -0.053099, 0.180825,
		0.066506, 0.800112, 0.596153,
		31.580021, 39.134727, 32.983364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014551, 38.994617, 32.214725>,  <31.533468, 38.574650, 32.566059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014551, 38.994617, 32.214725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.212780, 39.252117, 32.447964>,  <31.331717, 39.406616, 32.587906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.212780, 39.252117, 32.447964>,  <31.014551, 38.994617, 32.214725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212780, 39.252117, 32.447964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208675, 0.739908, -0.639524,
		-0.843128, 0.195252, 0.501011,
		0.495571, 0.643749, 0.583093,
		31.361450, 39.445240, 32.622890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574636, 39.496418, 32.271305>,  <31.014551, 38.994617, 32.214725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574636, 39.496418, 32.271305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.925997, 39.661350, 32.367970>,  <31.136812, 39.760307, 32.425968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.925997, 39.661350, 32.367970>,  <30.574636, 39.496418, 32.271305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925997, 39.661350, 32.367970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151719, 0.720065, -0.677117,
		-0.453205, 0.558115, 0.695063,
		0.878400, 0.412327, 0.241660,
		31.189516, 39.785049, 32.440468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451220, 40.211575, 32.430019>,  <30.574636, 39.496418, 32.271305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451220, 40.211575, 32.430019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.836050, 40.178776, 32.325951>,  <31.066948, 40.159096, 32.263512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.836050, 40.178776, 32.325951>,  <30.451220, 40.211575, 32.430019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836050, 40.178776, 32.325951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156908, 0.613829, -0.773689,
		0.223138, 0.785169, 0.577684,
		0.962076, -0.081996, -0.260168,
		31.124672, 40.154179, 32.247902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645084, 40.794060, 32.281059>,  <30.451220, 40.211575, 32.430019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645084, 40.794060, 32.281059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.930292, 40.594116, 32.084389>,  <31.101416, 40.474148, 31.966387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.930292, 40.594116, 32.084389>,  <30.645084, 40.794060, 32.281059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930292, 40.594116, 32.084389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096502, 0.624606, -0.774955,
		0.694473, 0.600004, 0.397117,
		0.713018, -0.499863, -0.491674,
		31.144197, 40.444157, 31.936886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004467, 41.377068, 32.005211>,  <30.645084, 40.794060, 32.281059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004467, 41.377068, 32.005211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.107515, 41.037880, 31.819923>,  <31.169344, 40.834366, 31.708750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.107515, 41.037880, 31.819923>,  <31.004467, 41.377068, 32.005211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107515, 41.037880, 31.819923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033734, 0.471217, -0.881372,
		0.965657, 0.242685, 0.092789,
		0.257619, -0.847974, -0.463221,
		31.184801, 40.783489, 31.680958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472910, 41.495998, 31.506275>,  <31.004467, 41.377068, 32.005211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472910, 41.495998, 31.506275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.348984, 41.143261, 31.364080>,  <31.274628, 40.931618, 31.278765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.348984, 41.143261, 31.364080>,  <31.472910, 41.495998, 31.506275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348984, 41.143261, 31.364080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095845, 0.400943, -0.911075,
		0.945954, -0.248193, -0.208738,
		-0.309815, -0.881842, -0.355485,
		31.256039, 40.878708, 31.257435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876997, 41.328793, 30.924831>,  <31.472910, 41.495998, 31.506275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876997, 41.328793, 30.924831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537897, 41.118290, 30.898375>,  <31.334436, 40.991989, 30.882502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537897, 41.118290, 30.898375>,  <31.876997, 41.328793, 30.924831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537897, 41.118290, 30.898375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076457, 0.244648, -0.966593,
		0.524856, -0.814373, -0.247636,
		-0.847750, -0.526255, -0.066141,
		31.283571, 40.960415, 30.878532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574234, 41.205338, 30.727299>,  <31.876997, 41.328793, 30.924831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574234, 41.205338, 30.727299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901955, 41.426891, 30.668043>,  <33.098587, 41.559826, 30.632490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901955, 41.426891, 30.668043>,  <32.574234, 41.205338, 30.727299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901955, 41.426891, 30.668043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300165, -0.194221, 0.933906,
		0.488508, -0.809620, -0.325384,
		0.819305, 0.553890, -0.148141,
		33.147747, 41.593060, 30.623600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245377, 40.748447, 30.835920>,  <32.574234, 41.205338, 30.727299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245377, 40.748447, 30.835920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294861, 41.140743, 30.896381>,  <33.324551, 41.376122, 30.932659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294861, 41.140743, 30.896381>,  <33.245377, 40.748447, 30.835920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294861, 41.140743, 30.896381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495142, -0.193015, 0.847101,
		0.859959, -0.029951, -0.509483,
		0.123709, 0.980739, 0.151155,
		33.331974, 41.434963, 30.941729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916119, 40.850079, 30.771582>,  <33.245377, 40.748447, 30.835920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916119, 40.850079, 30.771582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816463, 41.173115, 30.985397>,  <33.756668, 41.366936, 31.113688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816463, 41.173115, 30.985397>,  <33.916119, 40.850079, 30.771582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816463, 41.173115, 30.985397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599906, -0.304610, 0.739814,
		0.760290, 0.504992, -0.408585,
		-0.249142, 0.807586, 0.534540,
		33.741722, 41.415390, 31.145760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536625, 41.089771, 31.113468>,  <33.916119, 40.850079, 30.771582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536625, 41.089771, 31.113468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239204, 41.245586, 31.330870>,  <34.060753, 41.339073, 31.461311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239204, 41.245586, 31.330870>,  <34.536625, 41.089771, 31.113468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239204, 41.245586, 31.330870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465153, -0.282606, 0.838908,
		0.480382, 0.876582, 0.028938,
		-0.743549, 0.389536, 0.543504,
		34.016140, 41.362446, 31.493921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795494, 41.348412, 31.751822>,  <34.536625, 41.089771, 31.113468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795494, 41.348412, 31.751822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.409031, 41.359344, 31.854424>,  <34.177155, 41.365902, 31.915985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.409031, 41.359344, 31.854424>,  <34.795494, 41.348412, 31.751822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409031, 41.359344, 31.854424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240824, -0.260784, 0.934877,
		0.092441, 0.965010, 0.245377,
		-0.966156, 0.027329, 0.256505,
		34.119183, 41.367542, 31.931376>
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
