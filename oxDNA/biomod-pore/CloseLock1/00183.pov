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
	<24.522799, 34.553051, 35.392502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.455763, 34.834747, 35.116543>,  <24.415543, 35.003765, 34.950966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.455763, 34.834747, 35.116543>,  <24.522799, 34.553051, 35.392502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.455763, 34.834747, 35.116543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625765, 0.616737, 0.477550,
		0.761796, -0.351683, -0.544046,
		-0.167587, 0.704240, -0.689899,
		24.405487, 35.046021, 34.909573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.253197, 34.538147, 35.559536>,  <24.522799, 34.553051, 35.392502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.253197, 34.538147, 35.559536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213732, 34.829266, 35.288071>,  <25.190052, 35.003937, 35.125191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213732, 34.829266, 35.288071>,  <25.253197, 34.538147, 35.559536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213732, 34.829266, 35.288071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417537, 0.588774, 0.692104,
		0.903288, 0.351650, 0.245792,
		-0.098662, 0.727796, -0.678660,
		25.184134, 35.047604, 35.084473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491400, 35.098755, 35.810291>,  <25.253197, 34.538147, 35.559536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491400, 35.098755, 35.810291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208797, 35.196175, 35.544498>,  <25.039236, 35.254627, 35.385021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208797, 35.196175, 35.544498>,  <25.491400, 35.098755, 35.810291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208797, 35.196175, 35.544498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437000, 0.588410, 0.680297,
		0.556671, 0.771012, -0.309285,
		-0.706504, 0.243545, -0.664483,
		24.996847, 35.269238, 35.345154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959730, 35.214184, 35.253006>,  <25.491400, 35.098755, 35.810291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959730, 35.214184, 35.253006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939219, 35.551296, 35.467327>,  <25.926910, 35.753563, 35.595921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939219, 35.551296, 35.467327>,  <25.959730, 35.214184, 35.253006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939219, 35.551296, 35.467327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090238, 0.538227, -0.837955,
		-0.994599, 0.005379, -0.103652,
		-0.051281, 0.842783, 0.535805,
		25.923834, 35.804131, 35.628067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594509, 35.785950, 34.899422>,  <25.959730, 35.214184, 35.253006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594509, 35.785950, 34.899422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840118, 35.987823, 35.142162>,  <25.987484, 36.108948, 35.287807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840118, 35.987823, 35.142162>,  <25.594509, 35.785950, 34.899422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840118, 35.987823, 35.142162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264955, 0.592452, -0.760788,
		-0.743490, 0.627930, 0.230060,
		0.614021, 0.504683, 0.606856,
		26.024324, 36.139229, 35.324219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624069, 36.591816, 34.858097>,  <25.594509, 35.785950, 34.899422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624069, 36.591816, 34.858097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972195, 36.395767, 34.877422>,  <26.181070, 36.278137, 34.889019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972195, 36.395767, 34.877422>,  <25.624069, 36.591816, 34.858097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972195, 36.395767, 34.877422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292897, 0.436231, -0.850832,
		0.395936, 0.754641, 0.523213,
		0.870314, -0.490123, 0.048312,
		26.233288, 36.248730, 34.891914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190657, 37.020878, 34.882812>,  <25.624069, 36.591816, 34.858097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190657, 37.020878, 34.882812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327106, 36.682781, 34.718281>,  <26.408978, 36.479923, 34.619560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327106, 36.682781, 34.718281>,  <26.190657, 37.020878, 34.882812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327106, 36.682781, 34.718281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241619, 0.501718, -0.830602,
		0.908435, 0.183955, 0.375376,
		0.341126, -0.845246, -0.411331,
		26.429443, 36.429207, 34.594883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842983, 37.215820, 34.540222>,  <26.190657, 37.020878, 34.882812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842983, 37.215820, 34.540222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698416, 36.873707, 34.391705>,  <26.611675, 36.668438, 34.302593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698416, 36.873707, 34.391705>,  <26.842983, 37.215820, 34.540222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698416, 36.873707, 34.391705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108445, 0.356948, -0.927808,
		0.926075, -0.375593, -0.036256,
		-0.361420, -0.855288, -0.371292,
		26.589991, 36.617119, 34.280315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252348, 37.056160, 34.095119>,  <26.842983, 37.215820, 34.540222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252348, 37.056160, 34.095119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938372, 36.838718, 33.976215>,  <26.749985, 36.708252, 33.904873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938372, 36.838718, 33.976215>,  <27.252348, 37.056160, 34.095119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938372, 36.838718, 33.976215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146922, 0.302779, -0.941668,
		0.601897, -0.782828, -0.157797,
		-0.784942, -0.543603, -0.297257,
		26.702888, 36.675636, 33.887039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432632, 36.658997, 33.417873>,  <27.252348, 37.056160, 34.095119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432632, 36.658997, 33.417873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033979, 36.681377, 33.441853>,  <26.794788, 36.694805, 33.456242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033979, 36.681377, 33.441853>,  <27.432632, 36.658997, 33.417873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033979, 36.681377, 33.441853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038531, 0.325798, -0.944654,
		-0.072389, -0.943782, -0.322545,
		-0.996632, 0.055955, 0.059949,
		26.734989, 36.698162, 33.459839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238104, 36.236855, 32.731735>,  <27.432632, 36.658997, 33.417873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238104, 36.236855, 32.731735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902611, 36.416935, 32.854275>,  <26.701315, 36.524982, 32.927799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902611, 36.416935, 32.854275>,  <27.238104, 36.236855, 32.731735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902611, 36.416935, 32.854275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322047, 0.043566, -0.945721,
		-0.439108, -0.891865, 0.108445,
		-0.838731, 0.450198, 0.306352,
		26.650991, 36.551994, 32.946182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688890, 35.897594, 32.309349>,  <27.238104, 36.236855, 32.731735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688890, 35.897594, 32.309349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567694, 36.255600, 32.440285>,  <26.494976, 36.470402, 32.518845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567694, 36.255600, 32.440285>,  <26.688890, 35.897594, 32.309349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567694, 36.255600, 32.440285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336516, 0.220872, -0.915408,
		-0.891601, -0.387516, 0.234263,
		-0.302994, 0.895012, 0.327335,
		26.476795, 36.524105, 32.538486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951727, 35.953087, 32.151909>,  <26.688890, 35.897594, 32.309349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951727, 35.953087, 32.151909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108814, 36.320225, 32.174995>,  <26.203066, 36.540508, 32.188847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108814, 36.320225, 32.174995>,  <25.951727, 35.953087, 32.151909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108814, 36.320225, 32.174995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358815, 0.210702, -0.909317,
		-0.846773, 0.336397, 0.412083,
		0.392718, 0.917846, 0.057712,
		26.226629, 36.595577, 32.192310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509649, 36.293385, 31.737810>,  <25.951727, 35.953087, 32.151909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509649, 36.293385, 31.737810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774305, 36.589771, 31.783770>,  <25.933100, 36.767601, 31.811346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774305, 36.589771, 31.783770>,  <25.509649, 36.293385, 31.737810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774305, 36.589771, 31.783770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372392, 0.457722, -0.807350,
		-0.650810, 0.491389, 0.578778,
		0.661642, 0.740964, 0.114901,
		25.972797, 36.812061, 31.818239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132376, 36.914085, 31.621998>,  <25.509649, 36.293385, 31.737810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132376, 36.914085, 31.621998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521339, 36.997192, 31.579563>,  <25.754717, 37.047054, 31.554102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521339, 36.997192, 31.579563>,  <25.132376, 36.914085, 31.621998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521339, 36.997192, 31.579563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199523, 0.505092, -0.839686,
		-0.120874, 0.837685, 0.532610,
		0.972409, 0.207765, -0.106085,
		25.813063, 37.059521, 31.547737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152042, 37.613384, 31.666071>,  <25.132376, 36.914085, 31.621998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152042, 37.613384, 31.666071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469343, 37.486599, 31.458115>,  <25.659723, 37.410526, 31.333340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469343, 37.486599, 31.458115>,  <25.152042, 37.613384, 31.666071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469343, 37.486599, 31.458115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113098, 0.762271, -0.637301,
		0.598300, 0.564337, 0.568823,
		0.793250, -0.316964, -0.519893,
		25.707317, 37.391510, 31.302147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.572216, 38.167778, 31.586552>,  <25.152042, 37.613384, 31.666071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.572216, 38.167778, 31.586552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766003, 37.933975, 31.326199>,  <25.882275, 37.793694, 31.169987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766003, 37.933975, 31.326199>,  <25.572216, 38.167778, 31.586552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766003, 37.933975, 31.326199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110908, 0.696984, -0.708458,
		0.867752, 0.415411, 0.272838,
		0.484465, -0.584506, -0.650882,
		25.911343, 37.758625, 31.130934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158131, 38.562572, 31.181808>,  <25.572216, 38.167778, 31.586552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158131, 38.562572, 31.181808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025740, 38.252583, 30.966450>,  <25.946304, 38.066589, 30.837234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025740, 38.252583, 30.966450>,  <26.158131, 38.562572, 31.181808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025740, 38.252583, 30.966450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132776, 0.603123, -0.786519,
		0.934250, -0.188835, -0.302518,
		-0.330978, -0.774973, -0.538396,
		25.926447, 38.020092, 30.804932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543758, 38.538948, 30.531298>,  <26.158131, 38.562572, 31.181808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543758, 38.538948, 30.531298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211422, 38.336441, 30.438866>,  <26.012020, 38.214939, 30.383406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211422, 38.336441, 30.438866>,  <26.543758, 38.538948, 30.531298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211422, 38.336441, 30.438866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048038, 0.478927, -0.876540,
		0.554433, -0.717164, -0.422232,
		-0.830841, -0.506266, -0.231081,
		25.962170, 38.184563, 30.369541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641905, 38.414234, 29.833614>,  <26.543758, 38.538948, 30.531298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641905, 38.414234, 29.833614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257763, 38.313774, 29.882011>,  <26.027277, 38.253498, 29.911051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257763, 38.313774, 29.882011>,  <26.641905, 38.414234, 29.833614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257763, 38.313774, 29.882011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243056, 0.541780, -0.804611,
		0.136524, -0.802122, -0.581345,
		-0.960357, -0.251148, 0.120995,
		25.969656, 38.238430, 29.918310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404930, 37.994366, 29.284428>,  <26.641905, 38.414234, 29.833614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404930, 37.994366, 29.284428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086472, 38.173927, 29.446728>,  <25.895395, 38.281666, 29.544107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086472, 38.173927, 29.446728>,  <26.404930, 37.994366, 29.284428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086472, 38.173927, 29.446728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215560, 0.416146, -0.883378,
		-0.565405, -0.790762, -0.234547,
		-0.796148, 0.448907, 0.405748,
		25.847628, 38.308598, 29.568453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933760, 37.894424, 28.756842>,  <26.404930, 37.994366, 29.284428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933760, 37.894424, 28.756842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780228, 38.178638, 28.992743>,  <25.688108, 38.349167, 29.134283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780228, 38.178638, 28.992743>,  <25.933760, 37.894424, 28.756842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780228, 38.178638, 28.992743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221323, 0.549266, -0.805806,
		-0.896488, -0.439819, -0.053566,
		-0.383831, 0.710540, 0.589752,
		25.665079, 38.391800, 29.169668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308470, 38.118984, 28.474024>,  <25.933760, 37.894424, 28.756842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308470, 38.118984, 28.474024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.406832, 38.426857, 28.709690>,  <25.465849, 38.611580, 28.851089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.406832, 38.426857, 28.709690>,  <25.308470, 38.118984, 28.474024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.406832, 38.426857, 28.709690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357578, 0.636992, -0.682920,
		-0.900926, -0.042739, 0.431863,
		0.245906, 0.769685, 0.589165,
		25.480604, 38.657761, 28.886440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737547, 38.534153, 28.437119>,  <25.308470, 38.118984, 28.474024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737547, 38.534153, 28.437119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052773, 38.760887, 28.533161>,  <25.241907, 38.896927, 28.590788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052773, 38.760887, 28.533161>,  <24.737547, 38.534153, 28.437119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.052773, 38.760887, 28.533161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195697, 0.600490, -0.775316,
		-0.583661, 0.564010, 0.584152,
		0.788063, 0.566838, 0.240107,
		25.289192, 38.930939, 28.605194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.598185, 39.262569, 28.158024>,  <24.737547, 38.534153, 28.437119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.598185, 39.262569, 28.158024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989578, 39.218456, 28.227770>,  <25.224415, 39.191990, 28.269617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989578, 39.218456, 28.227770>,  <24.598185, 39.262569, 28.158024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.989578, 39.218456, 28.227770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202755, 0.357680, -0.911568,
		0.038164, 0.927309, 0.372346,
		0.978486, -0.110284, 0.174366,
		25.283123, 39.185371, 28.280079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.884830, 39.599876, 27.665838>,  <24.598185, 39.262569, 28.158024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.884830, 39.599876, 27.665838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.202497, 39.392178, 27.792128>,  <25.393097, 39.267559, 27.867901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.202497, 39.392178, 27.792128>,  <24.884830, 39.599876, 27.665838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.202497, 39.392178, 27.792128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441831, 0.136651, -0.886629,
		0.417237, 0.843627, 0.337944,
		0.794165, -0.519249, 0.315725,
		25.440746, 39.236404, 27.886845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507864, 39.978142, 27.487362>,  <24.884830, 39.599876, 27.665838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507864, 39.978142, 27.487362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600685, 39.589062, 27.486822>,  <25.656378, 39.355614, 27.486498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600685, 39.589062, 27.486822>,  <25.507864, 39.978142, 27.487362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600685, 39.589062, 27.486822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385776, 0.093307, -0.917862,
		0.892933, 0.212469, 0.396897,
		0.232051, -0.972703, -0.001351,
		25.670300, 39.297253, 27.486416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861755, 40.423950, 28.016243>,  <25.507864, 39.978142, 27.487362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861755, 40.423950, 28.016243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726349, 40.753090, 28.198812>,  <25.645105, 40.950573, 28.308353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726349, 40.753090, 28.198812>,  <25.861755, 40.423950, 28.016243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726349, 40.753090, 28.198812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804918, 0.504455, -0.312463,
		-0.487355, 0.261609, -0.833094,
		-0.338515, 0.822853, 0.456422,
		25.624794, 40.999947, 28.335739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929447, 40.930954, 27.532164>,  <25.861755, 40.423950, 28.016243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929447, 40.930954, 27.532164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950705, 41.079384, 27.902996>,  <25.963459, 41.168442, 28.125496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950705, 41.079384, 27.902996>,  <25.929447, 40.930954, 27.532164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950705, 41.079384, 27.902996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885734, 0.411210, -0.215364,
		-0.461141, 0.832594, -0.306817,
		0.053144, 0.371071, 0.927083,
		25.966648, 41.190704, 28.181120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231813, 41.693352, 27.578991>,  <25.929447, 40.930954, 27.532164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231813, 41.693352, 27.578991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299044, 41.494919, 27.919733>,  <26.339382, 41.375858, 28.124178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299044, 41.494919, 27.919733>,  <26.231813, 41.693352, 27.578991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299044, 41.494919, 27.919733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982855, 0.150790, -0.106108,
		-0.075813, 0.855084, 0.512917,
		0.168074, -0.496078, 0.851855,
		26.349466, 41.346096, 28.175289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658230, 42.107433, 27.935595>,  <26.231813, 41.693352, 27.578991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658230, 42.107433, 27.935595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686707, 41.767841, 28.145039>,  <26.703793, 41.564087, 28.270704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686707, 41.767841, 28.145039>,  <26.658230, 42.107433, 27.935595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686707, 41.767841, 28.145039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947807, 0.221142, 0.229693,
		-0.310796, 0.479928, 0.820411,
		0.071192, -0.848979, 0.523609,
		26.708063, 41.513149, 28.302122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733040, 42.215725, 28.690329>,  <26.658230, 42.107433, 27.935595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733040, 42.215725, 28.690329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913111, 41.888664, 28.546785>,  <27.021154, 41.692429, 28.460659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913111, 41.888664, 28.546785>,  <26.733040, 42.215725, 28.690329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913111, 41.888664, 28.546785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890967, 0.384621, 0.241339,
		-0.059307, -0.428376, 0.901652,
		0.450179, -0.817655, -0.358858,
		27.048164, 41.643368, 28.439129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185265, 41.862358, 29.176125>,  <26.733040, 42.215725, 28.690329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185265, 41.862358, 29.176125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319160, 41.800816, 28.804258>,  <27.399498, 41.763889, 28.581139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319160, 41.800816, 28.804258>,  <27.185265, 41.862358, 29.176125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319160, 41.800816, 28.804258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934004, 0.184882, 0.305706,
		0.124844, -0.970643, 0.205589,
		0.334741, -0.153855, -0.929665,
		27.419582, 41.754658, 28.525358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829702, 42.052170, 29.255106>,  <27.185265, 41.862358, 29.176125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829702, 42.052170, 29.255106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931070, 41.917469, 28.892366>,  <27.991892, 41.836647, 28.674723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931070, 41.917469, 28.892366>,  <27.829702, 42.052170, 29.255106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931070, 41.917469, 28.892366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963445, 0.172075, 0.205336,
		0.086899, -0.925737, 0.368049,
		0.253419, -0.336751, -0.906850,
		28.007095, 41.816444, 28.620312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472359, 41.793964, 29.345686>,  <27.829702, 42.052170, 29.255106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472359, 41.793964, 29.345686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436693, 41.858059, 28.952469>,  <28.415295, 41.896515, 28.716539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436693, 41.858059, 28.952469>,  <28.472359, 41.793964, 29.345686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436693, 41.858059, 28.952469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972683, 0.226391, -0.051321,
		0.214328, -0.960766, -0.176047,
		-0.089163, 0.160239, -0.983043,
		28.409945, 41.906132, 28.657557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767601, 42.466663, 29.200809>,  <28.472359, 41.793964, 29.345686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767601, 42.466663, 29.200809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437792, 42.474518, 29.427004>,  <28.239906, 42.479229, 29.562721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437792, 42.474518, 29.427004>,  <28.767601, 42.466663, 29.200809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437792, 42.474518, 29.427004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455656, -0.569479, 0.684157,
		0.335468, 0.821771, 0.460601,
		-0.824523, 0.019637, 0.565487,
		28.190435, 42.480408, 29.596649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127304, 42.439911, 29.838919>,  <28.767601, 42.466663, 29.200809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127304, 42.439911, 29.838919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737383, 42.370117, 29.894512>,  <28.503429, 42.328239, 29.927868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737383, 42.370117, 29.894512>,  <29.127304, 42.439911, 29.838919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737383, 42.370117, 29.894512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218602, -0.623108, 0.750966,
		-0.044428, 0.762425, 0.645550,
		-0.974802, -0.174483, 0.138984,
		28.444942, 42.317772, 29.936207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032782, 42.436428, 30.498068>,  <29.127304, 42.439911, 29.838919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032782, 42.436428, 30.498068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718836, 42.230038, 30.360806>,  <28.530468, 42.106205, 30.278448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718836, 42.230038, 30.360806>,  <29.032782, 42.436428, 30.498068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718836, 42.230038, 30.360806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191133, -0.728351, 0.658007,
		-0.589452, 0.450859, 0.670278,
		-0.784866, -0.515976, -0.343154,
		28.483376, 42.075245, 30.257860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723656, 42.330006, 31.049789>,  <29.032782, 42.436428, 30.498068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723656, 42.330006, 31.049789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575396, 42.066345, 30.788059>,  <28.486439, 41.908150, 30.631021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575396, 42.066345, 30.788059>,  <28.723656, 42.330006, 31.049789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575396, 42.066345, 30.788059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306541, -0.751848, 0.583744,
		-0.876727, 0.015788, 0.480730,
		-0.370652, -0.659147, -0.654326,
		28.464199, 41.868603, 30.591761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281141, 41.838985, 31.431170>,  <28.723656, 42.330006, 31.049789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281141, 41.838985, 31.431170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391867, 41.650291, 31.096304>,  <28.458302, 41.537075, 30.895384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391867, 41.650291, 31.096304>,  <28.281141, 41.838985, 31.431170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391867, 41.650291, 31.096304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188822, -0.827519, 0.528733,
		-0.942189, -0.304435, -0.139996,
		0.276814, -0.471732, -0.837163,
		28.474911, 41.508770, 30.845156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812353, 41.284313, 31.275236>,  <28.281141, 41.838985, 31.431170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812353, 41.284313, 31.275236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157202, 41.202904, 31.089622>,  <28.364111, 41.154057, 30.978254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157202, 41.202904, 31.089622>,  <27.812353, 41.284313, 31.275236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157202, 41.202904, 31.089622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075577, -0.853896, 0.514927,
		-0.501035, -0.478999, -0.720780,
		0.862121, -0.203522, -0.464033,
		28.415838, 41.141846, 30.950413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834181, 40.613686, 31.174334>,  <27.812353, 41.284313, 31.275236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834181, 40.613686, 31.174334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219833, 40.691582, 31.102188>,  <28.451225, 40.738319, 31.058901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219833, 40.691582, 31.102188>,  <27.834181, 40.613686, 31.174334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219833, 40.691582, 31.102188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257939, -0.847705, 0.463533,
		-0.062627, -0.493429, -0.867529,
		0.964129, 0.194740, -0.180364,
		28.509071, 40.750004, 31.048079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083038, 40.018894, 30.880587>,  <27.834181, 40.613686, 31.174334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083038, 40.018894, 30.880587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389051, 40.211338, 31.051823>,  <28.572659, 40.326805, 31.154564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389051, 40.211338, 31.051823>,  <28.083038, 40.018894, 30.880587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389051, 40.211338, 31.051823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299153, -0.854163, 0.425339,
		0.570292, -0.197334, -0.797387,
		0.765032, 0.481109, 0.428089,
		28.618561, 40.355671, 31.180250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554077, 39.546585, 30.844042>,  <28.083038, 40.018894, 30.880587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554077, 39.546585, 30.844042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708160, 39.804390, 31.108231>,  <28.800610, 39.959072, 31.266745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708160, 39.804390, 31.108231>,  <28.554077, 39.546585, 30.844042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708160, 39.804390, 31.108231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293046, -0.764091, 0.574708,
		0.875066, -0.027832, -0.483203,
		0.385207, 0.644508, 0.660474,
		28.823723, 39.997742, 31.306374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196875, 39.388573, 31.021585>,  <28.554077, 39.546585, 30.844042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196875, 39.388573, 31.021585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061069, 39.601383, 31.331856>,  <28.979588, 39.729073, 31.518019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061069, 39.601383, 31.331856>,  <29.196875, 39.388573, 31.021585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061069, 39.601383, 31.331856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429728, -0.645830, 0.631060,
		0.836700, 0.547582, -0.009362,
		-0.339511, 0.532031, 0.775677,
		28.959217, 39.760994, 31.564558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815283, 39.357407, 31.459898>,  <29.196875, 39.388573, 31.021585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815283, 39.357407, 31.459898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482100, 39.446934, 31.662317>,  <29.282188, 39.500648, 31.783768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482100, 39.446934, 31.662317>,  <29.815283, 39.357407, 31.459898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482100, 39.446934, 31.662317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264037, -0.642937, 0.718969,
		0.486273, 0.732488, 0.476445,
		-0.832960, 0.223817, 0.506047,
		29.232212, 39.514080, 31.814131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937611, 39.078907, 32.098850>,  <29.815283, 39.357407, 31.459898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937611, 39.078907, 32.098850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541885, 39.121853, 32.138302>,  <29.304449, 39.147621, 32.161972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541885, 39.121853, 32.138302>,  <29.937611, 39.078907, 32.098850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541885, 39.121853, 32.138302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046788, -0.874535, 0.482701,
		0.138084, 0.472928, 0.870214,
		-0.989315, 0.107368, 0.098632,
		29.245090, 39.154064, 32.167892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829603, 38.931389, 32.876091>,  <29.937611, 39.078907, 32.098850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829603, 38.931389, 32.876091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480038, 38.919170, 32.682041>,  <29.270298, 38.911839, 32.565613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480038, 38.919170, 32.682041>,  <29.829603, 38.931389, 32.876091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480038, 38.919170, 32.682041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278680, -0.786224, 0.551533,
		-0.398264, 0.617185, 0.678578,
		-0.873913, -0.030550, -0.485122,
		29.217863, 38.910004, 32.536503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476381, 38.744846, 33.405254>,  <29.829603, 38.931389, 32.876091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476381, 38.744846, 33.405254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247944, 38.641308, 33.093651>,  <29.110882, 38.579185, 32.906689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247944, 38.641308, 33.093651>,  <29.476381, 38.744846, 33.405254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247944, 38.641308, 33.093651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366572, -0.768691, 0.524156,
		-0.734492, 0.584904, 0.344107,
		-0.571092, -0.258848, -0.779007,
		29.076616, 38.563652, 32.859947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795717, 38.540047, 33.682686>,  <29.476381, 38.744846, 33.405254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795717, 38.540047, 33.682686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795750, 38.362404, 33.324295>,  <28.795769, 38.255817, 33.109261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795750, 38.362404, 33.324295>,  <28.795717, 38.540047, 33.682686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795750, 38.362404, 33.324295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432828, -0.807715, 0.400321,
		-0.901477, 0.387770, -0.192289,
		0.000082, -0.444108, -0.895974,
		28.795774, 38.229172, 33.055504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105721, 38.218575, 33.611881>,  <28.795717, 38.540047, 33.682686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105721, 38.218575, 33.611881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309786, 38.050053, 33.311951>,  <28.432226, 37.948940, 33.131992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309786, 38.050053, 33.311951>,  <28.105721, 38.218575, 33.611881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309786, 38.050053, 33.311951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353830, -0.897424, 0.263503,
		-0.783923, 0.130880, -0.606905,
		0.510165, -0.421307, -0.749821,
		28.462835, 37.923660, 33.087006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637737, 37.659496, 33.265991>,  <28.105721, 38.218575, 33.611881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637737, 37.659496, 33.265991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020227, 37.555237, 33.212784>,  <28.249722, 37.492680, 33.180859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020227, 37.555237, 33.212784>,  <27.637737, 37.659496, 33.265991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020227, 37.555237, 33.212784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233831, -0.953886, 0.188213,
		-0.175941, -0.148871, -0.973078,
		0.956226, -0.260651, -0.133017,
		28.307095, 37.477043, 33.172878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610779, 37.067810, 32.864704>,  <27.637737, 37.659496, 33.265991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610779, 37.067810, 32.864704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975803, 37.069736, 33.028271>,  <28.194818, 37.070892, 33.126411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975803, 37.069736, 33.028271>,  <27.610779, 37.067810, 32.864704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975803, 37.069736, 33.028271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120852, -0.952094, 0.280912,
		0.390677, -0.305768, -0.868261,
		0.912560, 0.004815, 0.408914,
		28.249571, 37.071182, 33.150944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879719, 36.550941, 32.586445>,  <27.610779, 37.067810, 32.864704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879719, 36.550941, 32.586445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118368, 36.592926, 32.904697>,  <28.261559, 36.618114, 33.095650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118368, 36.592926, 32.904697>,  <27.879719, 36.550941, 32.586445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118368, 36.592926, 32.904697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157431, -0.956840, 0.244279,
		0.786927, -0.270999, -0.554352,
		0.596625, 0.104957, 0.795627,
		28.297356, 36.624413, 33.143387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270193, 35.911644, 32.703793>,  <27.879719, 36.550941, 32.586445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270193, 35.911644, 32.703793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283279, 36.087513, 33.062817>,  <28.291132, 36.193035, 33.278233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283279, 36.087513, 33.062817>,  <28.270193, 35.911644, 32.703793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283279, 36.087513, 33.062817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100259, -0.892070, 0.440636,
		0.994423, -0.104405, 0.014895,
		0.032717, 0.439672, 0.897563,
		28.293095, 36.219414, 33.332085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691721, 35.521759, 33.117695>,  <28.270193, 35.911644, 32.703793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691721, 35.521759, 33.117695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467279, 35.725910, 33.378365>,  <28.332615, 35.848400, 33.534767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467279, 35.725910, 33.378365>,  <28.691721, 35.521759, 33.117695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467279, 35.725910, 33.378365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094960, -0.821782, 0.561834,
		0.822282, 0.253363, 0.509568,
		-0.561102, 0.510374, 0.651677,
		28.298948, 35.879021, 33.573868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820721, 35.249043, 33.845768>,  <28.691721, 35.521759, 33.117695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820721, 35.249043, 33.845768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452869, 35.405682, 33.833538>,  <28.232159, 35.499664, 33.826202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452869, 35.405682, 33.833538>,  <28.820721, 35.249043, 33.845768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452869, 35.405682, 33.833538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293851, -0.634248, 0.715109,
		0.260646, 0.666618, 0.698344,
		-0.919628, 0.391599, -0.030572,
		28.176981, 35.523163, 33.824368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312878, 34.775177, 33.771675>,  <28.820721, 35.249043, 33.845768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312878, 34.775177, 33.771675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538605, 34.730751, 33.444454>,  <29.674040, 34.704094, 33.248123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538605, 34.730751, 33.444454>,  <29.312878, 34.775177, 33.771675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538605, 34.730751, 33.444454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701875, 0.586250, 0.404577,
		0.434647, -0.802481, 0.408788,
		0.564317, -0.111070, -0.818053,
		29.707899, 34.697430, 33.199039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866291, 35.058086, 34.265224>,  <29.312878, 34.775177, 33.771675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866291, 35.058086, 34.265224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598330, 35.223583, 34.511818>,  <29.437551, 35.322880, 34.659775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598330, 35.223583, 34.511818>,  <29.866291, 35.058086, 34.265224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598330, 35.223583, 34.511818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693392, 0.645460, 0.320295,
		-0.265395, 0.642030, -0.719280,
		-0.669905, 0.413738, 0.616481,
		29.397358, 35.347706, 34.696762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083242, 35.347797, 35.035995>,  <29.866291, 35.058086, 34.265224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083242, 35.347797, 35.035995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090157, 35.726574, 34.907616>,  <30.094305, 35.953838, 34.830589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090157, 35.726574, 34.907616>,  <30.083242, 35.347797, 35.035995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090157, 35.726574, 34.907616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854201, 0.152849, 0.496970,
		0.519656, -0.282746, -0.806233,
		0.017284, 0.946938, -0.320951,
		30.095343, 36.010654, 34.811329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865629, 35.489159, 34.859344>,  <30.083242, 35.347797, 35.035995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865629, 35.489159, 34.859344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686432, 35.843266, 34.909317>,  <30.578913, 36.055729, 34.939301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686432, 35.843266, 34.909317>,  <30.865629, 35.489159, 34.859344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686432, 35.843266, 34.909317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801647, 0.335896, 0.494505,
		0.395805, 0.321684, -0.860150,
		-0.447996, 0.885264, 0.124928,
		30.552032, 36.108845, 34.946796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344202, 35.972885, 34.679733>,  <30.865629, 35.489159, 34.859344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344202, 35.972885, 34.679733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077494, 36.189342, 34.884705>,  <30.917469, 36.319218, 35.007687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077494, 36.189342, 34.884705>,  <31.344202, 35.972885, 34.679733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077494, 36.189342, 34.884705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738692, 0.388770, 0.550629,
		0.098751, 0.745671, -0.658956,
		-0.666770, 0.541141, 0.512430,
		30.877462, 36.351685, 35.038433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077332, 35.949112, 34.438271>,  <31.344202, 35.972885, 34.679733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077332, 35.949112, 34.438271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357624, 36.078114, 34.692818>,  <32.525799, 36.155514, 34.845547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357624, 36.078114, 34.692818>,  <32.077332, 35.949112, 34.438271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357624, 36.078114, 34.692818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354557, -0.616615, 0.702905,
		0.619087, -0.718176, -0.317734,
		0.700729, 0.322505, 0.636372,
		32.567844, 36.174866, 34.883728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812134, 35.707211, 34.413548>,  <32.077332, 35.949112, 34.438271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812134, 35.707211, 34.413548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797123, 35.308048, 34.434593>,  <32.788116, 35.068550, 34.447220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797123, 35.308048, 34.434593>,  <32.812134, 35.707211, 34.413548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797123, 35.308048, 34.434593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058781, 0.050353, 0.997000,
		-0.997565, 0.040509, 0.056768,
		-0.037529, -0.997910, 0.052612,
		32.785866, 35.008675, 34.450378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483055, 35.523556, 34.967232>,  <32.812134, 35.707211, 34.413548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483055, 35.523556, 34.967232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683010, 35.180969, 34.915722>,  <32.802982, 34.975418, 34.884815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683010, 35.180969, 34.915722>,  <32.483055, 35.523556, 34.967232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683010, 35.180969, 34.915722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046242, -0.174869, 0.983505,
		-0.864854, -0.485689, -0.127019,
		0.499890, -0.856462, -0.128777,
		32.832977, 34.924030, 34.877090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123940, 35.125118, 35.546707>,  <32.483055, 35.523556, 34.967232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123940, 35.125118, 35.546707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450882, 34.933430, 35.418785>,  <32.647049, 34.818417, 35.342033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450882, 34.933430, 35.418785>,  <32.123940, 35.125118, 35.546707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450882, 34.933430, 35.418785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178859, -0.316595, 0.931545,
		-0.547662, -0.818607, -0.173059,
		0.817359, -0.479219, -0.319802,
		32.696091, 34.789665, 35.322845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966923, 34.496033, 35.705257>,  <32.123940, 35.125118, 35.546707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966923, 34.496033, 35.705257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361000, 34.562641, 35.688923>,  <32.597446, 34.602608, 35.679123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361000, 34.562641, 35.688923>,  <31.966923, 34.496033, 35.705257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361000, 34.562641, 35.688923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092033, -0.312656, 0.945397,
		0.144661, -0.935156, -0.323351,
		0.985192, 0.166521, -0.040836,
		32.656559, 34.612598, 35.676670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243301, 33.909348, 35.948784>,  <31.966923, 34.496033, 35.705257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243301, 33.909348, 35.948784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511749, 34.199783, 36.008648>,  <32.672817, 34.374043, 36.044567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511749, 34.199783, 36.008648>,  <32.243301, 33.909348, 35.948784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511749, 34.199783, 36.008648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001848, -0.203509, 0.979071,
		0.741347, -0.656798, -0.137921,
		0.671120, 0.726086, 0.149657,
		32.713085, 34.417610, 36.053547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853462, 33.617054, 36.263256>,  <32.243301, 33.909348, 35.948784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853462, 33.617054, 36.263256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821556, 34.005711, 36.352295>,  <32.802410, 34.238903, 36.405720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821556, 34.005711, 36.352295>,  <32.853462, 33.617054, 36.263256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821556, 34.005711, 36.352295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041368, -0.219888, 0.974647,
		0.995955, 0.086954, -0.022655,
		-0.079768, 0.971642, 0.222596,
		32.797626, 34.297203, 36.419075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285324, 33.695381, 36.807430>,  <32.853462, 33.617054, 36.263256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285324, 33.695381, 36.807430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067104, 34.029839, 36.830212>,  <32.936172, 34.230515, 36.843880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067104, 34.029839, 36.830212>,  <33.285324, 33.695381, 36.807430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067104, 34.029839, 36.830212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038624, -0.042795, 0.998337,
		0.837188, 0.546841, -0.008949,
		-0.545549, 0.836142, 0.056949,
		32.903439, 34.280682, 36.847298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610146, 34.152821, 37.190693>,  <33.285324, 33.695381, 36.807430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610146, 34.152821, 37.190693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249031, 34.323845, 37.209312>,  <33.032364, 34.426460, 37.220486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249031, 34.323845, 37.209312>,  <33.610146, 34.152821, 37.190693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249031, 34.323845, 37.209312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025704, -0.054400, 0.998188,
		0.429320, 0.902347, 0.038122,
		-0.902786, 0.427563, 0.046549,
		32.978195, 34.452114, 37.223278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704117, 34.752674, 37.645664>,  <33.610146, 34.152821, 37.190693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704117, 34.752674, 37.645664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313213, 34.668316, 37.636841>,  <33.078671, 34.617702, 37.631546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313213, 34.668316, 37.636841>,  <33.704117, 34.752674, 37.645664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313213, 34.668316, 37.636841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048684, 0.121924, 0.991345,
		-0.206378, 0.969875, -0.129419,
		-0.977260, -0.210892, -0.022055,
		33.020035, 34.605049, 37.630226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350449, 35.325371, 38.024708>,  <33.704117, 34.752674, 37.645664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350449, 35.325371, 38.024708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061546, 35.048725, 38.026253>,  <32.888203, 34.882736, 38.027180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061546, 35.048725, 38.026253>,  <33.350449, 35.325371, 38.024708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061546, 35.048725, 38.026253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139126, 0.150758, 0.978732,
		-0.677486, 0.706359, -0.205108,
		-0.722258, -0.691613, 0.003864,
		32.844868, 34.841240, 38.027412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768497, 35.558250, 38.392841>,  <33.350449, 35.325371, 38.024708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768497, 35.558250, 38.392841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771049, 35.159088, 38.418598>,  <32.772579, 34.919590, 38.434052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771049, 35.159088, 38.418598>,  <32.768497, 35.558250, 38.392841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771049, 35.159088, 38.418598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070469, 0.064681, 0.995415,
		-0.997494, -0.001810, 0.070733,
		0.006376, -0.997904, 0.064391,
		32.772961, 34.859718, 38.437916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097321, 35.429581, 38.840202>,  <32.768497, 35.558250, 38.392841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097321, 35.429581, 38.840202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265820, 35.066830, 38.835697>,  <32.366920, 34.849178, 38.832993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265820, 35.066830, 38.835697>,  <32.097321, 35.429581, 38.840202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265820, 35.066830, 38.835697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015164, -0.005374, 0.999871,
		-0.906820, -0.421362, 0.011488,
		0.421246, -0.906877, -0.011263,
		32.392193, 34.794765, 38.832317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748182, 34.954720, 39.249081>,  <32.097321, 35.429581, 38.840202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748182, 34.954720, 39.249081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114552, 34.796444, 39.222198>,  <32.334373, 34.701477, 39.206070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114552, 34.796444, 39.222198>,  <31.748182, 34.954720, 39.249081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114552, 34.796444, 39.222198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036382, -0.248617, 0.967918,
		-0.399704, -0.884092, -0.242110,
		0.915922, -0.395689, -0.067208,
		32.389328, 34.677738, 39.202038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730635, 34.301525, 39.418381>,  <31.748182, 34.954720, 39.249081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730635, 34.301525, 39.418381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111664, 34.391888, 39.499935>,  <32.340282, 34.446106, 39.548866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111664, 34.391888, 39.499935>,  <31.730635, 34.301525, 39.418381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111664, 34.391888, 39.499935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094886, -0.416090, 0.904359,
		0.289138, -0.880814, -0.374920,
		0.952573, 0.225910, 0.203885,
		32.397434, 34.459660, 39.561100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823343, 33.767395, 39.742176>,  <31.730635, 34.301525, 39.418381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823343, 33.767395, 39.742176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086185, 34.032639, 39.885563>,  <32.243893, 34.191784, 39.971596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086185, 34.032639, 39.885563>,  <31.823343, 33.767395, 39.742176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086185, 34.032639, 39.885563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005686, -0.479889, 0.877311,
		0.753776, -0.574448, -0.319108,
		0.657106, 0.663111, 0.358463,
		32.283318, 34.231571, 39.993103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243252, 33.365757, 40.144081>,  <31.823343, 33.767395, 39.742176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243252, 33.365757, 40.144081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286667, 33.736626, 40.287510>,  <32.312717, 33.959148, 40.373566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286667, 33.736626, 40.287510>,  <32.243252, 33.365757, 40.144081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286667, 33.736626, 40.287510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058800, -0.354079, 0.933365,
		0.992351, -0.122393, 0.016085,
		0.108542, 0.927172, 0.358567,
		32.319229, 34.014778, 40.395081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724953, 33.312416, 40.581928>,  <32.243252, 33.365757, 40.144081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724953, 33.312416, 40.581928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563286, 33.665718, 40.677013>,  <32.466286, 33.877701, 40.734062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563286, 33.665718, 40.677013>,  <32.724953, 33.312416, 40.581928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563286, 33.665718, 40.677013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085473, -0.222274, 0.971230,
		0.910682, 0.412860, 0.014341,
		-0.404170, 0.883256, 0.237709,
		32.442036, 33.930695, 40.748325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166500, 33.500462, 41.096169>,  <32.724953, 33.312416, 40.581928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166500, 33.500462, 41.096169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820560, 33.699574, 41.122227>,  <32.612995, 33.819042, 41.137859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820560, 33.699574, 41.122227>,  <33.166500, 33.500462, 41.096169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820560, 33.699574, 41.122227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051775, -0.217507, 0.974684,
		0.499351, 0.839584, 0.213884,
		-0.864851, 0.497784, 0.065143,
		32.561104, 33.848907, 41.141769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144917, 33.760223, 41.771774>,  <33.166500, 33.500462, 41.096169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144917, 33.760223, 41.771774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758362, 33.798653, 41.676392>,  <32.526428, 33.821709, 41.619160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758362, 33.798653, 41.676392>,  <33.144917, 33.760223, 41.771774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758362, 33.798653, 41.676392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255275, -0.248700, 0.934336,
		0.030456, 0.963804, 0.264865,
		-0.966389, 0.096070, -0.238461,
		32.468445, 33.827473, 41.604855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832432, 34.305080, 42.214417>,  <33.144917, 33.760223, 41.771774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832432, 34.305080, 42.214417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556980, 34.037479, 42.102547>,  <32.391708, 33.876919, 42.035427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556980, 34.037479, 42.102547>,  <32.832432, 34.305080, 42.214417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556980, 34.037479, 42.102547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102610, -0.291907, 0.950927,
		-0.717814, 0.683536, 0.132370,
		-0.688632, -0.669006, -0.279672,
		32.350391, 33.836777, 42.018646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518200, 34.230019, 42.831573>,  <32.832432, 34.305080, 42.214417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518200, 34.230019, 42.831573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341766, 33.943703, 42.615021>,  <32.235905, 33.771912, 42.485088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341766, 33.943703, 42.615021>,  <32.518200, 34.230019, 42.831573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341766, 33.943703, 42.615021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365237, -0.407849, 0.836816,
		-0.819784, 0.566839, -0.081536,
		-0.441086, -0.715788, -0.541378,
		32.209442, 33.728966, 42.452606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907343, 34.269070, 43.071972>,  <32.518200, 34.230019, 42.831573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907343, 34.269070, 43.071972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976664, 33.909859, 42.910225>,  <32.018257, 33.694332, 42.813179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976664, 33.909859, 42.910225>,  <31.907343, 34.269070, 43.071972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976664, 33.909859, 42.910225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237897, -0.436590, 0.867637,
		-0.955705, -0.054166, -0.289300,
		0.173302, -0.898028, -0.404365,
		32.028656, 33.640450, 42.788914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576771, 33.808105, 43.484585>,  <31.907343, 34.269070, 43.071972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576771, 33.808105, 43.484585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793415, 33.548386, 43.271019>,  <31.923403, 33.392555, 43.142879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793415, 33.548386, 43.271019>,  <31.576771, 33.808105, 43.484585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793415, 33.548386, 43.271019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087679, -0.588040, 0.804065,
		-0.836044, -0.482304, -0.261559,
		0.541611, -0.649301, -0.533915,
		31.955898, 33.353596, 43.110844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162699, 33.090633, 43.417324>,  <31.576771, 33.808105, 43.484585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162699, 33.090633, 43.417324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559448, 33.054626, 43.381351>,  <31.797497, 33.033024, 43.359768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559448, 33.054626, 43.381351>,  <31.162699, 33.090633, 43.417324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559448, 33.054626, 43.381351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015793, -0.614243, 0.788959,
		-0.126257, -0.783966, -0.607829,
		0.991872, -0.090012, -0.089934,
		31.857010, 33.027622, 43.354370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355804, 32.303226, 43.254639>,  <31.162699, 33.090633, 43.417324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355804, 32.303226, 43.254639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664452, 32.498009, 43.418331>,  <31.849640, 32.614880, 43.516548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664452, 32.498009, 43.418331>,  <31.355804, 32.303226, 43.254639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664452, 32.498009, 43.418331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094466, -0.723962, 0.683341,
		0.629030, -0.488621, -0.604625,
		0.771620, 0.486959, 0.409236,
		31.895937, 32.644096, 43.541103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804487, 31.757259, 43.388607>,  <31.355804, 32.303226, 43.254639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804487, 31.757259, 43.388607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968048, 32.053982, 43.601219>,  <32.066185, 32.232014, 43.728786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968048, 32.053982, 43.601219>,  <31.804487, 31.757259, 43.388607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968048, 32.053982, 43.601219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242291, -0.649790, 0.720464,
		0.879826, -0.165816, -0.445434,
		0.408903, 0.741807, 0.531527,
		32.090717, 32.276524, 43.760677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405766, 31.505308, 43.762245>,  <31.804487, 31.757259, 43.388607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405766, 31.505308, 43.762245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339584, 31.858055, 43.938850>,  <32.299877, 32.069702, 44.044811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339584, 31.858055, 43.938850>,  <32.405766, 31.505308, 43.762245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339584, 31.858055, 43.938850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156305, -0.418575, 0.894631,
		0.973753, 0.217028, -0.068588,
		-0.165451, 0.881870, 0.441511,
		32.289948, 32.122616, 44.071304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061871, 31.649767, 44.127991>,  <32.405766, 31.505308, 43.762245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061871, 31.649767, 44.127991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756813, 31.854403, 44.286304>,  <32.573776, 31.977184, 44.381294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756813, 31.854403, 44.286304>,  <33.061871, 31.649767, 44.127991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756813, 31.854403, 44.286304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271382, -0.302352, 0.913748,
		0.587130, 0.804276, 0.091752,
		-0.762647, 0.511589, 0.395786,
		32.528019, 32.007881, 44.405041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371044, 32.058620, 44.714420>,  <33.061871, 31.649767, 44.127991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371044, 32.058620, 44.714420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975483, 32.019741, 44.759346>,  <32.738144, 31.996414, 44.786301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975483, 32.019741, 44.759346>,  <33.371044, 32.058620, 44.714420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975483, 32.019741, 44.759346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146326, -0.507626, 0.849061,
		-0.025509, 0.856078, 0.516217,
		-0.988908, -0.097194, 0.112317,
		32.678810, 31.990583, 44.793041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341225, 32.107716, 45.365681>,  <33.371044, 32.058620, 44.714420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341225, 32.107716, 45.365681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983059, 31.959938, 45.266293>,  <32.768158, 31.871271, 45.206657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983059, 31.959938, 45.266293>,  <33.341225, 32.107716, 45.365681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983059, 31.959938, 45.266293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081243, -0.684287, 0.724673,
		-0.437757, 0.628697, 0.642736,
		-0.895415, -0.369448, -0.248474,
		32.714436, 31.849104, 45.191750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923542, 31.992603, 45.965347>,  <33.341225, 32.107716, 45.365681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923542, 31.992603, 45.965347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817421, 31.710405, 45.702473>,  <32.753750, 31.541086, 45.544750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817421, 31.710405, 45.702473>,  <32.923542, 31.992603, 45.965347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817421, 31.710405, 45.702473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288857, -0.708460, 0.643931,
		-0.919878, -0.018996, 0.391744,
		-0.265303, -0.705496, -0.657184,
		32.737831, 31.498756, 45.505318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852921, 31.433130, 46.428314>,  <32.923542, 31.992603, 45.965347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852921, 31.433130, 46.428314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832832, 31.279535, 46.059525>,  <32.820778, 31.187378, 45.838253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832832, 31.279535, 46.059525>,  <32.852921, 31.433130, 46.428314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832832, 31.279535, 46.059525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445239, -0.834938, 0.323485,
		-0.894002, -0.394251, 0.212899,
		-0.050223, -0.383987, -0.921972,
		32.817764, 31.164339, 45.782932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570610, 30.724802, 46.506485>,  <32.852921, 31.433130, 46.428314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570610, 30.724802, 46.506485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758259, 30.707121, 46.153675>,  <32.870850, 30.696512, 45.941990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758259, 30.707121, 46.153675>,  <32.570610, 30.724802, 46.506485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758259, 30.707121, 46.153675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501270, -0.808943, 0.307147,
		-0.727086, -0.586223, -0.357337,
		0.469122, -0.044200, -0.882027,
		32.898994, 30.693861, 45.889069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508289, 30.052189, 46.327545>,  <32.570610, 30.724802, 46.506485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508289, 30.052189, 46.327545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818810, 30.188484, 46.115414>,  <33.005123, 30.270262, 45.988136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818810, 30.188484, 46.115414>,  <32.508289, 30.052189, 46.327545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818810, 30.188484, 46.115414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554584, -0.769111, 0.317654,
		-0.299646, -0.540709, -0.786032,
		0.776304, 0.340737, -0.530330,
		33.051701, 30.290705, 45.956314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795532, 29.529816, 45.908787>,  <32.508289, 30.052189, 46.327545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795532, 29.529816, 45.908787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088005, 29.795721, 45.970062>,  <33.263489, 29.955263, 46.006828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088005, 29.795721, 45.970062>,  <32.795532, 29.529816, 45.908787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088005, 29.795721, 45.970062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621352, -0.741664, 0.252699,
		0.281598, -0.089585, -0.955341,
		0.731180, 0.664763, 0.153187,
		33.307358, 29.995150, 46.016018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395515, 29.389523, 45.454983>,  <32.795532, 29.529816, 45.908787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395515, 29.389523, 45.454983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474052, 29.559229, 45.808582>,  <33.521175, 29.661053, 46.020741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474052, 29.559229, 45.808582>,  <33.395515, 29.389523, 45.454983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474052, 29.559229, 45.808582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608573, -0.759613, 0.229405,
		0.768824, 0.492935, -0.407339,
		0.196339, 0.424267, 0.883996,
		33.532955, 29.686510, 46.073780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141312, 29.384161, 45.604874>,  <33.395515, 29.389523, 45.454983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141312, 29.384161, 45.604874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943924, 29.399429, 45.952446>,  <33.825493, 29.408590, 46.160988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943924, 29.399429, 45.952446>,  <34.141312, 29.384161, 45.604874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943924, 29.399429, 45.952446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405805, -0.873529, 0.268829,
		0.769295, 0.485273, 0.415567,
		-0.493465, 0.038169, 0.868928,
		33.795883, 29.410881, 46.213123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619705, 29.066444, 46.133091>,  <34.141312, 29.384161, 45.604874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619705, 29.066444, 46.133091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231953, 29.039186, 46.227451>,  <33.999302, 29.022831, 46.284065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231953, 29.039186, 46.227451>,  <34.619705, 29.066444, 46.133091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231953, 29.039186, 46.227451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116765, -0.973075, 0.198725,
		0.216003, 0.220185, 0.951242,
		-0.969386, -0.068146, 0.235897,
		33.941135, 29.018742, 46.298222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694653, 28.834980, 46.806297>,  <34.619705, 29.066444, 46.133091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694653, 28.834980, 46.806297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316162, 28.749159, 46.709442>,  <34.089069, 28.697666, 46.651329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316162, 28.749159, 46.709442>,  <34.694653, 28.834980, 46.806297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316162, 28.749159, 46.709442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060199, -0.852147, 0.519829,
		-0.317868, 0.477297, 0.819236,
		-0.946222, -0.214554, -0.242137,
		34.032295, 28.684793, 46.636803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455524, 28.516827, 47.454762>,  <34.694653, 28.834980, 46.806297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455524, 28.516827, 47.454762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197937, 28.411715, 47.167358>,  <34.043385, 28.348648, 46.994919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197937, 28.411715, 47.167358>,  <34.455524, 28.516827, 47.454762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197937, 28.411715, 47.167358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100403, -0.960066, 0.261137,
		-0.758432, 0.096025, 0.644639,
		-0.643972, -0.262778, -0.718504,
		34.004745, 28.332882, 46.951809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958599, 28.161976, 47.783310>,  <34.455524, 28.516827, 47.454762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958599, 28.161976, 47.783310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976913, 28.061790, 47.396492>,  <33.987904, 28.001678, 47.164402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976913, 28.061790, 47.396492>,  <33.958599, 28.161976, 47.783310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976913, 28.061790, 47.396492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227942, -0.939899, 0.254227,
		-0.972597, -0.232070, 0.014054,
		0.045789, -0.250464, -0.967043,
		33.990650, 27.986650, 47.106380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529095, 27.550285, 47.741642>,  <33.958599, 28.161976, 47.783310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529095, 27.550285, 47.741642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819668, 27.569927, 47.467449>,  <33.994011, 27.581713, 47.302933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819668, 27.569927, 47.467449>,  <33.529095, 27.550285, 47.741642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819668, 27.569927, 47.467449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299747, -0.920208, 0.251732,
		-0.618423, -0.388338, -0.683189,
		0.726433, 0.049107, -0.685480,
		34.037598, 27.584660, 47.261806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552155, 27.068447, 47.156425>,  <33.529095, 27.550285, 47.741642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552155, 27.068447, 47.156425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859688, 26.812811, 47.165005>,  <34.044209, 26.659430, 47.170151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859688, 26.812811, 47.165005>,  <33.552155, 27.068447, 47.156425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859688, 26.812811, 47.165005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097365, 0.150149, 0.983857,
		-0.631993, -0.754334, 0.177664,
		0.768833, -0.639089, 0.021447,
		34.090340, 26.621084, 47.171440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369038, 26.631706, 47.650341>,  <33.552155, 27.068447, 47.156425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369038, 26.631706, 47.650341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765491, 26.627415, 47.597378>,  <34.003365, 26.624840, 47.565598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765491, 26.627415, 47.597378>,  <33.369038, 26.631706, 47.650341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765491, 26.627415, 47.597378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130150, 0.278242, 0.951653,
		0.026630, -0.960451, 0.277172,
		0.991137, -0.010731, -0.132413,
		34.062832, 26.624195, 47.557655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658966, 26.406359, 48.186584>,  <33.369038, 26.631706, 47.650341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658966, 26.406359, 48.186584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974014, 26.611229, 48.049568>,  <34.163044, 26.734152, 47.967358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974014, 26.611229, 48.049568>,  <33.658966, 26.406359, 48.186584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974014, 26.611229, 48.049568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166714, 0.358051, 0.918698,
		0.593183, -0.780688, 0.196619,
		0.787616, 0.512177, -0.342541,
		34.210300, 26.764881, 47.946804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313980, 26.239563, 48.508636>,  <33.658966, 26.406359, 48.186584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313980, 26.239563, 48.508636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313343, 26.617758, 48.378372>,  <34.312962, 26.844675, 48.300213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313343, 26.617758, 48.378372>,  <34.313980, 26.239563, 48.508636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313343, 26.617758, 48.378372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314804, 0.309572, 0.897254,
		0.949155, -0.101093, -0.298135,
		-0.001588, 0.945487, -0.325656,
		34.312866, 26.901403, 48.280674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924885, 26.497578, 48.802803>,  <34.313980, 26.239563, 48.508636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924885, 26.497578, 48.802803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711273, 26.829735, 48.739231>,  <34.583107, 27.029030, 48.701088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711273, 26.829735, 48.739231>,  <34.924885, 26.497578, 48.802803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711273, 26.829735, 48.739231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385211, 0.406310, 0.828568,
		0.752614, 0.381256, -0.536858,
		-0.534028, 0.830395, -0.158931,
		34.551064, 27.078854, 48.691551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378353, 27.082787, 48.607944>,  <34.924885, 26.497578, 48.802803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378353, 27.082787, 48.607944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046246, 27.175541, 48.810677>,  <34.846981, 27.231194, 48.932316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046246, 27.175541, 48.810677>,  <35.378353, 27.082787, 48.607944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046246, 27.175541, 48.810677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557339, 0.352750, 0.751625,
		-0.004494, 0.906530, -0.422117,
		-0.830273, 0.231885, 0.506830,
		34.797165, 27.245106, 48.962727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275558, 27.496527, 48.116688>,  <35.378353, 27.082787, 48.607944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275558, 27.496527, 48.116688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983025, 27.225584, 48.148525>,  <34.807503, 27.063019, 48.167629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983025, 27.225584, 48.148525>,  <35.275558, 27.496527, 48.116688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983025, 27.225584, 48.148525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105358, -0.227508, -0.968060,
		0.673829, -0.699592, 0.237750,
		-0.731336, -0.677356, 0.079594,
		34.763622, 27.022377, 48.172405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361160, 26.967783, 47.669094>,  <35.275558, 27.496527, 48.116688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361160, 26.967783, 47.669094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984543, 26.853241, 47.740074>,  <34.758572, 26.784515, 47.782661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984543, 26.853241, 47.740074>,  <35.361160, 26.967783, 47.669094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984543, 26.853241, 47.740074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029997, -0.453394, -0.890805,
		0.335540, -0.844059, 0.418302,
		-0.941548, -0.286353, 0.177451,
		34.702080, 26.767336, 47.793308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269402, 26.283276, 47.618771>,  <35.361160, 26.967783, 47.669094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269402, 26.283276, 47.618771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889576, 26.396713, 47.565247>,  <34.661682, 26.464775, 47.533131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889576, 26.396713, 47.565247>,  <35.269402, 26.283276, 47.618771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889576, 26.396713, 47.565247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027026, -0.499154, -0.866092,
		-0.312413, -0.818791, 0.481642,
		-0.949562, 0.283595, -0.133813,
		34.604706, 26.481792, 47.525105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001003, 25.733725, 47.279366>,  <35.269402, 26.283276, 47.618771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001003, 25.733725, 47.279366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718334, 26.014246, 47.241871>,  <34.548733, 26.182560, 47.219376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718334, 26.014246, 47.241871>,  <35.001003, 25.733725, 47.279366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718334, 26.014246, 47.241871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353669, -0.464861, -0.811679,
		-0.612808, -0.540440, 0.576534,
		-0.706672, 0.701305, -0.093734,
		34.506332, 26.224638, 47.213753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390472, 25.394941, 47.192352>,  <35.001003, 25.733725, 47.279366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390472, 25.394941, 47.192352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327816, 25.755772, 47.031494>,  <34.290222, 25.972269, 46.934978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327816, 25.755772, 47.031494>,  <34.390472, 25.394941, 47.192352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327816, 25.755772, 47.031494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291945, -0.431269, -0.853683,
		-0.943521, -0.016317, 0.330911,
		-0.156642, 0.902076, -0.402148,
		34.280823, 26.026394, 46.910851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699814, 25.399933, 46.847263>,  <34.390472, 25.394941, 47.192352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699814, 25.399933, 46.847263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867512, 25.716356, 46.669067>,  <33.968128, 25.906210, 46.562149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867512, 25.716356, 46.669067>,  <33.699814, 25.399933, 46.847263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867512, 25.716356, 46.669067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066859, -0.462465, -0.884113,
		-0.905409, 0.400443, -0.140995,
		0.419242, 0.791057, -0.445493,
		33.993286, 25.953674, 46.535419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299389, 25.675362, 46.221298>,  <33.699814, 25.399933, 46.847263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299389, 25.675362, 46.221298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659546, 25.838402, 46.160439>,  <33.875641, 25.936226, 46.123924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659546, 25.838402, 46.160439>,  <33.299389, 25.675362, 46.221298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659546, 25.838402, 46.160439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106881, -0.131767, -0.985502,
		-0.421738, 0.903604, -0.075078,
		0.900396, 0.407599, -0.152150,
		33.929665, 25.960682, 46.114792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225880, 26.138742, 45.644985>,  <33.299389, 25.675362, 46.221298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225880, 26.138742, 45.644985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611416, 26.033552, 45.662247>,  <33.842735, 25.970438, 45.672604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611416, 26.033552, 45.662247>,  <33.225880, 26.138742, 45.644985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611416, 26.033552, 45.662247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029305, -0.265535, -0.963656,
		0.264874, 0.927543, -0.263639,
		0.963838, -0.262974, 0.043151,
		33.900566, 25.954660, 45.675194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398956, 26.515196, 45.083218>,  <33.225880, 26.138742, 45.644985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398956, 26.515196, 45.083218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711498, 26.276688, 45.156910>,  <33.899025, 26.133583, 45.201126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711498, 26.276688, 45.156910>,  <33.398956, 26.515196, 45.083218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711498, 26.276688, 45.156910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170501, -0.080017, -0.982103,
		0.600341, 0.798785, 0.039143,
		0.781357, -0.596271, 0.184231,
		33.945904, 26.097807, 45.212181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984268, 26.859259, 44.793205>,  <33.398956, 26.515196, 45.083218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984268, 26.859259, 44.793205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060429, 26.467686, 44.822720>,  <34.106125, 26.232742, 44.840427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060429, 26.467686, 44.822720>,  <33.984268, 26.859259, 44.793205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060429, 26.467686, 44.822720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120355, -0.051316, -0.991404,
		0.974302, 0.197640, 0.108048,
		0.190397, -0.978931, 0.073784,
		34.117546, 26.174007, 44.844856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407063, 26.744307, 44.267548>,  <33.984268, 26.859259, 44.793205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407063, 26.744307, 44.267548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324364, 26.366760, 44.370602>,  <34.274746, 26.140232, 44.432434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324364, 26.366760, 44.370602>,  <34.407063, 26.744307, 44.267548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324364, 26.366760, 44.370602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087204, -0.280051, -0.956016,
		0.974501, -0.175182, 0.140208,
		-0.206742, -0.943866, 0.257633,
		34.262341, 26.083601, 44.447891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969528, 26.308699, 44.011658>,  <34.407063, 26.744307, 44.267548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969528, 26.308699, 44.011658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628193, 26.104345, 44.053265>,  <34.423393, 25.981733, 44.078228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628193, 26.104345, 44.053265>,  <34.969528, 26.308699, 44.011658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628193, 26.104345, 44.053265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036309, -0.257253, -0.965662,
		0.520098, -0.820256, 0.238072,
		-0.853334, -0.510883, 0.104014,
		34.372192, 25.951080, 44.084469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101696, 25.693893, 43.641430>,  <34.969528, 26.308699, 44.011658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101696, 25.693893, 43.641430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703564, 25.720745, 43.669167>,  <34.464684, 25.736856, 43.685810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703564, 25.720745, 43.669167>,  <35.101696, 25.693893, 43.641430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703564, 25.720745, 43.669167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074126, -0.071634, -0.994673,
		-0.061812, -0.995169, 0.076276,
		-0.995332, 0.067136, 0.069340,
		34.404964, 25.740883, 43.689968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873386, 25.342560, 43.164467>,  <35.101696, 25.693893, 43.641430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873386, 25.342560, 43.164467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547417, 25.562721, 43.237083>,  <34.351837, 25.694818, 43.280655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547417, 25.562721, 43.237083>,  <34.873386, 25.342560, 43.164467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547417, 25.562721, 43.237083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255492, -0.060006, -0.964947,
		-0.520217, -0.832739, 0.189524,
		-0.814922, 0.550404, 0.181542,
		34.302940, 25.727842, 43.291546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291424, 25.014788, 42.961517>,  <34.873386, 25.342560, 43.164467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291424, 25.014788, 42.961517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188423, 25.400024, 42.930157>,  <34.126621, 25.631166, 42.911339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188423, 25.400024, 42.930157>,  <34.291424, 25.014788, 42.961517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188423, 25.400024, 42.930157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237704, -0.141782, -0.960934,
		-0.936585, -0.228804, 0.265439,
		-0.257500, 0.963092, -0.078404,
		34.111172, 25.688951, 42.906635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876354, 25.079250, 42.325596>,  <34.291424, 25.014788, 42.961517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876354, 25.079250, 42.325596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948696, 25.466219, 42.396461>,  <33.992100, 25.698400, 42.438980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948696, 25.466219, 42.396461>,  <33.876354, 25.079250, 42.325596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948696, 25.466219, 42.396461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184742, 0.210344, -0.960014,
		-0.966004, 0.140890, 0.216764,
		0.180852, 0.967422, 0.177165,
		34.002953, 25.756445, 42.449612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284641, 25.418139, 42.039581>,  <33.876354, 25.079250, 42.325596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284641, 25.418139, 42.039581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597771, 25.666513, 42.055714>,  <33.785648, 25.815538, 42.065395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597771, 25.666513, 42.055714>,  <33.284641, 25.418139, 42.039581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597771, 25.666513, 42.055714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248233, 0.371074, -0.894810,
		-0.570589, 0.690463, 0.444622,
		0.782821, 0.620938, 0.040335,
		33.832619, 25.852795, 42.067814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137829, 25.801481, 41.501438>,  <33.284641, 25.418139, 42.039581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137829, 25.801481, 41.501438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485596, 25.972876, 41.599838>,  <33.694256, 26.075712, 41.658878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485596, 25.972876, 41.599838>,  <33.137829, 25.801481, 41.501438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485596, 25.972876, 41.599838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008134, 0.485408, -0.874250,
		-0.494012, 0.762088, 0.418537,
		0.869417, 0.428486, 0.245996,
		33.746422, 26.101421, 41.673637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935360, 26.474552, 41.402145>,  <33.137829, 25.801481, 41.501438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935360, 26.474552, 41.402145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329384, 26.420666, 41.359249>,  <33.565800, 26.388334, 41.333511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329384, 26.420666, 41.359249>,  <32.935360, 26.474552, 41.402145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329384, 26.420666, 41.359249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046889, 0.389401, -0.919874,
		0.165682, 0.911163, 0.377268,
		0.985064, -0.134717, -0.107240,
		33.624905, 26.380251, 41.327076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257858, 27.131172, 41.207695>,  <32.935360, 26.474552, 41.402145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257858, 27.131172, 41.207695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517479, 26.843000, 41.109951>,  <33.673252, 26.670097, 41.051304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517479, 26.843000, 41.109951>,  <33.257858, 27.131172, 41.207695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517479, 26.843000, 41.109951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096374, 0.396496, -0.912964,
		0.754613, 0.569013, 0.326778,
		0.649054, -0.720427, -0.244363,
		33.712196, 26.626873, 41.036644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807339, 27.540462, 40.937569>,  <33.257858, 27.131172, 41.207695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807339, 27.540462, 40.937569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820328, 27.169516, 40.788475>,  <33.828121, 26.946947, 40.699020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820328, 27.169516, 40.788475>,  <33.807339, 27.540462, 40.937569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820328, 27.169516, 40.788475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109381, 0.373989, -0.920960,
		0.993469, -0.010864, 0.113581,
		0.032472, -0.927369, -0.372735,
		33.830070, 26.891304, 40.676655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257477, 27.445370, 40.473030>,  <33.807339, 27.540462, 40.937569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257477, 27.445370, 40.473030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065971, 27.117704, 40.346691>,  <33.951069, 26.921106, 40.270885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065971, 27.117704, 40.346691>,  <34.257477, 27.445370, 40.473030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065971, 27.117704, 40.346691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080601, 0.317230, -0.944917,
		0.874237, -0.477848, -0.085853,
		-0.478763, -0.819162, -0.315849,
		33.922344, 26.871956, 40.251938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644684, 27.158861, 39.899815>,  <34.257477, 27.445370, 40.473030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644684, 27.158861, 39.899815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268730, 27.027716, 39.861603>,  <34.043159, 26.949028, 39.838676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268730, 27.027716, 39.861603>,  <34.644684, 27.158861, 39.899815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268730, 27.027716, 39.861603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021287, 0.222936, -0.974601,
		0.340833, -0.918044, -0.202554,
		-0.939883, -0.327864, -0.095526,
		33.986767, 26.929358, 39.832947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665134, 26.647274, 39.321087>,  <34.644684, 27.158861, 39.899815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665134, 26.647274, 39.321087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300098, 26.802578, 39.372356>,  <34.081078, 26.895760, 39.403118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300098, 26.802578, 39.372356>,  <34.665134, 26.647274, 39.321087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300098, 26.802578, 39.372356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006095, 0.300542, -0.953749,
		-0.408825, -0.871166, -0.271906,
		-0.912593, 0.388259, 0.128178,
		34.026321, 26.919056, 39.410809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448162, 26.729963, 38.691746>,  <34.665134, 26.647274, 39.321087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448162, 26.729963, 38.691746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167477, 26.952335, 38.869976>,  <33.999065, 27.085758, 38.976913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167477, 26.952335, 38.869976>,  <34.448162, 26.729963, 38.691746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167477, 26.952335, 38.869976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117875, 0.526199, -0.842152,
		-0.702641, -0.643472, -0.303710,
		-0.701713, 0.555930, 0.445579,
		33.956963, 27.119114, 39.003651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935955, 26.664145, 38.203987>,  <34.448162, 26.729963, 38.691746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935955, 26.664145, 38.203987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840576, 26.979218, 38.431213>,  <33.783348, 27.168261, 38.567551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840576, 26.979218, 38.431213>,  <33.935955, 26.664145, 38.203987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840576, 26.979218, 38.431213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189191, 0.536058, -0.822708,
		-0.952550, -0.303642, 0.021203,
		-0.238443, 0.787682, 0.568069,
		33.769043, 27.215523, 38.601635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260273, 26.865179, 38.056129>,  <33.935955, 26.664145, 38.203987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260273, 26.865179, 38.056129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452053, 27.184671, 38.201546>,  <33.567120, 27.376366, 38.288795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452053, 27.184671, 38.201546>,  <33.260273, 26.865179, 38.056129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452053, 27.184671, 38.201546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241507, 0.518354, -0.820356,
		-0.843685, 0.305520, 0.441422,
		0.479447, 0.798728, 0.363542,
		33.595886, 27.424290, 38.310608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880089, 27.363043, 37.794933>,  <33.260273, 26.865179, 38.056129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880089, 27.363043, 37.794933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160709, 27.605188, 37.945328>,  <33.329082, 27.750475, 38.035564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160709, 27.605188, 37.945328>,  <32.880089, 27.363043, 37.794933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160709, 27.605188, 37.945328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208415, 0.678836, -0.704091,
		-0.681463, 0.415593, 0.602404,
		0.701549, 0.605363, 0.375986,
		33.371174, 27.786797, 38.058125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549305, 28.061502, 37.860813>,  <32.880089, 27.363043, 37.794933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549305, 28.061502, 37.860813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946712, 28.093222, 37.828259>,  <33.185158, 28.112253, 37.808727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946712, 28.093222, 37.828259>,  <32.549305, 28.061502, 37.860813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946712, 28.093222, 37.828259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111842, 0.808961, -0.577125,
		0.020072, 0.582489, 0.812590,
		0.993523, 0.079297, -0.081384,
		33.244770, 28.117010, 37.803844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851753, 28.754566, 38.049526>,  <32.549305, 28.061502, 37.860813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851753, 28.754566, 38.049526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127438, 28.602476, 37.802814>,  <33.292847, 28.511223, 37.654785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127438, 28.602476, 37.802814>,  <32.851753, 28.754566, 38.049526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127438, 28.602476, 37.802814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047988, 0.825425, -0.562469,
		0.722973, 0.417256, 0.550642,
		0.689207, -0.380226, -0.616783,
		33.334198, 28.488409, 37.617779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339138, 29.345924, 37.918201>,  <32.851753, 28.754566, 38.049526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339138, 29.345924, 37.918201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409718, 29.110121, 37.602898>,  <33.452065, 28.968639, 37.413715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409718, 29.110121, 37.602898>,  <33.339138, 29.345924, 37.918201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409718, 29.110121, 37.602898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343758, 0.787302, -0.511846,
		0.922333, -0.180656, 0.341564,
		0.176445, -0.589508, -0.788256,
		33.462650, 28.933268, 37.366421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821617, 29.739313, 37.584526>,  <33.339138, 29.345924, 37.918201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821617, 29.739313, 37.584526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728222, 29.457777, 37.316170>,  <33.672184, 29.288855, 37.155159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728222, 29.457777, 37.316170>,  <33.821617, 29.739313, 37.584526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728222, 29.457777, 37.316170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321823, 0.595133, -0.736374,
		0.917558, -0.387843, 0.087555,
		-0.233490, -0.703842, -0.670886,
		33.658176, 29.246624, 37.114902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284527, 29.826321, 37.098530>,  <33.821617, 29.739313, 37.584526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284527, 29.826321, 37.098530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988190, 29.639744, 36.905209>,  <33.810387, 29.527798, 36.789215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988190, 29.639744, 36.905209>,  <34.284527, 29.826321, 37.098530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988190, 29.639744, 36.905209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040414, 0.687292, -0.725256,
		0.670453, -0.556839, -0.490330,
		-0.740850, -0.466434, -0.483301,
		33.765938, 29.499811, 36.760216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628269, 29.737648, 36.451683>,  <34.284527, 29.826321, 37.098530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628269, 29.737648, 36.451683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237751, 29.675619, 36.391277>,  <34.003441, 29.638401, 36.355034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237751, 29.675619, 36.391277>,  <34.628269, 29.737648, 36.451683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237751, 29.675619, 36.391277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027002, 0.604958, -0.795799,
		0.214765, -0.781010, -0.586429,
		-0.976293, -0.155075, -0.151013,
		33.944862, 29.629097, 36.345974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614037, 29.686302, 35.773235>,  <34.628269, 29.737648, 36.451683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614037, 29.686302, 35.773235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257576, 29.794184, 35.919170>,  <34.043697, 29.858912, 36.006729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257576, 29.794184, 35.919170>,  <34.614037, 29.686302, 35.773235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257576, 29.794184, 35.919170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106895, 0.656683, -0.746552,
		-0.440929, -0.704292, -0.556376,
		-0.891154, 0.269703, 0.364836,
		33.990231, 29.875095, 36.028622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227493, 29.802433, 35.148472>,  <34.614037, 29.686302, 35.773235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227493, 29.802433, 35.148472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011715, 29.978188, 35.435787>,  <33.882248, 30.083641, 35.608177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011715, 29.978188, 35.435787>,  <34.227493, 29.802433, 35.148472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011715, 29.978188, 35.435787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254446, 0.728109, -0.636486,
		-0.802657, -0.526114, -0.280972,
		-0.539442, 0.439388, 0.718290,
		33.849884, 30.110004, 35.651276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582775, 29.951847, 34.822128>,  <34.227493, 29.802433, 35.148472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582775, 29.951847, 34.822128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598831, 30.197701, 35.137245>,  <33.608463, 30.345213, 35.326317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598831, 30.197701, 35.137245>,  <33.582775, 29.951847, 34.822128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598831, 30.197701, 35.137245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397990, 0.733019, -0.551622,
		-0.916511, -0.291392, 0.274039,
		0.040138, 0.614633, 0.787791,
		33.610874, 30.382090, 35.373581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905769, 30.193304, 34.842068>,  <33.582775, 29.951847, 34.822128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905769, 30.193304, 34.842068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159889, 30.444254, 35.022198>,  <33.312363, 30.594824, 35.130276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159889, 30.444254, 35.022198>,  <32.905769, 30.193304, 34.842068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159889, 30.444254, 35.022198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362234, 0.757079, -0.543708,
		-0.682039, 0.182297, 0.708230,
		0.635302, 0.627376, 0.450323,
		33.350479, 30.632467, 35.157295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469646, 30.799967, 34.923836>,  <32.905769, 30.193304, 34.842068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469646, 30.799967, 34.923836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848499, 30.909826, 34.990181>,  <33.075809, 30.975742, 35.029987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848499, 30.909826, 34.990181>,  <32.469646, 30.799967, 34.923836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848499, 30.909826, 34.990181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194259, 0.902313, -0.384830,
		-0.255353, 0.332264, 0.907962,
		0.947132, 0.274647, 0.165863,
		33.132637, 30.992220, 35.039940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434227, 31.502165, 35.309734>,  <32.469646, 30.799967, 34.923836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434227, 31.502165, 35.309734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789223, 31.471916, 35.127899>,  <33.002220, 31.453766, 35.018799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789223, 31.471916, 35.127899>,  <32.434227, 31.502165, 35.309734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789223, 31.471916, 35.127899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085267, 0.942464, -0.323251,
		0.452877, 0.325642, 0.829976,
		0.887486, -0.075623, -0.454587,
		33.055470, 31.449230, 34.991524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710075, 32.208393, 35.454098>,  <32.434227, 31.502165, 35.309734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710075, 32.208393, 35.454098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939079, 32.041718, 35.171650>,  <33.076481, 31.941711, 35.002182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939079, 32.041718, 35.171650>,  <32.710075, 32.208393, 35.454098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939079, 32.041718, 35.171650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060694, 0.837322, -0.543330,
		0.817650, 0.353918, 0.454082,
		0.572507, -0.416694, -0.706118,
		33.110832, 31.916710, 34.959816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222534, 32.696209, 35.277187>,  <32.710075, 32.208393, 35.454098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222534, 32.696209, 35.277187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169914, 32.474781, 34.948246>,  <33.138344, 32.341927, 34.750881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169914, 32.474781, 34.948246>,  <33.222534, 32.696209, 35.277187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169914, 32.474781, 34.948246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108977, 0.832606, -0.543038,
		0.985301, 0.018180, -0.169856,
		-0.131551, -0.553567, -0.822349,
		33.130447, 32.308712, 34.701542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770443, 32.910889, 34.729465>,  <33.222534, 32.696209, 35.277187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770443, 32.910889, 34.729465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454967, 32.750820, 34.542774>,  <33.265682, 32.654778, 34.430759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454967, 32.750820, 34.542774>,  <33.770443, 32.910889, 34.729465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454967, 32.750820, 34.542774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084347, 0.822416, -0.562599,
		0.608983, -0.404347, -0.682381,
		-0.788686, -0.400170, -0.466732,
		33.218361, 32.630768, 34.402756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349365, 33.217506, 34.373062>,  <33.770443, 32.910889, 34.729465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349365, 33.217506, 34.373062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371395, 32.845303, 34.517906>,  <34.384613, 32.621983, 34.604813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371395, 32.845303, 34.517906>,  <34.349365, 33.217506, 34.373062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371395, 32.845303, 34.517906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980319, 0.119254, 0.157334,
		-0.189583, 0.346321, 0.918760,
		0.055078, -0.930505, 0.362113,
		34.387920, 32.566151, 34.626541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054714, 33.090359, 34.109921>,  <34.349365, 33.217506, 34.373062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054714, 33.090359, 34.109921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433910, 33.105209, 33.983471>,  <35.661427, 33.114120, 33.907600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433910, 33.105209, 33.983471>,  <35.054714, 33.090359, 34.109921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433910, 33.105209, 33.983471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190669, -0.861493, 0.470611,
		-0.254867, -0.506410, -0.823767,
		0.947992, 0.037123, -0.316123,
		35.718307, 33.116348, 33.888634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280441, 32.444771, 33.939758>,  <35.054714, 33.090359, 34.109921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280441, 32.444771, 33.939758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615772, 32.648098, 34.018578>,  <35.816971, 32.770092, 34.065868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615772, 32.648098, 34.018578>,  <35.280441, 32.444771, 33.939758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615772, 32.648098, 34.018578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328066, -0.759041, 0.562343,
		0.435412, -0.406783, -0.803084,
		0.838325, 0.508315, 0.197044,
		35.867271, 32.800594, 34.077690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897484, 32.047371, 33.790771>,  <35.280441, 32.444771, 33.939758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897484, 32.047371, 33.790771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030174, 32.312809, 34.058979>,  <36.109791, 32.472073, 34.219906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030174, 32.312809, 34.058979>,  <35.897484, 32.047371, 33.790771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030174, 32.312809, 34.058979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403319, -0.742300, 0.535094,
		0.852813, 0.092928, -0.513882,
		0.331729, 0.663593, 0.670523,
		36.129692, 32.511887, 34.260136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579926, 31.796398, 33.866695>,  <35.897484, 32.047371, 33.790771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579926, 31.796398, 33.866695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475273, 32.036263, 34.169209>,  <36.412483, 32.180180, 34.350716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475273, 32.036263, 34.169209>,  <36.579926, 31.796398, 33.866695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475273, 32.036263, 34.169209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314452, -0.687863, 0.654190,
		0.912508, 0.408967, -0.008600,
		-0.261627, 0.599659, 0.756281,
		36.396786, 32.216160, 34.396091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031372, 31.651264, 34.321785>,  <36.579926, 31.796398, 33.866695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031372, 31.651264, 34.321785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755695, 31.838921, 34.542664>,  <36.590290, 31.951513, 34.675190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755695, 31.838921, 34.542664>,  <37.031372, 31.651264, 34.321785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755695, 31.838921, 34.542664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085053, -0.704446, 0.704643,
		0.719568, 0.532601, 0.445598,
		-0.689194, 0.469139, 0.552197,
		36.548939, 31.979662, 34.708321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346352, 31.670176, 35.001789>,  <37.031372, 31.651264, 34.321785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346352, 31.670176, 35.001789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949940, 31.708572, 35.038990>,  <36.712093, 31.731609, 35.061310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949940, 31.708572, 35.038990>,  <37.346352, 31.670176, 35.001789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949940, 31.708572, 35.038990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005859, -0.726360, 0.687289,
		0.133525, 0.680578, 0.720406,
		-0.991028, 0.095991, 0.093000,
		36.652630, 31.737370, 35.066891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175949, 31.813816, 35.839912>,  <37.346352, 31.670176, 35.001789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175949, 31.813816, 35.839912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876404, 31.661356, 35.623055>,  <36.696674, 31.569880, 35.492939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876404, 31.661356, 35.623055>,  <37.175949, 31.813816, 35.839912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876404, 31.661356, 35.623055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105192, -0.739328, 0.665078,
		-0.654318, 0.555084, 0.513564,
		-0.748867, -0.381150, -0.542146,
		36.651745, 31.547010, 35.460411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644775, 31.764788, 36.377426>,  <37.175949, 31.813816, 35.839912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644775, 31.764788, 36.377426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546822, 31.520523, 36.076195>,  <36.488049, 31.373964, 35.895454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546822, 31.520523, 36.076195>,  <36.644775, 31.764788, 36.377426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546822, 31.520523, 36.076195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034180, -0.770807, 0.636151,
		-0.968951, 0.181521, 0.167883,
		-0.244880, -0.610661, -0.753078,
		36.473358, 31.337324, 35.850269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901947, 31.534283, 36.462666>,  <36.644775, 31.764788, 36.377426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901947, 31.534283, 36.462666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061916, 31.253183, 36.227310>,  <36.157898, 31.084524, 36.086098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061916, 31.253183, 36.227310>,  <35.901947, 31.534283, 36.462666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061916, 31.253183, 36.227310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084760, -0.667569, 0.739708,
		-0.912621, -0.245954, -0.326541,
		0.399923, -0.702751, -0.588390,
		36.181892, 31.042358, 36.050793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559505, 31.048510, 36.632599>,  <35.901947, 31.534283, 36.462666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559505, 31.048510, 36.632599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854088, 30.863434, 36.435192>,  <36.030838, 30.752388, 36.316750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854088, 30.863434, 36.435192>,  <35.559505, 31.048510, 36.632599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854088, 30.863434, 36.435192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057554, -0.769732, 0.635767,
		-0.674036, -0.439809, -0.593501,
		0.736453, -0.462688, -0.493514,
		36.075024, 30.724627, 36.287136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359043, 30.428610, 36.592384>,  <35.559505, 31.048510, 36.632599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359043, 30.428610, 36.592384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755669, 30.402611, 36.547523>,  <35.993645, 30.387011, 36.520607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755669, 30.402611, 36.547523>,  <35.359043, 30.428610, 36.592384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755669, 30.402611, 36.547523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017135, -0.791884, 0.610431,
		-0.128488, -0.607203, -0.784089,
		0.991563, -0.064997, -0.112152,
		36.053139, 30.383112, 36.513878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522400, 29.681974, 36.538872>,  <35.359043, 30.428610, 36.592384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522400, 29.681974, 36.538872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867863, 29.850424, 36.649689>,  <36.075138, 29.951494, 36.716179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867863, 29.850424, 36.649689>,  <35.522400, 29.681974, 36.538872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867863, 29.850424, 36.649689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126014, -0.712520, 0.690243,
		0.488079, -0.561220, -0.668439,
		0.863655, 0.421125, 0.277044,
		36.126961, 29.976761, 36.732803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989647, 29.210438, 36.636536>,  <35.522400, 29.681974, 36.538872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989647, 29.210438, 36.636536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143570, 29.508303, 36.854675>,  <36.235924, 29.687021, 36.985558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143570, 29.508303, 36.854675>,  <35.989647, 29.210438, 36.636536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143570, 29.508303, 36.854675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205748, -0.645180, 0.735806,
		0.899775, -0.170937, -0.401480,
		0.384803, 0.744664, 0.545347,
		36.259010, 29.731701, 37.018280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673512, 29.006908, 36.845524>,  <35.989647, 29.210438, 36.636536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673512, 29.006908, 36.845524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529446, 29.258076, 37.121494>,  <36.443005, 29.408775, 37.287075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529446, 29.258076, 37.121494>,  <36.673512, 29.006908, 36.845524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529446, 29.258076, 37.121494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261328, -0.642039, 0.720759,
		0.895537, 0.439892, 0.067150,
		-0.360169, 0.627918, 0.689925,
		36.421394, 29.446451, 37.328472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016632, 28.853861, 37.381493>,  <36.673512, 29.006908, 36.845524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016632, 28.853861, 37.381493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756195, 29.100487, 37.558544>,  <36.599934, 29.248463, 37.664776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756195, 29.100487, 37.558544>,  <37.016632, 28.853861, 37.381493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756195, 29.100487, 37.558544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065163, -0.535619, 0.841942,
		0.756195, 0.577026, 0.308561,
		-0.651093, 0.616566, 0.442633,
		36.560867, 29.285456, 37.691334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394535, 29.104074, 38.047478>,  <37.016632, 28.853861, 37.381493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394535, 29.104074, 38.047478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995125, 29.125700, 38.045845>,  <36.755478, 29.138676, 38.044865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995125, 29.125700, 38.045845>,  <37.394535, 29.104074, 38.047478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995125, 29.125700, 38.045845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035651, -0.597981, 0.800717,
		0.040851, 0.799685, 0.599029,
		-0.998529, 0.054066, -0.004082,
		36.695564, 29.141920, 38.044621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246052, 29.351519, 38.693996>,  <37.394535, 29.104074, 38.047478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246052, 29.351519, 38.693996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916817, 29.166414, 38.562317>,  <36.719276, 29.055351, 38.483311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916817, 29.166414, 38.562317>,  <37.246052, 29.351519, 38.693996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916817, 29.166414, 38.562317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057910, -0.508258, 0.859256,
		-0.564948, 0.726311, 0.391545,
		-0.823092, -0.462760, -0.329200,
		36.669888, 29.027586, 38.463558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766212, 29.486420, 39.196224>,  <37.246052, 29.351519, 38.693996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766212, 29.486420, 39.196224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590927, 29.184719, 39.000641>,  <36.485756, 29.003698, 38.883293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590927, 29.184719, 39.000641>,  <36.766212, 29.486420, 39.196224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590927, 29.184719, 39.000641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207832, -0.444206, 0.871485,
		-0.874516, 0.483515, 0.037898,
		-0.438211, -0.754251, -0.488955,
		36.459465, 28.958445, 38.853954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155788, 29.351250, 39.631721>,  <36.766212, 29.486420, 39.196224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155788, 29.351250, 39.631721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234070, 29.006212, 39.445114>,  <36.281036, 28.799191, 39.333149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234070, 29.006212, 39.445114>,  <36.155788, 29.351250, 39.631721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234070, 29.006212, 39.445114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098974, -0.490656, 0.865714,
		-0.975657, -0.123246, -0.181395,
		0.195699, -0.862593, -0.466514,
		36.292778, 28.747435, 39.305161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655216, 28.827875, 39.881573>,  <36.155788, 29.351250, 39.631721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655216, 28.827875, 39.881573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952045, 28.607357, 39.729046>,  <36.130142, 28.475046, 39.637527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952045, 28.607357, 39.729046>,  <35.655216, 28.827875, 39.881573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952045, 28.607357, 39.729046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076278, -0.634616, 0.769054,
		-0.665971, -0.541603, -0.512980,
		0.742067, -0.551297, -0.381324,
		36.174667, 28.441969, 39.614651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439548, 28.119038, 39.770046>,  <35.655216, 28.827875, 39.881573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439548, 28.119038, 39.770046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838753, 28.104891, 39.790916>,  <36.078274, 28.096403, 39.803440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838753, 28.104891, 39.790916>,  <35.439548, 28.119038, 39.770046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838753, 28.104891, 39.790916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060274, -0.777705, 0.625733,
		0.018446, -0.627633, -0.778291,
		0.998012, -0.035368, 0.052175,
		36.138157, 28.094280, 39.806568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651917, 27.423922, 39.554775>,  <35.439548, 28.119038, 39.770046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651917, 27.423922, 39.554775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910801, 27.616434, 39.791241>,  <36.066132, 27.731941, 39.933121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910801, 27.616434, 39.791241>,  <35.651917, 27.423922, 39.554775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910801, 27.616434, 39.791241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016709, -0.766354, 0.642201,
		0.762124, -0.425520, -0.487954,
		0.647215, 0.481284, 0.591167,
		36.104965, 27.760818, 39.968590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200157, 26.937658, 39.721687>,  <35.651917, 27.423922, 39.554775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200157, 26.937658, 39.721687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234962, 27.210291, 40.012306>,  <36.255848, 27.373871, 40.186680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234962, 27.210291, 40.012306>,  <36.200157, 26.937658, 39.721687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234962, 27.210291, 40.012306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036062, -0.726684, 0.686025,
		0.995554, -0.085897, -0.038655,
		0.087017, 0.681581, 0.726550,
		36.261066, 27.414764, 40.230270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728107, 26.667126, 40.162743>,  <36.200157, 26.937658, 39.721687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728107, 26.667126, 40.162743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532936, 26.922186, 40.401180>,  <36.415833, 27.075222, 40.544243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532936, 26.922186, 40.401180>,  <36.728107, 26.667126, 40.162743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532936, 26.922186, 40.401180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126514, -0.624027, 0.771093,
		0.863666, 0.451652, 0.223809,
		-0.487929, 0.637652, 0.596092,
		36.386559, 27.113482, 40.580009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167637, 26.628922, 40.814487>,  <36.728107, 26.667126, 40.162743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167637, 26.628922, 40.814487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815315, 26.803976, 40.886772>,  <36.603924, 26.909010, 40.930141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815315, 26.803976, 40.886772>,  <37.167637, 26.628922, 40.814487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815315, 26.803976, 40.886772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032912, -0.437328, 0.898699,
		0.472333, 0.785632, 0.399605,
		-0.880806, 0.437637, 0.180707,
		36.551075, 26.935266, 40.940983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242447, 27.050295, 41.422096>,  <37.167637, 26.628922, 40.814487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242447, 27.050295, 41.422096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846615, 26.995907, 41.403156>,  <36.609116, 26.963274, 41.391792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846615, 26.995907, 41.403156>,  <37.242447, 27.050295, 41.422096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846615, 26.995907, 41.403156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000035, -0.329081, 0.944302,
		-0.143980, 0.934461, 0.325657,
		-0.989581, -0.135972, -0.047348,
		36.549740, 26.955114, 41.388950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906406, 27.451887, 41.980930>,  <37.242447, 27.050295, 41.422096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906406, 27.451887, 41.980930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660870, 27.153219, 41.878414>,  <36.513550, 26.974018, 41.816906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660870, 27.153219, 41.878414>,  <36.906406, 27.451887, 41.980930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660870, 27.153219, 41.878414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015273, -0.313355, 0.949513,
		-0.789284, 0.586762, 0.180946,
		-0.613839, -0.746671, -0.256288,
		36.476719, 26.929218, 41.801529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396358, 27.418568, 42.634483>,  <36.906406, 27.451887, 41.980930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396358, 27.418568, 42.634483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360275, 27.072447, 42.437256>,  <36.338627, 26.864775, 42.318920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360275, 27.072447, 42.437256>,  <36.396358, 27.418568, 42.634483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360275, 27.072447, 42.437256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015646, -0.493795, 0.869437,
		-0.995800, 0.086141, 0.031004,
		-0.090204, -0.865301, -0.493069,
		36.333214, 26.812857, 42.289333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980244, 27.047867, 42.980648>,  <36.396358, 27.418568, 42.634483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980244, 27.047867, 42.980648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157074, 26.765125, 42.759766>,  <36.263172, 26.595480, 42.627235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157074, 26.765125, 42.759766>,  <35.980244, 27.047867, 42.980648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157074, 26.765125, 42.759766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102530, -0.571771, 0.813981,
		-0.891098, -0.416459, -0.180293,
		0.442076, -0.706852, -0.552204,
		36.289696, 26.553070, 42.594105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752007, 26.458414, 43.280003>,  <35.980244, 27.047867, 42.980648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752007, 26.458414, 43.280003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099804, 26.371664, 43.102489>,  <36.308483, 26.319614, 42.995983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099804, 26.371664, 43.102489>,  <35.752007, 26.458414, 43.280003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099804, 26.371664, 43.102489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192964, -0.677909, 0.709369,
		-0.454688, -0.702428, -0.547590,
		0.869496, -0.216876, -0.443780,
		36.360653, 26.306601, 42.969357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827366, 25.795984, 43.480297>,  <35.752007, 26.458414, 43.280003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827366, 25.795984, 43.480297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189835, 25.891092, 43.340405>,  <36.407314, 25.948158, 43.256470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189835, 25.891092, 43.340405>,  <35.827366, 25.795984, 43.480297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189835, 25.891092, 43.340405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421638, -0.571970, 0.703613,
		-0.032739, -0.785057, -0.618558,
		0.906173, 0.237772, -0.349736,
		36.461685, 25.962423, 43.235485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178181, 25.098406, 43.364033>,  <35.827366, 25.795984, 43.480297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178181, 25.098406, 43.364033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445728, 25.391666, 43.413177>,  <36.606258, 25.567623, 43.442665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445728, 25.391666, 43.413177>,  <36.178181, 25.098406, 43.364033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445728, 25.391666, 43.413177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449066, -0.530217, 0.719173,
		0.592409, -0.425861, -0.683882,
		0.668873, 0.733153, 0.122866,
		36.646389, 25.611612, 43.450039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850143, 24.812428, 43.456837>,  <36.178181, 25.098406, 43.364033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850143, 24.812428, 43.456837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885460, 25.174868, 43.622334>,  <36.906651, 25.392332, 43.721630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885460, 25.174868, 43.622334>,  <36.850143, 24.812428, 43.456837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885460, 25.174868, 43.622334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439780, -0.408150, 0.800004,
		0.893755, 0.111320, -0.434523,
		0.088294, 0.906102, 0.413742,
		36.911949, 25.446699, 43.746456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561401, 24.852467, 43.677132>,  <36.850143, 24.812428, 43.456837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561401, 24.852467, 43.677132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366104, 25.138802, 43.876808>,  <37.248924, 25.310602, 43.996613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366104, 25.138802, 43.876808>,  <37.561401, 24.852467, 43.677132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366104, 25.138802, 43.876808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415407, -0.312417, 0.854303,
		0.767499, 0.624476, -0.144828,
		-0.488245, 0.715839, 0.499191,
		37.219631, 25.353554, 44.026566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131481, 25.136366, 44.171375>,  <37.561401, 24.852467, 43.677132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131481, 25.136366, 44.171375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772797, 25.240414, 44.314625>,  <37.557587, 25.302843, 44.400574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772797, 25.240414, 44.314625>,  <38.131481, 25.136366, 44.171375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772797, 25.240414, 44.314625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313557, -0.197743, 0.928752,
		0.312402, 0.945112, 0.095756,
		-0.896709, 0.260119, 0.358122,
		37.503784, 25.318449, 44.422062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312695, 25.418568, 44.833298>,  <38.131481, 25.136366, 44.171375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312695, 25.418568, 44.833298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915474, 25.398026, 44.875668>,  <37.677143, 25.385700, 44.901089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915474, 25.398026, 44.875668>,  <38.312695, 25.418568, 44.833298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915474, 25.398026, 44.875668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115360, -0.245438, 0.962524,
		-0.023432, 0.968051, 0.249656,
		-0.993047, -0.051354, 0.105923,
		37.617561, 25.382620, 44.907444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067123, 25.942463, 45.384052>,  <38.312695, 25.418568, 44.833298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067123, 25.942463, 45.384052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819489, 25.629356, 45.358704>,  <37.670910, 25.441492, 45.343494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819489, 25.629356, 45.358704>,  <38.067123, 25.942463, 45.384052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819489, 25.629356, 45.358704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073410, -0.138023, 0.987705,
		-0.781887, 0.606819, 0.142910,
		-0.619083, -0.782765, -0.063371,
		37.633762, 25.394527, 45.339691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615490, 26.036879, 45.874138>,  <38.067123, 25.942463, 45.384052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615490, 26.036879, 45.874138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621357, 25.645885, 45.789940>,  <37.624878, 25.411289, 45.739422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621357, 25.645885, 45.789940>,  <37.615490, 26.036879, 45.874138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621357, 25.645885, 45.789940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166653, -0.205185, 0.964430,
		-0.985906, -0.049228, 0.159891,
		0.014670, -0.977484, -0.210498,
		37.625759, 25.352640, 45.726791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282749, 25.874008, 46.440670>,  <37.615490, 26.036879, 45.874138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282749, 25.874008, 46.440670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430744, 26.208429, 46.602718>,  <38.519539, 26.409082, 46.699947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430744, 26.208429, 46.602718>,  <38.282749, 25.874008, 46.440670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430744, 26.208429, 46.602718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405343, 0.537641, -0.739351,
		-0.835948, 0.109334, 0.537807,
		0.369984, 0.836055, 0.405123,
		38.541740, 26.459246, 46.724255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800266, 26.443050, 46.448483>,  <38.282749, 25.874008, 46.440670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800266, 26.443050, 46.448483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158569, 26.620853, 46.450695>,  <38.373550, 26.727535, 46.452023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158569, 26.620853, 46.450695>,  <37.800266, 26.443050, 46.448483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158569, 26.620853, 46.450695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355992, 0.724720, -0.589958,
		-0.266247, 0.526492, 0.807415,
		0.895758, 0.444508, 0.005528,
		38.427296, 26.754206, 46.452354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610214, 27.160862, 46.391640>,  <37.800266, 26.443050, 46.448483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610214, 27.160862, 46.391640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002010, 27.131262, 46.316677>,  <38.237087, 27.113503, 46.271698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002010, 27.131262, 46.316677>,  <37.610214, 27.160862, 46.391640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002010, 27.131262, 46.316677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133717, 0.457040, -0.879338,
		0.150724, 0.886363, 0.437771,
		0.979491, -0.074000, -0.187408,
		38.295856, 27.109062, 46.260456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857166, 27.901979, 46.313293>,  <37.610214, 27.160862, 46.391640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857166, 27.901979, 46.313293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096317, 27.645247, 46.121208>,  <38.239807, 27.491207, 46.005959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096317, 27.645247, 46.121208>,  <37.857166, 27.901979, 46.313293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096317, 27.645247, 46.121208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081924, 0.547008, -0.833109,
		0.797393, 0.537435, 0.274460,
		0.597874, -0.641831, -0.480209,
		38.275681, 27.452698, 45.977146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406517, 28.390074, 45.981239>,  <37.857166, 27.901979, 46.313293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406517, 28.390074, 45.981239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395008, 28.038263, 45.791248>,  <38.388103, 27.827177, 45.677254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395008, 28.038263, 45.791248>,  <38.406517, 28.390074, 45.981239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395008, 28.038263, 45.791248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103469, 0.475243, -0.873750,
		0.994217, 0.024009, -0.104675,
		-0.028768, -0.879527, -0.474978,
		38.386379, 27.774405, 45.648754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778751, 28.432350, 45.357300>,  <38.406517, 28.390074, 45.981239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778751, 28.432350, 45.357300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566811, 28.097843, 45.300858>,  <38.439644, 27.897139, 45.266994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566811, 28.097843, 45.300858>,  <38.778751, 28.432350, 45.357300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566811, 28.097843, 45.300858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160554, 0.262278, -0.951542,
		0.832752, -0.481526, -0.273235,
		-0.529856, -0.836267, -0.141101,
		38.407852, 27.846964, 45.258526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739014, 28.497143, 44.676483>,  <38.778751, 28.432350, 45.357300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739014, 28.497143, 44.676483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478321, 28.209114, 44.771770>,  <38.321907, 28.036297, 44.828945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478321, 28.209114, 44.771770>,  <38.739014, 28.497143, 44.676483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478321, 28.209114, 44.771770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541907, 0.222339, -0.810495,
		0.530647, -0.657316, -0.535116,
		-0.651728, -0.720070, 0.238221,
		38.282803, 27.993093, 44.843239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692974, 28.010548, 44.020546>,  <38.739014, 28.497143, 44.676483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692974, 28.010548, 44.020546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358818, 27.972633, 44.237114>,  <38.158325, 27.949884, 44.367054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358818, 27.972633, 44.237114>,  <38.692974, 28.010548, 44.020546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358818, 27.972633, 44.237114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549547, 0.163526, -0.819303,
		-0.010877, -0.981975, -0.188698,
		-0.835392, -0.094787, 0.541420,
		38.108200, 27.944197, 44.399540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262093, 27.566517, 43.624634>,  <38.692974, 28.010548, 44.020546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262093, 27.566517, 43.624634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038860, 27.807980, 43.852367>,  <37.904922, 27.952858, 43.989010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038860, 27.807980, 43.852367>,  <38.262093, 27.566517, 43.624634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038860, 27.807980, 43.852367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496395, 0.306939, -0.812022,
		-0.664936, -0.735789, 0.128357,
		-0.558079, 0.603659, 0.569337,
		37.871437, 27.989077, 44.023167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640438, 27.446901, 43.340481>,  <38.262093, 27.566517, 43.624634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640438, 27.446901, 43.340481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622025, 27.788248, 43.548191>,  <37.610977, 27.993057, 43.672817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622025, 27.788248, 43.548191>,  <37.640438, 27.446901, 43.340481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622025, 27.788248, 43.548191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358449, 0.471094, -0.805969,
		-0.932414, -0.223234, 0.284203,
		-0.046033, 0.853369, 0.519272,
		37.608215, 28.044258, 43.703972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005058, 27.830336, 43.172516>,  <37.640438, 27.446901, 43.340481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005058, 27.830336, 43.172516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253250, 28.105101, 43.323860>,  <37.402164, 28.269960, 43.414665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253250, 28.105101, 43.323860>,  <37.005058, 27.830336, 43.172516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253250, 28.105101, 43.323860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226802, 0.619029, -0.751907,
		-0.750712, 0.380728, 0.539887,
		0.620478, 0.686913, 0.378362,
		37.439392, 28.311174, 43.437370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723473, 28.520203, 43.047729>,  <37.005058, 27.830336, 43.172516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723473, 28.520203, 43.047729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105465, 28.610197, 43.125076>,  <37.334660, 28.664194, 43.171482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105465, 28.610197, 43.125076>,  <36.723473, 28.520203, 43.047729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105465, 28.610197, 43.125076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022672, 0.705248, -0.708598,
		-0.295793, 0.672315, 0.678601,
		0.954983, 0.224984, 0.193365,
		37.391960, 28.677692, 43.183086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727612, 29.347868, 43.175259>,  <36.723473, 28.520203, 43.047729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727612, 29.347868, 43.175259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068722, 29.175303, 43.057510>,  <37.273388, 29.071762, 42.986862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068722, 29.175303, 43.057510>,  <36.727612, 29.347868, 43.175259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068722, 29.175303, 43.057510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062470, 0.643841, -0.762605,
		0.518528, 0.631941, 0.576002,
		0.852775, -0.431415, -0.294373,
		37.324554, 29.045877, 42.969200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102825, 29.886646, 42.927094>,  <36.727612, 29.347868, 43.175259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102825, 29.886646, 42.927094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291889, 29.564964, 42.782955>,  <37.405327, 29.371956, 42.696472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291889, 29.564964, 42.782955>,  <37.102825, 29.886646, 42.927094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291889, 29.564964, 42.782955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183038, 0.489580, -0.852530,
		0.862028, 0.336996, 0.378603,
		0.472656, -0.804204, -0.360349,
		37.433685, 29.323704, 42.674850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747932, 30.185598, 42.565300>,  <37.102825, 29.886646, 42.927094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747932, 30.185598, 42.565300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672066, 29.821527, 42.418003>,  <37.626545, 29.603085, 42.329624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672066, 29.821527, 42.418003>,  <37.747932, 30.185598, 42.565300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672066, 29.821527, 42.418003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432977, 0.259084, -0.863369,
		0.881226, -0.323191, 0.344947,
		-0.189662, -0.910177, -0.368246,
		37.615166, 29.548473, 42.307529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371906, 29.902487, 42.157074>,  <37.747932, 30.185598, 42.565300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371906, 29.902487, 42.157074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037296, 29.736691, 42.013729>,  <37.836529, 29.637213, 41.927723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037296, 29.736691, 42.013729>,  <38.371906, 29.902487, 42.157074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037296, 29.736691, 42.013729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203387, 0.372413, -0.905507,
		0.508783, -0.830365, -0.227230,
		-0.836525, -0.414491, -0.358363,
		37.786339, 29.612343, 41.906219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560173, 29.808268, 41.513649>,  <38.371906, 29.902487, 42.157074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560173, 29.808268, 41.513649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163582, 29.756733, 41.505997>,  <37.925625, 29.725813, 41.501408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163582, 29.756733, 41.505997>,  <38.560173, 29.808268, 41.513649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163582, 29.756733, 41.505997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036704, 0.417272, -0.908040,
		0.124970, -0.899603, -0.418446,
		-0.991481, -0.128836, -0.019128,
		37.866138, 29.718082, 41.500259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458435, 29.736923, 40.795090>,  <38.560173, 29.808268, 41.513649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458435, 29.736923, 40.795090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086540, 29.786217, 40.933891>,  <37.863403, 29.815794, 41.017174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086540, 29.786217, 40.933891>,  <38.458435, 29.736923, 40.795090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086540, 29.786217, 40.933891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232824, 0.533348, -0.813224,
		-0.285291, -0.836871, -0.467179,
		-0.929732, 0.123235, 0.347003,
		37.807621, 29.823187, 41.037991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132633, 29.700151, 40.217476>,  <38.458435, 29.736923, 40.795090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132633, 29.700151, 40.217476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892471, 29.892004, 40.473434>,  <37.748375, 30.007116, 40.627010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892471, 29.892004, 40.473434>,  <38.132633, 29.700151, 40.217476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892471, 29.892004, 40.473434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328514, 0.581607, -0.744186,
		-0.729102, -0.657029, -0.191635,
		-0.600408, 0.479632, 0.639893,
		37.712349, 30.035894, 40.665401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430435, 29.604475, 40.034740>,  <38.132633, 29.700151, 40.217476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430435, 29.604475, 40.034740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486355, 29.952124, 40.224514>,  <37.519905, 30.160713, 40.338379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486355, 29.952124, 40.224514>,  <37.430435, 29.604475, 40.034740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486355, 29.952124, 40.224514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215938, 0.494362, -0.842008,
		-0.966347, 0.015264, 0.256787,
		0.139798, 0.869122, 0.474430,
		37.528294, 30.212860, 40.366844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002213, 30.025373, 39.667557>,  <37.430435, 29.604475, 40.034740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002213, 30.025373, 39.667557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212257, 30.282354, 39.890812>,  <37.338284, 30.436543, 40.024765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212257, 30.282354, 39.890812>,  <37.002213, 30.025373, 39.667557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212257, 30.282354, 39.890812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166672, 0.720767, -0.672841,
		-0.834554, 0.260290, 0.485561,
		0.525110, 0.642451, 0.558136,
		37.369789, 30.475090, 40.058254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679741, 30.675167, 39.694000>,  <37.002213, 30.025373, 39.667557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679741, 30.675167, 39.694000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054272, 30.777647, 39.790039>,  <37.278992, 30.839136, 39.847664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054272, 30.777647, 39.790039>,  <36.679741, 30.675167, 39.694000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054272, 30.777647, 39.790039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073466, 0.811622, -0.579546,
		-0.343351, 0.525006, 0.778767,
		0.936329, 0.256201, 0.240101,
		37.335171, 30.854507, 39.862068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728176, 31.359015, 39.593704>,  <36.679741, 30.675167, 39.694000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728176, 31.359015, 39.593704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118519, 31.271791, 39.598560>,  <37.352726, 31.219458, 39.601475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118519, 31.271791, 39.598560>,  <36.728176, 31.359015, 39.593704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118519, 31.271791, 39.598560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121974, 0.498068, -0.858517,
		0.181159, 0.839273, 0.512642,
		0.975861, -0.218057, 0.012140,
		37.411278, 31.206375, 39.602203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136295, 32.012512, 39.621319>,  <36.728176, 31.359015, 39.593704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136295, 32.012512, 39.621319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366169, 31.726128, 39.462757>,  <37.504093, 31.554296, 39.367619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366169, 31.726128, 39.462757>,  <37.136295, 32.012512, 39.621319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366169, 31.726128, 39.462757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018270, 0.495483, -0.868425,
		0.818169, 0.491830, 0.297828,
		0.574687, -0.715961, -0.396403,
		37.538574, 31.511339, 39.343838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565029, 32.376427, 39.142094>,  <37.136295, 32.012512, 39.621319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565029, 32.376427, 39.142094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617432, 31.995180, 39.032982>,  <37.648872, 31.766432, 38.967514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617432, 31.995180, 39.032982>,  <37.565029, 32.376427, 39.142094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617432, 31.995180, 39.032982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278910, 0.299471, -0.912429,
		0.951340, 0.043451, 0.305065,
		0.131004, -0.953115, -0.272780,
		37.656734, 31.709246, 38.951149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128830, 32.434097, 38.809994>,  <37.565029, 32.376427, 39.142094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128830, 32.434097, 38.809994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965946, 32.092350, 38.680851>,  <37.868214, 31.887302, 38.603363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965946, 32.092350, 38.680851>,  <38.128830, 32.434097, 38.809994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965946, 32.092350, 38.680851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342319, 0.184957, -0.921200,
		0.846756, -0.485645, 0.217149,
		-0.407212, -0.854365, -0.322859,
		37.843781, 31.836040, 38.583992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690681, 32.080521, 38.517075>,  <38.128830, 32.434097, 38.809994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690681, 32.080521, 38.517075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351097, 31.944618, 38.355171>,  <38.147346, 31.863077, 38.258030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351097, 31.944618, 38.355171>,  <38.690681, 32.080521, 38.517075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351097, 31.944618, 38.355171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390278, 0.113306, -0.913699,
		0.356292, -0.933665, 0.036405,
		-0.848964, -0.339752, -0.404759,
		38.096409, 31.842693, 38.233742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968887, 31.597416, 37.969109>,  <38.690681, 32.080521, 38.517075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968887, 31.597416, 37.969109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588657, 31.670723, 37.868858>,  <38.360519, 31.714706, 37.808708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588657, 31.670723, 37.868858>,  <38.968887, 31.597416, 37.969109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588657, 31.670723, 37.868858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257938, 0.016790, -0.966016,
		-0.172832, -0.982919, -0.063232,
		-0.950577, 0.183268, -0.250630,
		38.303486, 31.725702, 37.793671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881783, 31.120874, 37.432228>,  <38.968887, 31.597416, 37.969109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881783, 31.120874, 37.432228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605400, 31.409801, 37.420601>,  <38.439571, 31.583157, 37.413624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605400, 31.409801, 37.420601>,  <38.881783, 31.120874, 37.432228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605400, 31.409801, 37.420601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224330, 0.176020, -0.958484,
		-0.687213, -0.668787, -0.283659,
		-0.690952, 0.722316, -0.029066,
		38.398113, 31.626495, 37.411880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410667, 31.060656, 36.838520>,  <38.881783, 31.120874, 37.432228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410667, 31.060656, 36.838520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422386, 31.446163, 36.944569>,  <38.429417, 31.677467, 37.008198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422386, 31.446163, 36.944569>,  <38.410667, 31.060656, 36.838520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422386, 31.446163, 36.944569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169125, 0.256629, -0.951598,
		-0.985159, 0.072714, -0.155480,
		0.029294, 0.963771, 0.265118,
		38.431175, 31.735294, 37.024105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179943, 31.408882, 36.201111>,  <38.410667, 31.060656, 36.838520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179943, 31.408882, 36.201111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321667, 31.722973, 36.404240>,  <38.406700, 31.911427, 36.526115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321667, 31.722973, 36.404240>,  <38.179943, 31.408882, 36.201111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321667, 31.722973, 36.404240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212783, 0.461108, -0.861454,
		-0.910596, 0.413280, -0.003707,
		0.354312, 0.785226, 0.507822,
		38.427959, 31.958540, 36.556587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043179, 31.920477, 35.800846>,  <38.179943, 31.408882, 36.201111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043179, 31.920477, 35.800846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337643, 32.067020, 36.028477>,  <38.514320, 32.154945, 36.165054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337643, 32.067020, 36.028477>,  <38.043179, 31.920477, 35.800846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337643, 32.067020, 36.028477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420172, 0.411783, -0.808635,
		-0.530587, 0.834396, 0.149205,
		0.736161, 0.366359, 0.569076,
		38.558491, 32.176929, 36.199200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214642, 32.503384, 35.450726>,  <38.043179, 31.920477, 35.800846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214642, 32.503384, 35.450726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525288, 32.501911, 35.702713>,  <38.711674, 32.501030, 35.853905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525288, 32.501911, 35.702713>,  <38.214642, 32.503384, 35.450726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525288, 32.501911, 35.702713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483518, 0.644496, -0.592314,
		-0.403832, 0.764599, 0.502303,
		0.776615, -0.003677, 0.629965,
		38.758270, 32.500809, 35.891701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312256, 33.184090, 35.668892>,  <38.214642, 32.503384, 35.450726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312256, 33.184090, 35.668892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664055, 32.995789, 35.696823>,  <38.875134, 32.882809, 35.713581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664055, 32.995789, 35.696823>,  <38.312256, 33.184090, 35.668892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664055, 32.995789, 35.696823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413085, 0.682274, -0.603211,
		0.236319, 0.559368, 0.794519,
		0.879497, -0.470754, 0.069832,
		38.927902, 32.854561, 35.717773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841621, 33.680660, 35.900925>,  <38.312256, 33.184090, 35.668892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841621, 33.680660, 35.900925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033928, 33.382687, 35.715912>,  <39.149311, 33.203903, 35.604904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033928, 33.382687, 35.715912>,  <38.841621, 33.680660, 35.900925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033928, 33.382687, 35.715912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418280, 0.658448, -0.625690,
		0.770653, 0.107340, 0.628150,
		0.480766, -0.744932, -0.462537,
		39.178158, 33.159206, 35.577152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424503, 33.953659, 35.865528>,  <38.841621, 33.680660, 35.900925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424503, 33.953659, 35.865528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381424, 33.669498, 35.587326>,  <39.355576, 33.499004, 35.420403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381424, 33.669498, 35.587326>,  <39.424503, 33.953659, 35.865528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381424, 33.669498, 35.587326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358621, 0.624719, -0.693626,
		0.927250, -0.324127, 0.187482,
		-0.107699, -0.710400, -0.695509,
		39.349113, 33.456379, 35.378674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797146, 34.397602, 35.507843>,  <39.424503, 33.953659, 35.865528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797146, 34.397602, 35.507843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719151, 34.055408, 35.315956>,  <39.672352, 33.850094, 35.200825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719151, 34.055408, 35.315956>,  <39.797146, 34.397602, 35.507843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719151, 34.055408, 35.315956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296973, 0.414653, -0.860156,
		0.934765, -0.310186, 0.173201,
		-0.194991, -0.855480, -0.479720,
		39.660652, 33.798763, 35.172039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422470, 34.155895, 35.205482>,  <39.797146, 34.397602, 35.507843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422470, 34.155895, 35.205482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100765, 34.051933, 34.991714>,  <39.907742, 33.989555, 34.863453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100765, 34.051933, 34.991714>,  <40.422470, 34.155895, 35.205482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100765, 34.051933, 34.991714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267004, 0.645375, -0.715682,
		0.530909, -0.718292, -0.449658,
		-0.804266, -0.259902, -0.534422,
		39.859486, 33.973961, 34.831387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699619, 33.807636, 34.605530>,  <40.422470, 34.155895, 35.205482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699619, 33.807636, 34.605530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343113, 33.969215, 34.523094>,  <40.129208, 34.066162, 34.473633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343113, 33.969215, 34.523094>,  <40.699619, 33.807636, 34.605530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343113, 33.969215, 34.523094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407976, 0.515838, -0.753304,
		-0.197987, -0.755473, -0.624549,
		-0.891267, 0.403946, -0.206085,
		40.075733, 34.090401, 34.461269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559052, 33.777550, 33.808735>,  <40.699619, 33.807636, 34.605530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559052, 33.777550, 33.808735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356506, 34.081089, 33.972565>,  <40.234982, 34.263210, 34.070862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356506, 34.081089, 33.972565>,  <40.559052, 33.777550, 33.808735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356506, 34.081089, 33.972565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355540, 0.616441, -0.702561,
		-0.785616, -0.210126, -0.581940,
		-0.506358, 0.758846, 0.409577,
		40.204597, 34.308743, 34.095436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052532, 34.072254, 33.304794>,  <40.559052, 33.777550, 33.808735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052532, 34.072254, 33.304794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175922, 34.353661, 33.560890>,  <40.249954, 34.522507, 33.714546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175922, 34.353661, 33.560890>,  <40.052532, 34.072254, 33.304794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175922, 34.353661, 33.560890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358760, 0.537312, -0.763274,
		-0.880986, 0.465141, -0.086649,
		0.308473, 0.703520, 0.640238,
		40.268463, 34.564716, 33.752960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878769, 34.695152, 33.078346>,  <40.052532, 34.072254, 33.304794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878769, 34.695152, 33.078346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209316, 34.747002, 33.297550>,  <40.407642, 34.778111, 33.429073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209316, 34.747002, 33.297550>,  <39.878769, 34.695152, 33.078346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209316, 34.747002, 33.297550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366770, 0.614551, -0.698432,
		-0.427315, 0.778155, 0.460301,
		0.826367, 0.129625, 0.548010,
		40.457226, 34.785889, 33.461952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106380, 35.345085, 33.367832>,  <39.878769, 34.695152, 33.078346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106380, 35.345085, 33.367832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448200, 35.157482, 33.278591>,  <40.653294, 35.044922, 33.225048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448200, 35.157482, 33.278591>,  <40.106380, 35.345085, 33.367832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448200, 35.157482, 33.278591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262139, 0.760331, -0.594290,
		0.448357, 0.449367, 0.772687,
		0.854552, -0.469006, -0.223103,
		40.704567, 35.016781, 33.211658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556053, 35.835869, 33.640804>,  <40.106380, 35.345085, 33.367832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556053, 35.835869, 33.640804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631962, 35.611683, 33.318348>,  <40.677509, 35.477173, 33.124874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631962, 35.611683, 33.318348>,  <40.556053, 35.835869, 33.640804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631962, 35.611683, 33.318348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182816, 0.826875, -0.531842,
		0.964657, -0.046445, 0.259383,
		0.189775, -0.560464, -0.806142,
		40.688896, 35.443542, 33.076504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327915, 35.795177, 33.426273>,  <40.556053, 35.835869, 33.640804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327915, 35.795177, 33.426273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305218, 35.418930, 33.560150>,  <41.291599, 35.193184, 33.640476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305218, 35.418930, 33.560150>,  <41.327915, 35.795177, 33.426273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305218, 35.418930, 33.560150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383941, -0.288896, -0.877000,
		0.921612, -0.178270, -0.344747,
		-0.056747, -0.940616, 0.334695,
		41.288193, 35.136745, 33.660561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769848, 35.375137, 33.069939>,  <41.327915, 35.795177, 33.426273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769848, 35.375137, 33.069939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457314, 35.169640, 33.211693>,  <41.269794, 35.046341, 33.296745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457314, 35.169640, 33.211693>,  <41.769848, 35.375137, 33.069939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457314, 35.169640, 33.211693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354608, -0.101829, -0.929454,
		0.513587, -0.851879, -0.102615,
		-0.781333, -0.513744, 0.354381,
		41.222912, 35.015518, 33.318008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946964, 36.068729, 33.138737>,  <41.769848, 35.375137, 33.069939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946964, 36.068729, 33.138737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327148, 36.041260, 33.259998>,  <42.555260, 36.024776, 33.332756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327148, 36.041260, 33.259998>,  <41.946964, 36.068729, 33.138737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327148, 36.041260, 33.259998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059602, -0.997456, -0.039090,
		0.305072, 0.019085, -0.952138,
		0.950462, -0.068674, 0.303158,
		42.612286, 36.020657, 33.350945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413383, 35.719936, 32.678604>,  <41.946964, 36.068729, 33.138737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413383, 35.719936, 32.678604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550545, 35.647083, 33.047222>,  <42.632839, 35.603371, 33.268394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550545, 35.647083, 33.047222>,  <42.413383, 35.719936, 32.678604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550545, 35.647083, 33.047222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103298, -0.967764, -0.229700,
		0.933675, 0.173958, -0.313032,
		0.342899, -0.182130, 0.921547,
		42.653416, 35.592445, 33.323685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068516, 35.374157, 32.597763>,  <42.413383, 35.719936, 32.678604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068516, 35.374157, 32.597763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965893, 35.275845, 32.971664>,  <42.904320, 35.216858, 33.196007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965893, 35.275845, 32.971664>,  <43.068516, 35.374157, 32.597763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965893, 35.275845, 32.971664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150783, -0.965464, -0.212473,
		0.954695, 0.086434, 0.284757,
		-0.256558, -0.245783, 0.934756,
		42.888924, 35.202110, 33.252090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613304, 34.895046, 32.917999>,  <43.068516, 35.374157, 32.597763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613304, 34.895046, 32.917999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269802, 34.835629, 33.114155>,  <43.063702, 34.799976, 33.231850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269802, 34.835629, 33.114155>,  <43.613304, 34.895046, 32.917999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269802, 34.835629, 33.114155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211320, -0.974546, 0.074858,
		0.466786, 0.167913, 0.868284,
		-0.858752, -0.148543, 0.490388,
		43.012177, 34.791065, 33.261272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765892, 34.319683, 33.424686>,  <43.613304, 34.895046, 32.917999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765892, 34.319683, 33.424686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369560, 34.344555, 33.376694>,  <43.131763, 34.359478, 33.347897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369560, 34.344555, 33.376694>,  <43.765892, 34.319683, 33.424686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369560, 34.344555, 33.376694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061726, -0.998065, -0.007460,
		-0.120212, 0.000014, 0.992748,
		-0.990827, 0.062175, -0.119981,
		43.072311, 34.363209, 33.340698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536259, 33.908356, 33.887394>,  <43.765892, 34.319683, 33.424686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536259, 33.908356, 33.887394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238106, 33.922649, 33.621124>,  <43.059216, 33.931225, 33.461361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238106, 33.922649, 33.621124>,  <43.536259, 33.908356, 33.887394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238106, 33.922649, 33.621124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054153, -0.998508, 0.007037,
		-0.664433, 0.041294, 0.746206,
		-0.745384, 0.035734, -0.665678,
		43.014492, 33.933369, 33.421421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025410, 33.454697, 34.054646>,  <43.536259, 33.908356, 33.887394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025410, 33.454697, 34.054646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932858, 33.513073, 33.669903>,  <42.877327, 33.548100, 33.439056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932858, 33.513073, 33.669903>,  <43.025410, 33.454697, 34.054646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932858, 33.513073, 33.669903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127508, -0.984705, -0.118731,
		-0.964472, 0.095172, 0.246447,
		-0.231378, 0.145936, -0.961856,
		42.863445, 33.556854, 33.381348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403526, 32.996704, 33.935444>,  <43.025410, 33.454697, 34.054646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403526, 32.996704, 33.935444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551579, 33.092556, 33.576427>,  <42.640411, 33.150066, 33.361019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551579, 33.092556, 33.576427>,  <42.403526, 32.996704, 33.935444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551579, 33.092556, 33.576427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025639, -0.968426, -0.247979,
		-0.928625, 0.068773, -0.364589,
		0.370132, 0.239627, -0.897542,
		42.662617, 33.164444, 33.307163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898537, 32.786354, 33.436859>,  <42.403526, 32.996704, 33.935444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898537, 32.786354, 33.436859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270874, 32.793247, 33.290855>,  <42.494278, 32.797382, 33.203255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270874, 32.793247, 33.290855>,  <41.898537, 32.786354, 33.436859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270874, 32.793247, 33.290855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035778, -0.989790, -0.137971,
		-0.363656, 0.141489, -0.920725,
		0.930846, 0.017232, -0.365005,
		42.550129, 32.798416, 33.181355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859135, 32.409611, 32.859921>,  <41.898537, 32.786354, 33.436859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859135, 32.409611, 32.859921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255974, 32.418274, 32.909351>,  <42.494076, 32.423470, 32.939011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255974, 32.418274, 32.909351>,  <41.859135, 32.409611, 32.859921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255974, 32.418274, 32.909351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037930, -0.990668, -0.130916,
		0.119590, 0.134568, -0.983661,
		0.992099, 0.021655, 0.123579,
		42.553604, 32.424770, 32.946426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082844, 31.895824, 32.418964>,  <41.859135, 32.409611, 32.859921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082844, 31.895824, 32.418964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403297, 31.919409, 32.657196>,  <42.595570, 31.933559, 32.800137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403297, 31.919409, 32.657196>,  <42.082844, 31.895824, 32.418964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403297, 31.919409, 32.657196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040995, -0.998204, 0.043674,
		0.597084, -0.010573, -0.802109,
		0.801131, 0.058960, 0.595578,
		42.643635, 31.937098, 32.835869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558224, 31.306980, 32.124588>,  <42.082844, 31.895824, 32.418964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558224, 31.306980, 32.124588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673885, 31.411638, 32.492920>,  <42.743282, 31.474434, 32.713921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673885, 31.411638, 32.492920>,  <42.558224, 31.306980, 32.124588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673885, 31.411638, 32.492920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077541, -0.965164, 0.249892,
		0.954136, -0.000856, -0.299372,
		0.289157, 0.261645, 0.920831,
		42.760632, 31.490131, 32.769169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214771, 30.838348, 32.303535>,  <42.558224, 31.306980, 32.124588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214771, 30.838348, 32.303535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036961, 30.965326, 32.638588>,  <42.930275, 31.041513, 32.839619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036961, 30.965326, 32.638588>,  <43.214771, 30.838348, 32.303535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036961, 30.965326, 32.638588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161568, -0.948177, 0.273598,
		0.881075, -0.013713, 0.472777,
		-0.444524, 0.317446, 0.837631,
		42.903603, 31.060560, 32.889877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567562, 30.527870, 32.803471>,  <43.214771, 30.838348, 32.303535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567562, 30.527870, 32.803471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224918, 30.648947, 32.970612>,  <43.019333, 30.721594, 33.070896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224918, 30.648947, 32.970612>,  <43.567562, 30.527870, 32.803471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224918, 30.648947, 32.970612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071986, -0.872034, 0.484123,
		0.510926, 0.384622, 0.768779,
		-0.856605, 0.302692, 0.417857,
		42.967937, 30.739754, 33.095970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511658, 30.091272, 33.340019>,  <43.567562, 30.527870, 32.803471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511658, 30.091272, 33.340019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142456, 30.244589, 33.353638>,  <42.920937, 30.336578, 33.361809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142456, 30.244589, 33.353638>,  <43.511658, 30.091272, 33.340019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142456, 30.244589, 33.353638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349389, -0.871850, 0.343227,
		0.161239, 0.304903, 0.938635,
		-0.923000, 0.383290, 0.034046,
		42.865555, 30.359575, 33.363850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258080, 30.056543, 34.055515>,  <43.511658, 30.091272, 33.340019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258080, 30.056543, 34.055515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941494, 30.061695, 33.811085>,  <42.751541, 30.064785, 33.664425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941494, 30.061695, 33.811085>,  <43.258080, 30.056543, 34.055515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941494, 30.061695, 33.811085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338975, -0.841186, 0.421311,
		-0.508604, 0.540593, 0.670135,
		-0.791466, 0.012878, -0.611077,
		42.704056, 30.065559, 33.627762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696102, 29.911886, 34.490719>,  <43.258080, 30.056543, 34.055515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696102, 29.911886, 34.490719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601082, 29.840549, 34.108772>,  <42.544071, 29.797747, 33.879604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601082, 29.840549, 34.108772>,  <42.696102, 29.911886, 34.490719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601082, 29.840549, 34.108772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422483, -0.866187, 0.266885,
		-0.874688, 0.466811, 0.130415,
		-0.237549, -0.178343, -0.954864,
		42.529816, 29.787046, 33.822311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084103, 29.631552, 34.431728>,  <42.696102, 29.911886, 34.490719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084103, 29.631552, 34.431728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233540, 29.510220, 34.081089>,  <42.323204, 29.437420, 33.870705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233540, 29.510220, 34.081089>,  <42.084103, 29.631552, 34.431728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233540, 29.510220, 34.081089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465550, -0.878693, 0.105646,
		-0.802303, 0.368629, -0.469492,
		0.373595, -0.303332, -0.876593,
		42.345619, 29.419220, 33.818111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580742, 29.422668, 34.020496>,  <42.084103, 29.631552, 34.431728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580742, 29.422668, 34.020496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916130, 29.235292, 33.909115>,  <42.117363, 29.122868, 33.842285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916130, 29.235292, 33.909115>,  <41.580742, 29.422668, 34.020496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916130, 29.235292, 33.909115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467631, -0.880844, 0.073726,
		-0.279812, 0.068398, -0.957615,
		0.838466, -0.468440, -0.278456,
		42.167671, 29.094761, 33.825577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287903, 28.856102, 33.606796>,  <41.580742, 29.422668, 34.020496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287903, 28.856102, 33.606796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664799, 28.742678, 33.678093>,  <41.890938, 28.674623, 33.720871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664799, 28.742678, 33.678093>,  <41.287903, 28.856102, 33.606796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664799, 28.742678, 33.678093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297513, -0.953039, 0.056588,
		0.153826, -0.106349, -0.982358,
		0.942244, -0.283560, 0.178242,
		41.947472, 28.657610, 33.731567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379536, 28.211754, 33.162189>,  <41.287903, 28.856102, 33.606796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379536, 28.211754, 33.162189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664104, 28.183065, 33.441830>,  <41.834846, 28.165852, 33.609615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664104, 28.183065, 33.441830>,  <41.379536, 28.211754, 33.162189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664104, 28.183065, 33.441830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095588, -0.995409, -0.004848,
		0.696238, -0.063377, -0.715008,
		0.711419, -0.071722, 0.699099,
		41.877529, 28.161549, 33.651558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927185, 27.684349, 33.013294>,  <41.379536, 28.211754, 33.162189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927185, 27.684349, 33.013294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906235, 27.740429, 33.408791>,  <41.893665, 27.774076, 33.646088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906235, 27.740429, 33.408791>,  <41.927185, 27.684349, 33.013294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906235, 27.740429, 33.408791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217696, -0.964681, 0.148318,
		0.974610, 0.223013, 0.020006,
		-0.052377, 0.140197, 0.988737,
		41.890522, 27.782488, 33.705410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552311, 27.315470, 33.376701>,  <41.927185, 27.684349, 33.013294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552311, 27.315470, 33.376701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255138, 27.344116, 33.642910>,  <42.076836, 27.361303, 33.802635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255138, 27.344116, 33.642910>,  <42.552311, 27.315470, 33.376701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255138, 27.344116, 33.642910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005790, -0.993536, 0.113374,
		0.669341, 0.088082, 0.737715,
		-0.742933, 0.071615, 0.665524,
		42.032257, 27.365601, 33.842567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833012, 26.970913, 34.058159>,  <42.552311, 27.315470, 33.376701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833012, 26.970913, 34.058159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469269, 26.918325, 33.900276>,  <42.251022, 26.886772, 33.805546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469269, 26.918325, 33.900276>,  <42.833012, 26.970913, 34.058159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469269, 26.918325, 33.900276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080746, -0.986488, 0.142555,
		-0.408114, 0.097762, 0.907681,
		-0.909353, -0.131471, -0.394706,
		42.196465, 26.878883, 33.781864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328106, 26.493652, 34.330399>,  <42.833012, 26.970913, 34.058159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328106, 26.493652, 34.330399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413036, 26.471983, 33.940121>,  <43.463993, 26.458981, 33.705956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413036, 26.471983, 33.940121>,  <43.328106, 26.493652, 34.330399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413036, 26.471983, 33.940121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844361, 0.512782, 0.155274,
		0.491907, -0.856808, 0.154619,
		0.212326, -0.054174, -0.975696,
		43.476734, 26.455730, 33.647411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329502, 26.018465, 34.901897>,  <43.328106, 26.493652, 34.330399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329502, 26.018465, 34.901897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144249, 26.055882, 35.254433>,  <43.033096, 26.078331, 35.465954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144249, 26.055882, 35.254433>,  <43.329502, 26.018465, 34.901897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144249, 26.055882, 35.254433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075132, 0.986692, -0.144203,
		-0.883097, -0.133002, -0.449945,
		-0.463136, 0.093540, 0.881337,
		43.005306, 26.083944, 35.518833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677116, 26.231506, 34.902824>,  <43.329502, 26.018465, 34.901897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677116, 26.231506, 34.902824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855534, 26.373241, 35.231575>,  <42.962585, 26.458282, 35.428825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855534, 26.373241, 35.231575>,  <42.677116, 26.231506, 34.902824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855534, 26.373241, 35.231575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058444, 0.927864, -0.368310,
		-0.893100, 0.116250, 0.434579,
		0.446046, 0.354336, 0.821881,
		42.989349, 26.479542, 35.478138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421555, 26.879564, 35.245766>,  <42.677116, 26.231506, 34.902824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421555, 26.879564, 35.245766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796761, 26.896093, 35.383411>,  <43.021885, 26.906012, 35.466000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796761, 26.896093, 35.383411>,  <42.421555, 26.879564, 35.245766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796761, 26.896093, 35.383411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014315, 0.996639, -0.080663,
		-0.346291, 0.070738, 0.935457,
		0.938018, 0.041324, 0.344115,
		43.078167, 26.908491, 35.486645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509468, 27.250507, 35.874493>,  <42.421555, 26.879564, 35.245766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509468, 27.250507, 35.874493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853073, 27.284796, 35.672604>,  <43.059238, 27.305368, 35.551472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853073, 27.284796, 35.672604>,  <42.509468, 27.250507, 35.874493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853073, 27.284796, 35.672604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144319, 0.986445, -0.078092,
		0.491184, 0.139923, 0.859744,
		0.859017, 0.085720, -0.504719,
		43.110779, 27.310513, 35.521187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861931, 27.748293, 36.242420>,  <42.509468, 27.250507, 35.874493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861931, 27.748293, 36.242420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032616, 27.739792, 35.880768>,  <43.135029, 27.734692, 35.663776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032616, 27.739792, 35.880768>,  <42.861931, 27.748293, 36.242420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032616, 27.739792, 35.880768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009460, 0.999774, -0.019037,
		0.904336, -0.000430, 0.426822,
		0.426717, -0.021253, -0.904136,
		43.160629, 27.733416, 35.609528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516853, 28.045353, 36.369759>,  <42.861931, 27.748293, 36.242420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516853, 28.045353, 36.369759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335957, 28.093367, 36.016247>,  <43.227417, 28.122175, 35.804138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335957, 28.093367, 36.016247>,  <43.516853, 28.045353, 36.369759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335957, 28.093367, 36.016247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185487, 0.981894, 0.038442,
		0.872395, -0.146545, -0.466318,
		-0.452241, 0.120033, -0.883782,
		43.200283, 28.129377, 35.751114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018162, 28.300047, 35.916206>,  <43.516853, 28.045353, 36.369759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018162, 28.300047, 35.916206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637711, 28.398813, 35.842022>,  <43.409439, 28.458073, 35.797512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637711, 28.398813, 35.842022>,  <44.018162, 28.300047, 35.916206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637711, 28.398813, 35.842022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262677, 0.962660, -0.065467,
		0.162369, -0.110983, -0.980469,
		-0.951124, 0.246917, -0.185459,
		43.352375, 28.472889, 35.786385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048199, 28.679443, 35.298859>,  <44.018162, 28.300047, 35.916206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048199, 28.679443, 35.298859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728409, 28.808132, 35.501770>,  <43.536533, 28.885345, 35.623516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728409, 28.808132, 35.501770>,  <44.048199, 28.679443, 35.298859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728409, 28.808132, 35.501770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397721, 0.916371, 0.045638,
		-0.450174, 0.238243, -0.860572,
		-0.799476, 0.321722, 0.507281,
		43.488567, 28.904650, 35.653954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860027, 29.403181, 35.060207>,  <44.048199, 28.679443, 35.298859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860027, 29.403181, 35.060207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646847, 29.372171, 35.397243>,  <43.518940, 29.353565, 35.599464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646847, 29.372171, 35.397243>,  <43.860027, 29.403181, 35.060207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646847, 29.372171, 35.397243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108611, 0.981289, 0.158983,
		-0.839148, 0.176244, -0.514556,
		-0.532948, -0.077524, 0.842589,
		43.486961, 29.348915, 35.650021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319454, 29.854837, 34.983654>,  <43.860027, 29.403181, 35.060207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319454, 29.854837, 34.983654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390129, 29.778484, 35.369884>,  <43.432533, 29.732672, 35.601624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390129, 29.778484, 35.369884>,  <43.319454, 29.854837, 34.983654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390129, 29.778484, 35.369884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280168, 0.950186, 0.136571,
		-0.943550, 0.246394, 0.221367,
		0.176690, -0.190882, 0.965580,
		43.443134, 29.721220, 35.659557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186001, 30.461729, 35.260525>,  <43.319454, 29.854837, 34.983654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186001, 30.461729, 35.260525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409149, 30.282570, 35.540001>,  <43.543037, 30.175074, 35.707687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409149, 30.282570, 35.540001>,  <43.186001, 30.461729, 35.260525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409149, 30.282570, 35.540001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476833, 0.862025, 0.171879,
		-0.679272, 0.237271, 0.694473,
		0.557871, -0.447900, 0.698688,
		43.576511, 30.148199, 35.749607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211502, 30.896538, 35.790428>,  <43.186001, 30.461729, 35.260525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211502, 30.896538, 35.790428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528835, 30.661621, 35.854572>,  <43.719234, 30.520672, 35.893059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528835, 30.661621, 35.854572>,  <43.211502, 30.896538, 35.790428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528835, 30.661621, 35.854572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546647, 0.803134, 0.236965,
		-0.267961, -0.100330, 0.958191,
		0.793331, -0.587290, 0.160363,
		43.766834, 30.485434, 35.902679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396271, 30.957836, 36.466507>,  <43.211502, 30.896538, 35.790428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396271, 30.957836, 36.466507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731476, 30.843174, 36.280792>,  <43.932598, 30.774376, 36.169365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731476, 30.843174, 36.280792>,  <43.396271, 30.957836, 36.466507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731476, 30.843174, 36.280792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424373, 0.877256, 0.224342,
		0.342990, -0.385032, 0.856801,
		0.838012, -0.286656, -0.464288,
		43.982880, 30.757177, 36.141506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916935, 31.237896, 36.866833>,  <43.396271, 30.957836, 36.466507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916935, 31.237896, 36.866833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109314, 31.137421, 36.530834>,  <44.224739, 31.077135, 36.329235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109314, 31.137421, 36.530834>,  <43.916935, 31.237896, 36.866833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109314, 31.137421, 36.530834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381107, 0.922727, -0.057721,
		0.789588, -0.292368, 0.539511,
		0.480946, -0.251187, -0.839998,
		44.253597, 31.062065, 36.278835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362076, 31.625732, 36.887386>,  <43.916935, 31.237896, 36.866833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362076, 31.625732, 36.887386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396816, 31.532749, 36.499897>,  <44.417660, 31.476959, 36.267403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396816, 31.532749, 36.499897>,  <44.362076, 31.625732, 36.887386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396816, 31.532749, 36.499897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470254, 0.866809, -0.165841,
		0.878247, -0.441142, 0.184595,
		0.086849, -0.232456, -0.968721,
		44.422871, 31.463013, 36.209282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071918, 31.905277, 36.697941>,  <44.362076, 31.625732, 36.887386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071918, 31.905277, 36.697941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854805, 31.849255, 36.366695>,  <44.724537, 31.815641, 36.167950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854805, 31.849255, 36.366695>,  <45.071918, 31.905277, 36.697941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854805, 31.849255, 36.366695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320805, 0.876662, -0.358537,
		0.776189, -0.460271, -0.430907,
		-0.542784, -0.140056, -0.828112,
		44.691971, 31.807238, 36.118263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499264, 32.092552, 36.125175>,  <45.071918, 31.905277, 36.697941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499264, 32.092552, 36.125175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.122417, 32.108868, 35.992054>,  <44.896309, 32.118656, 35.912182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.122417, 32.108868, 35.992054>,  <45.499264, 32.092552, 36.125175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122417, 32.108868, 35.992054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166593, 0.918334, -0.359040,
		0.290984, -0.393700, -0.871968,
		-0.942112, 0.040789, -0.332808,
		44.839783, 32.121105, 35.892212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542538, 32.298260, 35.419758>,  <45.499264, 32.092552, 36.125175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.542538, 32.298260, 35.419758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191269, 32.415134, 35.571255>,  <44.980507, 32.485260, 35.662155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191269, 32.415134, 35.571255>,  <45.542538, 32.298260, 35.419758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191269, 32.415134, 35.571255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102597, 0.888392, -0.447474,
		-0.467222, -0.354099, -0.810134,
		-0.878167, 0.292187, 0.378747,
		44.927818, 32.502792, 35.684879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341412, 32.665039, 34.890976>,  <45.542538, 32.298260, 35.419758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341412, 32.665039, 34.890976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081451, 32.791210, 35.167564>,  <44.925476, 32.866913, 35.333519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081451, 32.791210, 35.167564>,  <45.341412, 32.665039, 34.890976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081451, 32.791210, 35.167564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001058, 0.909435, -0.415846,
		-0.760015, -0.270992, -0.590712,
		-0.649904, 0.315424, 0.691471,
		44.886478, 32.885838, 35.375004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747238, 33.133175, 34.559719>,  <45.341412, 32.665039, 34.890976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747238, 33.133175, 34.559719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692425, 33.234364, 34.942806>,  <44.659534, 33.295078, 35.172661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692425, 33.234364, 34.942806>,  <44.747238, 33.133175, 34.559719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692425, 33.234364, 34.942806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172943, 0.945881, -0.274590,
		-0.975352, -0.203260, -0.085870,
		-0.137035, 0.252971, 0.957720,
		44.651314, 33.310253, 35.230122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218021, 33.535423, 34.637058>,  <44.747238, 33.133175, 34.559719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218021, 33.535423, 34.637058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449581, 33.633835, 34.948017>,  <44.588516, 33.692883, 35.134594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449581, 33.633835, 34.948017>,  <44.218021, 33.535423, 34.637058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449581, 33.633835, 34.948017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053735, 0.962833, -0.264700,
		-0.813627, 0.111461, 0.570603,
		0.578899, 0.246028, 0.777397,
		44.623249, 33.707642, 35.181236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902504, 34.222996, 34.960793>,  <44.218021, 33.535423, 34.637058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902504, 34.222996, 34.960793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279255, 34.238583, 35.094269>,  <44.505306, 34.247932, 35.174355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279255, 34.238583, 35.094269>,  <43.902504, 34.222996, 34.960793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279255, 34.238583, 35.094269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068115, 0.950476, -0.303242,
		-0.328980, 0.308346, 0.892578,
		0.941877, 0.038962, 0.333691,
		44.561817, 34.250271, 35.194378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969479, 34.860840, 35.228310>,  <43.902504, 34.222996, 34.960793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969479, 34.860840, 35.228310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360531, 34.777390, 35.217567>,  <44.595161, 34.727322, 35.211121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360531, 34.777390, 35.217567>,  <43.969479, 34.860840, 35.228310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360531, 34.777390, 35.217567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206064, 0.975524, -0.076747,
		0.042213, 0.069495, 0.996689,
		0.977628, -0.208622, -0.026860,
		44.653820, 34.714802, 35.209511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363743, 35.281647, 35.788982>,  <43.969479, 34.860840, 35.228310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363743, 35.281647, 35.788982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614880, 35.170921, 35.498001>,  <44.765560, 35.104488, 35.323410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614880, 35.170921, 35.498001>,  <44.363743, 35.281647, 35.788982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614880, 35.170921, 35.498001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342837, 0.937424, -0.060818,
		0.698769, -0.211215, 0.683454,
		0.627841, -0.276811, -0.727455,
		44.803230, 35.087879, 35.279766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852039, 35.707031, 35.900574>,  <44.363743, 35.281647, 35.788982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852039, 35.707031, 35.900574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950478, 35.597954, 35.528534>,  <45.009541, 35.532509, 35.305309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950478, 35.597954, 35.528534>,  <44.852039, 35.707031, 35.900574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950478, 35.597954, 35.528534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219826, 0.950304, -0.220450,
		0.943988, -0.150207, 0.293809,
		0.246094, -0.272689, -0.930096,
		45.024307, 35.516148, 35.249504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464493, 36.030460, 35.714870>,  <44.852039, 35.707031, 35.900574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464493, 36.030460, 35.714870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298359, 35.946518, 35.360817>,  <45.198677, 35.896152, 35.148384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298359, 35.946518, 35.360817>,  <45.464493, 36.030460, 35.714870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298359, 35.946518, 35.360817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312500, 0.880893, -0.355487,
		0.854306, -0.424250, -0.300289,
		-0.415338, -0.209854, -0.885131,
		45.173759, 35.883560, 35.095280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.930447, 36.291451, 35.231171>,  <45.464493, 36.030460, 35.714870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.930447, 36.291451, 35.231171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588032, 36.237350, 35.031609>,  <45.382584, 36.204891, 34.911873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588032, 36.237350, 35.031609>,  <45.930447, 36.291451, 35.231171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588032, 36.237350, 35.031609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188823, 0.816642, -0.545382,
		0.481191, -0.561073, -0.673537,
		-0.856037, -0.135254, -0.498904,
		45.331219, 36.196774, 34.881939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114075, 36.544018, 34.479454>,  <45.930447, 36.291451, 35.231171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114075, 36.544018, 34.479454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716961, 36.546841, 34.527328>,  <45.478691, 36.548534, 34.556053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716961, 36.546841, 34.527328>,  <46.114075, 36.544018, 34.479454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716961, 36.546841, 34.527328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041117, 0.917698, -0.395145,
		-0.112624, -0.397216, -0.910788,
		-0.992787, 0.007054, 0.119687,
		45.419125, 36.548958, 34.563236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.826309, 36.268791, 34.678955>,  <46.114075, 36.544018, 34.479454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.826309, 36.268791, 34.678955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.930634, 36.554070, 34.939209>,  <46.993229, 36.725239, 35.095360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.930634, 36.554070, 34.939209>,  <46.826309, 36.268791, 34.678955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.930634, 36.554070, 34.939209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701396, 0.323102, -0.635334,
		-0.663341, 0.622054, -0.415966,
		0.260812, 0.713200, 0.650633,
		47.008877, 36.768028, 35.134399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772449, 35.589504, 34.381180>,  <46.826309, 36.268791, 34.678955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772449, 35.589504, 34.381180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.619553, 35.221348, 34.348267>,  <46.527817, 35.000454, 34.328518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.619553, 35.221348, 34.348267>,  <46.772449, 35.589504, 34.381180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.619553, 35.221348, 34.348267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871825, -0.329682, -0.362257,
		0.306292, -0.210206, 0.928439,
		-0.382238, -0.920393, -0.082284,
		46.504883, 34.945229, 34.323582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.989841, 35.090809, 34.859562>,  <46.772449, 35.589504, 34.381180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.989841, 35.090809, 34.859562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.900185, 34.838959, 34.562016>,  <46.846390, 34.687847, 34.383488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.900185, 34.838959, 34.562016>,  <46.989841, 35.090809, 34.859562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.900185, 34.838959, 34.562016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964233, -0.254082, -0.075478,
		-0.141480, -0.734177, 0.664054,
		-0.224138, -0.629624, -0.743865,
		46.832943, 34.650070, 34.338856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.683086, 35.438419, 35.028023>,  <46.989841, 35.090809, 34.859562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.683086, 35.438419, 35.028023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843987, 35.127605, 35.221687>,  <47.940525, 34.941116, 35.337887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843987, 35.127605, 35.221687>,  <47.683086, 35.438419, 35.028023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.843987, 35.127605, 35.221687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864665, -0.496247, -0.078058,
		0.300918, -0.387239, -0.871490,
		0.402247, -0.777036, 0.484161,
		47.964661, 34.894493, 35.366936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.313374, 34.638203, 43.398666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.966175, 34.514484, 43.554058>,  <35.757854, 34.440254, 43.647293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.966175, 34.514484, 43.554058>,  <36.313374, 34.638203, 43.398666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966175, 34.514484, 43.554058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484996, 0.360159, -0.796909,
		0.106567, -0.880126, -0.462625,
		-0.867999, -0.309295, 0.388476,
		35.705776, 34.421696, 43.670601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877567, 34.317497, 42.819950>,  <36.313374, 34.638203, 43.398666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877567, 34.317497, 42.819950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578827, 34.391850, 43.075340>,  <35.399582, 34.436459, 43.228577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578827, 34.391850, 43.075340>,  <35.877567, 34.317497, 42.819950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578827, 34.391850, 43.075340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616405, 0.166736, -0.769574,
		-0.249504, -0.968323, -0.009952,
		-0.746855, 0.185878, 0.638480,
		35.354771, 34.447613, 43.266884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250328, 33.853611, 42.490471>,  <35.877567, 34.317497, 42.819950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250328, 33.853611, 42.490471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.085758, 34.129047, 42.729324>,  <34.987015, 34.294308, 42.872639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.085758, 34.129047, 42.729324>,  <35.250328, 33.853611, 42.490471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085758, 34.129047, 42.729324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573548, 0.313576, -0.756778,
		-0.708358, -0.653845, 0.265926,
		-0.411427, 0.688591, 0.597135,
		34.962330, 34.335625, 42.908466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539761, 33.816185, 42.432438>,  <35.250328, 33.853611, 42.490471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539761, 33.816185, 42.432438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.626110, 34.186745, 42.555847>,  <34.677921, 34.409081, 42.629890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.626110, 34.186745, 42.555847>,  <34.539761, 33.816185, 42.432438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626110, 34.186745, 42.555847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429324, 0.373844, -0.822145,
		-0.876971, 0.045028, 0.478429,
		0.215878, 0.926398, 0.308519,
		34.690872, 34.464664, 42.648403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928913, 34.192287, 42.404366>,  <34.539761, 33.816185, 42.432438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928913, 34.192287, 42.404366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210964, 34.475754, 42.394691>,  <34.380196, 34.645832, 42.388889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210964, 34.475754, 42.394691>,  <33.928913, 34.192287, 42.404366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210964, 34.475754, 42.394691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382137, 0.351062, -0.854826,
		-0.597295, 0.612005, 0.518352,
		0.705131, 0.708665, -0.024182,
		34.422504, 34.688354, 42.387436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626320, 34.833813, 42.003048>,  <33.928913, 34.192287, 42.404366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626320, 34.833813, 42.003048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.009598, 34.944843, 42.030792>,  <34.239563, 35.011463, 42.047440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.009598, 34.944843, 42.030792>,  <33.626320, 34.833813, 42.003048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009598, 34.944843, 42.030792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075757, 0.479913, -0.874039,
		-0.275902, 0.832246, 0.480879,
		0.958196, 0.277579, 0.069361,
		34.297058, 35.028118, 42.051601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600559, 35.517311, 41.920784>,  <33.626320, 34.833813, 42.003048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600559, 35.517311, 41.920784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974903, 35.417870, 41.820892>,  <34.199509, 35.358204, 41.760956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974903, 35.417870, 41.820892>,  <33.600559, 35.517311, 41.920784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974903, 35.417870, 41.820892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096463, 0.500890, -0.860119,
		0.338919, 0.829038, 0.444780,
		0.935857, -0.248605, -0.249732,
		34.255661, 35.343288, 41.745972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918121, 36.163799, 41.575375>,  <33.600559, 35.517311, 41.920784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918121, 36.163799, 41.575375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.144707, 35.853054, 41.465385>,  <34.280659, 35.666607, 41.399391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.144707, 35.853054, 41.465385>,  <33.918121, 36.163799, 41.575375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144707, 35.853054, 41.465385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103637, 0.398171, -0.911438,
		0.817547, 0.487796, 0.306059,
		0.566460, -0.776862, -0.274970,
		34.314644, 35.619995, 41.382893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402008, 36.497356, 41.298519>,  <33.918121, 36.163799, 41.575375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402008, 36.497356, 41.298519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450371, 36.134830, 41.136543>,  <34.479389, 35.917316, 41.039356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450371, 36.134830, 41.136543>,  <34.402008, 36.497356, 41.298519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450371, 36.134830, 41.136543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426906, 0.415759, -0.803054,
		0.896177, -0.075779, 0.437178,
		0.120906, -0.906312, -0.404944,
		34.486641, 35.862938, 41.015060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041157, 36.475853, 40.992298>,  <34.402008, 36.497356, 41.298519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041157, 36.475853, 40.992298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788769, 36.216217, 40.822327>,  <34.637337, 36.060436, 40.720345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788769, 36.216217, 40.822327>,  <35.041157, 36.475853, 40.992298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788769, 36.216217, 40.822327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234308, 0.362710, -0.901965,
		0.739579, -0.668677, -0.076773,
		-0.630970, -0.649085, -0.424930,
		34.599476, 36.021492, 40.694847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360851, 36.196083, 40.425400>,  <35.041157, 36.475853, 40.992298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360851, 36.196083, 40.425400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005703, 36.071037, 40.290371>,  <34.792614, 35.996010, 40.209354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005703, 36.071037, 40.290371>,  <35.360851, 36.196083, 40.425400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005703, 36.071037, 40.290371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331047, 0.075459, -0.940592,
		0.319519, -0.946877, 0.036494,
		-0.887871, -0.312618, -0.337572,
		34.739342, 35.977253, 40.189098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490536, 35.753899, 39.829018>,  <35.360851, 36.196083, 40.425400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490536, 35.753899, 39.829018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120438, 35.899158, 39.785110>,  <34.898380, 35.986313, 39.758766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120438, 35.899158, 39.785110>,  <35.490536, 35.753899, 39.829018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120438, 35.899158, 39.785110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065939, -0.130987, -0.989189,
		-0.373599, -0.922478, 0.097249,
		-0.925243, 0.363147, -0.109764,
		34.842865, 36.008102, 39.752182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257595, 35.265438, 39.316120>,  <35.490536, 35.753899, 39.829018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257595, 35.265438, 39.316120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.010197, 35.579609, 39.306587>,  <34.861759, 35.768112, 39.300865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.010197, 35.579609, 39.306587>,  <35.257595, 35.265438, 39.316120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010197, 35.579609, 39.306587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010080, -0.038262, -0.999217,
		-0.785726, -0.617767, 0.031582,
		-0.618492, 0.785429, -0.023837,
		34.824650, 35.815239, 39.299435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722271, 35.097084, 38.801704>,  <35.257595, 35.265438, 39.316120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722271, 35.097084, 38.801704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728104, 35.494389, 38.847702>,  <34.731606, 35.732769, 38.875301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728104, 35.494389, 38.847702>,  <34.722271, 35.097084, 38.801704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728104, 35.494389, 38.847702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044250, 0.114255, -0.992465,
		-0.998914, 0.019564, -0.042285,
		0.014585, 0.993259, 0.114997,
		34.732479, 35.792366, 38.882202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255505, 35.258984, 38.201550>,  <34.722271, 35.097084, 38.801704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255505, 35.258984, 38.201550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471409, 35.575462, 38.316555>,  <34.600952, 35.765350, 38.385559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471409, 35.575462, 38.316555>,  <34.255505, 35.258984, 38.201550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471409, 35.575462, 38.316555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116040, 0.268352, -0.956306,
		-0.833781, 0.549542, 0.053037,
		0.539763, 0.791195, 0.287516,
		34.633339, 35.812820, 38.402809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002296, 35.782051, 37.696827>,  <34.255505, 35.258984, 38.201550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002296, 35.782051, 37.696827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.341656, 35.935501, 37.842731>,  <34.545273, 36.027573, 37.930275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.341656, 35.935501, 37.842731>,  <34.002296, 35.782051, 37.696827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341656, 35.935501, 37.842731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128207, 0.519634, -0.844715,
		-0.513599, 0.763419, 0.391672,
		0.848398, 0.383630, 0.364759,
		34.596176, 36.050591, 37.952160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149464, 36.475769, 37.390129>,  <34.002296, 35.782051, 37.696827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149464, 36.475769, 37.390129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514969, 36.368782, 37.512444>,  <34.734272, 36.304588, 37.585831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514969, 36.368782, 37.512444>,  <34.149464, 36.475769, 37.390129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514969, 36.368782, 37.512444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373416, 0.256514, -0.891494,
		0.160007, 0.928796, 0.334268,
		0.913760, -0.267467, 0.305783,
		34.789097, 36.288544, 37.604179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614384, 37.027748, 37.344921>,  <34.149464, 36.475769, 37.390129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614384, 37.027748, 37.344921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878414, 36.727821, 37.363167>,  <35.036831, 36.547867, 37.374115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878414, 36.727821, 37.363167>,  <34.614384, 37.027748, 37.344921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878414, 36.727821, 37.363167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491779, 0.385423, -0.780770,
		0.567851, 0.537799, 0.623151,
		0.660075, -0.749813, 0.045615,
		35.076435, 36.502876, 37.376850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262119, 37.306950, 37.267464>,  <34.614384, 37.027748, 37.344921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262119, 37.306950, 37.267464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335888, 36.923485, 37.180790>,  <35.380150, 36.693405, 37.128784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335888, 36.923485, 37.180790>,  <35.262119, 37.306950, 37.267464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335888, 36.923485, 37.180790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635116, 0.284493, -0.718117,
		0.750079, -0.005186, 0.661328,
		0.184419, -0.958664, -0.216686,
		35.391212, 36.635887, 37.115784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947479, 37.312065, 37.145370>,  <35.262119, 37.306950, 37.267464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947479, 37.312065, 37.145370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816669, 36.976814, 36.970741>,  <35.738186, 36.775661, 36.865963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816669, 36.976814, 36.970741>,  <35.947479, 37.312065, 37.145370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816669, 36.976814, 36.970741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448283, 0.269109, -0.852422,
		0.831926, -0.474468, 0.287715,
		-0.327021, -0.838129, -0.436574,
		35.718563, 36.725376, 36.839767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496208, 36.965809, 36.817059>,  <35.947479, 37.312065, 37.145370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496208, 36.965809, 36.817059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170677, 36.830189, 36.628281>,  <35.975361, 36.748817, 36.515015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170677, 36.830189, 36.628281>,  <36.496208, 36.965809, 36.817059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170677, 36.830189, 36.628281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477513, 0.072652, -0.875615,
		0.331165, -0.937959, 0.102775,
		-0.813825, -0.339050, -0.471948,
		35.926529, 36.728474, 36.486698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797607, 36.763954, 36.172794>,  <36.496208, 36.965809, 36.817059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797607, 36.763954, 36.172794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405323, 36.745895, 36.096725>,  <36.169952, 36.735062, 36.051086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405323, 36.745895, 36.096725>,  <36.797607, 36.763954, 36.172794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405323, 36.745895, 36.096725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188925, 0.030441, -0.981520,
		0.050102, -0.998516, -0.021324,
		-0.980712, -0.045148, -0.190170,
		36.111111, 36.732353, 36.039673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288177, 36.836472, 35.674625>,  <36.797607, 36.763954, 36.172794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288177, 36.836472, 35.674625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626503, 36.671108, 35.539749>,  <37.829498, 36.571892, 35.458824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.626503, 36.671108, 35.539749>,  <37.288177, 36.836472, 35.674625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626503, 36.671108, 35.539749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055676, -0.560197, 0.826487,
		-0.530564, -0.717827, -0.450806,
		0.845814, -0.413405, -0.337186,
		37.880245, 36.547085, 35.438595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274975, 36.095688, 35.827682>,  <37.288177, 36.836472, 35.674625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274975, 36.095688, 35.827682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661388, 36.153843, 35.742222>,  <37.893234, 36.188736, 35.690945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661388, 36.153843, 35.742222>,  <37.274975, 36.095688, 35.827682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661388, 36.153843, 35.742222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258125, -0.502711, 0.825017,
		0.012540, -0.852141, -0.523162,
		0.966030, 0.145387, -0.213655,
		37.951199, 36.197460, 35.678123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525192, 35.473377, 36.048634>,  <37.274975, 36.095688, 35.827682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525192, 35.473377, 36.048634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817875, 35.745117, 36.070889>,  <37.993484, 35.908161, 36.084240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817875, 35.745117, 36.070889>,  <37.525192, 35.473377, 36.048634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817875, 35.745117, 36.070889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221612, -0.314289, 0.923098,
		0.644592, -0.663104, -0.380518,
		0.731703, 0.679349, 0.055637,
		38.037384, 35.948921, 36.087578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083775, 35.153282, 36.339417>,  <37.525192, 35.473377, 36.048634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083775, 35.153282, 36.339417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112457, 35.544842, 36.415958>,  <38.129669, 35.779778, 36.461884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112457, 35.544842, 36.415958>,  <38.083775, 35.153282, 36.339417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112457, 35.544842, 36.415958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353748, -0.204336, 0.912748,
		0.932588, 0.002237, -0.360937,
		0.071710, 0.978898, 0.191353,
		38.133972, 35.838512, 36.473366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702538, 35.181671, 36.808456>,  <38.083775, 35.153282, 36.339417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702538, 35.181671, 36.808456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575405, 35.557716, 36.857708>,  <38.499126, 35.783344, 36.887260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575405, 35.557716, 36.857708>,  <38.702538, 35.181671, 36.808456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575405, 35.557716, 36.857708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446840, 0.033983, 0.893968,
		0.836250, 0.339154, -0.430883,
		-0.317835, 0.940117, 0.123129,
		38.480053, 35.839752, 36.894646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277328, 35.647503, 36.907909>,  <38.702538, 35.181671, 36.808456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277328, 35.647503, 36.907909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980251, 35.854557, 37.077831>,  <38.802006, 35.978790, 37.179787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980251, 35.854557, 37.077831>,  <39.277328, 35.647503, 36.907909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980251, 35.854557, 37.077831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546201, 0.101286, 0.831508,
		0.387390, 0.849586, -0.357956,
		-0.742694, 0.517634, 0.424808,
		38.757442, 36.009846, 37.205273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622826, 36.136971, 37.398499>,  <39.277328, 35.647503, 36.907909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622826, 36.136971, 37.398499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242287, 36.095028, 37.514389>,  <39.013962, 36.069862, 37.583923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242287, 36.095028, 37.514389>,  <39.622826, 36.136971, 37.398499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242287, 36.095028, 37.514389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299357, -0.091938, 0.949701,
		-0.072941, 0.990229, 0.118853,
		-0.951349, -0.104852, 0.289726,
		38.956882, 36.063572, 37.601307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477478, 36.620247, 38.038830>,  <39.622826, 36.136971, 37.398499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477478, 36.620247, 38.038830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216751, 36.316902, 38.040985>,  <39.060314, 36.134895, 38.042278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216751, 36.316902, 38.040985>,  <39.477478, 36.620247, 38.038830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216751, 36.316902, 38.040985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167786, -0.137272, 0.976219,
		-0.739585, 0.637218, 0.216718,
		-0.651814, -0.758360, 0.005392,
		39.021206, 36.089394, 38.042603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097023, 36.728592, 38.625408>,  <39.477478, 36.620247, 38.038830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097023, 36.728592, 38.625408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.019604, 36.345036, 38.542393>,  <38.973152, 36.114902, 38.492584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.019604, 36.345036, 38.542393>,  <39.097023, 36.728592, 38.625408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019604, 36.345036, 38.542393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030263, -0.217277, 0.975641,
		-0.980623, 0.182556, 0.071073,
		-0.193551, -0.958887, -0.207542,
		38.961540, 36.057369, 38.480129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841335, 36.543797, 39.228268>,  <39.097023, 36.728592, 38.625408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841335, 36.543797, 39.228268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920135, 36.186054, 39.067612>,  <38.967415, 35.971409, 38.971218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920135, 36.186054, 39.067612>,  <38.841335, 36.543797, 39.228268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920135, 36.186054, 39.067612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148404, -0.377743, 0.913940,
		-0.969107, -0.239648, 0.058313,
		0.196997, -0.894359, -0.401638,
		38.979233, 35.917747, 38.947121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599628, 36.108299, 39.845238>,  <38.841335, 36.543797, 39.228268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599628, 36.108299, 39.845238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.801044, 35.868809, 39.596085>,  <38.921894, 35.725113, 39.446594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.801044, 35.868809, 39.596085>,  <38.599628, 36.108299, 39.845238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801044, 35.868809, 39.596085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243953, -0.593083, 0.767294,
		-0.828817, -0.538314, -0.152578,
		0.503536, -0.598724, -0.622881,
		38.952106, 35.689190, 39.409222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330891, 35.492569, 39.807533>,  <38.599628, 36.108299, 39.845238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330891, 35.492569, 39.807533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722244, 35.445934, 39.739223>,  <38.957058, 35.417953, 39.698238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722244, 35.445934, 39.739223>,  <38.330891, 35.492569, 39.807533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722244, 35.445934, 39.739223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085813, -0.522484, 0.848320,
		-0.188128, -0.844641, -0.501188,
		0.978388, -0.116585, -0.170775,
		39.015762, 35.410957, 39.687992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456921, 34.730267, 39.671928>,  <38.330891, 35.492569, 39.807533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456921, 34.730267, 39.671928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789623, 34.901344, 39.813492>,  <38.989246, 35.003990, 39.898430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789623, 34.901344, 39.813492>,  <38.456921, 34.730267, 39.671928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789623, 34.901344, 39.813492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076322, -0.543360, 0.836023,
		0.549866, -0.722380, -0.419302,
		0.831758, 0.427699, 0.353909,
		39.039150, 35.029655, 39.919666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957645, 34.237881, 39.913910>,  <38.456921, 34.730267, 39.671928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957645, 34.237881, 39.913910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.063961, 34.553852, 40.134949>,  <39.127750, 34.743435, 40.267574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.063961, 34.553852, 40.134949>,  <38.957645, 34.237881, 39.913910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063961, 34.553852, 40.134949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230968, -0.504345, 0.832040,
		0.935953, -0.348783, 0.048396,
		0.265793, 0.789928, 0.552601,
		39.143700, 34.790829, 40.300728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406090, 33.985710, 40.371647>,  <38.957645, 34.237881, 39.913910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406090, 33.985710, 40.371647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.246990, 34.322361, 40.517776>,  <39.151531, 34.524349, 40.605453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.246990, 34.322361, 40.517776>,  <39.406090, 33.985710, 40.371647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246990, 34.322361, 40.517776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137727, -0.448436, 0.883140,
		0.907097, 0.300956, 0.294280,
		-0.397752, 0.841624, 0.365325,
		39.127663, 34.574848, 40.627373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604378, 33.968098, 41.055958>,  <39.406090, 33.985710, 40.371647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604378, 33.968098, 41.055958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310501, 34.239349, 41.048248>,  <39.134174, 34.402100, 41.043621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310501, 34.239349, 41.048248>,  <39.604378, 33.968098, 41.055958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310501, 34.239349, 41.048248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251058, -0.245382, 0.936353,
		0.630239, 0.692769, 0.350529,
		-0.734690, 0.678129, -0.019276,
		39.090096, 34.442787, 41.042465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708897, 34.329121, 41.631672>,  <39.604378, 33.968098, 41.055958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708897, 34.329121, 41.631672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327312, 34.425785, 41.560623>,  <39.098362, 34.483784, 41.517994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327312, 34.425785, 41.560623>,  <39.708897, 34.329121, 41.631672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327312, 34.425785, 41.560623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215971, -0.142566, 0.965935,
		0.208109, 0.959830, 0.188196,
		-0.953964, 0.241665, -0.177626,
		39.041122, 34.498283, 41.507336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385258, 34.662903, 42.213425>,  <39.708897, 34.329121, 41.631672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385258, 34.662903, 42.213425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.067638, 34.530449, 42.009529>,  <38.877068, 34.450977, 41.887192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.067638, 34.530449, 42.009529>,  <39.385258, 34.662903, 42.213425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067638, 34.530449, 42.009529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470985, -0.194951, 0.860329,
		-0.384262, 0.923223, -0.001160,
		-0.794050, -0.331139, -0.509737,
		38.829422, 34.431107, 41.856609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.493000, 35.055260, 42.494804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.463543, 34.700817, 42.311768>,  <38.445869, 34.488152, 42.201946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.463543, 34.700817, 42.311768>,  <38.493000, 35.055260, 42.494804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463543, 34.700817, 42.311768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295574, -0.418833, 0.858612,
		-0.952477, 0.198488, -0.231064,
		-0.073647, -0.886105, -0.457596,
		38.441448, 34.434986, 42.174488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126369, 34.772144, 42.937286>,  <38.493000, 35.055260, 42.494804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126369, 34.772144, 42.937286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179398, 34.450684, 42.705227>,  <38.211212, 34.257809, 42.565990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179398, 34.450684, 42.705227>,  <38.126369, 34.772144, 42.937286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179398, 34.450684, 42.705227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200253, -0.594956, 0.778412,
		-0.970734, 0.012983, -0.239806,
		0.132568, -0.803653, -0.580144,
		38.219170, 34.209587, 42.531185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548286, 34.429054, 42.893383>,  <38.126369, 34.772144, 42.937286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548286, 34.429054, 42.893383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850552, 34.173786, 42.834442>,  <38.031910, 34.020626, 42.799080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850552, 34.173786, 42.834442>,  <37.548286, 34.429054, 42.893383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850552, 34.173786, 42.834442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200760, -0.439830, 0.875354,
		-0.623438, -0.631887, -0.460482,
		0.755659, -0.638175, -0.147349,
		38.077251, 33.982334, 42.790237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227753, 33.802986, 43.134148>,  <37.548286, 34.429054, 42.893383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227753, 33.802986, 43.134148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622444, 33.738033, 43.134239>,  <37.859261, 33.699062, 43.134296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622444, 33.738033, 43.134239>,  <37.227753, 33.802986, 43.134148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622444, 33.738033, 43.134239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099623, -0.604240, 0.790550,
		-0.128231, -0.780081, -0.612397,
		0.986728, -0.162382, 0.000232,
		37.918461, 33.689320, 43.134308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273186, 33.057545, 43.180859>,  <37.227753, 33.802986, 43.134148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273186, 33.057545, 43.180859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.634048, 33.199066, 43.279598>,  <37.850567, 33.283978, 43.338844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.634048, 33.199066, 43.279598>,  <37.273186, 33.057545, 43.180859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634048, 33.199066, 43.279598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027953, -0.618939, 0.784942,
		0.430503, -0.701240, -0.568269,
		0.902156, 0.353805, 0.246853,
		37.904694, 33.305206, 43.353653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662655, 32.520306, 43.300755>,  <37.273186, 33.057545, 43.180859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662655, 32.520306, 43.300755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.843773, 32.813046, 43.504467>,  <37.952442, 32.988689, 43.626694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.843773, 32.813046, 43.504467>,  <37.662655, 32.520306, 43.300755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843773, 32.813046, 43.504467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003762, -0.569617, 0.821902,
		0.891607, -0.374069, -0.255167,
		0.452795, 0.731853, 0.509281,
		37.979610, 33.032600, 43.657253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255222, 32.222961, 43.553097>,  <37.662655, 32.520306, 43.300755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255222, 32.222961, 43.553097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.183739, 32.530506, 43.798672>,  <38.140850, 32.715031, 43.946018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.183739, 32.530506, 43.798672>,  <38.255222, 32.222961, 43.553097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183739, 32.530506, 43.798672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152878, -0.594707, 0.789273,
		0.971952, 0.234909, -0.011262,
		-0.178710, 0.768857, 0.613939,
		38.130127, 32.761162, 43.982853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881622, 32.428864, 43.912651>,  <38.255222, 32.222961, 43.553097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881622, 32.428864, 43.912651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.562244, 32.536861, 44.127907>,  <38.370617, 32.601662, 44.257061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.562244, 32.536861, 44.127907>,  <38.881622, 32.428864, 43.912651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562244, 32.536861, 44.127907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331142, -0.549543, 0.767038,
		0.502827, 0.790636, 0.349371,
		-0.798442, 0.269996, 0.538138,
		38.322712, 32.617859, 44.289349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077999, 32.309906, 44.565426>,  <38.881622, 32.428864, 43.912651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077999, 32.309906, 44.565426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.688385, 32.349388, 44.646931>,  <38.454617, 32.373077, 44.695835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.688385, 32.349388, 44.646931>,  <39.077999, 32.309906, 44.565426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688385, 32.349388, 44.646931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122492, -0.527140, 0.840904,
		0.190416, 0.844026, 0.501360,
		-0.974032, 0.098709, 0.203762,
		38.396175, 32.379002, 44.708061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057404, 32.463428, 45.210247>,  <39.077999, 32.309906, 44.565426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057404, 32.463428, 45.210247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678741, 32.342613, 45.165314>,  <38.451546, 32.270123, 45.138355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678741, 32.342613, 45.165314>,  <39.057404, 32.463428, 45.210247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678741, 32.342613, 45.165314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091838, -0.586983, 0.804373,
		-0.308890, 0.751146, 0.583409,
		-0.946653, -0.302042, -0.112329,
		38.394745, 32.251999, 45.131615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656200, 32.501595, 45.900002>,  <39.057404, 32.463428, 45.210247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656200, 32.501595, 45.900002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477097, 32.230148, 45.667110>,  <38.369633, 32.067280, 45.527374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477097, 32.230148, 45.667110>,  <38.656200, 32.501595, 45.900002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477097, 32.230148, 45.667110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006038, -0.648843, 0.760899,
		-0.894133, 0.344216, 0.286428,
		-0.447760, -0.678615, -0.582230,
		38.342770, 32.026566, 45.492443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281658, 32.132866, 46.423092>,  <38.656200, 32.501595, 45.900002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281658, 32.132866, 46.423092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270500, 31.891077, 46.104637>,  <38.263805, 31.746002, 45.913567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270500, 31.891077, 46.104637>,  <38.281658, 32.132866, 46.423092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270500, 31.891077, 46.104637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102194, -0.793996, 0.599272,
		-0.994373, -0.064642, 0.083925,
		-0.027898, -0.604476, -0.796135,
		38.262131, 31.709734, 45.865795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676914, 31.717073, 46.515385>,  <38.281658, 32.132866, 46.423092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676914, 31.717073, 46.515385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898495, 31.509731, 46.254787>,  <38.031445, 31.385326, 46.098427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898495, 31.509731, 46.254787>,  <37.676914, 31.717073, 46.515385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898495, 31.509731, 46.254787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055383, -0.803741, 0.592396,
		-0.830703, -0.292079, -0.473944,
		0.553955, -0.518353, -0.651494,
		38.064678, 31.354225, 46.059338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334793, 31.082735, 46.360764>,  <37.676914, 31.717073, 46.515385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334793, 31.082735, 46.360764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.713722, 31.001751, 46.261501>,  <37.941082, 30.953161, 46.201942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.713722, 31.001751, 46.261501>,  <37.334793, 31.082735, 46.360764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713722, 31.001751, 46.261501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050916, -0.860192, 0.507423,
		-0.316193, -0.468061, -0.825192,
		0.947328, -0.202459, -0.248155,
		37.997921, 30.941013, 46.187054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347198, 30.399422, 46.151218>,  <37.334793, 31.082735, 46.360764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347198, 30.399422, 46.151218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722988, 30.481018, 46.261322>,  <37.948463, 30.529976, 46.327385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722988, 30.481018, 46.261322>,  <37.347198, 30.399422, 46.151218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722988, 30.481018, 46.261322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020531, -0.835501, 0.549106,
		0.341994, -0.510221, -0.789122,
		0.939477, 0.203992, 0.275262,
		38.004833, 30.542215, 46.343899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686047, 29.778748, 46.099190>,  <37.347198, 30.399422, 46.151218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686047, 29.778748, 46.099190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.957462, 29.969641, 46.322559>,  <38.120312, 30.084177, 46.456581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.957462, 29.969641, 46.322559>,  <37.686047, 29.778748, 46.099190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957462, 29.969641, 46.322559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068123, -0.797814, 0.599042,
		0.731401, -0.368430, -0.573856,
		0.678536, 0.477233, 0.558424,
		38.161022, 30.112810, 46.490086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154575, 29.265793, 46.337257>,  <37.686047, 29.778748, 46.099190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154575, 29.265793, 46.337257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261642, 29.566364, 46.578491>,  <38.325882, 29.746708, 46.723232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261642, 29.566364, 46.578491>,  <38.154575, 29.265793, 46.337257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261642, 29.566364, 46.578491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354311, -0.658827, 0.663634,
		0.896001, 0.036046, -0.442586,
		0.267667, 0.751430, 0.603081,
		38.341942, 29.791794, 46.759415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758308, 29.120136, 46.566021>,  <38.154575, 29.265793, 46.337257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758308, 29.120136, 46.566021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.646164, 29.382904, 46.845978>,  <38.578876, 29.540565, 47.013950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.646164, 29.382904, 46.845978>,  <38.758308, 29.120136, 46.566021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646164, 29.382904, 46.845978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157523, -0.687764, 0.708638,
		0.946880, 0.308927, 0.089344,
		-0.280365, 0.656921, 0.699893,
		38.562054, 29.579981, 47.055946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306633, 29.085136, 47.033722>,  <38.758308, 29.120136, 46.566021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306633, 29.085136, 47.033722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.977245, 29.224752, 47.212639>,  <38.779613, 29.308521, 47.319988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.977245, 29.224752, 47.212639>,  <39.306633, 29.085136, 47.033722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977245, 29.224752, 47.212639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076886, -0.712454, 0.697494,
		0.562130, 0.608754, 0.559846,
		-0.823467, 0.349038, 0.447297,
		38.730206, 29.329464, 47.346828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483475, 29.023075, 47.719223>,  <39.306633, 29.085136, 47.033722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483475, 29.023075, 47.719223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.094074, 29.091644, 47.779770>,  <38.860435, 29.132786, 47.816097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.094074, 29.091644, 47.779770>,  <39.483475, 29.023075, 47.719223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094074, 29.091644, 47.779770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023768, -0.582479, 0.812498,
		0.227452, 0.794564, 0.562968,
		-0.973499, 0.171424, 0.151371,
		38.802025, 29.143072, 47.825180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367043, 29.282663, 48.386105>,  <39.483475, 29.023075, 47.719223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367043, 29.282663, 48.386105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053802, 29.084696, 48.235474>,  <38.865860, 28.965916, 48.145096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053802, 29.084696, 48.235474>,  <39.367043, 29.282663, 48.386105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053802, 29.084696, 48.235474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040071, -0.644422, 0.763619,
		-0.620602, 0.582901, 0.524480,
		-0.783101, -0.494920, -0.376573,
		38.818871, 28.936220, 48.122501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780483, 29.422192, 48.879555>,  <39.367043, 29.282663, 48.386105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780483, 29.422192, 48.879555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.662239, 29.086065, 48.697796>,  <38.591293, 28.884390, 48.588741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.662239, 29.086065, 48.697796>,  <38.780483, 29.422192, 48.879555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662239, 29.086065, 48.697796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037567, -0.465064, 0.884480,
		-0.954568, 0.278536, 0.105911,
		-0.295615, -0.840318, -0.454399,
		38.573555, 28.833969, 48.561478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228889, 29.149498, 49.149220>,  <38.780483, 29.422192, 48.879555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228889, 29.149498, 49.149220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389591, 28.825521, 48.978302>,  <38.486012, 28.631136, 48.875751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389591, 28.825521, 48.978302>,  <38.228889, 29.149498, 49.149220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389591, 28.825521, 48.978302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274123, -0.551583, 0.787790,
		-0.873754, -0.199370, -0.443627,
		0.401759, -0.809943, -0.427297,
		38.510120, 28.582539, 48.850113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723164, 28.603949, 48.947350>,  <38.228889, 29.149498, 49.149220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723164, 28.603949, 48.947350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086529, 28.452818, 49.018948>,  <38.304546, 28.362139, 49.061905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086529, 28.452818, 49.018948>,  <37.723164, 28.603949, 48.947350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086529, 28.452818, 49.018948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405202, -0.690212, 0.599515,
		-0.102971, -0.617134, -0.780092,
		0.908410, -0.377827, 0.178992,
		38.359051, 28.339470, 49.072643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893097, 28.583073, 48.998947>,  <37.723164, 28.603949, 48.947350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893097, 28.583073, 48.998947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515926, 28.572231, 49.131702>,  <36.289623, 28.565727, 49.211353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515926, 28.572231, 49.131702>,  <36.893097, 28.583073, 48.998947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515926, 28.572231, 49.131702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225387, 0.785618, -0.576199,
		-0.245118, -0.618118, -0.746892,
		-0.942930, -0.027103, 0.331884,
		36.233047, 28.564100, 49.231266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486389, 28.754194, 48.405750>,  <36.893097, 28.583073, 48.998947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486389, 28.754194, 48.405750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236809, 28.813375, 48.712681>,  <36.087059, 28.848885, 48.896839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236809, 28.813375, 48.712681>,  <36.486389, 28.754194, 48.405750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236809, 28.813375, 48.712681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418713, 0.765775, -0.488127,
		-0.659823, -0.625858, -0.415855,
		-0.623950, 0.147954, 0.767331,
		36.049625, 28.857761, 48.942879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779510, 28.563200, 48.209362>,  <36.486389, 28.754194, 48.405750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779510, 28.563200, 48.209362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769299, 28.823658, 48.512772>,  <35.763172, 28.979933, 48.694817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769299, 28.823658, 48.512772>,  <35.779510, 28.563200, 48.209362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769299, 28.823658, 48.512772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442329, 0.673095, -0.592696,
		-0.896490, -0.350647, 0.270839,
		-0.025527, 0.651146, 0.758524,
		35.761639, 29.019001, 48.740330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047379, 28.881462, 48.270187>,  <35.779510, 28.563200, 48.209362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047379, 28.881462, 48.270187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302471, 29.137245, 48.441952>,  <35.455528, 29.290714, 48.545010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302471, 29.137245, 48.441952>,  <35.047379, 28.881462, 48.270187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302471, 29.137245, 48.441952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220023, 0.685495, -0.694036,
		-0.738166, 0.348127, 0.577856,
		0.637730, 0.639456, 0.429413,
		35.493790, 29.329082, 48.570774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719177, 29.464350, 48.324776>,  <35.047379, 28.881462, 48.270187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719177, 29.464350, 48.324776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094818, 29.596426, 48.362850>,  <35.320202, 29.675673, 48.385693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094818, 29.596426, 48.362850>,  <34.719177, 29.464350, 48.324776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094818, 29.596426, 48.362850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178061, 0.704474, -0.687030,
		-0.293906, 0.628244, 0.720367,
		0.939102, 0.330192, 0.095184,
		35.376549, 29.695484, 48.391407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626686, 30.227245, 48.303581>,  <34.719177, 29.464350, 48.324776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626686, 30.227245, 48.303581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015957, 30.157391, 48.243668>,  <35.249519, 30.115479, 48.207718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015957, 30.157391, 48.243668>,  <34.626686, 30.227245, 48.303581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015957, 30.157391, 48.243668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016283, 0.701678, -0.712308,
		0.229494, 0.690761, 0.685698,
		0.973174, -0.174636, -0.149783,
		35.307907, 30.105000, 48.198734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992455, 30.877596, 48.352409>,  <34.626686, 30.227245, 48.303581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992455, 30.877596, 48.352409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.200439, 30.629156, 48.117847>,  <35.325230, 30.480093, 47.977108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.200439, 30.629156, 48.117847>,  <34.992455, 30.877596, 48.352409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200439, 30.629156, 48.117847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088110, 0.721846, -0.686422,
		0.849630, 0.305248, 0.430061,
		0.519967, -0.621097, -0.586407,
		35.356430, 30.442827, 47.941925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636700, 31.200909, 48.323341>,  <34.992455, 30.877596, 48.352409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636700, 31.200909, 48.323341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570354, 30.978277, 47.997715>,  <35.530548, 30.844698, 47.802338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570354, 30.978277, 47.997715>,  <35.636700, 31.200909, 48.323341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570354, 30.978277, 47.997715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133187, 0.805297, -0.577718,
		0.977113, -0.204247, -0.059444,
		-0.165867, -0.556578, -0.814069,
		35.520596, 30.811304, 47.753494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157005, 31.380968, 47.888149>,  <35.636700, 31.200909, 48.323341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157005, 31.380968, 47.888149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902939, 31.190456, 47.644928>,  <35.750500, 31.076149, 47.498997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902939, 31.190456, 47.644928>,  <36.157005, 31.380968, 47.888149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902939, 31.190456, 47.644928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193178, 0.664266, -0.722103,
		0.747831, -0.576115, -0.329910,
		-0.635162, -0.476280, -0.608052,
		35.712391, 31.047573, 47.462513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563442, 31.317047, 47.258495>,  <36.157005, 31.380968, 47.888149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563442, 31.317047, 47.258495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174297, 31.276913, 47.175102>,  <35.940811, 31.252832, 47.125069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174297, 31.276913, 47.175102>,  <36.563442, 31.317047, 47.258495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174297, 31.276913, 47.175102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077206, 0.708642, -0.701331,
		0.218106, -0.698398, -0.681667,
		-0.972866, -0.100336, -0.208480,
		35.882439, 31.246813, 47.112556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585461, 31.120199, 46.602814>,  <36.563442, 31.317047, 47.258495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585461, 31.120199, 46.602814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228210, 31.290195, 46.661762>,  <36.013863, 31.392193, 46.697132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228210, 31.290195, 46.661762>,  <36.585461, 31.120199, 46.602814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228210, 31.290195, 46.661762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174160, 0.628787, -0.757823,
		-0.414733, -0.651161, -0.635599,
		-0.893121, 0.424990, 0.147372,
		35.960274, 31.417692, 46.705975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382278, 31.366449, 45.966042>,  <36.585461, 31.120199, 46.602814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382278, 31.366449, 45.966042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.116024, 31.563425, 46.190338>,  <35.956272, 31.681610, 46.324917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.116024, 31.563425, 46.190338>,  <36.382278, 31.366449, 45.966042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116024, 31.563425, 46.190338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038642, 0.773120, -0.633082,
		-0.745273, -0.399736, -0.533647,
		-0.665639, 0.492440, 0.560739,
		35.916332, 31.711157, 46.358559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765236, 31.593357, 45.467705>,  <36.382278, 31.366449, 45.966042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765236, 31.593357, 45.467705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734161, 31.835194, 45.784801>,  <35.715519, 31.980295, 45.975060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734161, 31.835194, 45.784801>,  <35.765236, 31.593357, 45.467705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734161, 31.835194, 45.784801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089395, 0.787715, -0.609519,
		-0.992962, -0.118217, -0.007145,
		-0.077683, 0.604591, 0.792739,
		35.710857, 32.016571, 46.022625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172066, 32.015549, 45.242451>,  <35.765236, 31.593357, 45.467705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172066, 32.015549, 45.242451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403301, 32.195538, 45.514725>,  <35.542042, 32.303532, 45.678089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403301, 32.195538, 45.514725>,  <35.172066, 32.015549, 45.242451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403301, 32.195538, 45.514725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137110, 0.768774, -0.624649,
		-0.804370, 0.454433, 0.382726,
		0.578092, 0.449974, 0.680686,
		35.576729, 32.330528, 45.718929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903191, 32.734585, 45.330692>,  <35.172066, 32.015549, 45.242451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903191, 32.734585, 45.330692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261322, 32.809425, 45.492374>,  <35.476200, 32.854328, 45.589386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261322, 32.809425, 45.492374>,  <34.903191, 32.734585, 45.330692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261322, 32.809425, 45.492374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146834, 0.732789, -0.664424,
		-0.420512, 0.654228, 0.628614,
		0.895327, 0.187097, 0.404209,
		35.529919, 32.865555, 45.613636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810921, 33.439308, 45.618828>,  <34.903191, 32.734585, 45.330692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810921, 33.439308, 45.618828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194328, 33.349243, 45.548916>,  <35.424374, 33.295204, 45.506969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194328, 33.349243, 45.548916>,  <34.810921, 33.439308, 45.618828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194328, 33.349243, 45.548916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086702, 0.814430, -0.573748,
		0.271531, 0.534794, 0.800166,
		0.958516, -0.225166, -0.174775,
		35.481884, 33.281693, 45.496483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168755, 34.081161, 45.598618>,  <34.810921, 33.439308, 45.618828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168755, 34.081161, 45.598618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369106, 33.812698, 45.380013>,  <35.489319, 33.651623, 45.248852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369106, 33.812698, 45.380013>,  <35.168755, 34.081161, 45.598618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369106, 33.812698, 45.380013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004919, 0.629208, -0.777222,
		0.865504, 0.391982, 0.311855,
		0.500879, -0.671154, -0.546510,
		35.519371, 33.611351, 45.216061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606205, 34.444557, 45.295322>,  <35.168755, 34.081161, 45.598618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606205, 34.444557, 45.295322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.654213, 34.128822, 45.054474>,  <35.683018, 33.939381, 44.909966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.654213, 34.128822, 45.054474>,  <35.606205, 34.444557, 45.295322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654213, 34.128822, 45.054474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053233, 0.610747, -0.790035,
		0.991343, 0.062769, 0.115322,
		0.120023, -0.789334, -0.602118,
		35.690220, 33.892021, 44.873840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108116, 34.755653, 44.793652>,  <35.606205, 34.444557, 45.295322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108116, 34.755653, 44.793652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.976784, 34.420883, 44.618492>,  <35.897984, 34.220020, 44.513397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.976784, 34.420883, 44.618492>,  <36.108116, 34.755653, 44.793652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976784, 34.420883, 44.618492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011306, 0.467049, -0.884159,
		0.944494, -0.285348, -0.162810,
		-0.328334, -0.836924, -0.437899,
		35.878284, 34.169807, 44.487122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402580, 34.738827, 44.164181>,  <36.108116, 34.755653, 44.793652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402580, 34.738827, 44.164181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088982, 34.493439, 44.126240>,  <35.900822, 34.346207, 44.103474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088982, 34.493439, 44.126240>,  <36.402580, 34.738827, 44.164181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088982, 34.493439, 44.126240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242315, 0.443127, -0.863089,
		0.571514, -0.653675, -0.496065,
		-0.783999, -0.613471, -0.094858,
		35.853783, 34.309399, 44.097782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.154339, 27.800247, 34.825451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239628, 27.734789, 34.440170>,  <42.290802, 27.695515, 34.209003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239628, 27.734789, 34.440170>,  <42.154339, 27.800247, 34.825451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239628, 27.734789, 34.440170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101144, 0.984273, -0.144834,
		0.971755, -0.066541, 0.226418,
		0.213220, -0.163644, -0.963202,
		42.303593, 27.685696, 34.151211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770721, 27.999395, 34.558010>,  <42.154339, 27.800247, 34.825451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770721, 27.999395, 34.558010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495491, 28.036602, 34.270149>,  <42.330353, 28.058926, 34.097431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495491, 28.036602, 34.270149>,  <42.770721, 27.999395, 34.558010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495491, 28.036602, 34.270149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316147, 0.931104, -0.181925,
		0.653153, -0.352695, -0.670073,
		-0.688071, 0.093016, -0.719657,
		42.289070, 28.064507, 34.054253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164028, 28.209070, 33.867386>,  <42.770721, 27.999395, 34.558010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164028, 28.209070, 33.867386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793674, 28.358843, 33.887550>,  <42.571465, 28.448708, 33.899651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793674, 28.358843, 33.887550>,  <43.164028, 28.209070, 33.867386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793674, 28.358843, 33.887550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354379, 0.906953, -0.227712,
		-0.130986, -0.192969, -0.972423,
		-0.925882, 0.374434, 0.050414,
		42.515911, 28.471172, 33.902676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260178, 28.645559, 33.303493>,  <43.164028, 28.209070, 33.867386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260178, 28.645559, 33.303493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.912880, 28.766508, 33.460831>,  <42.704502, 28.839077, 33.555233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.912880, 28.766508, 33.460831>,  <43.260178, 28.645559, 33.303493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912880, 28.766508, 33.460831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040189, 0.833081, -0.551689,
		-0.494504, -0.463194, -0.735471,
		-0.868246, 0.302370, 0.393346,
		42.652405, 28.857220, 33.578835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615646, 28.847015, 32.779293>,  <43.260178, 28.645559, 33.303493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615646, 28.847015, 32.779293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.569973, 29.058041, 33.116016>,  <42.542568, 29.184656, 33.318050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.569973, 29.058041, 33.116016>,  <42.615646, 28.847015, 32.779293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569973, 29.058041, 33.116016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089775, 0.838404, -0.537605,
		-0.989395, -0.136959, -0.048369,
		-0.114183, 0.527561, 0.841808,
		42.535717, 29.216309, 33.368561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363258, 29.426399, 32.514198>,  <42.615646, 28.847015, 32.779293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363258, 29.426399, 32.514198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.454536, 29.540531, 32.886547>,  <42.509304, 29.609011, 33.109955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.454536, 29.540531, 32.886547>,  <42.363258, 29.426399, 32.514198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454536, 29.540531, 32.886547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059294, 0.950246, -0.305805,
		-0.971808, 0.124978, 0.199922,
		0.228194, 0.285330, 0.930867,
		42.522995, 29.626131, 33.165806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822144, 30.049900, 32.672668>,  <42.363258, 29.426399, 32.514198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822144, 30.049900, 32.672668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132305, 30.053808, 32.925224>,  <42.318401, 30.056152, 33.076759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132305, 30.053808, 32.925224>,  <41.822144, 30.049900, 32.672668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132305, 30.053808, 32.925224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015539, 0.999282, -0.034546,
		-0.631273, 0.036598, 0.774697,
		0.775405, 0.009770, 0.631388,
		42.364925, 30.056740, 33.114639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647411, 30.526522, 33.157406>,  <41.822144, 30.049900, 32.672668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647411, 30.526522, 33.157406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.040745, 30.500177, 33.225197>,  <42.276745, 30.484371, 33.265873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.040745, 30.500177, 33.225197>,  <41.647411, 30.526522, 33.157406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040745, 30.500177, 33.225197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074831, 0.996084, -0.047083,
		-0.165713, 0.058981, 0.984408,
		0.983331, -0.065862, 0.169478,
		42.335743, 30.480419, 33.276039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848663, 31.095079, 33.609852>,  <41.647411, 30.526522, 33.157406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848663, 31.095079, 33.609852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.203415, 30.979025, 33.466038>,  <42.416267, 30.909393, 33.379749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.203415, 30.979025, 33.466038>,  <41.848663, 31.095079, 33.609852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203415, 30.979025, 33.466038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284602, 0.956122, -0.069522,
		0.363929, -0.040666, 0.930538,
		0.886881, -0.290134, -0.359534,
		42.469479, 30.891985, 33.358177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387779, 31.476603, 34.001144>,  <41.848663, 31.095079, 33.609852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387779, 31.476603, 34.001144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562798, 31.348307, 33.665123>,  <42.667809, 31.271328, 33.463512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562798, 31.348307, 33.665123>,  <42.387779, 31.476603, 34.001144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562798, 31.348307, 33.665123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404934, 0.904413, -0.134406,
		0.802861, -0.281356, 0.525598,
		0.437542, -0.320742, -0.840049,
		42.694061, 31.252085, 33.413109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150288, 31.649654, 34.009991>,  <42.387779, 31.476603, 34.001144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150288, 31.649654, 34.009991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023438, 31.625065, 33.631435>,  <42.947327, 31.610312, 33.404301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023438, 31.625065, 33.631435>,  <43.150288, 31.649654, 34.009991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023438, 31.625065, 33.631435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239959, 0.960225, -0.142783,
		0.917523, -0.272375, -0.289764,
		-0.317129, -0.061475, -0.946388,
		42.928299, 31.606623, 33.347519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635178, 32.038113, 33.633453>,  <43.150288, 31.649654, 34.009991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635178, 32.038113, 33.633453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326344, 32.004833, 33.381435>,  <43.141045, 31.984865, 33.230225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326344, 32.004833, 33.381435>,  <43.635178, 32.038113, 33.633453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326344, 32.004833, 33.381435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026320, 0.986357, -0.162501,
		0.634972, -0.142048, -0.759363,
		-0.772087, -0.083197, -0.630048,
		43.094719, 31.979874, 33.192421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907616, 32.359261, 33.012005>,  <43.635178, 32.038113, 33.633453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907616, 32.359261, 33.012005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507973, 32.359184, 33.028873>,  <43.268185, 32.359138, 33.038994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507973, 32.359184, 33.028873>,  <43.907616, 32.359261, 33.012005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507973, 32.359184, 33.028873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000678, 0.999786, 0.020659,
		-0.042166, 0.020670, -0.998897,
		-0.999110, -0.000194, 0.042171,
		43.208241, 32.359127, 33.041523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703995, 32.937531, 32.650417>,  <43.907616, 32.359261, 33.012005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703995, 32.937531, 32.650417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.337109, 32.892548, 32.803288>,  <43.116978, 32.865559, 32.895012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.337109, 32.892548, 32.803288>,  <43.703995, 32.937531, 32.650417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337109, 32.892548, 32.803288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171503, 0.977348, -0.124004,
		-0.359576, -0.179283, -0.915730,
		-0.917219, -0.112462, 0.382179,
		43.061943, 32.858810, 32.917942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196239, 33.339123, 32.153675>,  <43.703995, 32.937531, 32.650417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196239, 33.339123, 32.153675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045353, 33.295074, 32.521496>,  <42.954819, 33.268646, 32.742188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045353, 33.295074, 32.521496>,  <43.196239, 33.339123, 32.153675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045353, 33.295074, 32.521496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210402, 0.977132, 0.030707,
		-0.901907, -0.181893, -0.391765,
		-0.377221, -0.110123, 0.919553,
		42.932186, 33.262039, 32.797363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681091, 33.800648, 32.148899>,  <43.196239, 33.339123, 32.153675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681091, 33.800648, 32.148899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.731064, 33.733040, 32.539963>,  <42.761047, 33.692474, 32.774601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.731064, 33.733040, 32.539963>,  <42.681091, 33.800648, 32.148899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731064, 33.733040, 32.539963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018806, 0.985610, 0.167989,
		-0.991987, -0.002602, 0.126313,
		0.124933, -0.169018, 0.977663,
		42.768543, 33.682335, 32.833263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085125, 34.237011, 32.566967>,  <42.681091, 33.800648, 32.148899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085125, 34.237011, 32.566967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.324245, 34.112835, 32.862602>,  <42.467720, 34.038330, 33.039986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.324245, 34.112835, 32.862602>,  <42.085125, 34.237011, 32.566967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324245, 34.112835, 32.862602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003988, 0.923112, 0.384510,
		-0.801631, -0.226915, 0.553079,
		0.597805, -0.310441, 0.739091,
		42.503586, 34.019703, 33.084328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743526, 34.343925, 33.356190>,  <42.085125, 34.237011, 32.566967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743526, 34.343925, 33.356190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.142555, 34.348820, 33.328751>,  <42.381973, 34.351757, 33.312286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.142555, 34.348820, 33.328751>,  <41.743526, 34.343925, 33.356190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142555, 34.348820, 33.328751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013223, 0.933346, 0.358734,
		0.068412, -0.358769, 0.930916,
		0.997569, 0.012232, -0.068596,
		42.441826, 34.352489, 33.308170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934834, 34.604984, 33.971767>,  <41.743526, 34.343925, 33.356190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934834, 34.604984, 33.971767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.263931, 34.664200, 33.752251>,  <42.461391, 34.699730, 33.620541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.263931, 34.664200, 33.752251>,  <41.934834, 34.604984, 33.971767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263931, 34.664200, 33.752251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053938, 0.940800, 0.334644,
		0.565840, -0.304929, 0.766057,
		0.822749, 0.148035, -0.548789,
		42.510757, 34.708611, 33.587612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415272, 34.933487, 34.399570>,  <41.934834, 34.604984, 33.971767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415272, 34.933487, 34.399570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583515, 34.998528, 34.042549>,  <42.684464, 35.037552, 33.828339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583515, 34.998528, 34.042549>,  <42.415272, 34.933487, 34.399570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583515, 34.998528, 34.042549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221035, 0.935797, 0.274641,
		0.879902, -0.312802, 0.357668,
		0.420613, 0.162600, -0.892550,
		42.709698, 35.047306, 33.774784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064518, 35.292927, 34.498627>,  <42.415272, 34.933487, 34.399570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064518, 35.292927, 34.498627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.931698, 35.389572, 34.133907>,  <42.852005, 35.447559, 33.915077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.931698, 35.389572, 34.133907>,  <43.064518, 35.292927, 34.498627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931698, 35.389572, 34.133907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198418, 0.962901, 0.182898,
		0.922158, -0.120186, -0.367669,
		-0.332047, 0.241613, -0.911794,
		42.832085, 35.462055, 33.860371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413742, 35.840450, 34.207375>,  <43.064518, 35.292927, 34.498627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413742, 35.840450, 34.207375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041805, 35.842152, 34.060196>,  <42.818645, 35.843174, 33.971889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041805, 35.842152, 34.060196>,  <43.413742, 35.840450, 34.207375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041805, 35.842152, 34.060196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014380, 0.999590, -0.024774,
		0.367686, -0.028326, -0.929519,
		-0.929839, 0.004258, -0.367943,
		42.762856, 35.843430, 33.949814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150848, 36.184708, 34.264381>,  <43.413742, 35.840450, 34.207375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150848, 36.184708, 34.264381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.510223, 36.169971, 34.439400>,  <44.725849, 36.161129, 34.544411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.510223, 36.169971, 34.439400>,  <44.150848, 36.184708, 34.264381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510223, 36.169971, 34.439400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025315, -0.999162, -0.032149,
		0.438369, 0.017807, -0.898619,
		0.898439, -0.036841, 0.437551,
		44.779755, 36.158920, 34.570663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625957, 35.753265, 33.920788>,  <44.150848, 36.184708, 34.264381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625957, 35.753265, 33.920788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786144, 35.769615, 34.286945>,  <44.882256, 35.779423, 34.506641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786144, 35.769615, 34.286945>,  <44.625957, 35.753265, 33.920788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786144, 35.769615, 34.286945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075339, -0.997091, 0.011561,
		0.913207, 0.064335, -0.402386,
		0.400472, 0.040872, 0.915397,
		44.906284, 35.781876, 34.561565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131817, 35.241753, 33.985901>,  <44.625957, 35.753265, 33.920788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131817, 35.241753, 33.985901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113407, 35.318913, 34.377956>,  <45.102364, 35.365208, 34.613190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113407, 35.318913, 34.377956>,  <45.131817, 35.241753, 33.985901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113407, 35.318913, 34.377956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142633, -0.972394, 0.184675,
		0.988705, -0.131301, 0.072263,
		-0.046020, 0.192896, 0.980139,
		45.099602, 35.376781, 34.671997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.670185, 34.814426, 34.365070>,  <45.131817, 35.241753, 33.985901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.670185, 34.814426, 34.365070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.416363, 34.897339, 34.662895>,  <45.264069, 34.947086, 34.841591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.416363, 34.897339, 34.662895>,  <45.670185, 34.814426, 34.365070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416363, 34.897339, 34.662895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107574, -0.930299, 0.350672,
		0.765353, 0.302617, 0.568030,
		-0.634557, 0.207283, 0.744561,
		45.225994, 34.959522, 34.886265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906254, 34.337673, 34.936306>,  <45.670185, 34.814426, 34.365070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906254, 34.337673, 34.936306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.536900, 34.460106, 35.028973>,  <45.315285, 34.533566, 35.084572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.536900, 34.460106, 35.028973>,  <45.906254, 34.337673, 34.936306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536900, 34.460106, 35.028973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225882, -0.921213, 0.316772,
		0.310375, 0.240173, 0.919774,
		-0.923388, 0.306079, 0.231670,
		45.259884, 34.551929, 35.098473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764610, 34.205528, 35.629890>,  <45.906254, 34.337673, 34.936306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764610, 34.205528, 35.629890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382889, 34.216179, 35.510826>,  <45.153858, 34.222569, 35.439388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382889, 34.216179, 35.510826>,  <45.764610, 34.205528, 35.629890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382889, 34.216179, 35.510826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125324, -0.939874, 0.317696,
		-0.271307, 0.340482, 0.900258,
		-0.954299, 0.026631, -0.297664,
		45.096600, 34.224167, 35.421528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313141, 33.974133, 36.227806>,  <45.764610, 34.205528, 35.629890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313141, 33.974133, 36.227806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.108418, 33.911800, 35.889866>,  <44.985584, 33.874401, 35.687103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.108418, 33.911800, 35.889866>,  <45.313141, 33.974133, 36.227806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108418, 33.911800, 35.889866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355012, -0.857152, 0.373172,
		-0.782314, 0.490924, 0.383377,
		-0.511812, -0.155834, -0.844846,
		44.954872, 33.865051, 35.636414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700123, 33.759983, 36.466454>,  <45.313141, 33.974133, 36.227806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700123, 33.759983, 36.466454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684738, 33.614956, 36.093987>,  <44.675507, 33.527939, 35.870506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684738, 33.614956, 36.093987>,  <44.700123, 33.759983, 36.466454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684738, 33.614956, 36.093987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282340, -0.889941, 0.358177,
		-0.958543, 0.276681, -0.068138,
		-0.038462, -0.362566, -0.931164,
		44.673199, 33.506187, 35.814636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051601, 33.317486, 36.311844>,  <44.700123, 33.759983, 36.466454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051601, 33.317486, 36.311844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.314037, 33.187042, 36.039608>,  <44.471500, 33.108776, 35.876266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.314037, 33.187042, 36.039608>,  <44.051601, 33.317486, 36.311844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314037, 33.187042, 36.039608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372248, -0.924320, 0.084050,
		-0.656490, 0.198203, -0.727831,
		0.656089, -0.326111, -0.680587,
		44.510864, 33.089211, 35.835430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682289, 32.697945, 35.998756>,  <44.051601, 33.317486, 36.311844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682289, 32.697945, 35.998756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066990, 32.637356, 35.907463>,  <44.297810, 32.601002, 35.852688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066990, 32.637356, 35.907463>,  <43.682289, 32.697945, 35.998756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066990, 32.637356, 35.907463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155049, -0.987904, 0.002296,
		-0.225821, 0.033179, -0.973604,
		0.961751, -0.151475, -0.228234,
		44.355515, 32.591915, 35.838993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577824, 32.265507, 35.499245>,  <43.682289, 32.697945, 35.998756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577824, 32.265507, 35.499245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960312, 32.237675, 35.612949>,  <44.189804, 32.220974, 35.681171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960312, 32.237675, 35.612949>,  <43.577824, 32.265507, 35.499245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960312, 32.237675, 35.612949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046890, -0.995201, -0.085884,
		0.288877, 0.068795, -0.954891,
		0.956217, -0.069584, 0.284265,
		44.247177, 32.216801, 35.698227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891296, 31.770113, 35.110386>,  <43.577824, 32.265507, 35.499245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891296, 31.770113, 35.110386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159489, 31.764460, 35.407101>,  <44.320404, 31.761068, 35.585129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159489, 31.764460, 35.407101>,  <43.891296, 31.770113, 35.110386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159489, 31.764460, 35.407101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212808, -0.961470, 0.174034,
		0.710748, -0.274546, -0.647659,
		0.670485, -0.014133, 0.741789,
		44.360634, 31.760220, 35.629639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381275, 31.236134, 34.961487>,  <43.891296, 31.770113, 35.110386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381275, 31.236134, 34.961487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.373764, 31.301506, 35.356037>,  <44.369259, 31.340729, 35.592766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.373764, 31.301506, 35.356037>,  <44.381275, 31.236134, 34.961487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373764, 31.301506, 35.356037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085480, -0.983201, 0.161276,
		0.996163, -0.081287, 0.032429,
		-0.018775, 0.163429, 0.986377,
		44.368130, 31.350534, 35.651951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870735, 30.686705, 35.200279>,  <44.381275, 31.236134, 34.961487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870735, 30.686705, 35.200279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675304, 30.810471, 35.526608>,  <44.558044, 30.884729, 35.722404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675304, 30.810471, 35.526608>,  <44.870735, 30.686705, 35.200279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675304, 30.810471, 35.526608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167503, -0.950881, 0.260324,
		0.856292, -0.009464, 0.516405,
		-0.488576, 0.309413, 0.815817,
		44.528732, 30.903294, 35.771351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919567, 30.103374, 35.559181>,  <44.870735, 30.686705, 35.200279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919567, 30.103374, 35.559181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658855, 30.306801, 35.784233>,  <44.502430, 30.428856, 35.919262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658855, 30.306801, 35.784233>,  <44.919567, 30.103374, 35.559181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658855, 30.306801, 35.784233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399323, -0.860813, 0.315502,
		0.644770, -0.019033, 0.764140,
		-0.651776, 0.508565, 0.562627,
		44.463322, 30.459370, 35.953022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732903, 29.612177, 36.067524>,  <44.919567, 30.103374, 35.559181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732903, 29.612177, 36.067524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.439953, 29.883102, 36.039593>,  <44.264183, 30.045658, 36.022835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.439953, 29.883102, 36.039593>,  <44.732903, 29.612177, 36.067524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439953, 29.883102, 36.039593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679055, -0.718983, 0.148148,
		0.050135, 0.155919, 0.986497,
		-0.732374, 0.677313, -0.069831,
		44.220242, 30.086296, 36.018642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281906, 29.461054, 36.601238>,  <44.732903, 29.612177, 36.067524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281906, 29.461054, 36.601238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.065659, 29.677788, 36.343819>,  <43.935909, 29.807827, 36.189369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.065659, 29.677788, 36.343819>,  <44.281906, 29.461054, 36.601238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065659, 29.677788, 36.343819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725814, -0.687186, 0.031148,
		-0.425359, 0.483934, 0.764773,
		-0.540615, 0.541834, -0.643546,
		43.903473, 29.840338, 36.150753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681011, 29.431627, 36.884655>,  <44.281906, 29.461054, 36.601238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681011, 29.431627, 36.884655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.635723, 29.513536, 36.495758>,  <43.608551, 29.562681, 36.262421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.635723, 29.513536, 36.495758>,  <43.681011, 29.431627, 36.884655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635723, 29.513536, 36.495758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707800, -0.703351, -0.065712,
		-0.697281, 0.680711, 0.224571,
		-0.113221, 0.204771, -0.972240,
		43.601757, 29.574968, 36.204086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893185, 29.409012, 36.769768>,  <43.681011, 29.431627, 36.884655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893185, 29.409012, 36.769768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.106525, 29.343807, 36.437752>,  <43.234531, 29.304684, 36.238544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.106525, 29.343807, 36.437752>,  <42.893185, 29.409012, 36.769768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106525, 29.343807, 36.437752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605172, -0.759127, -0.239778,
		-0.591017, 0.630201, -0.503533,
		0.533354, -0.163011, -0.830037,
		43.266533, 29.294905, 36.188740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406345, 29.302473, 36.314129>,  <42.893185, 29.409012, 36.769768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406345, 29.302473, 36.314129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738155, 29.190035, 36.121101>,  <42.937241, 29.122572, 36.005287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738155, 29.190035, 36.121101>,  <42.406345, 29.302473, 36.314129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738155, 29.190035, 36.121101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487952, -0.785108, -0.381455,
		-0.271641, 0.551896, -0.788430,
		0.829526, -0.281097, -0.482567,
		42.987015, 29.105705, 35.976330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.226944, 35.283688, 39.324261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837116, 35.301525, 39.412109>,  <39.603222, 35.312229, 39.464817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837116, 35.301525, 39.412109>,  <40.226944, 35.283688, 39.324261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837116, 35.301525, 39.412109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196494, 0.301192, -0.933099,
		-0.107762, -0.952520, -0.284768,
		-0.974565, 0.044597, 0.219621,
		39.544746, 35.314903, 39.477997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868725, 35.077026, 38.742630>,  <40.226944, 35.283688, 39.324261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868725, 35.077026, 38.742630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575821, 35.258877, 38.945457>,  <39.400078, 35.367989, 39.067154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575821, 35.258877, 38.945457>,  <39.868725, 35.077026, 38.742630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575821, 35.258877, 38.945457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407018, 0.304808, -0.861062,
		-0.546018, -0.836904, -0.038157,
		-0.732257, 0.454625, 0.507066,
		39.356144, 35.395264, 39.097576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370842, 34.828125, 38.418678>,  <39.868725, 35.077026, 38.742630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370842, 34.828125, 38.418678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251495, 35.174065, 38.580177>,  <39.179890, 35.381630, 38.677078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251495, 35.174065, 38.580177>,  <39.370842, 34.828125, 38.418678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251495, 35.174065, 38.580177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450879, 0.245129, -0.858266,
		-0.841242, -0.438118, 0.316805,
		-0.298363, 0.864850, 0.403750,
		39.161987, 35.433521, 38.701302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623196, 34.828354, 38.349491>,  <39.370842, 34.828125, 38.418678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623196, 34.828354, 38.349491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764080, 35.201416, 38.380730>,  <38.848610, 35.425255, 38.399471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764080, 35.201416, 38.380730>,  <38.623196, 34.828354, 38.349491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764080, 35.201416, 38.380730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564556, 0.278265, -0.777075,
		-0.746475, 0.229607, 0.624545,
		0.352211, 0.932657, 0.078092,
		38.869743, 35.481213, 38.404156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087849, 35.194286, 37.942574>,  <38.623196, 34.828354, 38.349491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087849, 35.194286, 37.942574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366940, 35.475544, 37.997368>,  <38.534393, 35.644299, 38.030247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366940, 35.475544, 37.997368>,  <38.087849, 35.194286, 37.942574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366940, 35.475544, 37.997368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259387, 0.426234, -0.866627,
		-0.667750, 0.569140, 0.479782,
		0.697731, 0.703139, 0.136990,
		38.576260, 35.686485, 38.038464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772144, 35.876942, 38.116825>,  <38.087849, 35.194286, 37.942574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772144, 35.876942, 38.116825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127388, 35.962063, 37.953861>,  <38.340534, 36.013134, 37.856083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127388, 35.962063, 37.953861>,  <37.772144, 35.876942, 38.116825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127388, 35.962063, 37.953861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458781, 0.356181, -0.814036,
		-0.028115, 0.909863, 0.413955,
		0.888105, 0.212801, -0.407413,
		38.393818, 36.025902, 37.831638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656559, 36.559273, 37.769680>,  <37.772144, 35.876942, 38.116825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656559, 36.559273, 37.769680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953022, 36.342171, 37.611641>,  <38.130901, 36.211910, 37.516815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953022, 36.342171, 37.611641>,  <37.656559, 36.559273, 37.769680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953022, 36.342171, 37.611641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284408, 0.279259, -0.917130,
		0.608112, 0.792106, 0.052611,
		0.741156, -0.542754, -0.395102,
		38.175369, 36.179344, 37.493111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756111, 36.889339, 37.187431>,  <37.656559, 36.559273, 37.769680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756111, 36.889339, 37.187431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000263, 36.587231, 37.091927>,  <38.146755, 36.405968, 37.034622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000263, 36.587231, 37.091927>,  <37.756111, 36.889339, 37.187431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000263, 36.587231, 37.091927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139629, 0.194118, -0.970990,
		0.779706, 0.626011, 0.013028,
		0.610379, -0.755268, -0.238764,
		38.183376, 36.360649, 37.020298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271347, 37.078384, 36.696079>,  <37.756111, 36.889339, 37.187431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271347, 37.078384, 36.696079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215591, 36.686153, 36.640900>,  <38.182137, 36.450813, 36.607792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215591, 36.686153, 36.640900>,  <38.271347, 37.078384, 36.696079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215591, 36.686153, 36.640900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112615, 0.154102, -0.981616,
		0.983813, -0.121293, -0.131908,
		-0.139391, -0.980582, -0.137948,
		38.173775, 36.391979, 36.599514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807480, 36.949478, 36.193531>,  <38.271347, 37.078384, 36.696079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807480, 36.949478, 36.193531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567883, 36.633877, 36.138859>,  <38.424126, 36.444515, 36.106056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567883, 36.633877, 36.138859>,  <38.807480, 36.949478, 36.193531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567883, 36.633877, 36.138859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080558, 0.110450, -0.990611,
		0.796692, -0.604380, -0.002598,
		-0.598992, -0.789003, -0.136682,
		38.388184, 36.397175, 36.097855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178772, 36.423866, 35.621719>,  <38.807480, 36.949478, 36.193531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178772, 36.423866, 35.621719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784718, 36.363625, 35.654781>,  <38.548286, 36.327480, 35.674618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784718, 36.363625, 35.654781>,  <39.178772, 36.423866, 35.621719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784718, 36.363625, 35.654781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121163, 0.268032, -0.955761,
		0.121792, -0.951565, -0.282295,
		-0.985132, -0.150608, 0.082651,
		38.489178, 36.318443, 35.679577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059887, 36.056076, 35.093781>,  <39.178772, 36.423866, 35.621719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059887, 36.056076, 35.093781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711430, 36.227921, 35.188896>,  <38.502357, 36.331028, 35.245968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711430, 36.227921, 35.188896>,  <39.059887, 36.056076, 35.093781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711430, 36.227921, 35.188896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171172, 0.188204, -0.967098,
		-0.460232, -0.883183, -0.090414,
		-0.871141, 0.429613, 0.237794,
		38.450089, 36.356804, 35.260235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562851, 35.711491, 34.678123>,  <39.059887, 36.056076, 35.093781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562851, 35.711491, 34.678123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447987, 36.080128, 34.782597>,  <38.379070, 36.301308, 34.845280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447987, 36.080128, 34.782597>,  <38.562851, 35.711491, 34.678123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447987, 36.080128, 34.782597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002858, 0.271837, -0.962339,
		-0.957879, -0.277090, -0.075427,
		-0.287158, 0.921589, 0.261179,
		38.361839, 36.356606, 34.860950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262257, 35.522369, 34.672737>,  <38.562851, 35.711491, 34.678123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262257, 35.522369, 34.672737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555889, 35.276447, 34.557396>,  <39.732067, 35.128895, 34.488194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555889, 35.276447, 34.557396>,  <39.262257, 35.522369, 34.672737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555889, 35.276447, 34.557396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598478, -0.385098, -0.702513,
		0.320863, 0.688271, -0.650638,
		0.734078, -0.614803, -0.288351,
		39.776112, 35.092007, 34.470890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231251, 34.942844, 34.234970>,  <39.262257, 35.522369, 34.672737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231251, 34.942844, 34.234970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478916, 34.658161, 34.102242>,  <39.627518, 34.487350, 34.022606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478916, 34.658161, 34.102242>,  <39.231251, 34.942844, 34.234970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478916, 34.658161, 34.102242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371077, -0.637588, 0.675118,
		-0.692053, -0.294878, -0.658871,
		0.619165, -0.711708, -0.331822,
		39.664665, 34.444649, 34.002697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888817, 34.253841, 34.064220>,  <39.231251, 34.942844, 34.234970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888817, 34.253841, 34.064220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270927, 34.184803, 34.160275>,  <39.500195, 34.143379, 34.217907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270927, 34.184803, 34.160275>,  <38.888817, 34.253841, 34.064220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270927, 34.184803, 34.160275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283133, -0.768223, 0.574169,
		0.085383, -0.616479, -0.782729,
		0.955273, -0.172593, 0.240139,
		39.557510, 34.133026, 34.232315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962620, 33.556217, 34.030704>,  <38.888817, 34.253841, 34.064220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962620, 33.556217, 34.030704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263454, 33.681519, 34.262650>,  <39.443954, 33.756699, 34.401817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263454, 33.681519, 34.262650>,  <38.962620, 33.556217, 34.030704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263454, 33.681519, 34.262650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183856, -0.745174, 0.641025,
		0.632902, -0.588716, -0.502841,
		0.752085, 0.313256, 0.579860,
		39.489079, 33.775494, 34.436607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298576, 32.917992, 34.243549>,  <38.962620, 33.556217, 34.030704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298576, 32.917992, 34.243549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416069, 33.161484, 34.538349>,  <39.486565, 33.307579, 34.715229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416069, 33.161484, 34.538349>,  <39.298576, 32.917992, 34.243549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416069, 33.161484, 34.538349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145589, -0.733525, 0.663887,
		0.944735, -0.302306, -0.126837,
		0.293735, 0.608731, 0.736999,
		39.504189, 33.344105, 34.759449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924236, 32.599556, 34.621658>,  <39.298576, 32.917992, 34.243549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924236, 32.599556, 34.621658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688370, 32.831001, 34.847046>,  <39.546848, 32.969868, 34.982277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688370, 32.831001, 34.847046>,  <39.924236, 32.599556, 34.621658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688370, 32.831001, 34.847046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071155, -0.732176, 0.677388,
		0.804505, 0.359341, 0.472912,
		-0.589668, 0.578612, 0.563470,
		39.511471, 33.004585, 35.016087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947350, 32.223774, 35.191616>,  <39.924236, 32.599556, 34.621658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947350, 32.223774, 35.191616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705841, 32.518139, 35.314190>,  <39.560936, 32.694756, 35.387733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705841, 32.518139, 35.314190>,  <39.947350, 32.223774, 35.191616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705841, 32.518139, 35.314190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249422, -0.539503, 0.804192,
		0.757133, 0.409116, 0.509287,
		-0.603769, 0.735908, 0.306433,
		39.524712, 32.738911, 35.406120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012726, 32.166359, 35.899593>,  <39.947350, 32.223774, 35.191616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012726, 32.166359, 35.899593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681004, 32.384975, 35.853043>,  <39.481968, 32.516144, 35.825111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681004, 32.384975, 35.853043>,  <40.012726, 32.166359, 35.899593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681004, 32.384975, 35.853043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383925, -0.405966, 0.829333,
		0.406017, 0.732453, 0.546501,
		-0.829308, 0.546538, -0.116379,
		39.432213, 32.548939, 35.818130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843418, 32.418945, 36.595329>,  <40.012726, 32.166359, 35.899593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843418, 32.418945, 36.595329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506348, 32.466511, 36.385281>,  <39.304104, 32.495052, 36.259251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506348, 32.466511, 36.385281>,  <39.843418, 32.418945, 36.595329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506348, 32.466511, 36.385281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529360, -0.361144, 0.767693,
		-0.098353, 0.924896, 0.367278,
		-0.842677, 0.118918, -0.525123,
		39.253544, 32.502186, 36.227745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396122, 32.711685, 37.060318>,  <39.843418, 32.418945, 36.595329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396122, 32.711685, 37.060318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133022, 32.547298, 36.807819>,  <38.975163, 32.448666, 36.656322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133022, 32.547298, 36.807819>,  <39.396122, 32.711685, 37.060318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133022, 32.547298, 36.807819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534064, -0.336522, 0.775583,
		-0.531165, 0.847266, 0.001867,
		-0.657753, -0.410965, -0.631243,
		38.935696, 32.424007, 36.618446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797409, 32.889210, 37.341579>,  <39.396122, 32.711685, 37.060318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797409, 32.889210, 37.341579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702091, 32.591915, 37.091518>,  <38.644901, 32.413540, 36.941483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702091, 32.591915, 37.091518>,  <38.797409, 32.889210, 37.341579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702091, 32.591915, 37.091518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672704, -0.337965, 0.658216,
		-0.700489, 0.577394, -0.419441,
		-0.238294, -0.743233, -0.625156,
		38.630604, 32.368946, 36.903973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047081, 32.912117, 37.169395>,  <38.797409, 32.889210, 37.341579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047081, 32.912117, 37.169395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196888, 32.542984, 37.133373>,  <38.286774, 32.321503, 37.111759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196888, 32.542984, 37.133373>,  <38.047081, 32.912117, 37.169395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196888, 32.542984, 37.133373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615049, -0.319933, 0.720665,
		-0.693866, -0.214516, -0.687410,
		0.374520, -0.922836, -0.090053,
		38.309242, 32.266132, 37.106358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483433, 32.550362, 37.225533>,  <38.047081, 32.912117, 37.169395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483433, 32.550362, 37.225533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778263, 32.298119, 37.322742>,  <37.955162, 32.146774, 37.381069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778263, 32.298119, 37.322742>,  <37.483433, 32.550362, 37.225533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778263, 32.298119, 37.322742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538244, -0.330307, 0.775365,
		-0.408679, -0.702305, -0.582880,
		0.737072, -0.630607, 0.243022,
		37.999386, 32.108936, 37.395649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111370, 31.947990, 37.457230>,  <37.483433, 32.550362, 37.225533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111370, 31.947990, 37.457230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488266, 31.863832, 37.561474>,  <37.714405, 31.813337, 37.624020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488266, 31.863832, 37.561474>,  <37.111370, 31.947990, 37.457230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488266, 31.863832, 37.561474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333234, -0.510456, 0.792710,
		-0.033753, -0.833768, -0.551083,
		0.942239, -0.210396, 0.260611,
		37.770939, 31.800714, 37.639656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178780, 31.200726, 37.617859>,  <37.111370, 31.947990, 37.457230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178780, 31.200726, 37.617859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464027, 31.403297, 37.811760>,  <37.635178, 31.524839, 37.928101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464027, 31.403297, 37.811760>,  <37.178780, 31.200726, 37.617859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464027, 31.403297, 37.811760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288218, -0.418541, 0.861251,
		0.639053, -0.753892, -0.152509,
		0.713122, 0.506429, 0.484755,
		37.677963, 31.555225, 37.957188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157463, 30.718781, 36.965866>,  <37.178780, 31.200726, 37.617859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157463, 30.718781, 36.965866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861050, 30.462580, 36.885239>,  <36.683201, 30.308859, 36.836861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861050, 30.462580, 36.885239>,  <37.157463, 30.718781, 36.965866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861050, 30.462580, 36.885239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160954, 0.460881, -0.872745,
		0.651894, -0.614287, -0.444618,
		-0.741032, -0.640501, -0.201574,
		36.638741, 30.270430, 36.824768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313660, 30.269577, 36.391319>,  <37.157463, 30.718781, 36.965866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313660, 30.269577, 36.391319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913986, 30.280817, 36.402966>,  <36.674183, 30.287561, 36.409954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913986, 30.280817, 36.402966>,  <37.313660, 30.269577, 36.391319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913986, 30.280817, 36.402966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004281, 0.642020, -0.766676,
		-0.040234, -0.766173, -0.641374,
		-0.999181, 0.028100, 0.029111,
		36.614231, 30.289248, 36.411697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138359, 30.351528, 35.735241>,  <37.313660, 30.269577, 36.391319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138359, 30.351528, 35.735241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772369, 30.379484, 35.894203>,  <36.552776, 30.396257, 35.989582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772369, 30.379484, 35.894203>,  <37.138359, 30.351528, 35.735241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772369, 30.379484, 35.894203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338600, 0.402700, -0.850402,
		-0.219473, -0.912660, -0.344795,
		-0.914977, 0.069892, 0.397408,
		36.497875, 30.400452, 36.013424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554897, 30.109608, 35.241928>,  <37.138359, 30.351528, 35.735241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554897, 30.109608, 35.241928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454094, 30.402777, 35.494694>,  <36.393612, 30.578678, 35.646355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454094, 30.402777, 35.494694>,  <36.554897, 30.109608, 35.241928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454094, 30.402777, 35.494694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093992, 0.631364, -0.769769,
		-0.963149, -0.253385, -0.090222,
		-0.252011, 0.732922, 0.631914,
		36.378490, 30.622654, 35.684269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021568, 30.501850, 34.961571>,  <36.554897, 30.109608, 35.241928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021568, 30.501850, 34.961571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158764, 30.765882, 35.228897>,  <36.241081, 30.924303, 35.389294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158764, 30.765882, 35.228897>,  <36.021568, 30.501850, 34.961571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158764, 30.765882, 35.228897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134625, 0.738675, -0.660481,
		-0.929644, 0.136562, 0.342219,
		0.342985, 0.660083, 0.668320,
		36.261658, 30.963907, 35.429394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540886, 31.087137, 35.128265>,  <36.021568, 30.501850, 34.961571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540886, 31.087137, 35.128265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907280, 31.224934, 35.210533>,  <36.127117, 31.307611, 35.259895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907280, 31.224934, 35.210533>,  <35.540886, 31.087137, 35.128265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907280, 31.224934, 35.210533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187558, 0.820817, -0.539519,
		-0.354681, 0.455614, 0.816466,
		0.915982, 0.344492, 0.205674,
		36.182076, 31.328281, 35.272236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411758, 31.842936, 35.299076>,  <35.540886, 31.087137, 35.128265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411758, 31.842936, 35.299076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806561, 31.818399, 35.239666>,  <36.043442, 31.803677, 35.204018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806561, 31.818399, 35.239666>,  <35.411758, 31.842936, 35.299076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806561, 31.818399, 35.239666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026315, 0.850099, -0.525965,
		0.158526, 0.523038, 0.837437,
		0.987004, -0.061342, -0.148527,
		36.102661, 31.799997, 35.195107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595318, 32.414078, 35.423615>,  <35.411758, 31.842936, 35.299076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595318, 32.414078, 35.423615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899536, 32.282265, 35.199837>,  <36.082069, 32.203178, 35.065571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899536, 32.282265, 35.199837>,  <35.595318, 32.414078, 35.423615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899536, 32.282265, 35.199837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006936, 0.857463, -0.514499,
		0.649245, 0.395181, 0.649856,
		0.760547, -0.329529, -0.559445,
		36.127701, 32.183407, 35.032001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996647, 32.918423, 35.455639>,  <35.595318, 32.414078, 35.423615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996647, 32.918423, 35.455639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127632, 32.713108, 35.138325>,  <36.206223, 32.589920, 34.947937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127632, 32.713108, 35.138325>,  <35.996647, 32.918423, 35.455639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127632, 32.713108, 35.138325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039750, 0.846316, -0.531196,
		0.944028, 0.142414, 0.297540,
		0.327463, -0.513291, -0.793285,
		36.225872, 32.559120, 34.900341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482674, 33.311192, 35.165585>,  <35.996647, 32.918423, 35.455639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482674, 33.311192, 35.165585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342121, 33.068325, 34.880520>,  <36.257790, 32.922607, 34.709480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342121, 33.068325, 34.880520>,  <36.482674, 33.311192, 35.165585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342121, 33.068325, 34.880520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121748, 0.784368, -0.608230,
		0.928282, -0.126956, -0.349535,
		-0.351383, -0.607164, -0.712658,
		36.236706, 32.886177, 34.666721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753502, 33.601257, 34.572922>,  <36.482674, 33.311192, 35.165585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753502, 33.601257, 34.572922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493183, 33.335411, 34.426090>,  <36.336990, 33.175903, 34.337990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493183, 33.335411, 34.426090>,  <36.753502, 33.601257, 34.572922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493183, 33.335411, 34.426090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225143, 0.630664, -0.742680,
		0.725101, -0.400690, -0.560068,
		-0.650799, -0.664613, -0.367082,
		36.297943, 33.136028, 34.315968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916023, 33.412838, 33.898376>,  <36.753502, 33.601257, 34.572922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916023, 33.412838, 33.898376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523399, 33.359074, 33.952736>,  <36.287823, 33.326813, 33.985352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523399, 33.359074, 33.952736>,  <36.916023, 33.412838, 33.898376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523399, 33.359074, 33.952736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189499, 0.591212, -0.783938,
		0.025027, -0.795236, -0.605783,
		-0.981562, -0.134415, 0.135900,
		36.228931, 33.318748, 33.993507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.412796, 28.057198, 39.715027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.014133, 28.049437, 39.746784>,  <36.774937, 28.044781, 39.765839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.014133, 28.049437, 39.746784>,  <37.412796, 28.057198, 39.715027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014133, 28.049437, 39.746784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080667, 0.389919, -0.917309,
		-0.013162, -0.920645, -0.390179,
		-0.996654, -0.019401, 0.079398,
		36.715137, 28.043615, 39.770603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128025, 27.671492, 39.045029>,  <37.412796, 28.057198, 39.715027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128025, 27.671492, 39.045029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846184, 27.910347, 39.198372>,  <36.677078, 28.053659, 39.290379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846184, 27.910347, 39.198372>,  <37.128025, 27.671492, 39.045029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846184, 27.910347, 39.198372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219719, 0.330099, -0.918019,
		-0.674731, -0.731068, -0.101385,
		-0.704601, 0.597139, 0.383357,
		36.634804, 28.089489, 39.313377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572662, 27.660791, 38.585056>,  <37.128025, 27.671492, 39.045029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572662, 27.660791, 38.585056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471569, 27.989195, 38.789829>,  <36.410915, 28.186237, 38.912693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471569, 27.989195, 38.789829>,  <36.572662, 27.660791, 38.585056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471569, 27.989195, 38.789829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103891, 0.503017, -0.858009,
		-0.961943, -0.270028, -0.041831,
		-0.252729, 0.821011, 0.511928,
		36.395752, 28.235498, 38.943409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015484, 27.969946, 38.235752>,  <36.572662, 27.660791, 38.585056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015484, 27.969946, 38.235752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150902, 28.284048, 38.443119>,  <36.232151, 28.472509, 38.567539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150902, 28.284048, 38.443119>,  <36.015484, 27.969946, 38.235752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150902, 28.284048, 38.443119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160653, 0.591101, -0.790437,
		-0.927134, 0.184313, 0.326268,
		0.338545, 0.785257, 0.518419,
		36.252464, 28.519625, 38.598644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596249, 28.488586, 37.951134>,  <36.015484, 27.969946, 38.235752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596249, 28.488586, 37.951134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892586, 28.675014, 38.144600>,  <36.070389, 28.786871, 38.260681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892586, 28.675014, 38.144600>,  <35.596249, 28.488586, 37.951134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892586, 28.675014, 38.144600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044785, 0.752758, -0.656772,
		-0.670189, 0.464901, 0.578545,
		0.740838, 0.466072, 0.483669,
		36.114838, 28.814837, 38.289700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368679, 29.270744, 38.080883>,  <35.596249, 28.488586, 37.951134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368679, 29.270744, 38.080883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765057, 29.217567, 38.073372>,  <36.002884, 29.185661, 38.068867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765057, 29.217567, 38.073372>,  <35.368679, 29.270744, 38.080883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765057, 29.217567, 38.073372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086367, 0.738254, -0.668971,
		0.102793, 0.661293, 0.743052,
		0.990946, -0.132940, -0.018774,
		36.062340, 29.177685, 38.067741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603580, 29.956564, 38.195103>,  <35.368679, 29.270744, 38.080883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603580, 29.956564, 38.195103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.912868, 29.739260, 38.064262>,  <36.098442, 29.608877, 37.985760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.912868, 29.739260, 38.064262>,  <35.603580, 29.956564, 38.195103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912868, 29.739260, 38.064262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259063, 0.741431, -0.619004,
		0.578805, 0.393887, 0.714029,
		0.773221, -0.543262, -0.327102,
		36.144836, 29.576281, 37.966133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229786, 30.338484, 38.244690>,  <35.603580, 29.956564, 38.195103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229786, 30.338484, 38.244690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255135, 30.068537, 37.950603>,  <36.270344, 29.906569, 37.774151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255135, 30.068537, 37.950603>,  <36.229786, 30.338484, 38.244690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255135, 30.068537, 37.950603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139336, 0.735462, -0.663084,
		0.988216, -0.060424, 0.140638,
		0.063367, -0.674866, -0.735214,
		36.274143, 29.866077, 37.730038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800938, 30.525331, 37.832031>,  <36.229786, 30.338484, 38.244690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800938, 30.525331, 37.832031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542770, 30.315493, 37.609959>,  <36.387871, 30.189589, 37.476715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542770, 30.315493, 37.609959>,  <36.800938, 30.525331, 37.832031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542770, 30.315493, 37.609959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073967, 0.766352, -0.638148,
		0.760223, -0.370821, -0.533435,
		-0.645438, -0.524592, -0.555170,
		36.349144, 30.158113, 37.443405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475117, 30.696877, 38.122723>,  <36.800938, 30.525331, 37.832031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475117, 30.696877, 38.122723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594452, 31.049437, 38.269218>,  <37.666054, 31.260973, 38.357117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594452, 31.049437, 38.269218>,  <37.475117, 30.696877, 38.122723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594452, 31.049437, 38.269218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064228, -0.364304, 0.929063,
		0.952296, -0.300701, -0.052076,
		0.298341, 0.881398, 0.366239,
		37.683952, 31.313856, 38.379089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911510, 30.492443, 38.635109>,  <37.475117, 30.696877, 38.122723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911510, 30.492443, 38.635109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834690, 30.871363, 38.737671>,  <37.788597, 31.098715, 38.799210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834690, 30.871363, 38.737671>,  <37.911510, 30.492443, 38.635109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834690, 30.871363, 38.737671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064240, -0.248577, 0.966480,
		0.979280, 0.202084, -0.013115,
		-0.192050, 0.947297, 0.256408,
		37.777077, 31.155552, 38.814594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532116, 30.712458, 39.027702>,  <37.911510, 30.492443, 38.635109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532116, 30.712458, 39.027702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226124, 30.954405, 39.116196>,  <38.042530, 31.099573, 39.169292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226124, 30.954405, 39.116196>,  <38.532116, 30.712458, 39.027702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226124, 30.954405, 39.116196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029494, -0.310239, 0.950201,
		0.643381, 0.733408, 0.219486,
		-0.764978, 0.604867, 0.221233,
		37.996632, 31.135864, 39.182564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695576, 31.011944, 39.705238>,  <38.532116, 30.712458, 39.027702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695576, 31.011944, 39.705238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.300449, 31.054094, 39.659424>,  <38.063374, 31.079384, 39.631935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.300449, 31.054094, 39.659424>,  <38.695576, 31.011944, 39.705238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300449, 31.054094, 39.659424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145372, -0.361912, 0.920807,
		0.055577, 0.926237, 0.372821,
		-0.987815, 0.105374, -0.114535,
		38.004105, 31.085707, 39.625065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464500, 31.193949, 40.363827>,  <38.695576, 31.011944, 39.705238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464500, 31.193949, 40.363827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122509, 31.085938, 40.186695>,  <37.917316, 31.021132, 40.080414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122509, 31.085938, 40.186695>,  <38.464500, 31.193949, 40.363827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122509, 31.085938, 40.186695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356858, -0.313326, 0.880045,
		-0.376388, 0.910446, 0.171524,
		-0.854976, -0.270028, -0.442832,
		37.866016, 31.004929, 40.053844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929775, 31.400087, 40.739799>,  <38.464500, 31.193949, 40.363827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929775, 31.400087, 40.739799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760498, 31.100573, 40.535751>,  <37.658932, 30.920864, 40.413322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.760498, 31.100573, 40.535751>,  <37.929775, 31.400087, 40.739799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760498, 31.100573, 40.535751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328959, -0.397623, 0.856552,
		-0.844213, 0.530294, -0.078051,
		-0.423189, -0.748788, -0.510124,
		37.633541, 30.875937, 40.382713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427368, 31.268852, 41.132343>,  <37.929775, 31.400087, 40.739799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427368, 31.268852, 41.132343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.471058, 30.947941, 40.897594>,  <37.497272, 30.755394, 40.756744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.471058, 30.947941, 40.897594>,  <37.427368, 31.268852, 41.132343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471058, 30.947941, 40.897594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180100, -0.596607, 0.782064,
		-0.977565, 0.020276, -0.209654,
		0.109224, -0.802277, -0.586874,
		37.503826, 30.707258, 40.721531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091347, 30.811069, 41.478451>,  <37.427368, 31.268852, 41.132343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091347, 30.811069, 41.478451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275425, 30.559189, 41.228111>,  <37.385872, 30.408060, 41.077908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275425, 30.559189, 41.228111>,  <37.091347, 30.811069, 41.478451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275425, 30.559189, 41.228111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026902, -0.714500, 0.699118,
		-0.887408, -0.304897, -0.345752,
		0.460199, -0.629704, -0.625851,
		37.413486, 30.370277, 41.040356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687103, 30.305431, 41.576981>,  <37.091347, 30.811069, 41.478451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687103, 30.305431, 41.576981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.009670, 30.140514, 41.407417>,  <37.203213, 30.041563, 41.305679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.009670, 30.140514, 41.407417>,  <36.687103, 30.305431, 41.576981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009670, 30.140514, 41.407417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047117, -0.759379, 0.648941,
		-0.589462, -0.503346, -0.631805,
		0.806421, -0.412294, -0.423908,
		37.251598, 30.016827, 41.280243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577953, 29.590082, 41.534611>,  <36.687103, 30.305431, 41.576981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577953, 29.590082, 41.534611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975986, 29.609913, 41.500313>,  <37.214806, 29.621811, 41.479733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975986, 29.609913, 41.500313>,  <36.577953, 29.590082, 41.534611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975986, 29.609913, 41.500313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098613, -0.577103, 0.810695,
		-0.009293, -0.815165, -0.579154,
		0.995082, 0.049578, -0.085749,
		37.274509, 29.624786, 41.474586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850929, 28.891720, 41.486477>,  <36.577953, 29.590082, 41.534611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850929, 28.891720, 41.486477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.136616, 29.129700, 41.633949>,  <37.308029, 29.272488, 41.722435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.136616, 29.129700, 41.633949>,  <36.850929, 28.891720, 41.486477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136616, 29.129700, 41.633949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076237, -0.589742, 0.803985,
		0.695760, -0.546112, -0.466561,
		0.714217, 0.594949, 0.368685,
		37.350880, 29.308184, 41.744556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304359, 28.460348, 41.767597>,  <36.850929, 28.891720, 41.486477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304359, 28.460348, 41.767597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398540, 28.806498, 41.944546>,  <37.455051, 29.014187, 42.050713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398540, 28.806498, 41.944546>,  <37.304359, 28.460348, 41.767597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398540, 28.806498, 41.944546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333792, -0.499481, 0.799438,
		0.912767, -0.040573, -0.406460,
		0.235454, 0.865374, 0.442367,
		37.469177, 29.066111, 42.077255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034645, 28.354731, 42.060883>,  <37.304359, 28.460348, 41.767597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034645, 28.354731, 42.060883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.871834, 28.665621, 42.252819>,  <37.774147, 28.852156, 42.367981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.871834, 28.665621, 42.252819>,  <38.034645, 28.354731, 42.060883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871834, 28.665621, 42.252819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269055, -0.400002, 0.876132,
		0.872890, 0.485714, -0.046305,
		-0.407028, 0.777226, 0.479842,
		37.749725, 28.898788, 42.396770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411671, 28.456661, 42.606010>,  <38.034645, 28.354731, 42.060883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411671, 28.456661, 42.606010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091190, 28.665695, 42.722614>,  <37.898903, 28.791117, 42.792576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091190, 28.665695, 42.722614>,  <38.411671, 28.456661, 42.606010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091190, 28.665695, 42.722614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213044, -0.206116, 0.955054,
		0.559183, 0.827297, 0.053807,
		-0.801203, 0.522586, 0.291507,
		37.850830, 28.822472, 42.810066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.657804, 32.665916, 45.107533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925171, 32.476036, 44.878490>,  <32.085590, 32.362106, 44.741066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925171, 32.476036, 44.878490>,  <31.657804, 32.665916, 45.107533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925171, 32.476036, 44.878490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199362, 0.627339, -0.752795,
		0.716571, 0.617337, 0.324687,
		0.668417, -0.474701, -0.572607,
		32.125694, 32.333626, 44.706707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021202, 33.171566, 44.737938>,  <31.657804, 32.665916, 45.107533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021202, 33.171566, 44.737938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.109852, 32.846096, 44.522972>,  <32.163044, 32.650814, 44.393993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.109852, 32.846096, 44.522972>,  <32.021202, 33.171566, 44.737938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109852, 32.846096, 44.522972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028970, 0.556376, -0.830426,
		0.974701, 0.168476, 0.146880,
		0.221627, -0.813672, -0.537419,
		32.176338, 32.601994, 44.361748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553120, 33.294308, 44.370785>,  <32.021202, 33.171566, 44.737938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553120, 33.294308, 44.370785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.422939, 32.967445, 44.180481>,  <32.344833, 32.771328, 44.066299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.422939, 32.967445, 44.180481>,  <32.553120, 33.294308, 44.370785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422939, 32.967445, 44.180481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092950, 0.473065, -0.876110,
		0.940981, -0.329349, -0.078003,
		-0.325446, -0.817153, -0.475759,
		32.325306, 32.722301, 44.037754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085503, 33.076828, 43.805649>,  <32.553120, 33.294308, 44.370785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085503, 33.076828, 43.805649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.705120, 32.963692, 43.755566>,  <32.476891, 32.895809, 43.725513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.705120, 32.963692, 43.755566>,  <33.085503, 33.076828, 43.805649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705120, 32.963692, 43.755566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023491, 0.469667, -0.882531,
		0.308425, -0.836309, -0.453278,
		-0.950958, -0.282842, -0.125212,
		32.419834, 32.878838, 43.718002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144032, 32.797970, 43.134869>,  <33.085503, 33.076828, 43.805649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144032, 32.797970, 43.134869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756691, 32.870182, 43.203796>,  <32.524284, 32.913509, 43.245155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756691, 32.870182, 43.203796>,  <33.144032, 32.797970, 43.134869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756691, 32.870182, 43.203796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121666, 0.261398, -0.957533,
		-0.217909, -0.948198, -0.231162,
		-0.968356, 0.180530, 0.172324,
		32.466183, 32.924339, 43.255493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825882, 32.591061, 42.559139>,  <33.144032, 32.797970, 43.134869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825882, 32.591061, 42.559139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.545307, 32.822216, 42.726009>,  <32.376965, 32.960911, 42.826130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.545307, 32.822216, 42.726009>,  <32.825882, 32.591061, 42.559139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545307, 32.822216, 42.726009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199893, 0.402316, -0.893412,
		-0.684130, -0.710059, -0.166682,
		-0.701433, 0.577891, 0.417172,
		32.334877, 32.995583, 42.851162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284901, 32.434151, 42.215580>,  <32.825882, 32.591061, 42.559139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284901, 32.434151, 42.215580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.189285, 32.786304, 42.379425>,  <32.131916, 32.997597, 42.477734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.189285, 32.786304, 42.379425>,  <32.284901, 32.434151, 42.215580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189285, 32.786304, 42.379425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041474, 0.412201, -0.910148,
		-0.970123, -0.234551, -0.062020,
		-0.239041, 0.880384, 0.409613,
		32.117573, 33.050419, 42.502308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772516, 32.727993, 41.772362>,  <32.284901, 32.434151, 42.215580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772516, 32.727993, 41.772362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921459, 33.032177, 41.985172>,  <32.010826, 33.214687, 42.112858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921459, 33.032177, 41.985172>,  <31.772516, 32.727993, 41.772362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921459, 33.032177, 41.985172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059736, 0.591696, -0.803945,
		-0.926165, 0.267573, 0.265749,
		0.372357, 0.760460, 0.532025,
		32.033165, 33.260315, 42.144779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382772, 33.206696, 41.472954>,  <31.772516, 32.727993, 41.772362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382772, 33.206696, 41.472954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697111, 33.383690, 41.645771>,  <31.885714, 33.489887, 41.749462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697111, 33.383690, 41.645771>,  <31.382772, 33.206696, 41.472954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697111, 33.383690, 41.645771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086250, 0.613367, -0.785074,
		-0.612380, 0.654210, 0.443847,
		0.785845, 0.442482, 0.432039,
		31.932865, 33.516434, 41.775383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201256, 33.895077, 41.309662>,  <31.382772, 33.206696, 41.472954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201256, 33.895077, 41.309662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593313, 33.868523, 41.384403>,  <31.828547, 33.852589, 41.429249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593313, 33.868523, 41.384403>,  <31.201256, 33.895077, 41.309662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593313, 33.868523, 41.384403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192092, 0.551736, -0.811596,
		-0.049217, 0.831372, 0.553532,
		0.980142, -0.066385, 0.186855,
		31.887356, 33.848606, 41.440460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365915, 34.541443, 41.147018>,  <31.201256, 33.895077, 41.309662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365915, 34.541443, 41.147018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.695152, 34.314289, 41.149063>,  <31.892694, 34.177998, 41.150291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.695152, 34.314289, 41.149063>,  <31.365915, 34.541443, 41.147018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695152, 34.314289, 41.149063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344595, 0.492258, -0.799335,
		0.451414, 0.659687, 0.600865,
		0.823091, -0.567886, 0.005113,
		31.942080, 34.143925, 41.150597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833694, 35.045498, 41.036770>,  <31.365915, 34.541443, 41.147018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833694, 35.045498, 41.036770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018341, 34.697666, 40.966637>,  <32.129128, 34.488968, 40.924557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018341, 34.697666, 40.966637>,  <31.833694, 35.045498, 41.036770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018341, 34.697666, 40.966637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426998, 0.391068, -0.815315,
		0.777550, 0.301493, 0.551832,
		0.461616, -0.869579, -0.175337,
		32.156826, 34.436794, 40.914036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607414, 35.141655, 40.905624>,  <31.833694, 35.045498, 41.036770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607414, 35.141655, 40.905624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.471310, 34.813877, 40.721134>,  <32.389648, 34.617210, 40.610439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.471310, 34.813877, 40.721134>,  <32.607414, 35.141655, 40.905624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471310, 34.813877, 40.721134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464938, 0.279735, -0.839989,
		0.817346, -0.500258, 0.285809,
		-0.340260, -0.819445, -0.461229,
		32.369232, 34.568043, 40.582764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130043, 35.065723, 40.508316>,  <32.607414, 35.141655, 40.905624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130043, 35.065723, 40.508316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855347, 34.827534, 40.341560>,  <32.690529, 34.684620, 40.241505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855347, 34.827534, 40.341560>,  <33.130043, 35.065723, 40.508316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855347, 34.827534, 40.341560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310760, 0.277961, -0.908937,
		0.657128, -0.753756, -0.005838,
		-0.686739, -0.595474, -0.416893,
		32.649326, 34.648891, 40.216492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905582, 35.050163, 40.177879>,  <33.130043, 35.065723, 40.508316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905582, 35.050163, 40.177879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131538, 35.340820, 40.334286>,  <34.267113, 35.515213, 40.428131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131538, 35.340820, 40.334286>,  <33.905582, 35.050163, 40.177879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131538, 35.340820, 40.334286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125133, -0.543817, 0.829822,
		0.815624, -0.419828, -0.398123,
		0.564889, 0.726641, 0.391016,
		34.301006, 35.558811, 40.451591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382481, 34.694527, 40.536007>,  <33.905582, 35.050163, 40.177879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382481, 34.694527, 40.536007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.414745, 35.064480, 40.684647>,  <34.434105, 35.286453, 40.773830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.414745, 35.064480, 40.684647>,  <34.382481, 34.694527, 40.536007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414745, 35.064480, 40.684647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111699, -0.378853, 0.918691,
		0.990463, -0.032597, -0.133867,
		0.080662, 0.924882, 0.371599,
		34.438946, 35.341946, 40.796127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948647, 34.600262, 40.917027>,  <34.382481, 34.694527, 40.536007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948647, 34.600262, 40.917027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.738377, 34.912880, 41.051395>,  <34.612213, 35.100452, 41.132015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.738377, 34.912880, 41.051395>,  <34.948647, 34.600262, 40.917027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738377, 34.912880, 41.051395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181072, -0.283036, 0.941862,
		0.831190, 0.555941, 0.007268,
		-0.525677, 0.781550, 0.335922,
		34.580673, 35.147346, 41.152172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434956, 34.961769, 41.368931>,  <34.948647, 34.600262, 40.917027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434956, 34.961769, 41.368931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.060081, 35.054684, 41.473030>,  <34.835155, 35.110432, 41.535488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.060081, 35.054684, 41.473030>,  <35.434956, 34.961769, 41.368931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060081, 35.054684, 41.473030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207826, -0.227386, 0.951370,
		0.280167, 0.945695, 0.164827,
		-0.937185, 0.232287, 0.260246,
		34.778927, 35.124371, 41.551105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566532, 35.176258, 42.068279>,  <35.434956, 34.961769, 41.368931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566532, 35.176258, 42.068279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170807, 35.138752, 42.023624>,  <34.933372, 35.116249, 41.996830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170807, 35.138752, 42.023624>,  <35.566532, 35.176258, 42.068279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170807, 35.138752, 42.023624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084473, -0.255453, 0.963124,
		-0.118822, 0.962264, 0.244803,
		-0.989316, -0.093761, -0.111639,
		34.874012, 35.110622, 41.990131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315113, 35.604008, 42.581753>,  <35.566532, 35.176258, 42.068279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315113, 35.604008, 42.581753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064560, 35.300156, 42.511784>,  <34.914227, 35.117844, 42.469803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064560, 35.300156, 42.511784>,  <35.315113, 35.604008, 42.581753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064560, 35.300156, 42.511784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033092, -0.250110, 0.967652,
		-0.778809, 0.600336, 0.181804,
		-0.626387, -0.759632, -0.174921,
		34.876644, 35.072266, 42.459309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974098, 35.613495, 43.204723>,  <35.315113, 35.604008, 42.581753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974098, 35.613495, 43.204723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.908813, 35.256649, 43.036205>,  <34.869644, 35.042542, 42.935097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.908813, 35.256649, 43.036205>,  <34.974098, 35.613495, 43.204723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908813, 35.256649, 43.036205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142785, -0.443880, 0.884637,
		-0.976204, 0.084230, 0.199828,
		-0.163212, -0.892119, -0.421291,
		34.859848, 34.989014, 42.909817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535629, 35.299915, 43.604237>,  <34.974098, 35.613495, 43.204723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535629, 35.299915, 43.604237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703827, 34.993111, 43.410381>,  <34.804745, 34.809029, 43.294067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703827, 34.993111, 43.410381>,  <34.535629, 35.299915, 43.604237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703827, 34.993111, 43.410381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221544, -0.431188, 0.874641,
		-0.879833, -0.475148, -0.011383,
		0.420491, -0.767015, -0.484639,
		34.829975, 34.763004, 43.264988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533356, 34.726147, 44.144413>,  <34.535629, 35.299915, 43.604237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533356, 34.726147, 44.144413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793243, 34.643539, 43.851780>,  <34.949177, 34.593975, 43.676201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793243, 34.643539, 43.851780>,  <34.533356, 34.726147, 44.144413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793243, 34.643539, 43.851780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479877, -0.634965, 0.605423,
		-0.589562, -0.744425, -0.313445,
		0.649719, -0.206519, -0.731584,
		34.988159, 34.581585, 43.632305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595921, 34.087059, 44.233692>,  <34.533356, 34.726147, 44.144413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595921, 34.087059, 44.233692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936882, 34.181633, 44.047138>,  <35.141457, 34.238377, 43.935207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936882, 34.181633, 44.047138>,  <34.595921, 34.087059, 44.233692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936882, 34.181633, 44.047138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499448, -0.632222, 0.592323,
		-0.154810, -0.737829, -0.656995,
		0.852400, 0.236438, -0.466382,
		35.192600, 34.252563, 43.907223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872128, 33.469139, 44.017250>,  <34.595921, 34.087059, 44.233692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872128, 33.469139, 44.017250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.177479, 33.725765, 44.047298>,  <35.360691, 33.879742, 44.065327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.177479, 33.725765, 44.047298>,  <34.872128, 33.469139, 44.017250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177479, 33.725765, 44.047298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425349, -0.586789, 0.689026,
		0.486135, -0.494037, -0.720833,
		0.763381, 0.641565, 0.075120,
		35.406494, 33.918236, 44.069836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412907, 33.087780, 44.010872>,  <34.872128, 33.469139, 44.017250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412907, 33.087780, 44.010872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544640, 33.429302, 44.172142>,  <35.623680, 33.634216, 44.268906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544640, 33.429302, 44.172142>,  <35.412907, 33.087780, 44.010872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544640, 33.429302, 44.172142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504539, -0.520052, 0.689192,
		0.798112, -0.023552, -0.602049,
		0.329329, 0.853810, 0.403177,
		35.643436, 33.685444, 44.293095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025261, 32.898849, 44.151112>,  <35.412907, 33.087780, 44.010872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025261, 32.898849, 44.151112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936420, 33.201805, 44.396725>,  <35.883118, 33.383579, 44.544094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936420, 33.201805, 44.396725>,  <36.025261, 32.898849, 44.151112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936420, 33.201805, 44.396725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339224, -0.530394, 0.776923,
		0.914110, 0.380851, -0.139122,
		-0.222103, 0.757387, 0.614032,
		35.869789, 33.429020, 44.580933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629185, 33.121944, 44.632168>,  <36.025261, 32.898849, 44.151112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629185, 33.121944, 44.632168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268345, 33.202206, 44.784985>,  <36.051842, 33.250362, 44.876675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268345, 33.202206, 44.784985>,  <36.629185, 33.121944, 44.632168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268345, 33.202206, 44.784985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116931, -0.738539, 0.663993,
		0.415387, 0.643660, 0.642772,
		-0.902098, 0.200654, 0.382044,
		35.997715, 33.262402, 44.899597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312317, 33.155689, 44.942112>,  <36.629185, 33.121944, 44.632168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312317, 33.155689, 44.942112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.619007, 32.998478, 44.739071>,  <37.803020, 32.904152, 44.617245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.619007, 32.998478, 44.739071>,  <37.312317, 33.155689, 44.942112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619007, 32.998478, 44.739071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109400, 0.699132, -0.706573,
		0.632589, 0.597277, 0.493043,
		0.766722, -0.393032, -0.507605,
		37.849022, 32.880569, 44.586788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786224, 33.792599, 44.654556>,  <37.312317, 33.155689, 44.942112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786224, 33.792599, 44.654556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909351, 33.473640, 44.446941>,  <37.983227, 33.282265, 44.322372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909351, 33.473640, 44.446941>,  <37.786224, 33.792599, 44.654556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909351, 33.473640, 44.446941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221465, 0.590591, -0.775987,
		0.925311, 0.123914, 0.358391,
		0.307818, -0.797400, -0.519038,
		38.001698, 33.234421, 44.291229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452141, 33.915440, 44.383869>,  <37.786224, 33.792599, 44.654556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452141, 33.915440, 44.383869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.310352, 33.624199, 44.149189>,  <38.225277, 33.449455, 44.008381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.310352, 33.624199, 44.149189>,  <38.452141, 33.915440, 44.383869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310352, 33.624199, 44.149189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281446, 0.515273, -0.809495,
		0.891705, -0.452070, 0.022269,
		-0.354473, -0.728098, -0.586705,
		38.204010, 33.405769, 43.973179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999027, 33.791771, 43.848263>,  <38.452141, 33.915440, 44.383869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999027, 33.791771, 43.848263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.651726, 33.668613, 43.692657>,  <38.443344, 33.594719, 43.599293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.651726, 33.668613, 43.692657>,  <38.999027, 33.791771, 43.848263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651726, 33.668613, 43.692657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283217, 0.336177, -0.898206,
		0.407334, -0.890047, -0.204685,
		-0.868255, -0.307900, -0.389013,
		38.391251, 33.576244, 43.575954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180519, 33.496738, 43.199589>,  <38.999027, 33.791771, 43.848263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180519, 33.496738, 43.199589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.784912, 33.514221, 43.143127>,  <38.547546, 33.524712, 43.109249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.784912, 33.514221, 43.143127>,  <39.180519, 33.496738, 43.199589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784912, 33.514221, 43.143127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147613, 0.248407, -0.957342,
		-0.006778, -0.967669, -0.252132,
		-0.989022, 0.043707, -0.141157,
		38.488205, 33.527332, 43.100780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043282, 33.204777, 42.503254>,  <39.180519, 33.496738, 43.199589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043282, 33.204777, 42.503254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716236, 33.409832, 42.608105>,  <38.520008, 33.532864, 42.671017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716236, 33.409832, 42.608105>,  <39.043282, 33.204777, 42.503254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716236, 33.409832, 42.608105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115789, 0.299571, -0.947022,
		-0.564006, -0.804648, -0.185575,
		-0.817613, 0.512638, 0.262130,
		38.470951, 33.563622, 42.686745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676865, 33.215034, 41.840866>,  <39.043282, 33.204777, 42.503254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676865, 33.215034, 41.840866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498463, 33.507381, 42.047523>,  <38.391422, 33.682789, 42.171516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498463, 33.507381, 42.047523>,  <38.676865, 33.215034, 41.840866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498463, 33.507381, 42.047523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048477, 0.556661, -0.829324,
		-0.893719, -0.394925, -0.212841,
		-0.446001, 0.730865, 0.516643,
		38.364662, 33.726643, 42.202515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070862, 33.398548, 41.479870>,  <38.676865, 33.215034, 41.840866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070862, 33.398548, 41.479870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.207718, 33.701149, 41.702812>,  <38.289829, 33.882710, 41.836578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.207718, 33.701149, 41.702812>,  <38.070862, 33.398548, 41.479870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207718, 33.701149, 41.702812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012414, 0.596737, -0.802341,
		-0.939568, 0.267591, 0.213556,
		0.342136, 0.756505, 0.557353,
		38.310360, 33.928101, 41.870018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876415, 33.977936, 41.157959>,  <38.070862, 33.398548, 41.479870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876415, 33.977936, 41.157959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.165382, 34.136894, 41.384296>,  <38.338764, 34.232269, 41.520100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.165382, 34.136894, 41.384296>,  <37.876415, 33.977936, 41.157959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165382, 34.136894, 41.384296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199690, 0.663565, -0.720975,
		-0.661992, 0.633841, 0.400016,
		0.722420, 0.397400, 0.565846,
		38.382107, 34.256115, 41.554050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945507, 34.628117, 40.972782>,  <37.876415, 33.977936, 41.157959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945507, 34.628117, 40.972782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288174, 34.606491, 41.177990>,  <38.493774, 34.593517, 41.301117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288174, 34.606491, 41.177990>,  <37.945507, 34.628117, 40.972782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288174, 34.606491, 41.177990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408682, 0.677987, -0.610994,
		-0.314793, 0.733084, 0.602904,
		0.856671, -0.054060, 0.513023,
		38.545174, 34.590275, 41.331898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156403, 35.331055, 41.204197>,  <37.945507, 34.628117, 40.972782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156403, 35.331055, 41.204197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.463444, 35.077015, 41.169720>,  <38.647671, 34.924591, 41.149033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.463444, 35.077015, 41.169720>,  <38.156403, 35.331055, 41.204197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463444, 35.077015, 41.169720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425062, 0.605112, -0.673173,
		0.479689, 0.480093, 0.734444,
		0.767607, -0.635099, -0.086196,
		38.693726, 34.886486, 41.143860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714703, 35.748913, 41.131966>,  <38.156403, 35.331055, 41.204197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714703, 35.748913, 41.131966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.856251, 35.400497, 40.995686>,  <38.941177, 35.191448, 40.913918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.856251, 35.400497, 40.995686>,  <38.714703, 35.748913, 41.131966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856251, 35.400497, 40.995686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532125, 0.487063, -0.692541,
		0.769169, 0.063775, 0.635855,
		0.353868, -0.871035, -0.340697,
		38.962410, 35.139187, 40.893475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384628, 35.863556, 40.903824>,  <38.714703, 35.748913, 41.131966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384628, 35.863556, 40.903824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.299454, 35.524326, 40.709736>,  <39.248348, 35.320789, 40.593285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.299454, 35.524326, 40.709736>,  <39.384628, 35.863556, 40.903824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299454, 35.524326, 40.709736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568154, 0.296541, -0.767636,
		0.794895, -0.439138, 0.418688,
		-0.212940, -0.848069, -0.485217,
		39.235573, 35.269905, 40.564171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028824, 35.567654, 40.644398>,  <39.384628, 35.863556, 40.903824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028824, 35.567654, 40.644398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.726917, 35.436844, 40.416931>,  <39.545773, 35.358360, 40.280453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.726917, 35.436844, 40.416931>,  <40.028824, 35.567654, 40.644398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726917, 35.436844, 40.416931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457989, 0.357936, -0.813712,
		0.469649, -0.874607, -0.120386,
		-0.754769, -0.327024, -0.568664,
		39.500484, 35.338737, 40.246330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.360365, 39.329212, 28.515131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.974184, 39.397980, 28.436804>,  <25.742476, 39.439240, 28.389807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.974184, 39.397980, 28.436804>,  <26.360365, 39.329212, 28.515131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974184, 39.397980, 28.436804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252478, -0.431244, 0.866189,
		0.064470, 0.885704, 0.459752,
		-0.965452, 0.171921, -0.195819,
		25.684547, 39.449554, 28.378057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236809, 39.704319, 29.040262>,  <26.360365, 39.329212, 28.515131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236809, 39.704319, 29.040262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944916, 39.470146, 28.898977>,  <25.769779, 39.329643, 28.814205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944916, 39.470146, 28.898977>,  <26.236809, 39.704319, 29.040262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944916, 39.470146, 28.898977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110143, -0.409196, 0.905774,
		-0.674803, 0.699877, 0.234123,
		-0.729733, -0.585432, -0.353213,
		25.725996, 39.294518, 28.793013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916079, 39.631706, 29.582939>,  <26.236809, 39.704319, 29.040262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916079, 39.631706, 29.582939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.767065, 39.329346, 29.367594>,  <25.677656, 39.147930, 29.238386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.767065, 39.329346, 29.367594>,  <25.916079, 39.631706, 29.582939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767065, 39.329346, 29.367594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241976, -0.480931, 0.842705,
		-0.895916, 0.444207, -0.003746,
		-0.372534, -0.755900, -0.538362,
		25.655304, 39.102577, 29.206085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286869, 39.390347, 29.926527>,  <25.916079, 39.631706, 29.582939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286869, 39.390347, 29.926527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.385981, 39.076958, 29.698570>,  <25.445448, 38.888924, 29.561796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.385981, 39.076958, 29.698570>,  <25.286869, 39.390347, 29.926527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.385981, 39.076958, 29.698570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187276, -0.615876, 0.765261,
		-0.950543, -0.082888, -0.299327,
		0.247779, -0.783470, -0.569894,
		25.460314, 38.841915, 29.527601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807274, 38.847836, 30.074474>,  <25.286869, 39.390347, 29.926527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807274, 38.847836, 30.074474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.133055, 38.676018, 29.918442>,  <25.328524, 38.572929, 29.824821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.133055, 38.676018, 29.918442>,  <24.807274, 38.847836, 30.074474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133055, 38.676018, 29.918442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026256, -0.698882, 0.714755,
		-0.579637, -0.571891, -0.580484,
		0.814452, -0.429540, -0.390082,
		25.377390, 38.547157, 29.801416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664780, 38.066376, 30.101742>,  <24.807274, 38.847836, 30.074474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664780, 38.066376, 30.101742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.055431, 38.144539, 30.065939>,  <25.289822, 38.191437, 30.044458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.055431, 38.144539, 30.065939>,  <24.664780, 38.066376, 30.101742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055431, 38.144539, 30.065939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204583, -0.717477, 0.665862,
		0.065900, -0.668611, -0.740687,
		0.976628, 0.195412, -0.089505,
		25.348419, 38.203163, 30.039087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.950474, 37.415722, 30.229513>,  <24.664780, 38.066376, 30.101742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.950474, 37.415722, 30.229513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.250446, 37.674892, 30.282873>,  <25.430429, 37.830395, 30.314890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.250446, 37.674892, 30.282873>,  <24.950474, 37.415722, 30.229513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250446, 37.674892, 30.282873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421989, -0.623861, 0.657817,
		0.509439, -0.437024, -0.741270,
		0.749932, 0.647925, 0.133400,
		25.475426, 37.869270, 30.322893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498777, 37.006882, 30.136957>,  <24.950474, 37.415722, 30.229513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498777, 37.006882, 30.136957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.610500, 37.330845, 30.343273>,  <25.677534, 37.525223, 30.467062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.610500, 37.330845, 30.343273>,  <25.498777, 37.006882, 30.136957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610500, 37.330845, 30.343273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465889, -0.584010, 0.664741,
		0.839604, 0.054635, -0.540444,
		0.279307, 0.809906, 0.515791,
		25.694292, 37.573818, 30.498011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203840, 36.849022, 30.131943>,  <25.498777, 37.006882, 30.136957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203840, 36.849022, 30.131943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.093458, 37.096336, 30.426310>,  <26.027229, 37.244724, 30.602930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.093458, 37.096336, 30.426310>,  <26.203840, 36.849022, 30.131943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093458, 37.096336, 30.426310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380902, -0.632611, 0.674327,
		0.882475, 0.466396, -0.060933,
		-0.275957, 0.618285, 0.735915,
		26.010672, 37.281822, 30.647083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761099, 36.970379, 30.714582>,  <26.203840, 36.849022, 30.131943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761099, 36.970379, 30.714582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423859, 37.088707, 30.894213>,  <26.221514, 37.159706, 31.001991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423859, 37.088707, 30.894213>,  <26.761099, 36.970379, 30.714582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423859, 37.088707, 30.894213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373562, -0.278521, 0.884804,
		0.386821, 0.913737, 0.124314,
		-0.843102, 0.295822, 0.449075,
		26.170929, 37.177452, 31.028934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063858, 37.288902, 31.328775>,  <26.761099, 36.970379, 30.714582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063858, 37.288902, 31.328775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.675280, 37.229206, 31.402555>,  <26.442133, 37.193386, 31.446823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.675280, 37.229206, 31.402555>,  <27.063858, 37.288902, 31.328775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675280, 37.229206, 31.402555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219213, -0.267136, 0.938394,
		-0.090777, 0.952032, 0.292224,
		-0.971445, -0.149244, 0.184448,
		26.383846, 37.184433, 31.457890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009701, 37.657562, 31.951609>,  <27.063858, 37.288902, 31.328775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009701, 37.657562, 31.951609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.677168, 37.436882, 31.924728>,  <26.477648, 37.304474, 31.908600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.677168, 37.436882, 31.924728>,  <27.009701, 37.657562, 31.951609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677168, 37.436882, 31.924728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023482, -0.085935, 0.996024,
		-0.555279, 0.829605, 0.058485,
		-0.831333, -0.551698, -0.067199,
		26.427769, 37.271374, 31.904570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408995, 37.875336, 32.371738>,  <27.009701, 37.657562, 31.951609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408995, 37.875336, 32.371738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392359, 37.478745, 32.322350>,  <26.382378, 37.240791, 32.292717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392359, 37.478745, 32.322350>,  <26.408995, 37.875336, 32.371738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392359, 37.478745, 32.322350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075317, -0.120121, 0.989898,
		-0.996292, 0.050469, -0.069680,
		-0.041589, -0.991476, -0.123477,
		26.379883, 37.181301, 32.285305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954750, 37.658314, 32.852444>,  <26.408995, 37.875336, 32.371738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954750, 37.658314, 32.852444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.140308, 37.316990, 32.757225>,  <26.251642, 37.112194, 32.700092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.140308, 37.316990, 32.757225>,  <25.954750, 37.658314, 32.852444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140308, 37.316990, 32.757225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037543, -0.287404, 0.957073,
		-0.885095, -0.435043, -0.165361,
		0.463893, -0.853309, -0.238047,
		26.279476, 37.060997, 32.685810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.640804, 37.238605, 33.374687>,  <25.954750, 37.658314, 32.852444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.640804, 37.238605, 33.374687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.933643, 37.010727, 33.225296>,  <26.109346, 36.874001, 33.135662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.933643, 37.010727, 33.225296>,  <25.640804, 37.238605, 33.374687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933643, 37.010727, 33.225296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056762, -0.495333, 0.866847,
		-0.678833, -0.655814, -0.330294,
		0.732095, -0.569696, -0.373474,
		26.153273, 36.839817, 33.113255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412483, 36.562206, 33.525627>,  <25.640804, 37.238605, 33.374687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412483, 36.562206, 33.525627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.810097, 36.569962, 33.482697>,  <26.048664, 36.574615, 33.456936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.810097, 36.569962, 33.482697>,  <25.412483, 36.562206, 33.525627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810097, 36.569962, 33.482697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106681, -0.377521, 0.919835,
		-0.022682, -0.925798, -0.377338,
		0.994034, 0.019391, -0.107328,
		26.108307, 36.575779, 33.450497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578438, 35.926678, 33.772942>,  <25.412483, 36.562206, 33.525627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.578438, 35.926678, 33.772942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.907036, 36.154720, 33.768471>,  <26.104195, 36.291546, 33.765789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.907036, 36.154720, 33.768471>,  <25.578438, 35.926678, 33.772942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907036, 36.154720, 33.768471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380106, -0.532890, 0.756007,
		0.425051, -0.625303, -0.654468,
		0.821493, 0.570109, -0.011176,
		26.153484, 36.325752, 33.765118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073404, 35.497116, 33.919781>,  <25.578438, 35.926678, 33.772942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073404, 35.497116, 33.919781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.231651, 35.852566, 34.012596>,  <26.326599, 36.065834, 34.068283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.231651, 35.852566, 34.012596>,  <26.073404, 35.497116, 33.919781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231651, 35.852566, 34.012596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412191, -0.397568, 0.819779,
		0.820722, -0.228676, -0.523567,
		0.395617, 0.888621, 0.232035,
		26.350336, 36.119152, 34.082207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801758, 35.280506, 34.076561>,  <26.073404, 35.497116, 33.919781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801758, 35.280506, 34.076561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.680506, 35.627678, 34.233944>,  <26.607756, 35.835983, 34.328373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.680506, 35.627678, 34.233944>,  <26.801758, 35.280506, 34.076561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680506, 35.627678, 34.233944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316513, -0.297745, 0.900648,
		0.898851, 0.397546, -0.184457,
		-0.303128, 0.867931, 0.393457,
		26.589567, 35.888058, 34.351982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428869, 35.447315, 33.609211>,  <26.801758, 35.280506, 34.076561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428869, 35.447315, 33.609211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.628580, 35.495918, 33.952362>,  <27.748405, 35.525082, 34.158253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.628580, 35.495918, 33.952362>,  <27.428869, 35.447315, 33.609211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628580, 35.495918, 33.952362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476159, 0.788722, -0.388832,
		-0.723876, 0.602622, 0.335933,
		0.499276, 0.121509, 0.857881,
		27.778362, 35.532372, 34.209724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309898, 36.124790, 33.956905>,  <27.428869, 35.447315, 33.609211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309898, 36.124790, 33.956905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.672916, 35.978706, 34.039841>,  <27.890726, 35.891056, 34.089603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.672916, 35.978706, 34.039841>,  <27.309898, 36.124790, 33.956905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672916, 35.978706, 34.039841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417438, 0.838499, -0.350236,
		-0.045943, 0.404404, 0.913426,
		0.907543, -0.365207, 0.207337,
		27.945179, 35.869144, 34.102043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713911, 36.597523, 34.447060>,  <27.309898, 36.124790, 33.956905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713911, 36.597523, 34.447060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918461, 36.375843, 34.184349>,  <28.041191, 36.242836, 34.026722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918461, 36.375843, 34.184349>,  <27.713911, 36.597523, 34.447060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918461, 36.375843, 34.184349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433002, 0.826330, -0.360123,
		0.742296, -0.100229, 0.662533,
		0.511377, -0.554196, -0.656781,
		28.071875, 36.209583, 33.987316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342402, 36.840324, 34.461697>,  <27.713911, 36.597523, 34.447060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342402, 36.840324, 34.461697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340498, 36.657135, 34.106113>,  <28.339355, 36.547222, 33.892765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340498, 36.657135, 34.106113>,  <28.342402, 36.840324, 34.461697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340498, 36.657135, 34.106113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379124, 0.821772, -0.425389,
		0.925334, -0.339048, 0.169719,
		-0.004757, -0.457971, -0.888955,
		28.339071, 36.519745, 33.839428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038900, 37.096447, 34.165596>,  <28.342402, 36.840324, 34.461697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038900, 37.096447, 34.165596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.797907, 36.937542, 33.888699>,  <28.653311, 36.842201, 33.722561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.797907, 36.937542, 33.888699>,  <29.038900, 37.096447, 34.165596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797907, 36.937542, 33.888699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234649, 0.740832, -0.629370,
		0.762859, -0.541619, -0.353122,
		-0.602483, -0.397261, -0.692241,
		28.617161, 36.818363, 33.681026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472624, 37.100475, 33.533264>,  <29.038900, 37.096447, 34.165596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472624, 37.100475, 33.533264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098749, 37.058414, 33.397438>,  <28.874424, 37.033176, 33.315945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098749, 37.058414, 33.397438>,  <29.472624, 37.100475, 33.533264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098749, 37.058414, 33.397438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165392, 0.716904, -0.677270,
		0.314649, -0.689197, -0.652690,
		-0.934688, -0.105152, -0.339561,
		28.818342, 37.026867, 33.295570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516956, 37.126976, 32.842239>,  <29.472624, 37.100475, 33.533264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516956, 37.126976, 32.842239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140705, 37.236198, 32.922894>,  <28.914955, 37.301731, 32.971287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140705, 37.236198, 32.922894>,  <29.516956, 37.126976, 32.842239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140705, 37.236198, 32.922894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109830, 0.806915, -0.580367,
		-0.321180, -0.523763, -0.788996,
		-0.940628, 0.273058, 0.201640,
		28.858517, 37.318115, 32.983387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187641, 37.357079, 32.168346>,  <29.516956, 37.126976, 32.842239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187641, 37.357079, 32.168346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959753, 37.521420, 32.453056>,  <28.823021, 37.620022, 32.623882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959753, 37.521420, 32.453056>,  <29.187641, 37.357079, 32.168346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959753, 37.521420, 32.453056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137065, 0.901445, -0.410621,
		-0.810329, -0.136379, -0.569883,
		-0.569719, 0.410850, 0.711775,
		28.788837, 37.644676, 32.666588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809694, 37.874607, 31.819052>,  <29.187641, 37.357079, 32.168346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809694, 37.874607, 31.819052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787359, 37.980618, 32.204102>,  <28.773958, 38.044224, 32.435131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787359, 37.980618, 32.204102>,  <28.809694, 37.874607, 31.819052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787359, 37.980618, 32.204102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112215, 0.959684, -0.257709,
		-0.992114, 0.093631, -0.083329,
		-0.055840, 0.265027, 0.962623,
		28.770607, 38.060127, 32.492889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314379, 38.267590, 31.853077>,  <28.809694, 37.874607, 31.819052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314379, 38.267590, 31.853077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540535, 38.372807, 32.165779>,  <28.676229, 38.435936, 32.353401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540535, 38.372807, 32.165779>,  <28.314379, 38.267590, 31.853077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540535, 38.372807, 32.165779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130125, 0.907469, -0.399458,
		-0.814493, 0.327577, 0.478847,
		0.565392, 0.263046, 0.781754,
		28.710152, 38.451721, 32.400307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042198, 38.884296, 31.915003>,  <28.314379, 38.267590, 31.853077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042198, 38.884296, 31.915003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404974, 38.881771, 32.083488>,  <28.622639, 38.880257, 32.184582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404974, 38.881771, 32.083488>,  <28.042198, 38.884296, 31.915003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404974, 38.881771, 32.083488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130760, 0.954718, -0.267238,
		-0.400455, 0.297447, 0.866696,
		0.906938, -0.006312, 0.421216,
		28.677055, 38.879879, 32.209854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027124, 39.442104, 32.373543>,  <28.042198, 38.884296, 31.915003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027124, 39.442104, 32.373543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406610, 39.348042, 32.289028>,  <28.634302, 39.291603, 32.238319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406610, 39.348042, 32.289028>,  <28.027124, 39.442104, 32.373543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406610, 39.348042, 32.289028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202554, 0.965294, -0.164858,
		0.242721, 0.113606, 0.963421,
		0.948714, -0.235160, -0.211286,
		28.691225, 39.277493, 32.225643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381680, 39.980743, 32.718384>,  <28.027124, 39.442104, 32.373543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381680, 39.980743, 32.718384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.620628, 39.822758, 32.439198>,  <28.763998, 39.727966, 32.271687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.620628, 39.822758, 32.439198>,  <28.381680, 39.980743, 32.718384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620628, 39.822758, 32.439198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134656, 0.907360, -0.398203,
		0.790580, 0.143889, 0.595214,
		0.597370, -0.394960, -0.697965,
		28.799839, 39.704269, 32.229809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873022, 40.503517, 32.552509>,  <28.381680, 39.980743, 32.718384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873022, 40.503517, 32.552509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.901417, 40.271332, 32.228035>,  <28.918453, 40.132023, 32.033348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.901417, 40.271332, 32.228035>,  <28.873022, 40.503517, 32.552509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901417, 40.271332, 32.228035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177846, 0.807574, -0.562312,
		0.981494, -0.104349, 0.160561,
		0.070988, -0.580462, -0.811187,
		28.922712, 40.097195, 31.984678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391346, 40.748009, 32.205845>,  <28.873022, 40.503517, 32.552509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391346, 40.748009, 32.205845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.221064, 40.529541, 31.917271>,  <29.118895, 40.398460, 31.744125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.221064, 40.529541, 31.917271>,  <29.391346, 40.748009, 32.205845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221064, 40.529541, 31.917271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071685, 0.774431, -0.628584,
		0.902017, -0.319309, -0.290528,
		-0.425706, -0.546167, -0.721440,
		29.093351, 40.365692, 31.700838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619982, 41.128582, 31.577112>,  <29.391346, 40.748009, 32.205845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619982, 41.128582, 31.577112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315815, 40.888908, 31.476912>,  <29.133316, 40.745106, 31.416790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315815, 40.888908, 31.476912>,  <29.619982, 41.128582, 31.577112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315815, 40.888908, 31.476912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224207, 0.604210, -0.764632,
		0.609533, -0.525254, -0.593783,
		-0.760395, -0.599199, -0.250520,
		29.087690, 40.709156, 31.401760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734034, 40.989990, 30.861307>,  <29.619982, 41.128582, 31.577112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734034, 40.989990, 30.861307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.346655, 40.924564, 30.936523>,  <29.114227, 40.885311, 30.981653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.346655, 40.924564, 30.936523>,  <29.734034, 40.989990, 30.861307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346655, 40.924564, 30.936523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245797, 0.751503, -0.612232,
		-0.041177, -0.639134, -0.767993,
		-0.968446, -0.163560, 0.188042,
		29.056122, 40.875496, 30.992935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479023, 40.918339, 30.228952>,  <29.734034, 40.989990, 30.861307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479023, 40.918339, 30.228952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155458, 40.952244, 30.461668>,  <28.961319, 40.972588, 30.601297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155458, 40.952244, 30.461668>,  <29.479023, 40.918339, 30.228952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155458, 40.952244, 30.461668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420464, 0.608253, -0.673229,
		-0.410943, -0.789204, -0.456381,
		-0.808910, 0.084767, 0.581789,
		28.912785, 40.977673, 30.636204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840582, 40.883171, 29.787239>,  <29.479023, 40.918339, 30.228952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840582, 40.883171, 29.787239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.747509, 41.087429, 30.118322>,  <28.691666, 41.209984, 30.316973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.747509, 41.087429, 30.118322>,  <28.840582, 40.883171, 29.787239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747509, 41.087429, 30.118322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523242, 0.651671, -0.549129,
		-0.819803, -0.560864, 0.115558,
		-0.232681, 0.510643, 0.827710,
		28.677704, 41.240623, 30.366636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110586, 41.018242, 29.594805>,  <28.840582, 40.883171, 29.787239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110586, 41.018242, 29.594805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210846, 41.247108, 29.907166>,  <28.271002, 41.384426, 30.094582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210846, 41.247108, 29.907166>,  <28.110586, 41.018242, 29.594805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210846, 41.247108, 29.907166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457861, 0.780792, -0.425121,
		-0.852959, -0.250987, 0.457676,
		0.250650, 0.572162, 0.780900,
		28.286041, 41.418758, 30.141436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496904, 41.304787, 29.869705>,  <28.110586, 41.018242, 29.594805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496904, 41.304787, 29.869705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.791399, 41.555630, 29.971443>,  <27.968096, 41.706135, 30.032486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.791399, 41.555630, 29.971443>,  <27.496904, 41.304787, 29.869705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791399, 41.555630, 29.971443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475172, 0.746669, -0.465506,
		-0.481834, 0.221865, 0.847710,
		0.736238, 0.627105, 0.254347,
		28.012270, 41.743763, 30.047747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163965, 41.884315, 30.305933>,  <27.496904, 41.304787, 29.869705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163965, 41.884315, 30.305933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.509411, 42.010071, 30.148285>,  <27.716679, 42.085526, 30.053696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.509411, 42.010071, 30.148285>,  <27.163965, 41.884315, 30.305933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509411, 42.010071, 30.148285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429802, 0.867734, -0.249615,
		0.263513, 0.384964, 0.884513,
		0.863615, 0.314389, -0.394118,
		27.768496, 42.104389, 30.030050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075825, 42.539497, 30.240158>,  <27.163965, 41.884315, 30.305933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075825, 42.539497, 30.240158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426588, 42.514004, 30.049591>,  <27.637045, 42.498707, 29.935251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426588, 42.514004, 30.049591>,  <27.075825, 42.539497, 30.240158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426588, 42.514004, 30.049591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222688, 0.824511, -0.520184,
		0.425965, 0.562245, 0.708826,
		0.876906, -0.063733, -0.476418,
		27.689659, 42.494884, 29.906666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.663727, 28.867521, 43.475998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.279049, 28.831694, 43.372364>,  <38.048241, 28.810198, 43.310184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.279049, 28.831694, 43.372364>,  <38.663727, 28.867521, 43.475998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279049, 28.831694, 43.372364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186991, -0.476759, 0.858915,
		-0.200450, 0.874459, 0.441748,
		-0.961693, -0.089567, -0.259082,
		37.990540, 28.804823, 43.294640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189960, 29.232128, 43.996593>,  <38.663727, 28.867521, 43.475998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189960, 29.232128, 43.996593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.981724, 28.947567, 43.807747>,  <37.856781, 28.776831, 43.694439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.981724, 28.947567, 43.807747>,  <38.189960, 29.232128, 43.996593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981724, 28.947567, 43.807747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350382, -0.326248, 0.877949,
		-0.778602, 0.622472, -0.079422,
		-0.520587, -0.711401, -0.472120,
		37.825546, 28.734146, 43.666111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548416, 29.082125, 44.460602>,  <38.189960, 29.232128, 43.996593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548416, 29.082125, 44.460602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.594730, 28.767622, 44.217819>,  <37.622520, 28.578920, 44.072151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.594730, 28.767622, 44.217819>,  <37.548416, 29.082125, 44.460602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594730, 28.767622, 44.217819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000080, -0.611074, 0.791574,
		-0.993274, -0.091605, -0.070817,
		0.115786, -0.786255, -0.606957,
		37.629467, 28.531746, 44.035732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043945, 28.549868, 44.776459>,  <37.548416, 29.082125, 44.460602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043945, 28.549868, 44.776459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.324585, 28.381151, 44.546730>,  <37.492970, 28.279922, 44.408894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.324585, 28.381151, 44.546730>,  <37.043945, 28.549868, 44.776459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324585, 28.381151, 44.546730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225132, -0.633496, 0.740269,
		-0.676071, -0.648673, -0.349503,
		0.701601, -0.421790, -0.574325,
		37.535065, 28.254614, 44.374432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019108, 27.828701, 45.027657>,  <37.043945, 28.549868, 44.776459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019108, 27.828701, 45.027657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363808, 27.885715, 44.832897>,  <37.570629, 27.919924, 44.716042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363808, 27.885715, 44.832897>,  <37.019108, 27.828701, 45.027657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363808, 27.885715, 44.832897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489496, -0.485832, 0.724128,
		-0.133334, -0.862352, -0.488438,
		0.861752, 0.142538, -0.486895,
		37.622334, 27.928476, 44.686829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331829, 27.159000, 45.109421>,  <37.019108, 27.828701, 45.027657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331829, 27.159000, 45.109421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.620598, 27.421953, 45.023003>,  <37.793858, 27.579725, 44.971149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.620598, 27.421953, 45.023003>,  <37.331829, 27.159000, 45.109421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620598, 27.421953, 45.023003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616903, -0.469997, 0.631295,
		0.313460, -0.589027, -0.744843,
		0.721923, 0.657382, -0.216047,
		37.837173, 27.619167, 44.958187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856434, 26.740520, 44.813404>,  <37.331829, 27.159000, 45.109421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856434, 26.740520, 44.813404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977478, 27.083864, 44.979126>,  <38.050106, 27.289871, 45.078560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977478, 27.083864, 44.979126>,  <37.856434, 26.740520, 44.813404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977478, 27.083864, 44.979126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594851, -0.509720, 0.621562,
		0.744701, 0.058357, -0.664842,
		0.302611, 0.858359, 0.414302,
		38.068260, 27.341372, 45.103416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496555, 26.581263, 44.905884>,  <37.856434, 26.740520, 44.813404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496555, 26.581263, 44.905884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.450485, 26.907139, 45.133221>,  <38.422844, 27.102665, 45.269623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.450485, 26.907139, 45.133221>,  <38.496555, 26.581263, 44.905884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450485, 26.907139, 45.133221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477128, -0.456460, 0.750995,
		0.871254, 0.357667, -0.336140,
		-0.115172, 0.814689, 0.568346,
		38.415936, 27.151546, 45.303726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113770, 26.748184, 45.271149>,  <38.496555, 26.581263, 44.905884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113770, 26.748184, 45.271149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.846542, 26.948782, 45.491035>,  <38.686207, 27.069141, 45.622967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.846542, 26.948782, 45.491035>,  <39.113770, 26.748184, 45.271149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846542, 26.948782, 45.491035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461969, -0.299611, 0.834756,
		0.583326, 0.811626, -0.031514,
		-0.668068, 0.501494, 0.549717,
		38.646122, 27.099230, 45.655952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590775, 27.091234, 45.801010>,  <39.113770, 26.748184, 45.271149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590775, 27.091234, 45.801010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.210712, 27.085440, 45.925587>,  <38.982674, 27.081963, 46.000332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.210712, 27.085440, 45.925587>,  <39.590775, 27.091234, 45.801010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210712, 27.085440, 45.925587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304073, -0.263771, 0.915404,
		0.068887, 0.964476, 0.255029,
		-0.950155, -0.014488, 0.311442,
		38.925667, 27.081093, 46.019020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558228, 27.331181, 46.550110>,  <39.590775, 27.091234, 45.801010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558228, 27.331181, 46.550110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195713, 27.167730, 46.506905>,  <38.978203, 27.069660, 46.480980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195713, 27.167730, 46.506905>,  <39.558228, 27.331181, 46.550110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195713, 27.167730, 46.506905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041673, -0.340708, 0.939245,
		-0.420603, 0.846724, 0.325808,
		-0.906287, -0.408627, -0.108018,
		38.923828, 27.045143, 46.474499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143517, 27.491339, 47.177650>,  <39.558228, 27.331181, 46.550110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143517, 27.491339, 47.177650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946320, 27.169575, 47.045059>,  <38.827999, 26.976517, 46.965504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946320, 27.169575, 47.045059>,  <39.143517, 27.491339, 47.177650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946320, 27.169575, 47.045059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091979, -0.427054, 0.899536,
		-0.865156, 0.412978, 0.284525,
		-0.492996, -0.804409, -0.331483,
		38.798420, 26.928251, 46.945614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626308, 27.293406, 47.689629>,  <39.143517, 27.491339, 47.177650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626308, 27.293406, 47.689629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.754181, 26.981592, 47.474171>,  <38.830902, 26.794504, 47.344898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.754181, 26.981592, 47.474171>,  <38.626308, 27.293406, 47.689629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754181, 26.981592, 47.474171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254184, -0.477083, 0.841298,
		-0.912796, -0.405859, 0.045632,
		0.319678, -0.779532, -0.538642,
		38.850082, 26.747732, 47.312576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761219, 27.657871, 48.246571>,  <38.626308, 27.293406, 47.689629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761219, 27.657871, 48.246571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.518360, 27.947071, 48.378414>,  <38.372643, 28.120590, 48.457520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.518360, 27.947071, 48.378414>,  <38.761219, 27.657871, 48.246571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518360, 27.947071, 48.378414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081511, 0.469297, -0.879270,
		-0.790394, -0.506984, -0.343866,
		-0.607152, 0.722999, 0.329604,
		38.336216, 28.163971, 48.477295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317036, 27.955509, 47.674110>,  <38.761219, 27.657871, 48.246571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317036, 27.955509, 47.674110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333668, 28.236971, 47.957840>,  <38.343647, 28.405848, 48.128078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333668, 28.236971, 47.957840>,  <38.317036, 27.955509, 47.674110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333668, 28.236971, 47.957840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043669, 0.707981, -0.704880,
		-0.998181, 0.060282, -0.001293,
		0.041576, 0.703654, 0.709326,
		38.346142, 28.448067, 48.170639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744278, 28.453199, 47.634468>,  <38.317036, 27.955509, 47.674110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744278, 28.453199, 47.634468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.083401, 28.589560, 47.796955>,  <38.286873, 28.671375, 47.894447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.083401, 28.589560, 47.796955>,  <37.744278, 28.453199, 47.634468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083401, 28.589560, 47.796955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069161, 0.830538, -0.552651,
		-0.525778, 0.440446, 0.727712,
		0.847806, 0.340901, 0.406217,
		38.337742, 28.691830, 47.918819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498180, 29.089464, 47.972935>,  <37.744278, 28.453199, 47.634468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498180, 29.089464, 47.972935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893246, 29.125601, 47.921783>,  <38.130287, 29.147284, 47.891094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893246, 29.125601, 47.921783>,  <37.498180, 29.089464, 47.972935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893246, 29.125601, 47.921783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147523, 0.810572, -0.566753,
		0.052453, 0.578628, 0.813903,
		0.987667, 0.090341, -0.127878,
		38.189545, 29.152702, 47.883419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756001, 29.758224, 48.068699>,  <37.498180, 29.089464, 47.972935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756001, 29.758224, 48.068699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053627, 29.622904, 47.838249>,  <38.232204, 29.541712, 47.699978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053627, 29.622904, 47.838249>,  <37.756001, 29.758224, 48.068699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053627, 29.622904, 47.838249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126545, 0.775352, -0.618721,
		0.656011, 0.533276, 0.534103,
		0.744067, -0.338300, -0.576123,
		38.276848, 29.521414, 47.665413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099403, 30.381134, 48.019920>,  <37.756001, 29.758224, 48.068699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099403, 30.381134, 48.019920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248940, 30.143787, 47.734779>,  <38.338661, 30.001379, 47.563694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248940, 30.143787, 47.734779>,  <38.099403, 30.381134, 48.019920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248940, 30.143787, 47.734779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035321, 0.758916, -0.650229,
		0.926820, 0.268261, 0.262755,
		0.373840, -0.593365, -0.712855,
		38.361092, 29.965778, 47.520924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444214, 30.784712, 47.540833>,  <38.099403, 30.381134, 48.019920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444214, 30.784712, 47.540833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.445316, 30.461718, 47.304882>,  <38.445976, 30.267921, 47.163311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.445316, 30.461718, 47.304882>,  <38.444214, 30.784712, 47.540833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445316, 30.461718, 47.304882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118084, 0.586017, -0.801648,
		0.993000, -0.067448, 0.096964,
		0.002753, -0.807486, -0.589880,
		38.446140, 30.219471, 47.127918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062389, 30.734055, 47.203781>,  <38.444214, 30.784712, 47.540833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062389, 30.734055, 47.203781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807217, 30.534981, 46.968716>,  <38.654114, 30.415537, 46.827675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807217, 30.534981, 46.968716>,  <39.062389, 30.734055, 47.203781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807217, 30.534981, 46.968716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132033, 0.681127, -0.720162,
		0.758688, -0.537007, -0.368804,
		-0.637934, -0.497684, -0.587665,
		38.615837, 30.385675, 46.792416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254562, 30.733433, 46.485558>,  <39.062389, 30.734055, 47.203781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254562, 30.733433, 46.485558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.860645, 30.672174, 46.452759>,  <38.624294, 30.635420, 46.433079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.860645, 30.672174, 46.452759>,  <39.254562, 30.733433, 46.485558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860645, 30.672174, 46.452759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060166, 0.743506, -0.666017,
		0.162964, -0.650957, -0.741416,
		-0.984796, -0.153145, -0.081999,
		38.565208, 30.626230, 46.428158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192478, 30.589312, 45.796738>,  <39.254562, 30.733433, 46.485558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192478, 30.589312, 45.796738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.846355, 30.727476, 45.942028>,  <38.638683, 30.810375, 46.029202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.846355, 30.727476, 45.942028>,  <39.192478, 30.589312, 45.796738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846355, 30.727476, 45.942028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047656, 0.664679, -0.745608,
		-0.498970, -0.662490, -0.558691,
		-0.865308, 0.345411, 0.363226,
		38.586761, 30.831099, 46.050995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928272, 30.882360, 45.204117>,  <39.192478, 30.589312, 45.796738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928272, 30.882360, 45.204117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.665623, 30.994232, 45.484295>,  <38.508034, 31.061356, 45.652401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.665623, 30.994232, 45.484295>,  <38.928272, 30.882360, 45.204117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665623, 30.994232, 45.484295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314722, 0.742379, -0.591459,
		-0.685414, -0.608812, -0.399445,
		-0.656627, 0.279680, 0.700443,
		38.468636, 31.078136, 45.694427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375675, 30.981365, 44.824303>,  <38.928272, 30.882360, 45.204117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375675, 30.981365, 44.824303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290554, 31.206913, 45.143494>,  <38.239479, 31.342241, 45.335007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290554, 31.206913, 45.143494>,  <38.375675, 30.981365, 44.824303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290554, 31.206913, 45.143494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358278, 0.714770, -0.600618,
		-0.909039, -0.413712, 0.049915,
		-0.212805, 0.563868, 0.797977,
		38.226711, 31.376074, 45.382885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686272, 31.261301, 44.735607>,  <38.375675, 30.981365, 44.824303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686272, 31.261301, 44.735607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895763, 31.500677, 44.978123>,  <38.021458, 31.644302, 45.123631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895763, 31.500677, 44.978123>,  <37.686272, 31.261301, 44.735607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895763, 31.500677, 44.978123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257468, 0.789609, -0.556981,
		-0.812047, 0.135607, 0.567618,
		0.523726, 0.598439, 0.606285,
		38.052883, 31.680208, 45.160007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216751, 31.810665, 44.912327>,  <37.686272, 31.261301, 44.735607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216751, 31.810665, 44.912327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585545, 31.949741, 44.980515>,  <37.806820, 32.033188, 45.021427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585545, 31.949741, 44.980515>,  <37.216751, 31.810665, 44.912327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585545, 31.949741, 44.980515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208787, 0.817109, -0.537347,
		-0.326122, 0.459833, 0.825953,
		0.921983, 0.347689, 0.170470,
		37.862141, 32.054047, 45.031654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084789, 32.427650, 44.946281>,  <37.216751, 31.810665, 44.912327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084789, 32.427650, 44.946281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479729, 32.432865, 44.883076>,  <37.716694, 32.435993, 44.845154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479729, 32.432865, 44.883076>,  <37.084789, 32.427650, 44.946281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479729, 32.432865, 44.883076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091407, 0.861125, -0.500108,
		0.129552, 0.508226, 0.851424,
		0.987351, 0.013036, -0.158015,
		37.775932, 32.436775, 44.835670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697544, 32.884487, 45.438782>,  <37.084789, 32.427650, 44.946281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697544, 32.884487, 45.438782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334656, 33.046883, 45.482838>,  <36.116924, 33.144318, 45.509270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334656, 33.046883, 45.482838>,  <36.697544, 32.884487, 45.438782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334656, 33.046883, 45.482838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110016, -0.481697, 0.869405,
		0.406018, 0.776623, 0.481670,
		-0.907219, 0.405985, 0.110136,
		36.062489, 33.168678, 45.515877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634502, 33.184326, 46.156441>,  <36.697544, 32.884487, 45.438782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634502, 33.184326, 46.156441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289070, 33.068657, 45.991219>,  <36.081810, 32.999256, 45.892086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289070, 33.068657, 45.991219>,  <36.634502, 33.184326, 46.156441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289070, 33.068657, 45.991219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219206, -0.522413, 0.824035,
		-0.454075, 0.802161, 0.387755,
		-0.863577, -0.289176, -0.413053,
		36.029999, 32.981903, 45.867302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152950, 32.988720, 46.692898>,  <36.634502, 33.184326, 46.156441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152950, 32.988720, 46.692898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966949, 32.786331, 46.402309>,  <35.855347, 32.664898, 46.227955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966949, 32.786331, 46.402309>,  <36.152950, 32.988720, 46.692898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966949, 32.786331, 46.402309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363407, -0.639177, 0.677782,
		-0.807282, 0.579179, 0.113348,
		-0.465006, -0.505969, -0.726474,
		35.827446, 32.634541, 46.184368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434902, 32.867649, 46.899330>,  <36.152950, 32.988720, 46.692898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434902, 32.867649, 46.899330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525860, 32.582203, 46.634289>,  <35.580437, 32.410934, 46.475262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525860, 32.582203, 46.634289>,  <35.434902, 32.867649, 46.899330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525860, 32.582203, 46.634289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440410, -0.682233, 0.583608,
		-0.868522, 0.159107, -0.469420,
		0.227398, -0.713613, -0.662606,
		35.594078, 32.368118, 46.435509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014732, 32.358311, 47.047073>,  <35.434902, 32.867649, 46.899330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014732, 32.358311, 47.047073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298149, 32.156181, 46.850052>,  <35.468201, 32.034904, 46.731838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298149, 32.156181, 46.850052>,  <35.014732, 32.358311, 47.047073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298149, 32.156181, 46.850052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214252, -0.819102, 0.532136,
		-0.672355, -0.271511, -0.688637,
		0.708544, -0.505326, -0.492555,
		35.510712, 32.004581, 46.702286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700752, 31.766701, 46.914116>,  <35.014732, 32.358311, 47.047073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700752, 31.766701, 46.914116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.080116, 31.659403, 46.846519>,  <35.307735, 31.595024, 46.805962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.080116, 31.659403, 46.846519>,  <34.700752, 31.766701, 46.914116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080116, 31.659403, 46.846519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138340, -0.829755, 0.540711,
		-0.285260, -0.489440, -0.824060,
		0.948413, -0.268244, -0.168987,
		35.364639, 31.578930, 46.795822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656372, 31.122612, 46.580109>,  <34.700752, 31.766701, 46.914116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656372, 31.122612, 46.580109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019413, 31.149063, 46.745949>,  <35.237236, 31.164934, 46.845451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019413, 31.149063, 46.745949>,  <34.656372, 31.122612, 46.580109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019413, 31.149063, 46.745949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098492, -0.926422, 0.363375,
		0.408124, -0.370633, -0.834306,
		0.907598, 0.066130, 0.414599,
		35.291691, 31.168901, 46.870327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167801, 30.916107, 46.150703>,  <34.656372, 31.122612, 46.580109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167801, 30.916107, 46.150703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943443, 30.594900, 46.070152>,  <33.808826, 30.402176, 46.021824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943443, 30.594900, 46.070152>,  <34.167801, 30.916107, 46.150703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943443, 30.594900, 46.070152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526209, 0.533588, -0.662109,
		0.639140, -0.265409, -0.721844,
		-0.560897, -0.803021, -0.201377,
		33.775173, 30.353994, 46.009739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128601, 30.740871, 45.379955>,  <34.167801, 30.916107, 46.150703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128601, 30.740871, 45.379955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797935, 30.616905, 45.567818>,  <33.599537, 30.542526, 45.680534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797935, 30.616905, 45.567818>,  <34.128601, 30.740871, 45.379955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797935, 30.616905, 45.567818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560513, 0.526919, -0.638890,
		-0.049468, -0.791397, -0.609298,
		-0.826667, -0.309915, 0.469654,
		33.549934, 30.523932, 45.708714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572372, 30.777100, 44.771252>,  <34.128601, 30.740871, 45.379955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572372, 30.777100, 44.771252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379372, 30.744904, 45.120129>,  <33.263573, 30.725586, 45.329453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379372, 30.744904, 45.120129>,  <33.572372, 30.777100, 44.771252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379372, 30.744904, 45.120129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737163, 0.575117, -0.354728,
		-0.473060, -0.814102, -0.336827,
		-0.482500, -0.080489, 0.872190,
		33.234623, 30.720757, 45.381786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799480, 30.658310, 44.542408>,  <33.572372, 30.777100, 44.771252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799480, 30.658310, 44.542408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791580, 30.805170, 44.914387>,  <32.786839, 30.893286, 45.137573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791580, 30.805170, 44.914387>,  <32.799480, 30.658310, 44.542408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791580, 30.805170, 44.914387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656512, 0.696746, -0.289027,
		-0.754056, -0.616234, 0.227276,
		-0.019755, 0.367152, 0.929951,
		32.785652, 30.915316, 45.193371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078159, 30.768291, 44.744064>,  <32.799480, 30.658310, 44.542408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078159, 30.768291, 44.744064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301296, 30.995171, 44.986420>,  <32.435177, 31.131298, 45.131832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301296, 30.995171, 44.986420>,  <32.078159, 30.768291, 44.744064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301296, 30.995171, 44.986420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493669, 0.813609, -0.307135,
		-0.667160, -0.127773, 0.733874,
		0.557843, 0.567199, 0.605885,
		32.468651, 31.165331, 45.168186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602324, 31.203308, 44.951847>,  <32.078159, 30.768291, 44.744064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602324, 31.203308, 44.951847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.946957, 31.394997, 45.018803>,  <32.153736, 31.510010, 45.058975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.946957, 31.394997, 45.018803>,  <31.602324, 31.203308, 44.951847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946957, 31.394997, 45.018803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372763, 0.821144, -0.432169,
		-0.344558, 0.309952, 0.886120,
		0.861584, 0.479220, 0.167394,
		32.205433, 31.538763, 45.069019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458714, 31.870949, 45.143505>,  <31.602324, 31.203308, 44.951847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458714, 31.870949, 45.143505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830153, 31.894884, 44.997013>,  <32.053017, 31.909246, 44.909119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830153, 31.894884, 44.997013>,  <31.458714, 31.870949, 45.143505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830153, 31.894884, 44.997013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223362, 0.878242, -0.422848,
		0.296336, 0.474457, 0.828900,
		0.928598, 0.059840, -0.366230,
		32.108730, 31.912836, 44.887142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.443020, 24.264961, 45.457146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.399883, 24.643866, 45.577858>,  <37.374001, 24.871208, 45.650284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.399883, 24.643866, 45.577858>,  <37.443020, 24.264961, 45.457146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399883, 24.643866, 45.577858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392997, 0.238203, -0.888151,
		-0.913194, -0.214380, 0.346581,
		-0.107846, 0.947259, 0.301776,
		37.367531, 24.928043, 45.668392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707470, 24.484222, 45.292709>,  <37.443020, 24.264961, 45.457146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707470, 24.484222, 45.292709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.986233, 24.770502, 45.311054>,  <37.153488, 24.942270, 45.322060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.986233, 24.770502, 45.311054>,  <36.707470, 24.484222, 45.292709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986233, 24.770502, 45.311054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230535, 0.284115, -0.930662,
		-0.679103, 0.638009, 0.362993,
		0.696902, 0.715698, 0.045860,
		37.195305, 24.985212, 45.324814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364483, 25.052412, 45.046852>,  <36.707470, 24.484222, 45.292709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364483, 25.052412, 45.046852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.748863, 25.151304, 44.997131>,  <36.979492, 25.210640, 44.967300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.748863, 25.151304, 44.997131>,  <36.364483, 25.052412, 45.046852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748863, 25.151304, 44.997131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243888, 0.544454, -0.802551,
		-0.130739, 0.801528, 0.583490,
		0.960951, 0.247231, -0.124301,
		37.037148, 25.225473, 44.959843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368263, 25.777470, 44.921413>,  <36.364483, 25.052412, 45.046852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368263, 25.777470, 44.921413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.695805, 25.621870, 44.752583>,  <36.892330, 25.528511, 44.651283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.695805, 25.621870, 44.752583>,  <36.368263, 25.777470, 44.921413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695805, 25.621870, 44.752583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138591, 0.579591, -0.803036,
		0.557014, 0.716069, 0.420691,
		0.818858, -0.388998, -0.422081,
		36.941463, 25.505171, 44.625957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707932, 26.314449, 44.688396>,  <36.368263, 25.777470, 44.921413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707932, 26.314449, 44.688396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.842556, 26.000502, 44.480278>,  <36.923332, 25.812134, 44.355408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.842556, 26.000502, 44.480278>,  <36.707932, 26.314449, 44.688396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842556, 26.000502, 44.480278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343865, 0.411937, -0.843839,
		0.876632, 0.462916, -0.131247,
		0.336561, -0.784868, -0.520298,
		36.943523, 25.765041, 44.324188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073223, 26.637678, 44.168362>,  <36.707932, 26.314449, 44.688396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073223, 26.637678, 44.168362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.021824, 26.257933, 44.053680>,  <36.990982, 26.030085, 43.984871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.021824, 26.257933, 44.053680>,  <37.073223, 26.637678, 44.168362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021824, 26.257933, 44.053680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177192, 0.306424, -0.935258,
		0.975751, -0.069382, -0.207596,
		-0.128502, -0.949363, -0.286700,
		36.983273, 25.973124, 43.967670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461864, 26.618954, 43.576767>,  <37.073223, 26.637678, 44.168362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461864, 26.618954, 43.576767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.252274, 26.281477, 43.530075>,  <37.126518, 26.078991, 43.502060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.252274, 26.281477, 43.530075>,  <37.461864, 26.618954, 43.576767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252274, 26.281477, 43.530075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222177, 0.267703, -0.937535,
		0.822241, -0.465315, -0.327720,
		-0.523981, -0.843692, -0.116734,
		37.095078, 26.028370, 43.495056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691021, 26.328463, 42.933338>,  <37.461864, 26.618954, 43.576767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691021, 26.328463, 42.933338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.320869, 26.209587, 43.027451>,  <37.098778, 26.138262, 43.083916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.320869, 26.209587, 43.027451>,  <37.691021, 26.328463, 42.933338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320869, 26.209587, 43.027451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334757, 0.349599, -0.875053,
		0.177801, -0.888516, -0.422996,
		-0.925378, -0.297186, 0.235278,
		37.043255, 26.120430, 43.098034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426582, 26.003208, 42.357010>,  <37.691021, 26.328463, 42.933338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426582, 26.003208, 42.357010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.082344, 26.083473, 42.544243>,  <36.875801, 26.131632, 42.656582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.082344, 26.083473, 42.544243>,  <37.426582, 26.003208, 42.357010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082344, 26.083473, 42.544243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338788, 0.460674, -0.820367,
		-0.380250, -0.864589, -0.328475,
		-0.860600, 0.200661, 0.468084,
		36.824165, 26.143671, 42.684669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968922, 25.769777, 41.879147>,  <37.426582, 26.003208, 42.357010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968922, 25.769777, 41.879147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.735001, 25.997532, 42.110249>,  <36.594646, 26.134184, 42.248909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.735001, 25.997532, 42.110249>,  <36.968922, 25.769777, 41.879147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735001, 25.997532, 42.110249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408641, 0.408479, -0.816185,
		-0.700725, -0.713404, -0.006206,
		-0.584805, 0.569385, 0.577758,
		36.559559, 26.168348, 42.283577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231586, 25.613918, 41.716373>,  <36.968922, 25.769777, 41.879147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231586, 25.613918, 41.716373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.278168, 25.980482, 41.869545>,  <36.306118, 26.200420, 41.961449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.278168, 25.980482, 41.869545>,  <36.231586, 25.613918, 41.716373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278168, 25.980482, 41.869545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272989, 0.400233, -0.874809,
		-0.954943, -0.002662, 0.296778,
		0.116452, 0.916410, 0.382927,
		36.313103, 26.255405, 41.984425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725662, 25.969982, 41.450417>,  <36.231586, 25.613918, 41.716373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725662, 25.969982, 41.450417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.954498, 26.276979, 41.566113>,  <36.091801, 26.461178, 41.635532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.954498, 26.276979, 41.566113>,  <35.725662, 25.969982, 41.450417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954498, 26.276979, 41.566113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151166, 0.445280, -0.882539,
		-0.806138, 0.461171, 0.370761,
		0.572094, 0.767494, 0.289244,
		36.126125, 26.507227, 41.652885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045361, 26.093937, 41.720387>,  <35.725662, 25.969982, 41.450417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045361, 26.093937, 41.720387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.648327, 26.137730, 41.699245>,  <34.410107, 26.164005, 41.686562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.648327, 26.137730, 41.699245>,  <35.045361, 26.093937, 41.720387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648327, 26.137730, 41.699245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036897, 0.142923, 0.989046,
		0.115836, 0.983660, -0.137823,
		-0.992583, 0.109482, -0.052850,
		34.350552, 26.170574, 41.683392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783764, 26.698034, 42.061134>,  <35.045361, 26.093937, 41.720387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783764, 26.698034, 42.061134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.489475, 26.427210, 42.068146>,  <34.312904, 26.264715, 42.072353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.489475, 26.427210, 42.068146>,  <34.783764, 26.698034, 42.061134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489475, 26.427210, 42.068146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081459, 0.114148, 0.990119,
		-0.672372, 0.727020, -0.139133,
		-0.735718, -0.677061, 0.017527,
		34.268761, 26.224091, 42.073402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211998, 27.023745, 42.530945>,  <34.783764, 26.698034, 42.061134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211998, 27.023745, 42.530945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.141224, 26.630056, 42.529766>,  <34.098759, 26.393845, 42.529060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.141224, 26.630056, 42.529766>,  <34.211998, 27.023745, 42.530945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141224, 26.630056, 42.529766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209016, 0.034650, 0.977298,
		-0.961773, 0.173530, -0.211848,
		-0.176931, -0.984219, -0.002945,
		34.088146, 26.334791, 42.528881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636715, 26.857336, 42.917126>,  <34.211998, 27.023745, 42.530945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636715, 26.857336, 42.917126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.808235, 26.496264, 42.931503>,  <33.911148, 26.279619, 42.940128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.808235, 26.496264, 42.931503>,  <33.636715, 26.857336, 42.917126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808235, 26.496264, 42.931503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119338, -0.017163, 0.992705,
		-0.895481, -0.429965, -0.115084,
		0.428804, -0.902683, 0.035942,
		33.936878, 26.225458, 42.942287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302280, 26.485794, 43.476906>,  <33.636715, 26.857336, 42.917126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302280, 26.485794, 43.476906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.599174, 26.222837, 43.424873>,  <33.777309, 26.065063, 43.393654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.599174, 26.222837, 43.424873>,  <33.302280, 26.485794, 43.476906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599174, 26.222837, 43.424873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013998, -0.209282, 0.977755,
		-0.669993, -0.723904, -0.164539,
		0.742235, -0.657393, -0.130084,
		33.821846, 26.025620, 43.385849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104191, 25.891174, 43.864021>,  <33.302280, 26.485794, 43.476906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104191, 25.891174, 43.864021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.493191, 25.829067, 43.794590>,  <33.726593, 25.791803, 43.752930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.493191, 25.829067, 43.794590>,  <33.104191, 25.891174, 43.864021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493191, 25.829067, 43.794590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123527, -0.287962, 0.949641,
		-0.197430, -0.944972, -0.260865,
		0.972503, -0.155264, -0.173582,
		33.784943, 25.782488, 43.742516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206753, 25.352104, 44.313759>,  <33.104191, 25.891174, 43.864021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206753, 25.352104, 44.313759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.548233, 25.542097, 44.228359>,  <33.753120, 25.656092, 44.177120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.548233, 25.542097, 44.228359>,  <33.206753, 25.352104, 44.313759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548233, 25.542097, 44.228359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290771, -0.094653, 0.952099,
		0.432021, -0.874890, -0.218916,
		0.853704, 0.474982, -0.213501,
		33.804344, 25.684591, 44.164310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726486, 24.939568, 44.711815>,  <33.206753, 25.352104, 44.313759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726486, 24.939568, 44.711815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.897148, 25.291637, 44.628620>,  <33.999546, 25.502878, 44.578701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.897148, 25.291637, 44.628620>,  <33.726486, 24.939568, 44.711815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897148, 25.291637, 44.628620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324558, 0.065648, 0.943585,
		0.844172, -0.470092, -0.257658,
		0.426657, 0.880172, -0.207990,
		34.025146, 25.555689, 44.566223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300564, 24.892984, 45.127876>,  <33.726486, 24.939568, 44.711815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300564, 24.892984, 45.127876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271915, 25.273472, 45.007839>,  <34.254726, 25.501764, 44.935818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271915, 25.273472, 45.007839>,  <34.300564, 24.892984, 45.127876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271915, 25.273472, 45.007839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155057, 0.307826, 0.938722,
		0.985306, 0.020702, -0.169541,
		-0.071623, 0.951217, -0.300093,
		34.250427, 25.558838, 44.917812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735558, 25.211044, 45.515091>,  <34.300564, 24.892984, 45.127876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735558, 25.211044, 45.515091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.519291, 25.529667, 45.406883>,  <34.389530, 25.720840, 45.341961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.519291, 25.529667, 45.406883>,  <34.735558, 25.211044, 45.515091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519291, 25.529667, 45.406883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125632, 0.394420, 0.910302,
		0.831803, 0.458184, -0.313322,
		-0.540667, 0.796555, -0.270517,
		34.357090, 25.768633, 45.325729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150398, 25.706785, 45.799873>,  <34.735558, 25.211044, 45.515091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150398, 25.706785, 45.799873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.767178, 25.809601, 45.749161>,  <34.537247, 25.871290, 45.718735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.767178, 25.809601, 45.749161>,  <35.150398, 25.706785, 45.799873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767178, 25.809601, 45.749161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007770, 0.418895, 0.908001,
		0.286501, 0.870894, -0.399325,
		-0.958048, 0.257041, -0.126781,
		34.479763, 25.886713, 45.711128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154938, 26.432713, 45.958687>,  <35.150398, 25.706785, 45.799873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154938, 26.432713, 45.958687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.788116, 26.284187, 46.016850>,  <34.568024, 26.195072, 46.051746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.788116, 26.284187, 46.016850>,  <35.154938, 26.432713, 45.958687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788116, 26.284187, 46.016850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078775, 0.526134, 0.846745,
		-0.390910, 0.765055, -0.511742,
		-0.917052, -0.371313, 0.145404,
		34.513000, 26.172792, 46.060471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719212, 26.984201, 46.191597>,  <35.154938, 26.432713, 45.958687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719212, 26.984201, 46.191597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492424, 26.668995, 46.287575>,  <34.356350, 26.479872, 46.345161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492424, 26.668995, 46.287575>,  <34.719212, 26.984201, 46.191597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492424, 26.668995, 46.287575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224485, 0.428076, 0.875418,
		-0.792558, 0.442474, -0.419605,
		-0.566973, -0.788015, 0.239947,
		34.322330, 26.432590, 46.359558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070351, 27.222038, 46.479111>,  <34.719212, 26.984201, 46.191597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070351, 27.222038, 46.479111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.129391, 26.850153, 46.614075>,  <34.164814, 26.627022, 46.695053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.129391, 26.850153, 46.614075>,  <34.070351, 27.222038, 46.479111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129391, 26.850153, 46.614075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202061, 0.305611, 0.930469,
		-0.968187, -0.205513, -0.142752,
		0.147597, -0.929713, 0.337415,
		34.173672, 26.571239, 46.715298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791161, 27.692575, 45.879192>,  <34.070351, 27.222038, 46.479111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791161, 27.692575, 45.879192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.849560, 27.775869, 46.266041>,  <33.884602, 27.825846, 46.498150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.849560, 27.775869, 46.266041>,  <33.791161, 27.692575, 45.879192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849560, 27.775869, 46.266041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561983, 0.822000, -0.092147,
		-0.814161, -0.530052, 0.237037,
		0.146002, 0.208233, 0.967121,
		33.893360, 27.838339, 46.556175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178261, 27.830763, 46.114033>,  <33.791161, 27.692575, 45.879192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178261, 27.830763, 46.114033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441212, 28.007677, 46.358078>,  <33.598984, 28.113825, 46.504505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441212, 28.007677, 46.358078>,  <33.178261, 27.830763, 46.114033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441212, 28.007677, 46.358078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436219, 0.883543, -0.170485,
		-0.614461, -0.154067, 0.773758,
		0.657382, 0.442284, 0.610110,
		33.638428, 28.140362, 46.541111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804199, 28.456392, 46.233032>,  <33.178261, 27.830763, 46.114033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804199, 28.456392, 46.233032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.174221, 28.532555, 46.364502>,  <33.396233, 28.578251, 46.443382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.174221, 28.532555, 46.364502>,  <32.804199, 28.456392, 46.233032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174221, 28.532555, 46.364502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215936, 0.975476, 0.042649,
		-0.312489, -0.110424, 0.943482,
		0.925053, 0.190405, 0.328670,
		33.451736, 28.589676, 46.463104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760330, 28.884619, 46.796082>,  <32.804199, 28.456392, 46.233032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760330, 28.884619, 46.796082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.134525, 28.919374, 46.659073>,  <33.359043, 28.940228, 46.576870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.134525, 28.919374, 46.659073>,  <32.760330, 28.884619, 46.796082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134525, 28.919374, 46.659073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033513, 0.986744, 0.158784,
		0.351775, -0.137061, 0.925996,
		0.935484, 0.086889, -0.342518,
		33.415169, 28.945440, 46.556316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207806, 29.213779, 47.296478>,  <32.760330, 28.884619, 46.796082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207806, 29.213779, 47.296478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356827, 29.278791, 46.931011>,  <33.446239, 29.317799, 46.711731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356827, 29.278791, 46.931011>,  <33.207806, 29.213779, 47.296478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356827, 29.278791, 46.931011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069064, 0.986669, 0.147355,
		0.925436, 0.008204, 0.378816,
		0.372557, 0.162530, -0.913666,
		33.468594, 29.327551, 46.656910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862568, 29.579451, 47.364197>,  <33.207806, 29.213779, 47.296478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862568, 29.579451, 47.364197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.696095, 29.661896, 47.009953>,  <33.596210, 29.711363, 46.797405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.696095, 29.661896, 47.009953>,  <33.862568, 29.579451, 47.364197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696095, 29.661896, 47.009953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161574, 0.975234, 0.151041,
		0.894812, -0.080232, -0.439176,
		-0.416181, 0.206112, -0.885613,
		33.571239, 29.723730, 46.744270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399982, 29.901207, 46.931187>,  <33.862568, 29.579451, 47.364197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399982, 29.901207, 46.931187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.024513, 30.028986, 46.879272>,  <33.799232, 30.105654, 46.848122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.024513, 30.028986, 46.879272>,  <34.399982, 29.901207, 46.931187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024513, 30.028986, 46.879272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293343, 0.937671, 0.186341,
		0.181224, 0.136841, -0.973875,
		-0.938673, 0.319449, -0.129788,
		33.742912, 30.124821, 46.840336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876968, 30.412102, 46.720051>,  <34.399982, 29.901207, 46.931187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876968, 30.412102, 46.720051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.137676, 30.616596, 46.944134>,  <35.294102, 30.739292, 47.078583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.137676, 30.616596, 46.944134>,  <34.876968, 30.412102, 46.720051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137676, 30.616596, 46.944134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123841, -0.800484, 0.586421,
		0.748236, -0.312835, -0.585044,
		0.651771, 0.511234, 0.560209,
		35.333206, 30.769966, 47.112198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477314, 29.961502, 46.822464>,  <34.876968, 30.412102, 46.720051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477314, 29.961502, 46.822464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.473595, 30.226780, 47.121819>,  <35.471363, 30.385946, 47.301434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.473595, 30.226780, 47.121819>,  <35.477314, 29.961502, 46.822464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473595, 30.226780, 47.121819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308346, -0.710049, 0.633051,
		0.951229, 0.236647, -0.197893,
		-0.009296, 0.663196, 0.748388,
		35.470806, 30.425739, 47.346336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144531, 29.716320, 47.219315>,  <35.477314, 29.961502, 46.822464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144531, 29.716320, 47.219315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.934174, 29.963217, 47.453392>,  <35.807957, 30.111355, 47.593838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.934174, 29.963217, 47.453392>,  <36.144531, 29.716320, 47.219315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934174, 29.963217, 47.453392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265135, -0.534767, 0.802326,
		0.808168, 0.577095, 0.117581,
		-0.525897, 0.617240, 0.585190,
		35.776405, 30.148388, 47.628948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578861, 29.823889, 47.819309>,  <36.144531, 29.716320, 47.219315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578861, 29.823889, 47.819309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.204292, 29.900133, 47.937145>,  <35.979549, 29.945879, 48.007847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.204292, 29.900133, 47.937145>,  <36.578861, 29.823889, 47.819309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204292, 29.900133, 47.937145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172497, -0.481027, 0.859568,
		0.305547, 0.855734, 0.417564,
		-0.936422, 0.190610, 0.294588,
		35.923367, 29.957315, 48.025520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598370, 30.131142, 48.540661>,  <36.578861, 29.823889, 47.819309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598370, 30.131142, 48.540661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.229046, 29.986679, 48.488407>,  <36.007450, 29.900002, 48.457054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.229046, 29.986679, 48.488407>,  <36.598370, 30.131142, 48.540661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229046, 29.986679, 48.488407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102710, -0.559954, 0.822133,
		-0.370067, 0.745666, 0.554105,
		-0.923310, -0.361156, -0.130633,
		35.952053, 29.878332, 48.449219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377201, 30.047869, 49.200497>,  <36.598370, 30.131142, 48.540661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377201, 30.047869, 49.200497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.079998, 29.848251, 49.022102>,  <35.901676, 29.728481, 48.915066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.079998, 29.848251, 49.022102>,  <36.377201, 30.047869, 49.200497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079998, 29.848251, 49.022102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020834, -0.683277, 0.729862,
		-0.668962, 0.532999, 0.518075,
		-0.743005, -0.499043, -0.445982,
		35.857098, 29.698538, 48.888309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847961, 29.839529, 49.737568>,  <36.377201, 30.047869, 49.200497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847961, 29.839529, 49.737568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.817974, 29.591040, 49.425552>,  <35.799980, 29.441946, 49.238342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.817974, 29.591040, 49.425552>,  <35.847961, 29.839529, 49.737568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817974, 29.591040, 49.425552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067884, -0.783604, 0.617541,
		-0.994873, -0.006657, 0.100917,
		-0.074968, -0.621225, -0.780038,
		35.795483, 29.404673, 49.191540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400955, 29.277269, 49.956383>,  <35.847961, 29.839529, 49.737568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400955, 29.277269, 49.956383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.597469, 29.143467, 49.634701>,  <35.715378, 29.063185, 49.441692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.597469, 29.143467, 49.634701>,  <35.400955, 29.277269, 49.956383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597469, 29.143467, 49.634701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066466, -0.906223, 0.417542,
		-0.868460, -0.258584, -0.422979,
		0.491283, -0.334505, -0.804206,
		35.744854, 29.043116, 49.393440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042122, 28.709455, 49.736328>,  <35.400955, 29.277269, 49.956383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042122, 28.709455, 49.736328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.418758, 28.660397, 49.610878>,  <35.644741, 28.630960, 49.535606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.418758, 28.660397, 49.610878>,  <35.042122, 28.709455, 49.736328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418758, 28.660397, 49.610878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013700, -0.944499, 0.328228,
		-0.336477, -0.304760, -0.891013,
		0.941592, -0.122648, -0.313627,
		35.701237, 28.623602, 49.516788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.904522, 36.970284, 36.043018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283623, 36.850105, 36.000126>,  <35.511082, 36.778000, 35.974392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283623, 36.850105, 36.000126>,  <34.904522, 36.970284, 36.043018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283623, 36.850105, 36.000126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119183, -0.645286, 0.754587,
		-0.295906, -0.702382, -0.647379,
		0.947753, -0.300443, -0.107232,
		35.567947, 36.759972, 35.967957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874992, 36.220142, 35.932762>,  <34.904522, 36.970284, 36.043018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874992, 36.220142, 35.932762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199429, 36.376278, 36.107010>,  <35.394093, 36.469959, 36.211559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199429, 36.376278, 36.107010>,  <34.874992, 36.220142, 35.932762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199429, 36.376278, 36.107010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215898, -0.492377, 0.843180,
		0.543616, -0.777946, -0.315090,
		0.811092, 0.390339, 0.435621,
		35.442757, 36.493378, 36.237698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299755, 35.701126, 36.138863>,  <34.874992, 36.220142, 35.932762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299755, 35.701126, 36.138863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410980, 36.016018, 36.359028>,  <35.477715, 36.204952, 36.491127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410980, 36.016018, 36.359028>,  <35.299755, 35.701126, 36.138863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410980, 36.016018, 36.359028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297527, -0.474248, 0.828593,
		0.913324, -0.394161, 0.102352,
		0.278059, 0.787227, 0.550416,
		35.494396, 36.252186, 36.524151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484562, 35.420139, 36.749146>,  <35.299755, 35.701126, 36.138863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484562, 35.420139, 36.749146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457798, 35.802044, 36.865044>,  <35.441742, 36.031185, 36.934582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457798, 35.802044, 36.865044>,  <35.484562, 35.420139, 36.749146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457798, 35.802044, 36.865044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197491, -0.297323, 0.934129,
		0.978019, 0.005276, 0.208450,
		-0.066906, 0.954763, 0.289745,
		35.437725, 36.088474, 36.951965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805813, 35.461872, 37.469467>,  <35.484562, 35.420139, 36.749146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805813, 35.461872, 37.469467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601746, 35.804131, 37.434597>,  <35.479305, 36.009487, 37.413677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601746, 35.804131, 37.434597>,  <35.805813, 35.461872, 37.469467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601746, 35.804131, 37.434597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420546, -0.159758, 0.893095,
		0.750247, 0.492287, 0.441342,
		-0.510167, 0.855646, -0.087172,
		35.448696, 36.060825, 37.408447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968464, 35.952316, 37.990120>,  <35.805813, 35.461872, 37.469467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968464, 35.952316, 37.990120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603523, 36.060093, 37.866825>,  <35.384560, 36.124760, 37.792847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603523, 36.060093, 37.866825>,  <35.968464, 35.952316, 37.990120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603523, 36.060093, 37.866825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345776, -0.104020, 0.932534,
		0.219203, 0.957381, 0.188071,
		-0.912354, 0.269444, -0.308238,
		35.329819, 36.140926, 37.774353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764965, 36.355274, 38.484413>,  <35.968464, 35.952316, 37.990120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764965, 36.355274, 38.484413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404198, 36.279682, 38.329071>,  <35.187737, 36.234329, 38.235867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404198, 36.279682, 38.329071>,  <35.764965, 36.355274, 38.484413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404198, 36.279682, 38.329071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389555, -0.032337, 0.920435,
		-0.186499, 0.981449, -0.044451,
		-0.901923, -0.188977, -0.388359,
		35.133621, 36.222988, 38.212563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291779, 36.986244, 38.728073>,  <35.764965, 36.355274, 38.484413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291779, 36.986244, 38.728073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098320, 36.646599, 38.643127>,  <34.982246, 36.442814, 38.592159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098320, 36.646599, 38.643127>,  <35.291779, 36.986244, 38.728073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098320, 36.646599, 38.643127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502804, 0.070938, 0.861485,
		-0.716432, 0.523429, -0.461245,
		-0.483646, -0.849111, -0.212359,
		34.953228, 36.391865, 38.579418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689381, 37.048119, 39.217827>,  <35.291779, 36.986244, 38.728073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689381, 37.048119, 39.217827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684227, 36.673119, 39.078732>,  <34.681137, 36.448116, 38.995274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684227, 36.673119, 39.078732>,  <34.689381, 37.048119, 39.217827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684227, 36.673119, 39.078732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313438, -0.326457, 0.891731,
		-0.949522, 0.120480, -0.289644,
		-0.012880, -0.937503, -0.347741,
		34.680363, 36.391869, 38.974411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006771, 36.813068, 39.260231>,  <34.689381, 37.048119, 39.217827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006771, 36.813068, 39.260231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253292, 36.498814, 39.281933>,  <34.401207, 36.310261, 39.294952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253292, 36.498814, 39.281933>,  <34.006771, 36.813068, 39.260231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253292, 36.498814, 39.281933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335754, -0.199822, 0.920511,
		-0.712345, -0.585532, -0.386932,
		0.616306, -0.785636, 0.054253,
		34.438183, 36.263123, 39.298210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588547, 36.239376, 39.600231>,  <34.006771, 36.813068, 39.260231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588547, 36.239376, 39.600231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968391, 36.119152, 39.635784>,  <34.196297, 36.047016, 39.657116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968391, 36.119152, 39.635784>,  <33.588547, 36.239376, 39.600231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968391, 36.119152, 39.635784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185665, -0.310957, 0.932113,
		-0.252515, -0.901649, -0.351092,
		0.949613, -0.300558, 0.088883,
		34.253273, 36.028984, 39.662449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656101, 35.512901, 39.694366>,  <33.588547, 36.239376, 39.600231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656101, 35.512901, 39.694366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983749, 35.660908, 39.869698>,  <34.180336, 35.749714, 39.974895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983749, 35.660908, 39.869698>,  <33.656101, 35.512901, 39.694366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983749, 35.660908, 39.869698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193709, -0.540824, 0.818527,
		0.539929, -0.755378, -0.371322,
		0.819118, 0.370018, 0.438330,
		34.229485, 35.771912, 40.001198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521748, 34.967319, 39.293121>,  <33.656101, 35.512901, 39.694366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521748, 34.967319, 39.293121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233158, 34.738205, 39.448757>,  <33.060005, 34.600739, 39.542141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233158, 34.738205, 39.448757>,  <33.521748, 34.967319, 39.293121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233158, 34.738205, 39.448757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344806, -0.190114, -0.919220,
		0.600486, -0.797356, -0.060337,
		-0.721475, -0.572783, 0.389093,
		33.016716, 34.566372, 39.565487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604736, 34.229412, 39.122128>,  <33.521748, 34.967319, 39.293121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604736, 34.229412, 39.122128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224880, 34.351910, 39.148624>,  <32.996967, 34.425407, 39.164524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224880, 34.351910, 39.148624>,  <33.604736, 34.229412, 39.122128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224880, 34.351910, 39.148624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139516, -0.223979, -0.964556,
		-0.280558, -0.925227, 0.255427,
		-0.949643, 0.306250, 0.066245,
		32.939987, 34.443783, 39.168499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221870, 33.712032, 38.806763>,  <33.604736, 34.229412, 39.122128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221870, 33.712032, 38.806763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991257, 34.038849, 38.809715>,  <32.852890, 34.234940, 38.811485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991257, 34.038849, 38.809715>,  <33.221870, 33.712032, 38.806763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991257, 34.038849, 38.809715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132232, -0.084387, -0.987620,
		-0.806304, -0.570371, 0.156691,
		-0.576532, 0.817042, 0.007380,
		32.818298, 34.283962, 38.811928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667995, 33.571396, 38.517628>,  <33.221870, 33.712032, 38.806763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667995, 33.571396, 38.517628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703732, 33.968159, 38.481560>,  <32.725174, 34.206219, 38.459919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703732, 33.968159, 38.481560>,  <32.667995, 33.571396, 38.517628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703732, 33.968159, 38.481560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000241, -0.090509, -0.995896,
		-0.996001, 0.088997, -0.007847,
		0.089342, 0.991911, -0.090168,
		32.730534, 34.265732, 38.454510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089973, 33.819485, 38.023434>,  <32.667995, 33.571396, 38.517628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089973, 33.819485, 38.023434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344387, 34.127747, 38.007702>,  <32.497036, 34.312706, 37.998260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344387, 34.127747, 38.007702>,  <32.089973, 33.819485, 38.023434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344387, 34.127747, 38.007702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085784, -0.121271, -0.988906,
		-0.766879, 0.625602, -0.143242,
		0.636032, 0.770659, -0.039333,
		32.535198, 34.358944, 37.995903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708139, 34.323273, 37.658993>,  <32.089973, 33.819485, 38.023434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708139, 34.323273, 37.658993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101700, 34.393780, 37.647209>,  <32.337837, 34.436085, 37.640137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101700, 34.393780, 37.647209>,  <31.708139, 34.323273, 37.658993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101700, 34.393780, 37.647209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048634, 0.105461, -0.993233,
		-0.171965, 0.978677, 0.112336,
		0.983902, 0.176265, -0.029461,
		32.396870, 34.446659, 37.638371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822601, 34.998295, 37.297592>,  <31.708139, 34.323273, 37.658993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822601, 34.998295, 37.297592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175064, 34.811558, 37.267597>,  <32.386543, 34.699516, 37.249599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175064, 34.811558, 37.267597>,  <31.822601, 34.998295, 37.297592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175064, 34.811558, 37.267597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066776, 0.279868, -0.957713,
		0.468086, 0.838888, 0.277781,
		0.881156, -0.466842, -0.074985,
		32.439411, 34.671505, 37.245102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161308, 35.413887, 36.839718>,  <31.822601, 34.998295, 37.297592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161308, 35.413887, 36.839718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398636, 35.091919, 36.843159>,  <32.541031, 34.898739, 36.845222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398636, 35.091919, 36.843159>,  <32.161308, 35.413887, 36.839718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398636, 35.091919, 36.843159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142485, 0.094495, -0.985276,
		0.792256, 0.585809, 0.170755,
		0.593319, -0.804921, 0.008605,
		32.576633, 34.850441, 36.845741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821651, 35.598679, 36.631691>,  <32.161308, 35.413887, 36.839718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821651, 35.598679, 36.631691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806461, 35.211784, 36.531288>,  <32.797348, 34.979649, 36.471046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806461, 35.211784, 36.531288>,  <32.821651, 35.598679, 36.631691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806461, 35.211784, 36.531288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375448, 0.218978, -0.900604,
		0.926065, -0.128441, 0.354833,
		-0.037974, -0.967239, -0.251011,
		32.795071, 34.921612, 36.455986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417259, 35.480301, 36.027870>,  <32.821651, 35.598679, 36.631691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417259, 35.480301, 36.027870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235611, 35.125057, 36.056271>,  <33.126621, 34.911911, 36.073311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235611, 35.125057, 36.056271>,  <33.417259, 35.480301, 36.027870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235611, 35.125057, 36.056271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292049, -0.223676, -0.929880,
		0.841712, -0.401545, 0.360947,
		-0.454124, -0.888105, 0.071000,
		33.099373, 34.858627, 36.077572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904610, 34.902813, 35.651810>,  <33.417259, 35.480301, 36.027870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904610, 34.902813, 35.651810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514484, 34.814510, 35.649597>,  <33.280411, 34.761528, 35.648270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514484, 34.814510, 35.649597>,  <33.904610, 34.902813, 35.651810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514484, 34.814510, 35.649597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049245, -0.193010, -0.979960,
		0.215266, -0.956041, 0.199116,
		-0.975313, -0.220758, -0.005532,
		33.221889, 34.748283, 35.647938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849442, 34.223259, 35.413326>,  <33.904610, 34.902813, 35.651810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849442, 34.223259, 35.413326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536213, 34.458687, 35.332943>,  <33.348274, 34.599945, 35.284714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536213, 34.458687, 35.332943>,  <33.849442, 34.223259, 35.413326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536213, 34.458687, 35.332943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058258, -0.391109, -0.918499,
		-0.619199, -0.707541, 0.340555,
		-0.783070, 0.588574, -0.200954,
		33.301292, 34.635258, 35.272655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505432, 33.839767, 34.910713>,  <33.849442, 34.223259, 35.413326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505432, 33.839767, 34.910713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282921, 34.168472, 34.861286>,  <33.149414, 34.365696, 34.831631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282921, 34.168472, 34.861286>,  <33.505432, 33.839767, 34.910713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282921, 34.168472, 34.861286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284939, -0.328300, -0.900572,
		-0.780617, -0.465761, 0.416777,
		-0.556279, 0.821758, -0.123563,
		33.116035, 34.415001, 34.824219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897205, 33.741943, 34.490833>,  <33.505432, 33.839767, 34.910713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897205, 33.741943, 34.490833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874454, 34.140610, 34.467445>,  <32.860806, 34.379810, 34.453411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874454, 34.140610, 34.467445>,  <32.897205, 33.741943, 34.490833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874454, 34.140610, 34.467445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184612, -0.068055, -0.980453,
		-0.981164, -0.044971, 0.187867,
		-0.056877, 0.996668, -0.058471,
		32.857391, 34.439610, 34.449905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723282, 33.731762, 33.805588>,  <32.897205, 33.741943, 34.490833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723282, 33.731762, 33.805588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570412, 33.463249, 33.551559>,  <32.478687, 33.302139, 33.399143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570412, 33.463249, 33.551559>,  <32.723282, 33.731762, 33.805588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570412, 33.463249, 33.551559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149746, -0.723146, 0.674267,
		-0.911874, 0.162592, 0.376893,
		-0.382179, -0.671285, -0.635071,
		32.455757, 33.261864, 33.361038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142799, 33.271980, 34.133488>,  <32.723282, 33.731762, 33.805588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142799, 33.271980, 34.133488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375595, 33.101696, 33.856342>,  <32.515274, 32.999527, 33.690056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375595, 33.101696, 33.856342>,  <32.142799, 33.271980, 34.133488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375595, 33.101696, 33.856342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238410, -0.725259, 0.645880,
		-0.777462, -0.541081, -0.320600,
		0.581991, -0.425712, -0.692860,
		32.550194, 32.973984, 33.648483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042801, 32.490124, 34.095264>,  <32.142799, 33.271980, 34.133488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042801, 32.490124, 34.095264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418682, 32.599583, 34.013218>,  <32.644211, 32.665260, 33.963989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418682, 32.599583, 34.013218>,  <32.042801, 32.490124, 34.095264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418682, 32.599583, 34.013218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341727, -0.774923, 0.531712,
		-0.013449, -0.569746, -0.821711,
		0.939703, 0.273650, -0.205119,
		32.700592, 32.681679, 33.951683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413010, 32.011894, 33.665844>,  <32.042801, 32.490124, 34.095264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413010, 32.011894, 33.665844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653591, 32.195103, 33.927673>,  <32.797939, 32.305027, 34.084770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653591, 32.195103, 33.927673>,  <32.413010, 32.011894, 33.665844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653591, 32.195103, 33.927673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299212, -0.888850, 0.347014,
		0.740760, -0.012855, -0.671647,
		0.601454, 0.458018, 0.654578,
		32.834026, 32.332508, 34.124046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942326, 31.545633, 33.653763>,  <32.413010, 32.011894, 33.665844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942326, 31.545633, 33.653763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009315, 31.775579, 33.974133>,  <33.049507, 31.913548, 34.166355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009315, 31.775579, 33.974133>,  <32.942326, 31.545633, 33.653763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009315, 31.775579, 33.974133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462140, -0.763389, 0.451291,
		0.870850, 0.294561, -0.393515,
		0.167472, 0.574866, 0.800926,
		33.059559, 31.948040, 34.214409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620579, 31.310776, 33.905087>,  <32.942326, 31.545633, 33.653763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620579, 31.310776, 33.905087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494598, 31.506216, 34.230560>,  <33.419010, 31.623480, 34.425842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494598, 31.506216, 34.230560>,  <33.620579, 31.310776, 33.905087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494598, 31.506216, 34.230560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399966, -0.709145, 0.580639,
		0.860718, 0.508316, 0.027921,
		-0.314948, 0.488599, 0.813682,
		33.400116, 31.652796, 34.474667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189175, 31.427078, 34.396404>,  <33.620579, 31.310776, 33.905087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189175, 31.427078, 34.396404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840073, 31.435530, 34.591484>,  <33.630611, 31.440599, 34.708534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840073, 31.435530, 34.591484>,  <34.189175, 31.427078, 34.396404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840073, 31.435530, 34.591484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370680, -0.621401, 0.690259,
		0.317642, 0.783208, 0.534499,
		-0.872754, 0.021127, 0.487703,
		33.578247, 31.441868, 34.737793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341682, 31.504503, 35.039074>,  <34.189175, 31.427078, 34.396404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341682, 31.504503, 35.039074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978149, 31.337730, 35.044533>,  <33.760029, 31.237667, 35.047806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978149, 31.337730, 35.044533>,  <34.341682, 31.504503, 35.039074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978149, 31.337730, 35.044533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296914, -0.623551, 0.723205,
		-0.293021, 0.661325, 0.690498,
		-0.908835, -0.416933, 0.013643,
		33.705498, 31.212650, 35.048626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154961, 31.502455, 35.766228>,  <34.341682, 31.504503, 35.039074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154961, 31.502455, 35.766228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917011, 31.242489, 35.577023>,  <33.774242, 31.086510, 35.463501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917011, 31.242489, 35.577023>,  <34.154961, 31.502455, 35.766228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917011, 31.242489, 35.577023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201529, -0.690245, 0.694945,
		-0.778147, 0.318078, 0.541584,
		-0.594872, -0.649914, -0.473010,
		33.738548, 31.047514, 35.435120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691036, 31.193232, 36.362759>,  <34.154961, 31.502455, 35.766228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691036, 31.193232, 36.362759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673908, 30.930719, 36.061440>,  <33.663631, 30.773212, 35.880646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673908, 30.930719, 36.061440>,  <33.691036, 31.193232, 36.362759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673908, 30.930719, 36.061440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060575, -0.754311, 0.653717,
		-0.997245, -0.017637, 0.072055,
		-0.042823, -0.656281, -0.753301,
		33.661060, 30.733835, 35.835449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293728, 30.781090, 36.654484>,  <33.691036, 31.193232, 36.362759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293728, 30.781090, 36.654484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462082, 30.582706, 36.350674>,  <33.563095, 30.463676, 36.168388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462082, 30.582706, 36.350674>,  <33.293728, 30.781090, 36.654484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462082, 30.582706, 36.350674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201735, -0.765157, 0.611423,
		-0.884396, -0.410563, -0.221993,
		0.420888, -0.495957, -0.759527,
		33.588348, 30.433920, 36.122814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823780, 30.240824, 36.416328>,  <33.293728, 30.781090, 36.654484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823780, 30.240824, 36.416328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178814, 30.100019, 36.297474>,  <33.391834, 30.015537, 36.226162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178814, 30.100019, 36.297474>,  <32.823780, 30.240824, 36.416328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178814, 30.100019, 36.297474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069206, -0.739612, 0.669466,
		-0.455424, -0.573641, -0.680827,
		0.887581, -0.352008, -0.297137,
		33.445087, 29.994417, 36.208332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656258, 29.674751, 36.044125>,  <32.823780, 30.240824, 36.416328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656258, 29.674751, 36.044125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028835, 29.654558, 36.188274>,  <33.252380, 29.642443, 36.274765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028835, 29.654558, 36.188274>,  <32.656258, 29.674751, 36.044125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028835, 29.654558, 36.188274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249290, -0.809956, 0.530873,
		0.265086, -0.584314, -0.767011,
		0.931442, -0.050482, 0.360371,
		33.308270, 29.639414, 36.296387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710541, 29.051517, 36.224354>,  <32.656258, 29.674751, 36.044125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710541, 29.051517, 36.224354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044216, 29.182783, 36.401642>,  <33.244423, 29.261541, 36.508015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044216, 29.182783, 36.401642>,  <32.710541, 29.051517, 36.224354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044216, 29.182783, 36.401642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042563, -0.762976, 0.645024,
		0.549836, -0.556936, -0.622497,
		0.834188, 0.328162, 0.443217,
		33.294472, 29.281231, 36.534607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115971, 28.396055, 36.294605>,  <32.710541, 29.051517, 36.224354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115971, 28.396055, 36.294605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283352, 28.642015, 36.561974>,  <33.383781, 28.789591, 36.722397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283352, 28.642015, 36.561974>,  <33.115971, 28.396055, 36.294605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283352, 28.642015, 36.561974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117251, -0.766374, 0.631604,
		0.900637, -0.185926, -0.392791,
		0.418456, 0.614901, 0.668425,
		33.408890, 28.826487, 36.762501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759529, 28.002291, 36.564732>,  <33.115971, 28.396055, 36.294605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759529, 28.002291, 36.564732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661465, 28.296837, 36.816975>,  <33.602627, 28.473564, 36.968319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661465, 28.296837, 36.816975>,  <33.759529, 28.002291, 36.564732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661465, 28.296837, 36.816975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169235, -0.607962, 0.775720,
		0.954597, 0.296895, 0.024429,
		-0.245160, 0.736367, 0.630604,
		33.587917, 28.517746, 37.006157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307083, 27.997524, 36.985077>,  <33.759529, 28.002291, 36.564732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307083, 27.997524, 36.985077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981647, 28.146038, 37.164059>,  <33.786385, 28.235146, 37.271446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981647, 28.146038, 37.164059>,  <34.307083, 27.997524, 36.985077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981647, 28.146038, 37.164059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132346, -0.631115, 0.764316,
		0.566173, 0.681061, 0.464333,
		-0.813593, 0.371282, 0.447455,
		33.737568, 28.257423, 37.298294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528423, 28.131914, 37.599796>,  <34.307083, 27.997524, 36.985077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528423, 28.131914, 37.599796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131706, 28.117500, 37.648872>,  <33.893677, 28.108852, 37.678318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131706, 28.117500, 37.648872>,  <34.528423, 28.131914, 37.599796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131706, 28.117500, 37.648872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122787, -0.536182, 0.835124,
		0.035692, 0.843333, 0.536205,
		-0.991791, -0.036032, 0.122688,
		33.834167, 28.106691, 37.685680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501129, 28.387943, 38.342796>,  <34.528423, 28.131914, 37.599796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501129, 28.387943, 38.342796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161018, 28.202730, 38.242695>,  <33.956951, 28.091602, 38.182636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161018, 28.202730, 38.242695>,  <34.501129, 28.387943, 38.342796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161018, 28.202730, 38.242695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046206, -0.539294, 0.840849,
		-0.524300, 0.703393, 0.479945,
		-0.850279, -0.463034, -0.250251,
		33.905933, 28.063820, 38.167618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173367, 28.319714, 39.031361>,  <34.501129, 28.387943, 38.342796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173367, 28.319714, 39.031361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953445, 28.067434, 38.812294>,  <33.821491, 27.916067, 38.680855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953445, 28.067434, 38.812294>,  <34.173367, 28.319714, 39.031361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953445, 28.067434, 38.812294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166507, -0.559740, 0.811767,
		-0.818530, 0.537502, 0.202731,
		-0.549803, -0.630700, -0.547662,
		33.788506, 27.878223, 38.647995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551079, 28.187490, 39.391003>,  <34.173367, 28.319714, 39.031361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551079, 28.187490, 39.391003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614315, 27.881018, 39.141850>,  <33.652256, 27.697134, 38.992359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614315, 27.881018, 39.141850>,  <33.551079, 28.187490, 39.391003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614315, 27.881018, 39.141850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059472, -0.637053, 0.768522,
		-0.985633, -0.084449, -0.146276,
		0.158086, -0.766180, -0.622878,
		33.661739, 27.651163, 38.954987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993576, 27.778141, 39.548710>,  <33.551079, 28.187490, 39.391003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993576, 27.778141, 39.548710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277782, 27.547817, 39.386913>,  <33.448307, 27.409622, 39.289833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277782, 27.547817, 39.386913>,  <32.993576, 27.778141, 39.548710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277782, 27.547817, 39.386913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139406, -0.678609, 0.721149,
		-0.689741, -0.455994, -0.562430,
		0.710510, -0.575812, -0.404496,
		33.490936, 27.375074, 39.265564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738029, 27.001133, 39.487877>,  <32.993576, 27.778141, 39.548710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738029, 27.001133, 39.487877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136986, 27.004812, 39.459229>,  <33.376358, 27.007021, 39.442039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136986, 27.004812, 39.459229>,  <32.738029, 27.001133, 39.487877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136986, 27.004812, 39.459229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050906, -0.793009, 0.607079,
		-0.051208, -0.609141, -0.791407,
		0.997390, 0.009200, -0.071617,
		33.436203, 27.007572, 39.437744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982769, 26.217884, 39.566486>,  <32.738029, 27.001133, 39.487877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982769, 26.217884, 39.566486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315857, 26.428595, 39.634708>,  <33.515709, 26.555021, 39.675640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315857, 26.428595, 39.634708>,  <32.982769, 26.217884, 39.566486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315857, 26.428595, 39.634708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306151, -0.694702, 0.650893,
		0.461359, -0.489794, -0.739763,
		0.832718, 0.526774, 0.170556,
		33.565674, 26.586626, 39.685875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258610, 25.802029, 39.961544>,  <32.982769, 26.217884, 39.566486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258610, 25.802029, 39.961544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485931, 26.121262, 40.041641>,  <33.622326, 26.312801, 40.089699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485931, 26.121262, 40.041641>,  <33.258610, 25.802029, 39.961544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485931, 26.121262, 40.041641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435886, -0.498414, 0.749391,
		0.697878, -0.338600, -0.631123,
		0.568304, 0.798081, 0.200241,
		33.656422, 26.360685, 40.101715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000832, 25.542469, 40.276688>,  <33.258610, 25.802029, 39.961544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000832, 25.542469, 40.276688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950775, 25.924646, 40.383625>,  <33.920742, 26.153952, 40.447788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950775, 25.924646, 40.383625>,  <34.000832, 25.542469, 40.276688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950775, 25.924646, 40.383625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393254, -0.199618, 0.897499,
		0.910873, 0.217450, -0.350750,
		-0.125145, 0.955441, 0.267340,
		33.913231, 26.211279, 40.463825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515583, 25.610685, 40.738712>,  <34.000832, 25.542469, 40.276688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515583, 25.610685, 40.738712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288185, 25.931990, 40.809807>,  <34.151745, 26.124771, 40.852463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288185, 25.931990, 40.809807>,  <34.515583, 25.610685, 40.738712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288185, 25.931990, 40.809807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265870, -0.025064, 0.963683,
		0.778542, 0.595102, -0.199313,
		-0.568495, 0.803259, 0.177733,
		34.117638, 26.172968, 40.863129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938194, 26.140715, 41.021801>,  <34.515583, 25.610685, 40.738712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938194, 26.140715, 41.021801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556927, 26.182116, 41.135471>,  <34.328167, 26.206955, 41.203674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556927, 26.182116, 41.135471>,  <34.938194, 26.140715, 41.021801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556927, 26.182116, 41.135471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285621, -0.000920, 0.958342,
		0.099450, 0.994629, -0.028685,
		-0.953168, 0.103500, 0.284179,
		34.270977, 26.213165, 41.220726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288750, 26.691948, 41.356720>,  <34.938194, 26.140715, 41.021801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288750, 26.691948, 41.356720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672104, 26.804333, 41.376980>,  <35.902115, 26.871763, 41.389137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672104, 26.804333, 41.376980>,  <35.288750, 26.691948, 41.356720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672104, 26.804333, 41.376980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100152, 0.497017, -0.861942,
		-0.267347, 0.820996, 0.504470,
		0.958381, 0.280961, 0.050652,
		35.959618, 26.888620, 41.392174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309071, 27.426346, 41.231274>,  <35.288750, 26.691948, 41.356720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309071, 27.426346, 41.231274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686775, 27.309078, 41.171371>,  <35.913399, 27.238718, 41.135429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686775, 27.309078, 41.171371>,  <35.309071, 27.426346, 41.231274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686775, 27.309078, 41.171371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093082, 0.674103, -0.732749,
		0.315768, 0.677966, 0.663817,
		0.944260, -0.293168, -0.149753,
		35.970055, 27.221128, 41.126446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665745, 28.014555, 41.231853>,  <35.309071, 27.426346, 41.231274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665745, 28.014555, 41.231853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888924, 27.752918, 41.027554>,  <36.022831, 27.595936, 40.904972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888924, 27.752918, 41.027554>,  <35.665745, 28.014555, 41.231853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888924, 27.752918, 41.027554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178200, 0.695524, -0.696055,
		0.810521, 0.297344, 0.504621,
		0.557943, -0.654090, -0.510750,
		36.056305, 27.556690, 40.874329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320972, 28.324886, 41.158619>,  <35.665745, 28.014555, 41.231853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320972, 28.324886, 41.158619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302036, 28.043890, 40.874573>,  <36.290676, 27.875292, 40.704144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302036, 28.043890, 40.874573>,  <36.320972, 28.324886, 41.158619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302036, 28.043890, 40.874573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356113, 0.652331, -0.669065,
		0.933243, -0.284553, 0.219287,
		-0.047337, -0.702491, -0.710117,
		36.287834, 27.833143, 40.661537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997898, 28.298813, 40.725182>,  <36.320972, 28.324886, 41.158619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997898, 28.298813, 40.725182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706188, 28.146132, 40.498039>,  <36.531162, 28.054523, 40.361755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706188, 28.146132, 40.498039>,  <36.997898, 28.298813, 40.725182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706188, 28.146132, 40.498039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284069, 0.586117, -0.758796,
		0.622471, -0.714678, -0.319006,
		-0.729270, -0.381709, -0.567860,
		36.487408, 28.031620, 40.327682>
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
