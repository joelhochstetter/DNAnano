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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<35.913967, 53.415520, 50.219635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072300, 53.190811, 49.929054>,  <36.167297, 53.055984, 49.754707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072300, 53.190811, 49.929054>,  <35.913967, 53.415520, 50.219635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072300, 53.190811, 49.929054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910757, 0.341488, 0.232178,
		0.117642, -0.753523, 0.646810,
		0.395830, -0.561773, -0.726450,
		36.191048, 53.022278, 49.711121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523781, 53.110004, 50.475193>,  <35.913967, 53.415520, 50.219635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523781, 53.110004, 50.475193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584194, 53.107697, 50.079788>,  <36.620441, 53.106312, 49.842545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584194, 53.107697, 50.079788>,  <36.523781, 53.110004, 50.475193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584194, 53.107697, 50.079788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910033, 0.391327, 0.136761,
		0.386041, -0.920234, 0.064362,
		0.151039, -0.005776, -0.988511,
		36.629505, 53.105965, 49.783234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181812, 52.936848, 50.349930>,  <36.523781, 53.110004, 50.475193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181812, 52.936848, 50.349930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075409, 53.153778, 50.031151>,  <37.011566, 53.283936, 49.839886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075409, 53.153778, 50.031151>,  <37.181812, 52.936848, 50.349930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075409, 53.153778, 50.031151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790712, 0.595634, 0.141405,
		0.551375, -0.592540, -0.587267,
		-0.266008, 0.542326, -0.796946,
		36.995605, 53.316475, 49.792068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596992, 53.324947, 49.833504>,  <37.181812, 52.936848, 50.349930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596992, 53.324947, 49.833504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778114, 52.972336, 49.780022>,  <37.886787, 52.760769, 49.747932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778114, 52.972336, 49.780022>,  <37.596992, 53.324947, 49.833504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778114, 52.972336, 49.780022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127984, -0.084143, 0.988200,
		-0.882378, -0.464571, 0.074721,
		0.452802, -0.881529, -0.133704,
		37.913956, 52.707878, 49.739910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435814, 53.632965, 49.196938>,  <37.596992, 53.324947, 49.833504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435814, 53.632965, 49.196938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367348, 53.964508, 49.409988>,  <37.326267, 54.163433, 49.537819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367348, 53.964508, 49.409988>,  <37.435814, 53.632965, 49.196938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367348, 53.964508, 49.409988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598259, 0.342088, -0.724611,
		-0.782807, -0.442680, 0.437319,
		-0.171170, 0.828860, 0.532626,
		37.315998, 54.213165, 49.569775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077045, 53.893044, 49.227158>,  <37.435814, 53.632965, 49.196938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077045, 53.893044, 49.227158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226147, 53.632076, 49.491096>,  <38.315609, 53.475494, 49.649460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226147, 53.632076, 49.491096>,  <38.077045, 53.893044, 49.227158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226147, 53.632076, 49.491096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381391, 0.755978, 0.532014,
		-0.845930, 0.053352, 0.530619,
		0.372753, -0.652419, 0.659852,
		38.337971, 53.436352, 49.689053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016262, 54.349907, 49.877369>,  <38.077045, 53.893044, 49.227158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016262, 54.349907, 49.877369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291813, 54.060081, 49.868877>,  <38.457146, 53.886185, 49.863785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291813, 54.060081, 49.868877>,  <38.016262, 54.349907, 49.877369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291813, 54.060081, 49.868877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639888, 0.594098, 0.487433,
		-0.340566, -0.349366, 0.872902,
		0.688882, -0.724563, -0.021226,
		38.498478, 53.842712, 49.862511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343086, 54.295406, 50.598106>,  <38.016262, 54.349907, 49.877369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343086, 54.295406, 50.598106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572357, 54.155876, 50.301514>,  <38.709919, 54.072159, 50.123558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572357, 54.155876, 50.301514>,  <38.343086, 54.295406, 50.598106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572357, 54.155876, 50.301514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794584, 0.457737, 0.398889,
		0.200262, -0.817802, 0.539531,
		0.573176, -0.348821, -0.741480,
		38.744308, 54.051231, 50.079071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907726, 53.945515, 50.755814>,  <38.343086, 54.295406, 50.598106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907726, 53.945515, 50.755814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630119, 54.080879, 51.010002>,  <38.463554, 54.162098, 51.162514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630119, 54.080879, 51.010002>,  <38.907726, 53.945515, 50.755814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630119, 54.080879, 51.010002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656756, -0.064063, 0.751377,
		0.294982, 0.938816, -0.177791,
		-0.694015, 0.338408, 0.635471,
		38.421913, 54.182404, 51.200642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143536, 54.633766, 51.064766>,  <38.907726, 53.945515, 50.755814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143536, 54.633766, 51.064766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888672, 54.408295, 51.275021>,  <38.735752, 54.273014, 51.401173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888672, 54.408295, 51.275021>,  <39.143536, 54.633766, 51.064766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888672, 54.408295, 51.275021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692065, -0.118253, 0.712084,
		-0.339224, 0.817488, 0.465445,
		-0.637161, -0.563674, 0.525640,
		38.697525, 54.239193, 51.432713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630569, 54.272480, 51.424671>,  <39.143536, 54.633766, 51.064766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630569, 54.272480, 51.424671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786552, 54.215504, 51.060772>,  <39.880142, 54.181316, 50.842434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786552, 54.215504, 51.060772>,  <39.630569, 54.272480, 51.424671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786552, 54.215504, 51.060772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733071, 0.645907, 0.213098,
		0.557258, -0.750010, 0.356300,
		0.389962, -0.142442, -0.909747,
		39.903542, 54.172771, 50.787849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291729, 54.463261, 51.510796>,  <39.630569, 54.272480, 51.424671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291729, 54.463261, 51.510796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222195, 54.493622, 51.118057>,  <40.180473, 54.511841, 50.882416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222195, 54.493622, 51.118057>,  <40.291729, 54.463261, 51.510796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222195, 54.493622, 51.118057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636942, 0.769066, -0.053317,
		0.751056, -0.634646, -0.182043,
		-0.173840, 0.075907, -0.981844,
		40.170044, 54.516396, 50.823505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854424, 54.962494, 51.268208>,  <40.291729, 54.463261, 51.510796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854424, 54.962494, 51.268208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642956, 54.936661, 50.929661>,  <40.516075, 54.921162, 50.726532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642956, 54.936661, 50.929661>,  <40.854424, 54.962494, 51.268208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642956, 54.936661, 50.929661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390414, 0.866874, -0.310009,
		0.753716, -0.494326, -0.433076,
		-0.528668, -0.064579, -0.846369,
		40.484356, 54.917286, 50.675751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442883, 54.863937, 51.912037>,  <40.854424, 54.962494, 51.268208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442883, 54.863937, 51.912037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837345, 54.925720, 51.936157>,  <42.074024, 54.962791, 51.950630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837345, 54.925720, 51.936157>,  <41.442883, 54.863937, 51.912037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837345, 54.925720, 51.936157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007798, 0.320079, -0.947359,
		-0.165631, 0.934715, 0.314443,
		0.986157, 0.154459, 0.060304,
		42.133194, 54.972057, 51.954247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962765, 55.361126, 51.707150>,  <41.442883, 54.863937, 51.912037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962765, 55.361126, 51.707150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114902, 55.003727, 51.802650>,  <42.206184, 54.789288, 51.859951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114902, 55.003727, 51.802650>,  <41.962765, 55.361126, 51.707150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114902, 55.003727, 51.802650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750318, 0.449040, 0.485165,
		-0.540704, -0.005386, 0.841195,
		0.380343, -0.893495, 0.238757,
		42.229004, 54.735680, 51.874279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546181, 55.454845, 52.009975>,  <41.962765, 55.361126, 51.707150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546181, 55.454845, 52.009975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511486, 55.094711, 52.180565>,  <42.490669, 54.878632, 52.282917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511486, 55.094711, 52.180565>,  <42.546181, 55.454845, 52.009975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511486, 55.094711, 52.180565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903678, 0.109084, 0.414086,
		-0.419336, 0.421311, 0.804148,
		-0.086739, -0.900332, 0.426472,
		42.485466, 54.824612, 52.308506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716442, 55.457352, 52.762222>,  <42.546181, 55.454845, 52.009975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716442, 55.457352, 52.762222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792431, 55.120461, 52.560402>,  <42.838024, 54.918327, 52.439308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792431, 55.120461, 52.560402>,  <42.716442, 55.457352, 52.762222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792431, 55.120461, 52.560402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924468, -0.019580, 0.380755,
		-0.330561, -0.538772, 0.774889,
		0.189968, -0.842224, -0.504551,
		42.849422, 54.867794, 52.409039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329342, 55.928143, 52.490318>,  <42.716442, 55.457352, 52.762222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329342, 55.928143, 52.490318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583080, 56.235996, 52.519344>,  <43.735321, 56.420708, 52.536758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583080, 56.235996, 52.519344>,  <43.329342, 55.928143, 52.490318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583080, 56.235996, 52.519344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028891, -0.070199, 0.997115,
		0.772511, -0.634610, -0.022294,
		0.634344, 0.769637, 0.072564,
		43.773384, 56.466888, 52.541115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526196, 55.500340, 51.886246>,  <43.329342, 55.928143, 52.490318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526196, 55.500340, 51.886246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709827, 55.531185, 51.532227>,  <43.820007, 55.549690, 51.319817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709827, 55.531185, 51.532227>,  <43.526196, 55.500340, 51.886246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709827, 55.531185, 51.532227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886952, -0.096580, 0.451652,
		-0.050650, -0.992334, -0.112731,
		0.459077, 0.077111, -0.885044,
		43.847549, 55.554317, 51.266712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902206, 54.942688, 51.672138>,  <43.526196, 55.500340, 51.886246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902206, 54.942688, 51.672138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080456, 55.270355, 51.527706>,  <44.187405, 55.466957, 51.441048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080456, 55.270355, 51.527706>,  <43.902206, 54.942688, 51.672138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080456, 55.270355, 51.527706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820021, -0.211698, 0.531742,
		0.359148, -0.533049, -0.766075,
		0.445621, 0.819172, -0.361081,
		44.214142, 55.516106, 51.419380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535831, 54.751160, 51.457241>,  <43.902206, 54.942688, 51.672138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535831, 54.751160, 51.457241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536613, 55.137215, 51.561935>,  <44.537083, 55.368847, 51.624752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536613, 55.137215, 51.561935>,  <44.535831, 54.751160, 51.457241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536613, 55.137215, 51.561935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859490, -0.135405, 0.492891,
		0.511148, 0.223998, -0.829790,
		0.001951, 0.965137, 0.261737,
		44.537197, 55.426754, 51.640457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124573, 55.057873, 51.294365>,  <44.535831, 54.751160, 51.457241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124573, 55.057873, 51.294365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003265, 55.268833, 51.611824>,  <44.930481, 55.395409, 51.802299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003265, 55.268833, 51.611824>,  <45.124573, 55.057873, 51.294365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003265, 55.268833, 51.611824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915649, -0.069320, 0.395956,
		0.263843, 0.846784, -0.461892,
		-0.303271, 0.527401, 0.793647,
		44.912285, 55.427055, 51.849918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638241, 55.502617, 51.455818>,  <45.124573, 55.057873, 51.294365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638241, 55.502617, 51.455818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400486, 55.513920, 51.777290>,  <45.257835, 55.520702, 51.970173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400486, 55.513920, 51.777290>,  <45.638241, 55.502617, 51.455818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400486, 55.513920, 51.777290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801195, 0.106851, 0.588787,
		-0.069236, 0.993873, -0.086152,
		-0.594385, 0.028260, 0.803684,
		45.222172, 55.522396, 52.018394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615288, 56.087040, 51.973427>,  <45.638241, 55.502617, 51.455818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615288, 56.087040, 51.973427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538273, 55.738346, 52.153652>,  <45.492065, 55.529129, 52.261787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538273, 55.738346, 52.153652>,  <45.615288, 56.087040, 51.973427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538273, 55.738346, 52.153652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947404, -0.045514, 0.316787,
		-0.255647, 0.487860, 0.834648,
		-0.192536, -0.871735, 0.450564,
		45.480511, 55.476826, 52.288822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126118, 56.039425, 52.400806>,  <45.615288, 56.087040, 51.973427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126118, 56.039425, 52.400806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955494, 55.698120, 52.280815>,  <45.853119, 55.493336, 52.208820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955494, 55.698120, 52.280815>,  <46.126118, 56.039425, 52.400806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955494, 55.698120, 52.280815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904104, -0.392940, -0.167915,
		0.025404, -0.342834, 0.939053,
		-0.426558, -0.853266, -0.299975,
		45.827526, 55.442139, 52.190823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641647, 56.573986, 52.152908>,  <46.126118, 56.039425, 52.400806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641647, 56.573986, 52.152908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615005, 56.175121, 52.166908>,  <46.599022, 55.935802, 52.175308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615005, 56.175121, 52.166908>,  <46.641647, 56.573986, 52.152908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.615005, 56.175121, 52.166908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818384, -0.074661, -0.569801,
		0.570799, -0.009306, 0.821037,
		-0.066602, -0.997166, 0.035001,
		46.595024, 55.875973, 52.177410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.260841, 56.182091, 52.430695>,  <46.641647, 56.573986, 52.152908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.260841, 56.182091, 52.430695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049767, 55.991470, 52.149426>,  <46.923122, 55.877098, 51.980663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049767, 55.991470, 52.149426>,  <47.260841, 56.182091, 52.430695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.049767, 55.991470, 52.149426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809590, -0.031574, -0.586146,
		0.257128, -0.878578, 0.402474,
		-0.527683, -0.476554, -0.703170,
		46.891460, 55.848503, 51.938473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.719059, 56.543671, 51.944927>,  <47.260841, 56.182091, 52.430695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.719059, 56.543671, 51.944927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.779068, 56.178631, 51.792793>,  <47.815075, 55.959606, 51.701511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.779068, 56.178631, 51.792793>,  <47.719059, 56.543671, 51.944927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.779068, 56.178631, 51.792793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986890, 0.115079, 0.113156,
		-0.059497, -0.392329, 0.917899,
		0.150026, -0.912598, -0.380339,
		47.824074, 55.904850, 51.678692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.102062, 56.058475, 52.294834>,  <47.719059, 56.543671, 51.944927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.102062, 56.058475, 52.294834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.148991, 55.974403, 51.906593>,  <48.177147, 55.923962, 51.673649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.148991, 55.974403, 51.906593>,  <48.102062, 56.058475, 52.294834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.148991, 55.974403, 51.906593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981893, 0.170930, 0.081670,
		0.148740, -0.962605, 0.226425,
		0.117319, -0.210178, -0.970599,
		48.184185, 55.911350, 51.615414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.640614, 55.653687, 52.239437>,  <48.102062, 56.058475, 52.294834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.640614, 55.653687, 52.239437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.607868, 55.840603, 51.887314>,  <48.588223, 55.952751, 51.676041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.607868, 55.840603, 51.887314>,  <48.640614, 55.653687, 52.239437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.607868, 55.840603, 51.887314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995320, -0.007168, -0.096362,
		-0.051339, -0.884077, -0.464513,
		-0.081862, 0.467287, -0.880308,
		48.583309, 55.980789, 51.623222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.101147, 55.422672, 51.716049>,  <48.640614, 55.653687, 52.239437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.101147, 55.422672, 51.716049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.026981, 55.804409, 51.622360>,  <48.982483, 56.033451, 51.566147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.026981, 55.804409, 51.622360>,  <49.101147, 55.422672, 51.716049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.026981, 55.804409, 51.622360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975370, 0.149751, -0.161948,
		-0.119479, -0.258478, -0.958600,
		-0.185411, 0.954339, -0.234220,
		48.971359, 56.090710, 51.552094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.296009, 55.473038, 51.013371>,  <49.101147, 55.422672, 51.716049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.296009, 55.473038, 51.013371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.308441, 55.817181, 51.216866>,  <49.315899, 56.023666, 51.338963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.308441, 55.817181, 51.216866>,  <49.296009, 55.473038, 51.013371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.308441, 55.817181, 51.216866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962352, 0.111750, -0.247770,
		-0.270023, 0.497288, -0.824495,
		0.031076, 0.860358, 0.508741,
		49.317764, 56.075287, 51.369488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.695545, 56.007893, 50.636250>,  <49.296009, 55.473038, 51.013371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.695545, 56.007893, 50.636250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.709496, 56.118553, 51.020386>,  <49.717865, 56.184948, 51.250866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.709496, 56.118553, 51.020386>,  <49.695545, 56.007893, 50.636250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.709496, 56.118553, 51.020386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910044, 0.388352, -0.144925,
		-0.413043, 0.879004, -0.238218,
		0.034877, 0.276649, 0.960338,
		49.719959, 56.201550, 51.308487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.977097, 56.710339, 50.586384>,  <49.695545, 56.007893, 50.636250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.977097, 56.710339, 50.586384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.055779, 56.567570, 50.951660>,  <50.102985, 56.481907, 51.170826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.055779, 56.567570, 50.951660>,  <49.977097, 56.710339, 50.586384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.055779, 56.567570, 50.951660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856340, 0.516123, 0.017272,
		-0.477483, 0.778603, 0.407170,
		0.196702, -0.356923, 0.913189,
		50.114788, 56.460491, 51.225616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.236240, 57.299625, 50.919445>,  <49.977097, 56.710339, 50.586384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.236240, 57.299625, 50.919445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.343281, 56.967468, 51.114929>,  <50.407505, 56.768173, 51.232220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.343281, 56.967468, 51.114929>,  <50.236240, 57.299625, 50.919445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.343281, 56.967468, 51.114929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877870, 0.419190, 0.231569,
		-0.397155, 0.367055, 0.841153,
		0.267604, -0.830392, 0.488710,
		50.423561, 56.718349, 51.261543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.438709, 57.469437, 51.692837>,  <50.236240, 57.299625, 50.919445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.438709, 57.469437, 51.692837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.609726, 57.130219, 51.567604>,  <50.712334, 56.926685, 51.492462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.609726, 57.130219, 51.567604>,  <50.438709, 57.469437, 51.692837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.609726, 57.130219, 51.567604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892803, 0.341780, 0.293408,
		-0.141819, -0.404966, 0.903266,
		0.427539, -0.848050, -0.313084,
		50.737988, 56.875805, 51.473679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.845909, 57.175560, 52.304924>,  <50.438709, 57.469437, 51.692837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.845909, 57.175560, 52.304924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.965405, 57.110462, 51.928780>,  <51.037102, 57.071404, 51.703094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.965405, 57.110462, 51.928780>,  <50.845909, 57.175560, 52.304924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.965405, 57.110462, 51.928780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860757, 0.471479, 0.191848,
		0.412136, -0.866730, 0.280934,
		0.298735, -0.162748, -0.940357,
		51.055023, 57.061638, 51.646671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.506268, 56.925369, 52.379238>,  <50.845909, 57.175560, 52.304924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.506268, 56.925369, 52.379238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.419456, 57.114552, 52.037663>,  <51.367371, 57.228062, 51.832718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.419456, 57.114552, 52.037663>,  <51.506268, 56.925369, 52.379238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.419456, 57.114552, 52.037663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621201, 0.741714, 0.252923,
		0.753001, -0.475579, -0.454768,
		-0.217023, 0.472954, -0.853941,
		51.354351, 57.256439, 51.781479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.063232, 57.185272, 51.910099>,  <51.506268, 56.925369, 52.379238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.063232, 57.185272, 51.910099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.770466, 57.424568, 51.779617>,  <51.594807, 57.568146, 51.701328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.770466, 57.424568, 51.779617>,  <52.063232, 57.185272, 51.910099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.770466, 57.424568, 51.779617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617753, 0.784596, 0.052828,
		0.287539, -0.162845, -0.943824,
		-0.731917, 0.598240, -0.326200,
		51.550892, 57.604038, 51.681759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.728294, 57.361946, 52.182629>,  <52.063232, 57.185272, 51.910099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.728294, 57.361946, 52.182629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.743107, 56.966545, 52.241268>,  <52.751995, 56.729305, 52.276451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.743107, 56.966545, 52.241268>,  <52.728294, 57.361946, 52.182629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.743107, 56.966545, 52.241268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995844, 0.048715, 0.076954,
		-0.083211, 0.143141, 0.986198,
		0.037027, -0.988503, 0.146600,
		52.754215, 56.669994, 52.285248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.036217, 57.210522, 52.809216>,  <52.728294, 57.361946, 52.182629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.036217, 57.210522, 52.809216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.123348, 56.892460, 52.582840>,  <53.175629, 56.701622, 52.447014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.123348, 56.892460, 52.582840>,  <53.036217, 57.210522, 52.809216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.123348, 56.892460, 52.582840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970266, 0.113739, 0.213654,
		-0.105518, -0.595650, 0.796283,
		0.217831, -0.795151, -0.565937,
		53.188698, 56.653915, 52.413059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.416153, 56.804325, 53.108761>,  <53.036217, 57.210522, 52.809216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.416153, 56.804325, 53.108761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.616276, 56.720520, 52.772713>,  <53.736351, 56.670238, 52.571083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.616276, 56.720520, 52.772713>,  <53.416153, 56.804325, 53.108761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.616276, 56.720520, 52.772713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837172, -0.130587, 0.531122,
		-0.220984, -0.969047, 0.110063,
		0.500309, -0.209511, -0.840117,
		53.766369, 56.657665, 52.520679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.656384, 56.179165, 53.165474>,  <53.416153, 56.804325, 53.108761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.656384, 56.179165, 53.165474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.885571, 56.391651, 52.915829>,  <54.023083, 56.519142, 52.766041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.885571, 56.391651, 52.915829>,  <53.656384, 56.179165, 53.165474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.885571, 56.391651, 52.915829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806517, -0.230056, 0.544614,
		0.145727, -0.815404, -0.560249,
		0.572970, 0.531215, -0.624112,
		54.057461, 56.551014, 52.728596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.220085, 55.822361, 53.067539>,  <53.656384, 56.179165, 53.165474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.220085, 55.822361, 53.067539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.358253, 56.190247, 52.992908>,  <54.441154, 56.410976, 52.948132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.358253, 56.190247, 52.992908>,  <54.220085, 55.822361, 53.067539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.358253, 56.190247, 52.992908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806488, -0.189268, 0.560138,
		0.479855, -0.343952, -0.807116,
		0.345422, 0.919714, -0.186572,
		54.461880, 56.466160, 52.936935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.904007, 55.821373, 52.817528>,  <54.220085, 55.822361, 53.067539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.904007, 55.821373, 52.817528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.887344, 56.198631, 52.949432>,  <54.877346, 56.424984, 53.028576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.887344, 56.198631, 52.949432>,  <54.904007, 55.821373, 52.817528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.887344, 56.198631, 52.949432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874711, -0.125076, 0.468227,
		0.482851, 0.307955, -0.819768,
		-0.041659, 0.943144, 0.329765,
		54.874847, 56.481575, 53.048363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.487671, 56.233070, 52.629845>,  <54.904007, 55.821373, 52.817528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.487671, 56.233070, 52.629845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.364136, 56.351227, 52.991478>,  <55.290016, 56.422119, 53.208458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.364136, 56.351227, 52.991478>,  <55.487671, 56.233070, 52.629845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.364136, 56.351227, 52.991478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938246, -0.061226, 0.340509,
		0.155936, 0.953413, -0.258239,
		-0.308835, 0.295389, 0.904083,
		55.271484, 56.439842, 53.262703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.995888, 56.739166, 52.828274>,  <55.487671, 56.233070, 52.629845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.995888, 56.739166, 52.828274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.827858, 56.526314, 53.122314>,  <55.727039, 56.398602, 53.298740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.827858, 56.526314, 53.122314>,  <55.995888, 56.739166, 52.828274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.827858, 56.526314, 53.122314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900815, -0.146439, 0.408764,
		-0.109868, 0.833902, 0.540866,
		-0.420073, -0.532131, 0.735102,
		55.701836, 56.366676, 53.342846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.359127, 56.934196, 53.348190>,  <55.995888, 56.739166, 52.828274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.359127, 56.934196, 53.348190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.227341, 56.576176, 53.468407>,  <56.148270, 56.361362, 53.540539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.227341, 56.576176, 53.468407>,  <56.359127, 56.934196, 53.348190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.227341, 56.576176, 53.468407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927909, -0.248135, 0.278235,
		-0.174460, 0.370547, 0.912282,
		-0.329468, -0.895055, 0.300544,
		56.128502, 56.307659, 53.558571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.398006, 57.118107, 54.083736>,  <56.359127, 56.934196, 53.348190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.398006, 57.118107, 54.083736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.572006, 57.234810, 54.424477>,  <56.676407, 57.304832, 54.628922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.572006, 57.234810, 54.424477>,  <56.398006, 57.118107, 54.083736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.572006, 57.234810, 54.424477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691668, 0.497452, -0.523581,
		-0.576515, 0.816957, 0.014591,
		0.435002, 0.291760, 0.851851,
		56.702507, 57.322338, 54.680031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.540085, 57.801048, 54.113441>,  <56.398006, 57.118107, 54.083736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.540085, 57.801048, 54.113441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.815742, 57.648190, 54.359711>,  <56.981136, 57.556477, 54.507473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.815742, 57.648190, 54.359711>,  <56.540085, 57.801048, 54.113441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.815742, 57.648190, 54.359711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723486, 0.410504, -0.555027,
		-0.040635, 0.827921, 0.559371,
		0.689142, -0.382144, 0.615670,
		57.022484, 57.533546, 54.544411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.046909, 58.346493, 54.183994>,  <56.540085, 57.801048, 54.113441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.046909, 58.346493, 54.183994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.214508, 57.997017, 54.282883>,  <57.315067, 57.787331, 54.342216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.214508, 57.997017, 54.282883>,  <57.046909, 58.346493, 54.183994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.214508, 57.997017, 54.282883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829926, 0.258059, -0.494599,
		0.368328, 0.412407, 0.833220,
		0.418996, -0.873685, 0.247217,
		57.340206, 57.734913, 54.357048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.712807, 58.571739, 54.558807>,  <57.046909, 58.346493, 54.183994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.712807, 58.571739, 54.558807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.064438, 58.719170, 54.679718>,  <58.275417, 58.807629, 54.752262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.064438, 58.719170, 54.679718>,  <57.712807, 58.571739, 54.558807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.064438, 58.719170, 54.679718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227047, -0.881340, 0.414353,
		0.419125, -0.295620, -0.858454,
		0.879081, 0.368575, 0.302272,
		58.328163, 58.829742, 54.770401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.369919, 58.178783, 54.351185>,  <57.712807, 58.571739, 54.558807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.369919, 58.178783, 54.351185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.359207, 58.370140, 54.702278>,  <58.352779, 58.484955, 54.912933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.359207, 58.370140, 54.702278>,  <58.369919, 58.178783, 54.351185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.359207, 58.370140, 54.702278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271158, -0.841655, 0.467002,
		0.962162, 0.250512, -0.107180,
		-0.026781, 0.478394, 0.877737,
		58.351173, 58.513657, 54.965599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.979450, 58.006119, 54.640648>,  <58.369919, 58.178783, 54.351185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.979450, 58.006119, 54.640648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.668030, 58.055870, 54.886700>,  <58.481178, 58.085720, 55.034328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.668030, 58.055870, 54.886700>,  <58.979450, 58.006119, 54.640648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.668030, 58.055870, 54.886700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248553, -0.838905, 0.484212,
		0.576258, 0.529877, 0.622220,
		-0.778555, 0.124376, 0.615128,
		58.434464, 58.093182, 55.071239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.176975, 57.869614, 55.334637>,  <58.979450, 58.006119, 54.640648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.176975, 57.869614, 55.334637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.783302, 57.800522, 55.350395>,  <58.547100, 57.759068, 55.359848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.783302, 57.800522, 55.350395>,  <59.176975, 57.869614, 55.334637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.783302, 57.800522, 55.350395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177123, -0.964126, 0.197708,
		0.003829, 0.201558, 0.979469,
		-0.984181, -0.172730, 0.039392,
		58.488049, 57.748703, 55.362213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.075661, 57.435394, 55.864677>,  <59.176975, 57.869614, 55.334637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.075661, 57.435394, 55.864677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.782951, 57.360451, 55.602562>,  <58.607327, 57.315483, 55.445293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.782951, 57.360451, 55.602562>,  <59.075661, 57.435394, 55.864677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.782951, 57.360451, 55.602562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086886, -0.979272, 0.182965,
		-0.675983, 0.076955, 0.732888,
		-0.731777, -0.187358, -0.655285,
		58.563419, 57.304245, 55.405975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.564262, 56.894016, 56.167213>,  <59.075661, 57.435394, 55.864677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.564262, 56.894016, 56.167213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.512436, 56.889172, 55.770615>,  <58.481342, 56.886265, 55.532654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.512436, 56.889172, 55.770615>,  <58.564262, 56.894016, 56.167213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.512436, 56.889172, 55.770615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087557, -0.996159, 0.000723,
		-0.987698, -0.086719, 0.130126,
		-0.129564, -0.012108, -0.991497,
		58.473568, 56.885540, 55.473164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.904640, 56.189152, 56.158398>,  <58.564262, 56.894016, 56.167213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.904640, 56.189152, 56.158398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.945335, 56.144798, 56.553841>,  <58.969753, 56.118187, 56.791107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.945335, 56.144798, 56.553841>,  <58.904640, 56.189152, 56.158398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.945335, 56.144798, 56.553841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218655, -0.966975, -0.130958,
		0.970484, 0.229489, -0.074138,
		0.101743, -0.110883, 0.988612,
		58.975857, 56.111534, 56.850426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.464317, 55.956711, 56.721451>,  <58.904640, 56.189152, 56.158398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.464317, 55.956711, 56.721451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.726967, 56.143055, 56.958710>,  <59.884556, 56.254860, 57.101063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.726967, 56.143055, 56.958710>,  <59.464317, 55.956711, 56.721451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.726967, 56.143055, 56.958710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428706, -0.877572, 0.214657,
		0.620527, 0.113336, -0.775952,
		0.656625, 0.465856, 0.593145,
		59.923954, 56.282810, 57.136654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.148674, 55.753033, 56.412830>,  <59.464317, 55.956711, 56.721451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.148674, 55.753033, 56.412830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.137970, 55.847561, 56.801353>,  <60.131546, 55.904278, 57.034466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.137970, 55.847561, 56.801353>,  <60.148674, 55.753033, 56.412830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.137970, 55.847561, 56.801353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556915, -0.803371, 0.210809,
		0.830138, 0.546577, -0.110112,
		-0.026763, 0.236324, 0.971306,
		60.129940, 55.918457, 57.092747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.857487, 55.708630, 56.732269>,  <60.148674, 55.753033, 56.412830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.857487, 55.708630, 56.732269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.567123, 55.617767, 56.991951>,  <60.392906, 55.563251, 57.147758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.567123, 55.617767, 56.991951>,  <60.857487, 55.708630, 56.732269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.567123, 55.617767, 56.991951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466470, -0.856228, 0.221989,
		0.505438, 0.463976, 0.727501,
		-0.725905, -0.227155, 0.649201,
		60.349354, 55.549622, 57.186710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.201000, 55.504337, 57.397625>,  <60.857487, 55.708630, 56.732269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.201000, 55.504337, 57.397625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.853531, 55.308136, 57.369858>,  <60.645050, 55.190414, 57.353195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.853531, 55.308136, 57.369858>,  <61.201000, 55.504337, 57.397625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.853531, 55.308136, 57.369858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466943, -0.857508, 0.215971,
		-0.165463, 0.155193, 0.973929,
		-0.868669, -0.490504, -0.069420,
		60.592930, 55.160984, 57.349033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.846157, 55.451920, 58.042107>,  <61.201000, 55.504337, 57.397625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.846157, 55.451920, 58.042107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.212975, 55.321472, 57.950294>,  <62.433064, 55.243202, 57.895206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.212975, 55.321472, 57.950294>,  <61.846157, 55.451920, 58.042107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.212975, 55.321472, 57.950294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356348, 0.928490, 0.104512,
		0.179036, -0.177635, 0.967673,
		0.917040, -0.326117, -0.229533,
		62.488087, 55.223637, 57.881435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.178513, 55.089653, 58.664032>,  <61.846157, 55.451920, 58.042107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.178513, 55.089653, 58.664032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.285202, 55.151031, 59.044624>,  <62.349216, 55.187859, 59.272980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.285202, 55.151031, 59.044624>,  <62.178513, 55.089653, 58.664032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.285202, 55.151031, 59.044624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506168, -0.862431, -0.002807,
		0.820154, 0.482357, -0.307700,
		0.266724, 0.153445, 0.951479,
		62.365219, 55.197063, 59.330067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.895805, 55.079033, 58.681995>,  <62.178513, 55.089653, 58.664032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.895805, 55.079033, 58.681995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.716423, 54.938744, 59.010841>,  <62.608795, 54.854568, 59.208149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.716423, 54.938744, 59.010841>,  <62.895805, 55.079033, 58.681995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.716423, 54.938744, 59.010841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330296, -0.919717, -0.212190,
		0.830537, 0.176385, 0.528296,
		-0.448456, -0.350725, 0.822119,
		62.581886, 54.833527, 59.257477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.419498, 54.722942, 59.084343>,  <62.895805, 55.079033, 58.681995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.419498, 54.722942, 59.084343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.057831, 54.575687, 59.171013>,  <62.840832, 54.487335, 59.223015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.057831, 54.575687, 59.171013>,  <63.419498, 54.722942, 59.084343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.057831, 54.575687, 59.171013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324079, -0.921620, -0.213516,
		0.278296, -0.122835, 0.952608,
		-0.904171, -0.368141, 0.216676,
		62.786579, 54.465244, 59.236015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.742207, 55.178566, 58.614941>,  <63.419498, 54.722942, 59.084343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.742207, 55.178566, 58.614941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.873871, 55.393932, 58.304649>,  <63.952869, 55.523151, 58.118473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.873871, 55.393932, 58.304649>,  <63.742207, 55.178566, 58.614941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.873871, 55.393932, 58.304649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918410, 0.008417, 0.395540,
		0.219497, -0.842634, -0.491720,
		0.329157, 0.538420, -0.775731,
		63.972618, 55.555458, 58.071930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.031555, 55.408829, 59.198898>,  <63.742207, 55.178566, 58.614941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.031555, 55.408829, 59.198898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.139183, 55.720367, 59.425522>,  <64.203758, 55.907291, 59.561497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.139183, 55.720367, 59.425522>,  <64.031555, 55.408829, 59.198898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.139183, 55.720367, 59.425522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955990, -0.287426, -0.058905,
		0.116966, 0.557476, -0.821912,
		0.269077, 0.778850, 0.566560,
		64.219910, 55.954021, 59.595490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.507324, 55.990997, 59.060360>,  <64.031555, 55.408829, 59.198898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.507324, 55.990997, 59.060360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.573532, 55.964325, 59.453941>,  <64.613258, 55.948322, 59.690090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.573532, 55.964325, 59.453941>,  <64.507324, 55.990997, 59.060360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.573532, 55.964325, 59.453941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959222, -0.220908, -0.176330,
		0.229120, 0.973013, 0.027395,
		0.165519, -0.066679, 0.983950,
		64.623184, 55.944321, 59.749126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.772781, 56.632252, 59.301453>,  <64.507324, 55.990997, 59.060360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.772781, 56.632252, 59.301453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.863670, 56.288918, 59.485466>,  <64.918205, 56.082916, 59.595875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.863670, 56.288918, 59.485466>,  <64.772781, 56.632252, 59.301453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.863670, 56.288918, 59.485466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920595, 0.035247, -0.388924,
		0.317613, 0.511876, 0.798189,
		0.227214, -0.858336, 0.460036,
		64.931831, 56.031418, 59.623478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.256050, 56.726521, 59.878014>,  <64.772781, 56.632252, 59.301453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.256050, 56.726521, 59.878014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.292038, 56.369934, 59.700386>,  <65.313629, 56.155983, 59.593811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.292038, 56.369934, 59.700386>,  <65.256050, 56.726521, 59.878014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.292038, 56.369934, 59.700386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887143, 0.274376, -0.371074,
		0.452641, -0.360563, 0.815543,
		0.089970, -0.891466, -0.444064,
		65.319031, 56.102493, 59.567165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.899063, 56.397251, 60.104069>,  <65.256050, 56.726521, 59.878014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.899063, 56.397251, 60.104069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.780647, 56.322292, 59.729424>,  <65.709595, 56.277317, 59.504639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.780647, 56.322292, 59.729424>,  <65.899063, 56.397251, 60.104069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.780647, 56.322292, 59.729424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848351, 0.399008, -0.347985,
		0.438927, -0.897594, 0.040854,
		-0.296048, -0.187398, -0.936610,
		65.691833, 56.266071, 59.448441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.494293, 56.023350, 59.627251>,  <65.899063, 56.397251, 60.104069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.494293, 56.023350, 59.627251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.235855, 56.247608, 59.420082>,  <66.080795, 56.382164, 59.295780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.235855, 56.247608, 59.420082>,  <66.494293, 56.023350, 59.627251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.235855, 56.247608, 59.420082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738937, 0.629397, -0.240480,
		0.191154, -0.538083, -0.820930,
		-0.646089, 0.560647, -0.517922,
		66.042030, 56.415802, 59.264706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.657578, 56.102638, 58.881893>,  <66.494293, 56.023350, 59.627251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.657578, 56.102638, 58.881893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.468468, 56.425056, 59.024315>,  <66.355003, 56.618507, 59.109768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.468468, 56.425056, 59.024315>,  <66.657578, 56.102638, 58.881893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.468468, 56.425056, 59.024315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734635, 0.583670, -0.345891,
		-0.486622, 0.098041, -0.868094,
		-0.472769, 0.806050, 0.356051,
		66.326637, 56.666870, 59.131130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.568008, 56.517578, 58.405567>,  <66.657578, 56.102638, 58.881893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.568008, 56.517578, 58.405567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.610130, 56.712074, 58.752548>,  <66.635406, 56.828773, 58.960739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.610130, 56.712074, 58.752548>,  <66.568008, 56.517578, 58.405567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.610130, 56.712074, 58.752548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608295, 0.658578, -0.443004,
		-0.786694, 0.574321, -0.226425,
		0.105308, 0.486242, 0.867455,
		66.641724, 56.857948, 59.012783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.977142, 57.088673, 58.058010>,  <66.568008, 56.517578, 58.405567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.977142, 57.088673, 58.058010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.984497, 57.103989, 58.457649>,  <66.988907, 57.113178, 58.697433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.984497, 57.103989, 58.457649>,  <66.977142, 57.088673, 58.058010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.984497, 57.103989, 58.457649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896103, 0.442583, -0.033453,
		-0.443464, 0.895910, -0.026170,
		0.018389, 0.038286, 0.999098,
		66.990013, 57.115475, 58.757378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.913628, 57.775902, 58.383400>,  <66.977142, 57.088673, 58.058010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.913628, 57.775902, 58.383400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.132889, 57.522251, 58.601540>,  <67.264442, 57.370060, 58.732426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.132889, 57.522251, 58.601540>,  <66.913628, 57.775902, 58.383400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.132889, 57.522251, 58.601540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822524, 0.526905, -0.214068,
		-0.151603, 0.565908, 0.810410,
		0.548152, -0.634129, 0.545354,
		67.297333, 57.332012, 58.765144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.283463, 58.033401, 59.007614>,  <66.913628, 57.775902, 58.383400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.283463, 58.033401, 59.007614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.478424, 57.733818, 58.828056>,  <67.595398, 57.554070, 58.720322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.478424, 57.733818, 58.828056>,  <67.283463, 58.033401, 59.007614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.478424, 57.733818, 58.828056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641015, 0.655987, -0.398473,
		0.592906, -0.093531, 0.799821,
		0.487403, -0.748955, -0.448894,
		67.624641, 57.509132, 58.693390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.952553, 58.200218, 58.957653>,  <67.283463, 58.033401, 59.007614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.952553, 58.200218, 58.957653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.979156, 57.863518, 58.743355>,  <67.995117, 57.661495, 58.614777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.979156, 57.863518, 58.743355>,  <67.952553, 58.200218, 58.957653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.979156, 57.863518, 58.743355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783291, 0.376653, -0.494557,
		0.618087, -0.386755, 0.684389,
		0.066505, -0.841756, -0.535747,
		67.999107, 57.610992, 58.582630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.716949, 58.060497, 58.969414>,  <67.952553, 58.200218, 58.957653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.716949, 58.060497, 58.969414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.519096, 57.913155, 58.654541>,  <68.400383, 57.824749, 58.465618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.519096, 57.913155, 58.654541>,  <68.716949, 58.060497, 58.969414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.519096, 57.913155, 58.654541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681205, 0.398157, -0.614354,
		0.539721, -0.840111, 0.053983,
		-0.494632, -0.368353, -0.787182,
		68.370705, 57.802650, 58.418388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.188133, 57.586529, 58.708378>,  <68.716949, 58.060497, 58.969414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.188133, 57.586529, 58.708378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.924614, 57.714863, 58.436188>,  <68.766502, 57.791862, 58.272873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.924614, 57.714863, 58.436188>,  <69.188133, 57.586529, 58.708378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.924614, 57.714863, 58.436188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750982, 0.334306, -0.569444,
		0.044790, -0.886175, -0.461181,
		-0.658802, 0.320833, -0.680475,
		68.726974, 57.811111, 58.232044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.182396, 57.698982, 57.976143>,  <69.188133, 57.586529, 58.708378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.182396, 57.698982, 57.976143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.418953, 57.938217, 57.759796>,  <69.560890, 58.081757, 57.629986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.418953, 57.938217, 57.759796>,  <69.182396, 57.698982, 57.976143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.418953, 57.938217, 57.759796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747770, -0.155718, 0.645439,
		0.301805, -0.786158, -0.539323,
		0.591399, 0.598087, -0.540869,
		69.596375, 58.117641, 57.597534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.768303, 57.405361, 57.959190>,  <69.182396, 57.698982, 57.976143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.768303, 57.405361, 57.959190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.848083, 57.797321, 57.957947>,  <69.895950, 58.032497, 57.957199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.848083, 57.797321, 57.957947>,  <69.768303, 57.405361, 57.959190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.848083, 57.797321, 57.957947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618495, -0.123430, 0.776034,
		0.760054, -0.156708, -0.630683,
		0.199456, 0.979902, -0.003110,
		69.907921, 58.091293, 57.957012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.559578, 57.676090, 57.749004>,  <69.768303, 57.405361, 57.959190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.559578, 57.676090, 57.749004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.379066, 57.901344, 58.025909>,  <70.270760, 58.036499, 58.192055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.379066, 57.901344, 58.025909>,  <70.559578, 57.676090, 57.749004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.379066, 57.901344, 58.025909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692497, -0.268297, 0.669675,
		0.562851, 0.781597, -0.268896,
		-0.451272, 0.563137, 0.692265,
		70.243683, 58.070286, 58.233589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.149086, 57.798733, 58.121876>,  <70.559578, 57.676090, 57.749004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.149086, 57.798733, 58.121876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.806458, 57.869980, 58.315605>,  <70.600883, 57.912727, 58.431843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.806458, 57.869980, 58.315605>,  <71.149086, 57.798733, 58.121876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.806458, 57.869980, 58.315605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376487, -0.426179, 0.822575,
		0.352926, 0.886930, 0.297990,
		-0.856563, 0.178119, 0.484327,
		70.549492, 57.923416, 58.460903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.295753, 58.237995, 58.760258>,  <71.149086, 57.798733, 58.121876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.295753, 58.237995, 58.760258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.970291, 58.007568, 58.791557>,  <70.775017, 57.869312, 58.810337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.970291, 58.007568, 58.791557>,  <71.295753, 58.237995, 58.760258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.970291, 58.007568, 58.791557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386024, -0.434701, 0.813647,
		-0.434701, 0.692228, 0.576069,
		-0.813647, -0.576069, 0.078251,
		70.726196, 57.834747, 58.815033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.196785, 58.157398, 59.515362>,  <71.295753, 58.237995, 58.760258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.196785, 58.157398, 59.515362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.004944, 57.845169, 59.355019>,  <70.889839, 57.657833, 59.258812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.004944, 57.845169, 59.355019>,  <71.196785, 58.157398, 59.515362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.004944, 57.845169, 59.355019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250853, -0.559727, 0.789797,
		-0.840860, 0.278241, 0.464260,
		-0.479612, -0.780569, -0.400854,
		70.861061, 57.611000, 59.234764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.724411, 57.806957, 60.015770>,  <71.196785, 58.157398, 59.515362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.724411, 57.806957, 60.015770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.907288, 57.563206, 59.756653>,  <71.017014, 57.416954, 59.601185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.907288, 57.563206, 59.756653>,  <70.724411, 57.806957, 60.015770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.907288, 57.563206, 59.756653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405763, -0.505226, 0.761645,
		-0.791412, -0.611065, 0.016280,
		0.457190, -0.609381, -0.647790,
		71.044441, 57.380390, 59.562317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.413391, 57.115284, 59.926987>,  <70.724411, 57.806957, 60.015770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.413391, 57.115284, 59.926987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.806389, 57.188602, 59.940315>,  <71.042191, 57.232594, 59.948311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.806389, 57.188602, 59.940315>,  <70.413391, 57.115284, 59.926987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.806389, 57.188602, 59.940315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067845, -0.518600, 0.852321,
		0.173510, -0.835138, -0.521957,
		0.982492, 0.183298, 0.033322,
		71.101135, 57.243591, 59.950314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.773766, 56.418232, 59.991299>,  <70.413391, 57.115284, 59.926987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.773766, 56.418232, 59.991299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.925346, 56.748260, 60.158943>,  <71.016296, 56.946278, 60.259529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.925346, 56.748260, 60.158943>,  <70.773766, 56.418232, 59.991299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.925346, 56.748260, 60.158943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122506, -0.404179, 0.906439,
		0.917274, -0.394835, -0.052086,
		0.378946, 0.825073, 0.419113,
		71.039032, 56.995781, 60.284676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.375229, 56.314896, 60.377499>,  <70.773766, 56.418232, 59.991299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.375229, 56.314896, 60.377499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.177597, 56.631561, 60.521248>,  <71.059013, 56.821560, 60.607498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.177597, 56.631561, 60.521248>,  <71.375229, 56.314896, 60.377499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.177597, 56.631561, 60.521248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063264, -0.444994, 0.893296,
		0.867108, 0.418630, 0.269949,
		-0.494086, 0.791663, 0.359374,
		71.029373, 56.869061, 60.629059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.746277, 56.461033, 60.938114>,  <71.375229, 56.314896, 60.377499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.746277, 56.461033, 60.938114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.368660, 56.583714, 60.986618>,  <71.142090, 56.657322, 61.015720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.368660, 56.583714, 60.986618>,  <71.746277, 56.461033, 60.938114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.368660, 56.583714, 60.986618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003020, -0.359627, 0.933091,
		0.329792, 0.881250, 0.338579,
		-0.944049, 0.306703, 0.121263,
		71.085442, 56.675724, 61.022999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.361145, 56.019012, 61.006523>,  <71.746277, 56.461033, 60.938114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.361145, 56.019012, 61.006523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.479256, 56.125294, 61.373611>,  <72.550117, 56.189064, 61.593864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.479256, 56.125294, 61.373611>,  <72.361145, 56.019012, 61.006523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.479256, 56.125294, 61.373611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936811, 0.108109, -0.332711,
		-0.187617, 0.957974, -0.216993,
		0.295270, 0.265704, 0.917724,
		72.567833, 56.205006, 61.648930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.005150, 56.391453, 61.012878>,  <72.361145, 56.019012, 61.006523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.005150, 56.391453, 61.012878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.114243, 56.244465, 61.368538>,  <73.179695, 56.156273, 61.581936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.114243, 56.244465, 61.368538>,  <73.005150, 56.391453, 61.012878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.114243, 56.244465, 61.368538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092494, -0.909890, -0.404407,
		0.957636, 0.192532, -0.214159,
		0.272722, -0.367466, 0.889152,
		73.196060, 56.134224, 61.635284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.602509, 56.976707, 60.773289>,  <73.005150, 56.391453, 61.012878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.602509, 56.976707, 60.773289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.468872, 56.909809, 60.402252>,  <72.388695, 56.869671, 60.179630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.468872, 56.909809, 60.402252>,  <72.602509, 56.976707, 60.773289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.468872, 56.909809, 60.402252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321409, 0.904931, -0.278921,
		0.886049, -0.391318, -0.248570,
		-0.334085, -0.167245, -0.927586,
		72.368645, 56.859634, 60.123978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.119354, 57.071468, 60.188919>,  <72.602509, 56.976707, 60.773289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.119354, 57.071468, 60.188919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.821983, 57.160431, 59.936623>,  <72.643562, 57.213810, 59.785244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.821983, 57.160431, 59.936623>,  <73.119354, 57.071468, 60.188919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.821983, 57.160431, 59.936623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443694, 0.869682, -0.216308,
		0.500439, -0.440669, -0.745233,
		-0.743436, 0.222406, -0.630745,
		72.598953, 57.227154, 59.747398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.900406, 57.852692, 60.219440>,  <73.119354, 57.071468, 60.188919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.900406, 57.852692, 60.219440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.500595, 57.841473, 60.224548>,  <72.260712, 57.834740, 60.227615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.500595, 57.841473, 60.224548>,  <72.900406, 57.852692, 60.219440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.500595, 57.841473, 60.224548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025399, -0.984371, -0.174264,
		0.017462, -0.173856, 0.984616,
		-0.999525, -0.028051, 0.012774,
		72.200737, 57.833057, 60.228382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.861420, 58.268585, 59.546455>,  <72.900406, 57.852692, 60.219440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.861420, 58.268585, 59.546455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.905975, 57.909172, 59.376640>,  <72.932709, 57.693523, 59.274750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.905975, 57.909172, 59.376640>,  <72.861420, 58.268585, 59.546455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.905975, 57.909172, 59.376640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784467, 0.341755, -0.517508,
		0.610086, -0.275398, 0.742934,
		0.111381, -0.898532, -0.424541,
		72.939392, 57.639614, 59.249279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.595970, 57.940483, 59.689350>,  <72.861420, 58.268585, 59.546455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.595970, 57.940483, 59.689350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.436768, 57.842155, 59.335815>,  <73.341248, 57.783161, 59.123695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.436768, 57.842155, 59.335815>,  <73.595970, 57.940483, 59.689350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.436768, 57.842155, 59.335815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824225, 0.327189, -0.462169,
		0.402789, -0.912426, 0.072383,
		-0.398012, -0.245816, -0.883833,
		73.317368, 57.768410, 59.070667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.675468, 57.690224, 60.443363>,  <73.595970, 57.940483, 59.689350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.675468, 57.690224, 60.443363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.333725, 57.841225, 60.586220>,  <73.128677, 57.931824, 60.671936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.333725, 57.841225, 60.586220>,  <73.675468, 57.690224, 60.443363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.333725, 57.841225, 60.586220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512770, -0.724034, -0.461348,
		0.084424, -0.577293, 0.812161,
		-0.854365, 0.377503, 0.357144,
		73.077415, 57.954475, 60.693363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
