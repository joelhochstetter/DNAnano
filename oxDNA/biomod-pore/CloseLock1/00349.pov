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
	<24.646347, 34.734913, 35.270805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376616, 34.977966, 35.102966>,  <24.214777, 35.123798, 35.002262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376616, 34.977966, 35.102966>,  <24.646347, 34.734913, 35.270805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.376616, 34.977966, 35.102966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453710, -0.107378, -0.884657,
		-0.582606, -0.786922, -0.203284,
		-0.674327, 0.607638, -0.419593,
		24.174316, 35.160259, 34.977089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.577061, 34.663807, 34.430225>,  <24.646347, 34.734913, 35.270805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.577061, 34.663807, 34.430225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379282, 35.008537, 34.475437>,  <24.260614, 35.215374, 34.502563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379282, 35.008537, 34.475437>,  <24.577061, 34.663807, 34.430225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.379282, 35.008537, 34.475437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280787, 0.281432, -0.917581,
		-0.822606, -0.421959, -0.381143,
		-0.494447, 0.861828, 0.113028,
		24.230947, 35.267086, 34.509346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.259340, 34.866276, 33.763752>,  <24.577061, 34.663807, 34.430225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.259340, 34.866276, 33.763752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279737, 35.201992, 33.980267>,  <24.291975, 35.403423, 34.110176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279737, 35.201992, 33.980267>,  <24.259340, 34.866276, 33.763752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279737, 35.201992, 33.980267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557132, 0.425915, -0.712882,
		-0.828857, 0.337921, -0.445876,
		0.050992, 0.839289, 0.541289,
		24.295034, 35.453777, 34.142654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.911392, 35.552635, 33.545944>,  <24.259340, 34.866276, 33.763752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.911392, 35.552635, 33.545944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259483, 35.612637, 33.733650>,  <24.468338, 35.648636, 33.846272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259483, 35.612637, 33.733650>,  <23.911392, 35.552635, 33.545944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259483, 35.612637, 33.733650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320306, 0.551446, -0.770267,
		-0.374315, 0.820614, 0.431836,
		0.870225, 0.150003, 0.469262,
		24.520552, 35.657639, 33.874428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.045013, 36.284653, 33.720295>,  <23.911392, 35.552635, 33.545944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.045013, 36.284653, 33.720295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.371288, 36.068104, 33.638737>,  <24.567053, 35.938175, 33.589802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.371288, 36.068104, 33.638737>,  <24.045013, 36.284653, 33.720295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.371288, 36.068104, 33.638737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186177, 0.579370, -0.793517,
		0.547718, 0.609300, 0.573375,
		0.815686, -0.541372, -0.203894,
		24.615993, 35.905693, 33.577568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.525272, 36.770885, 33.472973>,  <24.045013, 36.284653, 33.720295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.525272, 36.770885, 33.472973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663019, 36.416859, 33.347713>,  <24.745668, 36.204441, 33.272560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663019, 36.416859, 33.347713>,  <24.525272, 36.770885, 33.472973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.663019, 36.416859, 33.347713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340844, 0.428653, -0.836709,
		0.874777, 0.181403, 0.449285,
		0.344369, -0.885070, -0.313146,
		24.766331, 36.151337, 33.253769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151543, 36.884533, 33.258038>,  <24.525272, 36.770885, 33.472973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151543, 36.884533, 33.258038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092449, 36.531918, 33.078678>,  <25.056993, 36.320347, 32.971062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092449, 36.531918, 33.078678>,  <25.151543, 36.884533, 33.258038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092449, 36.531918, 33.078678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219020, 0.412954, -0.884024,
		0.964472, -0.228807, 0.132068,
		-0.147733, -0.881542, -0.448396,
		25.048130, 36.267456, 32.944160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686605, 36.808727, 32.728939>,  <25.151543, 36.884533, 33.258038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686605, 36.808727, 32.728939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396280, 36.558914, 32.613594>,  <25.222084, 36.409027, 32.544388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396280, 36.558914, 32.613594>,  <25.686605, 36.808727, 32.728939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396280, 36.558914, 32.613594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107140, 0.311447, -0.944204,
		0.679497, -0.716211, -0.159140,
		-0.725813, -0.624534, -0.288362,
		25.178535, 36.371555, 32.527084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938583, 36.535271, 32.117771>,  <25.686605, 36.808727, 32.728939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938583, 36.535271, 32.117771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542662, 36.485645, 32.089790>,  <25.305109, 36.455868, 32.073002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542662, 36.485645, 32.089790>,  <25.938583, 36.535271, 32.117771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542662, 36.485645, 32.089790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034237, 0.269466, -0.962401,
		0.138250, -0.954985, -0.262471,
		-0.989805, -0.124066, -0.069949,
		25.245720, 36.448425, 32.068806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842066, 36.092815, 31.551172>,  <25.938583, 36.535271, 32.117771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842066, 36.092815, 31.551172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499886, 36.288094, 31.620302>,  <25.294577, 36.405258, 31.661779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499886, 36.288094, 31.620302>,  <25.842066, 36.092815, 31.551172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499886, 36.288094, 31.620302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079120, 0.206597, -0.975222,
		-0.511803, -0.847929, -0.138108,
		-0.855452, 0.488194, 0.172825,
		25.243250, 36.434551, 31.672150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463245, 35.929565, 30.966187>,  <25.842066, 36.092815, 31.551172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463245, 35.929565, 30.966187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274233, 36.240738, 31.131851>,  <25.160826, 36.427441, 31.231251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274233, 36.240738, 31.131851>,  <25.463245, 35.929565, 30.966187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.274233, 36.240738, 31.131851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013988, 0.463260, -0.886112,
		-0.881202, -0.424510, -0.208024,
		-0.472533, 0.777934, 0.414163,
		25.132473, 36.474117, 31.256100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.844315, 36.067425, 30.539110>,  <25.463245, 35.929565, 30.966187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.844315, 36.067425, 30.539110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.925764, 36.411129, 30.726814>,  <24.974634, 36.617352, 30.839437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.925764, 36.411129, 30.726814>,  <24.844315, 36.067425, 30.539110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.925764, 36.411129, 30.726814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042800, 0.486658, -0.872543,
		-0.978113, 0.157588, 0.135873,
		0.203626, 0.859261, 0.469262,
		24.986853, 36.668907, 30.867594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.369791, 36.678581, 30.303686>,  <24.844315, 36.067425, 30.539110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.369791, 36.678581, 30.303686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689445, 36.872787, 30.445478>,  <24.881239, 36.989311, 30.530554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689445, 36.872787, 30.445478>,  <24.369791, 36.678581, 30.303686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.689445, 36.872787, 30.445478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023419, 0.614366, -0.788673,
		-0.600692, 0.621957, 0.502334,
		0.799138, 0.485513, 0.354479,
		24.929188, 37.018440, 30.551823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.371437, 37.263065, 29.845943>,  <24.369791, 36.678581, 30.303686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.371437, 37.263065, 29.845943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715187, 37.257515, 30.050406>,  <24.921438, 37.254185, 30.173082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715187, 37.257515, 30.050406>,  <24.371437, 37.263065, 29.845943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715187, 37.257515, 30.050406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449533, 0.496922, -0.742286,
		-0.243704, 0.867685, 0.433280,
		0.859377, -0.013876, 0.511155,
		24.973000, 37.253353, 30.203753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.625744, 37.989037, 29.717127>,  <24.371437, 37.263065, 29.845943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.625744, 37.989037, 29.717127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916950, 37.734398, 29.818899>,  <25.091675, 37.581615, 29.879963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916950, 37.734398, 29.818899>,  <24.625744, 37.989037, 29.717127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.916950, 37.734398, 29.818899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571644, 0.358821, -0.737882,
		0.378440, 0.682634, 0.625135,
		0.728015, -0.636599, 0.254432,
		25.135355, 37.543419, 29.895229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199661, 38.387138, 29.701574>,  <24.625744, 37.989037, 29.717127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199661, 38.387138, 29.701574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349386, 38.016598, 29.684805>,  <25.439220, 37.794273, 29.674744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349386, 38.016598, 29.684805>,  <25.199661, 38.387138, 29.701574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349386, 38.016598, 29.684805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579001, 0.268793, -0.769746,
		0.724326, 0.263850, 0.636972,
		0.374312, -0.926355, -0.041925,
		25.461679, 37.738693, 29.672228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951597, 38.359245, 29.684937>,  <25.199661, 38.387138, 29.701574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951597, 38.359245, 29.684937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851532, 38.010029, 29.517498>,  <25.791492, 37.800499, 29.417034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851532, 38.010029, 29.517498>,  <25.951597, 38.359245, 29.684937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851532, 38.010029, 29.517498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683346, 0.147075, -0.715127,
		0.685898, -0.464946, 0.559794,
		-0.250164, -0.873037, -0.418597,
		25.776484, 37.748119, 29.391918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610338, 38.048824, 29.423542>,  <25.951597, 38.359245, 29.684937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610338, 38.048824, 29.423542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357780, 37.775349, 29.277163>,  <26.206245, 37.611263, 29.189335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357780, 37.775349, 29.277163>,  <26.610338, 38.048824, 29.423542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357780, 37.775349, 29.277163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610414, -0.147138, -0.778296,
		0.478265, -0.714790, 0.510234,
		-0.631393, -0.683686, -0.365946,
		26.168362, 37.570244, 29.167379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979837, 37.333794, 29.371981>,  <26.610338, 38.048824, 29.423542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979837, 37.333794, 29.371981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687927, 37.380951, 29.102602>,  <26.512781, 37.409245, 28.940975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687927, 37.380951, 29.102602>,  <26.979837, 37.333794, 29.371981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687927, 37.380951, 29.102602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648475, -0.192694, -0.736444,
		-0.216590, -0.974151, 0.064172,
		-0.729773, 0.117893, -0.673448,
		26.468996, 37.416317, 28.900568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064602, 36.853806, 28.874170>,  <26.979837, 37.333794, 29.371981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064602, 36.853806, 28.874170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815020, 37.089260, 28.668575>,  <26.665270, 37.230534, 28.545218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815020, 37.089260, 28.668575>,  <27.064602, 36.853806, 28.874170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815020, 37.089260, 28.668575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546728, -0.141134, -0.825330,
		-0.558363, -0.795981, -0.233764,
		-0.623955, 0.588639, -0.513989,
		26.627832, 37.265850, 28.514380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682270, 36.478138, 28.352890>,  <27.064602, 36.853806, 28.874170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682270, 36.478138, 28.352890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683712, 36.858929, 28.230425>,  <26.684578, 37.087402, 28.156946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683712, 36.858929, 28.230425>,  <26.682270, 36.478138, 28.352890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683712, 36.858929, 28.230425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656682, -0.233153, -0.717223,
		-0.754159, -0.198465, -0.625984,
		0.003607, 0.951972, -0.306163,
		26.684793, 37.144520, 28.138577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753338, 36.520721, 27.499371>,  <26.682270, 36.478138, 28.352890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753338, 36.520721, 27.499371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847731, 36.873878, 27.661760>,  <26.904366, 37.085773, 27.759195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847731, 36.873878, 27.661760>,  <26.753338, 36.520721, 27.499371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847731, 36.873878, 27.661760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679019, 0.149048, -0.718831,
		-0.695160, 0.445296, -0.564327,
		0.235981, 0.882891, 0.405976,
		26.918526, 37.138744, 27.783554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851856, 36.883533, 26.981550>,  <26.753338, 36.520721, 27.499371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851856, 36.883533, 26.981550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052296, 37.105572, 27.247114>,  <27.172560, 37.238792, 27.406452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052296, 37.105572, 27.247114>,  <26.851856, 36.883533, 26.981550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052296, 37.105572, 27.247114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595730, 0.335197, -0.729897,
		-0.627699, 0.761260, -0.162718,
		0.501099, 0.555091, 0.663908,
		27.202625, 37.272099, 27.446287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952427, 37.531528, 26.735867>,  <26.851856, 36.883533, 26.981550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952427, 37.531528, 26.735867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245445, 37.536678, 27.008104>,  <27.421257, 37.539768, 27.171448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245445, 37.536678, 27.008104>,  <26.952427, 37.531528, 26.735867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245445, 37.536678, 27.008104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606103, 0.442786, -0.660742,
		-0.309862, 0.896535, 0.316561,
		0.732547, 0.012870, 0.680595,
		27.465210, 37.540539, 27.212282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400143, 38.239861, 26.702374>,  <26.952427, 37.531528, 26.735867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400143, 38.239861, 26.702374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600082, 37.929058, 26.855427>,  <27.720047, 37.742577, 26.947260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600082, 37.929058, 26.855427>,  <27.400143, 38.239861, 26.702374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600082, 37.929058, 26.855427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686871, 0.086510, -0.721612,
		0.527596, 0.623519, 0.576946,
		0.499850, -0.777007, 0.382634,
		27.750038, 37.695957, 26.970217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139145, 38.442623, 26.797934>,  <27.400143, 38.239861, 26.702374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139145, 38.442623, 26.797934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125784, 38.048328, 26.731951>,  <28.117767, 37.811752, 26.692360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125784, 38.048328, 26.731951>,  <28.139145, 38.442623, 26.797934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125784, 38.048328, 26.731951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720348, 0.090668, -0.687661,
		0.692808, -0.141796, 0.707044,
		-0.033401, -0.985735, -0.164958,
		28.115763, 37.752609, 26.682463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842911, 38.173847, 26.841465>,  <28.139145, 38.442623, 26.797934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842911, 38.173847, 26.841465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612118, 37.958775, 26.595543>,  <28.473642, 37.829731, 26.447989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612118, 37.958775, 26.595543>,  <28.842911, 38.173847, 26.841465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612118, 37.958775, 26.595543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755870, -0.066338, -0.651352,
		0.309436, -0.840534, 0.444694,
		-0.576983, -0.537682, -0.614807,
		28.439022, 37.797470, 26.411100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826157, 37.400913, 26.916698>,  <28.842911, 38.173847, 26.841465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826157, 37.400913, 26.916698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783735, 37.588985, 26.566229>,  <28.758282, 37.701828, 26.355947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783735, 37.588985, 26.566229>,  <28.826157, 37.400913, 26.916698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783735, 37.588985, 26.566229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925751, -0.274941, -0.259599,
		-0.362955, -0.838651, -0.406114,
		-0.106056, 0.470183, -0.876174,
		28.751919, 37.730042, 26.303377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952227, 36.937813, 26.347204>,  <28.826157, 37.400913, 26.916698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952227, 36.937813, 26.347204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084459, 37.306419, 26.265692>,  <29.163799, 37.527584, 26.216784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084459, 37.306419, 26.265692>,  <28.952227, 36.937813, 26.347204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084459, 37.306419, 26.265692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925469, -0.358845, -0.121394,
		-0.184993, -0.148463, -0.971461,
		0.330582, 0.921514, -0.203781,
		29.183634, 37.582874, 26.204557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356251, 37.001766, 25.808256>,  <28.952227, 36.937813, 26.347204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356251, 37.001766, 25.808256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497128, 37.330311, 25.987732>,  <29.581654, 37.527439, 26.095417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497128, 37.330311, 25.987732>,  <29.356251, 37.001766, 25.808256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497128, 37.330311, 25.987732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905035, -0.176725, -0.386885,
		-0.238477, 0.542340, -0.805603,
		0.352193, 0.821362, 0.448692,
		29.602785, 37.576721, 26.122339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360029, 37.590366, 25.228870>,  <29.356251, 37.001766, 25.808256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360029, 37.590366, 25.228870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491055, 37.905952, 25.436810>,  <29.569670, 38.095303, 25.561573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491055, 37.905952, 25.436810>,  <29.360029, 37.590366, 25.228870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491055, 37.905952, 25.436810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433329, -0.363478, 0.824688,
		0.839600, -0.495402, 0.222818,
		0.327563, 0.788962, 0.519848,
		29.589323, 38.142639, 25.592764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583374, 36.909119, 24.964224>,  <29.360029, 37.590366, 25.228870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583374, 36.909119, 24.964224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808996, 37.218655, 25.079473>,  <29.944370, 37.404377, 25.148623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808996, 37.218655, 25.079473>,  <29.583374, 36.909119, 24.964224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808996, 37.218655, 25.079473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076109, -0.396165, 0.915019,
		0.822222, -0.494193, -0.282355,
		0.564055, 0.773839, 0.288123,
		29.978212, 37.450806, 25.165911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021467, 36.581539, 25.425262>,  <29.583374, 36.909119, 24.964224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021467, 36.581539, 25.425262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037546, 36.971661, 25.512136>,  <30.047194, 37.205734, 25.564260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037546, 36.971661, 25.512136>,  <30.021467, 36.581539, 25.425262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037546, 36.971661, 25.512136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198342, -0.220824, 0.954933,
		0.979308, 0.004689, -0.202320,
		0.040199, 0.975303, 0.217185,
		30.049606, 37.264252, 25.577291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788378, 36.779636, 25.789972>,  <30.021467, 36.581539, 25.425262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788378, 36.779636, 25.789972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448023, 36.947407, 25.916510>,  <30.243811, 37.048069, 25.992432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448023, 36.947407, 25.916510>,  <30.788378, 36.779636, 25.789972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448023, 36.947407, 25.916510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171678, -0.347104, 0.921979,
		0.496509, 0.838808, 0.223339,
		-0.850885, 0.419429, 0.316345,
		30.192757, 37.073235, 26.011414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895357, 37.146370, 26.408810>,  <30.788378, 36.779636, 25.789972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895357, 37.146370, 26.408810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536385, 36.971203, 26.387478>,  <30.321001, 36.866104, 26.374680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536385, 36.971203, 26.387478>,  <30.895357, 37.146370, 26.408810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536385, 36.971203, 26.387478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048337, -0.217766, 0.974803,
		-0.438496, 0.872242, 0.216598,
		-0.897432, -0.437917, -0.053328,
		30.267155, 36.839828, 26.371479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259390, 37.496151, 26.796101>,  <30.895357, 37.146370, 26.408810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259390, 37.496151, 26.796101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175543, 37.106991, 26.757078>,  <30.125235, 36.873493, 26.733665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175543, 37.106991, 26.757078>,  <30.259390, 37.496151, 26.796101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175543, 37.106991, 26.757078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125659, -0.072140, 0.989447,
		-0.969676, 0.219663, -0.107132,
		-0.209617, -0.972905, -0.097555,
		30.112658, 36.815121, 26.727812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711590, 37.375111, 27.228495>,  <30.259390, 37.496151, 26.796101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711590, 37.375111, 27.228495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864706, 37.009972, 27.171682>,  <29.956575, 36.790886, 27.137596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864706, 37.009972, 27.171682>,  <29.711590, 37.375111, 27.228495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864706, 37.009972, 27.171682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228232, -0.242417, 0.942944,
		-0.895199, -0.328534, -0.301137,
		0.382790, -0.912852, -0.142029,
		29.979544, 36.736115, 27.129074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249329, 36.899517, 27.452637>,  <29.711590, 37.375111, 27.228495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249329, 36.899517, 27.452637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582422, 36.678562, 27.467733>,  <29.782278, 36.545990, 27.476791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582422, 36.678562, 27.467733>,  <29.249329, 36.899517, 27.452637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582422, 36.678562, 27.467733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261256, -0.331916, 0.906409,
		-0.488160, -0.764657, -0.420712,
		0.832733, -0.552387, 0.037743,
		29.832243, 36.512848, 27.479055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068031, 36.300339, 27.801319>,  <29.249329, 36.899517, 27.452637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068031, 36.300339, 27.801319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464249, 36.245834, 27.807713>,  <29.701979, 36.213131, 27.811548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464249, 36.245834, 27.807713>,  <29.068031, 36.300339, 27.801319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464249, 36.245834, 27.807713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097786, -0.619499, 0.778883,
		-0.096226, -0.773082, -0.626965,
		0.990545, -0.136257, 0.015984,
		29.761412, 36.204956, 27.812508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167877, 35.544479, 27.857462>,  <29.068031, 36.300339, 27.801319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167877, 35.544479, 27.857462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481548, 35.736809, 28.014372>,  <29.669750, 35.852207, 28.108517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481548, 35.736809, 28.014372>,  <29.167877, 35.544479, 27.857462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481548, 35.736809, 28.014372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093283, -0.533627, 0.840559,
		0.613487, -0.695739, -0.373605,
		0.784176, 0.480821, 0.392274,
		29.716801, 35.881054, 28.132053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444201, 35.118244, 28.363953>,  <29.167877, 35.544479, 27.857462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444201, 35.118244, 28.363953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614727, 35.464191, 28.469976>,  <29.717043, 35.671761, 28.533590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614727, 35.464191, 28.469976>,  <29.444201, 35.118244, 28.363953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614727, 35.464191, 28.469976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021920, -0.302811, 0.952798,
		0.904309, -0.400383, -0.148051,
		0.426316, 0.864869, 0.265059,
		29.742622, 35.723652, 28.549494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889971, 34.976131, 28.904163>,  <29.444201, 35.118244, 28.363953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889971, 34.976131, 28.904163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850357, 35.371304, 28.951792>,  <29.826588, 35.608406, 28.980370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850357, 35.371304, 28.951792>,  <29.889971, 34.976131, 28.904163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850357, 35.371304, 28.951792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179710, -0.135450, 0.974350,
		0.978722, 0.075097, 0.190956,
		-0.099035, 0.987934, 0.119073,
		29.820646, 35.667683, 28.987514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373522, 35.189148, 29.432734>,  <29.889971, 34.976131, 28.904163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373522, 35.189148, 29.432734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068815, 35.448212, 29.438953>,  <29.885990, 35.603649, 29.442684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068815, 35.448212, 29.438953>,  <30.373522, 35.189148, 29.432734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068815, 35.448212, 29.438953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146930, -0.196089, 0.969516,
		0.630968, 0.736262, 0.244535,
		-0.761768, 0.647663, 0.015547,
		29.840284, 35.642509, 29.443617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488005, 35.348099, 30.100679>,  <30.373522, 35.189148, 29.432734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488005, 35.348099, 30.100679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156773, 35.552738, 30.008982>,  <29.958033, 35.675522, 29.953964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156773, 35.552738, 30.008982>,  <30.488005, 35.348099, 30.100679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156773, 35.552738, 30.008982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181337, 0.142497, 0.973042,
		0.530472, 0.847327, -0.025227,
		-0.828080, 0.511598, -0.229242,
		29.908348, 35.706219, 29.940208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329985, 35.907558, 30.617476>,  <30.488005, 35.348099, 30.100679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329985, 35.907558, 30.617476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973227, 35.860939, 30.442692>,  <29.759171, 35.832966, 30.337822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973227, 35.860939, 30.442692>,  <30.329985, 35.907558, 30.617476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973227, 35.860939, 30.442692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451822, 0.188187, 0.872034,
		-0.019408, 0.975193, -0.220504,
		-0.891897, -0.116553, -0.436961,
		29.705658, 35.825974, 30.311604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882996, 36.542217, 30.688665>,  <30.329985, 35.907558, 30.617476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882996, 36.542217, 30.688665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640465, 36.225151, 30.663219>,  <29.494946, 36.034912, 30.647953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640465, 36.225151, 30.663219>,  <29.882996, 36.542217, 30.688665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640465, 36.225151, 30.663219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461394, 0.285517, 0.839997,
		-0.647676, 0.538663, -0.538848,
		-0.606326, -0.792667, -0.063613,
		29.458567, 35.987350, 30.644136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302048, 36.759716, 30.846542>,  <29.882996, 36.542217, 30.688665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302048, 36.759716, 30.846542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197893, 36.373619, 30.837469>,  <29.135401, 36.141960, 30.832026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197893, 36.373619, 30.837469>,  <29.302048, 36.759716, 30.846542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197893, 36.373619, 30.837469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666269, 0.162635, 0.727761,
		-0.698773, 0.204613, -0.685456,
		-0.260388, -0.965238, -0.022682,
		29.119778, 36.084049, 30.830664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575703, 36.697975, 30.868711>,  <29.302048, 36.759716, 30.846542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575703, 36.697975, 30.868711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712608, 36.346870, 31.002808>,  <28.794752, 36.136208, 31.083265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712608, 36.346870, 31.002808>,  <28.575703, 36.697975, 30.868711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712608, 36.346870, 31.002808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671557, 0.021018, 0.740655,
		-0.657166, -0.478633, -0.582274,
		0.342263, -0.877763, 0.335242,
		28.815287, 36.083542, 31.103380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949093, 36.355125, 30.909607>,  <28.575703, 36.697975, 30.868711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949093, 36.355125, 30.909607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209835, 36.193172, 31.166092>,  <28.366280, 36.096001, 31.319983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209835, 36.193172, 31.166092>,  <27.949093, 36.355125, 30.909607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209835, 36.193172, 31.166092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677358, 0.069329, 0.732379,
		-0.340983, -0.911736, -0.229059,
		0.651856, -0.404884, 0.641212,
		28.405392, 36.071709, 31.358456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546499, 35.950432, 31.277561>,  <27.949093, 36.355125, 30.909607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546499, 35.950432, 31.277561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883276, 35.963177, 31.493010>,  <28.085342, 35.970825, 31.622278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883276, 35.963177, 31.493010>,  <27.546499, 35.950432, 31.277561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883276, 35.963177, 31.493010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521619, -0.207246, 0.827625,
		0.137998, -0.977770, -0.157868,
		0.841944, 0.031864, 0.538623,
		28.135859, 35.972736, 31.654596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553352, 35.403580, 31.629723>,  <27.546499, 35.950432, 31.277561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553352, 35.403580, 31.629723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801739, 35.636837, 31.839237>,  <27.950769, 35.776791, 31.964945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801739, 35.636837, 31.839237>,  <27.553352, 35.403580, 31.629723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801739, 35.636837, 31.839237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468734, -0.259329, 0.844415,
		0.628245, -0.769868, 0.112303,
		0.620964, 0.583140, 0.523785,
		27.988028, 35.811779, 31.996372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777170, 35.014790, 32.155735>,  <27.553352, 35.403580, 31.629723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777170, 35.014790, 32.155735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839676, 35.391865, 32.273666>,  <27.877178, 35.618111, 32.344425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839676, 35.391865, 32.273666>,  <27.777170, 35.014790, 32.155735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839676, 35.391865, 32.273666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526833, -0.172936, 0.832190,
		0.835481, -0.285363, 0.469615,
		0.156263, 0.942688, 0.294824,
		27.886555, 35.674671, 32.362114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156872, 34.916866, 32.765991>,  <27.777170, 35.014790, 32.155735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156872, 34.916866, 32.765991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000416, 35.284740, 32.779819>,  <27.906542, 35.505463, 32.788116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000416, 35.284740, 32.779819>,  <28.156872, 34.916866, 32.765991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000416, 35.284740, 32.779819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322290, -0.172058, 0.930873,
		0.862054, 0.352962, 0.363703,
		-0.391141, 0.919681, 0.034567,
		27.883074, 35.560646, 32.790188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200140, 35.059250, 33.409492>,  <28.156872, 34.916866, 32.765991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200140, 35.059250, 33.409492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942043, 35.346630, 33.305576>,  <27.787186, 35.519058, 33.243225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942043, 35.346630, 33.305576>,  <28.200140, 35.059250, 33.409492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942043, 35.346630, 33.305576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346721, 0.027627, 0.937561,
		0.680768, 0.695030, 0.231275,
		-0.645243, 0.718450, -0.259789,
		27.748470, 35.562164, 33.227638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278210, 35.628052, 33.852108>,  <28.200140, 35.059250, 33.409492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278210, 35.628052, 33.852108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908285, 35.662037, 33.703781>,  <27.686331, 35.682426, 33.614784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908285, 35.662037, 33.703781>,  <28.278210, 35.628052, 33.852108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908285, 35.662037, 33.703781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350584, 0.188105, 0.917446,
		0.147699, 0.978467, -0.144176,
		-0.924811, 0.084960, -0.370818,
		27.630842, 35.687527, 33.592537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061842, 36.089989, 34.336643>,  <28.278210, 35.628052, 33.852108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061842, 36.089989, 34.336643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742809, 35.921574, 34.163857>,  <27.551390, 35.820526, 34.060184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742809, 35.921574, 34.163857>,  <28.061842, 36.089989, 34.336643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742809, 35.921574, 34.163857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530112, 0.147547, 0.834992,
		-0.287826, 0.894963, -0.340876,
		-0.797582, -0.421035, -0.431963,
		27.503534, 35.795261, 34.034267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847063, 35.921711, 34.293251>,  <28.061842, 36.089989, 34.336643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847063, 35.921711, 34.293251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848282, 35.709309, 33.954304>,  <28.849012, 35.581867, 33.750935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848282, 35.709309, 33.954304>,  <28.847063, 35.921711, 34.293251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848282, 35.709309, 33.954304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703388, -0.601175, 0.379256,
		-0.710800, -0.597181, 0.371669,
		0.003046, -0.531003, -0.847365,
		28.849195, 35.550007, 33.700096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767859, 35.220757, 34.457611>,  <28.847063, 35.921711, 34.293251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767859, 35.220757, 34.457611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980114, 35.295544, 34.126923>,  <29.107468, 35.340416, 33.928509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980114, 35.295544, 34.126923>,  <28.767859, 35.220757, 34.457611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980114, 35.295544, 34.126923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805876, -0.413535, 0.423736,
		-0.262651, -0.891084, -0.370114,
		0.530639, 0.186972, -0.826718,
		29.139305, 35.351635, 33.878906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144405, 34.559418, 34.161926>,  <28.767859, 35.220757, 34.457611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144405, 34.559418, 34.161926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300030, 34.925709, 34.121761>,  <29.393404, 35.145481, 34.097664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300030, 34.925709, 34.121761>,  <29.144405, 34.559418, 34.161926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300030, 34.925709, 34.121761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790834, -0.276108, 0.546210,
		0.472454, -0.291914, -0.831609,
		0.389060, 0.915724, -0.100408,
		29.416748, 35.200424, 34.091640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912518, 34.524132, 34.053391>,  <29.144405, 34.559418, 34.161926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912518, 34.524132, 34.053391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882893, 34.905781, 34.169430>,  <29.865118, 35.134773, 34.239052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882893, 34.905781, 34.169430>,  <29.912518, 34.524132, 34.053391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882893, 34.905781, 34.169430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779137, -0.126208, 0.614017,
		0.622463, 0.271501, -0.734048,
		-0.074064, 0.954127, 0.290096,
		29.860674, 35.192020, 34.256458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608843, 34.754059, 34.143234>,  <29.912518, 34.524132, 34.053391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608843, 34.754059, 34.143234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381912, 35.011486, 34.348740>,  <30.245754, 35.165943, 34.472042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381912, 35.011486, 34.348740>,  <30.608843, 34.754059, 34.143234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381912, 35.011486, 34.348740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656401, -0.023324, 0.754051,
		0.497268, 0.765032, -0.409208,
		-0.567328, 0.643570, 0.513767,
		30.211714, 35.204556, 34.502869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807068, 34.549850, 34.883190>,  <30.608843, 34.754059, 34.143234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807068, 34.549850, 34.883190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996794, 34.198841, 34.911388>,  <31.110630, 33.988235, 34.928307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996794, 34.198841, 34.911388>,  <30.807068, 34.549850, 34.883190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996794, 34.198841, 34.911388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135261, -0.006488, -0.990789,
		0.869901, 0.479483, 0.115618,
		0.474316, -0.877527, 0.070499,
		31.139088, 33.935581, 34.932537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430824, 34.543648, 34.533058>,  <30.807068, 34.549850, 34.883190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430824, 34.543648, 34.533058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269827, 34.178936, 34.500420>,  <31.173229, 33.960110, 34.480839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269827, 34.178936, 34.500420>,  <31.430824, 34.543648, 34.533058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269827, 34.178936, 34.500420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259682, -0.028253, -0.965281,
		0.877818, -0.409706, 0.248144,
		-0.402492, -0.911780, -0.081592,
		31.149078, 33.905403, 34.475941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957632, 33.951469, 34.244980>,  <31.430824, 34.543648, 34.533058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957632, 33.951469, 34.244980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579611, 33.835888, 34.183819>,  <31.352798, 33.766541, 34.147121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579611, 33.835888, 34.183819>,  <31.957632, 33.951469, 34.244980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579611, 33.835888, 34.183819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217628, -0.207060, -0.953816,
		0.243951, -0.934682, 0.258567,
		-0.945054, -0.288955, -0.152900,
		31.296095, 33.749203, 34.137947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685738, 33.911812, 34.448414>,  <31.957632, 33.951469, 34.244980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685738, 33.911812, 34.448414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062534, 33.797100, 34.378670>,  <33.288612, 33.728271, 34.336823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062534, 33.797100, 34.378670>,  <32.685738, 33.911812, 34.448414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062534, 33.797100, 34.378670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138868, -0.139907, 0.980378,
		-0.305549, -0.947725, -0.091967,
		0.941996, -0.286782, -0.174357,
		33.345135, 33.711067, 34.326363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773998, 33.146202, 34.822468>,  <32.685738, 33.911812, 34.448414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773998, 33.146202, 34.822468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122498, 33.336941, 34.775928>,  <33.331596, 33.451385, 34.748005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122498, 33.336941, 34.775928>,  <32.773998, 33.146202, 34.822468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122498, 33.336941, 34.775928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259443, -0.246177, 0.933856,
		0.416667, -0.843808, -0.338197,
		0.871251, 0.476850, -0.116346,
		33.383873, 33.479996, 34.741024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338337, 32.649395, 35.064255>,  <32.773998, 33.146202, 34.822468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338337, 32.649395, 35.064255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470932, 33.026749, 35.059395>,  <33.550488, 33.253159, 35.056480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470932, 33.026749, 35.059395>,  <33.338337, 32.649395, 35.064255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470932, 33.026749, 35.059395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153244, -0.041134, 0.987332,
		0.930932, -0.329147, -0.158203,
		0.331484, 0.943383, -0.012147,
		33.570377, 33.309765, 35.055752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084415, 32.639202, 35.274864>,  <33.338337, 32.649395, 35.064255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084415, 32.639202, 35.274864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940262, 33.003899, 35.353714>,  <33.853771, 33.222717, 35.401024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940262, 33.003899, 35.353714>,  <34.084415, 32.639202, 35.274864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940262, 33.003899, 35.353714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274279, -0.098406, 0.956602,
		0.891568, 0.398811, -0.214607,
		-0.360385, 0.911738, 0.197122,
		33.832146, 33.277420, 35.412849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467278, 32.930946, 35.818733>,  <34.084415, 32.639202, 35.274864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467278, 32.930946, 35.818733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161884, 33.189110, 35.809441>,  <33.978649, 33.344006, 35.803864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161884, 33.189110, 35.809441>,  <34.467278, 32.930946, 35.818733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161884, 33.189110, 35.809441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112065, -0.096972, 0.988958,
		0.636026, 0.757660, 0.146364,
		-0.763487, 0.645405, -0.023230,
		33.932838, 33.382732, 35.802471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685669, 33.544857, 36.263443>,  <34.467278, 32.930946, 35.818733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685669, 33.544857, 36.263443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288635, 33.531254, 36.216759>,  <34.050415, 33.523090, 36.188747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288635, 33.531254, 36.216759>,  <34.685669, 33.544857, 36.263443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288635, 33.531254, 36.216759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117188, 0.012361, 0.993033,
		-0.032333, 0.999345, -0.016255,
		-0.992583, -0.034012, -0.116711,
		33.990860, 33.521049, 36.181744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441246, 33.977524, 36.822945>,  <34.685669, 33.544857, 36.263443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441246, 33.977524, 36.822945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131481, 33.749096, 36.714012>,  <33.945621, 33.612038, 36.648655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131481, 33.749096, 36.714012>,  <34.441246, 33.977524, 36.822945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131481, 33.749096, 36.714012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214407, -0.168081, 0.962174,
		-0.595242, 0.803510, 0.007723,
		-0.774414, -0.571070, -0.272327,
		33.899158, 33.577774, 36.632313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852180, 34.201195, 37.092770>,  <34.441246, 33.977524, 36.822945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852180, 34.201195, 37.092770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765980, 33.814686, 37.036377>,  <33.714260, 33.582779, 37.002541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765980, 33.814686, 37.036377>,  <33.852180, 34.201195, 37.092770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765980, 33.814686, 37.036377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204564, -0.096499, 0.974085,
		-0.954837, 0.238754, -0.176869,
		-0.215499, -0.966273, -0.140981,
		33.701328, 33.524803, 36.994083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396656, 34.153355, 37.653278>,  <33.852180, 34.201195, 37.092770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396656, 34.153355, 37.653278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501606, 33.788219, 37.528133>,  <33.564575, 33.569138, 37.453045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501606, 33.788219, 37.528133>,  <33.396656, 34.153355, 37.653278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501606, 33.788219, 37.528133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131035, -0.354924, 0.925667,
		-0.956027, -0.201878, -0.212737,
		0.262377, -0.912839, -0.312864,
		33.580318, 33.514366, 37.434273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867325, 33.727711, 37.883331>,  <33.396656, 34.153355, 37.653278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867325, 33.727711, 37.883331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133541, 33.432796, 37.836918>,  <33.293270, 33.255848, 37.809071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133541, 33.432796, 37.836918>,  <32.867325, 33.727711, 37.883331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133541, 33.432796, 37.836918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361134, -0.454165, 0.814442,
		-0.653176, -0.500141, -0.568524,
		0.665540, -0.737287, -0.116031,
		33.333202, 33.211609, 37.802109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500671, 33.088238, 38.085842>,  <32.867325, 33.727711, 37.883331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500671, 33.088238, 38.085842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891151, 33.004444, 38.108261>,  <33.125439, 32.954166, 38.121712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891151, 33.004444, 38.108261>,  <32.500671, 33.088238, 38.085842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891151, 33.004444, 38.108261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169929, -0.578421, 0.797843,
		-0.134716, -0.788382, -0.600255,
		0.976205, -0.209483, 0.056046,
		33.184013, 32.941601, 38.125076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512974, 32.395714, 38.032387>,  <32.500671, 33.088238, 38.085842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512974, 32.395714, 38.032387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853115, 32.515800, 38.205257>,  <33.057198, 32.587852, 38.308979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853115, 32.515800, 38.205257>,  <32.512974, 32.395714, 38.032387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853115, 32.515800, 38.205257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116410, -0.693612, 0.710880,
		0.513182, -0.654806, -0.554864,
		0.850349, 0.300219, 0.432175,
		33.108219, 32.605865, 38.334911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848850, 31.774960, 38.308475>,  <32.512974, 32.395714, 38.032387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848850, 31.774960, 38.308475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038116, 32.068665, 38.503193>,  <33.151676, 32.244888, 38.620026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038116, 32.068665, 38.503193>,  <32.848850, 31.774960, 38.308475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038116, 32.068665, 38.503193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004861, -0.550383, 0.834898,
		0.880960, -0.397411, -0.256853,
		0.473165, 0.734264, 0.486797,
		33.180065, 32.288944, 38.649231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351364, 31.522873, 38.561596>,  <32.848850, 31.774960, 38.308475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351364, 31.522873, 38.561596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302345, 31.841759, 38.798046>,  <33.272934, 32.033089, 38.939919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302345, 31.841759, 38.798046>,  <33.351364, 31.522873, 38.561596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302345, 31.841759, 38.798046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253393, -0.601012, 0.758008,
		0.959569, -0.056894, 0.275663,
		-0.122551, 0.797212, 0.591130,
		33.265579, 32.080921, 38.975384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671135, 31.352274, 39.163410>,  <33.351364, 31.522873, 38.561596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671135, 31.352274, 39.163410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416241, 31.646776, 39.254498>,  <33.263302, 31.823477, 39.309151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416241, 31.646776, 39.254498>,  <33.671135, 31.352274, 39.163410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416241, 31.646776, 39.254498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293463, -0.505041, 0.811673,
		0.712604, 0.450404, 0.537896,
		-0.637240, 0.736254, 0.227717,
		33.225067, 31.867653, 39.322811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647404, 31.367970, 39.894066>,  <33.671135, 31.352274, 39.163410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647404, 31.367970, 39.894066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315220, 31.571167, 39.802608>,  <33.115910, 31.693085, 39.747734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315220, 31.571167, 39.802608>,  <33.647404, 31.367970, 39.894066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315220, 31.571167, 39.802608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441039, -0.348822, 0.826927,
		0.340318, 0.787571, 0.513728,
		-0.830463, 0.507992, -0.228639,
		33.066082, 31.723564, 39.734016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425522, 31.633783, 40.472485>,  <33.647404, 31.367970, 39.894066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425522, 31.633783, 40.472485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120270, 31.591488, 40.217472>,  <32.937119, 31.566111, 40.064465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120270, 31.591488, 40.217472>,  <33.425522, 31.633783, 40.472485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120270, 31.591488, 40.217472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494487, -0.539600, 0.681406,
		-0.416063, 0.835255, 0.359500,
		-0.763134, -0.105740, -0.637530,
		32.891331, 31.559767, 40.026215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834690, 31.854033, 40.816277>,  <33.425522, 31.633783, 40.472485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834690, 31.854033, 40.816277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663116, 31.636175, 40.528004>,  <32.560173, 31.505461, 40.355038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663116, 31.636175, 40.528004>,  <32.834690, 31.854033, 40.816277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663116, 31.636175, 40.528004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528088, -0.496092, 0.689214,
		-0.732900, 0.676208, -0.074830,
		-0.428930, -0.544642, -0.720684,
		32.534439, 31.472782, 40.311798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236549, 31.680531, 41.119453>,  <32.834690, 31.854033, 40.816277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236549, 31.680531, 41.119453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212711, 31.434502, 40.804966>,  <32.198410, 31.286884, 40.616276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212711, 31.434502, 40.804966>,  <32.236549, 31.680531, 41.119453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212711, 31.434502, 40.804966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601562, -0.606403, 0.519999,
		-0.796600, 0.503947, -0.333864,
		-0.059596, -0.615071, -0.786216,
		32.194832, 31.249981, 40.569099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552040, 31.596777, 40.973591>,  <32.236549, 31.680531, 41.119453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552040, 31.596777, 40.973591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742392, 31.280882, 40.818748>,  <31.856604, 31.091345, 40.725842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742392, 31.280882, 40.818748>,  <31.552040, 31.596777, 40.973591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742392, 31.280882, 40.818748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611237, -0.613443, 0.500077,
		-0.632401, -0.001357, -0.774640,
		0.475876, -0.789738, -0.387113,
		31.885155, 31.043961, 40.702618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024448, 31.068573, 40.676853>,  <31.552040, 31.596777, 40.973591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024448, 31.068573, 40.676853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356216, 30.879599, 40.796093>,  <31.555279, 30.766214, 40.867638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356216, 30.879599, 40.796093>,  <31.024448, 31.068573, 40.676853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356216, 30.879599, 40.796093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513658, -0.435238, 0.739408,
		-0.219577, -0.766403, -0.603666,
		0.829422, -0.472435, 0.298100,
		31.605043, 30.737867, 40.885525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767544, 30.440985, 40.884422>,  <31.024448, 31.068573, 40.676853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767544, 30.440985, 40.884422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137762, 30.394770, 41.028656>,  <31.359892, 30.367041, 41.115196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137762, 30.394770, 41.028656>,  <30.767544, 30.440985, 40.884422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137762, 30.394770, 41.028656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368723, -0.491559, 0.788932,
		0.086095, -0.863146, -0.497561,
		0.925544, -0.115539, 0.360582,
		31.415424, 30.360107, 41.136829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869867, 29.820185, 41.089275>,  <30.767544, 30.440985, 40.884422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869867, 29.820185, 41.089275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165518, 29.975533, 41.309406>,  <31.342909, 30.068741, 41.441486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165518, 29.975533, 41.309406>,  <30.869867, 29.820185, 41.089275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165518, 29.975533, 41.309406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428572, -0.359156, 0.829055,
		0.519633, -0.848633, -0.099018,
		0.739126, 0.388368, 0.550329,
		31.387257, 30.092043, 41.474506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031387, 29.276783, 41.665440>,  <30.869867, 29.820185, 41.089275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031387, 29.276783, 41.665440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149160, 29.627800, 41.816822>,  <31.219824, 29.838409, 41.907650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149160, 29.627800, 41.816822>,  <31.031387, 29.276783, 41.665440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149160, 29.627800, 41.816822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452441, -0.220822, 0.864022,
		0.841788, -0.425624, 0.332019,
		0.294431, 0.877543, 0.378455,
		31.237490, 29.891064, 41.930359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250065, 29.127954, 42.273083>,  <31.031387, 29.276783, 41.665440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250065, 29.127954, 42.273083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192556, 29.521023, 42.319889>,  <31.158051, 29.756863, 42.347973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192556, 29.521023, 42.319889>,  <31.250065, 29.127954, 42.273083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192556, 29.521023, 42.319889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607214, -0.180966, 0.773655,
		0.781422, 0.040176, 0.622708,
		-0.143771, 0.982668, 0.117015,
		31.149426, 29.815823, 42.354992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398476, 29.218964, 42.950245>,  <31.250065, 29.127954, 42.273083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398476, 29.218964, 42.950245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198256, 29.549730, 42.847752>,  <31.078123, 29.748190, 42.786255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198256, 29.549730, 42.847752>,  <31.398476, 29.218964, 42.950245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198256, 29.549730, 42.847752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545199, -0.071196, 0.835278,
		0.672463, 0.557798, 0.486472,
		-0.500551, 0.826917, -0.256235,
		31.048090, 29.797806, 42.770882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342834, 29.635593, 43.571609>,  <31.398476, 29.218964, 42.950245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342834, 29.635593, 43.571609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047983, 29.785595, 43.346748>,  <30.871073, 29.875595, 43.211834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047983, 29.785595, 43.346748>,  <31.342834, 29.635593, 43.571609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047983, 29.785595, 43.346748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620309, -0.045509, 0.783036,
		0.268059, 0.925905, 0.266164,
		-0.737130, 0.375004, -0.562149,
		30.826843, 29.898096, 43.178104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122349, 30.180508, 43.943790>,  <31.342834, 29.635593, 43.571609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122349, 30.180508, 43.943790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829586, 30.097235, 43.684261>,  <30.653929, 30.047272, 43.528542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829586, 30.097235, 43.684261>,  <31.122349, 30.180508, 43.943790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829586, 30.097235, 43.684261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666358, 0.019667, 0.745372,
		-0.142411, 0.977893, -0.153117,
		-0.731905, -0.208180, -0.648826,
		30.610014, 30.034781, 43.489613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528532, 30.663002, 44.130730>,  <31.122349, 30.180508, 43.943790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528532, 30.663002, 44.130730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361382, 30.356426, 43.935608>,  <30.261091, 30.172482, 43.818535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361382, 30.356426, 43.935608>,  <30.528532, 30.663002, 44.130730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361382, 30.356426, 43.935608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626757, -0.145493, 0.765512,
		-0.657690, 0.625622, -0.419573,
		-0.417876, -0.766439, -0.487802,
		30.236019, 30.126495, 43.789268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752478, 30.823963, 44.008850>,  <30.528532, 30.663002, 44.130730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752478, 30.823963, 44.008850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795467, 30.427202, 43.981789>,  <29.821260, 30.189146, 43.965549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795467, 30.427202, 43.981789>,  <29.752478, 30.823963, 44.008850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795467, 30.427202, 43.981789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684297, -0.123168, 0.718726,
		-0.721240, -0.030947, -0.691994,
		0.107474, -0.991903, -0.067657,
		29.827709, 30.129631, 43.961491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217617, 30.682655, 44.407642>,  <29.752478, 30.823963, 44.008850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217617, 30.682655, 44.407642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398542, 30.329472, 44.357368>,  <29.507097, 30.117561, 44.327206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398542, 30.329472, 44.357368>,  <29.217617, 30.682655, 44.407642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398542, 30.329472, 44.357368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441806, -0.344246, 0.828434,
		-0.774739, -0.319184, -0.545803,
		0.452314, -0.882959, -0.125684,
		29.534237, 30.064585, 44.319664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647760, 30.202463, 44.401176>,  <29.217617, 30.682655, 44.407642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647760, 30.202463, 44.401176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983622, 30.009550, 44.501087>,  <29.185139, 29.893803, 44.561035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983622, 30.009550, 44.501087>,  <28.647760, 30.202463, 44.401176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983622, 30.009550, 44.501087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484840, -0.458317, 0.744900,
		-0.244776, -0.746558, -0.618657,
		0.839652, -0.482283, 0.249776,
		29.235518, 29.864864, 44.576019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474134, 29.578045, 44.544636>,  <28.647760, 30.202463, 44.401176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474134, 29.578045, 44.544636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813570, 29.590822, 44.755871>,  <29.017231, 29.598488, 44.882614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813570, 29.590822, 44.755871>,  <28.474134, 29.578045, 44.544636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813570, 29.590822, 44.755871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382269, -0.653039, 0.653767,
		0.365748, -0.756651, -0.541949,
		0.848586, 0.031943, 0.528091,
		29.068146, 29.600405, 44.914299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635103, 28.886320, 44.690777>,  <28.474134, 29.578045, 44.544636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635103, 28.886320, 44.690777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831112, 29.107721, 44.960152>,  <28.948717, 29.240562, 45.121777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831112, 29.107721, 44.960152>,  <28.635103, 28.886320, 44.690777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831112, 29.107721, 44.960152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334063, -0.594321, 0.731562,
		0.805159, -0.583450, -0.106324,
		0.490021, 0.553505, 0.673432,
		28.978119, 29.273773, 45.162182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949961, 28.431725, 45.143845>,  <28.635103, 28.886320, 44.690777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949961, 28.431725, 45.143845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873127, 28.781921, 45.321209>,  <28.827026, 28.992041, 45.427628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873127, 28.781921, 45.321209>,  <28.949961, 28.431725, 45.143845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873127, 28.781921, 45.321209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557197, -0.469230, 0.685095,
		0.807858, -0.115470, 0.577955,
		-0.192086, 0.875494, 0.443411,
		28.815502, 29.044569, 45.454231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133831, 28.415167, 45.862888>,  <28.949961, 28.431725, 45.143845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133831, 28.415167, 45.862888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826656, 28.669731, 45.833889>,  <28.642351, 28.822470, 45.816490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826656, 28.669731, 45.833889>,  <29.133831, 28.415167, 45.862888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826656, 28.669731, 45.833889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575411, -0.635713, 0.514559,
		0.281382, 0.436866, 0.854384,
		-0.767936, 0.636410, -0.072499,
		28.596275, 28.860655, 45.812138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826107, 28.444294, 46.487537>,  <29.133831, 28.415167, 45.862888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826107, 28.444294, 46.487537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533020, 28.584337, 46.254108>,  <28.357168, 28.668364, 46.114052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533020, 28.584337, 46.254108>,  <28.826107, 28.444294, 46.487537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533020, 28.584337, 46.254108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656276, -0.590425, 0.469788,
		-0.180078, 0.727203, 0.662380,
		-0.732717, 0.350106, -0.583568,
		28.313206, 28.689369, 46.079037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265297, 28.505560, 46.905857>,  <28.826107, 28.444294, 46.487537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265297, 28.505560, 46.905857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104170, 28.499670, 46.539791>,  <28.007494, 28.496136, 46.320152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104170, 28.499670, 46.539791>,  <28.265297, 28.505560, 46.905857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104170, 28.499670, 46.539791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582631, -0.767003, 0.268791,
		-0.705890, 0.641475, 0.300381,
		-0.402816, -0.014725, -0.915163,
		27.983326, 28.495253, 46.265244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468969, 28.394026, 47.064617>,  <28.265297, 28.505560, 46.905857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468969, 28.394026, 47.064617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538654, 28.292643, 46.684006>,  <27.580465, 28.231812, 46.455639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538654, 28.292643, 46.684006>,  <27.468969, 28.394026, 47.064617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538654, 28.292643, 46.684006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503337, -0.853451, 0.135180,
		-0.846346, 0.455391, -0.276256,
		0.174211, -0.253459, -0.951530,
		27.590918, 28.216604, 46.398548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718069, 28.286903, 46.878777>,  <27.468969, 28.394026, 47.064617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718069, 28.286903, 46.878777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986900, 28.098806, 46.649979>,  <27.148199, 27.985949, 46.512699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986900, 28.098806, 46.649979>,  <26.718069, 28.286903, 46.878777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986900, 28.098806, 46.649979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654676, -0.738285, -0.162276,
		-0.345986, 0.483534, -0.804045,
		0.672080, -0.470244, -0.571995,
		27.188524, 27.957733, 46.478378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291449, 27.928158, 46.450035>,  <26.718069, 28.286903, 46.878777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291449, 27.928158, 46.450035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643620, 27.752899, 46.377510>,  <26.854921, 27.647743, 46.333996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643620, 27.752899, 46.377510>,  <26.291449, 27.928158, 46.450035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643620, 27.752899, 46.377510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454510, -0.888765, -0.059306,
		-0.135158, 0.134622, -0.981636,
		0.880428, -0.438148, -0.181311,
		26.907747, 27.621454, 46.323116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200277, 27.492985, 45.901184>,  <26.291449, 27.928158, 46.450035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200277, 27.492985, 45.901184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521183, 27.327703, 46.073524>,  <26.713726, 27.228535, 46.176929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521183, 27.327703, 46.073524>,  <26.200277, 27.492985, 45.901184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521183, 27.327703, 46.073524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266082, -0.893586, -0.361530,
		0.534388, 0.175401, -0.826840,
		0.802265, -0.413204, 0.430851,
		26.761862, 27.203743, 46.202782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734991, 27.150627, 45.439499>,  <26.200277, 27.492985, 45.901184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734991, 27.150627, 45.439499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728020, 26.974239, 45.798439>,  <26.723837, 26.868406, 46.013805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728020, 26.974239, 45.798439>,  <26.734991, 27.150627, 45.439499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728020, 26.974239, 45.798439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271506, -0.861679, -0.428712,
		0.962279, -0.251109, -0.104708,
		-0.017429, -0.440969, 0.897353,
		26.722792, 26.841949, 46.067646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116264, 26.475849, 45.590336>,  <26.734991, 27.150627, 45.439499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116264, 26.475849, 45.590336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836521, 26.419191, 45.870575>,  <26.668674, 26.385197, 46.038719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836521, 26.419191, 45.870575>,  <27.116264, 26.475849, 45.590336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836521, 26.419191, 45.870575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055414, -0.987962, -0.144429,
		0.712619, -0.062185, 0.698790,
		-0.699359, -0.141646, 0.700595,
		26.626713, 26.376698, 46.080753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339933, 25.862156, 46.019642>,  <27.116264, 26.475849, 45.590336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339933, 25.862156, 46.019642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946913, 25.902096, 46.082413>,  <26.711102, 25.926060, 46.120075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946913, 25.902096, 46.082413>,  <27.339933, 25.862156, 46.019642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946913, 25.902096, 46.082413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092981, -0.994385, 0.050523,
		0.161089, 0.035050, 0.986317,
		-0.982550, 0.099848, 0.156926,
		26.652147, 25.932051, 46.129490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168488, 25.507704, 46.670765>,  <27.339933, 25.862156, 46.019642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168488, 25.507704, 46.670765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867582, 25.531380, 46.408283>,  <26.687040, 25.545586, 46.250793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867582, 25.531380, 46.408283>,  <27.168488, 25.507704, 46.670765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867582, 25.531380, 46.408283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020540, -0.997579, -0.066438,
		-0.658545, -0.036500, 0.751656,
		-0.752261, 0.059192, -0.656201,
		26.641905, 25.549137, 46.211422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645033, 25.092237, 46.787235>,  <27.168488, 25.507704, 46.670765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645033, 25.092237, 46.787235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677061, 25.167057, 46.395603>,  <26.696278, 25.211948, 46.160622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677061, 25.167057, 46.395603>,  <26.645033, 25.092237, 46.787235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677061, 25.167057, 46.395603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069747, -0.978777, -0.192696,
		-0.994346, 0.083717, -0.065325,
		0.080070, 0.187050, -0.979082,
		26.701082, 25.223171, 46.101879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166721, 24.625008, 46.466480>,  <26.645033, 25.092237, 46.787235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166721, 24.625008, 46.466480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428905, 24.758533, 46.195499>,  <26.586216, 24.838650, 46.032913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428905, 24.758533, 46.195499>,  <26.166721, 24.625008, 46.466480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428905, 24.758533, 46.195499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086660, -0.924331, -0.371621,
		-0.750240, 0.184876, -0.634792,
		0.655462, 0.333816, -0.677449,
		26.625544, 24.858679, 45.992264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121367, 24.253843, 45.756252>,  <26.166721, 24.625008, 46.466480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121367, 24.253843, 45.756252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497915, 24.388056, 45.770325>,  <26.723845, 24.468582, 45.778767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497915, 24.388056, 45.770325>,  <26.121367, 24.253843, 45.756252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497915, 24.388056, 45.770325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304323, -0.799521, -0.517836,
		-0.145621, 0.498183, -0.854756,
		0.941372, 0.335530, 0.035182,
		26.780327, 24.488714, 45.780880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365818, 24.799595, 45.301907>,  <26.121367, 24.253843, 45.756252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365818, 24.799595, 45.301907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565508, 25.073147, 45.089085>,  <26.685322, 25.237278, 44.961391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565508, 25.073147, 45.089085>,  <26.365818, 24.799595, 45.301907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565508, 25.073147, 45.089085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433414, 0.334622, 0.836768,
		0.750286, -0.648335, -0.129352,
		0.499222, 0.683879, -0.532059,
		26.715275, 25.278311, 44.929466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178795, 24.778532, 45.370861>,  <26.365818, 24.799595, 45.301907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178795, 24.778532, 45.370861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993605, 25.130138, 45.325279>,  <26.882490, 25.341103, 45.297932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993605, 25.130138, 45.325279>,  <27.178795, 24.778532, 45.370861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993605, 25.130138, 45.325279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259202, 0.257205, 0.930946,
		0.847625, 0.401468, -0.346922,
		-0.462975, 0.879016, -0.113952,
		26.854712, 25.393843, 45.291092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921297, 24.662718, 45.453838>,  <27.178795, 24.778532, 45.370861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921297, 24.662718, 45.453838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884192, 25.060459, 45.433224>,  <27.861929, 25.299105, 45.420853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884192, 25.060459, 45.433224>,  <27.921297, 24.662718, 45.453838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884192, 25.060459, 45.433224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573792, 0.011081, -0.818926,
		-0.813731, -0.105538, -0.571580,
		-0.092762, 0.994353, -0.051540,
		27.856363, 25.358765, 45.417763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649202, 24.837507, 44.819679>,  <27.921297, 24.662718, 45.453838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649202, 24.837507, 44.819679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871565, 25.143301, 44.950233>,  <28.004982, 25.326778, 45.028564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871565, 25.143301, 44.950233>,  <27.649202, 24.837507, 44.819679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871565, 25.143301, 44.950233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327502, 0.159455, -0.931298,
		-0.764009, 0.624607, -0.161729,
		0.555907, 0.764486, 0.326386,
		28.038338, 25.372646, 45.048149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563702, 25.455576, 44.404366>,  <27.649202, 24.837507, 44.819679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563702, 25.455576, 44.404366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921038, 25.519007, 44.572556>,  <28.135439, 25.557066, 44.673470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921038, 25.519007, 44.572556>,  <27.563702, 25.455576, 44.404366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921038, 25.519007, 44.572556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388227, 0.198905, -0.899843,
		-0.226330, 0.967104, 0.116125,
		0.893339, 0.158579, 0.420474,
		28.189039, 25.566580, 44.698696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873863, 25.759317, 43.877739>,  <27.563702, 25.455576, 44.404366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873863, 25.759317, 43.877739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182735, 25.677763, 44.118462>,  <28.368059, 25.628830, 44.262894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182735, 25.677763, 44.118462>,  <27.873863, 25.759317, 43.877739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182735, 25.677763, 44.118462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617197, 0.015564, -0.786655,
		0.151020, 0.978871, 0.137855,
		0.772180, -0.203885, 0.601805,
		28.414389, 25.616598, 44.299004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433048, 26.238100, 43.876537>,  <27.873863, 25.759317, 43.877739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433048, 26.238100, 43.876537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601845, 25.888018, 43.971142>,  <28.703123, 25.677967, 44.027905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601845, 25.888018, 43.971142>,  <28.433048, 26.238100, 43.876537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601845, 25.888018, 43.971142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642231, 0.104453, -0.759361,
		0.639894, 0.472336, 0.606163,
		0.421989, -0.875207, 0.236510,
		28.728441, 25.625456, 44.042095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106079, 26.335670, 43.575527>,  <28.433048, 26.238100, 43.876537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106079, 26.335670, 43.575527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133488, 25.953678, 43.690987>,  <29.149933, 25.724483, 43.760262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133488, 25.953678, 43.690987>,  <29.106079, 26.335670, 43.575527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133488, 25.953678, 43.690987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813040, -0.114219, -0.570894,
		0.578161, 0.273798, 0.768612,
		0.068520, -0.954981, 0.288646,
		29.154043, 25.667183, 43.777580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854965, 26.196440, 43.832367>,  <29.106079, 26.335670, 43.575527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854965, 26.196440, 43.832367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670158, 25.860901, 43.717213>,  <29.559275, 25.659576, 43.648121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670158, 25.860901, 43.717213>,  <29.854965, 26.196440, 43.832367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670158, 25.860901, 43.717213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696085, -0.141848, -0.703808,
		0.549552, -0.525560, 0.649445,
		-0.462016, -0.838848, -0.287881,
		29.531553, 25.609247, 43.630848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331392, 25.728041, 43.808464>,  <29.854965, 26.196440, 43.832367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331392, 25.728041, 43.808464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045609, 25.577007, 43.572845>,  <29.874138, 25.486387, 43.431473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045609, 25.577007, 43.572845>,  <30.331392, 25.728041, 43.808464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045609, 25.577007, 43.572845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637749, -0.005146, -0.770227,
		0.287793, -0.925962, 0.244480,
		-0.714459, -0.377583, -0.589050,
		29.831270, 25.463732, 43.396130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744978, 25.191418, 43.478539>,  <30.331392, 25.728041, 43.808464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744978, 25.191418, 43.478539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403385, 25.247272, 43.278053>,  <30.198429, 25.280785, 43.157761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403385, 25.247272, 43.278053>,  <30.744978, 25.191418, 43.478539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403385, 25.247272, 43.278053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502455, -0.028836, -0.864122,
		-0.135116, -0.989783, -0.045536,
		-0.853981, 0.139636, -0.501217,
		30.147190, 25.289164, 43.127689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739439, 24.712391, 42.875549>,  <30.744978, 25.191418, 43.478539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739439, 24.712391, 42.875549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482925, 25.009060, 42.796883>,  <30.329018, 25.187061, 42.749683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482925, 25.009060, 42.796883>,  <30.739439, 24.712391, 42.875549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482925, 25.009060, 42.796883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378965, 0.083278, -0.921656,
		-0.667189, -0.665572, -0.334472,
		-0.641283, 0.741673, -0.196667,
		30.290541, 25.231562, 42.737885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697077, 24.646326, 42.168915>,  <30.739439, 24.712391, 42.875549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697077, 24.646326, 42.168915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522310, 24.999903, 42.235550>,  <30.417450, 25.212049, 42.275532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522310, 24.999903, 42.235550>,  <30.697077, 24.646326, 42.168915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522310, 24.999903, 42.235550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198917, 0.275564, -0.940477,
		-0.877232, -0.377772, -0.296230,
		-0.436916, 0.883941, 0.166588,
		30.391235, 25.265085, 42.285526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280624, 24.762613, 41.562057>,  <30.697077, 24.646326, 42.168915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280624, 24.762613, 41.562057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345060, 25.118689, 41.732521>,  <30.383722, 25.332335, 41.834801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345060, 25.118689, 41.732521>,  <30.280624, 24.762613, 41.562057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345060, 25.118689, 41.732521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089657, 0.416818, -0.904557,
		-0.982859, 0.183922, -0.012667,
		0.161088, 0.890188, 0.426164,
		30.393387, 25.385746, 41.860371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945347, 25.245121, 41.135532>,  <30.280624, 24.762613, 41.562057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945347, 25.245121, 41.135532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200359, 25.471203, 41.344948>,  <30.353367, 25.606852, 41.470596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200359, 25.471203, 41.344948>,  <29.945347, 25.245121, 41.135532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200359, 25.471203, 41.344948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297340, 0.446393, -0.843992,
		-0.710732, 0.693743, 0.116533,
		0.637533, 0.565202, 0.523543,
		30.391619, 25.640764, 41.502010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820969, 25.898222, 40.971928>,  <29.945347, 25.245121, 41.135532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820969, 25.898222, 40.971928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197672, 25.938728, 41.100201>,  <30.423695, 25.963032, 41.177162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197672, 25.938728, 41.100201>,  <29.820969, 25.898222, 40.971928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197672, 25.938728, 41.100201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200037, 0.597844, -0.776253,
		-0.270325, 0.795190, 0.542768,
		0.941759, 0.101267, 0.320680,
		30.480200, 25.969109, 41.196404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937283, 26.606733, 40.898132>,  <29.820969, 25.898222, 40.971928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937283, 26.606733, 40.898132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293699, 26.430134, 40.940327>,  <30.507549, 26.324175, 40.965641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293699, 26.430134, 40.940327>,  <29.937283, 26.606733, 40.898132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293699, 26.430134, 40.940327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381366, 0.602091, -0.701460,
		0.246184, 0.665256, 0.704860,
		0.891041, -0.441498, 0.105481,
		30.561012, 26.297684, 40.971970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408495, 27.058138, 41.065372>,  <29.937283, 26.606733, 40.898132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408495, 27.058138, 41.065372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610264, 26.764130, 40.884129>,  <30.731325, 26.587725, 40.775383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610264, 26.764130, 40.884129>,  <30.408495, 27.058138, 41.065372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610264, 26.764130, 40.884129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368194, 0.657756, -0.657108,
		0.781020, 0.164629, 0.602416,
		0.504421, -0.735020, -0.453105,
		30.761591, 26.543623, 40.748196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114468, 27.261513, 40.964447>,  <30.408495, 27.058138, 41.065372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114468, 27.261513, 40.964447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047266, 26.973295, 40.695347>,  <31.006945, 26.800365, 40.533886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047266, 26.973295, 40.695347>,  <31.114468, 27.261513, 40.964447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047266, 26.973295, 40.695347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536565, 0.505658, -0.675579,
		0.826965, -0.474475, 0.301665,
		-0.168006, -0.720543, -0.672749,
		30.996864, 26.757132, 40.493523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484631, 27.494120, 40.440445>,  <31.114468, 27.261513, 40.964447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484631, 27.494120, 40.440445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341223, 27.177542, 40.242424>,  <31.255178, 26.987595, 40.123611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341223, 27.177542, 40.242424>,  <31.484631, 27.494120, 40.440445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341223, 27.177542, 40.242424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226103, 0.440898, -0.868612,
		0.905726, -0.423348, 0.020877,
		-0.358521, -0.791445, -0.495053,
		31.233665, 26.940107, 40.093906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015839, 27.293861, 39.967575>,  <31.484631, 27.494120, 40.440445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015839, 27.293861, 39.967575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694273, 27.138485, 39.787426>,  <31.501333, 27.045259, 39.679337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694273, 27.138485, 39.787426>,  <32.015839, 27.293861, 39.967575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694273, 27.138485, 39.787426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328576, 0.341123, -0.880723,
		0.495740, -0.856008, -0.146601,
		-0.803915, -0.388440, -0.450372,
		31.453098, 27.021954, 39.652313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228600, 26.855648, 39.335728>,  <32.015839, 27.293861, 39.967575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228600, 26.855648, 39.335728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848892, 26.968628, 39.280430>,  <31.621067, 27.036415, 39.247250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848892, 26.968628, 39.280430>,  <32.228600, 26.855648, 39.335728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848892, 26.968628, 39.280430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231139, 0.328616, -0.915744,
		-0.213222, -0.901240, -0.377230,
		-0.949269, 0.282450, -0.138243,
		31.564112, 27.053362, 39.238956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126587, 26.713652, 38.618851>,  <32.228600, 26.855648, 39.335728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126587, 26.713652, 38.618851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845751, 26.976049, 38.729660>,  <31.677250, 27.133488, 38.796146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845751, 26.976049, 38.729660>,  <32.126587, 26.713652, 38.618851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845751, 26.976049, 38.729660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132757, 0.502794, -0.854151,
		-0.699605, -0.562913, -0.440094,
		-0.702089, 0.655993, 0.277027,
		31.635124, 27.172848, 38.812767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832411, 26.767273, 37.951160>,  <32.126587, 26.713652, 38.618851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832411, 26.767273, 37.951160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762356, 27.074896, 38.197048>,  <31.720324, 27.259470, 38.344582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762356, 27.074896, 38.197048>,  <31.832411, 26.767273, 37.951160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762356, 27.074896, 38.197048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427213, 0.621888, -0.656311,
		-0.887026, 0.147672, -0.437466,
		-0.175136, 0.769056, 0.614719,
		31.709814, 27.305613, 38.381462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557241, 27.231560, 37.525475>,  <31.832411, 26.767273, 37.951160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557241, 27.231560, 37.525475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667896, 27.443184, 37.846363>,  <31.734289, 27.570158, 38.038898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667896, 27.443184, 37.846363>,  <31.557241, 27.231560, 37.525475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667896, 27.443184, 37.846363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307797, 0.742043, -0.595511,
		-0.910347, 0.411664, 0.042435,
		0.276639, 0.529060, 0.802226,
		31.750889, 27.601902, 38.087032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327484, 27.871082, 37.380325>,  <31.557241, 27.231560, 37.525475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327484, 27.871082, 37.380325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573597, 27.958075, 37.683411>,  <31.721264, 28.010269, 37.865261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573597, 27.958075, 37.683411>,  <31.327484, 27.871082, 37.380325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573597, 27.958075, 37.683411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367317, 0.771376, -0.519671,
		-0.697500, 0.598065, 0.394730,
		0.615282, 0.217480, 0.757714,
		31.758181, 28.023319, 37.910725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198051, 28.554985, 37.509163>,  <31.327484, 27.871082, 37.380325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198051, 28.554985, 37.509163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558653, 28.454847, 37.650368>,  <31.775015, 28.394764, 37.735092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558653, 28.454847, 37.650368>,  <31.198051, 28.554985, 37.509163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558653, 28.454847, 37.650368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381312, 0.845262, -0.374343,
		-0.204672, 0.472079, 0.857468,
		0.901504, -0.250346, 0.353011,
		31.829103, 28.379744, 37.756271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446133, 29.184387, 37.736744>,  <31.198051, 28.554985, 37.509163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446133, 29.184387, 37.736744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759117, 28.940092, 37.688156>,  <31.946907, 28.793514, 37.659004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759117, 28.940092, 37.688156>,  <31.446133, 29.184387, 37.736744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759117, 28.940092, 37.688156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466472, 0.704110, -0.535381,
		0.412502, 0.362255, 0.835831,
		0.782462, -0.610737, -0.121465,
		31.993856, 28.756870, 37.651718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103363, 29.545574, 37.866055>,  <31.446133, 29.184387, 37.736744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103363, 29.545574, 37.866055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211430, 29.253969, 37.614483>,  <32.276272, 29.079006, 37.463539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211430, 29.253969, 37.614483>,  <32.103363, 29.545574, 37.866055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211430, 29.253969, 37.614483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501628, 0.664135, -0.554341,
		0.821813, -0.165720, 0.545124,
		0.270171, -0.729014, -0.628925,
		32.292480, 29.035265, 37.425804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711994, 29.642288, 37.697147>,  <32.103363, 29.545574, 37.866055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711994, 29.642288, 37.697147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644718, 29.392971, 37.391674>,  <32.604351, 29.243382, 37.208389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644718, 29.392971, 37.391674>,  <32.711994, 29.642288, 37.697147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644718, 29.392971, 37.391674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546535, 0.585784, -0.598461,
		0.820373, -0.518037, 0.242129,
		-0.168190, -0.623293, -0.763687,
		32.594261, 29.205982, 37.162567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258705, 29.751301, 37.364487>,  <32.711994, 29.642288, 37.697147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258705, 29.751301, 37.364487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025375, 29.575939, 37.090981>,  <32.885376, 29.470722, 36.926876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025375, 29.575939, 37.090981>,  <33.258705, 29.751301, 37.364487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025375, 29.575939, 37.090981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507432, 0.460630, -0.728240,
		0.634225, -0.771765, -0.046238,
		-0.583328, -0.438405, -0.683761,
		32.850376, 29.444418, 36.885853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782585, 29.413054, 36.942112>,  <33.258705, 29.751301, 37.364487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782585, 29.413054, 36.942112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446339, 29.455664, 36.729691>,  <33.244591, 29.481230, 36.602238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446339, 29.455664, 36.729691>,  <33.782585, 29.413054, 36.942112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446339, 29.455664, 36.729691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529651, 0.366722, -0.764843,
		0.113272, -0.924212, -0.364694,
		-0.840618, 0.106525, -0.531049,
		33.194153, 29.487621, 36.570377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977436, 29.167101, 36.319180>,  <33.782585, 29.413054, 36.942112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977436, 29.167101, 36.319180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662186, 29.394659, 36.225185>,  <33.473038, 29.531195, 36.168789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662186, 29.394659, 36.225185>,  <33.977436, 29.167101, 36.319180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662186, 29.394659, 36.225185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504011, 0.377329, -0.776914,
		-0.353318, -0.730739, -0.584112,
		-0.788124, 0.568897, -0.234983,
		33.425747, 29.565329, 36.154690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975861, 29.201553, 35.688957>,  <33.977436, 29.167101, 36.319180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975861, 29.201553, 35.688957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717255, 29.503511, 35.733051>,  <33.562092, 29.684687, 35.759506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717255, 29.503511, 35.733051>,  <33.975861, 29.201553, 35.688957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717255, 29.503511, 35.733051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511005, 0.535789, -0.672164,
		-0.566476, -0.378233, -0.732151,
		-0.646513, 0.754897, 0.110232,
		33.523300, 29.729980, 35.766121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616718, 29.437943, 34.995064>,  <33.975861, 29.201553, 35.688957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616718, 29.437943, 34.995064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613297, 29.738232, 35.259289>,  <33.611244, 29.918406, 35.417824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613297, 29.738232, 35.259289>,  <33.616718, 29.437943, 34.995064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613297, 29.738232, 35.259289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372639, 0.615397, -0.694570,
		-0.927937, 0.240210, -0.285012,
		-0.008553, 0.750723, 0.660561,
		33.610729, 29.963449, 35.457458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216709, 29.936995, 34.636890>,  <33.616718, 29.437943, 34.995064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216709, 29.936995, 34.636890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437973, 30.122120, 34.913967>,  <33.570732, 30.233194, 35.080212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437973, 30.122120, 34.913967>,  <33.216709, 29.936995, 34.636890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437973, 30.122120, 34.913967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294385, 0.669245, -0.682238,
		-0.779327, 0.581304, 0.233954,
		0.553160, 0.462814, 0.692688,
		33.603920, 30.260963, 35.121773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138088, 30.617670, 34.453922>,  <33.216709, 29.936995, 34.636890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138088, 30.617670, 34.453922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459606, 30.616932, 34.691887>,  <33.652515, 30.616489, 34.834663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459606, 30.616932, 34.691887>,  <33.138088, 30.617670, 34.453922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459606, 30.616932, 34.691887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421391, 0.707649, -0.567153,
		-0.419940, 0.706561, 0.569580,
		0.803791, -0.001846, 0.594909,
		33.700745, 30.616379, 34.870361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344639, 31.327606, 34.630493>,  <33.138088, 30.617670, 34.453922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344639, 31.327606, 34.630493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672951, 31.106220, 34.687061>,  <33.869938, 30.973389, 34.721004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672951, 31.106220, 34.687061>,  <33.344639, 31.327606, 34.630493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672951, 31.106220, 34.687061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551097, 0.701995, -0.451104,
		0.150392, 0.448194, 0.881195,
		0.820777, -0.553466, 0.141424,
		33.919186, 30.940180, 34.729488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868771, 31.894442, 34.835125>,  <33.344639, 31.327606, 34.630493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868771, 31.894442, 34.835125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070484, 31.572533, 34.709881>,  <34.191513, 31.379387, 34.634735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070484, 31.572533, 34.709881>,  <33.868771, 31.894442, 34.835125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070484, 31.572533, 34.709881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671340, 0.593423, -0.444019,
		0.543141, 0.013708, 0.839529,
		0.504282, -0.804774, -0.313109,
		34.221767, 31.331100, 34.615948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519119, 32.135921, 34.871819>,  <33.868771, 31.894442, 34.835125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519119, 32.135921, 34.871819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577412, 31.811638, 34.645008>,  <34.612389, 31.617067, 34.508923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577412, 31.811638, 34.645008>,  <34.519119, 32.135921, 34.871819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577412, 31.811638, 34.645008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679329, 0.498664, -0.538374,
		0.719218, -0.306738, 0.623408,
		0.145732, -0.810707, -0.567024,
		34.621132, 31.568426, 34.474899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169571, 32.071163, 34.833683>,  <34.519119, 32.135921, 34.871819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169571, 32.071163, 34.833683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011967, 31.899214, 34.508728>,  <34.917404, 31.796045, 34.313755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011967, 31.899214, 34.508728>,  <35.169571, 32.071163, 34.833683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011967, 31.899214, 34.508728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652405, 0.491781, -0.576644,
		0.647397, -0.757207, 0.086683,
		-0.394010, -0.429871, -0.812384,
		34.893764, 31.770252, 34.265015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764141, 31.949400, 34.387089>,  <35.169571, 32.071163, 34.833683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764141, 31.949400, 34.387089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430496, 31.934584, 34.166950>,  <35.230309, 31.925694, 34.034866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430496, 31.934584, 34.166950>,  <35.764141, 31.949400, 34.387089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430496, 31.934584, 34.166950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485822, 0.423148, -0.764802,
		0.261205, -0.905303, -0.334960,
		-0.834116, -0.037039, -0.550345,
		35.180260, 31.923471, 34.001846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920494, 31.562765, 34.951805>,  <35.764141, 31.949400, 34.387089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920494, 31.562765, 34.951805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185020, 31.726034, 35.203537>,  <36.343739, 31.823996, 35.354576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185020, 31.726034, 35.203537>,  <35.920494, 31.562765, 34.951805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185020, 31.726034, 35.203537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259720, -0.911688, 0.318386,
		0.703708, -0.047105, -0.708927,
		0.661318, 0.408173, 0.629328,
		36.383415, 31.848486, 35.392334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522141, 31.092445, 35.021362>,  <35.920494, 31.562765, 34.951805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522141, 31.092445, 35.021362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602081, 31.297026, 35.355663>,  <36.650047, 31.419773, 35.556244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602081, 31.297026, 35.355663>,  <36.522141, 31.092445, 35.021362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602081, 31.297026, 35.355663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382239, -0.826072, 0.414124,
		0.902193, 0.236692, -0.360590,
		0.199853, 0.511451, 0.835749,
		36.662037, 31.450460, 35.606388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286396, 31.051342, 35.290676>,  <36.522141, 31.092445, 35.021362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286396, 31.051342, 35.290676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029270, 31.123770, 35.588402>,  <36.874996, 31.167227, 35.767036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029270, 31.123770, 35.588402>,  <37.286396, 31.051342, 35.290676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029270, 31.123770, 35.588402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346968, -0.797451, 0.493645,
		0.682939, 0.575575, 0.449787,
		-0.642813, 0.181068, 0.744316,
		36.836426, 31.178089, 35.811695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503651, 30.540659, 35.756958>,  <37.286396, 31.051342, 35.290676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503651, 30.540659, 35.756958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159904, 30.653215, 35.927746>,  <36.953655, 30.720749, 36.030220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159904, 30.653215, 35.927746>,  <37.503651, 30.540659, 35.756958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159904, 30.653215, 35.927746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013014, -0.822671, 0.568369,
		0.511189, 0.493996, 0.703316,
		-0.859370, 0.281391, 0.426969,
		36.902092, 30.737633, 36.055836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622932, 30.421480, 36.502575>,  <37.503651, 30.540659, 35.756958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622932, 30.421480, 36.502575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225395, 30.427513, 36.458672>,  <36.986874, 30.431133, 36.432327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225395, 30.427513, 36.458672>,  <37.622932, 30.421480, 36.502575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225395, 30.427513, 36.458672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079521, -0.786934, 0.611891,
		-0.077145, 0.616852, 0.783289,
		-0.993843, 0.015084, -0.109761,
		36.927242, 30.432037, 36.425743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354485, 30.449953, 37.116142>,  <37.622932, 30.421480, 36.502575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354485, 30.449953, 37.116142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034927, 30.318956, 36.914345>,  <36.843193, 30.240358, 36.793266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034927, 30.318956, 36.914345>,  <37.354485, 30.449953, 37.116142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034927, 30.318956, 36.914345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139664, -0.714838, 0.685201,
		-0.585028, 0.617865, 0.525343,
		-0.798897, -0.327490, -0.504494,
		36.795258, 30.220709, 36.762997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779087, 30.396124, 37.629211>,  <37.354485, 30.449953, 37.116142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779087, 30.396124, 37.629211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702805, 30.160791, 37.314888>,  <36.657036, 30.019592, 37.126293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702805, 30.160791, 37.314888>,  <36.779087, 30.396124, 37.629211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702805, 30.160791, 37.314888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176242, -0.766973, 0.617002,
		-0.965697, 0.256157, 0.042576,
		-0.190704, -0.588333, -0.785809,
		36.645592, 29.984291, 37.079144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265465, 29.925787, 37.841450>,  <36.779087, 30.396124, 37.629211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265465, 29.925787, 37.841450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437176, 29.739893, 37.531677>,  <36.540203, 29.628357, 37.345814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437176, 29.739893, 37.531677>,  <36.265465, 29.925787, 37.841450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437176, 29.739893, 37.531677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191661, -0.884801, 0.424728,
		-0.882594, -0.033907, -0.468912,
		0.429295, -0.464734, -0.774421,
		36.565960, 29.600473, 37.299347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723259, 29.498737, 37.633892>,  <36.265465, 29.925787, 37.841450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723259, 29.498737, 37.633892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074936, 29.359539, 37.503712>,  <36.285942, 29.276020, 37.425606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074936, 29.359539, 37.503712>,  <35.723259, 29.498737, 37.633892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074936, 29.359539, 37.503712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165105, -0.863246, 0.477019,
		-0.446940, -0.365660, -0.816417,
		0.879196, -0.347993, -0.325446,
		36.338696, 29.255140, 37.406078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562462, 28.873816, 37.436867>,  <35.723259, 29.498737, 37.633892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562462, 28.873816, 37.436867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950317, 28.910561, 37.527523>,  <36.183029, 28.932608, 37.581917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950317, 28.910561, 37.527523>,  <35.562462, 28.873816, 37.436867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950317, 28.910561, 37.527523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037934, -0.859049, 0.510486,
		0.241592, -0.503583, -0.829480,
		0.969636, 0.091864, 0.226643,
		36.241207, 28.938120, 37.595516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745010, 28.227074, 37.522327>,  <35.562462, 28.873816, 37.436867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745010, 28.227074, 37.522327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076305, 28.400423, 37.664433>,  <36.275082, 28.504433, 37.749695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076305, 28.400423, 37.664433>,  <35.745010, 28.227074, 37.522327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076305, 28.400423, 37.664433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017057, -0.653172, 0.757017,
		0.560121, -0.620929, -0.548372,
		0.828236, 0.433374, 0.355264,
		36.324776, 28.530436, 37.771011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143658, 27.681383, 37.614056>,  <35.745010, 28.227074, 37.522327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143658, 27.681383, 37.614056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301563, 27.962351, 37.850960>,  <36.396309, 28.130932, 37.993103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301563, 27.962351, 37.850960>,  <36.143658, 27.681383, 37.614056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301563, 27.962351, 37.850960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144503, -0.589122, 0.795019,
		0.907347, -0.399430, -0.131064,
		0.394767, 0.702418, 0.592257,
		36.419994, 28.173077, 38.028637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664536, 27.388254, 38.095303>,  <36.143658, 27.681383, 37.614056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664536, 27.388254, 38.095303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554085, 27.732130, 38.267204>,  <36.487816, 27.938456, 38.370346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554085, 27.732130, 38.267204>,  <36.664536, 27.388254, 38.095303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554085, 27.732130, 38.267204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314913, -0.503378, 0.804637,
		0.908066, 0.086846, 0.409723,
		-0.276125, 0.859691, 0.429752,
		36.471249, 27.990038, 38.396130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810093, 27.323952, 38.766144>,  <36.664536, 27.388254, 38.095303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810093, 27.323952, 38.766144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555214, 27.632219, 38.763313>,  <36.402287, 27.817181, 38.761616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555214, 27.632219, 38.763313>,  <36.810093, 27.323952, 38.766144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555214, 27.632219, 38.763313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515696, -0.419523, 0.747033,
		0.572749, 0.479653, 0.664749,
		-0.637194, 0.770671, -0.007073,
		36.364056, 27.863420, 38.761192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779732, 27.523615, 39.440304>,  <36.810093, 27.323952, 38.766144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779732, 27.523615, 39.440304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453884, 27.674633, 39.264191>,  <36.258377, 27.765244, 39.158524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453884, 27.674633, 39.264191>,  <36.779732, 27.523615, 39.440304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453884, 27.674633, 39.264191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579528, -0.499406, 0.644004,
		0.023260, 0.779777, 0.625625,
		-0.814620, 0.377546, -0.440286,
		36.209499, 27.787897, 39.132103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406452, 27.720413, 40.046680>,  <36.779732, 27.523615, 39.440304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406452, 27.720413, 40.046680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135860, 27.727900, 39.752190>,  <35.973507, 27.732391, 39.575497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135860, 27.727900, 39.752190>,  <36.406452, 27.720413, 40.046680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135860, 27.727900, 39.752190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631423, -0.529272, 0.566724,
		-0.379059, 0.848246, 0.369856,
		-0.676476, 0.018714, -0.736227,
		35.932919, 27.733513, 39.531322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743206, 27.945431, 40.319515>,  <36.406452, 27.720413, 40.046680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743206, 27.945431, 40.319515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644314, 27.743439, 39.988728>,  <35.584980, 27.622244, 39.790257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644314, 27.743439, 39.988728>,  <35.743206, 27.945431, 40.319515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644314, 27.743439, 39.988728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598672, -0.591465, 0.540149,
		-0.761886, 0.628623, -0.156089,
		-0.247229, -0.504978, -0.826968,
		35.570145, 27.591946, 39.740639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038330, 27.991207, 40.279045>,  <35.743206, 27.945431, 40.319515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038330, 27.991207, 40.279045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123848, 27.683771, 40.037861>,  <35.175159, 27.499310, 39.893150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123848, 27.683771, 40.037861>,  <35.038330, 27.991207, 40.279045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123848, 27.683771, 40.037861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667398, -0.565645, 0.484381,
		-0.713352, 0.298858, -0.633887,
		0.213793, -0.768590, -0.602961,
		35.187984, 27.453194, 39.856972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394054, 27.854790, 40.047661>,  <35.038330, 27.991207, 40.279045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394054, 27.854790, 40.047661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610989, 27.524158, 39.987476>,  <34.741150, 27.325779, 39.951366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610989, 27.524158, 39.987476>,  <34.394054, 27.854790, 40.047661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610989, 27.524158, 39.987476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705387, -0.545263, 0.452898,
		-0.456398, -0.139488, -0.878774,
		0.542337, -0.826578, -0.150464,
		34.773689, 27.276184, 39.942337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990753, 27.388454, 39.618347>,  <34.394054, 27.854790, 40.047661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990753, 27.388454, 39.618347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262173, 27.155735, 39.797718>,  <34.425022, 27.016104, 39.905342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262173, 27.155735, 39.797718>,  <33.990753, 27.388454, 39.618347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262173, 27.155735, 39.797718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712158, -0.371432, 0.595709,
		-0.180021, -0.723568, -0.666365,
		0.678545, -0.581797, 0.448429,
		34.465736, 26.981195, 39.932247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754128, 26.677494, 39.623604>,  <33.990753, 27.388454, 39.618347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754128, 26.677494, 39.623604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032635, 26.704205, 39.909473>,  <34.199738, 26.720230, 40.080994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032635, 26.704205, 39.909473>,  <33.754128, 26.677494, 39.623604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032635, 26.704205, 39.909473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645192, -0.378098, 0.663904,
		0.314549, -0.923354, -0.220173,
		0.696266, 0.066777, 0.714671,
		34.241516, 26.724237, 40.123875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627789, 26.161314, 39.987354>,  <33.754128, 26.677494, 39.623604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627789, 26.161314, 39.987354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865505, 26.355164, 40.244087>,  <34.008137, 26.471474, 40.398129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865505, 26.355164, 40.244087>,  <33.627789, 26.161314, 39.987354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865505, 26.355164, 40.244087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561088, -0.321913, 0.762596,
		0.576188, -0.813333, 0.080606,
		0.594296, 0.484625, 0.641834,
		34.043793, 26.500551, 40.436638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836151, 25.635841, 40.475719>,  <33.627789, 26.161314, 39.987354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836151, 25.635841, 40.475719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862461, 25.991131, 40.657589>,  <33.878246, 26.204306, 40.766712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862461, 25.991131, 40.657589>,  <33.836151, 25.635841, 40.475719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862461, 25.991131, 40.657589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571427, -0.340016, 0.746900,
		0.818013, -0.308941, 0.485192,
		0.065775, 0.888226, 0.454675,
		33.882195, 26.257599, 40.793991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040722, 25.464529, 41.151958>,  <33.836151, 25.635841, 40.475719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040722, 25.464529, 41.151958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847157, 25.814472, 41.160431>,  <33.731018, 26.024439, 41.165516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847157, 25.814472, 41.160431>,  <34.040722, 25.464529, 41.151958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847157, 25.814472, 41.160431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426884, -0.257118, 0.866983,
		0.763934, 0.410504, 0.497886,
		-0.483916, 0.874858, 0.021184,
		33.701981, 26.076929, 41.166786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894493, 25.638599, 41.830372>,  <34.040722, 25.464529, 41.151958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894493, 25.638599, 41.830372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641716, 25.900578, 41.664627>,  <33.490047, 26.057764, 41.565182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641716, 25.900578, 41.664627>,  <33.894493, 25.638599, 41.830372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641716, 25.900578, 41.664627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657923, -0.170788, 0.733464,
		0.409610, 0.736126, 0.538830,
		-0.631948, 0.654943, -0.414357,
		33.452133, 26.097061, 41.540321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837631, 26.217676, 42.318161>,  <33.894493, 25.638599, 41.830372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837631, 26.217676, 42.318161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521873, 26.234659, 42.073196>,  <33.332417, 26.244848, 41.926216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521873, 26.234659, 42.073196>,  <33.837631, 26.217676, 42.318161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521873, 26.234659, 42.073196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613882, -0.055071, 0.787474,
		-0.000292, 0.997579, 0.069537,
		-0.789398, 0.042457, -0.612412,
		33.285053, 26.247396, 41.889473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414333, 26.688272, 42.663773>,  <33.837631, 26.217676, 42.318161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414333, 26.688272, 42.663773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160999, 26.511774, 42.409470>,  <33.008999, 26.405876, 42.256889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160999, 26.511774, 42.409470>,  <33.414333, 26.688272, 42.663773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160999, 26.511774, 42.409470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526919, -0.355804, 0.771855,
		-0.566782, 0.823837, -0.007156,
		-0.633336, -0.441244, -0.635758,
		32.970997, 26.379400, 42.218742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752110, 26.990196, 42.733135>,  <33.414333, 26.688272, 42.663773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752110, 26.990196, 42.733135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751766, 26.609591, 42.610092>,  <32.751560, 26.381227, 42.536266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751766, 26.609591, 42.610092>,  <32.752110, 26.990196, 42.733135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751766, 26.609591, 42.610092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493966, -0.267052, 0.827454,
		-0.869481, 0.152660, -0.469786,
		-0.000862, -0.951514, -0.307606,
		32.751507, 26.324137, 42.517811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082306, 26.804684, 42.849133>,  <32.752110, 26.990196, 42.733135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082306, 26.804684, 42.849133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266209, 26.451973, 42.807007>,  <32.376549, 26.240347, 42.781731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266209, 26.451973, 42.807007>,  <32.082306, 26.804684, 42.849133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266209, 26.451973, 42.807007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428818, -0.324291, 0.843178,
		-0.777649, -0.342496, -0.527218,
		0.459758, -0.881777, -0.105316,
		32.404137, 26.187439, 42.775414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580069, 26.282377, 42.917702>,  <32.082306, 26.804684, 42.849133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580069, 26.282377, 42.917702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916769, 26.097286, 43.028938>,  <32.118790, 25.986231, 43.095680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916769, 26.097286, 43.028938>,  <31.580069, 26.282377, 42.917702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916769, 26.097286, 43.028938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416274, -0.228323, 0.880105,
		-0.343755, -0.856593, -0.384813,
		0.841753, -0.462728, 0.278090,
		32.169296, 25.958467, 43.112366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354071, 25.558550, 43.178425>,  <31.580069, 26.282377, 42.917702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354071, 25.558550, 43.178425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726435, 25.588749, 43.321369>,  <31.949854, 25.606869, 43.407135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726435, 25.588749, 43.321369>,  <31.354071, 25.558550, 43.178425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726435, 25.588749, 43.321369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301518, -0.393345, 0.868543,
		0.206140, -0.916286, -0.343405,
		0.930910, 0.075499, 0.357361,
		32.005707, 25.611399, 43.428577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448677, 25.000336, 43.637993>,  <31.354071, 25.558550, 43.178425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448677, 25.000336, 43.637993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753490, 25.230604, 43.756592>,  <31.936378, 25.368765, 43.827751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753490, 25.230604, 43.756592>,  <31.448677, 25.000336, 43.637993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753490, 25.230604, 43.756592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288617, -0.107935, 0.951341,
		0.579662, -0.810526, 0.083899,
		0.762032, 0.575671, 0.296498,
		31.982100, 25.403305, 43.845543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753027, 24.587730, 44.212418>,  <31.448677, 25.000336, 43.637993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753027, 24.587730, 44.212418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850815, 24.973501, 44.252644>,  <31.909487, 25.204964, 44.276779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850815, 24.973501, 44.252644>,  <31.753027, 24.587730, 44.212418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850815, 24.973501, 44.252644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252718, -0.036757, 0.966842,
		0.936146, -0.261776, 0.234743,
		0.244467, 0.964429, 0.100565,
		31.924154, 25.262829, 44.282814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085876, 24.685669, 44.987492>,  <31.753027, 24.587730, 44.212418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085876, 24.685669, 44.987492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000923, 25.057541, 44.867100>,  <31.949951, 25.280664, 44.794865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000923, 25.057541, 44.867100>,  <32.085876, 24.685669, 44.987492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000923, 25.057541, 44.867100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369704, 0.208662, 0.905416,
		0.904551, 0.303567, 0.299391,
		-0.212383, 0.929681, -0.300975,
		31.937208, 25.336445, 44.776806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420498, 25.232550, 45.427498>,  <32.085876, 24.685669, 44.987492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420498, 25.232550, 45.427498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119144, 25.415920, 45.238922>,  <31.938332, 25.525944, 45.125778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119144, 25.415920, 45.238922>,  <32.420498, 25.232550, 45.427498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119144, 25.415920, 45.238922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364022, 0.306308, 0.879582,
		0.547631, 0.834277, -0.063890,
		-0.753385, 0.458428, -0.471439,
		31.893129, 25.553450, 45.097492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345371, 25.714710, 45.845989>,  <32.420498, 25.232550, 45.427498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345371, 25.714710, 45.845989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010342, 25.715967, 45.627460>,  <31.809324, 25.716721, 45.496346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010342, 25.715967, 45.627460>,  <32.345371, 25.714710, 45.845989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010342, 25.715967, 45.627460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524674, 0.274115, 0.805964,
		0.152285, 0.961692, -0.227943,
		-0.837572, 0.003140, -0.546318,
		31.759069, 25.716909, 45.463566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982040, 26.332304, 45.960789>,  <32.345371, 25.714710, 45.845989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982040, 26.332304, 45.960789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722326, 26.057592, 45.830090>,  <31.566498, 25.892765, 45.751671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722326, 26.057592, 45.830090>,  <31.982040, 26.332304, 45.960789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722326, 26.057592, 45.830090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455853, 0.007522, 0.890023,
		-0.608793, 0.726826, -0.317955,
		-0.649283, -0.686781, -0.326746,
		31.527542, 25.851559, 45.732067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384109, 26.516481, 46.249748>,  <31.982040, 26.332304, 45.960789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384109, 26.516481, 46.249748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341486, 26.131851, 46.148544>,  <31.315912, 25.901073, 46.087822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341486, 26.131851, 46.148544>,  <31.384109, 26.516481, 46.249748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341486, 26.131851, 46.148544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446194, -0.181156, 0.876409,
		-0.888569, 0.206283, -0.409746,
		-0.106560, -0.961577, -0.253012,
		31.309519, 25.843378, 46.072639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448544, 27.040018, 46.859486>,  <31.384109, 26.516481, 46.249748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448544, 27.040018, 46.859486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704744, 27.243431, 47.089668>,  <31.858465, 27.365479, 47.227779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704744, 27.243431, 47.089668>,  <31.448544, 27.040018, 46.859486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704744, 27.243431, 47.089668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046143, 0.722498, -0.689831,
		-0.766568, 0.468393, 0.439297,
		0.640503, 0.508532, 0.575457,
		31.896894, 27.395990, 47.262306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218611, 27.779139, 46.814114>,  <31.448544, 27.040018, 46.859486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218611, 27.779139, 46.814114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597475, 27.784859, 46.942287>,  <31.824795, 27.788290, 47.019192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597475, 27.784859, 46.942287>,  <31.218611, 27.779139, 46.814114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597475, 27.784859, 46.942287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250856, 0.589543, -0.767796,
		-0.199891, 0.807610, 0.554805,
		0.947161, 0.014299, 0.320438,
		31.881624, 27.789148, 47.038418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417772, 28.471569, 46.701614>,  <31.218611, 27.779139, 46.814114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417772, 28.471569, 46.701614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746199, 28.244841, 46.728653>,  <31.943254, 28.108805, 46.744877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746199, 28.244841, 46.728653>,  <31.417772, 28.471569, 46.701614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746199, 28.244841, 46.728653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351566, 0.408832, -0.842174,
		0.449726, 0.715243, 0.534952,
		0.821065, -0.566819, 0.067593,
		31.992517, 28.074795, 46.748932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912376, 28.989857, 46.780514>,  <31.417772, 28.471569, 46.701614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912376, 28.989857, 46.780514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129021, 28.676598, 46.658310>,  <32.259007, 28.488642, 46.584988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129021, 28.676598, 46.658310>,  <31.912376, 28.989857, 46.780514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129021, 28.676598, 46.658310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409284, 0.563114, -0.717906,
		0.734265, 0.263783, 0.625518,
		0.541610, -0.783148, -0.305512,
		32.291504, 28.441652, 46.566658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554478, 29.187239, 46.748169>,  <31.912376, 28.989857, 46.780514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554478, 29.187239, 46.748169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559429, 28.863501, 46.513287>,  <32.562401, 28.669258, 46.372356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559429, 28.863501, 46.513287>,  <32.554478, 29.187239, 46.748169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559429, 28.863501, 46.513287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445078, 0.530326, -0.721568,
		0.895406, -0.252423, 0.366784,
		0.012374, -0.809344, -0.587205,
		32.563141, 28.620697, 46.337124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267147, 29.080534, 46.462505>,  <32.554478, 29.187239, 46.748169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267147, 29.080534, 46.462505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033421, 28.864561, 46.220165>,  <32.893185, 28.734978, 46.074760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033421, 28.864561, 46.220165>,  <33.267147, 29.080534, 46.462505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033421, 28.864561, 46.220165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420755, 0.436812, -0.795085,
		0.693933, -0.719493, -0.028056,
		-0.584314, -0.539931, -0.605848,
		32.858128, 28.702581, 46.038410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702400, 28.789196, 46.100166>,  <33.267147, 29.080534, 46.462505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702400, 28.789196, 46.100166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366474, 28.752844, 45.886086>,  <33.164917, 28.731033, 45.757637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366474, 28.752844, 45.886086>,  <33.702400, 28.789196, 46.100166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366474, 28.752844, 45.886086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488603, 0.303105, -0.818165,
		0.236577, -0.948614, -0.210151,
		-0.839821, -0.090878, -0.535203,
		33.114529, 28.725580, 45.725525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851753, 28.410814, 45.401718>,  <33.702400, 28.789196, 46.100166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851753, 28.410814, 45.401718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513329, 28.614134, 45.337460>,  <33.310272, 28.736126, 45.298904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513329, 28.614134, 45.337460>,  <33.851753, 28.410814, 45.401718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513329, 28.614134, 45.337460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361404, 0.325399, -0.873786,
		-0.391871, -0.797338, -0.459010,
		-0.846064, 0.508299, -0.160647,
		33.259510, 28.766624, 45.289265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676701, 28.161806, 44.744324>,  <33.851753, 28.410814, 45.401718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676701, 28.161806, 44.744324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477737, 28.504292, 44.800152>,  <33.358360, 28.709782, 44.833649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477737, 28.504292, 44.800152>,  <33.676701, 28.161806, 44.744324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477737, 28.504292, 44.800152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345496, 0.343099, -0.873450,
		-0.795747, -0.386242, -0.466480,
		-0.497412, 0.856213, 0.139575,
		33.328514, 28.761156, 44.842026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455059, 28.274282, 44.064529>,  <33.676701, 28.161806, 44.744324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455059, 28.274282, 44.064529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339176, 28.622005, 44.224716>,  <33.269646, 28.830639, 44.320827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339176, 28.622005, 44.224716>,  <33.455059, 28.274282, 44.064529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339176, 28.622005, 44.224716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167436, 0.457986, -0.873048,
		-0.942355, -0.185880, -0.278238,
		-0.289711, 0.869308, 0.400463,
		33.252262, 28.882797, 44.344856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924686, 28.589119, 43.626587>,  <33.455059, 28.274282, 44.064529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924686, 28.589119, 43.626587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125759, 28.862745, 43.838009>,  <33.246403, 29.026920, 43.964863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125759, 28.862745, 43.838009>,  <32.924686, 28.589119, 43.626587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125759, 28.862745, 43.838009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399146, 0.358678, -0.843820,
		-0.766808, 0.635141, -0.092742,
		0.502680, 0.684066, 0.528552,
		33.276562, 29.067965, 43.996574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994080, 29.040260, 43.079086>,  <32.924686, 28.589119, 43.626587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994080, 29.040260, 43.079086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234962, 29.184248, 43.364120>,  <33.379490, 29.270641, 43.535141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234962, 29.184248, 43.364120>,  <32.994080, 29.040260, 43.079086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234962, 29.184248, 43.364120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495614, 0.531181, -0.687178,
		-0.625873, 0.766987, 0.141474,
		0.602205, 0.359970, 0.712581,
		33.415623, 29.292238, 43.577896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107674, 29.752337, 42.923401>,  <32.994080, 29.040260, 43.079086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107674, 29.752337, 42.923401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412083, 29.694632, 43.176392>,  <33.594730, 29.660007, 43.328186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412083, 29.694632, 43.176392>,  <33.107674, 29.752337, 42.923401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412083, 29.694632, 43.176392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591793, 0.553771, -0.585764,
		-0.265742, 0.820077, 0.506809,
		0.761027, -0.144264, 0.632476,
		33.640392, 29.651352, 43.366135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501152, 30.457371, 43.225845>,  <33.107674, 29.752337, 42.923401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501152, 30.457371, 43.225845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746239, 30.141630, 43.241344>,  <33.893291, 29.952187, 43.250645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746239, 30.141630, 43.241344>,  <33.501152, 30.457371, 43.225845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746239, 30.141630, 43.241344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671191, 0.493865, -0.552811,
		0.417226, 0.364724, 0.832406,
		0.612719, -0.789350, 0.038746,
		33.930054, 29.904825, 43.252968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204540, 30.666441, 43.256191>,  <33.501152, 30.457371, 43.225845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204540, 30.666441, 43.256191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245876, 30.284180, 43.145882>,  <34.270679, 30.054823, 43.079697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245876, 30.284180, 43.145882>,  <34.204540, 30.666441, 43.256191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245876, 30.284180, 43.145882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806830, 0.242684, -0.538638,
		0.581676, -0.166837, 0.796127,
		0.103342, -0.955652, -0.275773,
		34.276878, 29.997484, 43.063148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958744, 30.555460, 43.225113>,  <34.204540, 30.666441, 43.256191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958744, 30.555460, 43.225113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783722, 30.270452, 43.005711>,  <34.678707, 30.099447, 42.874069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783722, 30.270452, 43.005711>,  <34.958744, 30.555460, 43.225113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783722, 30.270452, 43.005711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702287, 0.110151, -0.703321,
		0.561549, -0.692950, 0.452197,
		-0.437556, -0.712521, -0.548505,
		34.652454, 30.056696, 42.841160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473488, 30.009377, 43.007267>,  <34.958744, 30.555460, 43.225113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473488, 30.009377, 43.007267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208611, 29.940308, 42.715599>,  <35.049686, 29.898867, 42.540600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208611, 29.940308, 42.715599>,  <35.473488, 30.009377, 43.007267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208611, 29.940308, 42.715599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744129, -0.266050, -0.612772,
		-0.088187, -0.948368, 0.304666,
		-0.662190, -0.172672, -0.729170,
		35.009953, 29.888506, 42.496849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716690, 29.393269, 42.622814>,  <35.473488, 30.009377, 43.007267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716690, 29.393269, 42.622814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466717, 29.596487, 42.385715>,  <35.316734, 29.718418, 42.243458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466717, 29.596487, 42.385715>,  <35.716690, 29.393269, 42.622814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466717, 29.596487, 42.385715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619274, -0.139712, -0.772645,
		-0.475353, -0.849924, -0.227308,
		-0.624932, 0.508045, -0.592748,
		35.279236, 29.748901, 42.207890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798843, 29.100321, 42.084999>,  <35.716690, 29.393269, 42.622814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798843, 29.100321, 42.084999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576180, 29.400713, 41.942924>,  <35.442581, 29.580948, 41.857677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576180, 29.400713, 41.942924>,  <35.798843, 29.100321, 42.084999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576180, 29.400713, 41.942924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512892, -0.025661, -0.858070,
		-0.653507, -0.659826, -0.370887,
		-0.556660, 0.750980, -0.355189,
		35.409180, 29.626007, 41.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494198, 28.843487, 41.545143>,  <35.798843, 29.100321, 42.084999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494198, 28.843487, 41.545143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532665, 29.239050, 41.499870>,  <35.555744, 29.476389, 41.472706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532665, 29.239050, 41.499870>,  <35.494198, 28.843487, 41.545143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532665, 29.239050, 41.499870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601531, -0.148336, -0.784957,
		-0.793040, 0.007404, -0.609124,
		0.096167, 0.988909, -0.113183,
		35.561516, 29.535723, 41.465916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543488, 29.025492, 40.786346>,  <35.494198, 28.843487, 41.545143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543488, 29.025492, 40.786346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690460, 29.362015, 40.944939>,  <35.778645, 29.563929, 41.040092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690460, 29.362015, 40.944939>,  <35.543488, 29.025492, 40.786346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690460, 29.362015, 40.944939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650421, 0.072275, -0.756127,
		-0.664792, 0.535702, -0.520649,
		0.367429, 0.841309, 0.396479,
		35.800690, 29.614407, 41.063881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642071, 29.550394, 40.202496>,  <35.543488, 29.025492, 40.786346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642071, 29.550394, 40.202496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843357, 29.748016, 40.486095>,  <35.964127, 29.866589, 40.656258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843357, 29.748016, 40.486095>,  <35.642071, 29.550394, 40.202496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843357, 29.748016, 40.486095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662925, 0.305614, -0.683469,
		-0.554352, 0.813948, -0.173732,
		0.503213, 0.494054, 0.709004,
		35.994320, 29.896233, 40.698795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799793, 30.132887, 39.801037>,  <35.642071, 29.550394, 40.202496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799793, 30.132887, 39.801037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037361, 30.076918, 40.117943>,  <36.179901, 30.043335, 40.308086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037361, 30.076918, 40.117943>,  <35.799793, 30.132887, 39.801037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037361, 30.076918, 40.117943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773097, 0.371810, -0.513885,
		-0.222667, 0.917703, 0.329000,
		0.593920, -0.139924, 0.792263,
		36.215538, 30.034941, 40.355621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329914, 30.690266, 39.817280>,  <35.799793, 30.132887, 39.801037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329914, 30.690266, 39.817280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489914, 30.391283, 40.029434>,  <36.585915, 30.211893, 40.156727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489914, 30.391283, 40.029434>,  <36.329914, 30.690266, 39.817280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489914, 30.391283, 40.029434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877485, 0.145237, -0.457084,
		0.264618, 0.648241, 0.713976,
		0.399997, -0.747456, 0.530389,
		36.609913, 30.167046, 40.188553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977768, 30.918728, 39.908161>,  <36.329914, 30.690266, 39.817280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977768, 30.918728, 39.908161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022011, 30.531725, 39.999104>,  <37.048557, 30.299522, 40.053669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022011, 30.531725, 39.999104>,  <36.977768, 30.918728, 39.908161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022011, 30.531725, 39.999104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951487, 0.036994, -0.305457,
		0.287121, 0.250115, 0.924664,
		0.110607, -0.967509, 0.227359,
		37.055191, 30.241472, 40.067310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534084, 30.850695, 40.416233>,  <36.977768, 30.918728, 39.908161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534084, 30.850695, 40.416233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477753, 30.493526, 40.245186>,  <37.443954, 30.279226, 40.142555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477753, 30.493526, 40.245186>,  <37.534084, 30.850695, 40.416233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477753, 30.493526, 40.245186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987507, -0.095849, -0.125073,
		0.070693, -0.439893, 0.895263,
		-0.140829, -0.892920, -0.427622,
		37.435505, 30.225651, 40.116898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082283, 30.396515, 40.629414>,  <37.534084, 30.850695, 40.416233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082283, 30.396515, 40.629414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956623, 30.211689, 40.297676>,  <37.881229, 30.100794, 40.098633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956623, 30.211689, 40.297676>,  <38.082283, 30.396515, 40.629414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956623, 30.211689, 40.297676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900443, 0.131815, -0.414521,
		0.300855, -0.876995, 0.374655,
		-0.314148, -0.462066, -0.829341,
		37.862377, 30.073069, 40.048874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541130, 29.898743, 40.553726>,  <38.082283, 30.396515, 40.629414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541130, 29.898743, 40.553726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380821, 29.985144, 40.197586>,  <38.284634, 30.036983, 39.983902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380821, 29.985144, 40.197586>,  <38.541130, 29.898743, 40.553726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380821, 29.985144, 40.197586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910871, 0.198367, -0.361889,
		0.098447, -0.956030, -0.276251,
		-0.400776, 0.216003, -0.890349,
		38.260590, 30.049944, 39.930481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940521, 29.595984, 39.981880>,  <38.541130, 29.898743, 40.553726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940521, 29.595984, 39.981880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747501, 29.895864, 39.800735>,  <38.631687, 30.075794, 39.692047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747501, 29.895864, 39.800735>,  <38.940521, 29.595984, 39.981880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747501, 29.895864, 39.800735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850347, 0.277112, -0.447345,
		-0.209883, -0.600960, -0.771230,
		-0.482554, 0.749704, -0.452863,
		38.602734, 30.120775, 39.664875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174603, 29.592880, 39.318398>,  <38.940521, 29.595984, 39.981880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174603, 29.592880, 39.318398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019653, 29.961605, 39.324043>,  <38.926682, 30.182840, 39.327431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019653, 29.961605, 39.324043>,  <39.174603, 29.592880, 39.318398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019653, 29.961605, 39.324043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873416, 0.371853, -0.314437,
		-0.295101, -0.109477, -0.949174,
		-0.387376, 0.921814, 0.014115,
		38.903442, 30.238150, 39.328278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275112, 29.820248, 38.599773>,  <39.174603, 29.592880, 39.318398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275112, 29.820248, 38.599773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199577, 30.140875, 38.826694>,  <39.154255, 30.333252, 38.962845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199577, 30.140875, 38.826694>,  <39.275112, 29.820248, 38.599773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199577, 30.140875, 38.826694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666259, 0.528970, -0.525633,
		-0.721415, 0.278709, -0.633942,
		-0.188837, 0.801569, 0.567299,
		39.142925, 30.381346, 38.996883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292946, 30.377211, 38.138126>,  <39.275112, 29.820248, 38.599773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292946, 30.377211, 38.138126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357487, 30.529400, 38.502369>,  <39.396214, 30.620714, 38.720913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357487, 30.529400, 38.502369>,  <39.292946, 30.377211, 38.138126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357487, 30.529400, 38.502369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655088, 0.648814, -0.387170,
		-0.738122, 0.658999, -0.144554,
		0.161356, 0.380474, 0.910606,
		39.405895, 30.643541, 38.775551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257999, 31.051477, 38.020370>,  <39.292946, 30.377211, 38.138126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257999, 31.051477, 38.020370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437046, 31.012079, 38.375885>,  <39.544472, 30.988440, 38.589195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437046, 31.012079, 38.375885>,  <39.257999, 31.051477, 38.020370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437046, 31.012079, 38.375885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620620, 0.749784, -0.229466,
		-0.643796, 0.654311, 0.396741,
		0.447612, -0.098497, 0.888787,
		39.571331, 30.982531, 38.642521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330555, 31.717138, 38.231064>,  <39.257999, 31.051477, 38.020370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330555, 31.717138, 38.231064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583008, 31.537594, 38.484108>,  <39.734478, 31.429867, 38.635937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583008, 31.537594, 38.484108>,  <39.330555, 31.717138, 38.231064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583008, 31.537594, 38.484108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623853, 0.778392, -0.070089,
		-0.460960, 0.438893, 0.771290,
		0.631128, -0.448864, 0.632613,
		39.772346, 31.402935, 38.673893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474415, 32.154556, 38.890247>,  <39.330555, 31.717138, 38.231064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474415, 32.154556, 38.890247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788151, 31.912525, 38.835556>,  <39.976391, 31.767305, 38.802742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788151, 31.912525, 38.835556>,  <39.474415, 32.154556, 38.890247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788151, 31.912525, 38.835556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612486, 0.790320, 0.016014,
		0.098366, -0.096302, 0.990480,
		0.784338, -0.605079, -0.136724,
		40.023453, 31.731001, 38.794540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994946, 32.558243, 39.170174>,  <39.474415, 32.154556, 38.890247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994946, 32.558243, 39.170174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193249, 32.281746, 38.959877>,  <40.312233, 32.115849, 38.833698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193249, 32.281746, 38.959877>,  <39.994946, 32.558243, 39.170174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193249, 32.281746, 38.959877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706698, 0.672961, -0.218406,
		0.504775, -0.263263, 0.822129,
		0.495763, -0.691242, -0.525741,
		40.341976, 32.074375, 38.802155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738266, 32.591518, 39.347431>,  <39.994946, 32.558243, 39.170174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738266, 32.591518, 39.347431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691078, 32.459488, 38.972809>,  <40.662766, 32.380268, 38.748035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691078, 32.459488, 38.972809>,  <40.738266, 32.591518, 39.347431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691078, 32.459488, 38.972809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622140, 0.710524, -0.328784,
		0.773968, -0.621453, 0.121536,
		-0.117970, -0.330080, -0.936553,
		40.655685, 32.360462, 38.691845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450275, 32.417374, 39.161613>,  <40.738266, 32.591518, 39.347431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450275, 32.417374, 39.161613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267403, 32.445763, 38.806999>,  <41.157677, 32.462795, 38.594231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267403, 32.445763, 38.806999>,  <41.450275, 32.417374, 39.161613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267403, 32.445763, 38.806999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765782, 0.538335, -0.351814,
		0.452283, -0.839737, -0.300469,
		-0.457185, 0.070974, -0.886535,
		41.130249, 32.467056, 38.541039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947487, 32.299004, 38.630417>,  <41.450275, 32.417374, 39.161613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947487, 32.299004, 38.630417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660671, 32.494556, 38.431683>,  <41.488583, 32.611889, 38.312443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660671, 32.494556, 38.431683>,  <41.947487, 32.299004, 38.630417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660671, 32.494556, 38.431683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693399, 0.572966, -0.436929,
		0.071066, -0.657804, -0.749829,
		-0.717040, 0.488880, -0.496839,
		41.445560, 32.641220, 38.282631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296883, 32.435795, 37.951569>,  <41.947487, 32.299004, 38.630417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296883, 32.435795, 37.951569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998844, 32.686996, 38.041401>,  <41.820023, 32.837719, 38.095303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998844, 32.686996, 38.041401>,  <42.296883, 32.435795, 37.951569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998844, 32.686996, 38.041401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536878, 0.764539, -0.356711,
		-0.395720, -0.145209, -0.906819,
		-0.745096, 0.628008, 0.224584,
		41.775314, 32.875401, 38.108776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231052, 33.192009, 37.905613>,  <42.296883, 32.435795, 37.951569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231052, 33.192009, 37.905613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558216, 33.105602, 37.692314>,  <42.754517, 33.053757, 37.564335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558216, 33.105602, 37.692314>,  <42.231052, 33.192009, 37.905613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558216, 33.105602, 37.692314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472039, 0.781850, 0.407297,
		0.328937, -0.584848, 0.741454,
		0.817912, -0.216020, -0.533250,
		42.803589, 33.040798, 37.532341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874382, 33.242744, 38.271507>,  <42.231052, 33.192009, 37.905613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874382, 33.242744, 38.271507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011185, 33.328007, 37.905426>,  <43.093266, 33.379166, 37.685776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011185, 33.328007, 37.905426>,  <42.874382, 33.242744, 38.271507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011185, 33.328007, 37.905426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522161, 0.766623, 0.373681,
		0.781269, -0.605684, 0.150885,
		0.342005, 0.213159, -0.915203,
		43.113785, 33.391953, 37.630867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631901, 33.385094, 38.221592>,  <42.874382, 33.242744, 38.271507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631901, 33.385094, 38.221592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473087, 33.565022, 37.901585>,  <43.377800, 33.672977, 37.709579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473087, 33.565022, 37.901585>,  <43.631901, 33.385094, 38.221592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473087, 33.565022, 37.901585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731024, 0.682038, 0.020697,
		0.554951, -0.576614, -0.599621,
		-0.397030, 0.449823, -0.800016,
		43.353977, 33.699970, 37.661579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224014, 33.711388, 37.777382>,  <43.631901, 33.385094, 38.221592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224014, 33.711388, 37.777382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888565, 33.905212, 37.677864>,  <43.687294, 34.021507, 37.618153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888565, 33.905212, 37.677864>,  <44.224014, 33.711388, 37.777382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888565, 33.905212, 37.677864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509050, 0.859740, -0.041410,
		0.193833, -0.161376, -0.967671,
		-0.838628, 0.484567, -0.248795,
		43.636978, 34.050583, 37.603226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707016, 34.182678, 37.656528>,  <44.224014, 33.711388, 37.777382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707016, 34.182678, 37.656528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973480, 34.062389, 37.929527>,  <45.133358, 33.990215, 38.093327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973480, 34.062389, 37.929527>,  <44.707016, 34.182678, 37.656528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973480, 34.062389, 37.929527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036563, -0.927173, -0.372846,
		0.744913, 0.223421, -0.628640,
		0.666159, -0.300723, 0.682494,
		45.173328, 33.972172, 38.134277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399544, 33.874046, 37.046066>,  <44.707016, 34.182678, 37.656528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399544, 33.874046, 37.046066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148594, 34.122143, 37.234406>,  <43.998024, 34.271000, 37.347408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148594, 34.122143, 37.234406>,  <44.399544, 33.874046, 37.046066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148594, 34.122143, 37.234406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624240, 0.762048, -0.172066,
		-0.465535, 0.185975, -0.865269,
		-0.627377, 0.620239, 0.470853,
		43.960381, 34.308216, 37.375660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150555, 34.395569, 36.618328>,  <44.399544, 33.874046, 37.046066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150555, 34.395569, 36.618328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209324, 34.499893, 36.999985>,  <44.244587, 34.562489, 37.228981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209324, 34.499893, 36.999985>,  <44.150555, 34.395569, 36.618328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209324, 34.499893, 36.999985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717760, 0.635619, -0.284268,
		-0.680613, 0.726612, -0.093814,
		0.146923, 0.260812, 0.954144,
		44.253399, 34.578136, 37.286228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438793, 34.640282, 36.383324>,  <44.150555, 34.395569, 36.618328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438793, 34.640282, 36.383324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726364, 34.889141, 36.259342>,  <43.898907, 35.038456, 36.184952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726364, 34.889141, 36.259342>,  <43.438793, 34.640282, 36.383324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726364, 34.889141, 36.259342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674006, 0.732961, -0.092107,
		0.169880, 0.275130, 0.946279,
		0.718928, 0.622151, -0.309955,
		43.942043, 35.075787, 36.166355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266777, 35.254017, 36.709721>,  <43.438793, 34.640282, 36.383324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266777, 35.254017, 36.709721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531239, 35.397793, 36.446304>,  <43.689915, 35.484058, 36.288254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531239, 35.397793, 36.446304>,  <43.266777, 35.254017, 36.709721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531239, 35.397793, 36.446304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673954, 0.670205, -0.310822,
		0.329638, 0.649329, 0.685354,
		0.661154, 0.359439, -0.658544,
		43.729584, 35.505623, 36.248741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305824, 36.026386, 36.739113>,  <43.266777, 35.254017, 36.709721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305824, 36.026386, 36.739113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441154, 35.936157, 36.373676>,  <43.522354, 35.882019, 36.154415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441154, 35.936157, 36.373676>,  <43.305824, 36.026386, 36.739113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441154, 35.936157, 36.373676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679186, 0.613440, -0.402985,
		0.651336, 0.756841, 0.054339,
		0.338329, -0.225573, -0.913592,
		43.542652, 35.868484, 36.099598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352032, 36.614994, 36.489189>,  <43.305824, 36.026386, 36.739113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352032, 36.614994, 36.489189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359997, 36.383625, 36.162991>,  <43.364777, 36.244804, 35.967270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359997, 36.383625, 36.162991>,  <43.352032, 36.614994, 36.489189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359997, 36.383625, 36.162991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422095, 0.734540, -0.531307,
		0.906333, 0.354797, -0.229521,
		0.019914, -0.578421, -0.815496,
		43.365971, 36.210098, 35.918343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615105, 37.065929, 35.895088>,  <43.352032, 36.614994, 36.489189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615105, 37.065929, 35.895088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429882, 36.760197, 35.715595>,  <43.318748, 36.576756, 35.607899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429882, 36.760197, 35.715595>,  <43.615105, 37.065929, 35.895088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429882, 36.760197, 35.715595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484727, 0.642255, -0.593758,
		0.742035, -0.057431, -0.667897,
		-0.463060, -0.764336, -0.448737,
		43.290962, 36.530895, 35.580975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676376, 37.242577, 35.196941>,  <43.615105, 37.065929, 35.895088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676376, 37.242577, 35.196941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357674, 37.003338, 35.231503>,  <43.166454, 36.859795, 35.252239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357674, 37.003338, 35.231503>,  <43.676376, 37.242577, 35.196941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357674, 37.003338, 35.231503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545414, 0.650160, -0.528976,
		0.260203, -0.468589, -0.844227,
		-0.796754, -0.598095, 0.086402,
		43.118649, 36.823910, 35.257423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563335, 37.075565, 34.513187>,  <43.676376, 37.242577, 35.196941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563335, 37.075565, 34.513187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217239, 37.018764, 34.705517>,  <43.009583, 36.984684, 34.820915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217239, 37.018764, 34.705517>,  <43.563335, 37.075565, 34.513187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217239, 37.018764, 34.705517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398835, 0.776078, -0.488500,
		-0.303787, -0.614440, -0.728132,
		-0.865242, -0.142005, 0.480823,
		42.957668, 36.976162, 34.849762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079823, 36.993565, 33.990788>,  <43.563335, 37.075565, 34.513187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079823, 36.993565, 33.990788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853951, 37.094952, 34.304958>,  <42.718426, 37.155785, 34.493462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853951, 37.094952, 34.304958>,  <43.079823, 36.993565, 33.990788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853951, 37.094952, 34.304958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508692, 0.642511, -0.573072,
		-0.649899, -0.723141, -0.233876,
		-0.564680, 0.253468, 0.785423,
		42.684547, 37.170994, 34.540585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524326, 37.152836, 33.673172>,  <43.079823, 36.993565, 33.990788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524326, 37.152836, 33.673172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459961, 37.333557, 34.024166>,  <42.421341, 37.441990, 34.234764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459961, 37.333557, 34.024166>,  <42.524326, 37.152836, 33.673172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459961, 37.333557, 34.024166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480181, 0.740916, -0.469543,
		-0.862284, -0.496906, 0.097727,
		-0.160911, 0.451806, 0.877484,
		42.411686, 37.469097, 34.287411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804375, 37.345432, 33.590775>,  <42.524326, 37.152836, 33.673172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804375, 37.345432, 33.590775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966827, 37.551918, 33.892391>,  <42.064301, 37.675808, 34.073360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966827, 37.551918, 33.892391>,  <41.804375, 37.345432, 33.590775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966827, 37.551918, 33.892391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425712, 0.837028, -0.343734,
		-0.808596, -0.181404, 0.559701,
		0.406131, 0.516213, 0.754043,
		42.088665, 37.706783, 34.118603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246773, 37.851658, 33.780888>,  <41.804375, 37.345432, 33.590775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246773, 37.851658, 33.780888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608025, 37.989719, 33.883045>,  <41.824776, 38.072556, 33.944340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608025, 37.989719, 33.883045>,  <41.246773, 37.851658, 33.780888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608025, 37.989719, 33.883045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258825, 0.912223, -0.317584,
		-0.342591, 0.220717, 0.913190,
		0.903129, 0.345158, 0.255392,
		41.878963, 38.093266, 33.959663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147808, 38.568039, 34.121700>,  <41.246773, 37.851658, 33.780888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147808, 38.568039, 34.121700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538635, 38.565849, 34.036560>,  <41.773132, 38.564537, 33.985477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538635, 38.565849, 34.036560>,  <41.147808, 38.568039, 34.121700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538635, 38.565849, 34.036560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036094, 0.980945, -0.190902,
		0.209840, 0.194207, 0.958254,
		0.977069, -0.005472, -0.212852,
		41.831757, 38.564209, 33.972706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480808, 39.274769, 34.369766>,  <41.147808, 38.568039, 34.121700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480808, 39.274769, 34.369766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723251, 39.107933, 34.098866>,  <41.868717, 39.007832, 33.936325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723251, 39.107933, 34.098866>,  <41.480808, 39.274769, 34.369766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723251, 39.107933, 34.098866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238173, 0.907583, -0.345783,
		0.758883, 0.048280, 0.649435,
		0.606111, -0.417087, -0.677251,
		41.905083, 38.982807, 33.895691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164268, 39.600674, 34.353260>,  <41.480808, 39.274769, 34.369766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164268, 39.600674, 34.353260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120049, 39.434628, 33.992050>,  <42.093517, 39.334999, 33.775322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120049, 39.434628, 33.992050>,  <42.164268, 39.600674, 34.353260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120049, 39.434628, 33.992050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156076, 0.890071, -0.428267,
		0.981539, -0.188287, -0.033610,
		-0.110553, -0.415115, -0.903027,
		42.086884, 39.310093, 33.721142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769142, 39.896339, 33.889072>,  <42.164268, 39.600674, 34.353260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769142, 39.896339, 33.889072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474098, 39.746899, 33.664093>,  <42.297070, 39.657234, 33.529106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474098, 39.746899, 33.664093>,  <42.769142, 39.896339, 33.889072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474098, 39.746899, 33.664093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069644, 0.786446, -0.613720,
		0.671620, -0.491860, -0.554076,
		-0.737615, -0.373598, -0.562448,
		42.252815, 39.634819, 33.495358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959473, 40.193535, 33.283497>,  <42.769142, 39.896339, 33.889072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959473, 40.193535, 33.283497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593636, 40.061787, 33.189663>,  <42.374134, 39.982738, 33.133362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593636, 40.061787, 33.189663>,  <42.959473, 40.193535, 33.283497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593636, 40.061787, 33.189663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178141, 0.848981, -0.497491,
		0.363018, -0.413214, -0.835148,
		-0.914595, -0.329372, -0.234585,
		42.319256, 39.962975, 33.119289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954891, 40.145870, 32.544422>,  <42.959473, 40.193535, 33.283497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954891, 40.145870, 32.544422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575790, 40.170795, 32.669575>,  <42.348331, 40.185749, 32.744667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575790, 40.170795, 32.669575>,  <42.954891, 40.145870, 32.544422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575790, 40.170795, 32.669575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150696, 0.776977, -0.611226,
		-0.281186, -0.626437, -0.726988,
		-0.947747, 0.062314, 0.312877,
		42.291466, 40.189491, 32.763439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504364, 40.253139, 31.986675>,  <42.954891, 40.145870, 32.544422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504364, 40.253139, 31.986675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282646, 40.385921, 32.291981>,  <42.149616, 40.465591, 32.475163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282646, 40.385921, 32.291981>,  <42.504364, 40.253139, 31.986675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282646, 40.385921, 32.291981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159770, 0.857538, -0.488981,
		-0.816844, -0.392985, -0.422290,
		-0.554292, 0.331952, 0.763262,
		42.116360, 40.485508, 32.520958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959049, 40.578575, 31.675821>,  <42.504364, 40.253139, 31.986675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959049, 40.578575, 31.675821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946442, 40.731628, 32.045166>,  <41.938877, 40.823460, 32.266773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946442, 40.731628, 32.045166>,  <41.959049, 40.578575, 31.675821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946442, 40.731628, 32.045166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027181, 0.923152, -0.383474,
		-0.999134, -0.037184, -0.018693,
		-0.031515, 0.382634, 0.923363,
		41.936989, 40.846420, 32.322174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516716, 41.151955, 31.600222>,  <41.959049, 40.578575, 31.675821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516716, 41.151955, 31.600222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702717, 41.232037, 31.945171>,  <41.814320, 41.280087, 32.152142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702717, 41.232037, 31.945171>,  <41.516716, 41.151955, 31.600222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702717, 41.232037, 31.945171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046341, 0.967254, -0.249545,
		-0.884094, 0.156003, 0.440501,
		0.465006, 0.200208, 0.862372,
		41.842220, 41.292099, 32.203884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186340, 41.786419, 32.026787>,  <41.516716, 41.151955, 31.600222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186340, 41.786419, 32.026787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575443, 41.744667, 32.109585>,  <41.808907, 41.719616, 32.159264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575443, 41.744667, 32.109585>,  <41.186340, 41.786419, 32.026787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575443, 41.744667, 32.109585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154778, 0.957157, -0.244733,
		-0.172580, 0.270104, 0.947238,
		0.972759, -0.104376, 0.206992,
		41.867271, 41.713356, 32.171684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387650, 42.417805, 32.053715>,  <41.186340, 41.786419, 32.026787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387650, 42.417805, 32.053715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724747, 42.203354, 32.034344>,  <41.927006, 42.074684, 32.022720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724747, 42.203354, 32.034344>,  <41.387650, 42.417805, 32.053715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724747, 42.203354, 32.034344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464868, 0.770180, -0.436716,
		0.271431, 0.345530, 0.898295,
		0.842747, -0.536127, -0.048425,
		41.977570, 42.042515, 32.019817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925343, 42.895901, 32.045147>,  <41.387650, 42.417805, 32.053715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925343, 42.895901, 32.045147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064674, 42.562984, 31.872656>,  <42.148273, 42.363235, 31.769161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064674, 42.562984, 31.872656>,  <41.925343, 42.895901, 32.045147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064674, 42.562984, 31.872656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421697, 0.549998, -0.720884,
		0.837161, 0.069257, 0.542555,
		0.348330, -0.832290, -0.431231,
		42.169174, 42.313297, 31.743286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622734, 43.018856, 31.772104>,  <41.925343, 42.895901, 32.045147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622734, 43.018856, 31.772104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501087, 42.729404, 31.524275>,  <42.428097, 42.555733, 31.375578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501087, 42.729404, 31.524275>,  <42.622734, 43.018856, 31.772104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501087, 42.729404, 31.524275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545862, 0.400649, -0.735877,
		0.780734, -0.561996, 0.273157,
		-0.304120, -0.723631, -0.619573,
		42.409851, 42.512314, 31.338404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767155, 43.262489, 32.485836>,  <42.622734, 43.018856, 31.772104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767155, 43.262489, 32.485836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455227, 43.031185, 32.581753>,  <42.268070, 42.892403, 32.639301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455227, 43.031185, 32.581753>,  <42.767155, 43.262489, 32.485836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455227, 43.031185, 32.581753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210975, 0.603410, 0.769016,
		-0.589382, 0.549103, -0.592548,
		-0.779819, -0.578258, 0.239792,
		42.221283, 42.857708, 32.653690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041454, 43.555122, 32.530689>,  <42.767155, 43.262489, 32.485836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041454, 43.555122, 32.530689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044697, 43.274399, 32.815617>,  <42.046642, 43.105965, 32.986572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044697, 43.274399, 32.815617>,  <42.041454, 43.555122, 32.530689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044697, 43.274399, 32.815617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245904, 0.689064, 0.681705,
		-0.969260, -0.180688, -0.166992,
		0.008107, -0.701814, 0.712314,
		42.047131, 43.063854, 33.029312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502205, 43.672176, 33.025623>,  <42.041454, 43.555122, 32.530689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502205, 43.672176, 33.025623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755028, 43.458805, 33.250462>,  <41.906723, 43.330784, 33.385365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755028, 43.458805, 33.250462>,  <41.502205, 43.672176, 33.025623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755028, 43.458805, 33.250462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194659, 0.592811, 0.781462,
		-0.750072, -0.603349, 0.270856,
		0.632061, -0.533428, 0.562098,
		41.944645, 43.298779, 33.419090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620358, 43.860832, 33.809608>,  <41.502205, 43.672176, 33.025623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620358, 43.860832, 33.809608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314880, 43.963299, 34.046638>,  <41.131592, 44.024776, 34.188858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314880, 43.963299, 34.046638>,  <41.620358, 43.860832, 33.809608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314880, 43.963299, 34.046638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634541, 0.466838, 0.615971,
		-0.118849, 0.846429, -0.519069,
		-0.763697, 0.256163, 0.592578,
		41.085770, 44.040146, 34.224411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861740, 44.438904, 33.637775>,  <41.620358, 43.860832, 33.809608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861740, 44.438904, 33.637775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965282, 44.559399, 34.004871>,  <42.027409, 44.631695, 34.225128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965282, 44.559399, 34.004871>,  <41.861740, 44.438904, 33.637775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965282, 44.559399, 34.004871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791403, -0.610873, -0.022707,
		0.553783, 0.732181, -0.396530,
		0.258855, 0.301240, 0.917741,
		42.042938, 44.649769, 34.280193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519760, 44.128086, 33.717606>,  <41.861740, 44.438904, 33.637775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519760, 44.128086, 33.717606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431313, 44.225613, 34.095318>,  <42.378242, 44.284126, 34.321945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431313, 44.225613, 34.095318>,  <42.519760, 44.128086, 33.717606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431313, 44.225613, 34.095318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737464, -0.591779, 0.325491,
		0.638162, 0.768344, -0.048950,
		-0.221122, 0.243815, 0.944277,
		42.364975, 44.298756, 34.378601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206570, 44.283005, 34.127079>,  <42.519760, 44.128086, 33.717606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206570, 44.283005, 34.127079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891144, 44.126736, 34.317043>,  <42.701889, 44.032974, 34.431023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891144, 44.126736, 34.317043>,  <43.206570, 44.283005, 34.127079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891144, 44.126736, 34.317043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553117, -0.788099, 0.270113,
		0.268747, 0.475680, 0.837558,
		-0.788566, -0.390675, 0.474906,
		42.654575, 44.009533, 34.459515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384071, 44.019371, 34.725811>,  <43.206570, 44.283005, 34.127079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384071, 44.019371, 34.725811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091114, 43.757664, 34.650402>,  <42.915340, 43.600639, 34.605156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091114, 43.757664, 34.650402>,  <43.384071, 44.019371, 34.725811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091114, 43.757664, 34.650402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533859, -0.723647, 0.437412,
		-0.422608, 0.219711, 0.879278,
		-0.732391, -0.654264, -0.188524,
		42.871395, 43.561386, 34.593845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237572, 43.722027, 35.372402>,  <43.384071, 44.019371, 34.725811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237572, 43.722027, 35.372402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105801, 43.469818, 35.091286>,  <43.026737, 43.318493, 34.922615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105801, 43.469818, 35.091286>,  <43.237572, 43.722027, 35.372402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105801, 43.469818, 35.091286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496651, -0.748764, 0.438965,
		-0.803005, -0.204437, 0.559811,
		-0.329426, -0.630522, -0.702795,
		43.006973, 43.280663, 34.880447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967136, 43.188217, 35.732201>,  <43.237572, 43.722027, 35.372402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967136, 43.188217, 35.732201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044197, 43.053177, 35.363655>,  <43.090435, 42.972153, 35.142529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044197, 43.053177, 35.363655>,  <42.967136, 43.188217, 35.732201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044197, 43.053177, 35.363655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454764, -0.801311, 0.388704,
		-0.869526, -0.493886, -0.000842,
		0.192651, -0.337606, -0.921362,
		43.101994, 42.951897, 35.087246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927193, 42.511135, 35.763371>,  <42.967136, 43.188217, 35.732201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927193, 42.511135, 35.763371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129864, 42.527248, 35.418892>,  <43.251469, 42.536915, 35.212204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129864, 42.527248, 35.418892>,  <42.927193, 42.511135, 35.763371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129864, 42.527248, 35.418892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325997, -0.933695, 0.148123,
		-0.798124, -0.355797, -0.486217,
		0.506680, 0.040285, -0.861193,
		43.281868, 42.539333, 35.160534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791706, 41.862617, 35.434811>,  <42.927193, 42.511135, 35.763371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791706, 41.862617, 35.434811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133568, 42.011696, 35.290218>,  <43.338684, 42.101143, 35.203465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133568, 42.011696, 35.290218>,  <42.791706, 41.862617, 35.434811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133568, 42.011696, 35.290218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451876, -0.876809, 0.164361,
		-0.255694, -0.303817, -0.917778,
		0.854651, 0.372696, -0.361482,
		43.389961, 42.123505, 35.181774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998737, 41.362957, 34.947430>,  <42.791706, 41.862617, 35.434811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998737, 41.362957, 34.947430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339771, 41.551682, 35.037304>,  <43.544392, 41.664917, 35.091228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339771, 41.551682, 35.037304>,  <42.998737, 41.362957, 34.947430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339771, 41.551682, 35.037304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471316, -0.879963, 0.059383,
		0.225736, 0.055270, -0.972619,
		0.852587, 0.471816, 0.224689,
		43.595547, 41.693226, 35.104710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479259, 41.225693, 34.440018>,  <42.998737, 41.362957, 34.947430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479259, 41.225693, 34.440018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708683, 41.307018, 34.757431>,  <43.846336, 41.355812, 34.947880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708683, 41.307018, 34.757431>,  <43.479259, 41.225693, 34.440018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708683, 41.307018, 34.757431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490333, -0.861209, -0.133762,
		0.656202, 0.465815, -0.593646,
		0.573562, 0.203309, 0.793532,
		43.880753, 41.368011, 34.995491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107651, 40.903114, 34.320011>,  <43.479259, 41.225693, 34.440018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107651, 40.903114, 34.320011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178699, 40.996181, 34.702492>,  <44.221329, 41.052021, 34.931980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178699, 40.996181, 34.702492>,  <44.107651, 40.903114, 34.320011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178699, 40.996181, 34.702492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681079, -0.730417, 0.051212,
		0.710338, 0.642150, -0.288206,
		0.177625, 0.232669, 0.956198,
		44.231987, 41.065983, 34.989349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800907, 40.822853, 34.390186>,  <44.107651, 40.903114, 34.320011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800907, 40.822853, 34.390186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665634, 40.810314, 34.766411>,  <44.584473, 40.802792, 34.992146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665634, 40.810314, 34.766411>,  <44.800907, 40.822853, 34.390186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665634, 40.810314, 34.766411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690474, -0.687358, 0.225355,
		0.639437, 0.725643, 0.254092,
		-0.338179, -0.031343, 0.940560,
		44.564182, 40.800911, 35.048580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321522, 41.041359, 34.952785>,  <44.800907, 40.822853, 34.390186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321522, 41.041359, 34.952785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038376, 40.781845, 35.064495>,  <44.868488, 40.626137, 35.131519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038376, 40.781845, 35.064495>,  <45.321522, 41.041359, 34.952785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038376, 40.781845, 35.064495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704876, -0.623362, 0.338482,
		-0.045515, 0.436455, 0.898574,
		-0.707869, -0.648789, 0.279275,
		44.826015, 40.587208, 35.148277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766880, 40.595940, 35.258846>,  <45.321522, 41.041359, 34.952785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766880, 40.595940, 35.258846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410103, 40.415154, 35.253876>,  <45.196037, 40.306683, 35.250893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410103, 40.415154, 35.253876>,  <45.766880, 40.595940, 35.258846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410103, 40.415154, 35.253876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435880, -0.866848, 0.242042,
		-0.120166, 0.210473, 0.970186,
		-0.891947, -0.451970, -0.012425,
		45.142517, 40.279564, 35.250149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749710, 40.172802, 35.902264>,  <45.766880, 40.595940, 35.258846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749710, 40.172802, 35.902264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447445, 40.024761, 35.686115>,  <45.266087, 39.935936, 35.556427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447445, 40.024761, 35.686115>,  <45.749710, 40.172802, 35.902264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447445, 40.024761, 35.686115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333801, -0.927473, 0.168437,
		-0.563516, -0.053094, 0.824398,
		-0.755663, -0.370102, -0.540368,
		45.220745, 39.913731, 35.524006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.395859, 39.722961, 36.366772>,  <45.749710, 40.172802, 35.902264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.395859, 39.722961, 36.366772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320633, 39.621456, 35.987247>,  <45.275497, 39.560555, 35.759533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320633, 39.621456, 35.987247>,  <45.395859, 39.722961, 36.366772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320633, 39.621456, 35.987247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253273, -0.945904, 0.202780,
		-0.948938, -0.202171, 0.242163,
		-0.188067, -0.253759, -0.948808,
		45.264214, 39.545330, 35.702606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010674, 39.167336, 36.446915>,  <45.395859, 39.722961, 36.366772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010674, 39.167336, 36.446915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133514, 39.124901, 36.068615>,  <45.207218, 39.099442, 35.841637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133514, 39.124901, 36.068615>,  <45.010674, 39.167336, 36.446915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133514, 39.124901, 36.068615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179353, -0.969509, 0.166987,
		-0.934624, -0.220904, -0.278709,
		0.307099, -0.106083, -0.945747,
		45.225643, 39.093075, 35.784889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714851, 38.561596, 36.249649>,  <45.010674, 39.167336, 36.446915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714851, 38.561596, 36.249649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991138, 38.600796, 35.963066>,  <45.156910, 38.624313, 35.791119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991138, 38.600796, 35.963066>,  <44.714851, 38.561596, 36.249649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991138, 38.600796, 35.963066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308426, -0.936059, 0.169313,
		-0.654051, -0.337920, -0.676777,
		0.690718, 0.097996, -0.716454,
		45.198353, 38.630196, 35.748131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547333, 38.110779, 35.698910>,  <44.714851, 38.561596, 36.249649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547333, 38.110779, 35.698910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933140, 38.182404, 35.621311>,  <45.164623, 38.225380, 35.574753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933140, 38.182404, 35.621311>,  <44.547333, 38.110779, 35.698910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933140, 38.182404, 35.621311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212114, -0.963109, 0.165616,
		-0.157185, -0.200889, -0.966921,
		0.964521, 0.179065, -0.193998,
		45.222496, 38.236122, 35.563110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761368, 37.607216, 35.357197>,  <44.547333, 38.110779, 35.698910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761368, 37.607216, 35.357197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123901, 37.733883, 35.469105>,  <45.341423, 37.809883, 35.536251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123901, 37.733883, 35.469105>,  <44.761368, 37.607216, 35.357197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123901, 37.733883, 35.469105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262618, -0.940835, 0.214154,
		0.331036, -0.120623, -0.935877,
		0.906337, 0.316671, 0.279773,
		45.395802, 37.828884, 35.553036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175991, 37.208775, 34.988995>,  <44.761368, 37.607216, 35.357197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175991, 37.208775, 34.988995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436085, 37.348164, 35.259033>,  <45.592140, 37.431797, 35.421059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436085, 37.348164, 35.259033>,  <45.175991, 37.208775, 34.988995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436085, 37.348164, 35.259033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439771, -0.897238, 0.039557,
		0.619511, 0.271169, -0.736664,
		0.650237, 0.348470, 0.675101,
		45.631157, 37.452705, 35.461563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856068, 37.079460, 34.694298>,  <45.175991, 37.208775, 34.988995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856068, 37.079460, 34.694298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890312, 37.117363, 35.091022>,  <45.910858, 37.140106, 35.329056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890312, 37.117363, 35.091022>,  <45.856068, 37.079460, 34.694298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890312, 37.117363, 35.091022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526004, -0.849729, 0.035782,
		0.846162, 0.518634, -0.122589,
		0.085610, 0.094760, 0.991812,
		45.915997, 37.145790, 35.388565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.598778, 37.161797, 34.832054>,  <45.856068, 37.079460, 34.694298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.598778, 37.161797, 34.832054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401455, 37.013626, 35.146870>,  <46.283062, 36.924725, 35.335758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401455, 37.013626, 35.146870>,  <46.598778, 37.161797, 34.832054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401455, 37.013626, 35.146870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671394, -0.737421, 0.073756,
		0.553059, 0.564798, 0.612477,
		-0.493311, -0.370422, 0.787040,
		46.253460, 36.902500, 35.382980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.092594, 36.792736, 35.185894>,  <46.598778, 37.161797, 34.832054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.092594, 36.792736, 35.185894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750069, 36.643108, 35.328323>,  <46.544552, 36.553329, 35.413780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750069, 36.643108, 35.328323>,  <47.092594, 36.792736, 35.185894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.750069, 36.643108, 35.328323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394821, -0.918626, -0.015560,
		0.332923, 0.127262, 0.934327,
		-0.856317, -0.374072, 0.356078,
		46.493172, 36.530888, 35.435146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.106922, 36.629044, 35.887516>,  <47.092594, 36.792736, 35.185894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.106922, 36.629044, 35.887516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893032, 36.384224, 35.654465>,  <46.764698, 36.237331, 35.514633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893032, 36.384224, 35.654465>,  <47.106922, 36.629044, 35.887516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893032, 36.384224, 35.654465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814918, -0.555907, -0.163940,
		-0.223549, -0.562460, 0.796031,
		-0.534729, -0.612051, -0.582631,
		46.732613, 36.200607, 35.479675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.077042, 35.928684, 36.141155>,  <47.106922, 36.629044, 35.887516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.077042, 35.928684, 36.141155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.040028, 35.925465, 35.742886>,  <47.017818, 35.923534, 35.503922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.040028, 35.925465, 35.742886>,  <47.077042, 35.928684, 36.141155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.040028, 35.925465, 35.742886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660763, -0.748550, -0.055360,
		-0.744868, -0.663030, 0.074587,
		-0.092538, -0.008048, -0.995676,
		47.012268, 35.923050, 35.444183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728500, 35.291733, 35.725163>,  <47.077042, 35.928684, 36.141155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728500, 35.291733, 35.725163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.999584, 35.463715, 35.486549>,  <47.162235, 35.566902, 35.343384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.999584, 35.463715, 35.486549>,  <46.728500, 35.291733, 35.725163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.999584, 35.463715, 35.486549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484667, -0.871272, -0.077350,
		-0.552996, -0.236696, -0.798855,
		0.677712, 0.429953, -0.596529,
		47.202896, 35.592701, 35.307590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.347042, 35.087315, 35.257038>,  <46.728500, 35.291733, 35.725163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.347042, 35.087315, 35.257038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710712, 35.031666, 35.100044>,  <47.928917, 34.998276, 35.005848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710712, 35.031666, 35.100044>,  <47.347042, 35.087315, 35.257038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.710712, 35.031666, 35.100044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415021, 0.379566, 0.826854,
		0.033941, -0.914645, 0.402830,
		0.909179, -0.139119, -0.392480,
		47.983467, 34.989929, 34.982300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.710552, 32.838715, 44.313873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.395454, 32.824524, 44.067883>,  <32.206394, 32.816010, 43.920288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.395454, 32.824524, 44.067883>,  <32.710552, 32.838715, 44.313873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395454, 32.824524, 44.067883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599653, 0.184295, -0.778750,
		0.140965, -0.982230, -0.123904,
		-0.787747, -0.035477, -0.614976,
		32.159130, 32.813881, 43.883389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981148, 32.466110, 43.838707>,  <32.710552, 32.838715, 44.313873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981148, 32.466110, 43.838707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.669514, 32.650848, 43.669132>,  <32.482533, 32.761692, 43.567387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.669514, 32.650848, 43.669132>,  <32.981148, 32.466110, 43.838707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669514, 32.650848, 43.669132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442656, -0.073601, -0.893666,
		-0.443935, -0.883903, -0.147096,
		-0.779087, 0.461842, -0.423939,
		32.435787, 32.789402, 43.541950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860649, 32.181103, 43.191902>,  <32.981148, 32.466110, 43.838707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860649, 32.181103, 43.191902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.683941, 32.538525, 43.159904>,  <32.577915, 32.752979, 43.140705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.683941, 32.538525, 43.159904>,  <32.860649, 32.181103, 43.191902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683941, 32.538525, 43.159904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419284, 0.126813, -0.898955,
		-0.793121, -0.430671, -0.430675,
		-0.441769, 0.893555, -0.079995,
		32.551411, 32.806591, 43.135906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522121, 32.199314, 42.502480>,  <32.860649, 32.181103, 43.191902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522121, 32.199314, 42.502480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.567020, 32.577221, 42.625652>,  <32.593960, 32.803963, 42.699554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.567020, 32.577221, 42.625652>,  <32.522121, 32.199314, 42.502480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567020, 32.577221, 42.625652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312686, 0.260565, -0.913419,
		-0.943201, 0.198818, -0.266165,
		0.112250, 0.944763, 0.307933,
		32.600697, 32.860649, 42.718033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474976, 32.553886, 41.878666>,  <32.522121, 32.199314, 42.502480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474976, 32.553886, 41.878666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.635418, 32.861767, 42.077335>,  <32.731682, 33.046494, 42.196537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.635418, 32.861767, 42.077335>,  <32.474976, 32.553886, 41.878666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635418, 32.861767, 42.077335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400416, 0.340332, -0.850789,
		-0.823883, 0.540129, -0.171691,
		0.401103, 0.769698, 0.496670,
		32.755749, 33.092678, 42.226337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326004, 33.203987, 41.509289>,  <32.474976, 32.553886, 41.878666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326004, 33.203987, 41.509289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.654282, 33.257835, 41.731400>,  <32.851250, 33.290146, 41.864666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.654282, 33.257835, 41.731400>,  <32.326004, 33.203987, 41.509289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654282, 33.257835, 41.731400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395856, 0.566835, -0.722493,
		-0.412019, 0.812757, 0.411906,
		0.820694, 0.134625, 0.555281,
		32.900490, 33.298222, 41.897984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521942, 33.892792, 41.419865>,  <32.326004, 33.203987, 41.509289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521942, 33.892792, 41.419865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.852455, 33.714279, 41.557323>,  <33.050762, 33.607174, 41.639797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.852455, 33.714279, 41.557323>,  <32.521942, 33.892792, 41.419865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852455, 33.714279, 41.557323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553579, 0.530831, -0.641692,
		0.103954, 0.720455, 0.685666,
		0.826283, -0.446277, 0.343646,
		33.100342, 33.580395, 41.660416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048027, 34.386372, 41.305641>,  <32.521942, 33.892792, 41.419865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048027, 34.386372, 41.305641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.235615, 34.035202, 41.344250>,  <33.348167, 33.824501, 41.367416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.235615, 34.035202, 41.344250>,  <33.048027, 34.386372, 41.305641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235615, 34.035202, 41.344250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653075, 0.271118, -0.707098,
		0.594610, 0.394643, 0.700497,
		0.468969, -0.877924, 0.096522,
		33.376305, 33.771824, 41.373207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727047, 34.535969, 41.439220>,  <33.048027, 34.386372, 41.305641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727047, 34.535969, 41.439220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.736309, 34.156448, 41.313206>,  <33.741867, 33.928738, 41.237598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.736309, 34.156448, 41.313206>,  <33.727047, 34.535969, 41.439220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736309, 34.156448, 41.313206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659017, 0.251450, -0.708851,
		0.751771, -0.191202, 0.631096,
		0.023155, -0.948796, -0.315038,
		33.743256, 33.871811, 41.218693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466293, 34.268421, 41.481243>,  <33.727047, 34.535969, 41.439220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466293, 34.268421, 41.481243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.275528, 34.044342, 41.210323>,  <34.161068, 33.909897, 41.047771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.275528, 34.044342, 41.210323>,  <34.466293, 34.268421, 41.481243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275528, 34.044342, 41.210323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577270, 0.381451, -0.721979,
		0.662805, -0.735308, 0.141463,
		-0.476916, -0.560194, -0.677299,
		34.132454, 33.876286, 41.007133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945755, 33.905586, 41.236271>,  <34.466293, 34.268421, 41.481243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945755, 33.905586, 41.236271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.663033, 33.890343, 40.953720>,  <34.493401, 33.881199, 40.784187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.663033, 33.890343, 40.953720>,  <34.945755, 33.905586, 41.236271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663033, 33.890343, 40.953720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669675, 0.285727, -0.685490,
		0.227952, -0.957553, -0.176436,
		-0.706805, -0.038104, -0.706381,
		34.450993, 33.878910, 40.741806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238960, 33.621216, 40.703468>,  <34.945755, 33.905586, 41.236271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238960, 33.621216, 40.703468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932400, 33.802029, 40.520912>,  <34.748463, 33.910515, 40.411377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932400, 33.802029, 40.520912>,  <35.238960, 33.621216, 40.703468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932400, 33.802029, 40.520912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574492, 0.164488, -0.801812,
		-0.287370, -0.876707, -0.385751,
		-0.766405, 0.452027, -0.456392,
		34.702477, 33.937637, 40.383995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282257, 33.319443, 40.084507>,  <35.238960, 33.621216, 40.703468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282257, 33.319443, 40.084507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.082684, 33.665218, 40.059822>,  <34.962940, 33.872684, 40.045010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.082684, 33.665218, 40.059822>,  <35.282257, 33.319443, 40.084507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082684, 33.665218, 40.059822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589370, 0.286236, -0.755455,
		-0.635383, -0.413291, -0.652288,
		-0.498931, 0.864442, -0.061711,
		34.933002, 33.924549, 40.041309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209934, 33.375355, 39.373386>,  <35.282257, 33.319443, 40.084507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209934, 33.375355, 39.373386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.141975, 33.745541, 39.508823>,  <35.101200, 33.967651, 39.590088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.141975, 33.745541, 39.508823>,  <35.209934, 33.375355, 39.373386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141975, 33.745541, 39.508823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725444, 0.350003, -0.592645,
		-0.666983, 0.144946, -0.730838,
		-0.169894, 0.925467, 0.338596,
		35.091007, 34.023182, 39.610401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070168, 33.880241, 38.735336>,  <35.209934, 33.375355, 39.373386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070168, 33.880241, 38.735336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217495, 34.088001, 39.043770>,  <35.305893, 34.212658, 39.228828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217495, 34.088001, 39.043770>,  <35.070168, 33.880241, 38.735336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217495, 34.088001, 39.043770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500951, 0.587810, -0.635238,
		-0.783190, 0.620246, -0.043690,
		0.368322, 0.519399, 0.771079,
		35.327991, 34.243820, 39.275093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088127, 34.588413, 38.468109>,  <35.070168, 33.880241, 38.735336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088127, 34.588413, 38.468109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324814, 34.606632, 38.790051>,  <35.466827, 34.617565, 38.983215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324814, 34.606632, 38.790051>,  <35.088127, 34.588413, 38.468109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324814, 34.606632, 38.790051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651424, 0.561123, -0.510674,
		-0.474884, 0.826478, 0.302355,
		0.591719, 0.045550, 0.804856,
		35.502331, 34.620296, 39.031506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237785, 35.287498, 38.516045>,  <35.088127, 34.588413, 38.468109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237785, 35.287498, 38.516045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516617, 35.076603, 38.710403>,  <35.683918, 34.950066, 38.827019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516617, 35.076603, 38.710403>,  <35.237785, 35.287498, 38.516045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516617, 35.076603, 38.710403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711627, 0.426025, -0.558650,
		0.087535, 0.735205, 0.672169,
		0.697083, -0.527235, 0.485899,
		35.725742, 34.918434, 38.856174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732391, 35.788685, 38.734596>,  <35.237785, 35.287498, 38.516045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732391, 35.788685, 38.734596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911999, 35.431282, 38.736950>,  <36.019764, 35.216843, 38.738361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911999, 35.431282, 38.736950>,  <35.732391, 35.788685, 38.734596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911999, 35.431282, 38.736950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803012, 0.400636, -0.441206,
		0.391864, 0.202831, 0.897387,
		0.449015, -0.893505, 0.005881,
		36.046703, 35.163231, 38.738712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502220, 35.959839, 38.772640>,  <35.732391, 35.788685, 38.734596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502220, 35.959839, 38.772640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493481, 35.577843, 38.654312>,  <36.488235, 35.348644, 38.583317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493481, 35.577843, 38.654312>,  <36.502220, 35.959839, 38.772640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493481, 35.577843, 38.654312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853214, 0.136416, -0.503406,
		0.521104, -0.263395, 0.811833,
		-0.021848, -0.954994, -0.295819,
		36.486927, 35.291344, 38.565567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099453, 35.754776, 38.921402>,  <36.502220, 35.959839, 38.772640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099453, 35.754776, 38.921402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930607, 35.544506, 38.625973>,  <36.829300, 35.418343, 38.448715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930607, 35.544506, 38.625973>,  <37.099453, 35.754776, 38.921402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930607, 35.544506, 38.625973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804437, 0.158428, -0.572522,
		0.417971, -0.835803, 0.355997,
		-0.422116, -0.525675, -0.738569,
		36.803970, 35.386803, 38.404404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620338, 35.368732, 38.513462>,  <37.099453, 35.754776, 38.921402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620338, 35.368732, 38.513462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328484, 35.356594, 38.240200>,  <37.153370, 35.349312, 38.076244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328484, 35.356594, 38.240200>,  <37.620338, 35.368732, 38.513462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328484, 35.356594, 38.240200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623637, 0.380305, -0.682968,
		0.280536, -0.924363, -0.258559,
		-0.729642, -0.030350, -0.683156,
		37.109592, 35.347488, 38.035252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987938, 35.058437, 37.955708>,  <37.620338, 35.368732, 38.513462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987938, 35.058437, 37.955708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.656582, 35.233734, 37.816154>,  <37.457767, 35.338913, 37.732422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.656582, 35.233734, 37.816154>,  <37.987938, 35.058437, 37.955708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656582, 35.233734, 37.816154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443293, 0.132121, -0.886586,
		-0.342443, -0.889095, -0.303716,
		-0.828386, 0.438241, -0.348886,
		37.408066, 35.365208, 37.711487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480858, 34.695019, 38.319763>,  <37.987938, 35.058437, 37.955708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480858, 34.695019, 38.319763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853539, 34.625523, 38.447350>,  <39.077148, 34.583824, 38.523903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853539, 34.625523, 38.447350>,  <38.480858, 34.695019, 38.319763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853539, 34.625523, 38.447350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358752, -0.302988, 0.882890,
		-0.056746, -0.937024, -0.344623,
		0.931706, -0.173735, 0.318966,
		39.133049, 34.573402, 38.543037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557026, 33.959881, 38.520081>,  <38.480858, 34.695019, 38.319763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557026, 33.959881, 38.520081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832611, 34.191872, 38.693954>,  <38.997963, 34.331066, 38.798279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832611, 34.191872, 38.693954>,  <38.557026, 33.959881, 38.520081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832611, 34.191872, 38.693954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351141, -0.257563, 0.900201,
		0.634057, -0.772843, 0.026203,
		0.688965, 0.579979, 0.434686,
		39.039299, 34.365864, 38.824360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058094, 33.461727, 38.797031>,  <38.557026, 33.959881, 38.520081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058094, 33.461727, 38.797031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112652, 33.800060, 39.003319>,  <39.145386, 34.003059, 39.127090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112652, 33.800060, 39.003319>,  <39.058094, 33.461727, 38.797031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112652, 33.800060, 39.003319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150629, -0.496820, 0.854682,
		0.979136, -0.194259, 0.059641,
		0.136399, 0.845833, 0.515716,
		39.153572, 34.053810, 39.158035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421741, 33.273506, 39.415676>,  <39.058094, 33.461727, 38.797031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421741, 33.273506, 39.415676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291107, 33.643272, 39.494453>,  <39.212727, 33.865131, 39.541721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291107, 33.643272, 39.494453>,  <39.421741, 33.273506, 39.415676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291107, 33.643272, 39.494453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271178, -0.291256, 0.917405,
		0.905429, 0.246207, 0.345803,
		-0.326589, 0.924420, 0.196946,
		39.193130, 33.920597, 39.553535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565006, 33.437252, 40.212723>,  <39.421741, 33.273506, 39.415676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565006, 33.437252, 40.212723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.255146, 33.650410, 40.076523>,  <39.069229, 33.778305, 39.994804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.255146, 33.650410, 40.076523>,  <39.565006, 33.437252, 40.212723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255146, 33.650410, 40.076523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499813, -0.186056, 0.845914,
		0.387432, 0.825473, 0.410476,
		-0.774651, 0.532895, -0.340499,
		39.022751, 33.810280, 39.974373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370560, 33.800564, 40.803783>,  <39.565006, 33.437252, 40.212723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370560, 33.800564, 40.803783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041527, 33.857716, 40.583622>,  <38.844109, 33.892006, 40.451523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041527, 33.857716, 40.583622>,  <39.370560, 33.800564, 40.803783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041527, 33.857716, 40.583622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564983, -0.095617, 0.819543,
		0.064471, 0.985110, 0.159379,
		-0.822580, 0.142883, -0.550406,
		38.794754, 33.900581, 40.418499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923191, 34.294155, 41.207340>,  <39.370560, 33.800564, 40.803783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923191, 34.294155, 41.207340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.681381, 34.107601, 40.949024>,  <38.536297, 33.995670, 40.794037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.681381, 34.107601, 40.949024>,  <38.923191, 34.294155, 41.207340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681381, 34.107601, 40.949024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626373, -0.222560, 0.747077,
		-0.492151, 0.856127, -0.157588,
		-0.604520, -0.466383, -0.645788,
		38.500027, 33.967686, 40.755287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237488, 34.547558, 41.365307>,  <38.923191, 34.294155, 41.207340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237488, 34.547558, 41.365307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146339, 34.205105, 41.179783>,  <38.091648, 33.999634, 41.068470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146339, 34.205105, 41.179783>,  <38.237488, 34.547558, 41.365307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146339, 34.205105, 41.179783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569435, -0.269214, 0.776703,
		-0.789821, 0.441099, -0.426162,
		-0.227875, -0.856128, -0.463808,
		38.077976, 33.948265, 41.040642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487282, 34.499874, 41.510731>,  <38.237488, 34.547558, 41.365307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487282, 34.499874, 41.510731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.619835, 34.139973, 41.397144>,  <37.699368, 33.924030, 41.328995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.619835, 34.139973, 41.397144>,  <37.487282, 34.499874, 41.510731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619835, 34.139973, 41.397144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626840, -0.434895, 0.646481,
		-0.705166, -0.036231, -0.708116,
		0.331379, -0.899752, -0.283962,
		37.719250, 33.870049, 41.311954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918377, 34.025238, 41.367699>,  <37.487282, 34.499874, 41.510731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918377, 34.025238, 41.367699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227180, 33.779110, 41.431427>,  <37.412464, 33.631432, 41.469666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227180, 33.779110, 41.431427>,  <36.918377, 34.025238, 41.367699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227180, 33.779110, 41.431427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574789, -0.568845, 0.588245,
		-0.271329, -0.545708, -0.792833,
		0.772009, -0.615320, 0.159323,
		37.458782, 33.594513, 41.479225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523453, 33.391342, 41.462322>,  <36.918377, 34.025238, 41.367699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523453, 33.391342, 41.462322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884850, 33.358372, 41.630566>,  <37.101688, 33.338589, 41.731514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884850, 33.358372, 41.630566>,  <36.523453, 33.391342, 41.462322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884850, 33.358372, 41.630566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369536, -0.646965, 0.666992,
		0.217142, -0.758051, -0.614986,
		0.903489, -0.082427, 0.420611,
		37.155895, 33.333645, 41.756748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650738, 32.736610, 41.512375>,  <36.523453, 33.391342, 41.462322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650738, 32.736610, 41.512375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872120, 32.910629, 41.796467>,  <37.004948, 33.015041, 41.966923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872120, 32.910629, 41.796467>,  <36.650738, 32.736610, 41.512375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872120, 32.910629, 41.796467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405279, -0.604301, 0.685980,
		0.727627, -0.667497, -0.158135,
		0.553451, 0.435049, 0.710229,
		37.038155, 33.041145, 42.009537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845444, 32.204575, 42.095093>,  <36.650738, 32.736610, 41.512375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845444, 32.204575, 42.095093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901440, 32.556026, 42.277702>,  <36.935036, 32.766899, 42.387268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901440, 32.556026, 42.277702>,  <36.845444, 32.204575, 42.095093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901440, 32.556026, 42.277702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462849, -0.349521, 0.814620,
		0.875314, -0.325336, 0.357745,
		0.139985, 0.878630, 0.456522,
		36.943436, 32.819614, 42.414658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927765, 31.989576, 42.774857>,  <36.845444, 32.204575, 42.095093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927765, 31.989576, 42.774857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888531, 32.386047, 42.810516>,  <36.864990, 32.623928, 42.831913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888531, 32.386047, 42.810516>,  <36.927765, 31.989576, 42.774857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888531, 32.386047, 42.810516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404071, -0.121532, 0.906618,
		0.909453, 0.052905, 0.412427,
		-0.098088, 0.991177, 0.089151,
		36.859104, 32.683399, 42.837261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135235, 32.296955, 43.533638>,  <36.927765, 31.989576, 42.774857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135235, 32.296955, 43.533638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.883812, 32.559715, 43.367073>,  <36.732960, 32.717373, 43.267132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.883812, 32.559715, 43.367073>,  <37.135235, 32.296955, 43.533638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883812, 32.559715, 43.367073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627114, -0.111358, 0.770926,
		0.460050, 0.745709, 0.481946,
		-0.628555, 0.656900, -0.416415,
		36.695244, 32.756786, 43.242149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904850, 32.793106, 44.123035>,  <37.135235, 32.296955, 43.533638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904850, 32.793106, 44.123035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618629, 32.812378, 43.844276>,  <36.446896, 32.823940, 43.677021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618629, 32.812378, 43.844276>,  <36.904850, 32.793106, 44.123035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618629, 32.812378, 43.844276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697504, 0.005544, 0.716559,
		0.038389, 0.998823, 0.029641,
		-0.715552, 0.048182, -0.696896,
		36.403965, 32.826832, 43.635208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306450, 33.267162, 44.404922>,  <36.904850, 32.793106, 44.123035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306450, 33.267162, 44.404922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.162952, 33.039814, 44.108746>,  <36.076855, 32.903404, 43.931038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.162952, 33.039814, 44.108746>,  <36.306450, 33.267162, 44.404922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162952, 33.039814, 44.108746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867658, -0.089453, 0.489048,
		-0.344195, 0.817896, -0.461059,
		-0.358747, -0.568369, -0.740444,
		36.055328, 32.869305, 43.886612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692852, 33.514568, 44.109024>,  <36.306450, 33.267162, 44.404922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692852, 33.514568, 44.109024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.678589, 33.123192, 44.027657>,  <35.670033, 32.888367, 43.978836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.678589, 33.123192, 44.027657>,  <35.692852, 33.514568, 44.109024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678589, 33.123192, 44.027657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869397, -0.070006, 0.489129,
		-0.492825, 0.194292, -0.848159,
		-0.035657, -0.978442, -0.203418,
		35.667892, 32.829659, 43.966633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.925919, 33.358654, 43.877567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105484, 33.020023, 43.991955>,  <35.213223, 32.816845, 44.060589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105484, 33.020023, 43.991955>,  <34.925919, 33.358654, 43.877567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105484, 33.020023, 43.991955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729580, -0.162462, 0.664318,
		-0.515940, -0.506859, -0.690580,
		0.448909, -0.846581, 0.285973,
		35.240158, 32.766048, 44.077747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364143, 32.940788, 43.948505>,  <34.925919, 33.358654, 43.877567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364143, 32.940788, 43.948505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649490, 32.762749, 44.165020>,  <34.820698, 32.655926, 44.294930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649490, 32.762749, 44.165020>,  <34.364143, 32.940788, 43.948505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649490, 32.762749, 44.165020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688032, -0.298112, 0.661620,
		-0.133124, -0.844401, -0.518907,
		0.713365, -0.445102, 0.541289,
		34.863499, 32.629219, 44.327408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032246, 32.482754, 44.206059>,  <34.364143, 32.940788, 43.948505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032246, 32.482754, 44.206059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.344242, 32.474998, 44.456257>,  <34.531441, 32.470345, 44.606377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.344242, 32.474998, 44.456257>,  <34.032246, 32.482754, 44.206059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344242, 32.474998, 44.456257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609528, -0.249937, 0.752334,
		0.141747, -0.968068, -0.206767,
		0.779989, -0.019389, 0.625492,
		34.578239, 32.469181, 44.643906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117073, 31.711878, 44.475433>,  <34.032246, 32.482754, 44.206059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117073, 31.711878, 44.475433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.268246, 31.970888, 44.740124>,  <34.358948, 32.126293, 44.898937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.268246, 31.970888, 44.740124>,  <34.117073, 31.711878, 44.475433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268246, 31.970888, 44.740124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641054, -0.332668, 0.691652,
		0.667998, -0.685595, 0.289376,
		0.377927, 0.647528, 0.661725,
		34.381622, 32.165146, 44.938641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076687, 31.347979, 45.068798>,  <34.117073, 31.711878, 44.475433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076687, 31.347979, 45.068798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.136005, 31.725811, 45.185944>,  <34.171597, 31.952511, 45.256233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.136005, 31.725811, 45.185944>,  <34.076687, 31.347979, 45.068798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136005, 31.725811, 45.185944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475516, -0.191550, 0.858600,
		0.867117, -0.266593, 0.420757,
		0.148301, 0.944583, 0.292865,
		34.180496, 32.009186, 45.273804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278954, 31.271969, 45.746433>,  <34.076687, 31.347979, 45.068798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278954, 31.271969, 45.746433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130775, 31.639984, 45.695370>,  <34.041870, 31.860794, 45.664730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130775, 31.639984, 45.695370>,  <34.278954, 31.271969, 45.746433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130775, 31.639984, 45.695370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480219, -0.072056, 0.874184,
		0.795085, 0.385142, 0.468513,
		-0.370444, 0.920040, -0.127662,
		34.019642, 31.915997, 45.657070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251850, 31.535728, 46.365788>,  <34.278954, 31.271969, 45.746433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251850, 31.535728, 46.365788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006996, 31.785601, 46.171856>,  <33.860085, 31.935524, 46.055496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006996, 31.785601, 46.171856>,  <34.251850, 31.535728, 46.365788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006996, 31.785601, 46.171856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650664, -0.049488, 0.757752,
		0.449360, 0.779310, 0.436751,
		-0.612138, 0.624681, -0.484831,
		33.823357, 31.973005, 46.026405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915611, 31.871700, 46.917114>,  <34.251850, 31.535728, 46.365788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915611, 31.871700, 46.917114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681541, 31.973574, 46.609165>,  <33.541100, 32.034698, 46.424397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681541, 31.973574, 46.609165>,  <33.915611, 31.871700, 46.917114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681541, 31.973574, 46.609165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758666, 0.163309, 0.630680,
		0.286351, 0.953135, 0.097655,
		-0.585175, 0.254683, -0.769875,
		33.505989, 32.049980, 46.378204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775654, 32.627247, 46.917732>,  <33.915611, 31.871700, 46.917114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775654, 32.627247, 46.917732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513550, 32.369625, 46.759834>,  <33.356289, 32.215050, 46.665096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513550, 32.369625, 46.759834>,  <33.775654, 32.627247, 46.917732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513550, 32.369625, 46.759834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546094, 0.042823, 0.836629,
		-0.521933, 0.763778, -0.379776,
		-0.655262, -0.644057, -0.394744,
		33.316971, 32.176407, 46.641411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229572, 32.748280, 47.434277>,  <33.775654, 32.627247, 46.917732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229572, 32.748280, 47.434277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068790, 32.463379, 47.204105>,  <32.972321, 32.292439, 47.066002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068790, 32.463379, 47.204105>,  <33.229572, 32.748280, 47.434277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068790, 32.463379, 47.204105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657666, -0.212689, 0.722661,
		-0.637107, 0.668921, -0.382935,
		-0.401957, -0.712256, -0.575432,
		32.948204, 32.249702, 47.031475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498684, 32.868355, 47.386204>,  <33.229572, 32.748280, 47.434277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498684, 32.868355, 47.386204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.547573, 32.478359, 47.311947>,  <32.576904, 32.244362, 47.267391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.547573, 32.478359, 47.311947>,  <32.498684, 32.868355, 47.386204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547573, 32.478359, 47.311947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604407, -0.221476, 0.765272,
		-0.787245, 0.018672, -0.616358,
		0.122220, -0.974987, -0.185641,
		32.584240, 32.185863, 47.256256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820850, 32.593590, 47.188465>,  <32.498684, 32.868355, 47.386204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820850, 32.593590, 47.188465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031502, 32.273544, 47.303345>,  <32.157894, 32.081516, 47.372272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031502, 32.273544, 47.303345>,  <31.820850, 32.593590, 47.188465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031502, 32.273544, 47.303345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777125, -0.316174, 0.544160,
		-0.344587, -0.509756, -0.788295,
		0.526627, -0.800114, 0.287195,
		32.189491, 32.033512, 47.389503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345272, 32.080311, 47.314404>,  <31.820850, 32.593590, 47.188465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345272, 32.080311, 47.314404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656588, 31.897585, 47.486725>,  <31.843376, 31.787949, 47.590118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656588, 31.897585, 47.486725>,  <31.345272, 32.080311, 47.314404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656588, 31.897585, 47.486725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624548, -0.634077, 0.455944,
		0.064880, -0.623912, -0.778797,
		0.778286, -0.456814, 0.430802,
		31.890074, 31.760540, 47.615967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259579, 31.371851, 47.264668>,  <31.345272, 32.080311, 47.314404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259579, 31.371851, 47.264668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492540, 31.392694, 47.589157>,  <31.632318, 31.405201, 47.783852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492540, 31.392694, 47.589157>,  <31.259579, 31.371851, 47.264668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492540, 31.392694, 47.589157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589364, -0.660248, 0.465535,
		0.559869, -0.749238, -0.353821,
		0.582406, 0.052109, 0.811226,
		31.667263, 31.408327, 47.832523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378799, 30.682596, 47.444386>,  <31.259579, 31.371851, 47.264668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378799, 30.682596, 47.444386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.450571, 30.902306, 47.770847>,  <31.493633, 31.034132, 47.966724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.450571, 30.902306, 47.770847>,  <31.378799, 30.682596, 47.444386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450571, 30.902306, 47.770847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371004, -0.730577, 0.573248,
		0.911132, -0.405653, 0.072696,
		0.179429, 0.549275, 0.816151,
		31.504400, 31.067087, 48.015694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666725, 30.211040, 47.881535>,  <31.378799, 30.682596, 47.444386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666725, 30.211040, 47.881535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.542095, 30.526192, 48.094013>,  <31.467318, 30.715282, 48.221500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.542095, 30.526192, 48.094013>,  <31.666725, 30.211040, 47.881535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542095, 30.526192, 48.094013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465373, -0.613916, 0.637601,
		0.828462, -0.048545, 0.557938,
		-0.311575, 0.787877, 0.531198,
		31.448624, 30.762554, 48.253372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845654, 30.014822, 48.535233>,  <31.666725, 30.211040, 47.881535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845654, 30.014822, 48.535233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574398, 30.304049, 48.587841>,  <31.411644, 30.477585, 48.619408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574398, 30.304049, 48.587841>,  <31.845654, 30.014822, 48.535233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574398, 30.304049, 48.587841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573865, -0.632773, 0.519882,
		0.459135, 0.277075, 0.844052,
		-0.678140, 0.723068, 0.131525,
		31.370956, 30.520969, 48.627300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677948, 30.018503, 49.240578>,  <31.845654, 30.014822, 48.535233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677948, 30.018503, 49.240578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364185, 30.219942, 49.095749>,  <31.175928, 30.340805, 49.008850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364185, 30.219942, 49.095749>,  <31.677948, 30.018503, 49.240578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364185, 30.219942, 49.095749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620189, -0.628833, 0.468971,
		0.008487, 0.592419, 0.805585,
		-0.784407, 0.503595, -0.362075,
		31.128864, 30.371021, 48.987125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219126, 29.930859, 49.740433>,  <31.677948, 30.018503, 49.240578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219126, 29.930859, 49.740433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.000683, 30.016087, 49.416367>,  <30.869617, 30.067223, 49.221928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.000683, 30.016087, 49.416367>,  <31.219126, 29.930859, 49.740433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000683, 30.016087, 49.416367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710894, -0.629490, 0.313642,
		-0.443164, 0.747224, 0.495239,
		-0.546109, 0.213068, -0.810165,
		30.836849, 30.080008, 49.173317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586926, 30.079327, 49.958866>,  <31.219126, 29.930859, 49.740433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586926, 30.079327, 49.958866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.532042, 29.949108, 49.584660>,  <30.499111, 29.870977, 49.360134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.532042, 29.949108, 49.584660>,  <30.586926, 30.079327, 49.958866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532042, 29.949108, 49.584660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669734, -0.665367, 0.329763,
		-0.729816, 0.671794, -0.126734,
		-0.137208, -0.325544, -0.935519,
		30.490879, 29.851444, 49.304005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881861, 29.884657, 49.946709>,  <30.586926, 30.079327, 49.958866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881861, 29.884657, 49.946709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.026257, 29.717529, 49.613216>,  <30.112894, 29.617252, 49.413120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.026257, 29.717529, 49.613216>,  <29.881861, 29.884657, 49.946709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026257, 29.717529, 49.613216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516031, -0.834171, 0.194606,
		-0.776787, 0.359981, -0.516736,
		0.360992, -0.417819, -0.833734,
		30.134554, 29.592184, 49.363094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269321, 29.543282, 49.663506>,  <29.881861, 29.884657, 49.946709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269321, 29.543282, 49.663506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597555, 29.382481, 49.501007>,  <29.794495, 29.285999, 49.403507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597555, 29.382481, 49.501007>,  <29.269321, 29.543282, 49.663506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597555, 29.382481, 49.501007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295362, -0.906817, 0.300740,
		-0.489289, -0.126792, -0.862855,
		0.820583, -0.402004, -0.406246,
		29.843731, 29.261879, 49.379135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675390, 29.618950, 50.117008>,  <29.269321, 29.543282, 49.663506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675390, 29.618950, 50.117008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.325977, 29.427013, 50.084290>,  <28.116329, 29.311852, 50.064659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.325977, 29.427013, 50.084290>,  <28.675390, 29.618950, 50.117008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325977, 29.427013, 50.084290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463330, -0.768141, -0.441909,
		0.149213, -0.423923, 0.893322,
		-0.873533, -0.479842, -0.081800,
		28.063917, 29.283060, 50.059750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904036, 29.778173, 49.969296>,  <28.675390, 29.618950, 50.117008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904036, 29.778173, 49.969296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.610010, 29.604094, 49.761341>,  <27.433596, 29.499645, 49.636566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.610010, 29.604094, 49.761341>,  <27.904036, 29.778173, 49.969296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610010, 29.604094, 49.761341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581084, -0.009309, -0.813791,
		0.349322, -0.900286, 0.259730,
		-0.735062, -0.435200, -0.519890,
		27.389492, 29.473534, 49.605373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036655, 29.146734, 49.504356>,  <27.904036, 29.778173, 49.969296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036655, 29.146734, 49.504356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.717136, 29.310175, 49.327736>,  <27.525425, 29.408239, 49.221764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.717136, 29.310175, 49.327736>,  <28.036655, 29.146734, 49.504356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717136, 29.310175, 49.327736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536745, 0.152554, -0.829838,
		-0.271715, -0.899872, -0.341176,
		-0.798796, 0.408604, -0.441551,
		27.477497, 29.432756, 49.195271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007668, 28.693041, 49.048744>,  <28.036655, 29.146734, 49.504356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007668, 28.693041, 49.048744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.793701, 29.003677, 48.915615>,  <27.665321, 29.190060, 48.835735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.793701, 29.003677, 48.915615>,  <28.007668, 28.693041, 49.048744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793701, 29.003677, 48.915615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585009, 0.056207, -0.809077,
		-0.609615, -0.627494, -0.484378,
		-0.534916, 0.776591, -0.332825,
		27.633226, 29.236654, 48.815769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107733, 28.725557, 48.387764>,  <28.007668, 28.693041, 49.048744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107733, 28.725557, 48.387764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.927784, 29.080225, 48.430542>,  <27.819815, 29.293026, 48.456207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.927784, 29.080225, 48.430542>,  <28.107733, 28.725557, 48.387764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927784, 29.080225, 48.430542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463646, 0.334210, -0.820570,
		-0.763314, -0.319569, -0.561451,
		-0.449872, 0.886667, 0.106941,
		27.792822, 29.346226, 48.462624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802771, 28.987661, 47.715103>,  <28.107733, 28.725557, 48.387764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802771, 28.987661, 47.715103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.882298, 29.295517, 47.957798>,  <27.930014, 29.480230, 48.103416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.882298, 29.295517, 47.957798>,  <27.802771, 28.987661, 47.715103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882298, 29.295517, 47.957798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489234, 0.458496, -0.741911,
		-0.849189, 0.444342, -0.285375,
		0.198819, 0.769638, 0.606736,
		27.941944, 29.526409, 48.139820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618015, 29.535963, 47.253216>,  <27.802771, 28.987661, 47.715103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618015, 29.535963, 47.253216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.844629, 29.690638, 47.544285>,  <27.980598, 29.783442, 47.718925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.844629, 29.690638, 47.544285>,  <27.618015, 29.535963, 47.253216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844629, 29.690638, 47.544285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524468, 0.511908, -0.680355,
		-0.635587, 0.767088, 0.087209,
		0.566535, 0.386686, 0.727676,
		28.014589, 29.806643, 47.762589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703337, 30.276667, 47.132710>,  <27.618015, 29.535963, 47.253216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703337, 30.276667, 47.132710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.020943, 30.195034, 47.361759>,  <28.211506, 30.146055, 47.499187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.020943, 30.195034, 47.361759>,  <27.703337, 30.276667, 47.132710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020943, 30.195034, 47.361759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543802, 0.659469, -0.519019,
		-0.271705, 0.723500, 0.634606,
		0.794013, -0.204079, 0.572622,
		28.259146, 30.133810, 47.533546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017942, 31.001999, 47.205528>,  <27.703337, 30.276667, 47.132710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017942, 31.001999, 47.205528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.293644, 30.729692, 47.304714>,  <28.459064, 30.566309, 47.364223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.293644, 30.729692, 47.304714>,  <28.017942, 31.001999, 47.205528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293644, 30.729692, 47.304714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625730, 0.386801, -0.677382,
		0.365227, 0.622046, 0.692580,
		0.689254, -0.680767, 0.247963,
		28.500420, 30.525463, 47.379105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575647, 31.371824, 47.138725>,  <28.017942, 31.001999, 47.205528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575647, 31.371824, 47.138725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721056, 30.999304, 47.129555>,  <28.808302, 30.775791, 47.124054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721056, 30.999304, 47.129555>,  <28.575647, 31.371824, 47.138725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721056, 30.999304, 47.129555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749406, 0.306963, -0.586655,
		0.553391, 0.196080, 0.809512,
		0.363522, -0.931303, -0.022927,
		28.830112, 30.719913, 47.122677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334867, 31.341799, 47.482140>,  <28.575647, 31.371824, 47.138725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334867, 31.341799, 47.482140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.296133, 31.038095, 47.224720>,  <29.272892, 30.855873, 47.070271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.296133, 31.038095, 47.224720>,  <29.334867, 31.341799, 47.482140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296133, 31.038095, 47.224720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830582, 0.294622, -0.472579,
		0.548412, -0.580281, 0.602095,
		-0.096838, -0.759257, -0.643545,
		29.267082, 30.810318, 47.031658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995417, 31.271626, 47.344296>,  <29.334867, 31.341799, 47.482140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995417, 31.271626, 47.344296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.796133, 31.060474, 47.069157>,  <29.676563, 30.933784, 46.904072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.796133, 31.060474, 47.069157>,  <29.995417, 31.271626, 47.344296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796133, 31.060474, 47.069157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637895, 0.314166, -0.703128,
		0.587263, -0.789080, 0.180209,
		-0.498209, -0.527876, -0.687848,
		29.646671, 30.902111, 46.862801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540995, 30.859264, 47.048325>,  <29.995417, 31.271626, 47.344296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540995, 30.859264, 47.048325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227604, 30.837267, 46.800732>,  <30.039570, 30.824068, 46.652176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227604, 30.837267, 46.800732>,  <30.540995, 30.859264, 47.048325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227604, 30.837267, 46.800732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578671, 0.298507, -0.758969,
		0.226509, -0.952822, -0.202049,
		-0.783476, -0.054994, -0.618984,
		29.992561, 30.820768, 46.615036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726278, 30.446638, 46.441154>,  <30.540995, 30.859264, 47.048325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726278, 30.446638, 46.441154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.430920, 30.697329, 46.341564>,  <30.253704, 30.847742, 46.281811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.430920, 30.697329, 46.341564>,  <30.726278, 30.446638, 46.441154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430920, 30.697329, 46.341564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512590, 0.281703, -0.811107,
		-0.438206, -0.726538, -0.529261,
		-0.738395, 0.626726, -0.248973,
		30.209400, 30.885345, 46.266872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526142, 30.351669, 45.754387>,  <30.726278, 30.446638, 46.441154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526142, 30.351669, 45.754387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.410753, 30.730663, 45.809605>,  <30.341520, 30.958059, 45.842735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.410753, 30.730663, 45.809605>,  <30.526142, 30.351669, 45.754387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410753, 30.730663, 45.809605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606761, 0.292426, -0.739140,
		-0.740693, -0.129458, -0.659253,
		-0.288470, 0.947485, 0.138048,
		30.324213, 31.014908, 45.851021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509649, 30.650320, 45.042496>,  <30.526142, 30.351669, 45.754387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509649, 30.650320, 45.042496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455122, 30.991585, 45.243904>,  <30.422405, 31.196344, 45.364750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455122, 30.991585, 45.243904>,  <30.509649, 30.650320, 45.042496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455122, 30.991585, 45.243904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573641, 0.482362, -0.662014,
		-0.807683, 0.198593, -0.555165,
		-0.136320, 0.853163, 0.503517,
		30.414227, 31.247534, 45.394958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303797, 31.206095, 44.597393>,  <30.509649, 30.650320, 45.042496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303797, 31.206095, 44.597393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.463142, 31.392221, 44.913567>,  <30.558750, 31.503897, 45.103271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.463142, 31.392221, 44.913567>,  <30.303797, 31.206095, 44.597393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463142, 31.392221, 44.913567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602521, 0.517002, -0.608010,
		-0.691573, 0.718464, -0.074407,
		0.398365, 0.465315, 0.790435,
		30.582651, 31.531816, 45.150696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206192, 31.865114, 44.459778>,  <30.303797, 31.206095, 44.597393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206192, 31.865114, 44.459778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516991, 31.845278, 44.710796>,  <30.703470, 31.833376, 44.861408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516991, 31.845278, 44.710796>,  <30.206192, 31.865114, 44.459778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516991, 31.845278, 44.710796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441643, 0.753326, -0.487291,
		-0.448583, 0.655776, 0.607233,
		0.776997, -0.049589, 0.627548,
		30.750090, 31.830400, 44.899059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307528, 32.537388, 44.567684>,  <30.206192, 31.865114, 44.459778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307528, 32.537388, 44.567684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656610, 32.376884, 44.678947>,  <30.866060, 32.280582, 44.745705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656610, 32.376884, 44.678947>,  <30.307528, 32.537388, 44.567684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656610, 32.376884, 44.678947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487731, 0.690436, -0.534244,
		0.022315, 0.601907, 0.798254,
		0.872709, -0.401255, 0.278162,
		30.918423, 32.256508, 44.762398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804560, 33.106846, 44.824009>,  <30.307528, 32.537388, 44.567684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804560, 33.106846, 44.824009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.033350, 32.793865, 44.725525>,  <31.170624, 32.606079, 44.666435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.033350, 32.793865, 44.725525>,  <30.804560, 33.106846, 44.824009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033350, 32.793865, 44.725525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597462, 0.603062, -0.528541,
		0.562034, 0.155214, 0.812420,
		0.571976, -0.782448, -0.246207,
		31.204943, 32.559132, 44.651665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543680, 33.397774, 44.819687>,  <30.804560, 33.106846, 44.824009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543680, 33.397774, 44.819687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525263, 33.072876, 44.587090>,  <31.514214, 32.877937, 44.447533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525263, 33.072876, 44.587090>,  <31.543680, 33.397774, 44.819687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525263, 33.072876, 44.587090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604175, 0.440929, -0.663744,
		0.795521, -0.381881, 0.470440,
		-0.046041, -0.812249, -0.581491,
		31.511450, 32.829201, 44.412643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229206, 33.293037, 44.566822>,  <31.543680, 33.397774, 44.819687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229206, 33.293037, 44.566822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031593, 33.037361, 44.331074>,  <31.913025, 32.883953, 44.189625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031593, 33.037361, 44.331074>,  <32.229206, 33.293037, 44.566822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031593, 33.037361, 44.331074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665082, 0.158777, -0.729696,
		0.559997, -0.752475, 0.346676,
		-0.494034, -0.639195, -0.589372,
		31.883383, 32.845604, 44.154263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.088074, 41.663372, 32.631786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.714050, 41.682453, 32.491283>,  <42.489635, 41.693901, 32.406982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.714050, 41.682453, 32.491283>,  <43.088074, 41.663372, 32.631786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714050, 41.682453, 32.491283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175310, -0.923476, 0.341261,
		-0.308101, 0.380680, 0.871869,
		-0.935062, 0.047704, -0.351261,
		42.433533, 41.696766, 32.385906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573147, 41.581207, 33.198158>,  <43.088074, 41.663372, 32.631786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573147, 41.581207, 33.198158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327682, 41.493454, 32.894768>,  <42.180405, 41.440804, 32.712734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327682, 41.493454, 32.894768>,  <42.573147, 41.581207, 33.198158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327682, 41.493454, 32.894768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206964, -0.882341, 0.422658,
		-0.761962, 0.416346, 0.496053,
		-0.613661, -0.219384, -0.758480,
		42.143585, 41.427639, 32.667225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984119, 41.378983, 33.490665>,  <42.573147, 41.581207, 33.198158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984119, 41.378983, 33.490665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.987022, 41.208172, 33.128983>,  <41.988766, 41.105686, 32.911972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.987022, 41.208172, 33.128983>,  <41.984119, 41.378983, 33.490665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987022, 41.208172, 33.128983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166711, -0.892094, 0.419970,
		-0.985979, 0.147692, -0.077667,
		0.007260, -0.427030, -0.904208,
		41.989201, 41.080063, 32.857719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320633, 40.906319, 33.499828>,  <41.984119, 41.378983, 33.490665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320633, 40.906319, 33.499828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587715, 40.772427, 33.233860>,  <41.747963, 40.692089, 33.074280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587715, 40.772427, 33.233860>,  <41.320633, 40.906319, 33.499828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587715, 40.772427, 33.233860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219271, -0.942011, 0.254037,
		-0.711400, -0.023823, -0.702384,
		0.667705, -0.334734, -0.664923,
		41.788025, 40.672005, 33.034382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083443, 40.194763, 33.296703>,  <41.320633, 40.906319, 33.499828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083443, 40.194763, 33.296703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.435192, 40.188332, 33.106361>,  <41.646244, 40.184475, 32.992157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.435192, 40.188332, 33.106361>,  <41.083443, 40.194763, 33.296703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435192, 40.188332, 33.106361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075049, -0.982256, 0.171875,
		-0.470175, -0.186856, -0.862566,
		0.879377, -0.016076, -0.475856,
		41.699005, 40.183510, 32.963604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067448, 39.612797, 32.847305>,  <41.083443, 40.194763, 33.296703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067448, 39.612797, 32.847305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.452187, 39.700611, 32.912598>,  <41.683029, 39.753300, 32.951771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.452187, 39.700611, 32.912598>,  <41.067448, 39.612797, 32.847305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452187, 39.700611, 32.912598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176485, -0.953850, 0.242948,
		0.209033, -0.204873, -0.956207,
		0.961852, 0.219540, 0.163229,
		41.740742, 39.766472, 32.961567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277390, 38.948662, 32.825798>,  <41.067448, 39.612797, 32.847305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277390, 38.948662, 32.825798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.576340, 39.174915, 32.965221>,  <41.755711, 39.310669, 33.048874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.576340, 39.174915, 32.965221>,  <41.277390, 38.948662, 32.825798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576340, 39.174915, 32.965221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376483, -0.792801, 0.479297,
		0.547443, -0.226988, -0.805470,
		0.747373, 0.565634, 0.348556,
		41.800552, 39.344604, 33.069790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920322, 38.596470, 32.666748>,  <41.277390, 38.948662, 32.825798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920322, 38.596470, 32.666748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.987202, 38.834282, 32.981346>,  <42.027328, 38.976967, 33.170105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.987202, 38.834282, 32.981346>,  <41.920322, 38.596470, 32.666748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987202, 38.834282, 32.981346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388462, -0.772924, 0.501684,
		0.906169, 0.221644, -0.360183,
		0.167198, 0.594528, 0.786500,
		42.037361, 39.012642, 33.217297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606369, 38.445370, 32.919376>,  <41.920322, 38.596470, 32.666748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606369, 38.445370, 32.919376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417980, 38.618225, 33.226997>,  <42.304947, 38.721939, 33.411572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417980, 38.618225, 33.226997>,  <42.606369, 38.445370, 32.919376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417980, 38.618225, 33.226997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289719, -0.747667, 0.597543,
		0.833218, 0.504234, 0.226928,
		-0.470968, 0.432138, 0.769055,
		42.276691, 38.747868, 33.457714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045738, 38.500530, 33.571964>,  <42.606369, 38.445370, 32.919376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045738, 38.500530, 33.571964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.662914, 38.509586, 33.687569>,  <42.433220, 38.515018, 33.756931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.662914, 38.509586, 33.687569>,  <43.045738, 38.500530, 33.571964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662914, 38.509586, 33.687569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131984, -0.853603, 0.503927,
		0.258105, 0.520432, 0.813961,
		-0.957059, 0.022636, 0.289008,
		42.375797, 38.516376, 33.774269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057175, 38.450508, 34.284084>,  <43.045738, 38.500530, 33.571964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057175, 38.450508, 34.284084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704300, 38.314381, 34.153896>,  <42.492577, 38.232704, 34.075783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704300, 38.314381, 34.153896>,  <43.057175, 38.450508, 34.284084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704300, 38.314381, 34.153896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189707, -0.889446, 0.415809,
		-0.430998, 0.305076, 0.849217,
		-0.882186, -0.340315, -0.325475,
		42.439644, 38.212284, 34.056255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718384, 38.480057, 34.930096>,  <43.057175, 38.450508, 34.284084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718384, 38.480057, 34.930096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493374, 38.237129, 34.705692>,  <42.358368, 38.091373, 34.571049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493374, 38.237129, 34.705692>,  <42.718384, 38.480057, 34.930096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493374, 38.237129, 34.705692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179001, -0.751912, 0.634497,
		-0.807173, 0.256497, 0.531678,
		-0.562521, -0.607320, -0.561010,
		42.324619, 38.054932, 34.537388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261616, 38.040920, 35.435108>,  <42.718384, 38.480057, 34.930096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261616, 38.040920, 35.435108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273655, 37.847115, 35.085403>,  <42.280876, 37.730831, 34.875580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273655, 37.847115, 35.085403>,  <42.261616, 38.040920, 35.435108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273655, 37.847115, 35.085403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337293, -0.818436, 0.465183,
		-0.940919, -0.308883, 0.138792,
		0.030095, -0.484513, -0.874266,
		42.282684, 37.701759, 34.823124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957848, 37.387070, 35.586864>,  <42.261616, 38.040920, 35.435108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957848, 37.387070, 35.586864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185497, 37.330387, 35.262882>,  <42.322086, 37.296379, 35.068493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185497, 37.330387, 35.262882>,  <41.957848, 37.387070, 35.586864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185497, 37.330387, 35.262882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438631, -0.780856, 0.444822,
		-0.695489, -0.608428, -0.382246,
		0.569121, -0.141704, -0.809952,
		42.356232, 37.287876, 35.019897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913406, 36.679440, 35.614048>,  <41.957848, 37.387070, 35.586864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913406, 36.679440, 35.614048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212658, 36.782452, 35.369434>,  <42.392208, 36.844261, 35.222668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212658, 36.782452, 35.369434>,  <41.913406, 36.679440, 35.614048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212658, 36.782452, 35.369434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485480, -0.840694, 0.239881,
		-0.452336, -0.476350, -0.753978,
		0.748132, 0.257534, -0.611535,
		42.437096, 36.859711, 35.185974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055931, 36.052517, 35.202133>,  <41.913406, 36.679440, 35.614048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055931, 36.052517, 35.202133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.399025, 36.257755, 35.214928>,  <42.604881, 36.380898, 35.222603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.399025, 36.257755, 35.214928>,  <42.055931, 36.052517, 35.202133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399025, 36.257755, 35.214928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510329, -0.857323, 0.067534,
		0.062071, -0.041605, -0.997204,
		0.857736, 0.513094, 0.031983,
		42.656345, 36.411682, 35.224522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570511, 35.645416, 35.000637>,  <42.055931, 36.052517, 35.202133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570511, 35.645416, 35.000637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.808395, 35.907551, 35.186909>,  <42.951126, 36.064831, 35.298672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.808395, 35.907551, 35.186909>,  <42.570511, 35.645416, 35.000637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808395, 35.907551, 35.186909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587326, -0.749696, 0.304967,
		0.548974, 0.092140, -0.830746,
		0.594707, 0.655337, 0.465679,
		42.986809, 36.104153, 35.326614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246162, 35.429802, 34.854252>,  <42.570511, 35.645416, 35.000637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246162, 35.429802, 34.854252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301628, 35.688698, 35.154079>,  <43.334908, 35.844036, 35.333977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301628, 35.688698, 35.154079>,  <43.246162, 35.429802, 34.854252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301628, 35.688698, 35.154079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705733, -0.595575, 0.383707,
		0.694775, 0.475790, -0.539362,
		0.138667, 0.647236, 0.749571,
		43.343227, 35.882870, 35.378952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984261, 35.529602, 34.893612>,  <43.246162, 35.429802, 34.854252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984261, 35.529602, 34.893612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853073, 35.633217, 35.257004>,  <43.774361, 35.695385, 35.475040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853073, 35.633217, 35.257004>,  <43.984261, 35.529602, 34.893612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853073, 35.633217, 35.257004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674726, -0.608856, 0.417181,
		0.661199, 0.749797, 0.024906,
		-0.327965, 0.259035, 0.908482,
		43.754684, 35.710926, 35.529549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527386, 35.862331, 35.209419>,  <43.984261, 35.529602, 34.893612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527386, 35.862331, 35.209419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283417, 35.747631, 35.504925>,  <44.137035, 35.678810, 35.682228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283417, 35.747631, 35.504925>,  <44.527386, 35.862331, 35.209419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283417, 35.747631, 35.504925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734728, -0.553930, 0.391582,
		0.296935, 0.781623, 0.548538,
		-0.609921, -0.286752, 0.738762,
		44.100441, 35.661606, 35.726555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966305, 35.893578, 35.737953>,  <44.527386, 35.862331, 35.209419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966305, 35.893578, 35.737953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668388, 35.651478, 35.850353>,  <44.489639, 35.506218, 35.917793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668388, 35.651478, 35.850353>,  <44.966305, 35.893578, 35.737953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668388, 35.651478, 35.850353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666474, -0.695662, 0.268081,
		0.033225, 0.386943, 0.921505,
		-0.744788, -0.605252, 0.281001,
		44.444954, 35.469902, 35.934654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577145, 36.004021, 36.087868>,  <44.966305, 35.893578, 35.737953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577145, 36.004021, 36.087868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890339, 36.189201, 35.921680>,  <46.078255, 36.300308, 35.821968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890339, 36.189201, 35.921680>,  <45.577145, 36.004021, 36.087868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890339, 36.189201, 35.921680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500474, 0.865491, 0.021225,
		0.369412, 0.191314, 0.909359,
		0.782981, 0.462952, -0.415471,
		46.125233, 36.328087, 35.797039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646004, 36.619057, 36.472149>,  <45.577145, 36.004021, 36.087868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646004, 36.619057, 36.472149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.852535, 36.694576, 36.138023>,  <45.976456, 36.739887, 35.937546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.852535, 36.694576, 36.138023>,  <45.646004, 36.619057, 36.472149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852535, 36.694576, 36.138023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407838, 0.911895, -0.045987,
		0.753040, 0.364419, 0.547841,
		0.516332, 0.188801, -0.835318,
		46.007435, 36.751217, 35.887428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.993294, 37.204803, 36.684109>,  <45.646004, 36.619057, 36.472149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.993294, 37.204803, 36.684109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.991322, 37.202927, 36.284119>,  <45.990139, 37.201801, 36.044125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.991322, 37.202927, 36.284119>,  <45.993294, 37.204803, 36.684109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991322, 37.202927, 36.284119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283216, 0.959051, -0.003107,
		0.959043, 0.283195, -0.006054,
		-0.004927, -0.004694, -0.999977,
		45.989841, 37.201519, 35.984127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.286144, 37.799744, 36.512108>,  <45.993294, 37.204803, 36.684109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.286144, 37.799744, 36.512108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.085384, 37.703888, 36.179680>,  <45.964928, 37.646374, 35.980225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.085384, 37.703888, 36.179680>,  <46.286144, 37.799744, 36.512108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085384, 37.703888, 36.179680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144562, 0.970577, -0.192565,
		0.852759, 0.023492, -0.521775,
		-0.501899, -0.239640, -0.831065,
		45.934814, 37.631996, 35.930359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.523273, 38.241131, 36.034782>,  <46.286144, 37.799744, 36.512108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.523273, 38.241131, 36.034782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175369, 38.112175, 35.885342>,  <45.966625, 38.034801, 35.795677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175369, 38.112175, 35.885342>,  <46.523273, 38.241131, 36.034782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175369, 38.112175, 35.885342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272142, 0.944920, -0.181839,
		0.411647, -0.056484, -0.909591,
		-0.869762, -0.322391, -0.373602,
		45.914440, 38.015457, 35.773262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495419, 38.661255, 35.462692>,  <46.523273, 38.241131, 36.034782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495419, 38.661255, 35.462692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.122822, 38.521259, 35.502354>,  <45.899261, 38.437263, 35.526150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.122822, 38.521259, 35.502354>,  <46.495419, 38.661255, 35.462692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.122822, 38.521259, 35.502354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363754, 0.895003, -0.258173,
		0.001618, -0.276552, -0.960998,
		-0.931494, -0.349985, 0.099149,
		45.843372, 38.416264, 35.532097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086266, 38.865318, 34.831657>,  <46.495419, 38.661255, 35.462692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086266, 38.865318, 34.831657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.839294, 38.784084, 35.135643>,  <45.691113, 38.735344, 35.318031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.839294, 38.784084, 35.135643>,  <46.086266, 38.865318, 34.831657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.839294, 38.784084, 35.135643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541098, 0.810875, -0.222924,
		-0.570959, -0.548852, -0.610546,
		-0.617429, -0.203085, 0.759959,
		45.654064, 38.723160, 35.363632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467388, 38.936081, 34.553265>,  <46.086266, 38.865318, 34.831657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467388, 38.936081, 34.553265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.428509, 38.985317, 34.948315>,  <45.405182, 39.014858, 35.185345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.428509, 38.985317, 34.948315>,  <45.467388, 38.936081, 34.553265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428509, 38.985317, 34.948315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646275, 0.746846, -0.156686,
		-0.756890, -0.653505, 0.006963,
		-0.097195, 0.123094, 0.987624,
		45.399349, 39.022243, 35.244602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841545, 39.172752, 34.575829>,  <45.467388, 38.936081, 34.553265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841545, 39.172752, 34.575829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.949688, 39.276871, 34.946590>,  <45.014576, 39.339340, 35.169048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.949688, 39.276871, 34.946590>,  <44.841545, 39.172752, 34.575829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949688, 39.276871, 34.946590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580524, 0.812122, -0.058734,
		-0.768048, -0.522211, 0.370674,
		0.270360, 0.260296, 0.926904,
		45.030796, 39.354958, 35.224663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260719, 39.344383, 34.891876>,  <44.841545, 39.172752, 34.575829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260719, 39.344383, 34.891876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.554276, 39.519009, 35.100037>,  <44.730408, 39.623783, 35.224934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.554276, 39.519009, 35.100037>,  <44.260719, 39.344383, 34.891876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.554276, 39.519009, 35.100037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510651, 0.859787, -0.001134,
		-0.447927, -0.264910, 0.853923,
		0.733891, 0.436565, 0.520399,
		44.774445, 39.649979, 35.256157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926468, 39.699024, 35.386490>,  <44.260719, 39.344383, 34.891876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926468, 39.699024, 35.386490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.278427, 39.886417, 35.354717>,  <44.489601, 39.998852, 35.335651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.278427, 39.886417, 35.354717>,  <43.926468, 39.699024, 35.386490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278427, 39.886417, 35.354717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475153, 0.866172, -0.154843,
		-0.003736, 0.173990, 0.984740,
		0.879895, 0.468481, -0.079436,
		44.542397, 40.026962, 35.330887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939816, 40.193256, 35.962601>,  <43.926468, 39.699024, 35.386490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939816, 40.193256, 35.962601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.199619, 40.278366, 35.670609>,  <44.355499, 40.329430, 35.495415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.199619, 40.278366, 35.670609>,  <43.939816, 40.193256, 35.962601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199619, 40.278366, 35.670609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312737, 0.949839, -0.001406,
		0.693063, 0.229205, 0.683469,
		0.649507, 0.212772, -0.729979,
		44.394470, 40.342197, 35.451614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244923, 40.796734, 36.291161>,  <43.939816, 40.193256, 35.962601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244923, 40.796734, 36.291161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313816, 40.790890, 35.897182>,  <44.355152, 40.787384, 35.660793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313816, 40.790890, 35.897182>,  <44.244923, 40.796734, 36.291161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313816, 40.790890, 35.897182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269092, 0.961161, -0.061317,
		0.947589, 0.275602, 0.161611,
		0.172234, -0.014615, -0.984948,
		44.365486, 40.786507, 35.601700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314983, 41.492687, 36.196499>,  <44.244923, 40.796734, 36.291161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314983, 41.492687, 36.196499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296520, 41.342686, 35.826149>,  <44.285442, 41.252686, 35.603939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296520, 41.342686, 35.826149>,  <44.314983, 41.492687, 36.196499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296520, 41.342686, 35.826149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212557, 0.909322, -0.357705,
		0.976058, 0.180290, -0.121682,
		-0.046157, -0.375005, -0.925873,
		44.282673, 41.230183, 35.548386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680904, 41.954315, 35.831074>,  <44.314983, 41.492687, 36.196499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680904, 41.954315, 35.831074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.445194, 41.760960, 35.572124>,  <44.303768, 41.644947, 35.416756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.445194, 41.760960, 35.572124>,  <44.680904, 41.954315, 35.831074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445194, 41.760960, 35.572124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280384, 0.873825, -0.397260,
		0.757719, -0.052584, -0.650459,
		-0.589276, -0.483390, -0.647370,
		44.268410, 41.615944, 35.377914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698833, 42.345615, 35.198944>,  <44.680904, 41.954315, 35.831074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698833, 42.345615, 35.198944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.359295, 42.134747, 35.183262>,  <44.155571, 42.008224, 35.173855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.359295, 42.134747, 35.183262>,  <44.698833, 42.345615, 35.198944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359295, 42.134747, 35.183262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487431, 0.809240, -0.327936,
		0.204604, -0.259260, -0.943886,
		-0.848851, -0.527176, -0.039202,
		44.104641, 41.976593, 35.171501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462620, 42.519398, 34.547394>,  <44.698833, 42.345615, 35.198944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462620, 42.519398, 34.547394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147606, 42.394459, 34.759895>,  <43.958599, 42.319496, 34.887398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147606, 42.394459, 34.759895>,  <44.462620, 42.519398, 34.547394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147606, 42.394459, 34.759895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536419, 0.771813, -0.341408,
		-0.303394, -0.553846, -0.775375,
		-0.787532, -0.312345, 0.531257,
		43.911346, 42.300755, 34.919273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931698, 42.582241, 34.071983>,  <44.462620, 42.519398, 34.547394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931698, 42.582241, 34.071983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.727386, 42.566605, 34.415512>,  <43.604801, 42.557220, 34.621632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.727386, 42.566605, 34.415512>,  <43.931698, 42.582241, 34.071983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727386, 42.566605, 34.415512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732873, 0.542049, -0.411193,
		-0.449449, -0.839437, -0.305517,
		-0.510776, -0.039095, 0.858824,
		43.574154, 42.554874, 34.673161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310425, 42.449657, 33.903748>,  <43.931698, 42.582241, 34.071983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310425, 42.449657, 33.903748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249004, 42.597271, 34.270405>,  <43.212154, 42.685841, 34.490398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249004, 42.597271, 34.270405>,  <43.310425, 42.449657, 33.903748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249004, 42.597271, 34.270405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723052, 0.590318, -0.358775,
		-0.673512, -0.717871, 0.176188,
		-0.153547, 0.369033, 0.916645,
		43.202942, 42.707981, 34.545399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601231, 42.420963, 34.014530>,  <43.310425, 42.449657, 33.903748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601231, 42.420963, 34.014530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.735313, 42.698338, 34.269650>,  <42.815762, 42.864761, 34.422722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.735313, 42.698338, 34.269650>,  <42.601231, 42.420963, 34.014530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735313, 42.698338, 34.269650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711214, 0.630231, -0.311423,
		-0.617910, -0.349217, 0.704440,
		0.335205, 0.693438, 0.637794,
		42.835876, 42.906368, 34.460987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036461, 42.692928, 34.209129>,  <42.601231, 42.420963, 34.014530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036461, 42.692928, 34.209129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.301991, 42.964699, 34.334167>,  <42.461308, 43.127762, 34.409191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.301991, 42.964699, 34.334167>,  <42.036461, 42.692928, 34.209129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301991, 42.964699, 34.334167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617977, 0.733718, -0.282422,
		-0.421246, -0.005702, 0.906929,
		0.663819, 0.679430, 0.312600,
		42.501137, 43.168530, 34.427948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.943451, 33.644859, 42.778271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683304, 33.435078, 42.558464>,  <37.527218, 33.309208, 42.426579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683304, 33.435078, 42.558464>,  <37.943451, 33.644859, 42.778271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683304, 33.435078, 42.558464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565154, 0.149305, -0.811362,
		0.507568, -0.838246, 0.199294,
		-0.650365, -0.524453, -0.549521,
		37.488194, 33.277740, 42.393608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354492, 33.302017, 42.293659>,  <37.943451, 33.644859, 42.778271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354492, 33.302017, 42.293659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987587, 33.294380, 42.134529>,  <37.767445, 33.289799, 42.039051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987587, 33.294380, 42.134529>,  <38.354492, 33.302017, 42.293659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987587, 33.294380, 42.134529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371399, 0.319722, -0.871688,
		0.143836, -0.947319, -0.286179,
		-0.917264, -0.019093, -0.397821,
		37.712406, 33.288651, 42.015182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295063, 32.678555, 41.812496>,  <38.354492, 33.302017, 42.293659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295063, 32.678555, 41.812496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064869, 32.993465, 41.723938>,  <37.926754, 33.182411, 41.670803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064869, 32.993465, 41.723938>,  <38.295063, 32.678555, 41.812496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064869, 32.993465, 41.723938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383579, 0.020746, -0.923275,
		-0.722277, -0.616254, -0.313921,
		-0.575485, 0.787274, -0.221398,
		37.892223, 33.229649, 41.657520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218750, 32.668537, 41.070129>,  <38.295063, 32.678555, 41.812496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218750, 32.668537, 41.070129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085762, 33.036999, 41.151070>,  <38.005970, 33.258076, 41.199635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085762, 33.036999, 41.151070>,  <38.218750, 32.668537, 41.070129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085762, 33.036999, 41.151070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307249, 0.308645, -0.900187,
		-0.891663, -0.237111, -0.385637,
		-0.332469, 0.921149, 0.202355,
		37.986023, 33.313343, 41.211777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993683, 32.803951, 40.421986>,  <38.218750, 32.668537, 41.070129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993683, 32.803951, 40.421986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022907, 33.151329, 40.618134>,  <38.040443, 33.359756, 40.735821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022907, 33.151329, 40.618134>,  <37.993683, 32.803951, 40.421986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022907, 33.151329, 40.618134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494006, 0.395612, -0.774241,
		-0.866383, 0.298812, -0.400115,
		0.073062, 0.868449, 0.490366,
		38.044827, 33.411865, 40.765244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620186, 33.329327, 39.935280>,  <37.993683, 32.803951, 40.421986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620186, 33.329327, 39.935280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883099, 33.504093, 40.180908>,  <38.040848, 33.608955, 40.328285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883099, 33.504093, 40.180908>,  <37.620186, 33.329327, 39.935280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883099, 33.504093, 40.180908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506023, 0.347959, -0.789218,
		-0.558495, 0.829473, 0.007617,
		0.657285, 0.436920, 0.614066,
		38.080284, 33.635170, 40.365128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821156, 33.980526, 39.571346>,  <37.620186, 33.329327, 39.935280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821156, 33.980526, 39.571346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122959, 33.926167, 39.828175>,  <38.304039, 33.893551, 39.982273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122959, 33.926167, 39.828175>,  <37.821156, 33.980526, 39.571346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122959, 33.926167, 39.828175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617189, 0.479585, -0.623760,
		-0.223160, 0.866909, 0.445723,
		0.754505, -0.135897, 0.642070,
		38.349312, 33.885399, 40.020794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133114, 34.713898, 39.729454>,  <37.821156, 33.980526, 39.571346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133114, 34.713898, 39.729454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384060, 34.409214, 39.794212>,  <38.534626, 34.226402, 39.833069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384060, 34.409214, 39.794212>,  <38.133114, 34.713898, 39.729454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384060, 34.409214, 39.794212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655557, 0.404378, -0.637749,
		0.420314, 0.506232, 0.753037,
		0.627361, -0.761713, 0.161898,
		38.572269, 34.180698, 39.842781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701366, 35.105354, 39.724220>,  <38.133114, 34.713898, 39.729454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701366, 35.105354, 39.724220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837368, 34.732197, 39.676712>,  <38.918968, 34.508301, 39.648205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837368, 34.732197, 39.676712>,  <38.701366, 35.105354, 39.724220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837368, 34.732197, 39.676712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645899, 0.323445, -0.691518,
		0.683530, 0.158402, 0.712528,
		0.340002, -0.932894, -0.118773,
		38.939369, 34.452328, 39.641079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433784, 35.189934, 39.775894>,  <38.701366, 35.105354, 39.724220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433784, 35.189934, 39.775894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342129, 34.855461, 39.576576>,  <39.287136, 34.654778, 39.456985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342129, 34.855461, 39.576576>,  <39.433784, 35.189934, 39.775894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342129, 34.855461, 39.576576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640867, 0.255713, -0.723809,
		0.732656, -0.485194, 0.477287,
		-0.229139, -0.836181, -0.498294,
		39.273388, 34.604607, 39.427090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945587, 35.062973, 39.357719>,  <39.433784, 35.189934, 39.775894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945587, 35.062973, 39.357719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695026, 34.797260, 39.194576>,  <39.544689, 34.637833, 39.096691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695026, 34.797260, 39.194576>,  <39.945587, 35.062973, 39.357719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695026, 34.797260, 39.194576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508563, 0.048255, -0.859672,
		0.590744, -0.745924, 0.307601,
		-0.626406, -0.664281, -0.407856,
		39.507103, 34.597977, 39.072220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326759, 34.538456, 39.024658>,  <39.945587, 35.062973, 39.357719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326759, 34.538456, 39.024658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963951, 34.519779, 38.857265>,  <39.746265, 34.508572, 38.756828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963951, 34.519779, 38.857265>,  <40.326759, 34.538456, 39.024658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963951, 34.519779, 38.857265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418428, 0.011402, -0.908178,
		0.047182, -0.998844, 0.009198,
		-0.907023, -0.046698, -0.418482,
		39.691845, 34.505772, 38.731720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248592, 34.002117, 38.588375>,  <40.326759, 34.538456, 39.024658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248592, 34.002117, 38.588375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005291, 34.286217, 38.446636>,  <39.859310, 34.456676, 38.361591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005291, 34.286217, 38.446636>,  <40.248592, 34.002117, 38.588375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005291, 34.286217, 38.446636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560178, 0.067839, -0.825590,
		-0.562339, -0.700670, -0.439132,
		-0.608256, 0.710254, -0.354351,
		39.822815, 34.499294, 38.340332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274155, 34.427544, 38.046730>,  <40.248592, 34.002117, 38.588375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274155, 34.427544, 38.046730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166855, 34.690708, 37.765247>,  <40.102474, 34.848606, 37.596359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166855, 34.690708, 37.765247>,  <40.274155, 34.427544, 38.046730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166855, 34.690708, 37.765247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956445, 0.094575, -0.276168,
		-0.115141, -0.747134, -0.654624,
		-0.268246, 0.657910, -0.703703,
		40.086380, 34.888081, 37.554138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835594, 33.887096, 38.145008>,  <40.274155, 34.427544, 38.046730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835594, 33.887096, 38.145008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086823, 33.576363, 38.126896>,  <41.237560, 33.389923, 38.116028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086823, 33.576363, 38.126896>,  <40.835594, 33.887096, 38.145008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086823, 33.576363, 38.126896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765311, -0.627183, 0.144709,
		-0.140816, -0.056232, -0.988437,
		0.628069, -0.776839, -0.045283,
		41.275242, 33.343311, 38.113312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483143, 33.298939, 37.710766>,  <40.835594, 33.887096, 38.145008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483143, 33.298939, 37.710766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781212, 33.106087, 37.895058>,  <40.960052, 32.990376, 38.005630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781212, 33.106087, 37.895058>,  <40.483143, 33.298939, 37.710766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781212, 33.106087, 37.895058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567512, -0.821288, 0.058441,
		0.350213, -0.305016, -0.885616,
		0.745172, -0.482131, 0.460726,
		41.004765, 32.961449, 38.033276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295841, 32.636482, 37.510715>,  <40.483143, 33.298939, 37.710766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295841, 32.636482, 37.510715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556355, 32.599033, 37.811932>,  <40.712662, 32.576565, 37.992661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556355, 32.599033, 37.811932>,  <40.295841, 32.636482, 37.510715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556355, 32.599033, 37.811932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472384, -0.826654, 0.305772,
		0.593876, -0.554867, -0.582609,
		0.651279, -0.093625, 0.753041,
		40.751740, 32.570946, 38.037846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472256, 31.915794, 37.517349>,  <40.295841, 32.636482, 37.510715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472256, 31.915794, 37.517349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560604, 32.040962, 37.886845>,  <40.613613, 32.116062, 38.108543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560604, 32.040962, 37.886845>,  <40.472256, 31.915794, 37.517349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560604, 32.040962, 37.886845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437882, -0.814490, 0.380611,
		0.871478, -0.488556, -0.042878,
		0.220874, 0.312919, 0.923740,
		40.626865, 32.134838, 38.163967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913670, 31.305408, 37.948246>,  <40.472256, 31.915794, 37.517349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913670, 31.305408, 37.948246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761730, 31.537588, 38.236355>,  <40.670567, 31.676895, 38.409222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761730, 31.537588, 38.236355>,  <40.913670, 31.305408, 37.948246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761730, 31.537588, 38.236355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436569, -0.798953, 0.413620,
		0.815550, -0.157336, 0.556888,
		-0.379850, 0.580448, 0.720274,
		40.647774, 31.711723, 38.452438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953953, 30.902306, 38.547993>,  <40.913670, 31.305408, 37.948246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953953, 30.902306, 38.547993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661613, 31.171524, 38.593376>,  <40.486210, 31.333055, 38.620605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661613, 31.171524, 38.593376>,  <40.953953, 30.902306, 38.547993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661613, 31.171524, 38.593376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541523, -0.672963, 0.503859,
		0.415476, 0.306801, 0.856302,
		-0.730844, 0.673048, 0.113460,
		40.442360, 31.373438, 38.627415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714565, 30.785978, 39.237885>,  <40.953953, 30.902306, 38.547993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714565, 30.785978, 39.237885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409828, 30.960342, 39.046227>,  <40.226986, 31.064960, 38.931232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409828, 30.960342, 39.046227>,  <40.714565, 30.785978, 39.237885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409828, 30.960342, 39.046227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645524, -0.572349, 0.505683,
		-0.053804, 0.694549, 0.717431,
		-0.761842, 0.435911, -0.479143,
		40.181274, 31.091116, 38.902485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249756, 30.880535, 39.730511>,  <40.714565, 30.785978, 39.237885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249756, 30.880535, 39.730511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028938, 30.915937, 39.398869>,  <39.896446, 30.937178, 39.199883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028938, 30.915937, 39.398869>,  <40.249756, 30.880535, 39.730511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028938, 30.915937, 39.398869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731618, -0.528396, 0.430735,
		-0.399972, 0.844372, 0.356452,
		-0.552048, 0.088505, -0.829102,
		39.863323, 30.942490, 39.150139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607731, 31.150612, 39.943729>,  <40.249756, 30.880535, 39.730511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607731, 31.150612, 39.943729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550465, 30.984272, 39.584492>,  <39.516106, 30.884468, 39.368950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550465, 30.984272, 39.584492>,  <39.607731, 31.150612, 39.943729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550465, 30.984272, 39.584492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931264, -0.250590, 0.264483,
		-0.335038, 0.874227, -0.351391,
		-0.143163, -0.415850, -0.898094,
		39.507515, 30.859516, 39.315063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997475, 31.474745, 39.655876>,  <39.607731, 31.150612, 39.943729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997475, 31.474745, 39.655876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032352, 31.139698, 39.440174>,  <39.053280, 30.938669, 39.310753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032352, 31.139698, 39.440174>,  <38.997475, 31.474745, 39.655876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032352, 31.139698, 39.440174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976746, -0.178312, 0.119044,
		-0.195869, 0.516337, -0.833685,
		0.087190, -0.837616, -0.539256,
		39.058510, 30.888412, 39.278397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303204, 31.390152, 39.312588>,  <38.997475, 31.474745, 39.655876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303204, 31.390152, 39.312588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499672, 31.041784, 39.318886>,  <38.617554, 30.832764, 39.322666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499672, 31.041784, 39.318886>,  <38.303204, 31.390152, 39.312588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499672, 31.041784, 39.318886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836516, -0.466577, 0.287310,
		-0.242877, -0.154290, -0.957708,
		0.491173, -0.870919, 0.015745,
		38.647022, 30.780508, 39.323608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899178, 30.942354, 38.940845>,  <38.303204, 31.390152, 39.312588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899178, 30.942354, 38.940845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117542, 30.679550, 39.148815>,  <38.248562, 30.521868, 39.273598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117542, 30.679550, 39.148815>,  <37.899178, 30.942354, 38.940845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117542, 30.679550, 39.148815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821655, -0.541207, 0.178823,
		0.163898, -0.524819, -0.835286,
		0.545912, -0.657008, 0.519923,
		38.281315, 30.482449, 39.304790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695168, 30.239691, 38.766228>,  <37.899178, 30.942354, 38.940845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695168, 30.239691, 38.766228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857674, 30.206518, 39.130222>,  <37.955177, 30.186615, 39.348618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857674, 30.206518, 39.130222>,  <37.695168, 30.239691, 38.766228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857674, 30.206518, 39.130222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755369, -0.590853, 0.283390,
		0.514164, -0.802505, -0.302690,
		0.406267, -0.082934, 0.909983,
		37.979553, 30.181639, 39.403217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546490, 29.523209, 38.932148>,  <37.695168, 30.239691, 38.766228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546490, 29.523209, 38.932148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617722, 29.702103, 39.282753>,  <37.660461, 29.809439, 39.493114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617722, 29.702103, 39.282753>,  <37.546490, 29.523209, 38.932148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617722, 29.702103, 39.282753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826597, -0.415287, 0.379833,
		0.533878, -0.792161, 0.295729,
		0.178077, 0.447233, 0.876510,
		37.671146, 29.836273, 39.545708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940598, 29.127178, 38.758492>,  <37.546490, 29.523209, 38.932148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940598, 29.127178, 38.758492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778954, 28.848936, 38.520893>,  <36.681965, 28.681992, 38.378334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778954, 28.848936, 38.520893>,  <36.940598, 29.127178, 38.758492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778954, 28.848936, 38.520893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275753, 0.526525, -0.804196,
		0.872155, -0.488781, -0.020961,
		-0.404112, -0.695603, -0.593994,
		36.657719, 28.640255, 38.342693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397312, 29.071623, 38.301586>,  <36.940598, 29.127178, 38.758492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397312, 29.071623, 38.301586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068054, 28.912420, 38.139584>,  <36.870499, 28.816898, 38.042381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068054, 28.912420, 38.139584>,  <37.397312, 29.071623, 38.301586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068054, 28.912420, 38.139584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100691, 0.599635, -0.793914,
		0.558834, -0.694286, -0.453510,
		-0.823144, -0.398002, -0.405005,
		36.821114, 28.793018, 38.018082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496567, 28.905949, 37.650810>,  <37.397312, 29.071623, 38.301586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496567, 28.905949, 37.650810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098103, 28.939968, 37.659138>,  <36.859024, 28.960379, 37.664135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098103, 28.939968, 37.659138>,  <37.496567, 28.905949, 37.650810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098103, 28.939968, 37.659138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026346, 0.517900, -0.855035,
		-0.083501, -0.851203, -0.518152,
		-0.996159, 0.085047, 0.020819,
		36.799255, 28.965483, 37.665382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400372, 28.690809, 36.939072>,  <37.496567, 28.905949, 37.650810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400372, 28.690809, 36.939072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075947, 28.877863, 37.079643>,  <36.881294, 28.990095, 37.163986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075947, 28.877863, 37.079643>,  <37.400372, 28.690809, 36.939072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075947, 28.877863, 37.079643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005372, 0.606698, -0.794914,
		-0.584942, -0.642833, -0.494579,
		-0.811058, 0.467635, 0.351429,
		36.832630, 29.018154, 37.185074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991131, 28.857737, 36.360558>,  <37.400372, 28.690809, 36.939072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991131, 28.857737, 36.360558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860367, 29.098999, 36.651577>,  <36.781910, 29.243757, 36.826191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860367, 29.098999, 36.651577>,  <36.991131, 28.857737, 36.360558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860367, 29.098999, 36.651577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064511, 0.753814, -0.653913,
		-0.942852, -0.260705, -0.207519,
		-0.326909, 0.603156, 0.727553,
		36.762295, 29.279945, 36.869843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412735, 29.212196, 36.012844>,  <36.991131, 28.857737, 36.360558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412735, 29.212196, 36.012844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451786, 29.448345, 36.333324>,  <36.475216, 29.590034, 36.525612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451786, 29.448345, 36.333324>,  <36.412735, 29.212196, 36.012844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451786, 29.448345, 36.333324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120110, 0.806155, -0.579385,
		-0.987949, -0.039669, 0.149612,
		0.097627, 0.590373, 0.801205,
		36.481075, 29.625458, 36.573685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914825, 29.737907, 35.950657>,  <36.412735, 29.212196, 36.012844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914825, 29.737907, 35.950657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173283, 29.896933, 36.211254>,  <36.328358, 29.992348, 36.367615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173283, 29.896933, 36.211254>,  <35.914825, 29.737907, 35.950657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173283, 29.896933, 36.211254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206077, 0.912789, -0.352632,
		-0.734872, 0.093591, 0.671717,
		0.646138, 0.397565, 0.651496,
		36.367123, 30.016203, 36.406704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691124, 30.474886, 36.151794>,  <35.914825, 29.737907, 35.950657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691124, 30.474886, 36.151794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072342, 30.471504, 36.272881>,  <36.301071, 30.469475, 36.345531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072342, 30.471504, 36.272881>,  <35.691124, 30.474886, 36.151794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072342, 30.471504, 36.272881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088429, 0.963816, -0.251476,
		-0.289637, 0.266436, 0.919305,
		0.953043, -0.008456, 0.302717,
		36.358253, 30.468967, 36.363697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819202, 30.968557, 36.732693>,  <35.691124, 30.474886, 36.151794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819202, 30.968557, 36.732693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150558, 30.906076, 36.517521>,  <36.349373, 30.868587, 36.388420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150558, 30.906076, 36.517521>,  <35.819202, 30.968557, 36.732693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150558, 30.906076, 36.517521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051758, 0.977569, -0.204159,
		0.557749, 0.141282, 0.817897,
		0.828394, -0.156202, -0.537925,
		36.399078, 30.859217, 36.356144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236889, 31.529421, 36.880924>,  <35.819202, 30.968557, 36.732693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236889, 31.529421, 36.880924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378773, 31.392679, 36.532829>,  <36.463905, 31.310635, 36.323971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378773, 31.392679, 36.532829>,  <36.236889, 31.529421, 36.880924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378773, 31.392679, 36.532829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086453, 0.914781, -0.394590,
		0.930970, 0.215201, 0.294931,
		0.354713, -0.341854, -0.870238,
		36.485188, 31.290123, 36.271759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782654, 31.967188, 36.725018>,  <36.236889, 31.529421, 36.880924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782654, 31.967188, 36.725018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693779, 31.801952, 36.371750>,  <36.640453, 31.702810, 36.159790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693779, 31.801952, 36.371750>,  <36.782654, 31.967188, 36.725018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693779, 31.801952, 36.371750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048675, 0.899983, -0.433199,
		0.973789, -0.139239, -0.179855,
		-0.222185, -0.413089, -0.883171,
		36.627125, 31.678026, 36.106800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252010, 32.335621, 36.251705>,  <36.782654, 31.967188, 36.725018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252010, 32.335621, 36.251705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957047, 32.197319, 36.019608>,  <36.780067, 32.114338, 35.880348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957047, 32.197319, 36.019608>,  <37.252010, 32.335621, 36.251705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957047, 32.197319, 36.019608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037733, 0.836625, -0.546475,
		0.674394, -0.424869, -0.603887,
		-0.737407, -0.345754, -0.580246,
		36.735825, 32.093594, 35.845535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.144958, 26.589367, 41.037941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.876537, 26.633259, 40.744644>,  <34.715485, 26.659594, 40.568665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.876537, 26.633259, 40.744644>,  <35.144958, 26.589367, 41.037941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876537, 26.633259, 40.744644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741387, 0.106422, -0.662586,
		0.005326, -0.988248, -0.152768,
		-0.671057, 0.109731, -0.733240,
		34.675220, 26.666178, 40.524673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402122, 26.227749, 40.438244>,  <35.144958, 26.589367, 41.037941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402122, 26.227749, 40.438244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.131855, 26.482119, 40.289074>,  <34.969696, 26.634741, 40.199574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.131855, 26.482119, 40.289074>,  <35.402122, 26.227749, 40.438244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131855, 26.482119, 40.289074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578199, 0.143312, -0.803210,
		-0.457339, -0.758326, -0.464524,
		-0.675668, 0.635927, -0.372922,
		34.929153, 26.672897, 40.177197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547234, 26.276268, 39.728882>,  <35.402122, 26.227749, 40.438244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547234, 26.276268, 39.728882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.315552, 26.596951, 39.787926>,  <35.176544, 26.789360, 39.823353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.315552, 26.596951, 39.787926>,  <35.547234, 26.276268, 39.728882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315552, 26.596951, 39.787926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521684, 0.503679, -0.688588,
		-0.626392, -0.321830, -0.709971,
		-0.579206, 0.801706, 0.147606,
		35.141788, 26.837463, 39.832207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292973, 26.416430, 39.131844>,  <35.547234, 26.276268, 39.728882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292973, 26.416430, 39.131844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.284351, 26.754635, 39.345253>,  <35.279179, 26.957558, 39.473297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.284351, 26.754635, 39.345253>,  <35.292973, 26.416430, 39.131844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284351, 26.754635, 39.345253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426749, 0.490368, -0.759885,
		-0.904113, 0.211297, -0.371392,
		-0.021557, 0.845513, 0.533520,
		35.277885, 27.008289, 39.505310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242931, 26.941597, 38.644062>,  <35.292973, 26.416430, 39.131844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242931, 26.941597, 38.644062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.340954, 27.152609, 38.969433>,  <35.399769, 27.279217, 39.164654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.340954, 27.152609, 38.969433>,  <35.242931, 26.941597, 38.644062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340954, 27.152609, 38.969433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415573, 0.700865, -0.579730,
		-0.875926, 0.480104, -0.047476,
		0.245057, 0.527530, 0.813424,
		35.414471, 27.310867, 39.213459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039299, 27.645613, 38.576725>,  <35.242931, 26.941597, 38.644062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039299, 27.645613, 38.576725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.316528, 27.681894, 38.862778>,  <35.482868, 27.703663, 39.034409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.316528, 27.681894, 38.862778>,  <35.039299, 27.645613, 38.576725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316528, 27.681894, 38.862778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436220, 0.737024, -0.516244,
		-0.573896, 0.669753, 0.471247,
		0.693077, 0.090703, 0.715135,
		35.524452, 27.709105, 39.077316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159908, 28.375154, 38.691402>,  <35.039299, 27.645613, 38.576725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159908, 28.375154, 38.691402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.489067, 28.187954, 38.820290>,  <35.686562, 28.075634, 38.897621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.489067, 28.187954, 38.820290>,  <35.159908, 28.375154, 38.691402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489067, 28.187954, 38.820290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568190, 0.674889, -0.470834,
		0.002893, 0.570524, 0.821275,
		0.822892, -0.468003, 0.322214,
		35.735935, 28.047554, 38.916954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612499, 28.893478, 38.966640>,  <35.159908, 28.375154, 38.691402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612499, 28.893478, 38.966640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837154, 28.572363, 38.886543>,  <35.971947, 28.379694, 38.838486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837154, 28.572363, 38.886543>,  <35.612499, 28.893478, 38.966640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837154, 28.572363, 38.886543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675724, 0.584713, -0.448896,
		0.477450, 0.116811, 0.870860,
		0.561638, -0.802787, -0.200239,
		36.005646, 28.331528, 38.826473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358669, 29.017616, 39.220840>,  <35.612499, 28.893478, 38.966640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358669, 29.017616, 39.220840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.356186, 28.755527, 38.918674>,  <36.354694, 28.598274, 38.737377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.356186, 28.755527, 38.918674>,  <36.358669, 29.017616, 39.220840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356186, 28.755527, 38.918674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754095, 0.493056, -0.433862,
		0.656736, -0.572347, 0.491037,
		-0.006211, -0.655221, -0.755411,
		36.354324, 28.558962, 38.692051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175804, 29.131926, 39.458630>,  <36.358669, 29.017616, 39.220840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175804, 29.131926, 39.458630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279274, 29.447674, 39.681332>,  <37.341354, 29.637123, 39.814953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279274, 29.447674, 39.681332>,  <37.175804, 29.131926, 39.458630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279274, 29.447674, 39.681332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661637, -0.275154, 0.697514,
		0.703792, -0.548802, 0.451102,
		0.258675, 0.789371, 0.556759,
		37.356876, 29.684484, 39.848358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089619, 28.937510, 40.072777>,  <37.175804, 29.131926, 39.458630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089619, 28.937510, 40.072777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089207, 29.335627, 40.111546>,  <37.088959, 29.574497, 40.134808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089207, 29.335627, 40.111546>,  <37.089619, 28.937510, 40.072777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089207, 29.335627, 40.111546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835007, -0.054188, 0.547565,
		0.550238, -0.080368, 0.831131,
		-0.001031, 0.995291, 0.096925,
		37.088898, 29.634214, 40.140621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161224, 29.176468, 40.729626>,  <37.089619, 28.937510, 40.072777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161224, 29.176468, 40.729626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964310, 29.478178, 40.555859>,  <36.846161, 29.659204, 40.451599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964310, 29.478178, 40.555859>,  <37.161224, 29.176468, 40.729626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964310, 29.478178, 40.555859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675429, -0.016212, 0.737247,
		0.549045, 0.656357, 0.517441,
		-0.492286, 0.754276, -0.434422,
		36.816624, 29.704460, 40.425533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043056, 29.649942, 41.275784>,  <37.161224, 29.176468, 40.729626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043056, 29.649942, 41.275784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803646, 29.796228, 40.990681>,  <36.660000, 29.884001, 40.819618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803646, 29.796228, 40.990681>,  <37.043056, 29.649942, 41.275784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803646, 29.796228, 40.990681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622462, 0.347769, 0.701140,
		0.504293, 0.863312, 0.019496,
		-0.598523, 0.365715, -0.712757,
		36.624088, 29.905943, 40.776855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811794, 30.262653, 41.575542>,  <37.043056, 29.649942, 41.275784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811794, 30.262653, 41.575542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.550373, 30.142305, 41.297741>,  <36.393520, 30.070097, 41.131058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.550373, 30.142305, 41.297741>,  <36.811794, 30.262653, 41.575542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550373, 30.142305, 41.297741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756045, 0.216481, 0.617683,
		-0.035495, 0.928769, -0.368954,
		-0.653557, -0.300870, -0.694508,
		36.354305, 30.052044, 41.089390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159641, 30.657150, 41.703594>,  <36.811794, 30.262653, 41.575542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159641, 30.657150, 41.703594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.050285, 30.351814, 41.469479>,  <35.984673, 30.168612, 41.329010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.050285, 30.351814, 41.469479>,  <36.159641, 30.657150, 41.703594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050285, 30.351814, 41.469479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882220, -0.043503, 0.468824,
		-0.383335, 0.644529, -0.661542,
		-0.273391, -0.763341, -0.585292,
		35.968269, 30.122812, 41.293892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550671, 30.838867, 41.382023>,  <36.159641, 30.657150, 41.703594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550671, 30.838867, 41.382023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.571529, 30.440599, 41.412807>,  <35.584045, 30.201639, 41.431278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.571529, 30.440599, 41.412807>,  <35.550671, 30.838867, 41.382023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571529, 30.440599, 41.412807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831171, -0.000550, 0.556016,
		-0.553566, -0.092962, -0.827601,
		0.052143, -0.995669, 0.076963,
		35.587173, 30.141899, 41.435898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883335, 30.487408, 41.083347>,  <35.550671, 30.838867, 41.382023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883335, 30.487408, 41.083347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.058990, 30.259966, 41.361584>,  <35.164383, 30.123501, 41.528526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.058990, 30.259966, 41.361584>,  <34.883335, 30.487408, 41.083347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058990, 30.259966, 41.361584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841520, 0.010829, 0.540118,
		-0.314647, -0.822539, -0.473737,
		0.439138, -0.568605, 0.695590,
		35.190731, 30.089384, 41.570259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353138, 30.246744, 41.416435>,  <34.883335, 30.487408, 41.083347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353138, 30.246744, 41.416435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.638229, 30.096516, 41.653400>,  <34.809284, 30.006378, 41.795582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.638229, 30.096516, 41.653400>,  <34.353138, 30.246744, 41.416435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638229, 30.096516, 41.653400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694561, -0.259927, 0.670838,
		-0.097961, -0.889598, -0.446115,
		0.712733, -0.375570, 0.592418,
		34.852051, 29.983845, 41.831127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080303, 29.581589, 41.644337>,  <34.353138, 30.246744, 41.416435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080303, 29.581589, 41.644337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.368134, 29.662609, 41.910023>,  <34.540833, 29.711222, 42.069435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.368134, 29.662609, 41.910023>,  <34.080303, 29.581589, 41.644337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368134, 29.662609, 41.910023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603513, -0.290712, 0.742468,
		0.343482, -0.935126, -0.086948,
		0.719578, 0.202551, 0.664215,
		34.584007, 29.723373, 42.109287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078556, 29.012184, 42.157330>,  <34.080303, 29.581589, 41.644337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078556, 29.012184, 42.157330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232368, 29.327131, 42.350075>,  <34.324657, 29.516100, 42.465721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232368, 29.327131, 42.350075>,  <34.078556, 29.012184, 42.157330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232368, 29.327131, 42.350075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455365, -0.292271, 0.840964,
		0.802981, -0.542800, 0.246152,
		0.384532, 0.787366, 0.481860,
		34.347729, 29.563341, 42.494633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460819, 28.786037, 42.718952>,  <34.078556, 29.012184, 42.157330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460819, 28.786037, 42.718952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.387310, 29.169214, 42.807114>,  <34.343204, 29.399120, 42.860012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.387310, 29.169214, 42.807114>,  <34.460819, 28.786037, 42.718952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387310, 29.169214, 42.807114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386413, -0.276575, 0.879881,
		0.903833, 0.076527, 0.420986,
		-0.183769, 0.957940, 0.220407,
		34.332180, 29.456596, 42.873234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710892, 28.824883, 43.354355>,  <34.460819, 28.786037, 42.718952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710892, 28.824883, 43.354355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.483776, 29.152166, 43.318241>,  <34.347507, 29.348537, 43.296574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.483776, 29.152166, 43.318241>,  <34.710892, 28.824883, 43.354355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483776, 29.152166, 43.318241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469137, -0.231516, 0.852239,
		0.676410, 0.526243, 0.515304,
		-0.567786, 0.818211, -0.090280,
		34.313438, 29.397629, 43.291157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524216, 28.945810, 44.033871>,  <34.710892, 28.824883, 43.354355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524216, 28.945810, 44.033871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291725, 29.203966, 43.835621>,  <34.152229, 29.358860, 43.716671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291725, 29.203966, 43.835621>,  <34.524216, 28.945810, 44.033871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291725, 29.203966, 43.835621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655400, -0.010286, 0.755212,
		0.482309, 0.763783, 0.428968,
		-0.581231, 0.645391, -0.495622,
		34.117355, 29.397583, 43.686935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.874670, 30.377420, 42.432384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.172186, 30.232557, 42.657104>,  <30.350695, 30.145639, 42.791939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.172186, 30.232557, 42.657104>,  <29.874670, 30.377420, 42.432384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172186, 30.232557, 42.657104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631026, 0.103286, -0.768855,
		0.220420, 0.926377, 0.305353,
		0.743789, -0.362156, 0.561801,
		30.395323, 30.123911, 42.825645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386606, 30.869341, 42.344883>,  <29.874670, 30.377420, 42.432384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386606, 30.869341, 42.344883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.579832, 30.547571, 42.483189>,  <30.695766, 30.354509, 42.566170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.579832, 30.547571, 42.483189>,  <30.386606, 30.869341, 42.344883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579832, 30.547571, 42.483189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781865, 0.218546, -0.583888,
		0.394129, 0.552394, 0.734522,
		0.483063, -0.804424, 0.345762,
		30.724751, 30.306244, 42.586918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965614, 31.084032, 42.561947>,  <30.386606, 30.869341, 42.344883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965614, 31.084032, 42.561947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.022818, 30.699154, 42.469227>,  <31.057140, 30.468227, 42.413597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.022818, 30.699154, 42.469227>,  <30.965614, 31.084032, 42.561947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022818, 30.699154, 42.469227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738443, 0.259673, -0.622311,
		0.658976, -0.082173, 0.747662,
		0.143010, -0.962194, -0.231798,
		31.065722, 30.410496, 42.399689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712177, 31.046013, 42.370358>,  <30.965614, 31.084032, 42.561947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712177, 31.046013, 42.370358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.569521, 30.695383, 42.241100>,  <31.483927, 30.485004, 42.163544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.569521, 30.695383, 42.241100>,  <31.712177, 31.046013, 42.370358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569521, 30.695383, 42.241100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575589, 0.066281, -0.815048,
		0.735870, -0.476678, 0.480909,
		-0.356641, -0.876576, -0.323145,
		31.462528, 30.432411, 42.144157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211849, 30.806053, 42.095860>,  <31.712177, 31.046013, 42.370358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211849, 30.806053, 42.095860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961384, 30.562542, 41.901001>,  <31.811106, 30.416435, 41.784084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961384, 30.562542, 41.901001>,  <32.211849, 30.806053, 42.095860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961384, 30.562542, 41.901001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502414, 0.162755, -0.849171,
		0.596243, -0.776466, 0.203949,
		-0.626159, -0.608778, -0.487149,
		31.773537, 30.379908, 41.754856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596352, 30.283726, 41.660118>,  <32.211849, 30.806053, 42.095860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596352, 30.283726, 41.660118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231674, 30.309683, 41.497829>,  <32.012867, 30.325258, 41.400455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231674, 30.309683, 41.497829>,  <32.596352, 30.283726, 41.660118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231674, 30.309683, 41.497829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410614, 0.179229, -0.894021,
		0.014699, -0.981665, -0.190048,
		-0.911691, 0.064895, -0.405720,
		31.958166, 30.329151, 41.376114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694908, 30.005520, 41.049549>,  <32.596352, 30.283726, 41.660118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694908, 30.005520, 41.049549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.361446, 30.220493, 40.998669>,  <32.161369, 30.349478, 40.968140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.361446, 30.220493, 40.998669>,  <32.694908, 30.005520, 41.049549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361446, 30.220493, 40.998669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308429, 0.261994, -0.914456,
		-0.458132, -0.801577, -0.384174,
		-0.833659, 0.537432, -0.127202,
		32.111347, 30.381723, 40.960506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548637, 30.056957, 40.219070>,  <32.694908, 30.005520, 41.049549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548637, 30.056957, 40.219070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.331886, 30.361164, 40.362167>,  <32.201836, 30.543688, 40.448025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.331886, 30.361164, 40.362167>,  <32.548637, 30.056957, 40.219070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331886, 30.361164, 40.362167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293753, 0.570190, -0.767198,
		-0.787451, -0.310638, -0.532377,
		-0.541877, 0.760518, 0.357746,
		32.169323, 30.589319, 40.469490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156235, 30.260250, 39.691460>,  <32.548637, 30.056957, 40.219070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156235, 30.260250, 39.691460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.156982, 30.577690, 39.934834>,  <32.157433, 30.768154, 40.080860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.156982, 30.577690, 39.934834>,  <32.156235, 30.260250, 39.691460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156982, 30.577690, 39.934834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208763, 0.594723, -0.776352,
		-0.977964, 0.128474, -0.164559,
		0.001874, 0.793599, 0.608439,
		32.157543, 30.815769, 40.117367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053230, 30.841637, 39.293343>,  <32.156235, 30.260250, 39.691460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053230, 30.841637, 39.293343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.196693, 31.036755, 39.611694>,  <32.282772, 31.153826, 39.802704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.196693, 31.036755, 39.611694>,  <32.053230, 30.841637, 39.293343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196693, 31.036755, 39.611694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349565, 0.720377, -0.599051,
		-0.865545, 0.493065, 0.087853,
		0.358658, 0.487796, 0.795877,
		32.304291, 31.183094, 39.850456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918272, 31.484528, 39.131042>,  <32.053230, 30.841637, 39.293343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918272, 31.484528, 39.131042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204849, 31.497940, 39.409779>,  <32.376797, 31.505987, 39.577019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204849, 31.497940, 39.409779>,  <31.918272, 31.484528, 39.131042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204849, 31.497940, 39.409779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462904, 0.724443, -0.510787,
		-0.521948, 0.688519, 0.503500,
		0.716443, 0.033532, 0.696839,
		32.419781, 31.507999, 39.618832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865492, 32.215794, 39.407318>,  <31.918272, 31.484528, 39.131042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865492, 32.215794, 39.407318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225780, 32.070518, 39.502647>,  <32.441952, 31.983353, 39.559845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225780, 32.070518, 39.502647>,  <31.865492, 32.215794, 39.407318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225780, 32.070518, 39.502647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434204, 0.736249, -0.519042,
		0.013046, 0.570992, 0.820852,
		0.900720, -0.363189, 0.238322,
		32.495998, 31.961561, 39.574142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328156, 32.786396, 39.663582>,  <31.865492, 32.215794, 39.407318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328156, 32.786396, 39.663582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.605423, 32.510372, 39.580318>,  <32.771782, 32.344757, 39.530361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.605423, 32.510372, 39.580318>,  <32.328156, 32.786396, 39.663582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605423, 32.510372, 39.580318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538167, 0.687614, -0.487405,
		0.479472, 0.225831, 0.848002,
		0.693169, -0.690064, -0.208157,
		32.813374, 32.303352, 39.517872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035736, 33.154175, 39.738449>,  <32.328156, 32.786396, 39.663582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035736, 33.154175, 39.738449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.080856, 32.828335, 39.510868>,  <33.107929, 32.632832, 39.374321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.080856, 32.828335, 39.510868>,  <33.035736, 33.154175, 39.738449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080856, 32.828335, 39.510868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563387, 0.524096, -0.638685,
		0.818456, -0.248495, 0.518054,
		0.112800, -0.814601, -0.568948,
		33.114697, 32.583954, 39.340183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622074, 33.107182, 40.096462>,  <33.035736, 33.154175, 39.738449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622074, 33.107182, 40.096462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.750069, 33.351994, 40.385746>,  <33.826866, 33.498882, 40.559315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.750069, 33.351994, 40.385746>,  <33.622074, 33.107182, 40.096462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750069, 33.351994, 40.385746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610313, -0.450698, 0.651452,
		0.724657, -0.649837, 0.229314,
		0.319986, 0.612032, 0.723205,
		33.846066, 33.535603, 40.602707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684959, 32.642780, 40.739239>,  <33.622074, 33.107182, 40.096462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684959, 32.642780, 40.739239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722664, 33.010231, 40.892727>,  <33.745285, 33.230701, 40.984818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722664, 33.010231, 40.892727>,  <33.684959, 32.642780, 40.739239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722664, 33.010231, 40.892727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434154, -0.308920, 0.846214,
		0.895894, -0.246355, 0.369707,
		0.094259, 0.918628, 0.383716,
		33.750942, 33.285820, 41.007843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886284, 32.617622, 41.474705>,  <33.684959, 32.642780, 40.739239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886284, 32.617622, 41.474705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722900, 32.980701, 41.436226>,  <33.624870, 33.198547, 41.413139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722900, 32.980701, 41.436226>,  <33.886284, 32.617622, 41.474705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722900, 32.980701, 41.436226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420153, -0.093400, 0.902634,
		0.810331, 0.409105, 0.419520,
		-0.408455, 0.907695, -0.096202,
		33.600365, 33.253010, 41.407364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135799, 32.952148, 42.049629>,  <33.886284, 32.617622, 41.474705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135799, 32.952148, 42.049629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806717, 33.141483, 41.923710>,  <33.609268, 33.255085, 41.848156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806717, 33.141483, 41.923710>,  <34.135799, 32.952148, 42.049629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806717, 33.141483, 41.923710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396422, -0.080810, 0.914505,
		0.407434, 0.877164, 0.254126,
		-0.822707, 0.473342, -0.314802,
		33.559906, 33.283485, 41.829269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930592, 33.491714, 42.651421>,  <34.135799, 32.952148, 42.049629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930592, 33.491714, 42.651421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612492, 33.435276, 42.415565>,  <33.421631, 33.401413, 42.274052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612492, 33.435276, 42.415565>,  <33.930592, 33.491714, 42.651421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612492, 33.435276, 42.415565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584335, -0.080959, 0.807464,
		-0.161664, 0.986681, -0.018063,
		-0.795247, -0.141093, -0.589640,
		33.373917, 33.392948, 42.238674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377293, 33.911636, 43.058594>,  <33.930592, 33.491714, 42.651421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377293, 33.911636, 43.058594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199284, 33.666393, 42.797504>,  <33.092480, 33.519245, 42.640850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199284, 33.666393, 42.797504>,  <33.377293, 33.911636, 43.058594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199284, 33.666393, 42.797504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659345, -0.268897, 0.702110,
		-0.605987, 0.742826, -0.284586,
		-0.445021, -0.613110, -0.652727,
		33.065777, 33.482460, 42.601685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698910, 34.124050, 42.967155>,  <33.377293, 33.911636, 43.058594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698910, 34.124050, 42.967155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672504, 33.735062, 42.877766>,  <32.656662, 33.501667, 42.824131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672504, 33.735062, 42.877766>,  <32.698910, 34.124050, 42.967155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672504, 33.735062, 42.877766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704728, -0.113113, 0.700403,
		-0.706400, 0.203721, -0.677862,
		-0.066012, -0.972473, -0.223471,
		32.652702, 33.443321, 42.810726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983831, 33.969593, 43.111496>,  <32.698910, 34.124050, 42.967155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983831, 33.969593, 43.111496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.154053, 33.607635, 43.115002>,  <32.256187, 33.390461, 43.117104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.154053, 33.607635, 43.115002>,  <31.983831, 33.969593, 43.111496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154053, 33.607635, 43.115002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649108, -0.298490, 0.699687,
		-0.630525, -0.303441, -0.714396,
		0.425554, -0.904890, 0.008761,
		32.281719, 33.336170, 43.117630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421715, 33.534458, 43.149529>,  <31.983831, 33.969593, 43.111496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421715, 33.534458, 43.149529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.728924, 33.304047, 43.261482>,  <31.913248, 33.165802, 43.328655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.728924, 33.304047, 43.261482>,  <31.421715, 33.534458, 43.149529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728924, 33.304047, 43.261482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549373, -0.367970, 0.750191,
		-0.329133, -0.729931, -0.599060,
		0.768024, -0.576020, 0.279894,
		31.959330, 33.131237, 43.345448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325455, 32.870014, 42.969723>,  <31.421715, 33.534458, 43.149529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325455, 32.870014, 42.969723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590033, 32.806484, 43.262917>,  <31.748779, 32.768364, 43.438831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590033, 32.806484, 43.262917>,  <31.325455, 32.870014, 42.969723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590033, 32.806484, 43.262917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718862, -0.412918, 0.559228,
		0.213842, -0.896812, -0.387297,
		0.661445, -0.158827, 0.732984,
		31.788465, 32.758835, 43.482811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292334, 32.162979, 43.194302>,  <31.325455, 32.870014, 42.969723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292334, 32.162979, 43.194302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475946, 32.362000, 43.488712>,  <31.586115, 32.481411, 43.665359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475946, 32.362000, 43.488712>,  <31.292334, 32.162979, 43.194302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475946, 32.362000, 43.488712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380211, -0.638746, 0.668912,
		0.802949, -0.586899, -0.104033,
		0.459034, 0.497548, 0.736026,
		31.613657, 32.511265, 43.709518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602968, 31.676643, 43.756145>,  <31.292334, 32.162979, 43.194302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602968, 31.676643, 43.756145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590044, 32.025414, 43.951572>,  <31.582291, 32.234676, 44.068829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590044, 32.025414, 43.951572>,  <31.602968, 31.676643, 43.756145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590044, 32.025414, 43.951572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397069, -0.459790, 0.794311,
		0.917220, -0.168331, 0.361071,
		-0.032309, 0.871928, 0.488568,
		31.580351, 32.286991, 44.098145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052547, 31.642284, 44.415031>,  <31.602968, 31.676643, 43.756145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052547, 31.642284, 44.415031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762850, 31.912657, 44.469563>,  <31.589031, 32.074883, 44.502281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762850, 31.912657, 44.469563>,  <32.052547, 31.642284, 44.415031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762850, 31.912657, 44.469563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294319, -0.481818, 0.825365,
		0.623575, 0.557643, 0.547894,
		-0.724245, 0.675933, 0.136324,
		31.545576, 32.115437, 44.510460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068008, 31.748081, 45.098854>,  <32.052547, 31.642284, 44.415031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068008, 31.748081, 45.098854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711887, 31.895386, 44.991714>,  <31.498215, 31.983768, 44.927429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711887, 31.895386, 44.991714>,  <32.068008, 31.748081, 45.098854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711887, 31.895386, 44.991714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424940, -0.460489, 0.779343,
		0.163659, 0.807672, 0.566464,
		-0.890304, 0.368260, -0.267850,
		31.444796, 32.005863, 44.911358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597618, 32.179737, 45.406719>,  <32.068008, 31.748081, 45.098854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597618, 32.179737, 45.406719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.872631, 32.156364, 45.696236>,  <33.037640, 32.142342, 45.869946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.872631, 32.156364, 45.696236>,  <32.597618, 32.179737, 45.406719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872631, 32.156364, 45.696236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698835, 0.324057, -0.637665,
		-0.197290, 0.944231, 0.263636,
		0.687536, -0.058433, 0.723796,
		33.078892, 32.138836, 45.913376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002926, 32.802551, 45.429447>,  <32.597618, 32.179737, 45.406719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002926, 32.802551, 45.429447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.256989, 32.558247, 45.618572>,  <33.409428, 32.411663, 45.732048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.256989, 32.558247, 45.618572>,  <33.002926, 32.802551, 45.429447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256989, 32.558247, 45.618572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720652, 0.248352, -0.647289,
		0.277914, 0.751861, 0.597887,
		0.635157, -0.610759, 0.472810,
		33.447536, 32.375019, 45.760414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715485, 33.202404, 45.660194>,  <33.002926, 32.802551, 45.429447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715485, 33.202404, 45.660194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.799557, 32.811527, 45.648109>,  <33.849998, 32.577000, 45.640858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.799557, 32.811527, 45.648109>,  <33.715485, 33.202404, 45.660194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799557, 32.811527, 45.648109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860107, 0.199512, -0.469478,
		0.464801, 0.072685, 0.882427,
		0.210179, -0.977196, -0.030216,
		33.862610, 32.518368, 45.639046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472561, 33.185646, 45.701607>,  <33.715485, 33.202404, 45.660194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472561, 33.185646, 45.701607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.374760, 32.817688, 45.578960>,  <34.316078, 32.596912, 45.505371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.374760, 32.817688, 45.578960>,  <34.472561, 33.185646, 45.701607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374760, 32.817688, 45.578960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683872, 0.060577, -0.727083,
		0.687414, -0.387460, 0.614278,
		-0.244504, -0.919894, -0.306614,
		34.301407, 32.541721, 45.486977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181164, 32.886585, 45.644272>,  <34.472561, 33.185646, 45.701607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181164, 32.886585, 45.644272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927410, 32.649391, 45.445908>,  <34.775158, 32.507076, 45.326889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927410, 32.649391, 45.445908>,  <35.181164, 32.886585, 45.644272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927410, 32.649391, 45.445908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575928, 0.065342, -0.814885,
		0.515619, -0.802557, 0.300065,
		-0.634385, -0.592986, -0.495907,
		34.737095, 32.471497, 45.297134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567867, 32.275150, 45.406090>,  <35.181164, 32.886585, 45.644272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567867, 32.275150, 45.406090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.265118, 32.342480, 45.153484>,  <35.083469, 32.382877, 45.001923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.265118, 32.342480, 45.153484>,  <35.567867, 32.275150, 45.406090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265118, 32.342480, 45.153484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627486, -0.083069, -0.774184,
		-0.182774, -0.982225, -0.042750,
		-0.756872, 0.168326, -0.631515,
		35.038055, 32.392975, 44.964031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756546, 31.743902, 44.917782>,  <35.567867, 32.275150, 45.406090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756546, 31.743902, 44.917782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.500217, 31.993902, 44.739468>,  <35.346420, 32.143902, 44.632481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.500217, 31.993902, 44.739468>,  <35.756546, 31.743902, 44.917782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500217, 31.993902, 44.739468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566039, -0.007606, -0.824343,
		-0.518606, -0.780586, -0.348901,
		-0.640817, 0.625002, -0.445787,
		35.307972, 32.181404, 44.605732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711750, 31.542051, 44.309067>,  <35.756546, 31.743902, 44.917782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711750, 31.542051, 44.309067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.574474, 31.912069, 44.243935>,  <35.492107, 32.134079, 44.204857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.574474, 31.912069, 44.243935>,  <35.711750, 31.542051, 44.309067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574474, 31.912069, 44.243935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539421, 0.052191, -0.840417,
		-0.768924, -0.376257, -0.516900,
		-0.343190, 0.925044, -0.162830,
		35.471516, 32.189583, 44.195084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525948, 31.595203, 43.544582>,  <35.711750, 31.542051, 44.309067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525948, 31.595203, 43.544582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.579124, 31.963345, 43.691700>,  <35.611031, 32.184231, 43.779972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.579124, 31.963345, 43.691700>,  <35.525948, 31.595203, 43.544582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579124, 31.963345, 43.691700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469542, 0.268321, -0.841150,
		-0.872844, 0.284519, -0.396475,
		0.132941, 0.920355, 0.367796,
		35.619007, 32.239452, 43.802040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464920, 32.088764, 43.004375>,  <35.525948, 31.595203, 43.544582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464920, 32.088764, 43.004375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.666149, 32.329884, 43.252102>,  <35.786888, 32.474556, 43.400738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.666149, 32.329884, 43.252102>,  <35.464920, 32.088764, 43.004375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666149, 32.329884, 43.252102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574176, 0.302468, -0.760812,
		-0.645938, 0.738341, -0.193948,
		0.503076, 0.602798, 0.619314,
		35.817070, 32.510723, 43.437897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526543, 32.785034, 42.656265>,  <35.464920, 32.088764, 43.004375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526543, 32.785034, 42.656265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.791878, 32.778130, 42.955513>,  <35.951080, 32.773987, 43.135063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.791878, 32.778130, 42.955513>,  <35.526543, 32.785034, 42.656265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791878, 32.778130, 42.955513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695640, 0.382694, -0.607972,
		-0.275808, 0.923714, 0.265863,
		0.663337, -0.017261, 0.748122,
		35.990879, 32.772953, 43.179951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904034, 33.491508, 42.561279>,  <35.526543, 32.785034, 42.656265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904034, 33.491508, 42.561279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136047, 33.260410, 42.790981>,  <36.275253, 33.121750, 42.928802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136047, 33.260410, 42.790981>,  <35.904034, 33.491508, 42.561279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136047, 33.260410, 42.790981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811403, 0.347419, -0.470028,
		0.072049, 0.738585, 0.670299,
		0.580030, -0.577747, 0.574259,
		36.310055, 33.087086, 42.963261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425900, 33.907368, 42.785076>,  <35.904034, 33.491508, 42.561279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425900, 33.907368, 42.785076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.577351, 33.538486, 42.816521>,  <36.668221, 33.317158, 42.835388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.577351, 33.538486, 42.816521>,  <36.425900, 33.907368, 42.785076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577351, 33.538486, 42.816521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831527, 0.301637, -0.466453,
		0.406452, 0.241982, 0.881046,
		0.378629, -0.922204, 0.078614,
		36.690941, 33.261826, 42.840103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210030, 33.926540, 43.059746>,  <36.425900, 33.907368, 42.785076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210030, 33.926540, 43.059746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120945, 33.598965, 42.848186>,  <37.067493, 33.402420, 42.721249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120945, 33.598965, 42.848186>,  <37.210030, 33.926540, 43.059746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120945, 33.598965, 42.848186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622986, 0.297744, -0.723351,
		0.749859, -0.490596, 0.443878,
		-0.222711, -0.818941, -0.528900,
		37.054131, 33.353283, 42.689518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.254725, 36.797775, 27.742321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.130468, 37.084351, 27.492449>,  <28.055914, 37.256294, 27.342525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.130468, 37.084351, 27.492449>,  <28.254725, 36.797775, 27.742321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130468, 37.084351, 27.492449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741315, 0.228738, 0.630976,
		0.594941, 0.659091, 0.460047,
		-0.310641, 0.716434, -0.624680,
		28.037275, 37.299282, 27.305044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277729, 37.378674, 28.157852>,  <28.254725, 36.797775, 27.742321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277729, 37.378674, 28.157852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024414, 37.412617, 27.850151>,  <27.872425, 37.432983, 27.665531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024414, 37.412617, 27.850151>,  <28.277729, 37.378674, 28.157852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024414, 37.412617, 27.850151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764341, 0.087303, 0.638875,
		0.121374, 0.992561, 0.009576,
		-0.633286, 0.084862, -0.769251,
		27.834429, 37.438076, 27.619375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879639, 38.018223, 28.282015>,  <28.277729, 37.378674, 28.157852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879639, 38.018223, 28.282015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.683918, 37.773239, 28.033669>,  <27.566486, 37.626247, 27.884661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.683918, 37.773239, 28.033669>,  <27.879639, 38.018223, 28.282015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683918, 37.773239, 28.033669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843461, 0.151346, 0.515429,
		-0.221714, 0.775879, -0.590640,
		-0.489302, -0.612460, -0.620868,
		27.537128, 37.589500, 27.847408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204514, 38.332172, 28.196278>,  <27.879639, 38.018223, 28.282015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204514, 38.332172, 28.196278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124233, 37.962925, 28.065084>,  <27.076065, 37.741379, 27.986368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124233, 37.962925, 28.065084>,  <27.204514, 38.332172, 28.196278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124233, 37.962925, 28.065084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899578, 0.041093, 0.434822,
		-0.387914, 0.382317, -0.838663,
		-0.200703, -0.923117, -0.327984,
		27.064022, 37.685989, 27.966690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545601, 38.435360, 27.968369>,  <27.204514, 38.332172, 28.196278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545601, 38.435360, 27.968369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.593809, 38.039627, 28.001125>,  <26.622734, 37.802189, 28.020779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.593809, 38.039627, 28.001125>,  <26.545601, 38.435360, 27.968369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593809, 38.039627, 28.001125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953778, -0.092522, 0.285916,
		-0.275288, -0.112563, -0.954749,
		0.120519, -0.989327, 0.081890,
		26.629965, 37.742828, 28.025692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897938, 38.092949, 27.878374>,  <26.545601, 38.435360, 27.968369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897938, 38.092949, 27.878374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126654, 37.833004, 28.078669>,  <26.263884, 37.677036, 28.198845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126654, 37.833004, 28.078669>,  <25.897938, 38.092949, 27.878374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126654, 37.833004, 28.078669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742015, -0.149291, 0.653549,
		-0.349961, -0.745246, -0.567571,
		0.571787, -0.649863, 0.500737,
		26.298189, 37.638046, 28.228889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419634, 37.567139, 28.128431>,  <25.897938, 38.092949, 27.878374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419634, 37.567139, 28.128431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.748215, 37.527283, 28.353033>,  <25.945362, 37.503368, 28.487795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.748215, 37.527283, 28.353033>,  <25.419634, 37.567139, 28.128431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.748215, 37.527283, 28.353033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570077, -0.169708, 0.803873,
		0.015193, -0.980444, -0.196210,
		0.821451, -0.099642, 0.561507,
		25.994650, 37.497391, 28.521484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386597, 36.940445, 28.358595>,  <25.419634, 37.567139, 28.128431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386597, 36.940445, 28.358595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.613085, 37.144264, 28.617748>,  <25.748978, 37.266556, 28.773241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.613085, 37.144264, 28.617748>,  <25.386597, 36.940445, 28.358595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613085, 37.144264, 28.617748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560024, -0.338911, 0.755984,
		0.604787, -0.790884, 0.093462,
		0.566221, 0.509550, 0.647884,
		25.782951, 37.297131, 28.812113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376247, 36.545803, 28.973234>,  <25.386597, 36.940445, 28.358595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376247, 36.545803, 28.973234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.504467, 36.901199, 29.104588>,  <25.581398, 37.114437, 29.183399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.504467, 36.901199, 29.104588>,  <25.376247, 36.545803, 28.973234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504467, 36.901199, 29.104588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255278, -0.252819, 0.933229,
		0.912185, -0.382974, 0.145771,
		0.320548, 0.888489, 0.328383,
		25.600632, 37.167747, 29.203102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820509, 36.495884, 29.540985>,  <25.376247, 36.545803, 28.973234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820509, 36.495884, 29.540985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.695303, 36.874088, 29.576834>,  <25.620180, 37.101009, 29.598343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.695303, 36.874088, 29.576834>,  <25.820509, 36.495884, 29.540985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695303, 36.874088, 29.576834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318777, -0.193484, 0.927871,
		0.894652, 0.261868, 0.361970,
		-0.313015, 0.945510, 0.089623,
		25.601398, 37.157742, 29.603722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132362, 36.748104, 30.252110>,  <25.820509, 36.495884, 29.540985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132362, 36.748104, 30.252110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.828470, 36.986172, 30.147352>,  <25.646135, 37.129013, 30.084497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.828470, 36.986172, 30.147352>,  <26.132362, 36.748104, 30.252110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828470, 36.986172, 30.147352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417075, -0.137035, 0.898482,
		0.498859, 0.791832, 0.352338,
		-0.759730, 0.595167, -0.261892,
		25.600552, 37.164722, 30.068785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098181, 37.204250, 30.742521>,  <26.132362, 36.748104, 30.252110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098181, 37.204250, 30.742521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.734447, 37.181362, 30.577677>,  <25.516207, 37.167629, 30.478771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.734447, 37.181362, 30.577677>,  <26.098181, 37.204250, 30.742521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734447, 37.181362, 30.577677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394572, -0.195623, 0.897800,
		-0.131991, 0.979008, 0.155309,
		-0.909335, -0.057221, -0.412110,
		25.461647, 37.164196, 30.454044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811361, 37.597755, 31.287100>,  <26.098181, 37.204250, 30.742521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811361, 37.597755, 31.287100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.522566, 37.432053, 31.065424>,  <25.349289, 37.332630, 30.932419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.522566, 37.432053, 31.065424>,  <25.811361, 37.597755, 31.287100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522566, 37.432053, 31.065424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511647, -0.219542, 0.830674,
		-0.465779, 0.883285, -0.053445,
		-0.721989, -0.414255, -0.554188,
		25.305969, 37.307777, 30.899168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212181, 37.716267, 31.569702>,  <25.811361, 37.597755, 31.287100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212181, 37.716267, 31.569702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.124256, 37.409801, 31.328148>,  <25.071501, 37.225922, 31.183216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.124256, 37.409801, 31.328148>,  <25.212181, 37.716267, 31.569702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.124256, 37.409801, 31.328148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401876, -0.492943, 0.771689,
		-0.888919, 0.412315, -0.199546,
		-0.219814, -0.766162, -0.603886,
		25.058311, 37.179955, 31.146982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529371, 37.540024, 31.812025>,  <25.212181, 37.716267, 31.569702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529371, 37.540024, 31.812025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.692141, 37.222427, 31.631367>,  <24.789803, 37.031868, 31.522972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.692141, 37.222427, 31.631367>,  <24.529371, 37.540024, 31.812025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.692141, 37.222427, 31.631367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182156, -0.555037, 0.811636,
		-0.895117, -0.248002, -0.370487,
		0.406922, -0.793996, -0.451648,
		24.814217, 36.984230, 31.495872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.081615, 36.914902, 31.919556>,  <24.529371, 37.540024, 31.812025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.081615, 36.914902, 31.919556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.436066, 36.752945, 31.829363>,  <24.648735, 36.655769, 31.775248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.436066, 36.752945, 31.829363>,  <24.081615, 36.914902, 31.919556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.436066, 36.752945, 31.829363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090717, -0.628660, 0.772371,
		-0.454479, -0.663964, -0.593802,
		0.886126, -0.404895, -0.225480,
		24.701904, 36.631477, 31.761719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.008677, 36.116795, 31.993450>,  <24.081615, 36.914902, 31.919556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.008677, 36.116795, 31.993450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.391365, 36.228756, 32.025299>,  <24.620977, 36.295933, 32.044407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.391365, 36.228756, 32.025299>,  <24.008677, 36.116795, 31.993450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.391365, 36.228756, 32.025299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081975, -0.521749, 0.849151,
		0.279223, -0.805873, -0.522114,
		0.956721, 0.279903, 0.079623,
		24.678381, 36.312725, 32.049187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.347603, 35.478203, 32.071716>,  <24.008677, 36.116795, 31.993450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.347603, 35.478203, 32.071716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.591953, 35.763443, 32.209309>,  <24.738564, 35.934586, 32.291862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.591953, 35.763443, 32.209309>,  <24.347603, 35.478203, 32.071716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.591953, 35.763443, 32.209309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015546, -0.423582, 0.905724,
		0.791575, -0.558631, -0.247669,
		0.610874, 0.713098, 0.343982,
		24.775215, 35.977371, 32.312504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.797092, 35.100624, 32.479031>,  <24.347603, 35.478203, 32.071716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.797092, 35.100624, 32.479031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.849215, 35.478916, 32.598103>,  <24.880487, 35.705891, 32.669544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.849215, 35.478916, 32.598103>,  <24.797092, 35.100624, 32.479031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849215, 35.478916, 32.598103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068640, -0.290910, 0.954285,
		0.989095, -0.144779, 0.027009,
		0.130304, 0.945733, 0.297676,
		24.888306, 35.762634, 32.687405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310463, 35.015182, 32.972912>,  <24.797092, 35.100624, 32.479031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310463, 35.015182, 32.972912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.132170, 35.366776, 33.040691>,  <25.025194, 35.577732, 33.081360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.132170, 35.366776, 33.040691>,  <25.310463, 35.015182, 32.972912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.132170, 35.366776, 33.040691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052570, -0.163261, 0.985182,
		0.893620, 0.448037, 0.026563,
		-0.445734, 0.878982, 0.169446,
		24.998449, 35.630470, 33.091526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769697, 35.340355, 33.438080>,  <25.310463, 35.015182, 32.972912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769697, 35.340355, 33.438080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.400177, 35.490463, 33.468460>,  <25.178465, 35.580528, 33.486687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.400177, 35.490463, 33.468460>,  <25.769697, 35.340355, 33.438080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400177, 35.490463, 33.468460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078617, -0.380058, 0.921615,
		0.374719, 0.845417, 0.380600,
		-0.923799, 0.375268, 0.075951,
		25.123037, 35.603043, 33.491245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532259, 35.168243, 33.320160>,  <25.769697, 35.340355, 33.438080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532259, 35.168243, 33.320160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792330, 35.376881, 33.541142>,  <26.948372, 35.502064, 33.673733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792330, 35.376881, 33.541142>,  <26.532259, 35.168243, 33.320160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792330, 35.376881, 33.541142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489090, 0.269113, -0.829680,
		-0.581431, 0.809639, -0.080137,
		0.650176, 0.521596, 0.552457,
		26.987383, 35.533360, 33.706879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542618, 35.797188, 32.937637>,  <26.532259, 35.168243, 33.320160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542618, 35.797188, 32.937637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.872066, 35.762451, 33.161816>,  <27.069736, 35.741608, 33.296322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.872066, 35.762451, 33.161816>,  <26.542618, 35.797188, 32.937637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872066, 35.762451, 33.161816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565447, 0.201988, -0.799669,
		-0.043758, 0.975530, 0.215468,
		0.823623, -0.086844, 0.560449,
		27.119154, 35.736397, 33.329948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846106, 36.474850, 32.906609>,  <26.542618, 35.797188, 32.937637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846106, 36.474850, 32.906609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111296, 36.187126, 32.989601>,  <27.270411, 36.014492, 33.039398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111296, 36.187126, 32.989601>,  <26.846106, 36.474850, 32.906609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111296, 36.187126, 32.989601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512359, 0.233886, -0.826309,
		0.545848, 0.654130, 0.523607,
		0.662977, -0.719314, 0.207483,
		27.310188, 35.971333, 33.051846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450333, 36.844704, 32.802078>,  <26.846106, 36.474850, 32.906609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450333, 36.844704, 32.802078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.594475, 36.471893, 32.817451>,  <27.680960, 36.248207, 32.826675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.594475, 36.471893, 32.817451>,  <27.450333, 36.844704, 32.802078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594475, 36.471893, 32.817451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600941, 0.200437, -0.773754,
		0.713452, 0.301925, 0.632319,
		0.360356, -0.932023, 0.038438,
		27.702581, 36.192287, 32.828983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197182, 36.867558, 32.759731>,  <27.450333, 36.844704, 32.802078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197182, 36.867558, 32.759731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107271, 36.494644, 32.646366>,  <28.053326, 36.270897, 32.578346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107271, 36.494644, 32.646366>,  <28.197182, 36.867558, 32.759731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107271, 36.494644, 32.646366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577137, 0.106973, -0.809611,
		0.785104, -0.345550, 0.514011,
		-0.224775, -0.932283, -0.283414,
		28.039839, 36.214958, 32.561340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806538, 36.533237, 32.728580>,  <28.197182, 36.867558, 32.759731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806538, 36.533237, 32.728580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556156, 36.324333, 32.496918>,  <28.405928, 36.198990, 32.357918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556156, 36.324333, 32.496918>,  <28.806538, 36.533237, 32.728580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556156, 36.324333, 32.496918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626646, 0.105228, -0.772167,
		0.464216, -0.846269, 0.261404,
		-0.625955, -0.522260, -0.579159,
		28.368370, 36.167656, 32.323170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183165, 35.972233, 32.433865>,  <28.806538, 36.533237, 32.728580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183165, 35.972233, 32.433865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856665, 35.966614, 32.202850>,  <28.660765, 35.963242, 32.064243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856665, 35.966614, 32.202850>,  <29.183165, 35.972233, 32.433865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856665, 35.966614, 32.202850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573166, -0.144728, -0.806557,
		-0.072251, -0.989372, 0.126189,
		-0.816248, -0.014053, -0.577531,
		28.611790, 35.962399, 32.029591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343948, 35.418625, 32.134541>,  <29.183165, 35.972233, 32.433865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343948, 35.418625, 32.134541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.065414, 35.592747, 31.906282>,  <28.898294, 35.697220, 31.769329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.065414, 35.592747, 31.906282>,  <29.343948, 35.418625, 32.134541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065414, 35.592747, 31.906282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536507, -0.212422, -0.816723,
		-0.476740, -0.874864, -0.085627,
		-0.696333, 0.435304, -0.570641,
		28.856514, 35.723339, 31.735090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221558, 34.933041, 31.518303>,  <29.343948, 35.418625, 32.134541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221558, 34.933041, 31.518303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069138, 35.282932, 31.398533>,  <28.977686, 35.492867, 31.326672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069138, 35.282932, 31.398533>,  <29.221558, 34.933041, 31.518303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069138, 35.282932, 31.398533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428618, -0.119822, -0.895505,
		-0.819199, -0.469572, -0.329265,
		-0.381051, 0.874726, -0.299426,
		28.954823, 35.545349, 31.308704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040865, 34.782833, 30.860046>,  <29.221558, 34.933041, 31.518303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040865, 34.782833, 30.860046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028421, 35.182339, 30.875555>,  <29.020956, 35.422043, 30.884861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028421, 35.182339, 30.875555>,  <29.040865, 34.782833, 30.860046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028421, 35.182339, 30.875555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502265, 0.049158, -0.863315,
		-0.864154, -0.007382, -0.503174,
		-0.031108, 0.998764, 0.038772,
		29.019089, 35.481968, 30.887186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650970, 35.010891, 30.254803>,  <29.040865, 34.782833, 30.860046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650970, 35.010891, 30.254803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893875, 35.306545, 30.371363>,  <29.039618, 35.483936, 30.441298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893875, 35.306545, 30.371363>,  <28.650970, 35.010891, 30.254803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893875, 35.306545, 30.371363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206904, 0.206992, -0.956214,
		-0.767087, 0.640965, -0.027231,
		0.607264, 0.739133, 0.291399,
		29.076054, 35.528286, 30.458782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571177, 35.537304, 29.855501>,  <28.650970, 35.010891, 30.254803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571177, 35.537304, 29.855501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936657, 35.619667, 29.995646>,  <29.155945, 35.669086, 30.079731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936657, 35.619667, 29.995646>,  <28.571177, 35.537304, 29.855501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936657, 35.619667, 29.995646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238082, 0.427466, -0.872118,
		-0.329341, 0.880270, 0.341554,
		0.913702, 0.205907, 0.350359,
		29.210768, 35.681438, 30.100754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693073, 36.224380, 29.731331>,  <28.571177, 35.537304, 29.855501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693073, 36.224380, 29.731331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047176, 36.042995, 29.772675>,  <29.259640, 35.934162, 29.797480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047176, 36.042995, 29.772675>,  <28.693073, 36.224380, 29.731331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047176, 36.042995, 29.772675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329554, 0.454772, -0.827391,
		0.328190, 0.766519, 0.552033,
		0.885260, -0.453466, 0.103358,
		29.312754, 35.906956, 29.803682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040880, 36.620697, 29.327597>,  <28.693073, 36.224380, 29.731331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040880, 36.620697, 29.327597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.302446, 36.322128, 29.376980>,  <29.459387, 36.142986, 29.406610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.302446, 36.322128, 29.376980>,  <29.040880, 36.620697, 29.327597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302446, 36.322128, 29.376980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387996, 0.190769, -0.901702,
		0.649501, 0.637540, 0.414357,
		0.653917, -0.746425, 0.123458,
		29.498621, 36.098202, 29.414017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682579, 36.931786, 29.260447>,  <29.040880, 36.620697, 29.327597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682579, 36.931786, 29.260447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.704420, 36.543369, 29.167414>,  <29.717524, 36.310318, 29.111595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.704420, 36.543369, 29.167414>,  <29.682579, 36.931786, 29.260447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704420, 36.543369, 29.167414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383800, 0.235445, -0.892896,
		0.921801, -0.040511, 0.385542,
		0.054602, -0.971043, -0.232581,
		29.720800, 36.252056, 29.097639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300093, 36.832069, 28.950813>,  <29.682579, 36.931786, 29.260447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300093, 36.832069, 28.950813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.126295, 36.493694, 28.827129>,  <30.022017, 36.290668, 28.752918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.126295, 36.493694, 28.827129>,  <30.300093, 36.832069, 28.950813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126295, 36.493694, 28.827129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371886, 0.144180, -0.917013,
		0.820314, -0.513427, 0.251946,
		-0.434494, -0.845934, -0.309209,
		29.995947, 36.239914, 28.734367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789415, 36.387955, 28.646309>,  <30.300093, 36.832069, 28.950813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789415, 36.387955, 28.646309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.439728, 36.293594, 28.476562>,  <30.229916, 36.236977, 28.374714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.439728, 36.293594, 28.476562>,  <30.789415, 36.387955, 28.646309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439728, 36.293594, 28.476562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395483, 0.161051, -0.904243,
		0.281659, -0.958338, -0.047498,
		-0.874221, -0.235904, -0.424368,
		30.177462, 36.222824, 28.349253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053577, 36.314659, 27.973539>,  <30.789415, 36.387955, 28.646309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053577, 36.314659, 27.973539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.656820, 36.280602, 27.935808>,  <30.418766, 36.260166, 27.913170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.656820, 36.280602, 27.935808>,  <31.053577, 36.314659, 27.973539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656820, 36.280602, 27.935808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094220, 0.005325, -0.995537,
		0.085273, -0.996354, 0.002741,
		-0.991892, -0.085151, -0.094330,
		30.359253, 36.255058, 27.907509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933697, 35.823776, 27.459770>,  <31.053577, 36.314659, 27.973539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933697, 35.823776, 27.459770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.606092, 36.052193, 27.482168>,  <30.409529, 36.189243, 27.495607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.606092, 36.052193, 27.482168>,  <30.933697, 35.823776, 27.459770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606092, 36.052193, 27.482168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034809, 0.146865, -0.988544,
		-0.572719, -0.807680, -0.140161,
		-0.819012, 0.571037, 0.055997,
		30.360388, 36.223503, 27.498968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442390, 35.569416, 26.953304>,  <30.933697, 35.823776, 27.459770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442390, 35.569416, 26.953304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308222, 35.942165, 27.008581>,  <30.227720, 36.165817, 27.041748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308222, 35.942165, 27.008581>,  <30.442390, 35.569416, 26.953304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308222, 35.942165, 27.008581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035211, 0.134187, -0.990330,
		-0.941410, -0.337043, -0.012197,
		-0.335421, 0.931877, 0.138193,
		30.207596, 36.221729, 27.050039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899872, 35.507587, 26.519436>,  <30.442390, 35.569416, 26.953304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899872, 35.507587, 26.519436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.023115, 35.884018, 26.575207>,  <30.097061, 36.109879, 26.608669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.023115, 35.884018, 26.575207>,  <29.899872, 35.507587, 26.519436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023115, 35.884018, 26.575207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206768, 0.209294, -0.955742,
		-0.928609, 0.265645, 0.259071,
		0.308110, 0.941078, 0.139426,
		30.115549, 36.166340, 26.617035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.365295, 29.509768, 44.515312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077290, 29.490776, 44.238377>,  <33.904488, 29.479382, 44.072216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077290, 29.490776, 44.238377>,  <34.365295, 29.509768, 44.515312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077290, 29.490776, 44.238377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650412, -0.301682, 0.697103,
		-0.241963, 0.952226, 0.186334,
		-0.720013, -0.047480, -0.692335,
		33.861286, 29.476532, 44.030678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855129, 29.957029, 44.759972>,  <34.365295, 29.509768, 44.515312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855129, 29.957029, 44.759972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698780, 29.687477, 44.509178>,  <33.604969, 29.525745, 44.358704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698780, 29.687477, 44.509178>,  <33.855129, 29.957029, 44.759972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698780, 29.687477, 44.509178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694077, -0.231600, 0.681630,
		-0.604545, 0.701604, -0.377197,
		-0.390875, -0.673880, -0.626980,
		33.581516, 29.485313, 44.321083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114597, 30.096292, 44.877739>,  <33.855129, 29.957029, 44.759972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114597, 30.096292, 44.877739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.134590, 29.722239, 44.737438>,  <33.146587, 29.497807, 44.653259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.134590, 29.722239, 44.737438>,  <33.114597, 30.096292, 44.877739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134590, 29.722239, 44.737438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522796, -0.323729, 0.788596,
		-0.850991, 0.143953, -0.505066,
		0.049984, -0.935135, -0.350748,
		33.149586, 29.441698, 44.632214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547695, 29.814102, 45.044369>,  <33.114597, 30.096292, 44.877739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547695, 29.814102, 45.044369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775177, 29.496212, 44.959534>,  <32.911667, 29.305477, 44.908634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775177, 29.496212, 44.959534>,  <32.547695, 29.814102, 45.044369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775177, 29.496212, 44.959534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383875, -0.484478, 0.786079,
		-0.727470, -0.365635, -0.580602,
		0.568707, -0.794728, -0.212085,
		32.945789, 29.257793, 44.895908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091473, 29.308851, 45.037495>,  <32.547695, 29.814102, 45.044369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091473, 29.308851, 45.037495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.448284, 29.145021, 45.113941>,  <32.662373, 29.046722, 45.159809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.448284, 29.145021, 45.113941>,  <32.091473, 29.308851, 45.037495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448284, 29.145021, 45.113941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405752, -0.539405, 0.737840,
		-0.199110, -0.735724, -0.647353,
		0.892032, -0.409576, 0.191120,
		32.715893, 29.022148, 45.171276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977064, 28.617804, 45.091778>,  <32.091473, 29.308851, 45.037495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977064, 28.617804, 45.091778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329308, 28.652603, 45.278095>,  <32.540653, 28.673483, 45.389885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329308, 28.652603, 45.278095>,  <31.977064, 28.617804, 45.091778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329308, 28.652603, 45.278095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314251, -0.628498, 0.711503,
		0.354650, -0.772930, -0.526119,
		0.880608, 0.087001, 0.465791,
		32.593491, 28.678703, 45.417831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096306, 27.922163, 45.296448>,  <31.977064, 28.617804, 45.091778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096306, 27.922163, 45.296448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329685, 28.166601, 45.510422>,  <32.469711, 28.313263, 45.638805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329685, 28.166601, 45.510422>,  <32.096306, 27.922163, 45.296448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329685, 28.166601, 45.510422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172620, -0.550306, 0.816925,
		0.793596, -0.568971, -0.215586,
		0.583445, 0.611093, 0.534936,
		32.504719, 28.349930, 45.670902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465424, 27.457363, 45.680275>,  <32.096306, 27.922163, 45.296448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465424, 27.457363, 45.680275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.509754, 27.806128, 45.871056>,  <32.536354, 28.015387, 45.985523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.509754, 27.806128, 45.871056>,  <32.465424, 27.457363, 45.680275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509754, 27.806128, 45.871056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142270, -0.461049, 0.875896,
		0.983603, -0.164933, 0.072948,
		0.110831, 0.871912, 0.476954,
		32.543003, 28.067701, 46.014141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937366, 27.358538, 46.210609>,  <32.465424, 27.457363, 45.680275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937366, 27.358538, 46.210609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729141, 27.679260, 46.327991>,  <32.604206, 27.871695, 46.398422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729141, 27.679260, 46.327991>,  <32.937366, 27.358538, 46.210609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729141, 27.679260, 46.327991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250466, -0.471980, 0.845282,
		0.816259, 0.366524, 0.446522,
		-0.520566, 0.801807, 0.293456,
		32.572971, 27.919802, 46.416027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143410, 27.445145, 46.823872>,  <32.937366, 27.358538, 46.210609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143410, 27.445145, 46.823872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797447, 27.645630, 46.813072>,  <32.589870, 27.765921, 46.806591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797447, 27.645630, 46.813072>,  <33.143410, 27.445145, 46.823872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797447, 27.645630, 46.813072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254105, -0.390828, 0.884694,
		0.432868, 0.772035, 0.465389,
		-0.864902, 0.501214, -0.027001,
		32.537975, 27.795994, 46.804974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063232, 27.736677, 47.520504>,  <33.143410, 27.445145, 46.823872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063232, 27.736677, 47.520504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695930, 27.762474, 47.364223>,  <32.475548, 27.777952, 47.270454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695930, 27.762474, 47.364223>,  <33.063232, 27.736677, 47.520504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695930, 27.762474, 47.364223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394290, -0.240265, 0.887022,
		-0.036666, 0.968563, 0.246053,
		-0.918254, 0.064492, -0.390704,
		32.420456, 27.781822, 47.247013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725216, 28.185986, 47.967403>,  <33.063232, 27.736677, 47.520504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725216, 28.185986, 47.967403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.472088, 27.943117, 47.775204>,  <32.320210, 27.797396, 47.659885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.472088, 27.943117, 47.775204>,  <32.725216, 28.185986, 47.967403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472088, 27.943117, 47.775204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453249, -0.212648, 0.865648,
		-0.627773, 0.765587, -0.140631,
		-0.632824, -0.607172, -0.480496,
		32.282242, 27.760965, 47.631054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083809, 28.350134, 48.275970>,  <32.725216, 28.185986, 47.967403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083809, 28.350134, 48.275970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026981, 27.996414, 48.098057>,  <31.992886, 27.784184, 47.991310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026981, 27.996414, 48.098057>,  <32.083809, 28.350134, 48.275970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026981, 27.996414, 48.098057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392704, -0.362116, 0.845373,
		-0.908625, 0.294771, -0.295822,
		-0.142069, -0.884298, -0.444785,
		31.984360, 27.731125, 47.964622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420206, 28.178034, 48.451981>,  <32.083809, 28.350134, 48.275970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420206, 28.178034, 48.451981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.641474, 27.850294, 48.391758>,  <31.774235, 27.653650, 48.355625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.641474, 27.850294, 48.391758>,  <31.420206, 28.178034, 48.451981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641474, 27.850294, 48.391758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503582, -0.472845, 0.723064,
		-0.663633, -0.324161, -0.674175,
		0.553170, -0.819351, -0.150554,
		31.807425, 27.604488, 48.346592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853926, 28.668886, 48.696342>,  <31.420206, 28.178034, 48.451981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853926, 28.668886, 48.696342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.551291, 28.843081, 48.891453>,  <30.369709, 28.947598, 49.008518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.551291, 28.843081, 48.891453>,  <30.853926, 28.668886, 48.696342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551291, 28.843081, 48.891453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060845, 0.789608, -0.610588,
		-0.651055, -0.432284, -0.623905,
		-0.756588, 0.435488, 0.487776,
		30.324314, 28.973726, 49.037785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403433, 29.008841, 48.226315>,  <30.853926, 28.668886, 48.696342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403433, 29.008841, 48.226315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339470, 29.198364, 48.572708>,  <30.301092, 29.312078, 48.780544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339470, 29.198364, 48.572708>,  <30.403433, 29.008841, 48.226315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339470, 29.198364, 48.572708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172279, 0.877208, -0.448136,
		-0.971982, 0.077531, -0.221899,
		-0.159907, 0.473809, 0.865988,
		30.291498, 29.340508, 48.832504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313042, 29.684994, 48.060177>,  <30.403433, 29.008841, 48.226315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313042, 29.684994, 48.060177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369562, 29.734091, 48.453110>,  <30.403475, 29.763550, 48.688869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369562, 29.734091, 48.453110>,  <30.313042, 29.684994, 48.060177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369562, 29.734091, 48.453110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398170, 0.901438, -0.169909,
		-0.906363, 0.415142, 0.078501,
		0.141300, 0.122743, 0.982328,
		30.411953, 29.770914, 48.747807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061001, 30.315519, 48.134926>,  <30.313042, 29.684994, 48.060177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061001, 30.315519, 48.134926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.295956, 30.255898, 48.453110>,  <30.436930, 30.220125, 48.644020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.295956, 30.255898, 48.453110>,  <30.061001, 30.315519, 48.134926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295956, 30.255898, 48.453110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522481, 0.820460, -0.232076,
		-0.618052, 0.551932, 0.559807,
		0.587389, -0.149053, 0.795460,
		30.472172, 30.211182, 48.691750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155815, 31.016092, 48.461510>,  <30.061001, 30.315519, 48.134926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155815, 31.016092, 48.461510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.468243, 30.802771, 48.591446>,  <30.655699, 30.674778, 48.669407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.468243, 30.802771, 48.591446>,  <30.155815, 31.016092, 48.461510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468243, 30.802771, 48.591446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603390, 0.778521, -0.172704,
		-0.160793, 0.330900, 0.929866,
		0.781068, -0.533302, 0.324842,
		30.702562, 30.642780, 48.688900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547831, 31.461636, 48.714741>,  <30.155815, 31.016092, 48.461510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547831, 31.461636, 48.714741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.819801, 31.168646, 48.728470>,  <30.982985, 30.992851, 48.736710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.819801, 31.168646, 48.728470>,  <30.547831, 31.461636, 48.714741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819801, 31.168646, 48.728470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670199, 0.601762, -0.434415,
		0.297541, 0.318376, 0.900059,
		0.679929, -0.732474, 0.034326,
		31.023781, 30.948904, 48.738770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130320, 31.665564, 49.039101>,  <30.547831, 31.461636, 48.714741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130320, 31.665564, 49.039101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261177, 31.379833, 48.791645>,  <31.339691, 31.208395, 48.643173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261177, 31.379833, 48.791645>,  <31.130320, 31.665564, 49.039101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261177, 31.379833, 48.791645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716010, 0.614608, -0.331038,
		0.616689, -0.334654, 0.712531,
		0.327144, -0.714328, -0.618638,
		31.359320, 31.165535, 48.606052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798477, 31.822531, 49.049435>,  <31.130320, 31.665564, 49.039101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798477, 31.822531, 49.049435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.722488, 31.588703, 48.733917>,  <31.676895, 31.448406, 48.544609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.722488, 31.588703, 48.733917>,  <31.798477, 31.822531, 49.049435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722488, 31.588703, 48.733917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782318, 0.395300, -0.481369,
		0.593202, -0.708532, 0.382221,
		-0.189974, -0.584567, -0.788791,
		31.665497, 31.413332, 48.497280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433525, 31.662989, 48.819050>,  <31.798477, 31.822531, 49.049435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433525, 31.662989, 48.819050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192287, 31.566019, 48.515076>,  <32.047546, 31.507837, 48.332691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192287, 31.566019, 48.515076>,  <32.433525, 31.662989, 48.819050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192287, 31.566019, 48.515076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613805, 0.467400, -0.636224,
		0.509433, -0.850157, -0.133083,
		-0.603094, -0.242426, -0.759939,
		32.011360, 31.493292, 48.287094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924561, 31.391201, 48.289772>,  <32.433525, 31.662989, 48.819050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924561, 31.391201, 48.289772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599617, 31.492174, 48.079494>,  <32.404652, 31.552759, 47.953327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599617, 31.492174, 48.079494>,  <32.924561, 31.391201, 48.289772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599617, 31.492174, 48.079494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573584, 0.183213, -0.798394,
		-0.105230, -0.950110, -0.293628,
		-0.812359, 0.252435, -0.525689,
		32.355907, 31.567905, 47.921787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998856, 31.077583, 47.728870>,  <32.924561, 31.391201, 48.289772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998856, 31.077583, 47.728870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729374, 31.349146, 47.612106>,  <32.567684, 31.512083, 47.542049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729374, 31.349146, 47.612106>,  <32.998856, 31.077583, 47.728870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729374, 31.349146, 47.612106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475546, 0.095923, -0.874445,
		-0.565664, -0.727934, -0.387474,
		-0.673706, 0.678904, -0.291906,
		32.527264, 31.552816, 47.524536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916241, 30.977020, 47.029606>,  <32.998856, 31.077583, 47.728870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916241, 30.977020, 47.029606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782635, 31.349945, 47.085075>,  <32.702473, 31.573700, 47.118355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782635, 31.349945, 47.085075>,  <32.916241, 30.977020, 47.029606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782635, 31.349945, 47.085075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280112, 0.238657, -0.929828,
		-0.899984, -0.271734, -0.340866,
		-0.334016, 0.932311, 0.138672,
		32.682430, 31.629639, 47.126678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596436, 31.125696, 46.410149>,  <32.916241, 30.977020, 47.029606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596436, 31.125696, 46.410149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.687382, 31.478573, 46.575092>,  <32.741951, 31.690300, 46.674057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.687382, 31.478573, 46.575092>,  <32.596436, 31.125696, 46.410149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687382, 31.478573, 46.575092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308786, 0.336283, -0.889700,
		-0.923555, 0.329621, -0.195948,
		0.227370, 0.882193, 0.412358,
		32.755592, 31.743231, 46.698799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315029, 31.651655, 46.004642>,  <32.596436, 31.125696, 46.410149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315029, 31.651655, 46.004642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625450, 31.810280, 46.200802>,  <32.811703, 31.905455, 46.318497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625450, 31.810280, 46.200802>,  <32.315029, 31.651655, 46.004642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625450, 31.810280, 46.200802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417170, 0.260381, -0.870730,
		-0.472988, 0.880307, 0.036635,
		0.776049, 0.396562, 0.490394,
		32.858265, 31.929249, 46.347919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746799, 31.786783, 45.741653>,  <32.315029, 31.651655, 46.004642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746799, 31.786783, 45.741653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432753, 31.812223, 45.495224>,  <31.244324, 31.827488, 45.347366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432753, 31.812223, 45.495224>,  <31.746799, 31.786783, 45.741653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432753, 31.812223, 45.495224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550346, -0.527915, 0.646858,
		-0.284093, 0.846912, 0.449478,
		-0.785118, 0.063600, -0.616072,
		31.197218, 31.831303, 45.310402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180529, 32.045246, 46.208984>,  <31.746799, 31.786783, 45.741653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180529, 32.045246, 46.208984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.001890, 31.881231, 45.890884>,  <30.894707, 31.782824, 45.700024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.001890, 31.881231, 45.890884>,  <31.180529, 32.045246, 46.208984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001890, 31.881231, 45.890884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674069, -0.430287, 0.600403,
		-0.588372, 0.804191, -0.084228,
		-0.446597, -0.410036, -0.795250,
		30.867910, 31.758221, 45.652309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500097, 32.248180, 46.223042>,  <31.180529, 32.045246, 46.208984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500097, 32.248180, 46.223042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.500845, 31.932230, 45.977737>,  <30.501293, 31.742659, 45.830555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.500845, 31.932230, 45.977737>,  <30.500097, 32.248180, 46.223042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500845, 31.932230, 45.977737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810061, -0.360777, 0.462213,
		-0.586343, 0.495916, -0.640523,
		0.001867, -0.789878, -0.613261,
		30.501406, 31.695267, 45.793758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806828, 32.161354, 45.959694>,  <30.500097, 32.248180, 46.223042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806828, 32.161354, 45.959694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.980310, 31.801409, 45.941185>,  <30.084400, 31.585442, 45.930080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.980310, 31.801409, 45.941185>,  <29.806828, 32.161354, 45.959694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980310, 31.801409, 45.941185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843375, -0.423487, 0.330723,
		-0.317200, -0.104415, -0.942593,
		0.433709, -0.899865, -0.046269,
		30.110422, 31.531450, 45.927303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317976, 31.695641, 45.631111>,  <29.806828, 32.161354, 45.959694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317976, 31.695641, 45.631111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.583523, 31.485126, 45.843639>,  <29.742851, 31.358818, 45.971157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.583523, 31.485126, 45.843639>,  <29.317976, 31.695641, 45.631111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583523, 31.485126, 45.843639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746676, -0.506284, 0.431452,
		0.041934, -0.683154, -0.729070,
		0.663865, -0.526286, 0.531325,
		29.782682, 31.327240, 46.003036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933651, 31.073374, 45.840492>,  <29.317976, 31.695641, 45.631111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933651, 31.073374, 45.840492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.255299, 30.974991, 46.056973>,  <29.448286, 30.915960, 46.186859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.255299, 30.974991, 46.056973>,  <28.933651, 31.073374, 45.840492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255299, 30.974991, 46.056973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555545, -0.634928, 0.536876,
		0.211575, -0.732374, -0.647198,
		0.804119, -0.245958, 0.541202,
		29.496534, 30.901203, 46.219334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037704, 30.333292, 45.812885>,  <28.933651, 31.073374, 45.840492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037704, 30.333292, 45.812885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.200647, 30.496809, 46.139553>,  <29.298412, 30.594919, 46.335552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.200647, 30.496809, 46.139553>,  <29.037704, 30.333292, 45.812885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200647, 30.496809, 46.139553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554691, -0.599643, 0.576841,
		0.725519, -0.687979, -0.017514,
		0.407357, 0.408795, 0.816668,
		29.322855, 30.619448, 46.384552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703875, 30.142107, 45.901718>,  <29.037704, 30.333292, 45.812885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703875, 30.142107, 45.901718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.510866, 29.849722, 45.708694>,  <29.395061, 29.674290, 45.592880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.510866, 29.849722, 45.708694>,  <29.703875, 30.142107, 45.901718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510866, 29.849722, 45.708694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358587, 0.337792, -0.870237,
		0.799116, -0.592948, 0.099121,
		-0.482523, -0.730964, -0.482559,
		29.366110, 29.630432, 45.563927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225149, 29.778524, 45.416180>,  <29.703875, 30.142107, 45.901718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225149, 29.778524, 45.416180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.853664, 29.712481, 45.283375>,  <29.630774, 29.672853, 45.203693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.853664, 29.712481, 45.283375>,  <30.225149, 29.778524, 45.416180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853664, 29.712481, 45.283375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315379, 0.119164, -0.941454,
		0.195010, -0.979049, -0.058596,
		-0.928713, -0.165113, -0.332010,
		29.575050, 29.662947, 45.183773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280785, 29.164070, 44.991882>,  <30.225149, 29.778524, 45.416180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280785, 29.164070, 44.991882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.969776, 29.384399, 44.870518>,  <29.783171, 29.516598, 44.797699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.969776, 29.384399, 44.870518>,  <30.280785, 29.164070, 44.991882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969776, 29.384399, 44.870518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359762, -0.006107, -0.933025,
		-0.515786, -0.834599, -0.193417,
		-0.777520, 0.550824, -0.303407,
		29.736521, 29.549646, 44.779495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354782, 29.022602, 44.269844>,  <30.280785, 29.164070, 44.991882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354782, 29.022602, 44.269844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.068977, 29.302212, 44.281410>,  <29.897495, 29.469978, 44.288349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.068977, 29.302212, 44.281410>,  <30.354782, 29.022602, 44.269844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068977, 29.302212, 44.281410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149141, 0.192564, -0.969885,
		-0.683542, -0.688682, -0.241842,
		-0.714512, 0.699025, 0.028915,
		29.854624, 29.511919, 44.290085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769287, 28.862923, 43.684319>,  <30.354782, 29.022602, 44.269844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769287, 28.862923, 43.684319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.791212, 29.246782, 43.794640>,  <29.804367, 29.477098, 43.860832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.791212, 29.246782, 43.794640>,  <29.769287, 28.862923, 43.684319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791212, 29.246782, 43.794640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331241, 0.243100, -0.911692,
		-0.941953, 0.141328, -0.304552,
		0.054811, 0.959650, 0.275802,
		29.807655, 29.534678, 43.877380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627684, 29.202271, 43.081745>,  <29.769287, 28.862923, 43.684319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627684, 29.202271, 43.081745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.813185, 29.475332, 43.307636>,  <29.924484, 29.639170, 43.443172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.813185, 29.475332, 43.307636>,  <29.627684, 29.202271, 43.081745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813185, 29.475332, 43.307636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488149, 0.335053, -0.805885,
		-0.739355, 0.649400, -0.177856,
		0.463751, 0.682655, 0.564727,
		29.952311, 29.680128, 43.477055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520105, 29.784332, 42.735096>,  <29.627684, 29.202271, 43.081745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520105, 29.784332, 42.735096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.841827, 29.852407, 42.962826>,  <30.034861, 29.893253, 43.099464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.841827, 29.852407, 42.962826>,  <29.520105, 29.784332, 42.735096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841827, 29.852407, 42.962826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512460, 0.286342, -0.809563,
		-0.300801, 0.942891, 0.143091,
		0.804303, 0.170189, 0.569326,
		30.083118, 29.903463, 43.133625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.022877, 24.602449, 45.819252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.106007, 24.986816, 45.892410>,  <31.155884, 25.217436, 45.936306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.106007, 24.986816, 45.892410>,  <31.022877, 24.602449, 45.819252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106007, 24.986816, 45.892410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143640, 0.154967, -0.977421,
		-0.967562, 0.229401, -0.105821,
		0.207823, 0.960916, 0.182892,
		31.168354, 25.275091, 45.947277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844223, 24.894279, 45.229382>,  <31.022877, 24.602449, 45.819252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844223, 24.894279, 45.229382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.029497, 25.200190, 45.408524>,  <31.140661, 25.383736, 45.516010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.029497, 25.200190, 45.408524>,  <30.844223, 24.894279, 45.229382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029497, 25.200190, 45.408524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371346, 0.291363, -0.881595,
		-0.804713, 0.574651, -0.149043,
		0.463183, 0.764777, 0.447858,
		31.168451, 25.429623, 45.542881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592209, 25.510979, 44.834152>,  <30.844223, 24.894279, 45.229382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592209, 25.510979, 44.834152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.945877, 25.564888, 45.013069>,  <31.158079, 25.597235, 45.120422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.945877, 25.564888, 45.013069>,  <30.592209, 25.510979, 44.834152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945877, 25.564888, 45.013069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412210, 0.225465, -0.882750,
		-0.219822, 0.964884, 0.143795,
		0.884172, 0.134774, 0.447297,
		31.211128, 25.605320, 45.147259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911152, 26.126715, 44.485149>,  <30.592209, 25.510979, 44.834152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911152, 26.126715, 44.485149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213148, 25.955574, 44.683922>,  <31.394346, 25.852890, 44.803185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213148, 25.955574, 44.683922>,  <30.911152, 26.126715, 44.485149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213148, 25.955574, 44.683922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563621, 0.036090, -0.825245,
		0.335147, 0.903129, 0.268393,
		0.754989, -0.427851, 0.496927,
		31.439644, 25.827219, 44.833000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549522, 26.549982, 44.433922>,  <30.911152, 26.126715, 44.485149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549522, 26.549982, 44.433922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.695778, 26.190796, 44.531876>,  <31.783531, 25.975285, 44.590649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.695778, 26.190796, 44.531876>,  <31.549522, 26.549982, 44.433922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695778, 26.190796, 44.531876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406933, -0.082393, -0.909734,
		0.837086, 0.432285, 0.335285,
		0.365639, -0.897965, 0.244881,
		31.805470, 25.921406, 44.605339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172440, 26.558601, 44.398941>,  <31.549522, 26.549982, 44.433922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172440, 26.558601, 44.398941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125587, 26.163357, 44.359116>,  <32.097477, 25.926210, 44.335220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125587, 26.163357, 44.359116>,  <32.172440, 26.558601, 44.398941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125587, 26.163357, 44.359116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704907, -0.012104, -0.709196,
		0.699561, -0.153253, 0.697946,
		-0.117134, -0.988113, -0.099562,
		32.090446, 25.866922, 44.329247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804596, 26.202473, 44.356606>,  <32.172440, 26.558601, 44.398941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804596, 26.202473, 44.356606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565933, 25.930576, 44.185982>,  <32.422737, 25.767439, 44.083607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565933, 25.930576, 44.185982>,  <32.804596, 26.202473, 44.356606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565933, 25.930576, 44.185982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575763, 0.007676, -0.817580,
		0.559018, -0.733412, 0.386790,
		-0.596654, -0.679741, -0.426562,
		32.386936, 25.726654, 44.058014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172382, 25.709818, 43.933060>,  <32.804596, 26.202473, 44.356606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172382, 25.709818, 43.933060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805370, 25.688818, 43.775387>,  <32.585163, 25.676218, 43.680782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805370, 25.688818, 43.775387>,  <33.172382, 25.709818, 43.933060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805370, 25.688818, 43.775387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393156, 0.029037, -0.919013,
		0.059703, -0.998198, -0.005998,
		-0.917531, -0.052510, -0.394181,
		32.530109, 25.673067, 43.657131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229000, 25.269215, 43.378548>,  <33.172382, 25.709818, 43.933060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229000, 25.269215, 43.378548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.891354, 25.468855, 43.300194>,  <32.688766, 25.588638, 43.253181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.891354, 25.468855, 43.300194>,  <33.229000, 25.269215, 43.378548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891354, 25.468855, 43.300194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272517, 0.084745, -0.958412,
		-0.461744, -0.862390, -0.207548,
		-0.844113, 0.499101, -0.195886,
		32.638119, 25.618586, 43.241428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015678, 25.032751, 42.691727>,  <33.229000, 25.269215, 43.378548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015678, 25.032751, 42.691727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.852840, 25.395163, 42.738007>,  <32.755138, 25.612610, 42.765774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.852840, 25.395163, 42.738007>,  <33.015678, 25.032751, 42.691727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852840, 25.395163, 42.738007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160431, 0.195630, -0.967466,
		-0.899186, -0.375290, -0.224995,
		-0.407096, 0.906028, 0.115700,
		32.730713, 25.666971, 42.772717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648861, 25.069124, 41.997326>,  <33.015678, 25.032751, 42.691727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648861, 25.069124, 41.997326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.665825, 25.437286, 42.152790>,  <32.676003, 25.658184, 42.246067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.665825, 25.437286, 42.152790>,  <32.648861, 25.069124, 41.997326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665825, 25.437286, 42.152790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165632, 0.377146, -0.911223,
		-0.985275, 0.103022, -0.136453,
		0.042414, 0.920406, 0.388656,
		32.678551, 25.713408, 42.269386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280964, 25.579472, 41.574764>,  <32.648861, 25.069124, 41.997326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280964, 25.579472, 41.574764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.537941, 25.822151, 41.762035>,  <32.692127, 25.967758, 41.874397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.537941, 25.822151, 41.762035>,  <32.280964, 25.579472, 41.574764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537941, 25.822151, 41.762035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199863, 0.457135, -0.866650,
		-0.739813, 0.650343, 0.172426,
		0.642441, 0.606697, 0.468174,
		32.730675, 26.004160, 41.902489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699179, 25.951180, 41.598553>,  <32.280964, 25.579472, 41.574764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699179, 25.951180, 41.598553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.317894, 25.955357, 41.477707>,  <31.089123, 25.957863, 41.405197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.317894, 25.955357, 41.477707>,  <31.699179, 25.951180, 41.598553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317894, 25.955357, 41.477707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300714, -0.134908, 0.944125,
		-0.030897, 0.990803, 0.131737,
		-0.953214, 0.010445, -0.302116,
		31.031929, 25.958490, 41.387074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306597, 26.382742, 42.033215>,  <31.699179, 25.951180, 41.598553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306597, 26.382742, 42.033215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026960, 26.134842, 41.890564>,  <30.859179, 25.986101, 41.804974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026960, 26.134842, 41.890564>,  <31.306597, 26.382742, 42.033215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026960, 26.134842, 41.890564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416884, -0.051936, 0.907475,
		-0.580929, 0.783079, -0.222056,
		-0.699091, -0.619750, -0.356624,
		30.817232, 25.948917, 41.783577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593187, 26.511185, 42.462608>,  <31.306597, 26.382742, 42.033215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593187, 26.511185, 42.462608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.531120, 26.167797, 42.267075>,  <30.493879, 25.961765, 42.149754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.531120, 26.167797, 42.267075>,  <30.593187, 26.511185, 42.462608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531120, 26.167797, 42.267075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438639, -0.383502, 0.812725,
		-0.885166, 0.340530, -0.317049,
		-0.155168, -0.858467, -0.488833,
		30.484570, 25.910257, 42.120426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810553, 26.399660, 42.344948>,  <30.593187, 26.511185, 42.462608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810553, 26.399660, 42.344948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.019009, 26.058697, 42.361973>,  <30.144083, 25.854118, 42.372189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.019009, 26.058697, 42.361973>,  <29.810553, 26.399660, 42.344948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019009, 26.058697, 42.361973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545936, -0.294611, 0.784321,
		-0.656024, -0.431975, -0.618894,
		0.521139, -0.852410, 0.042558,
		30.175350, 25.802975, 42.374741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309954, 26.047428, 42.631020>,  <29.810553, 26.399660, 42.344948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309954, 26.047428, 42.631020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.618103, 25.792446, 42.636322>,  <29.802994, 25.639458, 42.639503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.618103, 25.792446, 42.636322>,  <29.309954, 26.047428, 42.631020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618103, 25.792446, 42.636322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358405, -0.415762, 0.835875,
		-0.527320, -0.648688, -0.548759,
		0.770376, -0.637452, 0.013253,
		29.849216, 25.601210, 42.640297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056772, 25.481871, 42.493633>,  <29.309954, 26.047428, 42.631020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056772, 25.481871, 42.493633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.396338, 25.424982, 42.697250>,  <29.600077, 25.390848, 42.819420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.396338, 25.424982, 42.697250>,  <29.056772, 25.481871, 42.493633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396338, 25.424982, 42.697250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520186, -0.395331, 0.757047,
		0.093571, -0.907462, -0.409583,
		0.848911, -0.142222, 0.509040,
		29.651011, 25.382315, 42.849964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952597, 24.773762, 42.733971>,  <29.056772, 25.481871, 42.493633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952597, 24.773762, 42.733971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.234921, 24.975763, 42.932690>,  <29.404314, 25.096964, 43.051922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.234921, 24.975763, 42.932690>,  <28.952597, 24.773762, 42.733971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234921, 24.975763, 42.932690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424619, -0.259751, 0.867311,
		0.567038, -0.823104, 0.031099,
		0.705809, 0.505003, 0.496795,
		29.446663, 25.127264, 43.081730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062569, 24.431454, 43.422260>,  <28.952597, 24.773762, 42.733971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062569, 24.431454, 43.422260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.197220, 24.805588, 43.465771>,  <29.278009, 25.030067, 43.491879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.197220, 24.805588, 43.465771>,  <29.062569, 24.431454, 43.422260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197220, 24.805588, 43.465771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443002, 0.055369, 0.894809,
		0.830922, -0.349407, 0.432994,
		0.336627, 0.935334, 0.108781,
		29.298208, 25.086187, 43.498405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189796, 24.381300, 44.125164>,  <29.062569, 24.431454, 43.422260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189796, 24.381300, 44.125164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.197767, 24.770195, 44.031910>,  <29.202549, 25.003532, 43.975956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.197767, 24.770195, 44.031910>,  <29.189796, 24.381300, 44.125164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197767, 24.770195, 44.031910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439525, 0.217964, 0.871384,
		0.898009, 0.085106, 0.431667,
		0.019927, 0.972239, -0.233140,
		29.203745, 25.061867, 43.961967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369831, 24.761314, 44.707008>,  <29.189796, 24.381300, 44.125164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369831, 24.761314, 44.707008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.177399, 25.035355, 44.488213>,  <29.061939, 25.199780, 44.356934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.177399, 25.035355, 44.488213>,  <29.369831, 24.761314, 44.707008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177399, 25.035355, 44.488213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548973, 0.251044, 0.797249,
		0.683515, 0.683823, 0.255330,
		-0.481079, 0.685100, -0.546992,
		29.033075, 25.240885, 44.324116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428787, 25.387243, 45.032761>,  <29.369831, 24.761314, 44.707008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428787, 25.387243, 45.032761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.105158, 25.451960, 44.806759>,  <28.910980, 25.490789, 44.671158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.105158, 25.451960, 44.806759>,  <29.428787, 25.387243, 45.032761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105158, 25.451960, 44.806759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484875, 0.359509, 0.797276,
		0.332114, 0.919009, -0.212421,
		-0.809071, 0.161789, -0.565003,
		28.862436, 25.500496, 44.637257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252663, 26.077375, 45.174862>,  <29.428787, 25.387243, 45.032761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252663, 26.077375, 45.174862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.939238, 25.864872, 45.045994>,  <28.751183, 25.737370, 44.968674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.939238, 25.864872, 45.045994>,  <29.252663, 26.077375, 45.174862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939238, 25.864872, 45.045994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514616, 0.264385, 0.815641,
		-0.348137, 0.804902, -0.480556,
		-0.783563, -0.531256, -0.322173,
		28.704168, 25.705496, 44.949341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833712, 26.312523, 45.541374>,  <29.252663, 26.077375, 45.174862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833712, 26.312523, 45.541374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.586691, 26.033695, 45.395649>,  <28.438478, 25.866398, 45.308216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.586691, 26.033695, 45.395649>,  <28.833712, 26.312523, 45.541374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586691, 26.033695, 45.395649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632448, 0.164733, 0.756884,
		-0.467588, 0.697822, -0.542592,
		-0.617553, -0.697071, -0.364309,
		28.401424, 25.824574, 45.286358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184982, 26.528669, 45.534805>,  <28.833712, 26.312523, 45.541374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184982, 26.528669, 45.534805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.183826, 26.129082, 45.552940>,  <28.183132, 25.889330, 45.563820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.183826, 26.129082, 45.552940>,  <28.184982, 26.528669, 45.534805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183826, 26.129082, 45.552940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554852, 0.039318, 0.831020,
		-0.831944, -0.022752, -0.554392,
		-0.002890, -0.998967, 0.045335,
		28.182959, 25.829391, 45.566540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963726, 26.897165, 46.086971>,  <28.184982, 26.528669, 45.534805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963726, 26.897165, 46.086971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.637062, 27.119846, 46.147827>,  <27.441063, 27.253454, 46.184341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.637062, 27.119846, 46.147827>,  <27.963726, 26.897165, 46.086971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637062, 27.119846, 46.147827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530272, 0.827867, -0.182887,
		-0.227765, -0.068682, -0.971291,
		-0.816661, 0.556703, 0.152139,
		27.392063, 27.286858, 46.193470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930485, 27.359055, 45.534878>,  <27.963726, 26.897165, 46.086971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930485, 27.359055, 45.534878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.705248, 27.548391, 45.805840>,  <27.570107, 27.661993, 45.968414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.705248, 27.548391, 45.805840>,  <27.930485, 27.359055, 45.534878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705248, 27.548391, 45.805840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412463, 0.871285, -0.265961,
		-0.716102, 0.129643, -0.685850,
		-0.563091, 0.473344, 0.677402,
		27.536320, 27.690395, 46.009060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847214, 27.929205, 45.213985>,  <27.930485, 27.359055, 45.534878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847214, 27.929205, 45.213985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.736805, 28.022120, 45.587051>,  <27.670559, 28.077868, 45.810890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.736805, 28.022120, 45.587051>,  <27.847214, 27.929205, 45.213985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736805, 28.022120, 45.587051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270611, 0.949885, -0.156487,
		-0.922270, 0.209195, -0.325048,
		-0.276022, 0.232285, 0.932661,
		27.653999, 28.091805, 45.866848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293697, 28.498251, 45.141479>,  <27.847214, 27.929205, 45.213985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293697, 28.498251, 45.141479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.522491, 28.496267, 45.469578>,  <27.659767, 28.495077, 45.666439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.522491, 28.496267, 45.469578>,  <27.293697, 28.498251, 45.141479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522491, 28.496267, 45.469578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312859, 0.925706, -0.212573,
		-0.758256, 0.378211, 0.531042,
		0.571986, -0.004957, 0.820249,
		27.694088, 28.494780, 45.715652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367590, 29.228346, 45.383984>,  <27.293697, 28.498251, 45.141479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367590, 29.228346, 45.383984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.660234, 29.056137, 45.595417>,  <27.835821, 28.952812, 45.722275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.660234, 29.056137, 45.595417>,  <27.367590, 29.228346, 45.383984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660234, 29.056137, 45.595417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616302, 0.749120, -0.242881,
		-0.291406, 0.503459, 0.813395,
		0.731611, -0.430520, 0.528581,
		27.879719, 28.926981, 45.753990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652874, 29.760620, 45.808247>,  <27.367590, 29.228346, 45.383984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652874, 29.760620, 45.808247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.920187, 29.466599, 45.762474>,  <28.080574, 29.290186, 45.735012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.920187, 29.466599, 45.762474>,  <27.652874, 29.760620, 45.808247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920187, 29.466599, 45.762474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640019, 0.646519, -0.415198,
		0.379175, 0.204231, 0.902506,
		0.668283, -0.735053, -0.114432,
		28.120672, 29.246082, 45.728146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313511, 29.701756, 46.273983>,  <27.652874, 29.760620, 45.808247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313511, 29.701756, 46.273983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.368050, 29.584122, 45.895580>,  <28.400772, 29.513542, 45.668541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.368050, 29.584122, 45.895580>,  <28.313511, 29.701756, 46.273983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368050, 29.584122, 45.895580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623770, 0.767344, -0.148642,
		0.769624, -0.569822, 0.288065,
		0.136346, -0.294085, -0.946004,
		28.408953, 29.495895, 45.611778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096909, 29.758934, 46.251781>,  <28.313511, 29.701756, 46.273983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096909, 29.758934, 46.251781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.137413, 30.074368, 46.494392>,  <29.161716, 30.263628, 46.639961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.137413, 30.074368, 46.494392>,  <29.096909, 29.758934, 46.251781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137413, 30.074368, 46.494392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530745, -0.472837, 0.703373,
		0.841460, -0.393138, 0.370657,
		0.101263, 0.788586, 0.606530,
		29.167791, 30.310944, 46.676350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266405, 29.561913, 46.902821>,  <29.096909, 29.758934, 46.251781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266405, 29.561913, 46.902821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.130608, 29.927095, 46.993378>,  <29.049129, 30.146206, 47.047710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.130608, 29.927095, 46.993378>,  <29.266405, 29.561913, 46.902821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130608, 29.927095, 46.993378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371103, -0.351166, 0.859631,
		0.864307, 0.207824, 0.458020,
		-0.339493, 0.912957, 0.226391,
		29.028759, 30.200983, 47.061295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310686, 29.530472, 47.675858>,  <29.266405, 29.561913, 46.902821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310686, 29.530472, 47.675858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.097166, 29.858713, 47.594204>,  <28.969055, 30.055658, 47.545212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.097166, 29.858713, 47.594204>,  <29.310686, 29.530472, 47.675858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097166, 29.858713, 47.594204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507459, -0.117760, 0.853591,
		0.676420, 0.559236, 0.479282,
		-0.533799, 0.820602, -0.204134,
		28.937027, 30.104895, 47.532963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219955, 29.894304, 48.363110>,  <29.310686, 29.530472, 47.675858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219955, 29.894304, 48.363110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.935501, 29.975573, 48.093887>,  <28.764828, 30.024334, 47.932354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.935501, 29.975573, 48.093887>,  <29.219955, 29.894304, 48.363110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935501, 29.975573, 48.093887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701840, -0.148931, 0.696592,
		0.041289, 0.967750, 0.248505,
		-0.711137, 0.203172, -0.673056,
		28.722160, 30.036524, 47.891972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845596, 30.354292, 48.719364>,  <29.219955, 29.894304, 48.363110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845596, 30.354292, 48.719364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.602489, 30.182035, 48.452480>,  <28.456625, 30.078682, 48.292351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.602489, 30.182035, 48.452480>,  <28.845596, 30.354292, 48.719364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602489, 30.182035, 48.452480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743297, 0.012758, 0.668839,
		-0.279518, 0.902432, -0.327849,
		-0.607765, -0.430642, -0.667210,
		28.420160, 30.052843, 48.252319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164793, 30.674572, 48.837379>,  <28.845596, 30.354292, 48.719364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164793, 30.674572, 48.837379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.087641, 30.343414, 48.626709>,  <28.041349, 30.144720, 48.500305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.087641, 30.343414, 48.626709>,  <28.164793, 30.674572, 48.837379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087641, 30.343414, 48.626709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811700, -0.166954, 0.559705,
		-0.551307, 0.535460, -0.639799,
		-0.192883, -0.827895, -0.526676,
		28.029776, 30.095045, 48.468708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404198, 30.566162, 48.701958>,  <28.164793, 30.674572, 48.837379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404198, 30.566162, 48.701958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.542635, 30.201700, 48.612499>,  <27.625698, 29.983023, 48.558826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.542635, 30.201700, 48.612499>,  <27.404198, 30.566162, 48.701958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542635, 30.201700, 48.612499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786089, -0.411744, 0.461010,
		-0.512135, 0.016251, -0.858751,
		0.346094, -0.911155, -0.223643,
		27.646463, 29.928354, 48.545406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897385, 30.203091, 48.419270>,  <27.404198, 30.566162, 48.701958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897385, 30.203091, 48.419270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.135979, 29.904053, 48.536098>,  <27.279135, 29.724630, 48.606194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.135979, 29.904053, 48.536098>,  <26.897385, 30.203091, 48.419270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135979, 29.904053, 48.536098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730343, -0.354640, 0.583806,
		-0.332869, -0.561547, -0.757538,
		0.596487, -0.747593, 0.292074,
		27.314924, 29.679773, 48.623718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527288, 29.540201, 48.356060>,  <26.897385, 30.203091, 48.419270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527288, 29.540201, 48.356060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.814489, 29.527122, 48.634167>,  <26.986811, 29.519276, 48.801033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.814489, 29.527122, 48.634167>,  <26.527288, 29.540201, 48.356060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814489, 29.527122, 48.634167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557376, -0.625304, 0.546194,
		0.416897, -0.779696, -0.467194,
		0.718004, -0.032696, 0.695271,
		27.029890, 29.517313, 48.842747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.412292, 35.963230, 37.168339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730511, 35.794224, 37.342049>,  <36.921440, 35.692822, 37.446274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730511, 35.794224, 37.342049>,  <36.412292, 35.963230, 37.168339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730511, 35.794224, 37.342049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605294, -0.522169, 0.600798,
		-0.027079, -0.740825, -0.671152,
		0.795541, -0.422513, 0.434277,
		36.969173, 35.667469, 37.472332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225063, 35.236843, 37.132961>,  <36.412292, 35.963230, 37.168339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225063, 35.236843, 37.132961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493587, 35.292561, 37.424149>,  <36.654701, 35.325993, 37.598862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493587, 35.292561, 37.424149>,  <36.225063, 35.236843, 37.132961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493587, 35.292561, 37.424149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512045, -0.622943, 0.591398,
		0.535862, -0.769765, -0.346863,
		0.671313, 0.139298, 0.727966,
		36.694981, 35.334351, 37.642540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336750, 34.485550, 37.533054>,  <36.225063, 35.236843, 37.132961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336750, 34.485550, 37.533054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481766, 34.756863, 37.788708>,  <36.568775, 34.919651, 37.942101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481766, 34.756863, 37.788708>,  <36.336750, 34.485550, 37.533054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481766, 34.756863, 37.788708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542969, -0.403657, 0.736374,
		0.757463, -0.613995, 0.221946,
		0.362540, 0.678285, 0.639135,
		36.590527, 34.960350, 37.980450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283524, 34.127628, 38.171597>,  <36.336750, 34.485550, 37.533054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283524, 34.127628, 38.171597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396385, 34.468891, 38.347099>,  <36.464104, 34.673649, 38.452400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396385, 34.468891, 38.347099>,  <36.283524, 34.127628, 38.171597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396385, 34.468891, 38.347099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444473, -0.289043, 0.847879,
		0.850194, -0.434251, 0.297650,
		0.282158, 0.853159, 0.438756,
		36.481033, 34.724838, 38.478725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748856, 34.097244, 38.822887>,  <36.283524, 34.127628, 38.171597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748856, 34.097244, 38.822887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532658, 34.433685, 38.814812>,  <36.402939, 34.635551, 38.809967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532658, 34.433685, 38.814812>,  <36.748856, 34.097244, 38.822887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532658, 34.433685, 38.814812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615883, -0.379189, 0.690582,
		0.573196, 0.385692, 0.722972,
		-0.540496, 0.841105, -0.020191,
		36.370510, 34.686016, 38.808754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673523, 34.269672, 39.535851>,  <36.748856, 34.097244, 38.822887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673523, 34.269672, 39.535851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404190, 34.479847, 39.327797>,  <36.242592, 34.605949, 39.202965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404190, 34.479847, 39.327797>,  <36.673523, 34.269672, 39.535851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404190, 34.479847, 39.327797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705728, -0.247058, 0.664011,
		0.220389, 0.814177, 0.537164,
		-0.673333, 0.525432, -0.520138,
		36.202190, 34.637478, 39.171757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294151, 34.683533, 40.036949>,  <36.673523, 34.269672, 39.535851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294151, 34.683533, 40.036949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054066, 34.635746, 39.720604>,  <35.910015, 34.607075, 39.530796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054066, 34.635746, 39.720604>,  <36.294151, 34.683533, 40.036949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054066, 34.635746, 39.720604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729602, -0.323389, 0.602578,
		-0.327747, 0.938694, 0.106938,
		-0.600219, -0.119471, -0.790863,
		35.874001, 34.599903, 39.483345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656506, 35.121525, 40.182396>,  <36.294151, 34.683533, 40.036949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656506, 35.121525, 40.182396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568588, 34.834797, 39.917713>,  <35.515839, 34.662762, 39.758904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568588, 34.834797, 39.917713>,  <35.656506, 35.121525, 40.182396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568588, 34.834797, 39.917713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728395, -0.330626, 0.600106,
		-0.648946, 0.613885, -0.449460,
		-0.219793, -0.716821, -0.661709,
		35.502651, 34.619751, 39.719200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891857, 35.206383, 40.095913>,  <35.656506, 35.121525, 40.182396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891857, 35.206383, 40.095913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951111, 34.846668, 39.931309>,  <34.986664, 34.630840, 39.832546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951111, 34.846668, 39.931309>,  <34.891857, 35.206383, 40.095913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951111, 34.846668, 39.931309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698307, -0.389762, 0.600377,
		-0.700301, 0.198422, -0.685716,
		0.148138, -0.899285, -0.411511,
		34.995552, 34.576881, 39.807854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237022, 34.984146, 39.880779>,  <34.891857, 35.206383, 40.095913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237022, 34.984146, 39.880779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465088, 34.660450, 39.937408>,  <34.601929, 34.466232, 39.971386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465088, 34.660450, 39.937408>,  <34.237022, 34.984146, 39.880779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465088, 34.660450, 39.937408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725061, -0.414667, 0.549852,
		-0.386255, -0.416158, -0.823177,
		0.570170, -0.809237, 0.141572,
		34.636139, 34.417679, 39.979881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809547, 34.456440, 39.651409>,  <34.237022, 34.984146, 39.880779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809547, 34.456440, 39.651409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078117, 34.293560, 39.899078>,  <34.239262, 34.195831, 40.047680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078117, 34.293560, 39.899078>,  <33.809547, 34.456440, 39.651409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078117, 34.293560, 39.899078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728637, -0.515145, 0.451346,
		0.135177, -0.754199, -0.642581,
		0.671427, -0.407197, 0.619174,
		34.279545, 34.171402, 40.084831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576679, 33.772476, 39.755917>,  <33.809547, 34.456440, 39.651409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576679, 33.772476, 39.755917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829834, 33.832809, 40.059681>,  <33.981728, 33.869011, 40.241940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829834, 33.832809, 40.059681>,  <33.576679, 33.772476, 39.755917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829834, 33.832809, 40.059681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697189, -0.315542, 0.643708,
		0.336721, -0.936846, -0.094540,
		0.632887, 0.150838, 0.759409,
		34.019699, 33.878059, 40.287502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802956, 33.165604, 39.383186>,  <33.576679, 33.772476, 39.755917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802956, 33.165604, 39.383186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606964, 32.902946, 39.153839>,  <33.489368, 32.745354, 39.016232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606964, 32.902946, 39.153839>,  <33.802956, 33.165604, 39.383186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606964, 32.902946, 39.153839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617713, 0.202575, -0.759865,
		0.615106, -0.726491, 0.306357,
		-0.489975, -0.656638, -0.573368,
		33.459972, 32.705956, 38.981827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317310, 32.831085, 38.943878>,  <33.802956, 33.165604, 39.383186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317310, 32.831085, 38.943878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972763, 32.754402, 38.755711>,  <33.766033, 32.708393, 38.642811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972763, 32.754402, 38.755711>,  <34.317310, 32.831085, 38.943878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972763, 32.754402, 38.755711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386850, 0.352623, -0.852059,
		0.329228, -0.915917, -0.229575,
		-0.861369, -0.191711, -0.470416,
		33.714352, 32.696888, 38.614586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477009, 32.645061, 38.235657>,  <34.317310, 32.831085, 38.943878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477009, 32.645061, 38.235657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086914, 32.720284, 38.189087>,  <33.852859, 32.765415, 38.161144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086914, 32.720284, 38.189087>,  <34.477009, 32.645061, 38.235657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086914, 32.720284, 38.189087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189281, 0.437306, -0.879168,
		-0.114416, -0.879432, -0.462070,
		-0.975234, 0.188052, -0.116425,
		33.794342, 32.776699, 38.154160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339542, 32.481682, 37.553116>,  <34.477009, 32.645061, 38.235657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339542, 32.481682, 37.553116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021362, 32.707886, 37.640255>,  <33.830456, 32.843609, 37.692539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021362, 32.707886, 37.640255>,  <34.339542, 32.481682, 37.553116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021362, 32.707886, 37.640255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084839, 0.252016, -0.963997,
		-0.600053, -0.785292, -0.152488,
		-0.795449, 0.565512, 0.217846,
		33.782726, 32.877541, 37.705608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951672, 32.331547, 37.041798>,  <34.339542, 32.481682, 37.553116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951672, 32.331547, 37.041798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818077, 32.687988, 37.164684>,  <33.737923, 32.901855, 37.238415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818077, 32.687988, 37.164684>,  <33.951672, 32.331547, 37.041798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818077, 32.687988, 37.164684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036176, 0.313575, -0.948874,
		-0.941885, -0.328021, -0.072491,
		-0.333982, 0.891108, 0.307218,
		33.717884, 32.955322, 37.256851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323494, 32.343353, 36.672997>,  <33.951672, 32.331547, 37.041798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323494, 32.343353, 36.672997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441422, 32.710789, 36.778278>,  <33.512180, 32.931252, 36.841446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441422, 32.710789, 36.778278>,  <33.323494, 32.343353, 36.672997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441422, 32.710789, 36.778278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203528, 0.329494, -0.921960,
		-0.933626, 0.218243, 0.284100,
		0.294821, 0.918588, 0.263205,
		33.529869, 32.986366, 36.857239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832458, 32.882195, 36.393013>,  <33.323494, 32.343353, 36.672997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832458, 32.882195, 36.393013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183010, 33.068916, 36.440437>,  <33.393341, 33.180950, 36.468891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183010, 33.068916, 36.440437>,  <32.832458, 32.882195, 36.393013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183010, 33.068916, 36.440437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093101, 0.405726, -0.909241,
		-0.472543, 0.785799, 0.399029,
		0.876376, 0.466805, 0.118564,
		33.445923, 33.208958, 36.476006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743481, 33.620026, 35.985703>,  <32.832458, 32.882195, 36.393013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743481, 33.620026, 35.985703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132557, 33.572918, 36.065697>,  <33.366005, 33.544655, 36.113693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132557, 33.572918, 36.065697>,  <32.743481, 33.620026, 35.985703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132557, 33.572918, 36.065697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230141, 0.378078, -0.896712,
		0.029992, 0.918253, 0.394858,
		0.972695, -0.117767, 0.199988,
		33.424366, 33.537586, 36.125694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016071, 34.351662, 35.787357>,  <32.743481, 33.620026, 35.985703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016071, 34.351662, 35.787357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291294, 34.061481, 35.794266>,  <33.456429, 33.887375, 35.798412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291294, 34.061481, 35.794266>,  <33.016071, 34.351662, 35.787357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291294, 34.061481, 35.794266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158860, 0.127360, -0.979052,
		0.708055, 0.676387, 0.202876,
		0.688056, -0.725452, 0.017273,
		33.497711, 33.843845, 35.799446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595451, 34.584049, 35.513515>,  <33.016071, 34.351662, 35.787357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595451, 34.584049, 35.513515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655075, 34.189651, 35.483570>,  <33.690849, 33.953014, 35.465603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655075, 34.189651, 35.483570>,  <33.595451, 34.584049, 35.513515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655075, 34.189651, 35.483570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253183, 0.111237, -0.961002,
		0.955866, 0.124289, 0.266217,
		0.149055, -0.985991, -0.074860,
		33.699791, 33.893852, 35.461113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173801, 34.464531, 35.035587>,  <33.595451, 34.584049, 35.513515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173801, 34.464531, 35.035587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997974, 34.105251, 35.037006>,  <33.892479, 33.889683, 35.037857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997974, 34.105251, 35.037006>,  <34.173801, 34.464531, 35.035587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997974, 34.105251, 35.037006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118478, -0.061893, -0.991026,
		0.890362, -0.435201, 0.133623,
		-0.439566, -0.898203, 0.003545,
		33.866104, 33.835789, 35.038071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512089, 34.117508, 34.509785>,  <34.173801, 34.464531, 35.035587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512089, 34.117508, 34.509785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162876, 33.941692, 34.594273>,  <33.953346, 33.836205, 34.644966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162876, 33.941692, 34.594273>,  <34.512089, 34.117508, 34.509785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162876, 33.941692, 34.594273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192993, -0.086356, -0.977393,
		0.447844, -0.894062, -0.009437,
		-0.873034, -0.439541, 0.211222,
		33.900967, 33.809830, 34.657639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543083, 33.453220, 34.180702>,  <34.512089, 34.117508, 34.509785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543083, 33.453220, 34.180702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158558, 33.552113, 34.229279>,  <33.927841, 33.611450, 34.258423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158558, 33.552113, 34.229279>,  <34.543083, 33.453220, 34.180702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158558, 33.552113, 34.229279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153733, -0.115742, -0.981310,
		-0.228559, -0.962018, 0.149273,
		-0.961315, 0.247235, 0.121441,
		33.870163, 33.626282, 34.265709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141155, 32.911430, 33.982979>,  <34.543083, 33.453220, 34.180702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141155, 32.911430, 33.982979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989983, 33.275528, 33.915302>,  <33.899277, 33.493984, 33.874695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989983, 33.275528, 33.915302>,  <34.141155, 32.911430, 33.982979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989983, 33.275528, 33.915302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009636, -0.186607, -0.982387,
		-0.925782, -0.369648, 0.079297,
		-0.377935, 0.910240, -0.169195,
		33.876602, 33.548599, 33.864544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923279, 32.762550, 33.855793>,  <34.141155, 32.911430, 33.982979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923279, 32.762550, 33.855793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044159, 32.588917, 33.516323>,  <35.116688, 32.484737, 33.312641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044159, 32.588917, 33.516323>,  <34.923279, 32.762550, 33.855793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044159, 32.588917, 33.516323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610059, -0.772167, 0.177725,
		-0.732465, 0.464032, -0.498165,
		0.302197, -0.434087, -0.848673,
		35.134819, 32.458691, 33.261723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399395, 32.642166, 33.310585>,  <34.923279, 32.762550, 33.855793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399395, 32.642166, 33.310585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698631, 32.386395, 33.381573>,  <34.878174, 32.232933, 33.424168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698631, 32.386395, 33.381573>,  <34.399395, 32.642166, 33.310585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698631, 32.386395, 33.381573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643065, -0.632519, 0.431725,
		-0.163803, -0.437094, -0.884374,
		0.748088, -0.639428, 0.177471,
		34.923058, 32.194565, 33.434814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233662, 31.876322, 33.090866>,  <34.399395, 32.642166, 33.310585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233662, 31.876322, 33.090866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538818, 31.856138, 33.348690>,  <34.721912, 31.844028, 33.503384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538818, 31.856138, 33.348690>,  <34.233662, 31.876322, 33.090866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538818, 31.856138, 33.348690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510480, -0.658799, 0.552625,
		0.396750, -0.750625, -0.528348,
		0.762889, -0.050457, 0.644557,
		34.767685, 31.841002, 33.542057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280834, 31.153864, 33.295162>,  <34.233662, 31.876322, 33.090866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280834, 31.153864, 33.295162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513344, 31.326454, 33.571117>,  <34.652851, 31.430008, 33.736691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513344, 31.326454, 33.571117>,  <34.280834, 31.153864, 33.295162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513344, 31.326454, 33.571117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195340, -0.749052, 0.633059,
		0.789914, -0.502743, -0.351119,
		0.581272, 0.431475, 0.689893,
		34.687725, 31.455896, 33.778084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761650, 30.616034, 33.669323>,  <34.280834, 31.153864, 33.295162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761650, 30.616034, 33.669323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720745, 30.918644, 33.927692>,  <34.696201, 31.100210, 34.082714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720745, 30.918644, 33.927692>,  <34.761650, 30.616034, 33.669323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720745, 30.918644, 33.927692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264385, -0.646641, 0.715511,
		0.958980, -0.097600, 0.266143,
		-0.102265, 0.756525, 0.645920,
		34.690067, 31.145601, 34.121468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943905, 30.280910, 34.282597>,  <34.761650, 30.616034, 33.669323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943905, 30.280910, 34.282597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732147, 30.600206, 34.397530>,  <34.605095, 30.791784, 34.466488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732147, 30.600206, 34.397530>,  <34.943905, 30.280910, 34.282597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732147, 30.600206, 34.397530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311121, -0.497754, 0.809596,
		0.789271, 0.339198, 0.511855,
		-0.529391, 0.798239, 0.287331,
		34.573330, 30.839678, 34.483730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072712, 30.375134, 35.075062>,  <34.943905, 30.280910, 34.282597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072712, 30.375134, 35.075062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727058, 30.542608, 34.963367>,  <34.519665, 30.643093, 34.896351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727058, 30.542608, 34.963367>,  <35.072712, 30.375134, 35.075062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727058, 30.542608, 34.963367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442323, -0.367215, 0.818232,
		0.240045, 0.830574, 0.502518,
		-0.864135, 0.418688, -0.279234,
		34.467819, 30.668215, 34.879597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734047, 30.739199, 35.603142>,  <35.072712, 30.375134, 35.075062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734047, 30.739199, 35.603142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421116, 30.688143, 35.359283>,  <34.233356, 30.657509, 35.212967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421116, 30.688143, 35.359283>,  <34.734047, 30.739199, 35.603142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421116, 30.688143, 35.359283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516902, -0.413064, 0.749793,
		-0.347526, 0.901713, 0.257175,
		-0.782328, -0.127639, -0.609648,
		34.186417, 30.649851, 35.176388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181606, 30.916786, 36.058941>,  <34.734047, 30.739199, 35.603142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181606, 30.916786, 36.058941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983078, 30.731718, 35.765110>,  <33.863960, 30.620678, 35.588810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983078, 30.731718, 35.765110>,  <34.181606, 30.916786, 36.058941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983078, 30.731718, 35.765110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452411, -0.584328, 0.673710,
		-0.740939, 0.666706, 0.080696,
		-0.496320, -0.462671, -0.734576,
		33.834183, 30.592916, 35.544739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511963, 30.876345, 36.341526>,  <34.181606, 30.916786, 36.058941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511963, 30.876345, 36.341526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562809, 30.589916, 36.066982>,  <33.593315, 30.418060, 35.902256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562809, 30.589916, 36.066982>,  <33.511963, 30.876345, 36.341526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562809, 30.589916, 36.066982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619075, -0.597922, 0.509152,
		-0.774976, 0.360186, -0.519306,
		0.127115, -0.716069, -0.686357,
		33.600945, 30.375095, 35.861076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787697, 30.761009, 36.052879>,  <33.511963, 30.876345, 36.341526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787697, 30.761009, 36.052879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027298, 30.446766, 35.990887>,  <33.171059, 30.258219, 35.953693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027298, 30.446766, 35.990887>,  <32.787697, 30.761009, 36.052879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027298, 30.446766, 35.990887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695603, -0.606376, 0.385285,
		-0.396657, -0.122983, -0.909691,
		0.598999, -0.785610, -0.154976,
		33.206997, 30.211082, 35.944393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340984, 30.271151, 35.779419>,  <32.787697, 30.761009, 36.052879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340984, 30.271151, 35.779419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653168, 30.064056, 35.919613>,  <32.840477, 29.939800, 36.003731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653168, 30.064056, 35.919613>,  <32.340984, 30.271151, 35.779419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653168, 30.064056, 35.919613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625147, -0.638199, 0.449324,
		-0.008949, -0.569784, -0.821746,
		0.780455, -0.517733, 0.350488,
		32.887306, 29.908737, 36.024757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052845, 29.809143, 36.064636>,  <32.340984, 30.271151, 35.779419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052845, 29.809143, 36.064636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409328, 29.664164, 36.173729>,  <32.623219, 29.577175, 36.239185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409328, 29.664164, 36.173729>,  <32.052845, 29.809143, 36.064636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409328, 29.664164, 36.173729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453598, -0.714194, 0.533082,
		0.001571, -0.598797, -0.800899,
		0.891205, -0.362449, 0.272735,
		32.676689, 29.555429, 36.255550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024727, 29.006578, 36.031399>,  <32.052845, 29.809143, 36.064636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024727, 29.006578, 36.031399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310482, 29.111393, 36.290932>,  <32.481934, 29.174282, 36.446651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310482, 29.111393, 36.290932>,  <32.024727, 29.006578, 36.031399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310482, 29.111393, 36.290932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360637, -0.656734, 0.662300,
		0.599659, -0.707133, -0.374662,
		0.714387, 0.262038, 0.648835,
		32.524799, 29.190004, 36.485580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253784, 28.331097, 36.288925>,  <32.024727, 29.006578, 36.031399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253784, 28.331097, 36.288925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395214, 28.602896, 36.546070>,  <32.480072, 28.765976, 36.700356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395214, 28.602896, 36.546070>,  <32.253784, 28.331097, 36.288925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395214, 28.602896, 36.546070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195884, -0.618230, 0.761197,
		0.914667, -0.395064, -0.085485,
		0.353571, 0.679497, 0.642861,
		32.501286, 28.806746, 36.738930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609325, 27.957146, 36.856842>,  <32.253784, 28.331097, 36.288925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609325, 27.957146, 36.856842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538242, 28.307398, 37.036484>,  <32.495594, 28.517550, 37.144268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538242, 28.307398, 37.036484>,  <32.609325, 27.957146, 36.856842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538242, 28.307398, 37.036484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232147, -0.480786, 0.845549,
		0.956310, 0.046001, 0.288713,
		-0.177706, 0.875630, 0.449101,
		32.484932, 28.570087, 37.171215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110916, 28.010714, 37.482475>,  <32.609325, 27.957146, 36.856842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110916, 28.010714, 37.482475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774174, 28.221693, 37.528217>,  <32.572128, 28.348282, 37.555660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774174, 28.221693, 37.528217>,  <33.110916, 28.010714, 37.482475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774174, 28.221693, 37.528217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220921, -0.530092, 0.818656,
		0.492417, 0.663927, 0.562785,
		-0.841855, 0.527451, 0.114351,
		32.521618, 28.379929, 37.562523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081566, 28.089243, 38.150600>,  <33.110916, 28.010714, 37.482475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081566, 28.089243, 38.150600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714031, 28.200752, 38.038864>,  <32.493511, 28.267658, 37.971825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714031, 28.200752, 38.038864>,  <33.081566, 28.089243, 38.150600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714031, 28.200752, 38.038864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387807, -0.506607, 0.770036,
		0.073152, 0.815864, 0.573598,
		-0.918833, 0.278775, -0.279338,
		32.438381, 28.284384, 37.955063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737244, 28.279531, 38.814152>,  <33.081566, 28.089243, 38.150600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737244, 28.279531, 38.814152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463516, 28.187580, 38.537354>,  <32.299278, 28.132408, 38.371273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463516, 28.187580, 38.537354>,  <32.737244, 28.279531, 38.814152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463516, 28.187580, 38.537354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516234, -0.517503, 0.682417,
		-0.514986, 0.824225, 0.235464,
		-0.684318, -0.229881, -0.692000,
		32.258221, 28.118616, 38.329754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099079, 28.346540, 39.084064>,  <32.737244, 28.279531, 38.814152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099079, 28.346540, 39.084064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996231, 28.111387, 38.777267>,  <31.934523, 27.970295, 38.593189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996231, 28.111387, 38.777267>,  <32.099079, 28.346540, 39.084064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996231, 28.111387, 38.777267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566611, -0.551233, 0.612449,
		-0.782842, 0.592061, -0.191368,
		-0.257119, -0.587882, -0.766997,
		31.919096, 27.935022, 38.547169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326767, 28.260550, 39.150677>,  <32.099079, 28.346540, 39.084064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326767, 28.260550, 39.150677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458900, 27.970800, 38.908630>,  <31.538181, 27.796951, 38.763401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458900, 27.970800, 38.908630>,  <31.326767, 28.260550, 39.150677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458900, 27.970800, 38.908630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504142, -0.677403, 0.535693,
		-0.797948, 0.128107, -0.588954,
		0.330333, -0.724372, -0.605116,
		31.558001, 27.753489, 38.727097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635803, 27.913534, 38.966545>,  <31.326767, 28.260550, 39.150677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635803, 27.913534, 38.966545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953007, 27.673704, 38.923370>,  <31.143328, 27.529806, 38.897465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953007, 27.673704, 38.923370>,  <30.635803, 27.913534, 38.966545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953007, 27.673704, 38.923370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373115, -0.618051, 0.691953,
		-0.481584, -0.508453, -0.713829,
		0.793008, -0.599574, -0.107932,
		31.190908, 27.493832, 38.890991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350042, 27.265711, 39.011250>,  <30.635803, 27.913534, 38.966545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350042, 27.265711, 39.011250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738926, 27.242638, 39.102009>,  <30.972256, 27.228794, 39.156464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738926, 27.242638, 39.102009>,  <30.350042, 27.265711, 39.011250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738926, 27.242638, 39.102009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200230, -0.707072, 0.678201,
		0.121311, -0.704785, -0.698972,
		0.972210, -0.057682, 0.226895,
		31.030588, 27.225332, 39.170078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310291, 26.625738, 39.202240>,  <30.350042, 27.265711, 39.011250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310291, 26.625738, 39.202240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663498, 26.749355, 39.343533>,  <30.875422, 26.823524, 39.428310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663498, 26.749355, 39.343533>,  <30.310291, 26.625738, 39.202240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663498, 26.749355, 39.343533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120329, -0.578398, 0.806831,
		0.453655, -0.754950, -0.473548,
		0.883016, 0.309042, 0.353235,
		30.928402, 26.842068, 39.449505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606365, 26.030853, 39.451344>,  <30.310291, 26.625738, 39.202240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606365, 26.030853, 39.451344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823847, 26.296007, 39.657246>,  <30.954336, 26.455099, 39.780788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823847, 26.296007, 39.657246>,  <30.606365, 26.030853, 39.451344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823847, 26.296007, 39.657246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036227, -0.594225, 0.803483,
		0.838496, -0.455503, -0.299067,
		0.543702, 0.662883, 0.514756,
		30.986958, 26.494871, 39.811672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053438, 25.643351, 39.794216>,  <30.606365, 26.030853, 39.451344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053438, 25.643351, 39.794216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051456, 25.987783, 39.997593>,  <31.050268, 26.194443, 40.119617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051456, 25.987783, 39.997593>,  <31.053438, 25.643351, 39.794216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051456, 25.987783, 39.997593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163780, -0.502279, 0.849054,
		0.986484, -0.079065, 0.143517,
		-0.004955, 0.861083, 0.508439,
		31.049971, 26.246109, 40.150124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513479, 25.588055, 40.316914>,  <31.053438, 25.643351, 39.794216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513479, 25.588055, 40.316914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269529, 25.879204, 40.442295>,  <31.123159, 26.053894, 40.517525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269529, 25.879204, 40.442295>,  <31.513479, 25.588055, 40.316914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269529, 25.879204, 40.442295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082593, -0.451752, 0.888312,
		0.788182, 0.515870, 0.335629,
		-0.609875, 0.727872, 0.313456,
		31.086567, 26.097565, 40.536331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787027, 25.725607, 40.894390>,  <31.513479, 25.588055, 40.316914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787027, 25.725607, 40.894390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422812, 25.888130, 40.924938>,  <31.204283, 25.985643, 40.943268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422812, 25.888130, 40.924938>,  <31.787027, 25.725607, 40.894390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422812, 25.888130, 40.924938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017121, -0.221625, 0.974982,
		0.413068, 0.886452, 0.208755,
		-0.910539, 0.406308, 0.076369,
		31.149651, 26.010023, 40.947849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201622, 26.371147, 41.229446>,  <31.787027, 25.725607, 40.894390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201622, 26.371147, 41.229446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548866, 26.346895, 41.426510>,  <32.757214, 26.332344, 41.544746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548866, 26.346895, 41.426510>,  <32.201622, 26.371147, 41.229446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548866, 26.346895, 41.426510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479916, 0.355991, -0.801842,
		-0.126765, 0.932521, 0.338136,
		0.868108, -0.060632, 0.492659,
		32.809299, 26.328705, 41.574306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659134, 26.974962, 40.958004>,  <32.201622, 26.371147, 41.229446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659134, 26.974962, 40.958004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894909, 26.715590, 41.150711>,  <33.036373, 26.559965, 41.266335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894909, 26.715590, 41.150711>,  <32.659134, 26.974962, 40.958004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894909, 26.715590, 41.150711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796877, 0.368934, -0.478408,
		0.132476, 0.665900, 0.734185,
		0.589438, -0.648433, 0.481766,
		33.071739, 26.521059, 41.295242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290459, 27.338610, 41.169086>,  <32.659134, 26.974962, 40.958004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290459, 27.338610, 41.169086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413971, 26.958378, 41.182030>,  <33.488079, 26.730238, 41.189796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413971, 26.958378, 41.182030>,  <33.290459, 27.338610, 41.169086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413971, 26.958378, 41.182030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820040, 0.248836, -0.515378,
		0.481857, 0.185675, 0.856352,
		0.308784, -0.950582, 0.032358,
		33.506607, 26.673203, 41.191738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962593, 27.373219, 41.470001>,  <33.290459, 27.338610, 41.169086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962593, 27.373219, 41.470001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964325, 27.025846, 41.271687>,  <33.965363, 26.817423, 41.152699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964325, 27.025846, 41.271687>,  <33.962593, 27.373219, 41.470001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964325, 27.025846, 41.271687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723075, 0.345194, -0.598334,
		0.690756, -0.355905, 0.629434,
		0.004327, -0.868431, -0.495791,
		33.965622, 26.765318, 41.122948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679268, 27.119944, 41.359390>,  <33.962593, 27.373219, 41.470001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679268, 27.119944, 41.359390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483253, 26.930723, 41.066521>,  <34.365643, 26.817190, 40.890797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483253, 26.930723, 41.066521>,  <34.679268, 27.119944, 41.359390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483253, 26.930723, 41.066521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754849, 0.189795, -0.627839,
		0.435963, -0.860349, 0.264076,
		-0.490040, -0.473052, -0.732177,
		34.336243, 26.788807, 40.846867>
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
