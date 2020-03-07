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
	<35.789059, 53.082752, 50.249699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772308, 53.010448, 49.856644>,  <35.762260, 52.967068, 49.620811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772308, 53.010448, 49.856644>,  <35.789059, 53.082752, 50.249699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772308, 53.010448, 49.856644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938119, -0.345508, 0.023582,
		-0.343771, -0.920842, 0.184041,
		-0.041873, -0.180760, -0.982636,
		35.759747, 52.956223, 49.561852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190845, 52.419613, 50.156548>,  <35.789059, 53.082752, 50.249699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190845, 52.419613, 50.156548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215893, 52.641212, 49.824486>,  <36.230919, 52.774174, 49.625248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215893, 52.641212, 49.824486>,  <36.190845, 52.419613, 50.156548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215893, 52.641212, 49.824486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984647, -0.170090, -0.039242,
		-0.162942, -0.814956, -0.556144,
		0.062614, 0.554000, -0.830159,
		36.234676, 52.807411, 49.575439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555664, 52.042538, 49.689793>,  <36.190845, 52.419613, 50.156548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555664, 52.042538, 49.689793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621635, 52.427032, 49.601410>,  <36.661217, 52.657730, 49.548382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621635, 52.427032, 49.601410>,  <36.555664, 52.042538, 49.689793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621635, 52.427032, 49.601410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985175, -0.171273, -0.009751,
		-0.047217, -0.216073, -0.975235,
		0.164924, 0.961238, -0.220957,
		36.671112, 52.715405, 49.535122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971695, 52.112061, 49.034245>,  <36.555664, 52.042538, 49.689793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971695, 52.112061, 49.034245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045292, 52.431507, 49.263458>,  <37.089451, 52.623173, 49.400986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045292, 52.431507, 49.263458>,  <36.971695, 52.112061, 49.034245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045292, 52.431507, 49.263458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977548, -0.209584, -0.021781,
		0.102703, 0.564172, -0.819245,
		0.183989, 0.798614, 0.573030,
		37.100487, 52.671093, 49.435368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491737, 52.470173, 48.735031>,  <36.971695, 52.112061, 49.034245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491737, 52.470173, 48.735031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477978, 52.491920, 49.134201>,  <37.469723, 52.504967, 49.373703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477978, 52.491920, 49.134201>,  <37.491737, 52.470173, 48.735031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477978, 52.491920, 49.134201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889391, -0.453781, 0.055380,
		0.455851, 0.889453, -0.032743,
		-0.034400, 0.054366, 0.997928,
		37.467659, 52.508232, 49.433578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135899, 52.072533, 48.556976>,  <37.491737, 52.470173, 48.735031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135899, 52.072533, 48.556976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420311, 51.822575, 48.685936>,  <38.590958, 51.672600, 48.763313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420311, 51.822575, 48.685936>,  <38.135899, 52.072533, 48.556976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420311, 51.822575, 48.685936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456151, 0.060985, -0.887810,
		0.535123, 0.778327, 0.328406,
		0.711035, -0.624890, 0.322400,
		38.633621, 51.635109, 48.782658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828350, 52.392048, 48.368614>,  <38.135899, 52.072533, 48.556976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828350, 52.392048, 48.368614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789265, 51.995277, 48.400955>,  <38.765816, 51.757214, 48.420361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789265, 51.995277, 48.400955>,  <38.828350, 52.392048, 48.368614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789265, 51.995277, 48.400955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549796, -0.121517, -0.826413,
		0.829564, -0.036299, 0.557230,
		-0.097711, -0.991925, 0.080849,
		38.759953, 51.697701, 48.425209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510597, 52.175362, 48.260582>,  <38.828350, 52.392048, 48.368614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510597, 52.175362, 48.260582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273006, 51.856361, 48.218285>,  <39.130451, 51.664959, 48.192905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273006, 51.856361, 48.218285>,  <39.510597, 52.175362, 48.260582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273006, 51.856361, 48.218285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569476, -0.323973, -0.755473,
		0.568236, -0.508947, 0.646591,
		-0.593974, -0.797505, -0.105740,
		39.094814, 51.617111, 48.186562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736656, 51.438416, 48.279469>,  <39.510597, 52.175362, 48.260582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736656, 51.438416, 48.279469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419537, 51.432117, 48.035759>,  <39.229263, 51.428337, 47.889534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419537, 51.432117, 48.035759>,  <39.736656, 51.438416, 48.279469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419537, 51.432117, 48.035759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589114, -0.276070, -0.759428,
		-0.156246, -0.961008, 0.228144,
		-0.792800, -0.015745, -0.609278,
		39.181698, 51.427395, 47.852974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669918, 50.781136, 47.966946>,  <39.736656, 51.438416, 48.279469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669918, 50.781136, 47.966946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515202, 51.030067, 47.694740>,  <39.422371, 51.179424, 47.531418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515202, 51.030067, 47.694740>,  <39.669918, 50.781136, 47.966946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515202, 51.030067, 47.694740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635617, -0.354737, -0.685676,
		-0.668118, -0.697762, -0.258352,
		-0.386792, 0.622326, -0.680516,
		39.399162, 51.216766, 47.490585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051811, 50.150162, 47.749840>,  <39.669918, 50.781136, 47.966946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051811, 50.150162, 47.749840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195980, 50.498878, 47.882545>,  <40.282482, 50.708111, 47.962170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195980, 50.498878, 47.882545>,  <40.051811, 50.150162, 47.749840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195980, 50.498878, 47.882545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080999, -0.325076, 0.942213,
		0.929264, -0.366471, -0.046551,
		0.360426, 0.871794, 0.331765,
		40.304108, 50.760418, 47.982075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759857, 50.039520, 48.228222>,  <40.051811, 50.150162, 47.749840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759857, 50.039520, 48.228222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523731, 50.351440, 48.311592>,  <40.382057, 50.538593, 48.361614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523731, 50.351440, 48.311592>,  <40.759857, 50.039520, 48.228222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523731, 50.351440, 48.311592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064103, -0.212111, 0.975141,
		0.804627, 0.588997, 0.075223,
		-0.590310, 0.779802, 0.208427,
		40.346638, 50.585381, 48.374119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077263, 50.712494, 48.511143>,  <40.759857, 50.039520, 48.228222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077263, 50.712494, 48.511143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432053, 50.772530, 48.685841>,  <41.644928, 50.808552, 48.790661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432053, 50.772530, 48.685841>,  <41.077263, 50.712494, 48.511143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432053, 50.772530, 48.685841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002112, -0.947023, 0.321160,
		0.461809, -0.283939, -0.840304,
		0.886977, 0.150089, 0.436744,
		41.698147, 50.817554, 48.816864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256378, 51.487442, 48.465679>,  <41.077263, 50.712494, 48.511143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256378, 51.487442, 48.465679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257755, 51.171070, 48.220917>,  <41.258583, 50.981247, 48.074059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257755, 51.171070, 48.220917>,  <41.256378, 51.487442, 48.465679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257755, 51.171070, 48.220917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958653, -0.176735, 0.223044,
		-0.284556, 0.585833, -0.758833,
		0.003446, -0.790926, -0.611902,
		41.258789, 50.933792, 48.037346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917507, 52.151688, 48.225960>,  <41.256378, 51.487442, 48.465679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917507, 52.151688, 48.225960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908211, 52.498425, 48.026745>,  <40.902634, 52.706467, 47.907215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908211, 52.498425, 48.026745>,  <40.917507, 52.151688, 48.225960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908211, 52.498425, 48.026745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784705, 0.324484, 0.528155,
		0.619433, -0.378542, -0.687756,
		-0.023237, 0.866843, -0.498040,
		40.901241, 52.758476, 47.877335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674774, 52.312344, 48.011032>,  <40.917507, 52.151688, 48.225960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674774, 52.312344, 48.011032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434216, 52.631916, 48.013191>,  <41.289879, 52.823658, 48.014488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434216, 52.631916, 48.013191>,  <41.674774, 52.312344, 48.011032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434216, 52.631916, 48.013191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713861, 0.534303, 0.452684,
		0.358780, 0.276096, -0.891655,
		-0.601398, 0.798931, 0.005397,
		41.253796, 52.871597, 48.014809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963062, 52.880966, 47.750500>,  <41.674774, 52.312344, 48.011032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963062, 52.880966, 47.750500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699032, 53.007034, 48.023254>,  <41.540611, 53.082676, 48.186905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699032, 53.007034, 48.023254>,  <41.963062, 52.880966, 47.750500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699032, 53.007034, 48.023254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705058, 0.573153, 0.417599,
		-0.259208, 0.756415, -0.600540,
		-0.660079, 0.315170, 0.681882,
		41.501007, 53.101585, 48.227818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199268, 53.430138, 47.740940>,  <41.963062, 52.880966, 47.750500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199268, 53.430138, 47.740940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983345, 53.388763, 48.075104>,  <41.853790, 53.363937, 48.275600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983345, 53.388763, 48.075104>,  <42.199268, 53.430138, 47.740940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983345, 53.388763, 48.075104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711079, 0.475115, 0.518297,
		-0.450525, 0.873823, -0.182921,
		-0.539809, -0.103435, 0.835409,
		41.821404, 53.357735, 48.325726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910782, 54.013149, 48.087238>,  <42.199268, 53.430138, 47.740940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910782, 54.013149, 48.087238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013554, 53.739624, 48.360409>,  <42.075214, 53.575508, 48.524311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013554, 53.739624, 48.360409>,  <41.910782, 54.013149, 48.087238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013554, 53.739624, 48.360409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756212, 0.582260, 0.298524,
		-0.601774, 0.439735, 0.666709,
		0.256927, -0.683817, 0.682922,
		42.090633, 53.534477, 48.565285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927685, 54.425385, 48.694046>,  <41.910782, 54.013149, 48.087238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927685, 54.425385, 48.694046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135677, 54.088955, 48.753674>,  <42.260471, 53.887096, 48.789448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135677, 54.088955, 48.753674>,  <41.927685, 54.425385, 48.694046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135677, 54.088955, 48.753674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791692, 0.540063, 0.285578,
		-0.320697, -0.030480, 0.946691,
		0.519977, -0.841072, 0.149066,
		42.291672, 53.836632, 48.798393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640297, 54.594028, 48.474960>,  <41.927685, 54.425385, 48.694046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640297, 54.594028, 48.474960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841133, 54.926125, 48.378128>,  <42.961636, 55.125381, 48.320030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841133, 54.926125, 48.378128>,  <42.640297, 54.594028, 48.474960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841133, 54.926125, 48.378128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207834, 0.155880, 0.965664,
		0.839472, -0.535161, -0.094287,
		0.502088, 0.830244, -0.242081,
		42.991760, 55.175198, 48.305504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364010, 54.632175, 48.684418>,  <42.640297, 54.594028, 48.474960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364010, 54.632175, 48.684418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183544, 54.989143, 48.687004>,  <43.075264, 55.203323, 48.688557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183544, 54.989143, 48.687004>,  <43.364010, 54.632175, 48.684418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183544, 54.989143, 48.687004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153805, 0.070614, 0.985575,
		0.879086, 0.445655, -0.169117,
		-0.451168, 0.892416, 0.006469,
		43.048195, 55.256866, 48.688946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793255, 55.179260, 48.989525>,  <43.364010, 54.632175, 48.684418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793255, 55.179260, 48.989525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417522, 55.309189, 49.033623>,  <43.192085, 55.387146, 49.060081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417522, 55.309189, 49.033623>,  <43.793255, 55.179260, 48.989525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417522, 55.309189, 49.033623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182263, 0.200370, 0.962618,
		0.290593, 0.924306, -0.247416,
		-0.939328, 0.324824, 0.110240,
		43.135723, 55.406635, 49.066696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929844, 55.728565, 49.467522>,  <43.793255, 55.179260, 48.989525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929844, 55.728565, 49.467522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575939, 55.542202, 49.462982>,  <43.363598, 55.430382, 49.460258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575939, 55.542202, 49.462982>,  <43.929844, 55.728565, 49.467522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575939, 55.542202, 49.462982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058036, 0.085980, 0.994605,
		-0.462423, 0.880643, -0.103111,
		-0.884758, -0.465913, -0.011350,
		43.310513, 55.402428, 49.459576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653046, 55.652523, 49.769871>,  <43.929844, 55.728565, 49.467522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.653046, 55.652523, 49.769871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637730, 55.869465, 50.105583>,  <44.628540, 55.999630, 50.307011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637730, 55.869465, 50.105583>,  <44.653046, 55.652523, 49.769871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.637730, 55.869465, 50.105583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898038, -0.349676, 0.266935,
		0.438248, 0.763923, -0.473667,
		-0.038288, 0.542355, 0.839277,
		44.626244, 56.032173, 50.357365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.319328, 56.120064, 49.788990>,  <44.653046, 55.652523, 49.769871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.319328, 56.120064, 49.788990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195198, 55.992077, 50.147057>,  <45.120720, 55.915283, 50.361897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195198, 55.992077, 50.147057>,  <45.319328, 56.120064, 49.788990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195198, 55.992077, 50.147057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945742, -0.199284, 0.256626,
		0.096280, 0.926232, 0.364450,
		-0.310325, -0.319968, 0.895164,
		45.102100, 55.896088, 50.415607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738544, 56.439514, 50.285534>,  <45.319328, 56.120064, 49.788990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738544, 56.439514, 50.285534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575802, 56.105904, 50.434593>,  <45.478157, 55.905735, 50.524029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575802, 56.105904, 50.434593>,  <45.738544, 56.439514, 50.285534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575802, 56.105904, 50.434593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912695, -0.354080, 0.203999,
		-0.038193, 0.423113, 0.905271,
		-0.406853, -0.834028, 0.372650,
		45.453747, 55.855694, 50.546387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076607, 56.297127, 50.954517>,  <45.738544, 56.439514, 50.285534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076607, 56.297127, 50.954517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951546, 55.957527, 50.784126>,  <45.876511, 55.753769, 50.681892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951546, 55.957527, 50.784126>,  <46.076607, 56.297127, 50.954517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951546, 55.957527, 50.784126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851915, -0.448975, 0.269561,
		-0.420109, -0.278618, 0.863644,
		-0.312650, -0.848996, -0.425977,
		45.857750, 55.702827, 50.656334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.529282, 56.609982, 50.301933>,  <46.076607, 56.297127, 50.954517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.529282, 56.609982, 50.301933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.468021, 56.961544, 50.482628>,  <46.431267, 57.172482, 50.591045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.468021, 56.961544, 50.482628>,  <46.529282, 56.609982, 50.301933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.468021, 56.961544, 50.482628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900404, -0.064258, 0.430282,
		0.407206, 0.472643, -0.781531,
		-0.153151, 0.878908, 0.451737,
		46.422077, 57.225216, 50.618149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.059841, 57.143276, 50.067150>,  <46.529282, 56.609982, 50.301933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.059841, 57.143276, 50.067150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905582, 57.201862, 50.431530>,  <46.813026, 57.237015, 50.650158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905582, 57.201862, 50.431530>,  <47.059841, 57.143276, 50.067150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.905582, 57.201862, 50.431530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922520, 0.077535, 0.378080,
		-0.015257, 0.986173, -0.165014,
		-0.385647, 0.146461, 0.910948,
		46.789886, 57.245800, 50.704815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.390789, 57.740875, 50.400368>,  <47.059841, 57.143276, 50.067150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.390789, 57.740875, 50.400368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257023, 57.459332, 50.651047>,  <47.176762, 57.290405, 50.801453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257023, 57.459332, 50.651047>,  <47.390789, 57.740875, 50.400368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.257023, 57.459332, 50.651047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938696, -0.189667, 0.287882,
		-0.083765, 0.684550, 0.724137,
		-0.334414, -0.703859, 0.626697,
		47.156700, 57.248173, 50.839054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.671967, 57.981941, 51.109287>,  <47.390789, 57.740875, 50.400368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.671967, 57.981941, 51.109287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632900, 57.598064, 51.003872>,  <47.609463, 57.367737, 50.940624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632900, 57.598064, 51.003872>,  <47.671967, 57.981941, 51.109287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632900, 57.598064, 51.003872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985367, -0.130413, 0.109748,
		-0.139693, -0.248964, 0.958385,
		-0.097663, -0.959692, -0.263539,
		47.603600, 57.310158, 50.924809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.248150, 57.852158, 51.264408>,  <47.671967, 57.981941, 51.109287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.248150, 57.852158, 51.264408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.124958, 57.489353, 51.149536>,  <48.051041, 57.271671, 51.080612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.124958, 57.489353, 51.149536>,  <48.248150, 57.852158, 51.264408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.124958, 57.489353, 51.149536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906464, -0.371416, 0.200932,
		-0.288912, -0.198436, 0.936565,
		-0.307983, -0.907013, -0.287181,
		48.032562, 57.217251, 51.063381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.612663, 57.530437, 51.721298>,  <48.248150, 57.852158, 51.264408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.612663, 57.530437, 51.721298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.510601, 57.289818, 51.418503>,  <48.449364, 57.145447, 51.236824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.510601, 57.289818, 51.418503>,  <48.612663, 57.530437, 51.721298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.510601, 57.289818, 51.418503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928830, -0.370018, -0.019038,
		-0.268648, -0.707975, 0.653146,
		-0.255154, -0.601547, -0.756992,
		48.434055, 57.109352, 51.191406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.828926, 56.770378, 51.851994>,  <48.612663, 57.530437, 51.721298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.828926, 56.770378, 51.851994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.811516, 56.839767, 51.458443>,  <48.801071, 56.881401, 51.222313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.811516, 56.839767, 51.458443>,  <48.828926, 56.770378, 51.851994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.811516, 56.839767, 51.458443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956255, -0.277922, -0.091300,
		-0.289279, -0.944811, -0.153785,
		-0.043521, 0.173469, -0.983877,
		48.798458, 56.891808, 51.163280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.054470, 56.174324, 51.391167>,  <48.828926, 56.770378, 51.851994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.054470, 56.174324, 51.391167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.145931, 56.496483, 51.172424>,  <49.200806, 56.689777, 51.041180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.145931, 56.496483, 51.172424>,  <49.054470, 56.174324, 51.391167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.145931, 56.496483, 51.172424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959750, -0.280602, -0.011975,
		-0.163094, -0.522108, -0.837140,
		0.228650, 0.805398, -0.546858,
		49.214527, 56.738102, 51.008366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.388828, 55.907833, 50.794556>,  <49.054470, 56.174324, 51.391167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.388828, 55.907833, 50.794556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.538151, 56.261860, 50.905762>,  <49.627747, 56.474277, 50.972485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.538151, 56.261860, 50.905762>,  <49.388828, 55.907833, 50.794556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.538151, 56.261860, 50.905762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922906, -0.384757, -0.014364,
		0.094254, 0.261941, -0.960470,
		0.373310, 0.885070, 0.278012,
		49.650143, 56.527382, 50.989166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.935528, 56.174335, 50.205677>,  <49.388828, 55.907833, 50.794556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.935528, 56.174335, 50.205677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.003529, 56.329475, 50.568039>,  <50.044327, 56.422562, 50.785458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.003529, 56.329475, 50.568039>,  <49.935528, 56.174335, 50.205677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.003529, 56.329475, 50.568039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955613, -0.289361, -0.055438,
		0.240633, 0.875123, -0.419829,
		0.169997, 0.387854, 0.905909,
		50.054527, 56.445831, 50.839813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.498753, 56.598015, 50.275928>,  <49.935528, 56.174335, 50.205677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.498753, 56.598015, 50.275928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.432503, 56.421146, 50.628532>,  <50.392754, 56.315025, 50.840096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.432503, 56.421146, 50.628532>,  <50.498753, 56.598015, 50.275928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.432503, 56.421146, 50.628532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981724, -0.158887, 0.104750,
		0.093743, 0.882746, 0.460403,
		-0.165620, -0.442169, 0.881508,
		50.382816, 56.288494, 50.892986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.909164, 56.876255, 50.992210>,  <50.498753, 56.598015, 50.275928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.909164, 56.876255, 50.992210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.821777, 56.487865, 50.953255>,  <50.769344, 56.254833, 50.929882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.821777, 56.487865, 50.953255>,  <50.909164, 56.876255, 50.992210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.821777, 56.487865, 50.953255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967149, -0.228730, 0.110923,
		-0.129979, -0.069955, 0.989046,
		-0.218465, -0.970973, -0.097387,
		50.756237, 56.196575, 50.924038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.180912, 56.433044, 51.588341>,  <50.909164, 56.876255, 50.992210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.180912, 56.433044, 51.588341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.149464, 56.241478, 51.238609>,  <51.130596, 56.126537, 51.028770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.149464, 56.241478, 51.238609>,  <51.180912, 56.433044, 51.588341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.149464, 56.241478, 51.238609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968610, -0.244170, 0.046645,
		-0.235825, -0.843220, 0.483080,
		-0.078621, -0.478916, -0.874333,
		51.125877, 56.097801, 50.976311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.765118, 55.885147, 51.539520>,  <51.180912, 56.433044, 51.588341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.765118, 55.885147, 51.539520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.637943, 55.918682, 51.161762>,  <51.561638, 55.938805, 50.935108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.637943, 55.918682, 51.161762>,  <51.765118, 55.885147, 51.539520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.637943, 55.918682, 51.161762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946973, -0.020725, -0.320643,
		-0.046454, -0.996264, -0.072802,
		-0.317936, 0.083837, -0.944398,
		51.542561, 55.943832, 50.878441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.278793, 56.360039, 51.450874>,  <51.765118, 55.885147, 51.539520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.278793, 56.360039, 51.450874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.238640, 56.757580, 51.432163>,  <52.214546, 56.996105, 51.420937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.238640, 56.757580, 51.432163>,  <52.278793, 56.360039, 51.450874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.238640, 56.757580, 51.432163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969043, 0.108325, 0.221859,
		0.225561, -0.023059, -0.973956,
		-0.100388, 0.993848, -0.046779,
		52.208523, 57.055733, 51.418129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.760506, 56.573524, 51.089890>,  <52.278793, 56.360039, 51.450874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.760506, 56.573524, 51.089890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.641445, 56.837570, 51.365761>,  <52.570007, 56.995998, 51.531284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.641445, 56.837570, 51.365761>,  <52.760506, 56.573524, 51.089890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.641445, 56.837570, 51.365761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925482, 0.022235, 0.378139,
		0.234281, 0.750834, -0.617545,
		-0.297650, 0.660117, 0.689674,
		52.552151, 57.035606, 51.572662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.169685, 57.111225, 51.187202>,  <52.760506, 56.573524, 51.089890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.169685, 57.111225, 51.187202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.990482, 57.059509, 51.541054>,  <52.882961, 57.028481, 51.753365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.990482, 57.059509, 51.541054>,  <53.169685, 57.111225, 51.187202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.990482, 57.059509, 51.541054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889518, -0.163749, 0.426549,
		0.089711, 0.977994, 0.188362,
		-0.448007, -0.129285, 0.884633,
		52.856079, 57.020725, 51.806442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.530792, 57.467365, 51.752525>,  <53.169685, 57.111225, 51.187202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.530792, 57.467365, 51.752525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.346897, 57.173679, 51.952354>,  <53.236561, 56.997467, 52.072250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.346897, 57.173679, 51.952354>,  <53.530792, 57.467365, 51.752525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.346897, 57.173679, 51.952354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873206, -0.271310, 0.404848,
		-0.161705, 0.622354, 0.765851,
		-0.459742, -0.734212, 0.499571,
		53.208973, 56.953415, 52.102226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.661594, 57.575409, 52.446991>,  <53.530792, 57.467365, 51.752525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.661594, 57.575409, 52.446991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.560238, 57.188972, 52.427193>,  <53.499424, 56.957111, 52.415314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.560238, 57.188972, 52.427193>,  <53.661594, 57.575409, 52.446991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.560238, 57.188972, 52.427193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776467, -0.233641, 0.585245,
		-0.576966, 0.109869, 0.809345,
		-0.253396, -0.966096, -0.049493,
		53.484219, 56.899143, 52.412346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.587032, 57.299942, 53.026157>,  <53.661594, 57.575409, 52.446991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.587032, 57.299942, 53.026157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.696560, 56.981659, 52.810059>,  <53.762276, 56.790688, 52.680401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.696560, 56.981659, 52.810059>,  <53.587032, 57.299942, 53.026157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.696560, 56.981659, 52.810059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831237, -0.086766, 0.549105,
		-0.483804, -0.599429, 0.637666,
		0.273822, -0.795711, -0.540246,
		53.778706, 56.742947, 52.647984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.765408, 56.724129, 53.430485>,  <53.587032, 57.299942, 53.026157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.765408, 56.724129, 53.430485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.976723, 56.712288, 53.091064>,  <54.103512, 56.705185, 52.887413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.976723, 56.712288, 53.091064>,  <53.765408, 56.724129, 53.430485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.976723, 56.712288, 53.091064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848121, 0.065465, 0.525743,
		0.039988, -0.997415, 0.059690,
		0.528292, -0.029601, -0.848547,
		54.135212, 56.703407, 52.836502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.135277, 56.112804, 53.430042>,  <53.765408, 56.724129, 53.430485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.135277, 56.112804, 53.430042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.302956, 56.401802, 53.210125>,  <54.403564, 56.575199, 53.078175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.302956, 56.401802, 53.210125>,  <54.135277, 56.112804, 53.430042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.302956, 56.401802, 53.210125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832265, -0.063832, 0.550692,
		0.362777, -0.688424, -0.628065,
		0.419200, 0.722494, -0.549794,
		54.428715, 56.618549, 53.045185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.849899, 55.960999, 53.478008>,  <54.135277, 56.112804, 53.430042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.849899, 55.960999, 53.478008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.795914, 56.342377, 53.370140>,  <54.763523, 56.571205, 53.305420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.795914, 56.342377, 53.370140>,  <54.849899, 55.960999, 53.478008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.795914, 56.342377, 53.370140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752435, 0.275697, 0.598191,
		0.644691, -0.122174, -0.754617,
		-0.134962, 0.953449, -0.269667,
		54.755424, 56.628410, 53.289242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.507568, 56.278816, 53.595837>,  <54.849899, 55.960999, 53.478008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.507568, 56.278816, 53.595837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.246231, 56.577877, 53.548233>,  <55.089428, 56.757313, 53.519672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.246231, 56.577877, 53.548233>,  <55.507568, 56.278816, 53.595837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.246231, 56.577877, 53.548233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489294, 0.536960, 0.687215,
		0.577698, 0.390758, -0.716640,
		-0.653342, 0.747651, -0.119005,
		55.050228, 56.802174, 53.512531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.855095, 56.894173, 53.306179>,  <55.507568, 56.278816, 53.595837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.855095, 56.894173, 53.306179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.536934, 56.949497, 53.542213>,  <55.346035, 56.982693, 53.683834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.536934, 56.949497, 53.542213>,  <55.855095, 56.894173, 53.306179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.536934, 56.949497, 53.542213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584385, 0.433157, 0.686199,
		-0.160691, 0.890644, -0.425361,
		-0.795407, 0.138308, 0.590083,
		55.298313, 56.990990, 53.719238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.710167, 57.676838, 53.512463>,  <55.855095, 56.894173, 53.306179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.710167, 57.676838, 53.512463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.609955, 57.388836, 53.771332>,  <55.549828, 57.216034, 53.926651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.609955, 57.388836, 53.771332>,  <55.710167, 57.676838, 53.512463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.609955, 57.388836, 53.771332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469847, 0.494056, 0.731541,
		-0.846451, 0.487342, 0.214517,
		-0.250527, -0.720004, 0.647171,
		55.534798, 57.172836, 53.965485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.463295, 58.003601, 54.120239>,  <55.710167, 57.676838, 53.512463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.463295, 58.003601, 54.120239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.596260, 57.643089, 54.231377>,  <55.676041, 57.426781, 54.298058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.596260, 57.643089, 54.231377>,  <55.463295, 58.003601, 54.120239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.596260, 57.643089, 54.231377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456081, 0.411475, 0.789100,
		-0.825525, -0.135587, 0.547836,
		0.332412, -0.901279, 0.277844,
		55.695984, 57.372707, 54.314732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.411922, 57.786789, 54.972420>,  <55.463295, 58.003601, 54.120239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.411922, 57.786789, 54.972420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.726326, 57.601509, 54.808643>,  <55.914967, 57.490341, 54.710377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.726326, 57.601509, 54.808643>,  <55.411922, 57.786789, 54.972420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.726326, 57.601509, 54.808643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567405, 0.277574, 0.775245,
		-0.245442, -0.841666, 0.480996,
		0.786009, -0.463197, -0.409437,
		55.962128, 57.462551, 54.685814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.720421, 57.383034, 55.491692>,  <55.411922, 57.786789, 54.972420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.720421, 57.383034, 55.491692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.988319, 57.462856, 55.205582>,  <56.149059, 57.510750, 55.033916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.988319, 57.462856, 55.205582>,  <55.720421, 57.383034, 55.491692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.988319, 57.462856, 55.205582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714535, 0.089074, 0.693906,
		0.202183, -0.975830, -0.082930,
		0.669747, 0.199553, -0.715274,
		56.189243, 57.522720, 54.991001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.208279, 56.883793, 55.504135>,  <55.720421, 57.383034, 55.491692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.208279, 56.883793, 55.504135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.363693, 57.230896, 55.380173>,  <56.456940, 57.439156, 55.305794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.363693, 57.230896, 55.380173>,  <56.208279, 56.883793, 55.504135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.363693, 57.230896, 55.380173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600523, 0.016630, 0.799434,
		0.698867, -0.496714, -0.514646,
		0.388532, 0.867755, -0.309910,
		56.480251, 57.491222, 55.287201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.922737, 56.817444, 55.213699>,  <56.208279, 56.883793, 55.504135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.922737, 56.817444, 55.213699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.801155, 57.159622, 55.381424>,  <56.728207, 57.364929, 55.482059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.801155, 57.159622, 55.381424>,  <56.922737, 56.817444, 55.213699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.801155, 57.159622, 55.381424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659779, -0.128491, 0.740393,
		0.687245, 0.501698, -0.525351,
		-0.303951, 0.855447, 0.419314,
		56.709969, 57.416256, 55.507217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.454308, 57.247238, 55.328857>,  <56.922737, 56.817444, 55.213699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.454308, 57.247238, 55.328857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.163055, 57.341709, 55.586243>,  <56.988304, 57.398392, 55.740673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.163055, 57.341709, 55.586243>,  <57.454308, 57.247238, 55.328857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.163055, 57.341709, 55.586243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644323, -0.084386, 0.760084,
		0.233812, 0.968040, -0.090728,
		-0.728135, 0.236175, 0.643460,
		56.944614, 57.412563, 55.779282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.663765, 57.762779, 55.762421>,  <57.454308, 57.247238, 55.328857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.663765, 57.762779, 55.762421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.381477, 57.614677, 56.004036>,  <57.212105, 57.525818, 56.149006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.381477, 57.614677, 56.004036>,  <57.663765, 57.762779, 55.762421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.381477, 57.614677, 56.004036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610081, 0.115891, 0.783818,
		-0.360216, 0.921672, 0.144099,
		-0.705723, -0.370256, 0.604041,
		57.169762, 57.503601, 56.185249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.740116, 58.162548, 56.352089>,  <57.663765, 57.762779, 55.762421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.740116, 58.162548, 56.352089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.515038, 57.853092, 56.468613>,  <57.379990, 57.667419, 56.538525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.515038, 57.853092, 56.468613>,  <57.740116, 58.162548, 56.352089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.515038, 57.853092, 56.468613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620933, -0.162915, 0.766747,
		-0.545728, 0.612324, 0.572049,
		-0.562693, -0.773640, 0.291305,
		57.346230, 57.621002, 56.556004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.670677, 58.151463, 57.103054>,  <57.740116, 58.162548, 56.352089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.670677, 58.151463, 57.103054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.597473, 57.777115, 56.982620>,  <57.553551, 57.552505, 56.910362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.597473, 57.777115, 56.982620>,  <57.670677, 58.151463, 57.103054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.597473, 57.777115, 56.982620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729647, -0.334553, 0.596397,
		-0.658879, -0.110534, 0.744084,
		-0.183014, -0.935872, -0.301081,
		57.542568, 57.496353, 56.892296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.683441, 57.719269, 57.708633>,  <57.670677, 58.151463, 57.103054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.683441, 57.719269, 57.708633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.784142, 57.520443, 57.376480>,  <57.844563, 57.401146, 57.177185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.784142, 57.520443, 57.376480>,  <57.683441, 57.719269, 57.708633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.784142, 57.520443, 57.376480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863363, -0.272342, 0.424775,
		-0.437291, -0.823866, 0.360586,
		0.251755, -0.497067, -0.830388,
		57.859669, 57.371323, 57.127365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.674892, 56.946087, 57.742290>,  <57.683441, 57.719269, 57.708633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.674892, 56.946087, 57.742290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.943565, 57.104736, 57.492004>,  <58.104771, 57.199928, 57.341831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.943565, 57.104736, 57.492004>,  <57.674892, 56.946087, 57.742290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.943565, 57.104736, 57.492004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740669, -0.341624, 0.578535,
		0.015701, -0.852045, -0.523234,
		0.671687, 0.396626, -0.625719,
		58.145073, 57.223724, 57.304287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.198746, 56.473473, 57.528130>,  <57.674892, 56.946087, 57.742290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.198746, 56.473473, 57.528130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.319893, 56.854656, 57.532837>,  <58.392582, 57.083366, 57.535664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.319893, 56.854656, 57.532837>,  <58.198746, 56.473473, 57.528130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.319893, 56.854656, 57.532837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670571, -0.221862, 0.707892,
		0.677205, -0.206503, -0.706222,
		0.302866, 0.952960, 0.011771,
		58.410751, 57.140545, 57.536369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.880356, 56.397461, 57.612331>,  <58.198746, 56.473473, 57.528130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.880356, 56.397461, 57.612331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.798973, 56.774460, 57.718399>,  <58.750145, 57.000660, 57.782040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.798973, 56.774460, 57.718399>,  <58.880356, 56.397461, 57.612331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.798973, 56.774460, 57.718399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570539, -0.105970, 0.814405,
		0.795671, 0.316981, -0.516169,
		-0.203453, 0.942493, 0.265167,
		58.737938, 57.057209, 57.797951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.538246, 56.631432, 57.770550>,  <58.880356, 56.397461, 57.612331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.538246, 56.631432, 57.770550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.242020, 56.819038, 57.963043>,  <59.064285, 56.931602, 58.078541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.242020, 56.819038, 57.963043>,  <59.538246, 56.631432, 57.770550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.242020, 56.819038, 57.963043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521886, -0.049702, 0.851566,
		0.423315, 0.881791, -0.207965,
		-0.740567, 0.469015, 0.481234,
		59.019848, 56.959743, 58.107414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.899734, 57.015213, 58.233860>,  <59.538246, 56.631432, 57.770550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.899734, 57.015213, 58.233860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.519867, 57.005310, 58.358772>,  <59.291946, 56.999367, 58.433720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.519867, 57.005310, 58.358772>,  <59.899734, 57.015213, 58.233860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.519867, 57.005310, 58.358772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295556, 0.259552, 0.919391,
		-0.103818, 0.965412, -0.239169,
		-0.949668, -0.024761, 0.312280,
		59.234966, 56.997883, 58.452457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.593891, 57.208569, 58.056931>,  <59.899734, 57.015213, 58.233860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.593891, 57.208569, 58.056931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.720787, 56.880013, 58.246529>,  <60.796925, 56.682880, 58.360287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.720787, 56.880013, 58.246529>,  <60.593891, 57.208569, 58.056931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.720787, 56.880013, 58.246529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947676, 0.293344, -0.125935,
		-0.035602, 0.489147, 0.871474,
		0.317243, -0.821392, 0.473997,
		60.815960, 56.633595, 58.388729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.872589, 57.280548, 58.730038>,  <60.593891, 57.208569, 58.056931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.872589, 57.280548, 58.730038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.043762, 56.967171, 58.549774>,  <61.146465, 56.779144, 58.441616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.043762, 56.967171, 58.549774>,  <60.872589, 57.280548, 58.730038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.043762, 56.967171, 58.549774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872599, 0.488034, -0.019814,
		0.235461, -0.384767, 0.892475,
		0.427935, -0.783439, -0.450661,
		61.172142, 56.732140, 58.414577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.532871, 57.136879, 58.992390>,  <60.872589, 57.280548, 58.730038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.532871, 57.136879, 58.992390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.572975, 56.990448, 58.622322>,  <61.597038, 56.902588, 58.400284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.572975, 56.990448, 58.622322>,  <61.532871, 57.136879, 58.992390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.572975, 56.990448, 58.622322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947745, 0.318183, -0.023198,
		0.302864, -0.874496, 0.378853,
		0.100258, -0.366082, -0.925166,
		61.603054, 56.880623, 58.344772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.928146, 56.521584, 58.784271>,  <61.532871, 57.136879, 58.992390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.928146, 56.521584, 58.784271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.939835, 56.804184, 58.501427>,  <61.946846, 56.973743, 58.331722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.939835, 56.804184, 58.501427>,  <61.928146, 56.521584, 58.784271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.939835, 56.804184, 58.501427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949003, 0.202550, 0.241594,
		0.313911, -0.678108, -0.664552,
		0.029222, 0.706501, -0.707109,
		61.948601, 57.016132, 58.289295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.449619, 56.513779, 58.395184>,  <61.928146, 56.521584, 58.784271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.449619, 56.513779, 58.395184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.351227, 56.899849, 58.359558>,  <62.292191, 57.131493, 58.338184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.351227, 56.899849, 58.359558>,  <62.449619, 56.513779, 58.395184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.351227, 56.899849, 58.359558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963535, 0.253473, 0.085742,
		0.105331, -0.064726, -0.992329,
		-0.245979, 0.965175, -0.089065,
		62.277431, 57.189400, 58.332840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.777493, 56.867867, 57.777412>,  <62.449619, 56.513779, 58.395184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.777493, 56.867867, 57.777412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.699333, 57.098080, 58.095047>,  <62.652439, 57.236210, 58.285629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.699333, 57.098080, 58.095047>,  <62.777493, 56.867867, 57.777412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.699333, 57.098080, 58.095047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980525, 0.130996, 0.146327,
		-0.019806, 0.807216, -0.589924,
		-0.195395, 0.575537, 0.794090,
		62.640717, 57.270741, 58.333275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.882000, 57.586567, 57.676739>,  <62.777493, 56.867867, 57.777412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.882000, 57.586567, 57.676739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.950470, 57.435196, 58.040604>,  <62.991550, 57.344376, 58.258923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.950470, 57.435196, 58.040604>,  <62.882000, 57.586567, 57.676739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.950470, 57.435196, 58.040604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943888, 0.327672, -0.041302,
		-0.282443, 0.865694, 0.413281,
		0.171176, -0.378425, 0.909667,
		63.001823, 57.321667, 58.313503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.299824, 57.984291, 58.072735>,  <62.882000, 57.586567, 57.676739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.299824, 57.984291, 58.072735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.356018, 57.621838, 58.232323>,  <63.389732, 57.404366, 58.328075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.356018, 57.621838, 58.232323>,  <63.299824, 57.984291, 58.072735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.356018, 57.621838, 58.232323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937602, 0.251212, 0.240407,
		-0.318069, 0.340303, 0.884888,
		0.140484, -0.906138, 0.398971,
		63.398163, 57.349995, 58.352013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.294380, 57.964085, 58.827709>,  <63.299824, 57.984291, 58.072735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.294380, 57.964085, 58.827709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.537796, 57.707649, 58.640648>,  <63.683846, 57.553787, 58.528412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.537796, 57.707649, 58.640648>,  <63.294380, 57.964085, 58.827709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.537796, 57.707649, 58.640648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793450, 0.483382, 0.369836,
		-0.011042, -0.596115, 0.802824,
		0.608535, -0.641084, -0.467650,
		63.720356, 57.515324, 58.500355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.728935, 57.774158, 59.351963>,  <63.294380, 57.964085, 58.827709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.728935, 57.774158, 59.351963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.921715, 57.651764, 59.023552>,  <64.037384, 57.578327, 58.826504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.921715, 57.651764, 59.023552>,  <63.728935, 57.774158, 59.351963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.921715, 57.651764, 59.023552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872204, 0.256902, 0.416246,
		0.083559, -0.916718, 0.390699,
		0.481952, -0.305988, -0.821032,
		64.066299, 57.559967, 58.777241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.247871, 57.312202, 59.579067>,  <63.728935, 57.774158, 59.351963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.247871, 57.312202, 59.579067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.326942, 57.523560, 59.248802>,  <64.374390, 57.650372, 59.050644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.326942, 57.523560, 59.248802>,  <64.247871, 57.312202, 59.579067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.326942, 57.523560, 59.248802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872329, 0.289410, 0.394062,
		0.447175, -0.798151, -0.403719,
		0.197681, 0.528390, -0.825667,
		64.386246, 57.682076, 59.001102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.894402, 57.070095, 59.110844>,  <64.247871, 57.312202, 59.579067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.894402, 57.070095, 59.110844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.813652, 57.461784, 59.118523>,  <64.765198, 57.696796, 59.123131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.813652, 57.461784, 59.118523>,  <64.894402, 57.070095, 59.110844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.813652, 57.461784, 59.118523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917036, 0.182103, 0.354802,
		0.343933, 0.089236, -0.934744,
		-0.201881, 0.979222, 0.019201,
		64.753090, 57.755550, 59.124283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.187935, 57.584091, 58.777641>,  <64.894402, 57.070095, 59.110844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.187935, 57.584091, 58.777641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.297432, 57.965523, 58.827850>,  <65.363129, 58.194382, 58.857975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.297432, 57.965523, 58.827850>,  <65.187935, 57.584091, 58.777641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.297432, 57.965523, 58.827850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956784, -0.283294, 0.065641,
		0.098153, 0.102129, -0.989917,
		0.273733, 0.953580, 0.125521,
		65.379555, 58.251598, 58.865505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.742218, 57.703545, 58.342022>,  <65.187935, 57.584091, 58.777641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.742218, 57.703545, 58.342022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.747284, 57.984604, 58.626595>,  <65.750320, 58.153240, 58.797337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.747284, 57.984604, 58.626595>,  <65.742218, 57.703545, 58.342022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.747284, 57.984604, 58.626595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976957, -0.160293, 0.140930,
		0.213061, 0.693252, -0.688481,
		0.012658, 0.702643, 0.711429,
		65.751083, 58.195396, 58.840023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.321724, 58.147362, 58.226063>,  <65.742218, 57.703545, 58.342022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.321724, 58.147362, 58.226063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.206947, 58.138878, 58.609146>,  <66.138084, 58.133785, 58.838997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.206947, 58.138878, 58.609146>,  <66.321724, 58.147362, 58.226063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.206947, 58.138878, 58.609146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950359, -0.131898, 0.281817,
		0.120342, 0.991036, 0.058008,
		-0.286942, -0.021214, 0.957713,
		66.120865, 58.132515, 58.896461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.399101, 58.854633, 58.632835>,  <66.321724, 58.147362, 58.226063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.399101, 58.854633, 58.632835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.448250, 58.498978, 58.809166>,  <66.477737, 58.285583, 58.914967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.448250, 58.498978, 58.809166>,  <66.399101, 58.854633, 58.632835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.448250, 58.498978, 58.809166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923490, 0.265101, 0.277287,
		-0.363412, 0.373029, 0.853687,
		0.122877, -0.889141, 0.440829,
		66.485115, 58.232235, 58.941414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.559540, 58.983246, 59.322979>,  <66.399101, 58.854633, 58.632835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.559540, 58.983246, 59.322979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.747551, 58.666145, 59.167740>,  <66.860359, 58.475887, 59.074596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.747551, 58.666145, 59.167740>,  <66.559540, 58.983246, 59.322979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.747551, 58.666145, 59.167740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880188, 0.388162, 0.273130,
		-0.065878, -0.469980, 0.880215,
		0.470032, -0.792748, -0.388099,
		66.888557, 58.428322, 59.051311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.110611, 58.747295, 59.703892>,  <66.559540, 58.983246, 59.322979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.110611, 58.747295, 59.703892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.199203, 58.668648, 59.321838>,  <67.252357, 58.621460, 59.092606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.199203, 58.668648, 59.321838>,  <67.110611, 58.747295, 59.703892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.199203, 58.668648, 59.321838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908289, 0.398061, 0.128680,
		0.354902, -0.896041, 0.266750,
		0.221485, -0.196617, -0.955136,
		67.265648, 58.609661, 59.035297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.681198, 58.268417, 59.608341>,  <67.110611, 58.747295, 59.703892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.681198, 58.268417, 59.608341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.681343, 58.556267, 59.330597>,  <67.681435, 58.728977, 59.163952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.681343, 58.556267, 59.330597>,  <67.681198, 58.268417, 59.608341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.681343, 58.556267, 59.330597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968984, 0.171333, 0.178084,
		0.247121, -0.672892, -0.697242,
		0.000370, 0.719625, -0.694362,
		67.681458, 58.772156, 59.122288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.122864, 58.076992, 59.107552>,  <67.681198, 58.268417, 59.608341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.122864, 58.076992, 59.107552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.092552, 58.474648, 59.138390>,  <68.074364, 58.713242, 59.156895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.092552, 58.474648, 59.138390>,  <68.122864, 58.076992, 59.107552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.092552, 58.474648, 59.138390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991111, 0.066626, 0.115153,
		0.109341, 0.085141, -0.990351,
		-0.075787, 0.994139, 0.077099,
		68.069817, 58.772888, 59.161518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.786751, 58.168945, 58.802959>,  <68.122864, 58.076992, 59.107552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.786751, 58.168945, 58.802959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.661896, 58.495590, 58.997162>,  <68.586983, 58.691578, 59.113686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.661896, 58.495590, 58.997162>,  <68.786751, 58.168945, 58.802959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.661896, 58.495590, 58.997162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909984, 0.110162, 0.399741,
		0.272947, 0.566580, -0.777487,
		-0.312135, 0.816610, 0.485511,
		68.568253, 58.740574, 59.142815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.050720, 58.895279, 58.557755>,  <68.786751, 58.168945, 58.802959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.050720, 58.895279, 58.557755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.985229, 58.839188, 58.948349>,  <68.945938, 58.805534, 59.182705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.985229, 58.839188, 58.948349>,  <69.050720, 58.895279, 58.557755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.985229, 58.839188, 58.948349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973945, 0.134485, 0.182604,
		-0.156929, 0.980943, 0.114557,
		-0.163718, -0.140228, 0.976490,
		68.936111, 58.797119, 59.241295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.474884, 59.430016, 58.987274>,  <69.050720, 58.895279, 58.557755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.474884, 59.430016, 58.987274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.411537, 59.103714, 59.209793>,  <69.373528, 58.907932, 59.343304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.411537, 59.103714, 59.209793>,  <69.474884, 59.430016, 58.987274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.411537, 59.103714, 59.209793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901532, 0.110308, 0.418416,
		-0.402688, 0.567787, 0.717956,
		-0.158375, -0.815751, 0.556298,
		69.364021, 58.858990, 59.376682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.517654, 59.571922, 59.703842>,  <69.474884, 59.430016, 58.987274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.517654, 59.571922, 59.703842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.656044, 59.200516, 59.649933>,  <69.739082, 58.977673, 59.617588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.656044, 59.200516, 59.649933>,  <69.517654, 59.571922, 59.703842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.656044, 59.200516, 59.649933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865879, 0.260664, 0.426976,
		-0.361322, -0.264420, 0.894164,
		0.345977, -0.928513, -0.134772,
		69.759834, 58.921963, 59.609501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.931839, 59.534267, 60.243530>,  <69.517654, 59.571922, 59.703842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.931839, 59.534267, 60.243530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.056404, 59.238045, 60.005341>,  <70.131142, 59.060310, 59.862427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.056404, 59.238045, 60.005341>,  <69.931839, 59.534267, 60.243530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.056404, 59.238045, 60.005341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897447, 0.023185, 0.440513,
		-0.312420, -0.671591, 0.671833,
		0.311421, -0.740559, -0.595474,
		70.149834, 59.015877, 59.826698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.382416, 59.158859, 60.594772>,  <69.931839, 59.534267, 60.243530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.382416, 59.158859, 60.594772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.467888, 58.979500, 60.247604>,  <70.519173, 58.871883, 60.039303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.467888, 58.979500, 60.247604>,  <70.382416, 59.158859, 60.594772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.467888, 58.979500, 60.247604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963499, -0.049955, 0.263011,
		-0.161291, -0.892435, 0.421360,
		0.213671, -0.448401, -0.867918,
		70.531990, 58.844978, 59.987228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.830841, 58.621807, 60.692871>,  <70.382416, 59.158859, 60.594772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.830841, 58.621807, 60.692871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.873634, 58.752014, 60.317085>,  <70.899307, 58.830139, 60.091614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.873634, 58.752014, 60.317085>,  <70.830841, 58.621807, 60.692871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.873634, 58.752014, 60.317085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993603, -0.000626, 0.112928,
		0.036172, -0.945535, -0.323503,
		0.106980, 0.325519, -0.939464,
		70.905731, 58.849670, 60.035248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.236748, 58.113914, 60.302238>,  <70.830841, 58.621807, 60.692871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.236748, 58.113914, 60.302238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.317093, 58.496925, 60.219490>,  <71.365295, 58.726730, 60.169842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.317093, 58.496925, 60.219490>,  <71.236748, 58.113914, 60.302238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.317093, 58.496925, 60.219490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914827, -0.107819, 0.389188,
		0.350354, -0.267424, -0.897629,
		0.200860, 0.957528, -0.206872,
		71.377350, 58.784184, 60.157429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.944824, 58.127190, 60.039276>,  <71.236748, 58.113914, 60.302238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.944824, 58.127190, 60.039276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.865074, 58.486870, 60.195061>,  <71.817223, 58.702679, 60.288532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.865074, 58.486870, 60.195061>,  <71.944824, 58.127190, 60.039276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.865074, 58.486870, 60.195061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796346, -0.082922, 0.599130,
		0.571035, 0.429600, -0.699545,
		-0.199379, 0.899204, 0.389462,
		71.805260, 58.756630, 60.311901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.529037, 58.566746, 59.928154>,  <71.944824, 58.127190, 60.039276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.529037, 58.566746, 59.928154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.331917, 58.651779, 60.265663>,  <72.213646, 58.702801, 60.468170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.331917, 58.651779, 60.265663>,  <72.529037, 58.566746, 59.928154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.331917, 58.651779, 60.265663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853889, -0.068410, 0.515939,
		0.167403, 0.974745, -0.147810,
		-0.492798, 0.212583, 0.843776,
		72.184074, 58.715553, 60.518795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.007545, 58.005596, 60.291161>,  <72.529037, 58.566746, 59.928154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.007545, 58.005596, 60.291161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.964966, 57.618988, 60.197769>,  <72.939415, 57.387024, 60.141735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.964966, 57.618988, 60.197769>,  <73.007545, 58.005596, 60.291161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.964966, 57.618988, 60.197769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472547, 0.157422, -0.867132,
		0.874853, -0.202636, 0.439967,
		-0.106451, -0.966518, -0.233476,
		72.933029, 57.329033, 60.127728>
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
