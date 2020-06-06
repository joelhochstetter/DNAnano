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
	<24.321974, 34.681831, 34.744328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382805, 34.823982, 35.113235>,  <24.419304, 34.909275, 35.334579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382805, 34.823982, 35.113235>,  <24.321974, 34.681831, 34.744328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382805, 34.823982, 35.113235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669588, 0.723404, -0.168341,
		-0.726997, -0.591939, 0.347970,
		0.152076, 0.355380, 0.922268,
		24.428427, 34.930595, 35.389915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867973, 34.959244, 34.359428>,  <24.321974, 34.681831, 34.744328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867973, 34.959244, 34.359428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955219, 35.263470, 34.114819>,  <25.007566, 35.446007, 33.968052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955219, 35.263470, 34.114819>,  <24.867973, 34.959244, 34.359428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.955219, 35.263470, 34.114819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588669, -0.602319, -0.539149,
		-0.778392, -0.242391, -0.579095,
		0.218115, 0.760565, -0.611528,
		25.020653, 35.491638, 33.931358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678425, 34.884754, 33.630875>,  <24.867973, 34.959244, 34.359428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678425, 34.884754, 33.630875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991354, 35.133583, 33.618237>,  <25.179111, 35.282879, 33.610653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991354, 35.133583, 33.618237>,  <24.678425, 34.884754, 33.630875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.991354, 35.133583, 33.618237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482418, -0.637224, -0.601015,
		-0.394006, 0.454946, -0.798613,
		0.782325, 0.622069, -0.031596,
		25.226051, 35.320202, 33.608757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.878038, 34.786407, 33.020325>,  <24.678425, 34.884754, 33.630875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.878038, 34.786407, 33.020325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187267, 34.964520, 33.201027>,  <25.372805, 35.071388, 33.309448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187267, 34.964520, 33.201027>,  <24.878038, 34.786407, 33.020325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187267, 34.964520, 33.201027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634212, -0.529679, -0.563218,
		-0.011507, 0.721916, -0.691885,
		0.773073, 0.445283, 0.451753,
		25.419189, 35.098103, 33.336552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.323984, 35.016506, 32.587425>,  <24.878038, 34.786407, 33.020325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.323984, 35.016506, 32.587425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547884, 34.952084, 32.912571>,  <25.682224, 34.913429, 33.107658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547884, 34.952084, 32.912571>,  <25.323984, 35.016506, 32.587425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547884, 34.952084, 32.912571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641126, -0.537314, -0.547952,
		0.525014, 0.827861, -0.197500,
		0.559748, -0.161060, 0.812861,
		25.715809, 34.903767, 33.156429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899557, 34.909279, 32.279415>,  <25.323984, 35.016506, 32.587425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899557, 34.909279, 32.279415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959249, 34.747456, 32.640316>,  <25.995064, 34.650360, 32.856857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959249, 34.747456, 32.640316>,  <25.899557, 34.909279, 32.279415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959249, 34.747456, 32.640316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670895, -0.628881, -0.392949,
		0.726382, 0.663956, 0.177570,
		0.149230, -0.404562, 0.902253,
		26.004019, 34.626087, 32.910992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650900, 34.697014, 32.364601>,  <25.899557, 34.909279, 32.279415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650900, 34.697014, 32.364601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465635, 34.475044, 32.641018>,  <26.354477, 34.341862, 32.806870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465635, 34.475044, 32.641018>,  <26.650900, 34.697014, 32.364601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465635, 34.475044, 32.641018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576167, -0.780996, -0.240989,
		0.673434, 0.286541, 0.681455,
		-0.463160, -0.554922, 0.691045,
		26.326687, 34.308567, 32.848331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134991, 34.500912, 33.016106>,  <26.650900, 34.697014, 32.364601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134991, 34.500912, 33.016106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865574, 34.215504, 32.938923>,  <26.703924, 34.044258, 32.892612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865574, 34.215504, 32.938923>,  <27.134991, 34.500912, 33.016106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865574, 34.215504, 32.938923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738995, -0.655350, -0.156213,
		-0.014994, -0.247811, 0.968692,
		-0.673544, -0.713516, -0.192957,
		26.663511, 34.001450, 32.881035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304197, 34.072639, 33.465137>,  <27.134991, 34.500912, 33.016106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304197, 34.072639, 33.465137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117659, 33.854187, 33.186783>,  <27.005735, 33.723118, 33.019768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117659, 33.854187, 33.186783>,  <27.304197, 34.072639, 33.465137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117659, 33.854187, 33.186783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840313, -0.519291, -0.155598,
		-0.276392, -0.657328, 0.701090,
		-0.466349, -0.546129, -0.695889,
		26.977755, 33.690350, 32.978016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510681, 33.307842, 33.689568>,  <27.304197, 34.072639, 33.465137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510681, 33.307842, 33.689568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393778, 33.352150, 33.309608>,  <27.323635, 33.378735, 33.081631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393778, 33.352150, 33.309608>,  <27.510681, 33.307842, 33.689568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393778, 33.352150, 33.309608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797568, -0.519849, -0.306012,
		-0.527703, -0.847046, 0.063580,
		-0.292258, 0.110774, -0.949903,
		27.306101, 33.385380, 33.024639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623619, 32.566631, 33.311321>,  <27.510681, 33.307842, 33.689568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623619, 32.566631, 33.311321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626745, 32.869331, 33.049858>,  <27.628622, 33.050953, 32.892979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626745, 32.869331, 33.049858>,  <27.623619, 32.566631, 33.311321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626745, 32.869331, 33.049858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807279, -0.390535, -0.442474,
		-0.590119, -0.524226, -0.613960,
		0.007816, 0.756749, -0.653659,
		27.629089, 33.096355, 32.853760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876015, 32.161659, 32.780548>,  <27.623619, 32.566631, 33.311321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876015, 32.161659, 32.780548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920637, 32.558239, 32.753452>,  <27.947411, 32.796185, 32.737194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920637, 32.558239, 32.753452>,  <27.876015, 32.161659, 32.780548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920637, 32.558239, 32.753452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970306, -0.123390, -0.208043,
		-0.214622, -0.042520, -0.975771,
		0.111554, 0.991447, -0.067740,
		27.954103, 32.855675, 32.733131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392998, 32.390438, 32.350750>,  <27.876015, 32.161659, 32.780548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392998, 32.390438, 32.350750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363274, 32.696960, 32.606018>,  <28.345440, 32.880875, 32.759178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363274, 32.696960, 32.606018>,  <28.392998, 32.390438, 32.350750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363274, 32.696960, 32.606018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921137, 0.297928, -0.250489,
		-0.382079, 0.569227, -0.728008,
		-0.074308, 0.766303, 0.638168,
		28.340981, 32.926849, 32.797470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559755, 32.972328, 32.003414>,  <28.392998, 32.390438, 32.350750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559755, 32.972328, 32.003414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672205, 32.990864, 32.386833>,  <28.739676, 33.001987, 32.616886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672205, 32.990864, 32.386833>,  <28.559755, 32.972328, 32.003414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672205, 32.990864, 32.386833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930793, 0.230020, -0.284105,
		-0.233652, 0.972082, 0.021530,
		0.281126, 0.046341, 0.958552,
		28.756542, 33.004765, 32.674400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702744, 33.743607, 31.989510>,  <28.559755, 32.972328, 32.003414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702744, 33.743607, 31.989510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855947, 33.556042, 32.307861>,  <28.947870, 33.443504, 32.498871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855947, 33.556042, 32.307861>,  <28.702744, 33.743607, 31.989510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855947, 33.556042, 32.307861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886500, 0.428767, -0.174003,
		-0.259654, 0.772192, 0.579913,
		0.383011, -0.468912, 0.795879,
		28.970850, 33.415367, 32.546623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116512, 34.031277, 32.341072>,  <28.702744, 33.743607, 31.989510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116512, 34.031277, 32.341072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017803, 33.644234, 32.319733>,  <27.958578, 33.412010, 32.306931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017803, 33.644234, 32.319733>,  <28.116512, 34.031277, 32.341072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017803, 33.644234, 32.319733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910263, 0.212561, 0.355302,
		-0.332453, 0.136237, -0.933228,
		-0.246773, -0.967604, -0.053345,
		27.943771, 33.353954, 32.303730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517864, 33.809357, 31.859331>,  <28.116512, 34.031277, 32.341072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517864, 33.809357, 31.859331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526814, 33.552326, 32.165688>,  <27.532183, 33.398106, 32.349503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526814, 33.552326, 32.165688>,  <27.517864, 33.809357, 31.859331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526814, 33.552326, 32.165688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956906, 0.208100, 0.202547,
		-0.289534, -0.737418, -0.610233,
		0.022372, -0.642580, 0.765892,
		27.533525, 33.359550, 32.395454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885803, 33.552338, 31.809906>,  <27.517864, 33.809357, 31.859331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885803, 33.552338, 31.809906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032166, 33.501476, 32.178677>,  <27.119982, 33.470959, 32.399940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032166, 33.501476, 32.178677>,  <26.885803, 33.552338, 31.809906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032166, 33.501476, 32.178677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919711, 0.102051, 0.379100,
		-0.142287, -0.986619, -0.079603,
		0.365904, -0.127153, 0.921926,
		27.141937, 33.463329, 32.455254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462217, 32.966743, 32.107639>,  <26.885803, 33.552338, 31.809906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462217, 32.966743, 32.107639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608337, 33.227024, 32.373913>,  <26.696009, 33.383194, 32.533676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608337, 33.227024, 32.373913>,  <26.462217, 32.966743, 32.107639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608337, 33.227024, 32.373913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930752, 0.243022, 0.273205,
		0.015999, -0.719392, 0.694420,
		0.365300, 0.650704, 0.665688,
		26.717928, 33.422234, 32.573620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924635, 32.961163, 32.666622>,  <26.462217, 32.966743, 32.107639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924635, 32.961163, 32.666622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162985, 33.277466, 32.722672>,  <26.305996, 33.467247, 32.756302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162985, 33.277466, 32.722672>,  <25.924635, 32.961163, 32.666622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162985, 33.277466, 32.722672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787283, 0.540765, 0.296241,
		0.158481, -0.286840, 0.944778,
		0.595877, 0.790756, 0.140124,
		26.341747, 33.514694, 32.764709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630619, 33.301716, 33.156685>,  <25.924635, 32.961163, 32.666622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630619, 33.301716, 33.156685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929003, 33.554283, 33.071976>,  <26.108034, 33.705826, 33.021149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929003, 33.554283, 33.071976>,  <25.630619, 33.301716, 33.156685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929003, 33.554283, 33.071976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437331, 0.704239, 0.559275,
		0.502277, -0.324583, 0.801476,
		0.745962, 0.631421, -0.211773,
		26.152792, 33.743710, 33.008442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859701, 33.613075, 33.798641>,  <25.630619, 33.301716, 33.156685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859701, 33.613075, 33.798641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001757, 33.845882, 33.506031>,  <26.086990, 33.985565, 33.330463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001757, 33.845882, 33.506031>,  <25.859701, 33.613075, 33.798641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001757, 33.845882, 33.506031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327202, 0.810432, 0.485941,
		0.875679, 0.066781, 0.478253,
		0.355141, 0.582013, -0.731529,
		26.108299, 34.020485, 33.286572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163294, 34.172047, 34.153435>,  <25.859701, 33.613075, 33.798641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163294, 34.172047, 34.153435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116581, 34.316334, 33.783298>,  <26.088552, 34.402905, 33.561218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116581, 34.316334, 33.783298>,  <26.163294, 34.172047, 34.153435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116581, 34.316334, 33.783298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226051, 0.897603, 0.378432,
		0.967090, 0.253368, -0.023286,
		-0.116784, 0.360714, -0.925336,
		26.081545, 34.424549, 33.505699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213999, 34.794941, 34.751083>,  <26.163294, 34.172047, 34.153435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213999, 34.794941, 34.751083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028675, 34.497578, 34.944035>,  <25.917480, 34.319160, 35.059807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028675, 34.497578, 34.944035>,  <26.213999, 34.794941, 34.751083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028675, 34.497578, 34.944035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703949, -0.021930, -0.709912,
		0.538332, -0.668479, -0.513161,
		-0.463308, -0.743408, 0.482381,
		25.889683, 34.274555, 35.088749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562283, 34.827675, 34.129292>,  <26.213999, 34.794941, 34.751083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562283, 34.827675, 34.129292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274790, 34.818855, 33.851318>,  <26.102293, 34.813564, 33.684532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274790, 34.818855, 33.851318>,  <26.562283, 34.827675, 34.129292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274790, 34.818855, 33.851318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330735, 0.890017, 0.313823,
		0.611586, 0.455394, -0.646976,
		-0.718733, -0.022048, -0.694937,
		26.059170, 34.812241, 33.642838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359070, 35.409573, 34.104347>,  <26.562283, 34.827675, 34.129292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359070, 35.409573, 34.104347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052721, 35.304928, 33.869400>,  <25.868912, 35.242142, 33.728432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052721, 35.304928, 33.869400>,  <26.359070, 35.409573, 34.104347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052721, 35.304928, 33.869400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428185, 0.888986, 0.162363,
		0.479684, 0.375851, -0.792868,
		-0.765873, -0.261610, -0.587366,
		25.822960, 35.226444, 33.693192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285484, 35.975098, 33.760109>,  <26.359070, 35.409573, 34.104347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285484, 35.975098, 33.760109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949299, 35.762997, 33.715473>,  <25.747587, 35.635735, 33.688690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949299, 35.762997, 33.715473>,  <26.285484, 35.975098, 33.760109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949299, 35.762997, 33.715473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535404, 0.844352, 0.020323,
		0.083443, 0.076826, -0.993547,
		-0.840464, -0.530253, -0.111588,
		25.697159, 35.603920, 33.681995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491913, 36.459141, 34.270512>,  <26.285484, 35.975098, 33.760109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491913, 36.459141, 34.270512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673285, 36.326656, 34.601498>,  <26.782106, 36.247166, 34.800091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673285, 36.326656, 34.601498>,  <26.491913, 36.459141, 34.270512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673285, 36.326656, 34.601498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827939, 0.500288, -0.253434,
		-0.330032, 0.800006, 0.501068,
		0.453427, -0.331212, 0.827467,
		26.809313, 36.227291, 34.849739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893602, 37.042038, 34.622234>,  <26.491913, 36.459141, 34.270512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893602, 37.042038, 34.622234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048754, 36.674973, 34.656734>,  <27.141844, 36.454731, 34.677437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048754, 36.674973, 34.656734>,  <26.893602, 37.042038, 34.622234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048754, 36.674973, 34.656734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881025, 0.341631, -0.327236,
		0.270827, 0.202918, 0.940998,
		0.387876, -0.917667, 0.086252,
		27.165117, 36.399673, 34.682610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407026, 37.135216, 34.950951>,  <26.893602, 37.042038, 34.622234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407026, 37.135216, 34.950951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482632, 36.812714, 34.726727>,  <27.527996, 36.619213, 34.592194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482632, 36.812714, 34.726727>,  <27.407026, 37.135216, 34.950951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482632, 36.812714, 34.726727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858545, 0.412761, -0.304184,
		0.476626, -0.423769, 0.770226,
		0.189016, -0.806256, -0.560557,
		27.539337, 36.570835, 34.558559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081924, 36.837498, 35.181187>,  <27.407026, 37.135216, 34.950951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081924, 36.837498, 35.181187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011801, 36.770161, 34.793182>,  <27.969727, 36.729759, 34.560379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011801, 36.770161, 34.793182>,  <28.081924, 36.837498, 35.181187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011801, 36.770161, 34.793182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870399, 0.433929, -0.232616,
		0.460077, -0.885079, 0.070457,
		-0.175311, -0.168347, -0.970013,
		27.959208, 36.719658, 34.502178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725630, 36.385113, 34.825863>,  <28.081924, 36.837498, 35.181187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725630, 36.385113, 34.825863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514303, 36.642349, 34.604118>,  <28.387506, 36.796692, 34.471069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514303, 36.642349, 34.604118>,  <28.725630, 36.385113, 34.825863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514303, 36.642349, 34.604118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814060, 0.569171, -0.115545,
		0.241222, -0.512329, -0.824216,
		-0.528317, 0.643089, -0.554363,
		28.355808, 36.835278, 34.437809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238039, 36.558784, 34.370552>,  <28.725630, 36.385113, 34.825863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238039, 36.558784, 34.370552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950500, 36.836563, 34.357876>,  <28.777977, 37.003231, 34.350269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950500, 36.836563, 34.357876>,  <29.238039, 36.558784, 34.370552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950500, 36.836563, 34.357876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687979, 0.717208, 0.110896,
		0.099737, 0.057917, -0.993327,
		-0.718845, 0.694448, -0.031687,
		28.734846, 37.044899, 34.348370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408386, 37.044617, 33.827034>,  <29.238039, 36.558784, 34.370552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408386, 37.044617, 33.827034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174828, 37.211018, 34.105892>,  <29.034693, 37.310856, 34.273205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174828, 37.211018, 34.105892>,  <29.408386, 37.044617, 33.827034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174828, 37.211018, 34.105892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684511, 0.713971, 0.147274,
		-0.436475, 0.563195, -0.701641,
		-0.583896, 0.416000, 0.697144,
		28.999659, 37.335819, 34.315037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933680, 37.281639, 33.305061>,  <29.408386, 37.044617, 33.827034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933680, 37.281639, 33.305061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934719, 37.065926, 32.968212>,  <28.935343, 36.936497, 32.766102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934719, 37.065926, 32.968212>,  <28.933680, 37.281639, 33.305061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934719, 37.065926, 32.968212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989399, 0.120891, -0.080471,
		0.145201, 0.833400, -0.533255,
		0.002599, -0.539286, -0.842119,
		28.935499, 36.904140, 32.715576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771893, 37.686676, 32.683334>,  <28.933680, 37.281639, 33.305061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771893, 37.686676, 32.683334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660675, 37.304913, 32.726780>,  <28.593945, 37.075855, 32.752850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660675, 37.304913, 32.726780>,  <28.771893, 37.686676, 32.683334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660675, 37.304913, 32.726780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930125, 0.295747, 0.217719,
		-0.239916, -0.040493, -0.969949,
		-0.278043, -0.954408, 0.108617,
		28.577263, 37.018589, 32.759365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090561, 38.075001, 33.333256>,  <28.771893, 37.686676, 32.683334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090561, 38.075001, 33.333256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029453, 38.022282, 33.725029>,  <28.992788, 37.990650, 33.960094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029453, 38.022282, 33.725029>,  <29.090561, 38.075001, 33.333256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029453, 38.022282, 33.725029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643207, 0.739167, 0.199795,
		-0.750298, 0.660500, -0.028145,
		-0.152768, -0.131802, 0.979433,
		28.983624, 37.982742, 34.018860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948635, 38.739216, 33.581280>,  <29.090561, 38.075001, 33.333256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948635, 38.739216, 33.581280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084862, 38.523846, 33.889595>,  <29.166597, 38.394623, 34.074585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084862, 38.523846, 33.889595>,  <28.948635, 38.739216, 33.581280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084862, 38.523846, 33.889595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673769, 0.711547, 0.199342,
		-0.655783, 0.451445, 0.605100,
		0.340565, -0.538422, 0.770790,
		29.187031, 38.362320, 34.120831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020727, 39.116524, 34.104710>,  <28.948635, 38.739216, 33.581280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020727, 39.116524, 34.104710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267740, 38.828579, 34.231483>,  <29.415949, 38.655811, 34.307549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267740, 38.828579, 34.231483>,  <29.020727, 39.116524, 34.104710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267740, 38.828579, 34.231483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728196, 0.675557, 0.115555,
		-0.297294, 0.159435, 0.941380,
		0.617533, -0.719863, 0.316939,
		29.452999, 38.612621, 34.326565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259113, 39.415981, 34.638031>,  <29.020727, 39.116524, 34.104710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259113, 39.415981, 34.638031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513670, 39.126839, 34.530334>,  <29.666405, 38.953354, 34.465717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513670, 39.126839, 34.530334>,  <29.259113, 39.415981, 34.638031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513670, 39.126839, 34.530334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760736, 0.645896, 0.064023,
		0.127620, -0.245562, 0.960943,
		0.636391, -0.722854, -0.269237,
		29.704588, 38.909981, 34.449562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894365, 39.350548, 34.180122>,  <29.259113, 39.415981, 34.638031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894365, 39.350548, 34.180122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036892, 39.336601, 34.553608>,  <30.122408, 39.328232, 34.777699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036892, 39.336601, 34.553608>,  <29.894365, 39.350548, 34.180122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036892, 39.336601, 34.553608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273216, -0.959516, 0.068429,
		0.893528, -0.279488, -0.351416,
		0.356315, -0.034869, 0.933715,
		30.143787, 39.326141, 34.833721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393383, 38.795891, 34.269161>,  <29.894365, 39.350548, 34.180122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393383, 38.795891, 34.269161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202639, 38.878609, 34.610886>,  <30.088192, 38.928238, 34.815918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202639, 38.878609, 34.610886>,  <30.393383, 38.795891, 34.269161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202639, 38.878609, 34.610886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277952, -0.957533, 0.076636,
		0.833876, -0.200912, 0.514087,
		-0.476859, 0.206796, 0.854308,
		30.059582, 38.940647, 34.867176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593422, 38.165508, 34.560814>,  <30.393383, 38.795891, 34.269161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593422, 38.165508, 34.560814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261757, 38.356304, 34.677414>,  <30.062757, 38.470783, 34.747375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261757, 38.356304, 34.677414>,  <30.593422, 38.165508, 34.560814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261757, 38.356304, 34.677414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513493, -0.855999, -0.059920,
		0.220944, -0.199367, 0.954692,
		-0.829162, 0.476988, 0.291501,
		30.013008, 38.499401, 34.764866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055609, 37.619976, 34.688354>,  <30.593422, 38.165508, 34.560814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055609, 37.619976, 34.688354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852633, 37.958580, 34.623947>,  <29.730846, 38.161743, 34.585304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852633, 37.958580, 34.623947>,  <30.055609, 37.619976, 34.688354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852633, 37.958580, 34.623947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840554, -0.527405, -0.123747,
		-0.189673, 0.072548, 0.979163,
		-0.507439, 0.846511, -0.161015,
		29.700401, 38.212532, 34.575642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550587, 37.701160, 35.167210>,  <30.055609, 37.619976, 34.688354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550587, 37.701160, 35.167210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423594, 37.911064, 34.851276>,  <29.347399, 38.037006, 34.661716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423594, 37.911064, 34.851276>,  <29.550587, 37.701160, 35.167210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423594, 37.911064, 34.851276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794776, -0.601579, -0.080217,
		-0.517240, 0.602271, 0.608057,
		-0.317482, 0.524760, -0.789831,
		29.328348, 38.068493, 34.614326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790613, 38.013298, 35.269268>,  <29.550587, 37.701160, 35.167210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790613, 38.013298, 35.269268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857500, 37.976280, 34.876640>,  <28.897633, 37.954071, 34.641064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857500, 37.976280, 34.876640>,  <28.790613, 38.013298, 35.269268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857500, 37.976280, 34.876640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721834, -0.689636, -0.057949,
		-0.671561, 0.718219, -0.182119,
		0.167216, -0.092543, -0.981567,
		28.907665, 37.948517, 34.582169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144274, 38.108311, 34.924362>,  <28.790613, 38.013298, 35.269268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144274, 38.108311, 34.924362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367113, 37.911636, 34.656666>,  <28.500816, 37.793633, 34.496048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367113, 37.911636, 34.656666>,  <28.144274, 38.108311, 34.924362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367113, 37.911636, 34.656666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733076, -0.669808, -0.118135,
		-0.390179, 0.556419, -0.733593,
		0.557100, -0.491686, -0.669242,
		28.534243, 37.764130, 34.455894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829344, 37.958595, 34.210773>,  <28.144274, 38.108311, 34.924362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829344, 37.958595, 34.210773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116465, 37.680153, 34.216339>,  <28.288738, 37.513088, 34.219681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116465, 37.680153, 34.216339>,  <27.829344, 37.958595, 34.210773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116465, 37.680153, 34.216339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681225, -0.706307, -0.192517,
		0.143844, 0.128708, -0.981195,
		0.717803, -0.696107, 0.013918,
		28.331806, 37.471321, 34.220516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775148, 37.701450, 33.629829>,  <27.829344, 37.958595, 34.210773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775148, 37.701450, 33.629829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932968, 37.456722, 33.904057>,  <28.027660, 37.309887, 34.068592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932968, 37.456722, 33.904057>,  <27.775148, 37.701450, 33.629829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932968, 37.456722, 33.904057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750785, -0.644802, -0.143356,
		0.529766, -0.458156, -0.713751,
		0.394549, -0.611819, 0.685572,
		28.051332, 37.273178, 34.109730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875368, 37.073479, 33.242455>,  <27.775148, 37.701450, 33.629829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875368, 37.073479, 33.242455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833685, 37.028355, 33.637711>,  <27.808676, 37.001282, 33.874863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833685, 37.028355, 33.637711>,  <27.875368, 37.073479, 33.242455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833685, 37.028355, 33.637711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729072, -0.667107, -0.153044,
		0.676458, -0.736371, -0.012727,
		-0.104207, -0.112807, 0.988137,
		27.802423, 36.994511, 33.934151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636829, 36.364204, 33.417225>,  <27.875368, 37.073479, 33.242455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636829, 36.364204, 33.417225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532242, 36.587048, 33.732506>,  <27.469490, 36.720753, 33.921677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532242, 36.587048, 33.732506>,  <27.636829, 36.364204, 33.417225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532242, 36.587048, 33.732506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912220, -0.409489, -0.013180,
		0.315419, -0.722463, 0.615271,
		-0.261468, 0.557105, 0.788205,
		27.453802, 36.754181, 33.968967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170300, 35.886086, 33.275063>,  <27.636829, 36.364204, 33.417225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170300, 35.886086, 33.275063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561655, 35.953251, 33.226791>,  <28.796469, 35.993549, 33.197830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561655, 35.953251, 33.226791>,  <28.170300, 35.886086, 33.275063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561655, 35.953251, 33.226791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205928, -0.738280, 0.642290,
		0.018758, -0.653259, -0.756902,
		0.978387, 0.167915, -0.120676,
		28.855171, 36.003624, 33.190590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553205, 35.281223, 33.183556>,  <28.170300, 35.886086, 33.275063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553205, 35.281223, 33.183556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795988, 35.531719, 33.379276>,  <28.941658, 35.682018, 33.496708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795988, 35.531719, 33.379276>,  <28.553205, 35.281223, 33.183556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795988, 35.531719, 33.379276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246142, -0.733543, 0.633506,
		0.755656, -0.264073, -0.599375,
		0.606959, 0.626243, 0.489306,
		28.978075, 35.719593, 33.526070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124731, 34.943352, 33.423798>,  <28.553205, 35.281223, 33.183556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124731, 34.943352, 33.423798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089767, 35.245335, 33.683765>,  <29.068789, 35.426525, 33.839748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089767, 35.245335, 33.683765>,  <29.124731, 34.943352, 33.423798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089767, 35.245335, 33.683765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111892, -0.640849, 0.759469,
		0.989869, 0.139105, -0.028458,
		-0.087409, 0.754958, 0.649921,
		29.063545, 35.471821, 33.878742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656103, 34.826305, 33.863045>,  <29.124731, 34.943352, 33.423798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656103, 34.826305, 33.863045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383589, 35.033928, 34.069511>,  <29.220079, 35.158501, 34.193390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383589, 35.033928, 34.069511>,  <29.656103, 34.826305, 33.863045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383589, 35.033928, 34.069511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306802, -0.437739, 0.845137,
		0.664620, 0.734143, 0.138979,
		-0.681288, 0.519056, 0.516166,
		29.179203, 35.189644, 34.224361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199364, 34.536068, 34.371941>,  <29.656103, 34.826305, 33.863045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199364, 34.536068, 34.371941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311033, 34.895821, 34.237377>,  <30.378035, 35.111671, 34.156639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311033, 34.895821, 34.237377>,  <30.199364, 34.536068, 34.371941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311033, 34.895821, 34.237377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628614, -0.436013, -0.644001,
		-0.725884, -0.031686, -0.687087,
		0.279173, 0.899382, -0.336413,
		30.394785, 35.165634, 34.136452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709244, 34.314461, 34.934410>,  <30.199364, 34.536068, 34.371941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709244, 34.314461, 34.934410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504139, 34.148949, 35.235306>,  <30.381077, 34.049641, 35.415844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504139, 34.148949, 35.235306>,  <30.709244, 34.314461, 34.934410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504139, 34.148949, 35.235306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384791, -0.894021, -0.229482,
		0.767471, 0.171783, 0.617640,
		-0.512762, -0.413783, 0.752236,
		30.350309, 34.024815, 35.460976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154268, 34.047245, 35.534096>,  <30.709244, 34.314461, 34.934410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154268, 34.047245, 35.534096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841261, 33.822563, 35.426655>,  <30.653456, 33.687756, 35.362190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841261, 33.822563, 35.426655>,  <31.154268, 34.047245, 35.534096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841261, 33.822563, 35.426655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619894, -0.662494, -0.420515,
		0.058255, -0.495570, 0.866612,
		-0.782520, -0.561705, -0.268607,
		30.606504, 33.654053, 35.346073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205652, 33.280090, 35.732292>,  <31.154268, 34.047245, 35.534096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205652, 33.280090, 35.732292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017061, 33.370663, 35.391369>,  <30.903908, 33.425007, 35.186813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017061, 33.370663, 35.391369>,  <31.205652, 33.280090, 35.732292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017061, 33.370663, 35.391369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641053, -0.575703, -0.507560,
		-0.605609, -0.785680, 0.126273,
		-0.471476, 0.226436, -0.852313,
		30.875618, 33.438595, 35.135674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158146, 32.581806, 35.328934>,  <31.205652, 33.280090, 35.732292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158146, 32.581806, 35.328934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167246, 32.914673, 35.107311>,  <31.172707, 33.114391, 34.974339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167246, 32.914673, 35.107311>,  <31.158146, 32.581806, 35.328934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167246, 32.914673, 35.107311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552857, -0.472223, -0.686553,
		-0.832966, -0.290697, -0.470812,
		0.022750, 0.832166, -0.554060,
		31.174070, 33.164322, 34.941093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020571, 32.361893, 34.751266>,  <31.158146, 32.581806, 35.328934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020571, 32.361893, 34.751266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209728, 32.703594, 34.664898>,  <31.323223, 32.908615, 34.613075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209728, 32.703594, 34.664898>,  <31.020571, 32.361893, 34.751266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209728, 32.703594, 34.664898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619346, -0.496569, -0.608137,
		-0.626725, 0.153851, -0.763902,
		0.472892, 0.854254, -0.215925,
		31.351595, 32.959869, 34.600121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108585, 32.700050, 34.028122>,  <31.020571, 32.361893, 34.751266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108585, 32.700050, 34.028122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433798, 32.782352, 34.245983>,  <31.628925, 32.831734, 34.376698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433798, 32.782352, 34.245983>,  <31.108585, 32.700050, 34.028122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433798, 32.782352, 34.245983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579779, -0.371667, -0.725066,
		0.053242, 0.905278, -0.421470,
		0.813033, 0.205755, 0.544649,
		31.677708, 32.844078, 34.409378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549875, 33.339504, 33.769409>,  <31.108585, 32.700050, 34.028122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549875, 33.339504, 33.769409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757595, 33.044464, 33.942043>,  <31.882227, 32.867439, 34.045624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757595, 33.044464, 33.942043>,  <31.549875, 33.339504, 33.769409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757595, 33.044464, 33.942043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531587, -0.116627, -0.838936,
		0.669138, 0.665085, 0.331537,
		0.519298, -0.737604, 0.431590,
		31.913383, 32.823181, 34.071522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290920, 33.408669, 33.706371>,  <31.549875, 33.339504, 33.769409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290920, 33.408669, 33.706371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224163, 33.020596, 33.776688>,  <32.184109, 32.787754, 33.818878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224163, 33.020596, 33.776688>,  <32.290920, 33.408669, 33.706371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224163, 33.020596, 33.776688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604062, -0.241518, -0.759459,
		0.779267, -0.020558, 0.626355,
		-0.166889, -0.970179, 0.175789,
		32.174095, 32.729542, 33.829426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798325, 32.944756, 33.823738>,  <32.290920, 33.408669, 33.706371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798325, 32.944756, 33.823738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578491, 32.658546, 33.651234>,  <32.446590, 32.486820, 33.547733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578491, 32.658546, 33.651234>,  <32.798325, 32.944756, 33.823738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578491, 32.658546, 33.651234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797193, -0.294748, -0.526884,
		0.249886, -0.633362, 0.732399,
		-0.549582, -0.715525, -0.431259,
		32.413616, 32.443890, 33.521854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185711, 32.344582, 33.788208>,  <32.798325, 32.944756, 33.823738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185711, 32.344582, 33.788208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898087, 32.318283, 33.511478>,  <32.725510, 32.302505, 33.345440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898087, 32.318283, 33.511478>,  <33.185711, 32.344582, 33.788208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898087, 32.318283, 33.511478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676693, -0.292891, -0.675501,
		-0.158222, -0.953883, 0.255094,
		-0.719064, -0.065741, -0.691827,
		32.682369, 32.298561, 33.303928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046288, 31.645882, 33.613838>,  <33.185711, 32.344582, 33.788208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046288, 31.645882, 33.613838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971344, 31.884130, 33.301395>,  <32.926376, 32.027081, 33.113930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971344, 31.884130, 33.301395>,  <33.046288, 31.645882, 33.613838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971344, 31.884130, 33.301395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657075, -0.515095, -0.550391,
		-0.730170, -0.616367, -0.294861,
		-0.187361, 0.595624, -0.781106,
		32.915134, 32.062817, 33.067062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805809, 31.289349, 33.028156>,  <33.046288, 31.645882, 33.613838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805809, 31.289349, 33.028156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958275, 31.615398, 32.853668>,  <33.049755, 31.811028, 32.748974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958275, 31.615398, 32.853668>,  <32.805809, 31.289349, 33.028156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958275, 31.615398, 32.853668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666691, -0.569236, -0.481136,
		-0.640497, -0.107432, -0.760409,
		0.381163, 0.815125, -0.436219,
		33.072624, 31.859936, 32.722801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839226, 31.136351, 32.348473>,  <32.805809, 31.289349, 33.028156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839226, 31.136351, 32.348473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091293, 31.446342, 32.367603>,  <33.242535, 31.632338, 32.379082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091293, 31.446342, 32.367603>,  <32.839226, 31.136351, 32.348473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091293, 31.446342, 32.367603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631028, -0.475281, -0.613117,
		-0.452421, 0.416550, -0.788543,
		0.630174, 0.774980, 0.047828,
		33.280346, 31.678837, 32.381950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102402, 31.236818, 31.641445>,  <32.839226, 31.136351, 32.348473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102402, 31.236818, 31.641445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377277, 31.407887, 31.876345>,  <33.542202, 31.510529, 32.017284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377277, 31.407887, 31.876345>,  <33.102402, 31.236818, 31.641445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377277, 31.407887, 31.876345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725989, -0.433830, -0.533603,
		0.026559, 0.793025, -0.608610,
		0.687194, 0.427672, 0.587249,
		33.583435, 31.536188, 32.052521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543076, 31.634972, 31.189180>,  <33.102402, 31.236818, 31.641445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543076, 31.634972, 31.189180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729752, 31.523777, 31.525019>,  <33.841759, 31.457060, 31.726522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729752, 31.523777, 31.525019>,  <33.543076, 31.634972, 31.189180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729752, 31.523777, 31.525019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662379, -0.519194, -0.540085,
		0.586051, 0.808184, -0.058170,
		0.466690, -0.277986, 0.839598,
		33.869759, 31.440382, 31.776897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249203, 31.868244, 31.069715>,  <33.543076, 31.634972, 31.189180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249203, 31.868244, 31.069715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235863, 31.574354, 31.340733>,  <34.227859, 31.398020, 31.503344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235863, 31.574354, 31.340733>,  <34.249203, 31.868244, 31.069715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235863, 31.574354, 31.340733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643653, -0.534411, -0.547828,
		0.764591, 0.417831, 0.490733,
		-0.033354, -0.734726, 0.677544,
		34.225857, 31.353937, 31.543995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818748, 31.531046, 30.931820>,  <34.249203, 31.868244, 31.069715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818748, 31.531046, 30.931820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650963, 31.257193, 31.170258>,  <34.550293, 31.092880, 31.313320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650963, 31.257193, 31.170258>,  <34.818748, 31.531046, 30.931820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650963, 31.257193, 31.170258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387742, -0.728865, -0.564280,
		0.820798, -0.005562, 0.571191,
		-0.419460, -0.684635, 0.596094,
		34.525124, 31.051802, 31.349087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361725, 31.084045, 31.135723>,  <34.818748, 31.531046, 30.931820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361725, 31.084045, 31.135723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037285, 30.865385, 31.218943>,  <34.842621, 30.734188, 31.268875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037285, 30.865385, 31.218943>,  <35.361725, 31.084045, 31.135723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037285, 30.865385, 31.218943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279904, -0.675090, -0.682573,
		0.513581, -0.495404, 0.700578,
		-0.811103, -0.546652, 0.208048,
		34.793953, 30.701389, 31.281357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606144, 30.483561, 31.395714>,  <35.361725, 31.084045, 31.135723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606144, 30.483561, 31.395714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243767, 30.430849, 31.234768>,  <35.026340, 30.399221, 31.138201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243767, 30.430849, 31.234768>,  <35.606144, 30.483561, 31.395714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243767, 30.430849, 31.234768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354116, -0.756768, -0.549458,
		-0.232090, -0.640263, 0.732255,
		-0.905945, -0.131780, -0.402366,
		34.971985, 30.391315, 31.114058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547905, 29.763439, 31.354164>,  <35.606144, 30.483561, 31.395714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547905, 29.763439, 31.354164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261311, 29.917358, 31.121416>,  <35.089352, 30.009710, 30.981768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261311, 29.917358, 31.121416>,  <35.547905, 29.763439, 31.354164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261311, 29.917358, 31.121416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160574, -0.720736, -0.674356,
		-0.678867, -0.576601, 0.454610,
		-0.716488, 0.384799, -0.581872,
		35.046364, 30.032799, 30.946856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253796, 29.250435, 31.057367>,  <35.547905, 29.763439, 31.354164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253796, 29.250435, 31.057367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147686, 29.535055, 30.797113>,  <35.084019, 29.705828, 30.640961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147686, 29.535055, 30.797113>,  <35.253796, 29.250435, 31.057367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147686, 29.535055, 30.797113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196014, -0.620922, -0.758970,
		-0.944038, -0.328868, 0.025240,
		-0.265273, 0.711549, -0.650637,
		35.068104, 29.748520, 30.601923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975559, 28.895308, 30.444933>,  <35.253796, 29.250435, 31.057367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975559, 28.895308, 30.444933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057026, 29.262852, 30.309750>,  <35.105904, 29.483377, 30.228640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057026, 29.262852, 30.309750>,  <34.975559, 28.895308, 30.444933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057026, 29.262852, 30.309750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274128, -0.384905, -0.881306,
		-0.939880, 0.086847, -0.330278,
		0.203665, 0.918861, -0.337958,
		35.118126, 29.538509, 30.208363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616901, 28.961819, 29.806158>,  <34.975559, 28.895308, 30.444933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616901, 28.961819, 29.806158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903297, 29.241058, 29.804415>,  <35.075134, 29.408602, 29.803368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903297, 29.241058, 29.804415>,  <34.616901, 28.961819, 29.806158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903297, 29.241058, 29.804415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332102, -0.346094, -0.877455,
		-0.614058, 0.626801, -0.479639,
		0.715990, 0.698097, -0.004359,
		35.118095, 29.450487, 29.803106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570457, 29.227551, 29.082390>,  <34.616901, 28.961819, 29.806158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570457, 29.227551, 29.082390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930191, 29.326416, 29.226677>,  <35.146030, 29.385735, 29.313250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930191, 29.326416, 29.226677>,  <34.570457, 29.227551, 29.082390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930191, 29.326416, 29.226677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408498, -0.180587, -0.894716,
		-0.156000, 0.951997, -0.263372,
		0.899329, 0.247163, 0.360718,
		35.199989, 29.400564, 29.334892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779377, 29.548962, 28.505379>,  <34.570457, 29.227551, 29.082390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779377, 29.548962, 28.505379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112823, 29.468967, 28.711325>,  <35.312893, 29.420971, 28.834892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112823, 29.468967, 28.711325>,  <34.779377, 29.548962, 28.505379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112823, 29.468967, 28.711325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521222, -0.023652, -0.853093,
		0.182785, 0.979513, 0.084521,
		0.833617, -0.199987, 0.514867,
		35.362907, 29.408972, 28.865786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289074, 30.008944, 28.302805>,  <34.779377, 29.548962, 28.505379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289074, 30.008944, 28.302805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474251, 29.683598, 28.443733>,  <35.585358, 29.488390, 28.528290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474251, 29.683598, 28.443733>,  <35.289074, 30.008944, 28.302805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474251, 29.683598, 28.443733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464557, -0.115876, -0.877929,
		0.754901, 0.570099, 0.324211,
		0.462938, -0.813363, 0.352319,
		35.613132, 29.439589, 28.549429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019424, 30.024427, 28.020859>,  <35.289074, 30.008944, 28.302805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019424, 30.024427, 28.020859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957573, 29.643908, 28.127531>,  <35.920464, 29.415596, 28.191534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957573, 29.643908, 28.127531>,  <36.019424, 30.024427, 28.020859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957573, 29.643908, 28.127531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393718, -0.306898, -0.866487,
		0.906133, -0.028985, 0.421998,
		-0.154625, -0.951301, 0.266679,
		35.911186, 29.358517, 28.207535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562958, 29.689314, 27.641943>,  <36.019424, 30.024427, 28.020859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562958, 29.689314, 27.641943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300186, 29.411865, 27.760149>,  <36.142521, 29.245396, 27.831072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300186, 29.411865, 27.760149>,  <36.562958, 29.689314, 27.641943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300186, 29.411865, 27.760149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112282, -0.477589, -0.871379,
		0.745543, -0.539255, 0.391625,
		-0.656932, -0.693623, 0.295514,
		36.103107, 29.203779, 27.848803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793846, 29.088949, 27.434860>,  <36.562958, 29.689314, 27.641943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793846, 29.088949, 27.434860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399967, 29.026268, 27.465384>,  <36.163639, 28.988659, 27.483698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399967, 29.026268, 27.465384>,  <36.793846, 29.088949, 27.434860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399967, 29.026268, 27.465384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032620, -0.595762, -0.802499,
		0.171218, -0.787726, 0.591754,
		-0.984693, -0.156705, 0.076310,
		36.104561, 28.979256, 27.488276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787994, 28.457926, 27.225161>,  <36.793846, 29.088949, 27.434860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787994, 28.457926, 27.225161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411507, 28.569000, 27.148230>,  <36.185612, 28.635645, 27.102070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411507, 28.569000, 27.148230>,  <36.787994, 28.457926, 27.225161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411507, 28.569000, 27.148230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026652, -0.506552, -0.861797,
		-0.336734, -0.816269, 0.469377,
		-0.941223, 0.277687, -0.192328,
		36.129139, 28.652306, 27.090530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475471, 27.879469, 26.992096>,  <36.787994, 28.457926, 27.225161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475471, 27.879469, 26.992096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219421, 28.163647, 26.875132>,  <36.065792, 28.334154, 26.804953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219421, 28.163647, 26.875132>,  <36.475471, 27.879469, 26.992096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219421, 28.163647, 26.875132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054909, -0.337331, -0.939784,
		-0.766304, -0.617637, 0.176924,
		-0.640127, 0.710445, -0.292412,
		36.027382, 28.376780, 26.787409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088673, 27.557734, 26.503265>,  <36.475471, 27.879469, 26.992096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088673, 27.557734, 26.503265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029194, 27.946114, 26.428280>,  <35.993507, 28.179142, 26.383289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029194, 27.946114, 26.428280>,  <36.088673, 27.557734, 26.503265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029194, 27.946114, 26.428280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025690, -0.185715, -0.982268,
		-0.988549, -0.150876, 0.002671,
		-0.148697, 0.970951, -0.187464,
		35.984585, 28.237398, 26.372040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448235, 27.632858, 26.095301>,  <36.088673, 27.557734, 26.503265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448235, 27.632858, 26.095301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667637, 27.962864, 26.040901>,  <35.799278, 28.160868, 26.008263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667637, 27.962864, 26.040901>,  <35.448235, 27.632858, 26.095301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667637, 27.962864, 26.040901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076788, -0.112258, -0.990708,
		-0.832612, 0.553853, 0.001777,
		0.548507, 0.825012, -0.135997,
		35.832188, 28.210367, 26.000101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163197, 27.940006, 25.531816>,  <35.448235, 27.632858, 26.095301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163197, 27.940006, 25.531816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522358, 28.112793, 25.565706>,  <35.737854, 28.216465, 25.586040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522358, 28.112793, 25.565706>,  <35.163197, 27.940006, 25.531816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522358, 28.112793, 25.565706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076622, 0.036160, -0.996404,
		-0.433476, 0.901165, -0.000630,
		0.897902, 0.431965, 0.084724,
		35.791729, 28.242382, 25.591124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198742, 28.600420, 25.161478>,  <35.163197, 27.940006, 25.531816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198742, 28.600420, 25.161478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573700, 28.463648, 25.187910>,  <35.798676, 28.381584, 25.203770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573700, 28.463648, 25.187910>,  <35.198742, 28.600420, 25.161478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573700, 28.463648, 25.187910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132132, 0.173647, -0.975904,
		0.322216, 0.923543, 0.207957,
		0.937400, -0.341929, 0.066078,
		35.854919, 28.361069, 25.207733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696693, 29.053650, 24.778833>,  <35.198742, 28.600420, 25.161478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696693, 29.053650, 24.778833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875576, 28.697617, 24.814058>,  <35.982906, 28.483997, 24.835194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875576, 28.697617, 24.814058>,  <35.696693, 29.053650, 24.778833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875576, 28.697617, 24.814058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357364, 0.087555, -0.929852,
		0.819936, 0.447309, 0.357240,
		0.447209, -0.890084, 0.088063,
		36.009739, 28.430592, 24.840477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238869, 29.162228, 24.424576>,  <35.696693, 29.053650, 24.778833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238869, 29.162228, 24.424576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225208, 28.763220, 24.449188>,  <36.217010, 28.523815, 24.463955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225208, 28.763220, 24.449188>,  <36.238869, 29.162228, 24.424576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225208, 28.763220, 24.449188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290864, -0.068822, -0.954286,
		0.956155, -0.014694, 0.292494,
		-0.034152, -0.997521, 0.061531,
		36.214962, 28.463964, 24.467648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904858, 28.922424, 24.142410>,  <36.238869, 29.162228, 24.424576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904858, 28.922424, 24.142410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664719, 28.602596, 24.149006>,  <36.520634, 28.410700, 24.152964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664719, 28.602596, 24.149006>,  <36.904858, 28.922424, 24.142410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664719, 28.602596, 24.149006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365199, -0.292429, -0.883807,
		0.711488, -0.524569, 0.467561,
		-0.600346, -0.799571, 0.016487,
		36.484615, 28.362724, 24.153952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294353, 28.370600, 23.892929>,  <36.904858, 28.922424, 24.142410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294353, 28.370600, 23.892929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913532, 28.259947, 23.840683>,  <36.685040, 28.193556, 23.809336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913532, 28.259947, 23.840683>,  <37.294353, 28.370600, 23.892929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913532, 28.259947, 23.840683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208961, -0.276213, -0.938106,
		0.223433, -0.920424, 0.320776,
		-0.952057, -0.276633, -0.130617,
		36.627914, 28.176956, 23.801498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311394, 27.764082, 23.524429>,  <37.294353, 28.370600, 23.892929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311394, 27.764082, 23.524429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948296, 27.922562, 23.469259>,  <36.730438, 28.017651, 23.436157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948296, 27.922562, 23.469259>,  <37.311394, 27.764082, 23.524429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948296, 27.922562, 23.469259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163509, 0.031357, -0.986043,
		-0.386346, -0.917628, -0.093247,
		-0.907745, 0.396201, -0.137926,
		36.675972, 28.041422, 23.427881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023518, 27.332607, 22.931545>,  <37.311394, 27.764082, 23.524429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023518, 27.332607, 22.931545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779209, 27.648926, 22.947550>,  <36.632622, 27.838717, 22.957153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779209, 27.648926, 22.947550>,  <37.023518, 27.332607, 22.931545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779209, 27.648926, 22.947550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098785, 0.126240, -0.987069,
		-0.785619, -0.598922, -0.155223,
		-0.610773, 0.790794, 0.040012,
		36.595978, 27.886164, 22.959553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529152, 27.129269, 22.564505>,  <37.023518, 27.332607, 22.931545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529152, 27.129269, 22.564505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537979, 27.528831, 22.581005>,  <36.543278, 27.768568, 22.590906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537979, 27.528831, 22.581005>,  <36.529152, 27.129269, 22.564505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537979, 27.528831, 22.581005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121003, 0.038288, -0.991914,
		-0.992407, 0.026884, -0.120025,
		0.022071, 0.998905, 0.041251,
		36.544601, 27.828503, 22.593380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216244, 27.299019, 21.979153>,  <36.529152, 27.129269, 22.564505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216244, 27.299019, 21.979153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405956, 27.638382, 22.073183>,  <36.519783, 27.841999, 22.129602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405956, 27.638382, 22.073183>,  <36.216244, 27.299019, 21.979153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405956, 27.638382, 22.073183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210636, 0.149910, -0.966002,
		-0.854802, 0.507676, -0.107605,
		0.474285, 0.848406, 0.235078,
		36.548241, 27.892904, 22.143707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060406, 27.724836, 21.499702>,  <36.216244, 27.299019, 21.979153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060406, 27.724836, 21.499702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390301, 27.904263, 21.637451>,  <36.588238, 28.011919, 21.720100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390301, 27.904263, 21.637451>,  <36.060406, 27.724836, 21.499702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390301, 27.904263, 21.637451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279448, 0.206143, -0.937771,
		-0.491641, 0.869652, 0.044664,
		0.824741, 0.448565, 0.344370,
		36.637722, 28.038832, 21.740763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156197, 28.295637, 21.035564>,  <36.060406, 27.724836, 21.499702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156197, 28.295637, 21.035564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501869, 28.232199, 21.226578>,  <36.709274, 28.194136, 21.341187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501869, 28.232199, 21.226578>,  <36.156197, 28.295637, 21.035564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501869, 28.232199, 21.226578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500231, 0.168168, -0.849405,
		0.054405, 0.972917, 0.224661,
		0.864181, -0.158594, 0.477535,
		36.761124, 28.184620, 21.369839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653294, 28.853025, 20.770693>,  <36.156197, 28.295637, 21.035564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653294, 28.853025, 20.770693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885208, 28.566921, 20.926771>,  <37.024357, 28.395258, 21.020418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885208, 28.566921, 20.926771>,  <36.653294, 28.853025, 20.770693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885208, 28.566921, 20.926771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678511, 0.158721, -0.717238,
		0.451080, 0.680596, 0.577336,
		0.579784, -0.715260, 0.390196,
		37.059143, 28.352343, 21.043831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381817, 29.125631, 20.894672>,  <36.653294, 28.853025, 20.770693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381817, 29.125631, 20.894672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408974, 28.728325, 20.857117>,  <37.425270, 28.489941, 20.834583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408974, 28.728325, 20.857117>,  <37.381817, 29.125631, 20.894672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408974, 28.728325, 20.857117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821212, 0.109079, -0.560100,
		0.566569, -0.039076, 0.823087,
		0.067895, -0.993265, -0.093891,
		37.429344, 28.430346, 20.828949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074017, 29.084305, 20.935740>,  <37.381817, 29.125631, 20.894672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074017, 29.084305, 20.935740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946571, 28.738062, 20.781229>,  <37.870106, 28.530317, 20.688522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946571, 28.738062, 20.781229>,  <38.074017, 29.084305, 20.935740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946571, 28.738062, 20.781229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759563, 0.010637, -0.650346,
		0.567052, -0.500612, 0.654094,
		-0.318614, -0.865606, -0.386278,
		37.850986, 28.478380, 20.665346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708889, 28.672573, 20.847900>,  <38.074017, 29.084305, 20.935740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708889, 28.672573, 20.847900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428471, 28.542313, 20.594133>,  <38.260220, 28.464157, 20.441874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428471, 28.542313, 20.594133>,  <38.708889, 28.672573, 20.847900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428471, 28.542313, 20.594133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637790, 0.111635, -0.762077,
		0.318993, -0.938877, 0.129435,
		-0.701047, -0.325649, -0.634417,
		38.218155, 28.444618, 20.403809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985416, 28.122326, 20.467558>,  <38.708889, 28.672573, 20.847900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985416, 28.122326, 20.467558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666786, 28.221909, 20.247200>,  <38.475609, 28.281658, 20.114986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666786, 28.221909, 20.247200>,  <38.985416, 28.122326, 20.467558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666786, 28.221909, 20.247200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557397, -0.050311, -0.828720,
		-0.234030, -0.967207, -0.098691,
		-0.796579, 0.248956, -0.550893,
		38.427811, 28.296595, 20.081932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048916, 27.778650, 19.815464>,  <38.985416, 28.122326, 20.467558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048916, 27.778650, 19.815464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774471, 28.060358, 19.742516>,  <38.609806, 28.229383, 19.698746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774471, 28.060358, 19.742516>,  <39.048916, 27.778650, 19.815464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774471, 28.060358, 19.742516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420645, 0.179514, -0.889288,
		-0.593559, -0.686862, -0.419413,
		-0.686109, 0.704269, -0.182373,
		38.568638, 28.271639, 19.687803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754944, 27.514105, 19.249449>,  <39.048916, 27.778650, 19.815464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754944, 27.514105, 19.249449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709019, 27.911211, 19.263491>,  <38.681465, 28.149475, 19.271915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709019, 27.911211, 19.263491>,  <38.754944, 27.514105, 19.249449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709019, 27.911211, 19.263491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353344, 0.073841, -0.932575,
		-0.928421, -0.094665, -0.359266,
		-0.114811, 0.992767, 0.035107,
		38.674576, 28.209042, 19.274023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280178, 27.687971, 18.586779>,  <38.754944, 27.514105, 19.249449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280178, 27.687971, 18.586779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465645, 28.026596, 18.691351>,  <38.576923, 28.229771, 18.754095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465645, 28.026596, 18.691351>,  <38.280178, 27.687971, 18.586779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465645, 28.026596, 18.691351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447040, 0.031227, -0.893969,
		-0.764964, 0.531373, -0.363969,
		0.463665, 0.846562, 0.261433,
		38.604744, 28.280565, 18.769781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148529, 28.168144, 18.074358>,  <38.280178, 27.687971, 18.586779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148529, 28.168144, 18.074358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501957, 28.215433, 18.255610>,  <38.714016, 28.243807, 18.364361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501957, 28.215433, 18.255610>,  <38.148529, 28.168144, 18.074358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501957, 28.215433, 18.255610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463791, -0.087027, -0.881660,
		-0.064799, 0.989166, -0.131726,
		0.883572, 0.118224, 0.453127,
		38.767029, 28.250900, 18.391548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626499, 28.735544, 17.790964>,  <38.148529, 28.168144, 18.074358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626499, 28.735544, 17.790964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874924, 28.477171, 17.968527>,  <39.023979, 28.322147, 18.075066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874924, 28.477171, 17.968527>,  <38.626499, 28.735544, 17.790964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874924, 28.477171, 17.968527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407549, -0.217633, -0.886871,
		0.669470, 0.731713, 0.128087,
		0.621058, -0.645935, 0.443908,
		39.061241, 28.283390, 18.101700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282940, 28.803198, 17.482275>,  <38.626499, 28.735544, 17.790964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282940, 28.803198, 17.482275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327019, 28.444353, 17.653408>,  <39.353466, 28.229046, 17.756088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327019, 28.444353, 17.653408>,  <39.282940, 28.803198, 17.482275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327019, 28.444353, 17.653408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689148, -0.241209, -0.683296,
		0.716192, 0.370141, 0.591662,
		0.110201, -0.897114, 0.427834,
		39.360081, 28.175219, 17.781759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956276, 28.666882, 17.564182>,  <39.282940, 28.803198, 17.482275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956276, 28.666882, 17.564182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785965, 28.313772, 17.484760>,  <39.683777, 28.101908, 17.437107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785965, 28.313772, 17.484760>,  <39.956276, 28.666882, 17.564182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785965, 28.313772, 17.484760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614656, -0.121151, -0.779436,
		0.664009, -0.453912, 0.594185,
		-0.425782, -0.882772, -0.198554,
		39.658230, 28.048941, 17.425194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371555, 28.066452, 17.494150>,  <39.956276, 28.666882, 17.564182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371555, 28.066452, 17.494150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053394, 27.961893, 17.275423>,  <39.862499, 27.899158, 17.144188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053394, 27.961893, 17.275423>,  <40.371555, 28.066452, 17.494150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053394, 27.961893, 17.275423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598072, -0.192314, -0.778026,
		0.098213, -0.945879, 0.309301,
		-0.795402, -0.261396, -0.546816,
		39.814774, 27.883474, 17.111378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902454, 28.538448, 17.596003>,  <40.371555, 28.066452, 17.494150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902454, 28.538448, 17.596003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864777, 28.141495, 17.564262>,  <40.842171, 27.903322, 17.545219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864777, 28.141495, 17.564262>,  <40.902454, 28.538448, 17.596003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864777, 28.141495, 17.564262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584841, 0.119661, -0.802273,
		0.805660, -0.029165, -0.591660,
		-0.094197, -0.992386, -0.079349,
		40.836517, 27.843779, 17.540457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658817, 29.231627, 18.102032>,  <40.902454, 28.538448, 17.596003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658817, 29.231627, 18.102032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993774, 29.403652, 18.236979>,  <41.194748, 29.506868, 18.317947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993774, 29.403652, 18.236979>,  <40.658817, 29.231627, 18.102032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993774, 29.403652, 18.236979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508958, 0.838571, 0.194320,
		-0.199337, -0.334428, 0.921098,
		0.837393, 0.430065, 0.337368,
		41.244991, 29.532671, 18.338188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542912, 29.546375, 18.676886>,  <40.658817, 29.231627, 18.102032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542912, 29.546375, 18.676886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810726, 29.769012, 18.480141>,  <40.971416, 29.902594, 18.362095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810726, 29.769012, 18.480141>,  <40.542912, 29.546375, 18.676886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810726, 29.769012, 18.480141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579802, 0.805527, 0.122294,
		0.464275, 0.203302, 0.862042,
		0.669536, 0.556592, -0.491861,
		41.011585, 29.935989, 18.332582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011227, 30.033022, 19.025694>,  <40.542912, 29.546375, 18.676886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011227, 30.033022, 19.025694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839607, 30.136492, 18.679514>,  <40.736633, 30.198574, 18.471806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839607, 30.136492, 18.679514>,  <41.011227, 30.033022, 19.025694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839607, 30.136492, 18.679514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534386, 0.699772, 0.474079,
		0.728248, 0.665889, -0.162008,
		-0.429053, 0.258673, -0.865449,
		40.710892, 30.214094, 18.419880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125690, 30.687160, 18.841608>,  <41.011227, 30.033022, 19.025694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125690, 30.687160, 18.841608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766014, 30.558441, 18.723011>,  <40.550209, 30.481209, 18.651854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766014, 30.558441, 18.723011>,  <41.125690, 30.687160, 18.841608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766014, 30.558441, 18.723011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437110, 0.629750, 0.642145,
		-0.019925, 0.707009, -0.706924,
		-0.899188, -0.321798, -0.296493,
		40.496258, 30.461903, 18.634064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772472, 31.224787, 18.484367>,  <41.125690, 30.687160, 18.841608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772472, 31.224787, 18.484367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509197, 30.979696, 18.659344>,  <40.351231, 30.832642, 18.764330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509197, 30.979696, 18.659344>,  <40.772472, 31.224787, 18.484367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509197, 30.979696, 18.659344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463003, 0.787615, 0.406561,
		-0.593643, 0.065059, -0.802094,
		-0.658192, -0.612724, 0.437439,
		40.311741, 30.795879, 18.790575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060966, 31.449223, 18.328316>,  <40.772472, 31.224787, 18.484367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060966, 31.449223, 18.328316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031670, 31.228748, 18.660780>,  <40.014091, 31.096464, 18.860258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031670, 31.228748, 18.660780>,  <40.060966, 31.449223, 18.328316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031670, 31.228748, 18.660780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487205, 0.746962, 0.452414,
		-0.870210, -0.371810, -0.323251,
		-0.073244, -0.551186, 0.831162,
		40.009697, 31.063393, 18.910128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418022, 31.639902, 18.599785>,  <40.060966, 31.449223, 18.328316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418022, 31.639902, 18.599785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589108, 31.441298, 18.901920>,  <39.691757, 31.322136, 19.083202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589108, 31.441298, 18.901920>,  <39.418022, 31.639902, 18.599785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589108, 31.441298, 18.901920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582359, 0.487731, 0.650366,
		-0.691316, -0.718050, -0.080538,
		0.427714, -0.496511, 0.755340,
		39.717422, 31.292345, 19.128523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897549, 31.391651, 19.150583>,  <39.418022, 31.639902, 18.599785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897549, 31.391651, 19.150583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239391, 31.365484, 19.356642>,  <39.444496, 31.349783, 19.480276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239391, 31.365484, 19.356642>,  <38.897549, 31.391651, 19.150583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239391, 31.365484, 19.356642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468271, 0.331693, 0.818964,
		-0.224446, -0.941117, 0.252831,
		0.854603, -0.065420, 0.515145,
		39.495773, 31.345858, 19.511185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668980, 31.110086, 19.653469>,  <38.897549, 31.391651, 19.150583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668980, 31.110086, 19.653469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992607, 31.310646, 19.776112>,  <39.186783, 31.430983, 19.849697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992607, 31.310646, 19.776112>,  <38.668980, 31.110086, 19.653469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992607, 31.310646, 19.776112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487918, 0.282199, 0.826015,
		0.327646, -0.817896, 0.472962,
		0.809064, 0.501407, 0.306605,
		39.235329, 31.461067, 19.868093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709949, 31.033648, 20.357754>,  <38.668980, 31.110086, 19.653469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709949, 31.033648, 20.357754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928371, 31.366737, 20.321093>,  <39.059425, 31.566591, 20.299097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928371, 31.366737, 20.321093>,  <38.709949, 31.033648, 20.357754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928371, 31.366737, 20.321093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492462, 0.407566, 0.769007,
		0.677724, -0.374783, 0.632636,
		0.546051, 0.832724, -0.091651,
		39.092186, 31.616554, 20.293598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767731, 31.169195, 20.997873>,  <38.709949, 31.033648, 20.357754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767731, 31.169195, 20.997873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891834, 31.515606, 20.841038>,  <38.966297, 31.723452, 20.746937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891834, 31.515606, 20.841038>,  <38.767731, 31.169195, 20.997873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891834, 31.515606, 20.841038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223007, 0.467238, 0.855545,
		0.924125, -0.178003, 0.338095,
		0.310260, 0.866027, -0.392090,
		38.984913, 31.775414, 20.723412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346447, 31.428970, 21.383057>,  <38.767731, 31.169195, 20.997873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346447, 31.428970, 21.383057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199509, 31.738802, 21.177113>,  <39.111343, 31.924700, 21.053545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199509, 31.738802, 21.177113>,  <39.346447, 31.428970, 21.383057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199509, 31.738802, 21.177113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006976, 0.551255, 0.834307,
		0.930056, 0.310075, -0.197101,
		-0.367351, 0.774578, -0.514862,
		39.089302, 31.971176, 21.022654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640797, 32.099911, 21.608923>,  <39.346447, 31.428970, 21.383057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640797, 32.099911, 21.608923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320351, 32.263226, 21.433870>,  <39.128082, 32.361214, 21.328838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320351, 32.263226, 21.433870>,  <39.640797, 32.099911, 21.608923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320351, 32.263226, 21.433870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141211, 0.581615, 0.801114,
		0.581615, 0.703582, -0.408285,
		-0.801114, 0.408285, -0.437629,
		39.080017, 32.385712, 21.302582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785141, 32.797115, 21.761618>,  <39.640797, 32.099911, 21.608923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785141, 32.797115, 21.761618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394447, 32.752190, 21.688536>,  <39.160030, 32.725235, 21.644688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394447, 32.752190, 21.688536>,  <39.785141, 32.797115, 21.761618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394447, 32.752190, 21.688536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214322, 0.542262, 0.812415,
		0.007828, 0.832669, -0.553716,
		-0.976732, -0.112314, -0.182704,
		39.101429, 32.718494, 21.633724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455837, 33.352066, 21.946781>,  <39.785141, 32.797115, 21.761618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455837, 33.352066, 21.946781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111561, 33.149666, 21.924242>,  <38.904995, 33.028225, 21.910719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111561, 33.149666, 21.924242>,  <39.455837, 33.352066, 21.946781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111561, 33.149666, 21.924242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311469, 0.435768, 0.844448,
		-0.402733, 0.744361, -0.532665,
		-0.860693, -0.505996, -0.056347,
		38.853352, 32.997868, 21.907337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971718, 33.839878, 22.168636>,  <39.455837, 33.352066, 21.946781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971718, 33.839878, 22.168636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806843, 33.479580, 22.223434>,  <38.707920, 33.263401, 22.256313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806843, 33.479580, 22.223434>,  <38.971718, 33.839878, 22.168636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806843, 33.479580, 22.223434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424323, 0.322844, 0.846004,
		-0.806259, 0.290579, -0.515277,
		-0.412185, -0.900742, 0.136996,
		38.683186, 33.209358, 22.264534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327839, 34.013515, 22.526791>,  <38.971718, 33.839878, 22.168636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327839, 34.013515, 22.526791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392982, 33.621254, 22.570234>,  <38.432068, 33.385899, 22.596300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392982, 33.621254, 22.570234>,  <38.327839, 34.013515, 22.526791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392982, 33.621254, 22.570234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431170, 0.028274, 0.901827,
		-0.887450, -0.193704, -0.418223,
		0.162863, -0.980652, 0.108611,
		38.441841, 33.327057, 22.602818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716404, 33.647732, 22.565493>,  <38.327839, 34.013515, 22.526791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716404, 33.647732, 22.565493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997009, 33.455662, 22.776136>,  <38.165371, 33.340420, 22.902523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997009, 33.455662, 22.776136>,  <37.716404, 33.647732, 22.565493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997009, 33.455662, 22.776136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485269, 0.219311, 0.846414,
		-0.521914, -0.849317, -0.079163,
		0.701513, -0.480170, 0.526609,
		38.207462, 33.311611, 22.934118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313801, 33.289337, 22.989388>,  <37.716404, 33.647732, 22.565493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313801, 33.289337, 22.989388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671436, 33.300533, 23.168194>,  <37.886017, 33.307251, 23.275478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671436, 33.300533, 23.168194>,  <37.313801, 33.289337, 22.989388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671436, 33.300533, 23.168194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447842, 0.041201, 0.893163,
		0.006579, -0.998759, 0.049371,
		0.894088, 0.027987, 0.447015,
		37.939663, 33.308929, 23.302298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279373, 32.824223, 23.525377>,  <37.313801, 33.289337, 22.989388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279373, 32.824223, 23.525377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599171, 33.038517, 23.634041>,  <37.791050, 33.167095, 23.699240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599171, 33.038517, 23.634041>,  <37.279373, 32.824223, 23.525377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599171, 33.038517, 23.634041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353224, 0.053512, 0.934007,
		0.485845, -0.842688, 0.232017,
		0.799492, 0.535736, 0.271659,
		37.839020, 33.199238, 23.715538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446911, 32.573364, 24.128445>,  <37.279373, 32.824223, 23.525377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446911, 32.573364, 24.128445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632118, 32.927856, 24.122643>,  <37.743244, 33.140553, 24.119162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632118, 32.927856, 24.122643>,  <37.446911, 32.573364, 24.128445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632118, 32.927856, 24.122643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093056, 0.064878, 0.993545,
		0.881451, -0.458678, 0.112509,
		0.463017, 0.886231, -0.014504,
		37.771023, 33.193726, 24.118292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936340, 32.614380, 24.736118>,  <37.446911, 32.573364, 24.128445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936340, 32.614380, 24.736118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855099, 32.994225, 24.640629>,  <37.806355, 33.222130, 24.583334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855099, 32.994225, 24.640629>,  <37.936340, 32.614380, 24.736118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855099, 32.994225, 24.640629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088385, 0.225031, 0.970334,
		0.975159, 0.218182, 0.038226,
		-0.203107, 0.949609, -0.238725,
		37.794167, 33.279106, 24.569012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434307, 33.025761, 25.137341>,  <37.936340, 32.614380, 24.736118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434307, 33.025761, 25.137341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128178, 33.261776, 25.034477>,  <37.944500, 33.403385, 24.972759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128178, 33.261776, 25.034477>,  <38.434307, 33.025761, 25.137341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128178, 33.261776, 25.034477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114468, 0.268393, 0.956484,
		0.633382, 0.761459, -0.137867,
		-0.765326, 0.590039, -0.257158,
		37.898579, 33.438789, 24.957331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512718, 33.603096, 25.517670>,  <38.434307, 33.025761, 25.137341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512718, 33.603096, 25.517670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131752, 33.618958, 25.396786>,  <37.903172, 33.628475, 25.324255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131752, 33.618958, 25.396786>,  <38.512718, 33.603096, 25.517670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131752, 33.618958, 25.396786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291782, 0.168045, 0.941607,
		0.088127, 0.984981, -0.148478,
		-0.952416, 0.039658, -0.302209,
		37.846027, 33.630856, 25.306124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274364, 34.204624, 25.936140>,  <38.512718, 33.603096, 25.517670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274364, 34.204624, 25.936140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940247, 34.021343, 25.814592>,  <37.739777, 33.911377, 25.741663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940247, 34.021343, 25.814592>,  <38.274364, 34.204624, 25.936140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940247, 34.021343, 25.814592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402137, 0.132265, 0.905976,
		-0.374927, 0.878953, -0.294739,
		-0.835294, -0.458200, -0.303870,
		37.689659, 33.883884, 25.723431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740986, 34.710758, 26.110756>,  <38.274364, 34.204624, 25.936140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740986, 34.710758, 26.110756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552849, 34.360226, 26.069155>,  <37.439968, 34.149906, 26.044195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552849, 34.360226, 26.069155>,  <37.740986, 34.710758, 26.110756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552849, 34.360226, 26.069155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440001, 0.130720, 0.888432,
		-0.764968, 0.463629, -0.447071,
		-0.470344, -0.876334, -0.104001,
		37.411747, 34.097324, 26.037954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027794, 34.797752, 26.275061>,  <37.740986, 34.710758, 26.110756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027794, 34.797752, 26.275061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107761, 34.409863, 26.331154>,  <37.155743, 34.177128, 26.364809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107761, 34.409863, 26.331154>,  <37.027794, 34.797752, 26.275061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107761, 34.409863, 26.331154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516393, 0.017351, 0.856176,
		-0.832689, -0.243580, -0.497290,
		0.199919, -0.969726, 0.140231,
		37.167736, 34.118946, 26.373222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385368, 34.533600, 26.229424>,  <37.027794, 34.797752, 26.275061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385368, 34.533600, 26.229424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646996, 34.305820, 26.428593>,  <36.803974, 34.169155, 26.548094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646996, 34.305820, 26.428593>,  <36.385368, 34.533600, 26.229424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646996, 34.305820, 26.428593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611482, -0.010541, 0.791188,
		-0.445290, -0.821962, -0.355100,
		0.654070, -0.569445, 0.497921,
		36.843216, 34.134987, 26.577969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966457, 34.074627, 26.557606>,  <36.385368, 34.533600, 26.229424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966457, 34.074627, 26.557606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303535, 34.006748, 26.761988>,  <36.505783, 33.966022, 26.884617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303535, 34.006748, 26.761988>,  <35.966457, 34.074627, 26.557606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303535, 34.006748, 26.761988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528987, -0.084331, 0.844429,
		-0.100221, -0.981879, -0.160840,
		0.842691, -0.169712, 0.510950,
		36.556343, 33.955841, 26.915274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911358, 33.385891, 27.054457>,  <35.966457, 34.074627, 26.557606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911358, 33.385891, 27.054457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179417, 33.641029, 27.206274>,  <36.340252, 33.794113, 27.297365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179417, 33.641029, 27.206274>,  <35.911358, 33.385891, 27.054457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179417, 33.641029, 27.206274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528425, 0.050919, 0.847452,
		0.521220, -0.768477, 0.371178,
		0.670147, 0.637848, 0.379543,
		36.380459, 33.832382, 27.320137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878754, 33.268570, 27.729090>,  <35.911358, 33.385891, 27.054457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878754, 33.268570, 27.729090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114876, 33.590931, 27.747293>,  <36.256550, 33.784348, 27.758215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114876, 33.590931, 27.747293>,  <35.878754, 33.268570, 27.729090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114876, 33.590931, 27.747293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247046, 0.126704, 0.960684,
		0.768448, -0.578337, 0.273888,
		0.590302, 0.805899, 0.045510,
		36.291965, 33.832699, 27.760946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427452, 33.091583, 28.232849>,  <35.878754, 33.268570, 27.729090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427452, 33.091583, 28.232849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379440, 33.486908, 28.195271>,  <36.350632, 33.724102, 28.172724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379440, 33.486908, 28.195271>,  <36.427452, 33.091583, 28.232849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379440, 33.486908, 28.195271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353561, 0.045869, 0.934286,
		0.927678, 0.145360, 0.343924,
		-0.120033, 0.988315, -0.093945,
		36.343430, 33.783401, 28.167088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674355, 33.292919, 28.757250>,  <36.427452, 33.091583, 28.232849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674355, 33.292919, 28.757250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447144, 33.598145, 28.633909>,  <36.310818, 33.781281, 28.559904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447144, 33.598145, 28.633909>,  <36.674355, 33.292919, 28.757250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447144, 33.598145, 28.633909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460151, 0.016175, 0.887693,
		0.682351, 0.646125, 0.341935,
		-0.568030, 0.763060, -0.308352,
		36.276733, 33.827065, 28.541403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717682, 33.778637, 29.303848>,  <36.674355, 33.292919, 28.757250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717682, 33.778637, 29.303848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396824, 33.897980, 29.096949>,  <36.204308, 33.969585, 28.972809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396824, 33.897980, 29.096949>,  <36.717682, 33.778637, 29.303848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396824, 33.897980, 29.096949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526268, 0.056061, 0.848469,
		0.282148, 0.952805, 0.112049,
		-0.802144, 0.298361, -0.517248,
		36.156181, 33.987488, 28.941774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621082, 34.500408, 29.446726>,  <36.717682, 33.778637, 29.303848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621082, 34.500408, 29.446726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291809, 34.293373, 29.353365>,  <36.094246, 34.169151, 29.297348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291809, 34.293373, 29.353365>,  <36.621082, 34.500408, 29.446726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291809, 34.293373, 29.353365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381732, 0.200215, 0.902327,
		-0.420300, 0.831877, -0.362392,
		-0.823182, -0.517585, -0.233404,
		36.044853, 34.138096, 29.283344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041203, 34.836826, 29.753330>,  <36.621082, 34.500408, 29.446726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041203, 34.836826, 29.753330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850414, 34.495968, 29.667215>,  <35.735943, 34.291454, 29.615545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850414, 34.495968, 29.667215>,  <36.041203, 34.836826, 29.753330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850414, 34.495968, 29.667215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656115, 0.182226, 0.732330,
		-0.584820, 0.490553, -0.646022,
		-0.476968, -0.852145, -0.215289,
		35.707325, 34.240326, 29.602629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387817, 34.987766, 29.946278>,  <36.041203, 34.836826, 29.753330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387817, 34.987766, 29.946278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345219, 34.590118, 29.938349>,  <35.319660, 34.351532, 29.933592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345219, 34.590118, 29.938349>,  <35.387817, 34.987766, 29.946278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345219, 34.590118, 29.938349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642851, 0.053633, 0.764111,
		-0.758551, 0.094122, -0.644780,
		-0.106501, -0.994115, -0.019824,
		35.313267, 34.291885, 29.932402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681843, 34.891342, 29.958696>,  <35.387817, 34.987766, 29.946278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681843, 34.891342, 29.958696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849686, 34.540291, 30.051395>,  <34.950390, 34.329662, 30.107016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849686, 34.540291, 30.051395>,  <34.681843, 34.891342, 29.958696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849686, 34.540291, 30.051395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597358, -0.074757, 0.798483,
		-0.683443, -0.473484, -0.555624,
		0.419606, -0.877624, 0.231748,
		34.975567, 34.277004, 30.120920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120174, 34.379318, 29.967165>,  <34.681843, 34.891342, 29.958696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120174, 34.379318, 29.967165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391674, 34.213135, 30.209385>,  <34.554573, 34.113426, 30.354717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391674, 34.213135, 30.209385>,  <34.120174, 34.379318, 29.967165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391674, 34.213135, 30.209385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698922, -0.112373, 0.706314,
		-0.225399, -0.902643, -0.366648,
		0.678751, -0.415461, 0.605549,
		34.595299, 34.088497, 30.391050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686100, 34.014175, 30.454981>,  <34.120174, 34.379318, 29.967165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686100, 34.014175, 30.454981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054283, 33.990471, 30.609510>,  <34.275192, 33.976246, 30.702229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054283, 33.990471, 30.609510>,  <33.686100, 34.014175, 30.454981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054283, 33.990471, 30.609510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389309, -0.226556, 0.892811,
		0.034613, -0.972193, -0.231606,
		0.920457, -0.059264, 0.386326,
		34.330421, 33.972691, 30.725409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724106, 33.277782, 30.820759>,  <33.686100, 34.014175, 30.454981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724106, 33.277782, 30.820759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997955, 33.509964, 30.997108>,  <34.162266, 33.649273, 31.102919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997955, 33.509964, 30.997108>,  <33.724106, 33.277782, 30.820759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997955, 33.509964, 30.997108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295600, -0.331780, 0.895847,
		0.666268, -0.743639, -0.055562,
		0.684622, 0.580450, 0.440874,
		34.203342, 33.684097, 31.129372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090725, 32.920097, 31.244232>,  <33.724106, 33.277782, 30.820759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090725, 32.920097, 31.244232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170822, 33.284401, 31.388691>,  <34.218880, 33.502983, 31.475367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170822, 33.284401, 31.388691>,  <34.090725, 32.920097, 31.244232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170822, 33.284401, 31.388691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013228, -0.371092, 0.928502,
		0.979657, -0.181149, -0.086356,
		0.200243, 0.910756, 0.361147,
		34.230896, 33.557629, 31.497036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686600, 32.904804, 31.855934>,  <34.090725, 32.920097, 31.244232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686600, 32.904804, 31.855934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528316, 33.267181, 31.916185>,  <34.433346, 33.484608, 31.952337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528316, 33.267181, 31.916185>,  <34.686600, 32.904804, 31.855934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528316, 33.267181, 31.916185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076589, -0.130893, 0.988434,
		0.915177, 0.402669, -0.017589,
		-0.395709, 0.905939, 0.150630,
		34.409603, 33.538963, 31.961374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104469, 33.230331, 32.291939>,  <34.686600, 32.904804, 31.855934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104469, 33.230331, 32.291939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762581, 33.433018, 32.336990>,  <34.557446, 33.554630, 32.364021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762581, 33.433018, 32.336990>,  <35.104469, 33.230331, 32.291939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762581, 33.433018, 32.336990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142019, 0.019577, 0.989670,
		0.499275, 0.861892, -0.088696,
		-0.854725, 0.506715, 0.112630,
		34.506165, 33.585033, 32.370781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811432, 33.533180, 32.027065>,  <35.104469, 33.230331, 32.291939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811432, 33.533180, 32.027065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052082, 33.586433, 32.342110>,  <36.196472, 33.618385, 32.531136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052082, 33.586433, 32.342110>,  <35.811432, 33.533180, 32.027065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052082, 33.586433, 32.342110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783218, 0.095367, -0.614390,
		-0.156906, 0.986499, -0.046896,
		0.601623, 0.133131, 0.787608,
		36.232571, 33.626373, 32.578392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209576, 34.095802, 31.942554>,  <35.811432, 33.533180, 32.027065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209576, 34.095802, 31.942554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431831, 33.889240, 32.203197>,  <36.565186, 33.765305, 32.359585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431831, 33.889240, 32.203197>,  <36.209576, 34.095802, 31.942554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431831, 33.889240, 32.203197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815349, 0.185073, -0.548593,
		0.162702, 0.836106, 0.523884,
		0.555639, -0.516406, 0.651606,
		36.598522, 33.734318, 32.398678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781898, 34.554874, 31.986437>,  <36.209576, 34.095802, 31.942554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781898, 34.554874, 31.986437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929768, 34.208351, 32.120811>,  <37.018490, 34.000439, 32.201435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929768, 34.208351, 32.120811>,  <36.781898, 34.554874, 31.986437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929768, 34.208351, 32.120811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735358, 0.051770, -0.675698,
		0.567972, 0.496820, 0.656184,
		0.369671, -0.866308, 0.335937,
		37.040668, 33.948460, 32.221592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562843, 34.591694, 32.127739>,  <36.781898, 34.554874, 31.986437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562843, 34.591694, 32.127739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500877, 34.202343, 32.060165>,  <37.463696, 33.968731, 32.019623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500877, 34.202343, 32.060165>,  <37.562843, 34.591694, 32.127739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500877, 34.202343, 32.060165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884661, -0.060569, -0.462283,
		0.439744, -0.221061, 0.870492,
		-0.154918, -0.973377, -0.168929,
		37.454403, 33.910332, 32.009487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271866, 34.208797, 32.177841>,  <37.562843, 34.591694, 32.127739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271866, 34.208797, 32.177841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031635, 33.971085, 31.963873>,  <37.887497, 33.828457, 31.835491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031635, 33.971085, 31.963873>,  <38.271866, 34.208797, 32.177841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031635, 33.971085, 31.963873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661734, 0.006087, -0.749714,
		0.448797, -0.804235, 0.389600,
		-0.600575, -0.594281, -0.534921,
		37.851463, 33.792801, 31.803396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769009, 33.652607, 32.013054>,  <38.271866, 34.208797, 32.177841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769009, 33.652607, 32.013054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446186, 33.636024, 31.777447>,  <38.252495, 33.626076, 31.636082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446186, 33.636024, 31.777447>,  <38.769009, 33.652607, 32.013054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446186, 33.636024, 31.777447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588765, 0.019452, -0.808070,
		0.044957, -0.998951, 0.008708,
		-0.807053, -0.041455, -0.589022,
		38.204071, 33.623589, 31.600740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854992, 33.147011, 31.629982>,  <38.769009, 33.652607, 32.013054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854992, 33.147011, 31.629982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605980, 33.385872, 31.427649>,  <38.456573, 33.529186, 31.306248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605980, 33.385872, 31.427649>,  <38.854992, 33.147011, 31.629982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605980, 33.385872, 31.427649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649347, 0.033371, -0.759760,
		-0.436809, -0.801436, -0.408531,
		-0.622532, 0.597148, -0.505834,
		38.419220, 33.565018, 31.275898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178501, 33.223141, 30.989307>,  <38.854992, 33.147011, 31.629982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178501, 33.223141, 30.989307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849178, 33.437241, 30.913761>,  <38.651585, 33.565701, 30.868433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849178, 33.437241, 30.913761>,  <39.178501, 33.223141, 30.989307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849178, 33.437241, 30.913761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297792, 0.124064, -0.946535,
		-0.483202, -0.835532, -0.261537,
		-0.823308, 0.535251, -0.188867,
		38.602184, 33.597816, 30.857101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837784, 32.935150, 30.291656>,  <39.178501, 33.223141, 30.989307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837784, 32.935150, 30.291656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756168, 33.321537, 30.355255>,  <38.707199, 33.553368, 30.393415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756168, 33.321537, 30.355255>,  <38.837784, 32.935150, 30.291656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756168, 33.321537, 30.355255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443346, 0.235982, -0.864729,
		-0.872818, -0.105949, -0.476407,
		-0.204041, 0.965964, 0.158997,
		38.694958, 33.611328, 30.402954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536297, 33.058582, 29.737679>,  <38.837784, 32.935150, 30.291656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536297, 33.058582, 29.737679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632999, 33.414917, 29.891544>,  <38.691021, 33.628719, 29.983864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632999, 33.414917, 29.891544>,  <38.536297, 33.058582, 29.737679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632999, 33.414917, 29.891544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234184, 0.331142, -0.914059,
		-0.941655, 0.311059, -0.128565,
		0.241753, 0.890835, 0.384666,
		38.705524, 33.682167, 30.006945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305481, 33.485020, 29.256123>,  <38.536297, 33.058582, 29.737679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305481, 33.485020, 29.256123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563904, 33.714909, 29.457043>,  <38.718956, 33.852840, 29.577595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563904, 33.714909, 29.457043>,  <38.305481, 33.485020, 29.256123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563904, 33.714909, 29.457043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362878, 0.347681, -0.864545,
		-0.671513, 0.740818, 0.016067,
		0.646057, 0.574723, 0.502299,
		38.757721, 33.887325, 29.607733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199932, 34.157951, 28.971731>,  <38.305481, 33.485020, 29.256123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199932, 34.157951, 28.971731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569000, 34.136887, 29.124519>,  <38.790443, 34.124249, 29.216192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569000, 34.136887, 29.124519>,  <38.199932, 34.157951, 28.971731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569000, 34.136887, 29.124519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342553, 0.566719, -0.749324,
		-0.177007, 0.822226, 0.540937,
		0.922673, -0.052664, 0.381969,
		38.845802, 34.121086, 29.239111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506802, 34.838181, 28.977789>,  <38.199932, 34.157951, 28.971731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506802, 34.838181, 28.977789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800529, 34.566692, 28.973606>,  <38.976768, 34.403801, 28.971096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800529, 34.566692, 28.973606>,  <38.506802, 34.838181, 28.977789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800529, 34.566692, 28.973606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525137, 0.577785, -0.624816,
		0.430117, 0.453325, 0.780702,
		0.734323, -0.678720, -0.010458,
		39.020828, 34.363075, 28.970469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112957, 35.245975, 28.669897>,  <38.506802, 34.838181, 28.977789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112957, 35.245975, 28.669897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220978, 34.860882, 28.663956>,  <39.285789, 34.629826, 28.660391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220978, 34.860882, 28.663956>,  <39.112957, 35.245975, 28.669897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220978, 34.860882, 28.663956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654808, 0.194940, -0.730223,
		0.705905, 0.187469, 0.683048,
		0.270048, -0.962732, -0.014853,
		39.301991, 34.572063, 28.659500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840656, 35.132549, 28.539295>,  <39.112957, 35.245975, 28.669897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840656, 35.132549, 28.539295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712193, 34.762199, 28.459690>,  <39.635113, 34.539989, 28.411926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712193, 34.762199, 28.459690>,  <39.840656, 35.132549, 28.539295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712193, 34.762199, 28.459690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606154, -0.039514, -0.794365,
		0.727621, -0.375752, 0.573915,
		-0.321162, -0.925877, -0.199012,
		39.615845, 34.484436, 28.399986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383938, 34.656475, 28.422668>,  <39.840656, 35.132549, 28.539295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383938, 34.656475, 28.422668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086475, 34.466488, 28.234465>,  <39.907997, 34.352493, 28.121542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086475, 34.466488, 28.234465>,  <40.383938, 34.656475, 28.422668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086475, 34.466488, 28.234465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519508, 0.032442, -0.853850,
		0.420817, -0.879404, 0.222625,
		-0.743656, -0.474970, -0.470509,
		39.863377, 34.323997, 28.093311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655167, 34.127163, 28.056858>,  <40.383938, 34.656475, 28.422668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655167, 34.127163, 28.056858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304020, 34.144398, 27.866074>,  <40.093330, 34.154739, 27.751602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304020, 34.144398, 27.866074>,  <40.655167, 34.127163, 28.056858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304020, 34.144398, 27.866074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466934, -0.144272, -0.872444,
		-0.106403, -0.988600, 0.106533,
		-0.877867, 0.043086, -0.476962,
		40.040661, 34.157322, 27.722984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509995, 33.505318, 27.714891>,  <40.655167, 34.127163, 28.056858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509995, 33.505318, 27.714891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244190, 33.748829, 27.541544>,  <40.084709, 33.894936, 27.437534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244190, 33.748829, 27.541544>,  <40.509995, 33.505318, 27.714891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244190, 33.748829, 27.541544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268234, -0.346967, -0.898702,
		-0.697478, -0.713443, 0.067268,
		-0.664512, 0.608781, -0.433371,
		40.044838, 33.931461, 27.411533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984997, 33.053185, 27.343185>,  <40.509995, 33.505318, 27.714891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984997, 33.053185, 27.343185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003628, 33.419533, 27.183683>,  <40.014809, 33.639343, 27.087982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003628, 33.419533, 27.183683>,  <39.984997, 33.053185, 27.343185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003628, 33.419533, 27.183683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070716, -0.401212, -0.913251,
		-0.996408, 0.014340, -0.083455,
		0.046580, 0.915873, -0.398757,
		40.017601, 33.694294, 27.064056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627453, 32.981144, 26.798367>,  <39.984997, 33.053185, 27.343185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627453, 32.981144, 26.798367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786449, 33.331181, 26.687937>,  <39.881847, 33.541203, 26.621679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786449, 33.331181, 26.687937>,  <39.627453, 32.981144, 26.798367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786449, 33.331181, 26.687937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143943, -0.356607, -0.923099,
		-0.906244, 0.327188, -0.267712,
		0.397495, 0.875088, -0.276076,
		39.905697, 33.593708, 26.605114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271137, 33.245445, 26.184141>,  <39.627453, 32.981144, 26.798367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271137, 33.245445, 26.184141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644539, 33.386650, 26.209278>,  <39.868580, 33.471371, 26.224360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644539, 33.386650, 26.209278>,  <39.271137, 33.245445, 26.184141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644539, 33.386650, 26.209278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180089, -0.310052, -0.933507,
		-0.310052, 0.882752, -0.353009,
		0.933507, 0.353009, 0.062842,
		39.924591, 33.492554, 26.228130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395569, 33.802990, 25.731319>,  <39.271137, 33.245445, 26.184141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395569, 33.802990, 25.731319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736160, 33.597488, 25.773350>,  <39.940514, 33.474186, 25.798569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736160, 33.597488, 25.773350>,  <39.395569, 33.802990, 25.731319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736160, 33.597488, 25.773350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026291, -0.241953, -0.969932,
		0.523728, 0.823115, -0.219525,
		0.851480, -0.513752, 0.105077,
		39.991604, 33.443363, 25.804873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923496, 34.066330, 25.272678>,  <39.395569, 33.802990, 25.731319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923496, 34.066330, 25.272678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062004, 33.702099, 25.362967>,  <40.145107, 33.483562, 25.417139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062004, 33.702099, 25.362967>,  <39.923496, 34.066330, 25.272678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062004, 33.702099, 25.362967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228522, -0.151487, -0.961680,
		0.909876, 0.384583, 0.155631,
		0.346270, -0.910575, 0.225720,
		40.165886, 33.428925, 25.430683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566360, 34.052631, 24.948658>,  <39.923496, 34.066330, 25.272678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566360, 34.052631, 24.948658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423527, 33.682240, 24.997738>,  <40.337826, 33.460003, 25.027185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423527, 33.682240, 24.997738>,  <40.566360, 34.052631, 24.948658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423527, 33.682240, 24.997738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350837, -0.254701, -0.901133,
		0.865682, -0.278731, 0.415817,
		-0.357083, -0.925979, 0.122701,
		40.316402, 33.404446, 25.034548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135918, 33.712688, 24.761246>,  <40.566360, 34.052631, 24.948658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135918, 33.712688, 24.761246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830685, 33.454189, 24.764544>,  <40.647545, 33.299088, 24.766523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830685, 33.454189, 24.764544>,  <41.135918, 33.712688, 24.761246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830685, 33.454189, 24.764544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267372, -0.327271, -0.906314,
		0.588405, -0.689387, 0.422523,
		-0.763081, -0.646250, 0.008246,
		40.601761, 33.260315, 24.767017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412910, 33.044647, 24.645561>,  <41.135918, 33.712688, 24.761246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412910, 33.044647, 24.645561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040180, 33.033520, 24.500824>,  <40.816544, 33.026844, 24.413980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040180, 33.033520, 24.500824>,  <41.412910, 33.044647, 24.645561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040180, 33.033520, 24.500824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307684, -0.589294, -0.747036,
		-0.192448, -0.807439, 0.557679,
		-0.931823, -0.027823, -0.361844,
		40.760632, 33.025173, 24.392271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276161, 32.327450, 24.478254>,  <41.412910, 33.044647, 24.645561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276161, 32.327450, 24.478254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989468, 32.501205, 24.260046>,  <40.817451, 32.605457, 24.129122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989468, 32.501205, 24.260046>,  <41.276161, 32.327450, 24.478254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989468, 32.501205, 24.260046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140960, -0.675887, -0.723400,
		-0.682939, -0.595389, 0.423209,
		-0.716746, 0.434383, -0.545516,
		40.774445, 32.631523, 24.096390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937256, 31.905487, 24.168306>,  <41.276161, 32.327450, 24.478254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937256, 31.905487, 24.168306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857235, 32.213238, 23.925642>,  <40.809223, 32.397888, 23.780043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857235, 32.213238, 23.925642>,  <40.937256, 31.905487, 24.168306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857235, 32.213238, 23.925642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046715, -0.610983, -0.790264,
		-0.978670, -0.186437, 0.086289,
		-0.200056, 0.769377, -0.606661,
		40.797218, 32.444050, 23.743645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558609, 31.625359, 23.648714>,  <40.937256, 31.905487, 24.168306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558609, 31.625359, 23.648714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641361, 31.982780, 23.489336>,  <40.691013, 32.197235, 23.393709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641361, 31.982780, 23.489336>,  <40.558609, 31.625359, 23.648714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641361, 31.982780, 23.489336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202581, -0.437551, -0.876077,
		-0.957163, 0.100525, -0.271538,
		0.206880, 0.893557, -0.398443,
		40.703426, 32.250847, 23.369802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243008, 31.632599, 22.984501>,  <40.558609, 31.625359, 23.648714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243008, 31.632599, 22.984501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536789, 31.903950, 22.976631>,  <40.713058, 32.066761, 22.971909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536789, 31.903950, 22.976631>,  <40.243008, 31.632599, 22.984501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536789, 31.903950, 22.976631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290838, -0.340806, -0.894016,
		-0.613185, 0.650888, -0.447603,
		0.734451, 0.678377, -0.019674,
		40.757126, 32.107464, 22.970728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084679, 31.962587, 22.348513>,  <40.243008, 31.632599, 22.984501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084679, 31.962587, 22.348513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463787, 32.017941, 22.463463>,  <40.691250, 32.051151, 22.532433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463787, 32.017941, 22.463463>,  <40.084679, 31.962587, 22.348513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463787, 32.017941, 22.463463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312287, -0.219306, -0.924328,
		-0.064890, 0.965792, -0.251067,
		0.947769, 0.138384, 0.287373,
		40.748119, 32.059456, 22.549675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514256, 32.172962, 21.703352>,  <40.084679, 31.962587, 22.348513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514256, 32.172962, 21.703352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804974, 32.099758, 21.968161>,  <40.979404, 32.055836, 22.127047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804974, 32.099758, 21.968161>,  <40.514256, 32.172962, 21.703352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804974, 32.099758, 21.968161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613364, -0.260842, -0.745483,
		0.309114, 0.947876, -0.077328,
		0.726796, -0.183009, 0.662023,
		41.023014, 32.044857, 22.166767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051559, 32.473358, 21.438606>,  <40.514256, 32.172962, 21.703352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051559, 32.473358, 21.438606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188740, 32.178486, 21.671484>,  <41.271049, 32.001564, 21.811211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188740, 32.178486, 21.671484>,  <41.051559, 32.473358, 21.438606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188740, 32.178486, 21.671484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508888, -0.375152, -0.774786,
		0.789568, 0.561987, 0.246482,
		0.342951, -0.737178, 0.582196,
		41.291626, 31.957333, 21.846144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750130, 32.468185, 21.302719>,  <41.051559, 32.473358, 21.438606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750130, 32.468185, 21.302719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743347, 32.113804, 21.488100>,  <41.739277, 31.901175, 21.599329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743347, 32.113804, 21.488100>,  <41.750130, 32.468185, 21.302719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743347, 32.113804, 21.488100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586580, -0.384189, -0.712968,
		0.809714, 0.259762, 0.526201,
		-0.016959, -0.885959, 0.463454,
		41.738258, 31.848017, 21.627136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394459, 32.173222, 21.354431>,  <41.750130, 32.468185, 21.302719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394459, 32.173222, 21.354431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155376, 31.854738, 21.391949>,  <42.011929, 31.663647, 21.414459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155376, 31.854738, 21.391949>,  <42.394459, 32.173222, 21.354431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155376, 31.854738, 21.391949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618038, -0.532118, -0.578687,
		0.510668, -0.287915, 0.810138,
		-0.597702, -0.796213, 0.093793,
		41.976067, 31.615875, 21.420086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838936, 31.591200, 21.548832>,  <42.394459, 32.173222, 21.354431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838936, 31.591200, 21.548832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512493, 31.401749, 21.416382>,  <42.316628, 31.288078, 21.336912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512493, 31.401749, 21.416382>,  <42.838936, 31.591200, 21.548832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512493, 31.401749, 21.416382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577845, -0.676599, -0.456408,
		-0.007873, -0.563818, 0.825862,
		-0.816108, -0.473627, -0.331126,
		42.267662, 31.259661, 21.317043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909359, 30.811089, 21.773891>,  <42.838936, 31.591200, 21.548832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909359, 30.811089, 21.773891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658672, 30.838369, 21.463388>,  <42.508263, 30.854738, 21.277086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658672, 30.838369, 21.463388>,  <42.909359, 30.811089, 21.773891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658672, 30.838369, 21.463388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486217, -0.744236, -0.457937,
		-0.608952, -0.664426, 0.433261,
		-0.626713, 0.068203, -0.776259,
		42.470657, 30.858829, 21.230511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962494, 30.078287, 21.390301>,  <42.909359, 30.811089, 21.773891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962494, 30.078287, 21.390301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782852, 30.298527, 21.108835>,  <42.675068, 30.430670, 20.939955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782852, 30.298527, 21.108835>,  <42.962494, 30.078287, 21.390301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782852, 30.298527, 21.108835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418020, -0.566563, -0.710116,
		-0.789659, -0.613064, 0.024286,
		-0.449107, 0.550598, -0.703665,
		42.648121, 30.463707, 20.897736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197067, 29.474421, 20.914938>,  <42.962494, 30.078287, 21.390301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197067, 29.474421, 20.914938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548420, 29.283953, 20.931494>,  <43.759232, 29.169672, 20.941427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548420, 29.283953, 20.931494>,  <43.197067, 29.474421, 20.914938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548420, 29.283953, 20.931494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125563, 0.313436, 0.941271,
		-0.461179, -0.821595, 0.335105,
		0.878378, -0.476171, 0.041388,
		43.811932, 29.141102, 20.943911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299435, 29.050186, 21.565018>,  <43.197067, 29.474421, 20.914938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299435, 29.050186, 21.565018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654869, 29.184675, 21.440197>,  <43.868130, 29.265369, 21.365305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654869, 29.184675, 21.440197>,  <43.299435, 29.050186, 21.565018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654869, 29.184675, 21.440197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205192, 0.317081, 0.925935,
		0.410267, -0.886800, 0.212762,
		0.888582, 0.336223, -0.312052,
		43.921444, 29.285542, 21.346581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766468, 28.877125, 22.148870>,  <43.299435, 29.050186, 21.565018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766468, 28.877125, 22.148870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946899, 29.163786, 21.936104>,  <44.055157, 29.335783, 21.808443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946899, 29.163786, 21.936104>,  <43.766468, 28.877125, 22.148870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946899, 29.163786, 21.936104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245650, 0.473282, 0.845967,
		0.858012, -0.512263, 0.037442,
		0.451078, 0.716652, -0.531919,
		44.082222, 29.378782, 21.776527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377792, 29.016417, 22.576746>,  <43.766468, 28.877125, 22.148870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377792, 29.016417, 22.576746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346764, 29.327137, 22.326767>,  <44.328148, 29.513569, 22.176779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346764, 29.327137, 22.326767>,  <44.377792, 29.016417, 22.576746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346764, 29.327137, 22.326767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424457, 0.592922, 0.684310,
		0.902119, -0.212179, -0.375714,
		-0.077573, 0.776803, -0.624947,
		44.323490, 29.560179, 22.139282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893421, 29.413610, 22.694292>,  <44.377792, 29.016417, 22.576746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893421, 29.413610, 22.694292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636066, 29.665283, 22.519852>,  <44.481655, 29.816288, 22.415188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636066, 29.665283, 22.519852>,  <44.893421, 29.413610, 22.694292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636066, 29.665283, 22.519852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038341, 0.595429, 0.802493,
		0.764582, 0.499591, -0.407214,
		-0.643385, 0.629184, -0.436100,
		44.443050, 29.854038, 22.389021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221447, 30.100906, 22.868851>,  <44.893421, 29.413610, 22.694292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221447, 30.100906, 22.868851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850857, 30.198265, 22.754032>,  <44.628502, 30.256680, 22.685141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850857, 30.198265, 22.754032>,  <45.221447, 30.100906, 22.868851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850857, 30.198265, 22.754032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011169, 0.780164, 0.625475,
		0.376184, 0.576283, -0.725523,
		-0.926478, 0.243397, -0.287049,
		44.572914, 30.271284, 22.667917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235863, 30.848795, 22.779022>,  <45.221447, 30.100906, 22.868851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235863, 30.848795, 22.779022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847401, 30.757877, 22.807825>,  <44.614323, 30.703327, 22.825108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847401, 30.757877, 22.807825>,  <45.235863, 30.848795, 22.779022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847401, 30.757877, 22.807825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117106, 0.717789, 0.686341,
		-0.207689, 0.658115, -0.723706,
		-0.971160, -0.227296, 0.072008,
		44.556053, 30.689688, 22.829428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857899, 31.546370, 22.885878>,  <45.235863, 30.848795, 22.779022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857899, 31.546370, 22.885878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592876, 31.282595, 23.027960>,  <44.433865, 31.124331, 23.113209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592876, 31.282595, 23.027960>,  <44.857899, 31.546370, 22.885878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592876, 31.282595, 23.027960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191330, 0.607498, 0.770934,
		-0.724167, 0.442823, -0.528668,
		-0.662552, -0.659435, 0.355205,
		44.394112, 31.084764, 23.134521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397350, 31.996016, 23.238791>,  <44.857899, 31.546370, 22.885878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397350, 31.996016, 23.238791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311699, 31.630278, 23.376266>,  <44.260307, 31.410835, 23.458752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311699, 31.630278, 23.376266>,  <44.397350, 31.996016, 23.238791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311699, 31.630278, 23.376266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419287, 0.403823, 0.813096,
		-0.882239, 0.030004, -0.469844,
		-0.214130, -0.914345, 0.343688,
		44.247459, 31.355974, 23.479374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638691, 31.986744, 23.259359>,  <44.397350, 31.996016, 23.238791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638691, 31.986744, 23.259359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825169, 31.743893, 23.516750>,  <43.937054, 31.598183, 23.671185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825169, 31.743893, 23.516750>,  <43.638691, 31.986744, 23.259359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825169, 31.743893, 23.516750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466166, 0.449601, 0.761937,
		-0.751900, -0.655176, -0.073421,
		0.466193, -0.607127, 0.643476,
		43.965027, 31.561754, 23.709793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135002, 31.802433, 23.708399>,  <43.638691, 31.986744, 23.259359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135002, 31.802433, 23.708399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451843, 31.668934, 23.912825>,  <43.641949, 31.588835, 24.035480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451843, 31.668934, 23.912825>,  <43.135002, 31.802433, 23.708399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451843, 31.668934, 23.912825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408066, 0.333120, 0.850008,
		-0.453933, -0.881841, 0.127675,
		0.792103, -0.333747, 0.511064,
		43.689472, 31.568810, 24.066143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006168, 31.319899, 24.229555>,  <43.135002, 31.802433, 23.708399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006168, 31.319899, 24.229555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340961, 31.495237, 24.360592>,  <43.541836, 31.600441, 24.439213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340961, 31.495237, 24.360592>,  <43.006168, 31.319899, 24.229555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340961, 31.495237, 24.360592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472326, 0.276357, 0.836980,
		0.276357, -0.855264, 0.438349,
		-0.836980, -0.438349, -0.327590,
		43.592056, 31.626741, 24.458868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047352, 31.147530, 24.927395>,  <43.006168, 31.319899, 24.229555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047352, 31.147530, 24.927395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287102, 31.467710, 24.925259>,  <43.430950, 31.659819, 24.923977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287102, 31.467710, 24.925259>,  <43.047352, 31.147530, 24.927395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287102, 31.467710, 24.925259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296949, 0.228541, 0.927141,
		0.743352, -0.554118, 0.374675,
		0.599374, 0.800451, -0.005341,
		43.466915, 31.707846, 24.923656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501362, 31.118973, 25.576948>,  <43.047352, 31.147530, 24.927395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501362, 31.118973, 25.576948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514168, 31.494560, 25.439945>,  <43.521851, 31.719913, 25.357742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514168, 31.494560, 25.439945>,  <43.501362, 31.118973, 25.576948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514168, 31.494560, 25.439945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376729, 0.328749, 0.866025,
		0.925770, 0.101304, 0.364263,
		0.032019, 0.938969, -0.342510,
		43.523773, 31.776251, 25.337193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878365, 31.541658, 26.041557>,  <43.501362, 31.118973, 25.576948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878365, 31.541658, 26.041557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650318, 31.804407, 25.844179>,  <43.513493, 31.962057, 25.725752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650318, 31.804407, 25.844179>,  <43.878365, 31.541658, 26.041557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650318, 31.804407, 25.844179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329603, 0.367292, 0.869746,
		0.752552, 0.658495, 0.007109,
		-0.570113, 0.656872, -0.493448,
		43.479286, 32.001469, 25.696144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946800, 32.037300, 26.409607>,  <43.878365, 31.541658, 26.041557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946800, 32.037300, 26.409607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611656, 32.139805, 26.216806>,  <43.410572, 32.201309, 26.101126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611656, 32.139805, 26.216806>,  <43.946800, 32.037300, 26.409607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611656, 32.139805, 26.216806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392325, 0.331274, 0.858102,
		0.379576, 0.908067, -0.177021,
		-0.837856, 0.256266, -0.482001,
		43.360298, 32.216686, 26.072206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859604, 32.751774, 26.611250>,  <43.946800, 32.037300, 26.409607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859604, 32.751774, 26.611250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504154, 32.605316, 26.500772>,  <43.290886, 32.517441, 26.434486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504154, 32.605316, 26.500772>,  <43.859604, 32.751774, 26.611250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504154, 32.605316, 26.500772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439638, 0.508503, 0.740367,
		-0.130636, 0.779334, -0.612840,
		-0.888624, -0.366147, -0.276196,
		43.237568, 32.495472, 26.417913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516335, 33.337399, 26.660908>,  <43.859604, 32.751774, 26.611250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516335, 33.337399, 26.660908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248604, 33.040291, 26.667732>,  <43.087967, 32.862026, 26.671827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248604, 33.040291, 26.667732>,  <43.516335, 33.337399, 26.660908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248604, 33.040291, 26.667732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495308, 0.463210, 0.734919,
		-0.553779, 0.483452, -0.677940,
		-0.669327, -0.742773, 0.017059,
		43.047806, 32.817459, 26.672850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833393, 33.593407, 26.668701>,  <43.516335, 33.337399, 26.660908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833393, 33.593407, 26.668701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790596, 33.218056, 26.800159>,  <42.764919, 32.992847, 26.879034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790596, 33.218056, 26.800159>,  <42.833393, 33.593407, 26.668701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790596, 33.218056, 26.800159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544717, 0.331844, 0.770170,
		-0.831767, -0.096617, -0.546653,
		-0.106992, -0.938373, 0.328646,
		42.758499, 32.936543, 26.898754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084904, 33.555229, 26.688656>,  <42.833393, 33.593407, 26.668701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084904, 33.555229, 26.688656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256836, 33.294468, 26.938540>,  <42.359997, 33.138012, 27.088470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256836, 33.294468, 26.938540>,  <42.084904, 33.555229, 26.688656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256836, 33.294468, 26.938540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621030, 0.288777, 0.728649,
		-0.655413, -0.701160, -0.280728,
		0.429832, -0.651906, 0.624710,
		42.385784, 33.098896, 27.125952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518749, 33.426895, 27.177198>,  <42.084904, 33.555229, 26.688656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518749, 33.426895, 27.177198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836826, 33.267471, 27.359985>,  <42.027672, 33.171818, 27.469658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836826, 33.267471, 27.359985>,  <41.518749, 33.426895, 27.177198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836826, 33.267471, 27.359985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479869, 0.047039, 0.876078,
		-0.370662, -0.915937, -0.153849,
		0.795195, -0.398556, 0.456965,
		42.075386, 33.147903, 27.497074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213295, 32.989609, 27.623363>,  <41.518749, 33.426895, 27.177198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213295, 32.989609, 27.623363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574581, 33.026718, 27.790976>,  <41.791355, 33.048985, 27.891542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574581, 33.026718, 27.790976>,  <41.213295, 32.989609, 27.623363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574581, 33.026718, 27.790976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398924, -0.178613, 0.899420,
		0.158284, -0.979536, -0.124318,
		0.903220, 0.092770, 0.419032,
		41.845547, 33.054550, 27.916685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319782, 32.405735, 28.184206>,  <41.213295, 32.989609, 27.623363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319782, 32.405735, 28.184206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542210, 32.722206, 28.286055>,  <41.675667, 32.912086, 28.347164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542210, 32.722206, 28.286055>,  <41.319782, 32.405735, 28.184206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542210, 32.722206, 28.286055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282514, -0.108187, 0.953143,
		0.781649, -0.601946, 0.163359,
		0.556067, 0.791174, 0.254623,
		41.709030, 32.959557, 28.362442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567284, 32.233112, 28.837257>,  <41.319782, 32.405735, 28.184206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567284, 32.233112, 28.837257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653351, 32.623730, 28.833931>,  <41.704990, 32.858101, 28.831936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653351, 32.623730, 28.833931>,  <41.567284, 32.233112, 28.837257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653351, 32.623730, 28.833931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326276, 0.079910, 0.941891,
		0.920461, -0.199948, 0.335817,
		0.215164, 0.976543, -0.008316,
		41.717899, 32.916691, 28.831436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863964, 32.300835, 29.507488>,  <41.567284, 32.233112, 28.837257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863964, 32.300835, 29.507488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785351, 32.683907, 29.423374>,  <41.738182, 32.913750, 29.372906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785351, 32.683907, 29.423374>,  <41.863964, 32.300835, 29.507488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785351, 32.683907, 29.423374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288997, 0.148364, 0.945764,
		0.936940, 0.246644, 0.247609,
		-0.196531, 0.957682, -0.210287,
		41.726391, 32.971210, 29.360289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259995, 32.637863, 30.003342>,  <41.863964, 32.300835, 29.507488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259995, 32.637863, 30.003342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996056, 32.913437, 29.883358>,  <41.837692, 33.078781, 29.811367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996056, 32.913437, 29.883358>,  <42.259995, 32.637863, 30.003342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996056, 32.913437, 29.883358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108312, 0.307823, 0.945259,
		0.743556, 0.656211, -0.128495,
		-0.659843, 0.688936, -0.299959,
		41.798103, 33.120117, 29.793371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301731, 33.320572, 30.422884>,  <42.259995, 32.637863, 30.003342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301731, 33.320572, 30.422884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931133, 33.348930, 30.275057>,  <41.708775, 33.365944, 30.186361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931133, 33.348930, 30.275057>,  <42.301731, 33.320572, 30.422884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931133, 33.348930, 30.275057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348376, 0.209704, 0.913596,
		0.142268, 0.975191, -0.169592,
		-0.926495, 0.070894, -0.369568,
		41.653183, 33.370197, 30.164186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985275, 33.830353, 30.823027>,  <42.301731, 33.320572, 30.422884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985275, 33.830353, 30.823027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695621, 33.603756, 30.665689>,  <41.521828, 33.467800, 30.571287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695621, 33.603756, 30.665689>,  <41.985275, 33.830353, 30.823027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695621, 33.603756, 30.665689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568887, 0.168232, 0.805025,
		-0.389866, 0.806714, -0.444091,
		-0.724136, -0.566489, -0.393342,
		41.478382, 33.433807, 30.547688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303799, 34.254791, 30.820436>,  <41.985275, 33.830353, 30.823027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303799, 34.254791, 30.820436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240009, 33.860634, 30.844353>,  <41.201736, 33.624142, 30.858702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240009, 33.860634, 30.844353>,  <41.303799, 34.254791, 30.820436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240009, 33.860634, 30.844353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634551, 0.148712, 0.758439,
		-0.756250, 0.083009, -0.648995,
		-0.159470, -0.985390, 0.059790,
		41.192169, 33.565018, 30.862289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658195, 34.184830, 31.142735>,  <41.303799, 34.254791, 30.820436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658195, 34.184830, 31.142735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789154, 33.809990, 31.191158>,  <40.867729, 33.585087, 31.220213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789154, 33.809990, 31.191158>,  <40.658195, 34.184830, 31.142735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789154, 33.809990, 31.191158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566130, -0.091966, 0.819170,
		-0.756510, -0.336732, -0.560629,
		0.327400, -0.937099, 0.121061,
		40.887375, 33.528862, 31.227476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995483, 33.858643, 31.346365>,  <40.658195, 34.184830, 31.142735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995483, 33.858643, 31.346365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298988, 33.613323, 31.434130>,  <40.481091, 33.466129, 31.486790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298988, 33.613323, 31.434130>,  <39.995483, 33.858643, 31.346365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298988, 33.613323, 31.434130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459376, -0.265029, 0.847781,
		-0.461795, -0.744057, -0.482830,
		0.758761, -0.613302, 0.219413,
		40.526615, 33.429333, 31.499954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633762, 33.307899, 31.598604>,  <39.995483, 33.858643, 31.346365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633762, 33.307899, 31.598604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010464, 33.290180, 31.731951>,  <40.236485, 33.279549, 31.811958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010464, 33.290180, 31.731951>,  <39.633762, 33.307899, 31.598604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010464, 33.290180, 31.731951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332334, -0.274362, 0.902374,
		0.051486, -0.960605, -0.273105,
		0.941755, -0.044302, 0.333368,
		40.292992, 33.276890, 31.831961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755711, 32.618210, 32.084229>,  <39.633762, 33.307899, 31.598604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755711, 32.618210, 32.084229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077744, 32.839191, 32.170605>,  <40.270966, 32.971783, 32.222431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077744, 32.839191, 32.170605>,  <39.755711, 32.618210, 32.084229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077744, 32.839191, 32.170605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091127, -0.244536, 0.965349,
		0.586119, -0.796865, -0.146529,
		0.805084, 0.552456, 0.215943,
		40.319267, 33.004929, 32.235386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263760, 32.231522, 32.413731>,  <39.755711, 32.618210, 32.084229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263760, 32.231522, 32.413731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292809, 32.611473, 32.535362>,  <40.310238, 32.839443, 32.608341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292809, 32.611473, 32.535362>,  <40.263760, 32.231522, 32.413731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292809, 32.611473, 32.535362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003352, -0.305112, 0.952311,
		0.997354, -0.068142, -0.025343,
		0.072625, 0.949876, 0.304076,
		40.314594, 32.896435, 32.626583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576393, 32.193123, 33.065620>,  <40.263760, 32.231522, 32.413731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576393, 32.193123, 33.065620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459221, 32.575371, 33.078178>,  <40.388916, 32.804718, 33.085712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459221, 32.575371, 33.078178>,  <40.576393, 32.193123, 33.065620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459221, 32.575371, 33.078178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146216, -0.077223, 0.986234,
		0.944886, 0.284312, 0.162347,
		-0.292935, 0.955617, 0.031396,
		40.371342, 32.862057, 33.087597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935604, 32.546780, 33.611954>,  <40.576393, 32.193123, 33.065620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935604, 32.546780, 33.611954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625511, 32.789803, 33.542801>,  <40.439457, 32.935616, 33.501308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625511, 32.789803, 33.542801>,  <40.935604, 32.546780, 33.611954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625511, 32.789803, 33.542801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128225, 0.116633, 0.984863,
		0.618524, 0.785667, -0.012513,
		-0.775233, 0.607556, -0.172883,
		40.392941, 32.972069, 33.490936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932434, 33.061008, 34.055542>,  <40.935604, 32.546780, 33.611954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932434, 33.061008, 34.055542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563721, 33.143982, 33.924526>,  <40.342491, 33.193764, 33.845917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563721, 33.143982, 33.924526>,  <40.932434, 33.061008, 34.055542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563721, 33.143982, 33.924526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322072, 0.060595, 0.944774,
		0.215822, 0.976371, 0.010952,
		-0.921787, 0.207430, -0.327540,
		40.287186, 33.206211, 33.826263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650898, 33.708641, 34.401749>,  <40.932434, 33.061008, 34.055542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650898, 33.708641, 34.401749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333157, 33.491184, 34.293335>,  <40.142513, 33.360710, 34.228287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333157, 33.491184, 34.293335>,  <40.650898, 33.708641, 34.401749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333157, 33.491184, 34.293335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347655, 0.040982, 0.936726,
		-0.498134, 0.838318, -0.221554,
		-0.794354, -0.543639, -0.271031,
		40.094849, 33.328091, 34.212025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070541, 34.030701, 34.692081>,  <40.650898, 33.708641, 34.401749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070541, 34.030701, 34.692081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954712, 33.656792, 34.609772>,  <39.885212, 33.432446, 34.560387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954712, 33.656792, 34.609772>,  <40.070541, 34.030701, 34.692081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954712, 33.656792, 34.609772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437840, -0.061811, 0.896926,
		-0.851141, 0.349828, -0.391382,
		-0.289578, -0.934773, -0.205779,
		39.867840, 33.376358, 34.548038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447174, 33.903008, 35.012768>,  <40.070541, 34.030701, 34.692081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447174, 33.903008, 35.012768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615421, 33.545856, 34.948463>,  <39.716370, 33.331566, 34.909882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615421, 33.545856, 34.948463>,  <39.447174, 33.903008, 35.012768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615421, 33.545856, 34.948463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141148, -0.239443, 0.960596,
		-0.896192, -0.381351, -0.226742,
		0.420616, -0.892882, -0.160760,
		39.741608, 33.277992, 34.900234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965588, 33.376160, 35.149139>,  <39.447174, 33.903008, 35.012768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965588, 33.376160, 35.149139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328350, 33.216423, 35.202881>,  <39.546005, 33.120583, 35.235126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328350, 33.216423, 35.202881>,  <38.965588, 33.376160, 35.149139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328350, 33.216423, 35.202881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219296, -0.175109, 0.959816,
		-0.359769, -0.899924, -0.246381,
		0.906904, -0.399343, 0.134351,
		39.600422, 33.096619, 35.243187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829041, 32.947952, 35.666855>,  <38.965588, 33.376160, 35.149139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829041, 32.947952, 35.666855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228901, 32.953838, 35.657993>,  <39.468815, 32.957371, 35.652676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228901, 32.953838, 35.657993>,  <38.829041, 32.947952, 35.666855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228901, 32.953838, 35.657993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025101, -0.247042, 0.968680,
		0.008784, -0.968893, -0.247324,
		0.999646, 0.014717, -0.022151,
		39.528793, 32.958252, 35.651348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112129, 32.347607, 35.784691>,  <38.829041, 32.947952, 35.666855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112129, 32.347607, 35.784691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407734, 32.596268, 35.888546>,  <39.585098, 32.745464, 35.950859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407734, 32.596268, 35.888546>,  <39.112129, 32.347607, 35.784691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407734, 32.596268, 35.888546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003533, -0.381811, 0.924234,
		0.673684, -0.683937, -0.279966,
		0.739011, 0.621652, 0.259636,
		39.629436, 32.782764, 35.966438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359940, 31.991638, 36.336636>,  <39.112129, 32.347607, 35.784691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359940, 31.991638, 36.336636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535183, 32.345276, 36.401684>,  <39.640327, 32.557457, 36.440712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535183, 32.345276, 36.401684>,  <39.359940, 31.991638, 36.336636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535183, 32.345276, 36.401684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026944, -0.167905, 0.985435,
		0.898520, -0.436106, -0.049739,
		0.438106, 0.884093, 0.162617,
		39.666615, 32.610504, 36.450470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986549, 31.914001, 36.758801>,  <39.359940, 31.991638, 36.336636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986549, 31.914001, 36.758801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823650, 32.278374, 36.785187>,  <39.725910, 32.496998, 36.801018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823650, 32.278374, 36.785187>,  <39.986549, 31.914001, 36.758801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823650, 32.278374, 36.785187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254993, -0.182762, 0.949514,
		0.876997, 0.369870, 0.306711,
		-0.407252, 0.910930, 0.065968,
		39.701473, 32.551651, 36.804977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094753, 32.176418, 37.426037>,  <39.986549, 31.914001, 36.758801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094753, 32.176418, 37.426037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795464, 32.416435, 37.312820>,  <39.615891, 32.560448, 37.244892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795464, 32.416435, 37.312820>,  <40.094753, 32.176418, 37.426037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795464, 32.416435, 37.312820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416426, -0.092639, 0.904438,
		0.516483, 0.794584, 0.319189,
		-0.748221, 0.600045, -0.283039,
		39.570999, 32.596447, 37.227909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925716, 32.566322, 38.076286>,  <40.094753, 32.176418, 37.426037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925716, 32.566322, 38.076286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636711, 32.648975, 37.812382>,  <39.463310, 32.698566, 37.654041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636711, 32.648975, 37.812382>,  <39.925716, 32.566322, 38.076286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636711, 32.648975, 37.812382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678782, -0.030801, 0.733694,
		0.131283, 0.977934, 0.162512,
		-0.722510, 0.206632, -0.659760,
		39.419960, 32.710964, 37.614452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503456, 33.133759, 38.303886>,  <39.925716, 32.566322, 38.076286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503456, 33.133759, 38.303886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262012, 32.943802, 38.047718>,  <39.117146, 32.829830, 37.894020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262012, 32.943802, 38.047718>,  <39.503456, 33.133759, 38.303886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262012, 32.943802, 38.047718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727345, -0.000979, 0.686272,
		-0.326530, 0.880046, -0.344816,
		-0.603613, -0.474888, -0.640416,
		39.080929, 32.801334, 37.855595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784988, 33.565239, 38.221786>,  <39.503456, 33.133759, 38.303886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784988, 33.565239, 38.221786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721775, 33.179085, 38.138783>,  <38.683846, 32.947392, 38.088982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721775, 33.179085, 38.138783>,  <38.784988, 33.565239, 38.221786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721775, 33.179085, 38.138783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722050, -0.030367, 0.691174,
		-0.673549, 0.259063, -0.692256,
		-0.158036, -0.965383, -0.207510,
		38.674366, 32.889469, 38.076530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107430, 33.477116, 38.312263>,  <38.784988, 33.565239, 38.221786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107430, 33.477116, 38.312263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250225, 33.103733, 38.326252>,  <38.335903, 32.879704, 38.334644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250225, 33.103733, 38.326252>,  <38.107430, 33.477116, 38.312263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250225, 33.103733, 38.326252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738380, -0.259058, 0.622643,
		-0.572151, -0.248092, -0.781724,
		0.356985, -0.933455, 0.034966,
		38.357323, 32.823696, 38.336742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561096, 32.952026, 38.169266>,  <38.107430, 33.477116, 38.312263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561096, 32.952026, 38.169266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831409, 32.766342, 38.398289>,  <37.993599, 32.654930, 38.535702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831409, 32.766342, 38.398289>,  <37.561096, 32.952026, 38.169266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831409, 32.766342, 38.398289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732540, -0.336724, 0.591610,
		-0.081838, -0.819223, -0.567606,
		0.675787, -0.464210, 0.572557,
		38.034145, 32.627079, 38.570057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170521, 32.413799, 38.509209>,  <37.561096, 32.952026, 38.169266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170521, 32.413799, 38.509209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499710, 32.429020, 38.735928>,  <37.697224, 32.438152, 38.871960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499710, 32.429020, 38.735928>,  <37.170521, 32.413799, 38.509209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499710, 32.429020, 38.735928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506534, -0.402535, 0.762489,
		0.257168, -0.914614, -0.312004,
		0.822975, 0.038048, 0.566802,
		37.746601, 32.440434, 38.905968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173710, 31.822435, 39.023769>,  <37.170521, 32.413799, 38.509209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173710, 31.822435, 39.023769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464085, 32.052715, 39.174278>,  <37.638309, 32.190884, 39.264584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464085, 32.052715, 39.174278>,  <37.173710, 31.822435, 39.023769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464085, 32.052715, 39.174278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315388, -0.207527, 0.925993,
		0.611183, -0.790885, 0.030918,
		0.725938, 0.575702, 0.376272,
		37.681866, 32.225426, 39.287159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673595, 31.395309, 39.406551>,  <37.173710, 31.822435, 39.023769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673595, 31.395309, 39.406551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624279, 31.766155, 39.548115>,  <37.594688, 31.988663, 39.633053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624279, 31.766155, 39.548115>,  <37.673595, 31.395309, 39.406551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624279, 31.766155, 39.548115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385623, -0.373367, 0.843737,
		0.914381, -0.032448, 0.403552,
		-0.123296, 0.927116, 0.353913,
		37.587292, 32.044289, 39.654289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990921, 31.428297, 40.119953>,  <37.673595, 31.395309, 39.406551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990921, 31.428297, 40.119953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711666, 31.710085, 40.068840>,  <37.544113, 31.879158, 40.038170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711666, 31.710085, 40.068840>,  <37.990921, 31.428297, 40.119953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711666, 31.710085, 40.068840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516175, -0.371556, 0.771693,
		0.496153, 0.604707, 0.623026,
		-0.698137, 0.704468, -0.127786,
		37.502224, 31.921425, 40.030506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728222, 31.645674, 40.766777>,  <37.990921, 31.428297, 40.119953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728222, 31.645674, 40.766777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443794, 31.755501, 40.507858>,  <37.273140, 31.821396, 40.352505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443794, 31.755501, 40.507858>,  <37.728222, 31.645674, 40.766777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443794, 31.755501, 40.507858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698679, -0.379283, 0.606624,
		-0.078952, 0.883605, 0.461528,
		-0.711066, 0.274566, -0.647301,
		37.230476, 31.837870, 40.313667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318272, 32.064472, 41.279560>,  <37.728222, 31.645674, 40.766777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318272, 32.064472, 41.279560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089886, 31.927153, 40.981258>,  <36.952854, 31.844761, 40.802277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089886, 31.927153, 40.981258>,  <37.318272, 32.064472, 41.279560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089886, 31.927153, 40.981258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745187, -0.164482, 0.646253,
		-0.344521, 0.924711, -0.161909,
		-0.570966, -0.343300, -0.745750,
		36.918594, 31.824163, 40.757534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656212, 32.377022, 41.507225>,  <37.318272, 32.064472, 41.279560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656212, 32.377022, 41.507225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598461, 32.054546, 41.277714>,  <36.563812, 31.861061, 41.140007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598461, 32.054546, 41.277714>,  <36.656212, 32.377022, 41.507225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598461, 32.054546, 41.277714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690902, -0.332977, 0.641701,
		-0.708385, 0.489068, -0.508923,
		-0.144376, -0.806188, -0.573774,
		36.555149, 31.812691, 41.105583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062725, 32.182514, 41.588367>,  <36.656212, 32.377022, 41.507225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062725, 32.182514, 41.588367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143764, 31.829691, 41.418224>,  <36.192390, 31.617996, 41.316139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143764, 31.829691, 41.418224>,  <36.062725, 32.182514, 41.588367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143764, 31.829691, 41.418224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747519, -0.419896, 0.514687,
		-0.632588, 0.213683, -0.744427,
		0.202602, -0.882058, -0.425354,
		36.204544, 31.565073, 41.290619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457703, 31.931463, 41.405094>,  <36.062725, 32.182514, 41.588367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457703, 31.931463, 41.405094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698765, 31.612518, 41.417847>,  <35.843403, 31.421150, 41.425499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698765, 31.612518, 41.417847>,  <35.457703, 31.931463, 41.405094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698765, 31.612518, 41.417847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613943, -0.437765, 0.656838,
		-0.509784, -0.415418, -0.753357,
		0.602655, -0.797364, 0.031878,
		35.879562, 31.373310, 41.427410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042896, 31.356888, 41.383896>,  <35.457703, 31.931463, 41.405094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042896, 31.356888, 41.383896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379883, 31.260427, 41.576603>,  <35.582073, 31.202551, 41.692226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379883, 31.260427, 41.576603>,  <35.042896, 31.356888, 41.383896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379883, 31.260427, 41.576603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532400, -0.509538, 0.675960,
		0.082468, -0.825964, -0.557657,
		0.842466, -0.241152, 0.481764,
		35.632622, 31.188082, 41.721130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020264, 30.566950, 41.529583>,  <35.042896, 31.356888, 41.383896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020264, 30.566950, 41.529583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276699, 30.738186, 41.784374>,  <35.430561, 30.840927, 41.937248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276699, 30.738186, 41.784374>,  <35.020264, 30.566950, 41.529583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276699, 30.738186, 41.784374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387430, -0.535934, 0.750115,
		0.662495, -0.727677, -0.177728,
		0.641092, 0.428090, 0.636977,
		35.469028, 30.866613, 41.975468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537331, 30.099957, 41.971062>,  <35.020264, 30.566950, 41.529583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537331, 30.099957, 41.971062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421600, 30.435455, 42.155579>,  <35.352161, 30.636755, 42.266289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421600, 30.435455, 42.155579>,  <35.537331, 30.099957, 41.971062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421600, 30.435455, 42.155579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241138, -0.530227, 0.812842,
		0.926361, 0.123939, 0.355662,
		-0.289324, 0.838748, 0.461295,
		35.334805, 30.687080, 42.293968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001278, 30.253967, 42.570679>,  <35.537331, 30.099957, 41.971062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001278, 30.253967, 42.570679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610096, 30.337498, 42.570705>,  <35.375389, 30.387615, 42.570721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610096, 30.337498, 42.570705>,  <36.001278, 30.253967, 42.570679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610096, 30.337498, 42.570705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091717, -0.429808, 0.898250,
		0.187607, 0.878440, 0.439485,
		-0.977953, 0.208827, 0.000067,
		35.316711, 30.400146, 42.570724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623653, 30.510611, 42.251499>,  <36.001278, 30.253967, 42.570679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623653, 30.510611, 42.251499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328846, 30.588049, 41.992477>,  <36.151962, 30.634512, 41.837063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328846, 30.588049, 41.992477>,  <36.623653, 30.510611, 42.251499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328846, 30.588049, 41.992477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656700, 0.431726, -0.618350,
		0.159858, -0.880984, -0.445322,
		-0.737014, 0.193595, -0.647557,
		36.107742, 30.646128, 41.798210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907043, 30.600101, 41.535244>,  <36.623653, 30.510611, 42.251499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907043, 30.600101, 41.535244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552834, 30.771742, 41.464005>,  <36.340309, 30.874727, 41.421261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552834, 30.771742, 41.464005>,  <36.907043, 30.600101, 41.535244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552834, 30.771742, 41.464005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390875, 0.480885, -0.784835,
		-0.251128, -0.764605, -0.593560,
		-0.885523, 0.429102, -0.178101,
		36.287178, 30.900473, 41.410576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743011, 30.592337, 40.752117>,  <36.907043, 30.600101, 41.535244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743011, 30.592337, 40.752117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519024, 30.889154, 40.899521>,  <36.384632, 31.067245, 40.987965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519024, 30.889154, 40.899521>,  <36.743011, 30.592337, 40.752117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519024, 30.889154, 40.899521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359096, 0.618212, -0.699188,
		-0.746647, -0.259196, -0.612647,
		-0.559973, 0.742045, 0.368510,
		36.351032, 31.111769, 41.010075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377037, 30.872183, 40.240589>,  <36.743011, 30.592337, 40.752117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377037, 30.872183, 40.240589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424725, 31.152058, 40.522362>,  <36.453335, 31.319983, 40.691425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424725, 31.152058, 40.522362>,  <36.377037, 30.872183, 40.240589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424725, 31.152058, 40.522362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445125, 0.596530, -0.667844,
		-0.887497, 0.393178, -0.240332,
		0.119216, 0.699688, 0.704432,
		36.460491, 31.361963, 40.733692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083618, 31.434025, 39.894009>,  <36.377037, 30.872183, 40.240589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083618, 31.434025, 39.894009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350883, 31.553120, 40.166744>,  <36.511242, 31.624577, 40.330387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350883, 31.553120, 40.166744>,  <36.083618, 31.434025, 39.894009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350883, 31.553120, 40.166744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530179, 0.452415, -0.717099,
		-0.521983, 0.840638, 0.144433,
		0.668165, 0.297738, 0.681842,
		36.551334, 31.642441, 40.371296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332199, 32.026077, 39.638409>,  <36.083618, 31.434025, 39.894009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332199, 32.026077, 39.638409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622028, 32.055809, 39.912479>,  <36.795925, 32.073647, 40.076920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622028, 32.055809, 39.912479>,  <36.332199, 32.026077, 39.638409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622028, 32.055809, 39.912479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539699, 0.557092, -0.631169,
		-0.428619, 0.827118, 0.363540,
		0.724577, 0.074329, 0.685175,
		36.839401, 32.078106, 40.118031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521057, 32.734497, 39.888420>,  <36.332199, 32.026077, 39.638409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521057, 32.734497, 39.888420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839489, 32.498642, 39.942940>,  <37.030548, 32.357128, 39.975651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839489, 32.498642, 39.942940>,  <36.521057, 32.734497, 39.888420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839489, 32.498642, 39.942940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498741, 0.511624, -0.699642,
		0.342802, 0.624951, 0.701373,
		0.796081, -0.589642, 0.136303,
		37.078312, 32.321751, 39.983829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069138, 33.174622, 40.194492>,  <36.521057, 32.734497, 39.888420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069138, 33.174622, 40.194492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207989, 32.839130, 40.026665>,  <37.291302, 32.637836, 39.925968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207989, 32.839130, 40.026665>,  <37.069138, 33.174622, 40.194492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207989, 32.839130, 40.026665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470240, 0.542749, -0.695915,
		0.811402, 0.044277, 0.582809,
		0.347132, -0.838727, -0.419567,
		37.312130, 32.587513, 39.900795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713032, 33.246891, 40.108887>,  <37.069138, 33.174622, 40.194492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713032, 33.246891, 40.108887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711155, 32.865299, 39.988953>,  <37.710030, 32.636345, 39.916992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711155, 32.865299, 39.988953>,  <37.713032, 33.246891, 40.108887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711155, 32.865299, 39.988953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497660, 0.257848, -0.828160,
		0.867360, -0.153101, 0.473548,
		-0.004688, -0.953978, -0.299839,
		37.709747, 32.579105, 39.899002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416222, 33.047848, 39.914719>,  <37.713032, 33.246891, 40.108887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416222, 33.047848, 39.914719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206482, 32.767963, 39.720623>,  <38.080639, 32.600033, 39.604164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206482, 32.767963, 39.720623>,  <38.416222, 33.047848, 39.914719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206482, 32.767963, 39.720623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608226, 0.091040, -0.788526,
		0.595915, -0.708604, 0.377844,
		-0.524353, -0.699709, -0.485243,
		38.049175, 32.558052, 39.575050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929344, 32.520264, 39.562763>,  <38.416222, 33.047848, 39.914719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929344, 32.520264, 39.562763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578846, 32.486275, 39.373035>,  <38.368546, 32.465881, 39.259201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578846, 32.486275, 39.373035>,  <38.929344, 32.520264, 39.562763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578846, 32.486275, 39.373035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474333, 0.021279, -0.880088,
		0.084877, -0.996156, 0.021660,
		-0.876245, -0.084973, -0.474316,
		38.315971, 32.460785, 39.230740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035912, 31.978153, 39.134705>,  <38.929344, 32.520264, 39.562763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035912, 31.978153, 39.134705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726116, 32.179852, 38.981915>,  <38.540237, 32.300869, 38.890240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726116, 32.179852, 38.981915>,  <39.035912, 31.978153, 39.134705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726116, 32.179852, 38.981915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542247, 0.218218, -0.811387,
		-0.325786, -0.835534, -0.442433,
		-0.774488, 0.504246, -0.381973,
		38.493771, 32.331127, 38.867321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084244, 31.783405, 38.393402>,  <39.035912, 31.978153, 39.134705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084244, 31.783405, 38.393402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879093, 32.125561, 38.422440>,  <38.756004, 32.330853, 38.439861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879093, 32.125561, 38.422440>,  <39.084244, 31.783405, 38.393402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879093, 32.125561, 38.422440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197773, 0.200021, -0.959623,
		-0.835372, -0.477808, -0.271758,
		-0.512873, 0.855389, 0.072595,
		38.725231, 32.382179, 38.444218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467873, 31.682911, 37.900505>,  <39.084244, 31.783405, 38.393402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467873, 31.682911, 37.900505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599335, 32.051052, 37.985302>,  <38.678211, 32.271938, 38.036179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599335, 32.051052, 37.985302>,  <38.467873, 31.682911, 37.900505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599335, 32.051052, 37.985302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315369, 0.104634, -0.943183,
		-0.890242, 0.376834, -0.255862,
		0.328652, 0.920352, 0.211991,
		38.697929, 32.327156, 38.048901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296635, 31.994431, 37.281658>,  <38.467873, 31.682911, 37.900505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296635, 31.994431, 37.281658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538769, 32.250771, 37.470501>,  <38.684048, 32.404575, 37.583805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538769, 32.250771, 37.470501>,  <38.296635, 31.994431, 37.281658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538769, 32.250771, 37.470501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495110, 0.161263, -0.853733,
		-0.623249, 0.750536, -0.219674,
		0.605332, 0.640850, 0.472105,
		38.720367, 32.443027, 37.612133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395870, 32.567600, 36.746086>,  <38.296635, 31.994431, 37.281658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395870, 32.567600, 36.746086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682156, 32.605740, 37.022831>,  <38.853928, 32.628624, 37.188877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682156, 32.605740, 37.022831>,  <38.395870, 32.567600, 36.746086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682156, 32.605740, 37.022831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624893, 0.354951, -0.695355,
		-0.311878, 0.930010, 0.194458,
		0.715710, 0.095350, 0.691858,
		38.896870, 32.634346, 37.230389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599831, 33.184017, 36.744785>,  <38.395870, 32.567600, 36.746086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599831, 33.184017, 36.744785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926968, 33.032799, 36.918320>,  <39.123249, 32.942066, 37.022442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926968, 33.032799, 36.918320>,  <38.599831, 33.184017, 36.744785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926968, 33.032799, 36.918320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572500, 0.458400, -0.679789,
		0.058121, 0.804332, 0.591331,
		0.817842, -0.378046, 0.433837,
		39.172321, 32.919384, 37.048470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275299, 33.785564, 36.754940>,  <38.599831, 33.184017, 36.744785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275299, 33.785564, 36.754940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416027, 33.411736, 36.776077>,  <39.500465, 33.187439, 36.788757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416027, 33.411736, 36.776077>,  <39.275299, 33.785564, 36.754940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416027, 33.411736, 36.776077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557210, 0.163739, -0.814068,
		0.752154, 0.315852, 0.578361,
		0.351825, -0.934573, 0.052839,
		39.521576, 33.131363, 36.791927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959167, 33.793400, 36.744347>,  <39.275299, 33.785564, 36.754940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959167, 33.793400, 36.744347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866402, 33.432819, 36.598141>,  <39.810741, 33.216473, 36.510418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866402, 33.432819, 36.598141>,  <39.959167, 33.793400, 36.744347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866402, 33.432819, 36.598141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575006, 0.176041, -0.798985,
		0.784592, -0.395470, 0.477514,
		-0.231913, -0.901451, -0.365518,
		39.796829, 33.162384, 36.488487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513554, 33.693272, 36.254749>,  <39.959167, 33.793400, 36.744347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513554, 33.693272, 36.254749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248142, 33.408367, 36.163181>,  <40.088894, 33.237423, 36.108238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248142, 33.408367, 36.163181>,  <40.513554, 33.693272, 36.254749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248142, 33.408367, 36.163181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428115, -0.110548, -0.896937,
		0.613550, -0.693150, 0.378284,
		-0.663531, -0.712265, -0.228922,
		40.049084, 33.194687, 36.094505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833000, 33.215748, 35.814869>,  <40.513554, 33.693272, 36.254749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833000, 33.215748, 35.814869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443913, 33.143356, 35.756809>,  <40.210461, 33.099922, 35.721973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443913, 33.143356, 35.756809>,  <40.833000, 33.215748, 35.814869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443913, 33.143356, 35.756809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163230, -0.089303, -0.982538,
		0.164861, -0.979423, 0.116408,
		-0.972716, -0.180984, -0.145149,
		40.152096, 33.089062, 35.713264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814453, 32.586437, 35.418659>,  <40.833000, 33.215748, 35.814869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814453, 32.586437, 35.418659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464973, 32.776798, 35.378323>,  <40.255287, 32.891014, 35.354122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464973, 32.776798, 35.378323>,  <40.814453, 32.586437, 35.418659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464973, 32.776798, 35.378323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066275, -0.088909, -0.993832,
		-0.481934, -0.874992, 0.046139,
		-0.873698, 0.475904, -0.100838,
		40.202866, 32.919571, 35.348072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343075, 31.942652, 35.292763>,  <40.814453, 32.586437, 35.418659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343075, 31.942652, 35.292763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438862, 31.798372, 34.932198>,  <40.496334, 31.711805, 34.715858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438862, 31.798372, 34.932198>,  <40.343075, 31.942652, 35.292763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438862, 31.798372, 34.932198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952343, 0.267936, 0.145786,
		0.188937, -0.893369, 0.407670,
		0.239470, -0.360697, -0.901417,
		40.510704, 31.690163, 34.661774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026783, 31.560867, 35.399357>,  <40.343075, 31.942652, 35.292763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026783, 31.560867, 35.399357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003498, 31.685251, 35.019901>,  <40.989529, 31.759882, 34.792229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003498, 31.685251, 35.019901>,  <41.026783, 31.560867, 35.399357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003498, 31.685251, 35.019901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885091, 0.455612, 0.095036,
		0.461763, -0.834100, -0.301748,
		-0.058211, 0.310959, -0.948639,
		40.986034, 31.778540, 34.735310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554127, 31.268179, 35.093983>,  <41.026783, 31.560867, 35.399357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554127, 31.268179, 35.093983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478512, 31.592964, 34.873085>,  <41.433144, 31.787836, 34.740547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478512, 31.592964, 34.873085>,  <41.554127, 31.268179, 35.093983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478512, 31.592964, 34.873085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977938, 0.206576, -0.031029,
		0.088887, -0.545930, -0.833102,
		-0.189039, 0.811965, -0.552248,
		41.421799, 31.836554, 34.707409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998936, 31.245989, 34.550938>,  <41.554127, 31.268179, 35.093983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998936, 31.245989, 34.550938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891403, 31.623829, 34.626259>,  <41.826881, 31.850533, 34.671452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891403, 31.623829, 34.626259>,  <41.998936, 31.245989, 34.550938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891403, 31.623829, 34.626259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943298, 0.297726, -0.146793,
		-0.194723, 0.138162, -0.971079,
		-0.268834, 0.944601, 0.188302,
		41.810753, 31.907209, 34.682751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984444, 31.758722, 33.927021>,  <41.998936, 31.245989, 34.550938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984444, 31.758722, 33.927021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104218, 31.943808, 34.260784>,  <42.176083, 32.054859, 34.461040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104218, 31.943808, 34.260784>,  <41.984444, 31.758722, 33.927021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104218, 31.943808, 34.260784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918568, 0.096687, -0.383255,
		-0.258014, 0.881219, -0.396083,
		0.299436, 0.462715, 0.834406,
		42.194050, 32.082623, 34.511105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360817, 32.326786, 33.666275>,  <41.984444, 31.758722, 33.927021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360817, 32.326786, 33.666275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469059, 32.226547, 34.038074>,  <42.534004, 32.166405, 34.261154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469059, 32.226547, 34.038074>,  <42.360817, 32.326786, 33.666275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469059, 32.226547, 34.038074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960995, 0.013049, -0.276258,
		0.057101, 0.968003, 0.244355,
		0.270607, -0.250599, 0.929501,
		42.550240, 32.151367, 34.316925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718815, 32.932140, 34.121040>,  <42.360817, 32.326786, 33.666275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718815, 32.932140, 34.121040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835045, 32.562767, 34.221306>,  <42.904785, 32.341145, 34.281464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835045, 32.562767, 34.221306>,  <42.718815, 32.932140, 34.121040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835045, 32.562767, 34.221306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902362, 0.177322, -0.392810,
		0.318287, 0.340331, 0.884798,
		0.290580, -0.923435, 0.250663,
		42.922218, 32.285736, 34.296505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384819, 32.956959, 34.655464>,  <42.718815, 32.932140, 34.121040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384819, 32.956959, 34.655464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353725, 32.615799, 34.448963>,  <43.335068, 32.411102, 34.325062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353725, 32.615799, 34.448963>,  <43.384819, 32.956959, 34.655464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353725, 32.615799, 34.448963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895273, 0.168132, -0.412575,
		0.438684, -0.494260, 0.750509,
		-0.077735, -0.852900, -0.516254,
		43.330406, 32.359928, 34.294086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926662, 32.431976, 34.827095>,  <43.384819, 32.956959, 34.655464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926662, 32.431976, 34.827095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809837, 32.413982, 34.444958>,  <43.739742, 32.403187, 34.215675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809837, 32.413982, 34.444958>,  <43.926662, 32.431976, 34.827095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809837, 32.413982, 34.444958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918909, 0.263735, -0.293343,
		0.265154, -0.963545, -0.035687,
		-0.292062, -0.044988, -0.955341,
		43.722218, 32.400490, 34.158356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306812, 31.929554, 34.498158>,  <43.926662, 32.431976, 34.827095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306812, 31.929554, 34.498158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215080, 32.247379, 34.273273>,  <44.160042, 32.438076, 34.138344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215080, 32.247379, 34.273273>,  <44.306812, 31.929554, 34.498158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215080, 32.247379, 34.273273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950081, 0.057190, -0.306718,
		-0.211554, -0.604483, -0.768014,
		-0.229328, 0.794562, -0.562209,
		44.146282, 32.485748, 34.104610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442146, 31.839710, 33.759212>,  <44.306812, 31.929554, 34.498158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442146, 31.839710, 33.759212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462345, 32.235821, 33.811066>,  <44.474464, 32.473488, 33.842178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462345, 32.235821, 33.811066>,  <44.442146, 31.839710, 33.759212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462345, 32.235821, 33.811066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926922, 0.001852, -0.375249,
		-0.371840, 0.139108, -0.917815,
		0.050500, 0.990276, 0.129631,
		44.477493, 32.532902, 33.849957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826027, 32.184479, 33.187187>,  <44.442146, 31.839710, 33.759212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826027, 32.184479, 33.187187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848816, 32.414104, 33.513916>,  <44.862488, 32.551880, 33.709953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848816, 32.414104, 33.513916>,  <44.826027, 32.184479, 33.187187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848816, 32.414104, 33.513916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982645, 0.112422, -0.147550,
		-0.176532, 0.811055, -0.557697,
		0.056974, 0.574066, 0.816825,
		44.865910, 32.586323, 33.758965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241558, 32.864086, 33.024769>,  <44.826027, 32.184479, 33.187187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241558, 32.864086, 33.024769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.293476, 32.768562, 33.409710>,  <45.324627, 32.711250, 33.640675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.293476, 32.768562, 33.409710>,  <45.241558, 32.864086, 33.024769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293476, 32.768562, 33.409710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955137, 0.290689, -0.056691,
		-0.266207, 0.926537, 0.265823,
		0.129798, -0.238806, 0.962353,
		45.332417, 32.696918, 33.698418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421459, 33.424618, 33.460087>,  <45.241558, 32.864086, 33.024769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421459, 33.424618, 33.460087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612717, 33.092445, 33.574463>,  <45.727470, 32.893143, 33.643089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612717, 33.092445, 33.574463>,  <45.421459, 33.424618, 33.460087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612717, 33.092445, 33.574463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725340, 0.556947, 0.404588,
		-0.495234, 0.013950, 0.868648,
		0.478147, -0.830431, 0.285938,
		45.756161, 32.843315, 33.660244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.668102, 33.397446, 34.124527>,  <45.421459, 33.424618, 33.460087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.668102, 33.397446, 34.124527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888874, 33.155437, 33.894981>,  <46.021339, 33.010235, 33.757252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888874, 33.155437, 33.894981>,  <45.668102, 33.397446, 34.124527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888874, 33.155437, 33.894981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827897, 0.479920, 0.290281,
		0.099786, -0.635319, 0.765775,
		0.551932, -0.605017, -0.573868,
		46.054455, 32.973934, 33.722820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208904, 33.038345, 34.503586>,  <45.668102, 33.397446, 34.124527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208904, 33.038345, 34.503586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310135, 33.123398, 34.126072>,  <46.370872, 33.174431, 33.899563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310135, 33.123398, 34.126072>,  <46.208904, 33.038345, 34.503586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.310135, 33.123398, 34.126072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834181, 0.446135, 0.324200,
		0.489993, -0.869339, -0.064469,
		0.253078, 0.212634, -0.943790,
		46.386059, 33.187187, 33.842934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.900177, 32.860050, 34.289803>,  <46.208904, 33.038345, 34.503586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.900177, 32.860050, 34.289803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752071, 33.196178, 34.131432>,  <46.663208, 33.397858, 34.036407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752071, 33.196178, 34.131432>,  <46.900177, 32.860050, 34.289803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752071, 33.196178, 34.131432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747850, 0.522485, 0.409548,
		0.551020, -0.144456, -0.821894,
		-0.370266, 0.840322, -0.395931,
		46.640991, 33.448277, 34.012653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427002, 33.302319, 33.901199>,  <46.900177, 32.860050, 34.289803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.427002, 33.302319, 33.901199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127178, 33.533665, 34.029980>,  <46.947285, 33.672474, 34.107250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127178, 33.533665, 34.029980>,  <47.427002, 33.302319, 33.901199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127178, 33.533665, 34.029980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661128, 0.630085, 0.407312,
		0.032718, 0.518157, -0.854659,
		-0.749559, 0.578366, 0.321953,
		46.902309, 33.707176, 34.126564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.400097, 34.092335, 33.618801>,  <47.427002, 33.302319, 33.901199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.400097, 34.092335, 33.618801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.291946, 34.016598, 33.996384>,  <47.227058, 33.971157, 34.222931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.291946, 34.016598, 33.996384>,  <47.400097, 34.092335, 33.618801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.291946, 34.016598, 33.996384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775504, 0.538186, 0.330074,
		-0.570519, 0.821283, 0.001322,
		-0.270373, -0.189339, 0.943954,
		47.210835, 33.959797, 34.279572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.442799, 34.824291, 33.895226>,  <47.400097, 34.092335, 33.618801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.442799, 34.824291, 33.895226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.484138, 34.554180, 34.187340>,  <47.508942, 34.392113, 34.362610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.484138, 34.554180, 34.187340>,  <47.442799, 34.824291, 33.895226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.484138, 34.554180, 34.187340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831151, 0.461938, 0.309519,
		-0.546359, 0.574992, 0.608996,
		0.103347, -0.675276, 0.730289,
		47.515144, 34.351597, 34.406425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.019730, 35.115456, 34.348427>,  <47.442799, 34.824291, 33.895226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.019730, 35.115456, 34.348427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777973, 35.181458, 34.660194>,  <47.632919, 35.221058, 34.847256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777973, 35.181458, 34.660194>,  <48.019730, 35.115456, 34.348427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.777973, 35.181458, 34.660194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796131, 0.088468, 0.598622,
		0.029824, 0.982317, -0.184837,
		-0.604388, 0.165007, 0.779415,
		47.596657, 35.230961, 34.894020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.132732, 26.961325, 26.214813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759609, 26.833340, 26.148483>,  <38.535736, 26.756548, 26.108686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759609, 26.833340, 26.148483>,  <39.132732, 26.961325, 26.214813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759609, 26.833340, 26.148483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291562, 0.399591, 0.869090,
		-0.211816, 0.859040, -0.466030,
		-0.932805, -0.319964, -0.165824,
		38.479767, 26.737350, 26.098736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726486, 27.511179, 26.362705>,  <39.132732, 26.961325, 26.214813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726486, 27.511179, 26.362705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522591, 27.170029, 26.407907>,  <38.400253, 26.965338, 26.435030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522591, 27.170029, 26.407907>,  <38.726486, 27.511179, 26.362705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522591, 27.170029, 26.407907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255965, 0.275747, 0.926523,
		-0.821372, 0.443355, -0.358864,
		-0.509735, -0.852877, 0.113007,
		38.369671, 26.914165, 26.441811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125771, 27.742788, 26.670847>,  <38.726486, 27.511179, 26.362705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125771, 27.742788, 26.670847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080685, 27.346836, 26.705334>,  <38.053635, 27.109264, 26.726027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080685, 27.346836, 26.705334>,  <38.125771, 27.742788, 26.670847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080685, 27.346836, 26.705334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280850, 0.114970, 0.952841,
		-0.953110, 0.083183, -0.290966,
		-0.112713, -0.989880, 0.086217,
		38.046871, 27.049871, 26.731199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419292, 27.614901, 27.027853>,  <38.125771, 27.742788, 26.670847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419292, 27.614901, 27.027853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625526, 27.281868, 27.108820>,  <37.749268, 27.082048, 27.157400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625526, 27.281868, 27.108820>,  <37.419292, 27.614901, 27.027853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625526, 27.281868, 27.108820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036814, 0.214494, 0.976031,
		-0.856045, -0.510683, 0.079940,
		0.515589, -0.832584, 0.202417,
		37.780205, 27.032093, 27.169544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097179, 27.327621, 27.524645>,  <37.419292, 27.614901, 27.027853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097179, 27.327621, 27.524645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465824, 27.177280, 27.563364>,  <37.687012, 27.087076, 27.586596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465824, 27.177280, 27.563364>,  <37.097179, 27.327621, 27.524645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465824, 27.177280, 27.563364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019927, 0.203256, 0.978923,
		-0.387607, -0.904113, 0.179833,
		0.921609, -0.375854, 0.096799,
		37.742306, 27.064524, 27.592403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036732, 26.777950, 28.071920>,  <37.097179, 27.327621, 27.524645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036732, 26.777950, 28.071920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428226, 26.858345, 28.055532>,  <37.663124, 26.906582, 28.045700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428226, 26.858345, 28.055532>,  <37.036732, 26.777950, 28.071920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428226, 26.858345, 28.055532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007674, 0.163713, 0.986478,
		0.204981, -0.965816, 0.158690,
		0.978736, 0.200991, -0.040969,
		37.721848, 26.918642, 28.043242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273052, 26.557526, 28.668312>,  <37.036732, 26.777950, 28.071920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273052, 26.557526, 28.668312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.572258, 26.795712, 28.551081>,  <37.751781, 26.938623, 28.480742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.572258, 26.795712, 28.551081>,  <37.273052, 26.557526, 28.668312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572258, 26.795712, 28.551081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089937, 0.346572, 0.933702,
		0.657560, -0.724781, 0.205687,
		0.748015, 0.595466, -0.293076,
		37.796661, 26.974352, 28.463158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749195, 26.602613, 29.185781>,  <37.273052, 26.557526, 28.668312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749195, 26.602613, 29.185781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806206, 26.935778, 28.971888>,  <37.840412, 27.135677, 28.843552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806206, 26.935778, 28.971888>,  <37.749195, 26.602613, 29.185781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806206, 26.935778, 28.971888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009568, 0.539067, 0.842208,
		0.989744, -0.125156, 0.068863,
		0.142529, 0.832912, -0.534736,
		37.848965, 27.185652, 28.811466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029568, 26.889820, 29.689636>,  <37.749195, 26.602613, 29.185781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029568, 26.889820, 29.689636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.949562, 27.199623, 29.449593>,  <37.901558, 27.385506, 29.305567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.949562, 27.199623, 29.449593>,  <38.029568, 26.889820, 29.689636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949562, 27.199623, 29.449593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118393, 0.588893, 0.799492,
		0.972613, 0.230960, -0.026092,
		-0.200016, 0.774508, -0.600110,
		37.889557, 27.431976, 29.269560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385773, 27.386932, 30.045914>,  <38.029568, 26.889820, 29.689636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385773, 27.386932, 30.045914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120472, 27.579218, 29.816477>,  <37.961292, 27.694590, 29.678814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120472, 27.579218, 29.816477>,  <38.385773, 27.386932, 30.045914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120472, 27.579218, 29.816477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063279, 0.727663, 0.683010,
		0.745714, 0.489305, -0.452206,
		-0.663254, 0.480715, -0.573592,
		37.921497, 27.723433, 29.644400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679039, 27.951817, 29.923695>,  <38.385773, 27.386932, 30.045914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679039, 27.951817, 29.923695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.281532, 27.989578, 29.899998>,  <38.043026, 28.012236, 29.885778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.281532, 27.989578, 29.899998>,  <38.679039, 27.951817, 29.923695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281532, 27.989578, 29.899998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005888, 0.575278, 0.817936,
		0.111299, 0.812491, -0.572250,
		-0.993769, 0.094405, -0.059244,
		37.983402, 28.017900, 29.882225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572571, 28.330778, 30.520569>,  <38.679039, 27.951817, 29.923695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572571, 28.330778, 30.520569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186108, 28.317530, 30.418238>,  <37.954231, 28.309580, 30.356840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186108, 28.317530, 30.418238>,  <38.572571, 28.330778, 30.520569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186108, 28.317530, 30.418238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247286, 0.401259, 0.881953,
		0.073442, 0.915366, -0.395868,
		-0.966155, -0.033120, -0.255826,
		37.896259, 28.307594, 30.341490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246632, 29.018642, 30.643021>,  <38.572571, 28.330778, 30.520569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246632, 29.018642, 30.643021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946209, 28.754576, 30.646828>,  <37.765953, 28.596136, 30.649111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946209, 28.754576, 30.646828>,  <38.246632, 29.018642, 30.643021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946209, 28.754576, 30.646828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360588, 0.422223, 0.831688,
		-0.553070, 0.621216, -0.555162,
		-0.751060, -0.660166, 0.009516,
		37.720890, 28.556526, 30.649683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599285, 29.364166, 30.715700>,  <38.246632, 29.018642, 30.643021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599285, 29.364166, 30.715700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550335, 29.004793, 30.884384>,  <37.520966, 28.789169, 30.985596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550335, 29.004793, 30.884384>,  <37.599285, 29.364166, 30.715700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550335, 29.004793, 30.884384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280195, 0.438896, 0.853734,
		-0.952111, -0.013682, -0.305448,
		-0.122379, -0.898434, 0.421711,
		37.513622, 28.735264, 31.010897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030651, 29.411343, 31.017603>,  <37.599285, 29.364166, 30.715700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030651, 29.411343, 31.017603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190952, 29.096825, 31.205702>,  <37.287132, 28.908113, 31.318562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190952, 29.096825, 31.205702>,  <37.030651, 29.411343, 31.017603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190952, 29.096825, 31.205702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321556, 0.359903, 0.875826,
		-0.857902, -0.502205, -0.108605,
		0.400757, -0.786295, 0.470249,
		37.311180, 28.860935, 31.346777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435417, 29.085087, 31.442154>,  <37.030651, 29.411343, 31.017603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435417, 29.085087, 31.442154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790051, 28.977045, 31.592365>,  <37.002831, 28.912220, 31.682491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790051, 28.977045, 31.592365>,  <36.435417, 29.085087, 31.442154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790051, 28.977045, 31.592365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199282, 0.509595, 0.837018,
		-0.417449, -0.816919, 0.397970,
		0.886580, -0.270104, 0.375527,
		37.056023, 28.896013, 31.705023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246727, 28.784109, 32.088192>,  <36.435417, 29.085087, 31.442154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246727, 28.784109, 32.088192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.634830, 28.868204, 32.136181>,  <36.867695, 28.918661, 32.164974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.634830, 28.868204, 32.136181>,  <36.246727, 28.784109, 32.088192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634830, 28.868204, 32.136181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179037, 0.289723, 0.940216,
		0.162911, -0.933734, 0.318748,
		0.970261, 0.210239, 0.119974,
		36.925907, 28.931276, 32.172173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457455, 28.425297, 32.714874>,  <36.246727, 28.784109, 32.088192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457455, 28.425297, 32.714874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705708, 28.731821, 32.648445>,  <36.854660, 28.915735, 32.608589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705708, 28.731821, 32.648445>,  <36.457455, 28.425297, 32.714874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705708, 28.731821, 32.648445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132040, 0.310921, 0.941219,
		0.772901, -0.562226, 0.294152,
		0.620636, 0.766310, -0.166074,
		36.891899, 28.961714, 32.598621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873310, 28.357628, 33.359901>,  <36.457455, 28.425297, 32.714874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873310, 28.357628, 33.359901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917015, 28.720152, 33.196606>,  <36.943237, 28.937666, 33.098629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917015, 28.720152, 33.196606>,  <36.873310, 28.357628, 33.359901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917015, 28.720152, 33.196606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072918, 0.416902, 0.906022,
		0.991335, -0.069228, 0.111639,
		0.109264, 0.906311, -0.408241,
		36.949795, 28.992044, 33.074135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252487, 28.617882, 33.883133>,  <36.873310, 28.357628, 33.359901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252487, 28.617882, 33.883133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105782, 28.914604, 33.658562>,  <37.017757, 29.092638, 33.523819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105782, 28.914604, 33.658562>,  <37.252487, 28.617882, 33.883133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105782, 28.914604, 33.658562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087549, 0.573286, 0.814665,
		0.926185, 0.347943, -0.145317,
		-0.366765, 0.741808, -0.561431,
		36.995750, 29.137146, 33.490131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491375, 29.152145, 34.172165>,  <37.252487, 28.617882, 33.883133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491375, 29.152145, 34.172165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219006, 29.337162, 33.945045>,  <37.055584, 29.448172, 33.808773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219006, 29.337162, 33.945045>,  <37.491375, 29.152145, 34.172165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219006, 29.337162, 33.945045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151697, 0.669414, 0.727237,
		0.716469, 0.581328, -0.385655,
		-0.680926, 0.462540, -0.567800,
		37.014729, 29.475924, 33.774704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752514, 29.822500, 34.103935>,  <37.491375, 29.152145, 34.172165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752514, 29.822500, 34.103935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356560, 29.823380, 34.047203>,  <37.118988, 29.823908, 34.013165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356560, 29.823380, 34.047203>,  <37.752514, 29.822500, 34.103935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356560, 29.823380, 34.047203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069192, 0.865365, 0.496343,
		0.123826, 0.501137, -0.856463,
		-0.989889, 0.002200, -0.141829,
		37.059593, 29.824039, 34.004654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209721, 30.373451, 33.804375>,  <37.752514, 29.822500, 34.103935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209721, 30.373451, 33.804375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524597, 30.512583, 34.008080>,  <38.713524, 30.596062, 34.130302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524597, 30.512583, 34.008080>,  <38.209721, 30.373451, 33.804375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524597, 30.512583, 34.008080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471713, 0.192331, -0.860521,
		-0.397261, 0.917618, -0.012674,
		0.787192, 0.347830, 0.509258,
		38.760754, 30.616932, 34.160858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447315, 30.913515, 33.413261>,  <38.209721, 30.373451, 33.804375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447315, 30.913515, 33.413261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772083, 30.812576, 33.623825>,  <38.966946, 30.752012, 33.750164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772083, 30.812576, 33.623825>,  <38.447315, 30.913515, 33.413261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772083, 30.812576, 33.623825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572539, 0.168234, -0.802432,
		0.113934, 0.952899, 0.281073,
		0.811922, -0.252349, 0.526405,
		39.015659, 30.736872, 33.781746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960934, 31.320951, 33.149120>,  <38.447315, 30.913515, 33.413261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960934, 31.320951, 33.149120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201523, 31.066299, 33.342171>,  <39.345879, 30.913507, 33.458000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201523, 31.066299, 33.342171>,  <38.960934, 31.320951, 33.149120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201523, 31.066299, 33.342171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670913, 0.074560, -0.737778,
		0.433706, 0.767557, 0.471969,
		0.601477, -0.636629, 0.482627,
		39.381966, 30.875311, 33.486958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615051, 31.585928, 33.095211>,  <38.960934, 31.320951, 33.149120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615051, 31.585928, 33.095211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.654285, 31.195541, 33.173046>,  <39.677826, 30.961309, 33.219749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.654285, 31.195541, 33.173046>,  <39.615051, 31.585928, 33.095211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654285, 31.195541, 33.173046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742520, -0.058418, -0.667272,
		0.662604, 0.209937, 0.718945,
		0.098086, -0.975968, 0.194590,
		39.683712, 30.902750, 33.231422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354389, 31.317865, 33.158039>,  <39.615051, 31.585928, 33.095211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354389, 31.317865, 33.158039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.138088, 30.998104, 33.053318>,  <40.008308, 30.806248, 32.990486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.138088, 30.998104, 33.053318>,  <40.354389, 31.317865, 33.158039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138088, 30.998104, 33.053318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729630, -0.290866, -0.618900,
		0.418601, -0.525692, 0.740555,
		-0.540753, -0.799403, -0.261804,
		39.975861, 30.758284, 32.974777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865574, 30.770931, 33.205727>,  <40.354389, 31.317865, 33.158039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865574, 30.770931, 33.205727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.569630, 30.636784, 32.972443>,  <40.392063, 30.556295, 32.832474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.569630, 30.636784, 32.972443>,  <40.865574, 30.770931, 33.205727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569630, 30.636784, 32.972443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672321, -0.337333, -0.658932,
		0.024250, -0.879622, 0.475055,
		-0.739862, -0.335369, -0.583208,
		40.347672, 30.536173, 32.797482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153069, 30.104929, 32.921585>,  <40.865574, 30.770931, 33.205727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153069, 30.104929, 32.921585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.828262, 30.191681, 32.704849>,  <40.633377, 30.243732, 32.574806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.828262, 30.191681, 32.704849>,  <41.153069, 30.104929, 32.921585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828262, 30.191681, 32.704849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462944, -0.326001, -0.824261,
		-0.355413, -0.920154, 0.164310,
		-0.812013, 0.216886, -0.541844,
		40.584660, 30.256744, 32.542297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052383, 29.575531, 32.412773>,  <41.153069, 30.104929, 32.921585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052383, 29.575531, 32.412773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.813450, 29.861797, 32.267986>,  <40.670090, 30.033558, 32.181114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.813450, 29.861797, 32.267986>,  <41.052383, 29.575531, 32.412773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813450, 29.861797, 32.267986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187705, -0.314037, -0.930670,
		-0.779721, -0.623859, 0.053249,
		-0.597329, 0.715668, -0.361962,
		40.634251, 30.076498, 32.159397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710236, 29.227005, 31.906027>,  <41.052383, 29.575531, 32.412773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710236, 29.227005, 31.906027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.667847, 29.616632, 31.826071>,  <40.642414, 29.850410, 31.778097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.667847, 29.616632, 31.826071>,  <40.710236, 29.227005, 31.906027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667847, 29.616632, 31.826071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018031, -0.202872, -0.979039,
		-0.994206, -0.100143, 0.039062,
		-0.105968, 0.974071, -0.199891,
		40.636055, 29.908854, 31.766104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144428, 29.371012, 31.478252>,  <40.710236, 29.227005, 31.906027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144428, 29.371012, 31.478252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365635, 29.689861, 31.381283>,  <40.498360, 29.881170, 31.323101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365635, 29.689861, 31.381283>,  <40.144428, 29.371012, 31.478252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365635, 29.689861, 31.381283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190483, -0.162296, -0.968182,
		-0.811105, 0.581595, 0.062087,
		0.553014, 0.797124, -0.242423,
		40.531540, 29.928999, 31.308556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686485, 29.728014, 31.023428>,  <40.144428, 29.371012, 31.478252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686485, 29.728014, 31.023428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.072514, 29.822262, 30.977617>,  <40.304131, 29.878811, 30.950130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.072514, 29.822262, 30.977617>,  <39.686485, 29.728014, 31.023428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072514, 29.822262, 30.977617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042646, -0.290034, -0.956066,
		-0.258484, 0.927558, -0.269856,
		0.965074, 0.235620, -0.114525,
		40.362034, 29.892948, 30.943260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667583, 30.155165, 30.532616>,  <39.686485, 29.728014, 31.023428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667583, 30.155165, 30.532616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048786, 30.035156, 30.549383>,  <40.277508, 29.963152, 30.559444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048786, 30.035156, 30.549383>,  <39.667583, 30.155165, 30.532616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048786, 30.035156, 30.549383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008458, -0.111967, -0.993676,
		0.302817, 0.947339, -0.104168,
		0.953011, -0.300021, 0.041919,
		40.334690, 29.945150, 30.561958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948757, 30.379375, 29.854752>,  <39.667583, 30.155165, 30.532616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948757, 30.379375, 29.854752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.199436, 30.095011, 29.982414>,  <40.349842, 29.924393, 30.059011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.199436, 30.095011, 29.982414>,  <39.948757, 30.379375, 29.854752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199436, 30.095011, 29.982414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191385, -0.256606, -0.947378,
		0.755398, 0.654798, -0.024756,
		0.626694, -0.710910, 0.319158,
		40.387444, 29.881739, 30.078161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522427, 30.301006, 29.379156>,  <39.948757, 30.379375, 29.854752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522427, 30.301006, 29.379156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.533184, 29.958216, 29.585016>,  <40.539639, 29.752541, 29.708532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.533184, 29.958216, 29.585016>,  <40.522427, 30.301006, 29.379156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533184, 29.958216, 29.585016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191432, -0.500893, -0.844074,
		0.981137, 0.121225, 0.150579,
		0.026898, -0.856978, 0.514651,
		40.541252, 29.701122, 29.739412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141365, 29.883179, 29.084059>,  <40.522427, 30.301006, 29.379156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141365, 29.883179, 29.084059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.890099, 29.632690, 29.268776>,  <40.739338, 29.482397, 29.379606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.890099, 29.632690, 29.268776>,  <41.141365, 29.883179, 29.084059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890099, 29.632690, 29.268776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096672, -0.651721, -0.752273,
		0.772050, -0.427911, 0.469927,
		-0.628167, -0.626221, 0.461794,
		40.701649, 29.444824, 29.407314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470715, 29.213139, 29.002308>,  <41.141365, 29.883179, 29.084059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470715, 29.213139, 29.002308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.081451, 29.154198, 29.073009>,  <40.847893, 29.118834, 29.115431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.081451, 29.154198, 29.073009>,  <41.470715, 29.213139, 29.002308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081451, 29.154198, 29.073009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044937, -0.631631, -0.773965,
		0.225689, -0.761137, 0.608058,
		-0.973162, -0.147352, 0.176756,
		40.789501, 29.109993, 29.126036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288876, 28.473248, 28.928545>,  <41.470715, 29.213139, 29.002308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288876, 28.473248, 28.928545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.928005, 28.645351, 28.916195>,  <40.711483, 28.748613, 28.908785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.928005, 28.645351, 28.916195>,  <41.288876, 28.473248, 28.928545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928005, 28.645351, 28.916195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312803, -0.701816, -0.640006,
		-0.297037, -0.567741, 0.767749,
		-0.902177, 0.430260, -0.030874,
		40.657352, 28.774429, 28.906933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827835, 27.887848, 28.757900>,  <41.288876, 28.473248, 28.928545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827835, 27.887848, 28.757900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.627850, 28.225222, 28.679255>,  <40.507858, 28.427647, 28.632067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.627850, 28.225222, 28.679255>,  <40.827835, 27.887848, 28.757900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627850, 28.225222, 28.679255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238528, -0.352349, -0.904961,
		-0.832552, -0.405547, 0.377343,
		-0.499961, 0.843434, -0.196614,
		40.477859, 28.478252, 28.620270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.102524, 27.644114, 28.457119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.176788, 28.021421, 28.347012>,  <40.221348, 28.247807, 28.280947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.176788, 28.021421, 28.347012>,  <40.102524, 27.644114, 28.457119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176788, 28.021421, 28.347012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264617, -0.221791, -0.938502,
		-0.946313, 0.247084, 0.208427,
		0.185662, 0.943270, -0.275266,
		40.232487, 28.304403, 28.264431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634209, 27.777784, 27.933718>,  <40.102524, 27.644114, 28.457119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634209, 27.777784, 27.933718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.913059, 28.054134, 27.857073>,  <40.080368, 28.219944, 27.811087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.913059, 28.054134, 27.857073>,  <39.634209, 27.777784, 27.933718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913059, 28.054134, 27.857073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029114, -0.239758, -0.970396,
		-0.716361, 0.682063, -0.147026,
		0.697122, 0.690873, -0.191611,
		40.122196, 28.261396, 27.799589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442490, 28.085390, 27.263222>,  <39.634209, 27.777784, 27.933718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442490, 28.085390, 27.263222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.829315, 28.174425, 27.312611>,  <40.061409, 28.227846, 27.342243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.829315, 28.174425, 27.312611>,  <39.442490, 28.085390, 27.263222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829315, 28.174425, 27.312611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149585, -0.104501, -0.983211,
		-0.205948, 0.969296, -0.134355,
		0.967062, 0.222588, 0.123470,
		40.119434, 28.241201, 27.349651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505123, 28.554482, 26.746878>,  <39.442490, 28.085390, 27.263222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505123, 28.554482, 26.746878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.877586, 28.435801, 26.831648>,  <40.101063, 28.364592, 26.882511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.877586, 28.435801, 26.831648>,  <39.505123, 28.554482, 26.746878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877586, 28.435801, 26.831648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174964, -0.146347, -0.973638,
		0.319897, 0.943689, -0.084360,
		0.931157, -0.296704, 0.211927,
		40.156933, 28.346790, 26.895226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868111, 28.898264, 26.248934>,  <39.505123, 28.554482, 26.746878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868111, 28.898264, 26.248934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107338, 28.603390, 26.374712>,  <40.250874, 28.426464, 26.450178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107338, 28.603390, 26.374712>,  <39.868111, 28.898264, 26.248934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107338, 28.603390, 26.374712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391702, -0.073431, -0.917157,
		0.699207, 0.671687, 0.244841,
		0.598064, -0.737187, 0.314444,
		40.286758, 28.382233, 26.469046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604481, 29.032505, 25.990383>,  <39.868111, 28.898264, 26.248934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604481, 29.032505, 25.990383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587185, 28.642435, 26.077255>,  <40.576809, 28.408394, 26.129377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587185, 28.642435, 26.077255>,  <40.604481, 29.032505, 25.990383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587185, 28.642435, 26.077255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192041, -0.221441, -0.956077,
		0.980434, 0.000368, 0.196848,
		-0.043239, -0.975174, 0.217179,
		40.574215, 28.349882, 26.142408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291348, 28.658943, 25.765261>,  <40.604481, 29.032505, 25.990383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291348, 28.658943, 25.765261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.995159, 28.390331, 25.776218>,  <40.817444, 28.229164, 25.782793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.995159, 28.390331, 25.776218>,  <41.291348, 28.658943, 25.765261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995159, 28.390331, 25.776218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252964, -0.316237, -0.914332,
		0.622663, -0.670108, 0.404037,
		-0.740473, -0.671528, 0.027395,
		40.773018, 28.188873, 25.784437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574371, 28.043240, 25.596701>,  <41.291348, 28.658943, 25.765261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574371, 28.043240, 25.596701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.188805, 27.959946, 25.530359>,  <40.957466, 27.909969, 25.490555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.188805, 27.959946, 25.530359>,  <41.574371, 28.043240, 25.596701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188805, 27.959946, 25.530359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210846, -0.216832, -0.953167,
		0.162523, -0.953741, 0.252913,
		-0.963914, -0.208237, -0.165852,
		40.899632, 27.897474, 25.480604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510632, 27.325005, 25.398306>,  <41.574371, 28.043240, 25.596701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510632, 27.325005, 25.398306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.174408, 27.475687, 25.242588>,  <40.972672, 27.566095, 25.149158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.174408, 27.475687, 25.242588>,  <41.510632, 27.325005, 25.398306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174408, 27.475687, 25.242588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217219, -0.423945, -0.879253,
		-0.496259, -0.823628, 0.274524,
		-0.840561, 0.376706, -0.389294,
		40.922241, 27.588697, 25.125799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371864, 26.765781, 24.940285>,  <41.510632, 27.325005, 25.398306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371864, 26.765781, 24.940285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136742, 27.068653, 24.826330>,  <40.995667, 27.250376, 24.757957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136742, 27.068653, 24.826330>,  <41.371864, 26.765781, 24.940285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136742, 27.068653, 24.826330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187114, -0.215350, -0.958443,
		-0.787062, -0.616689, -0.015094,
		-0.587810, 0.757179, -0.284885,
		40.960400, 27.295807, 24.740864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929729, 26.500164, 24.397858>,  <41.371864, 26.765781, 24.940285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929729, 26.500164, 24.397858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.931736, 26.897337, 24.350433>,  <40.932941, 27.135641, 24.321978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.931736, 26.897337, 24.350433>,  <40.929729, 26.500164, 24.397858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931736, 26.897337, 24.350433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382737, -0.111444, -0.917111,
		-0.923844, -0.040776, -0.380592,
		0.005018, 0.992934, -0.118563,
		40.933243, 27.195217, 24.314865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732544, 26.627342, 23.680412>,  <40.929729, 26.500164, 24.397858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732544, 26.627342, 23.680412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.949745, 26.946314, 23.785677>,  <41.080067, 27.137697, 23.848835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.949745, 26.946314, 23.785677>,  <40.732544, 26.627342, 23.680412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949745, 26.946314, 23.785677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475912, -0.034042, -0.878834,
		-0.691850, 0.602450, -0.397992,
		0.543002, 0.797430, 0.263162,
		41.112644, 27.185543, 23.864626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810005, 26.869907, 23.069084>,  <40.732544, 26.627342, 23.680412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810005, 26.869907, 23.069084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087288, 27.049519, 23.294592>,  <41.253658, 27.157286, 23.429895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087288, 27.049519, 23.294592>,  <40.810005, 26.869907, 23.069084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087288, 27.049519, 23.294592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574845, 0.127383, -0.808286,
		-0.434759, 0.884390, -0.169820,
		0.693208, 0.449030, 0.563768,
		41.295250, 27.184227, 23.463722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934448, 27.590889, 22.802210>,  <40.810005, 26.869907, 23.069084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934448, 27.590889, 22.802210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.264606, 27.492973, 23.005697>,  <41.462704, 27.434223, 23.127790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.264606, 27.492973, 23.005697>,  <40.934448, 27.590889, 22.802210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264606, 27.492973, 23.005697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528749, 0.019409, -0.848556,
		0.197845, 0.969382, 0.145453,
		0.825398, -0.244790, 0.508720,
		41.512226, 27.419537, 23.158314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374908, 27.836355, 22.337681>,  <40.934448, 27.590889, 22.802210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374908, 27.836355, 22.337681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.594742, 27.633703, 22.603397>,  <41.726643, 27.512112, 22.762827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.594742, 27.633703, 22.603397>,  <41.374908, 27.836355, 22.337681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594742, 27.633703, 22.603397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717815, -0.120454, -0.685735,
		0.427431, 0.853708, 0.297467,
		0.549586, -0.506630, 0.664290,
		41.759617, 27.481714, 22.802685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082695, 28.164282, 22.292034>,  <41.374908, 27.836355, 22.337681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082695, 28.164282, 22.292034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.075199, 27.785603, 22.420666>,  <42.070702, 27.558395, 22.497845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.075199, 27.785603, 22.420666>,  <42.082695, 28.164282, 22.292034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075199, 27.785603, 22.420666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673181, -0.249757, -0.696023,
		0.739240, 0.203434, 0.641980,
		-0.018744, -0.946697, 0.321579,
		42.069576, 27.501593, 22.517139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756958, 27.986874, 22.307560>,  <42.082695, 28.164282, 22.292034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756958, 27.986874, 22.307560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573303, 27.631567, 22.312822>,  <42.463108, 27.418383, 22.315979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573303, 27.631567, 22.312822>,  <42.756958, 27.986874, 22.307560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573303, 27.631567, 22.312822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517243, -0.279340, -0.808968,
		0.722254, -0.364624, 0.587706,
		-0.459139, -0.888267, 0.013155,
		42.435562, 27.365088, 22.316769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304615, 27.479031, 22.235605>,  <42.756958, 27.986874, 22.307560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304615, 27.479031, 22.235605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.972973, 27.307575, 22.092022>,  <42.773987, 27.204702, 22.005873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.972973, 27.307575, 22.092022>,  <43.304615, 27.479031, 22.235605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972973, 27.307575, 22.092022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425830, -0.068110, -0.902236,
		0.362287, -0.900904, 0.238998,
		-0.829106, -0.428641, -0.358957,
		42.724239, 27.178984, 21.984335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517849, 26.958601, 21.762049>,  <43.304615, 27.479031, 22.235605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517849, 26.958601, 21.762049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.135357, 27.008648, 21.656244>,  <42.905861, 27.038675, 21.592762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.135357, 27.008648, 21.656244>,  <43.517849, 26.958601, 21.762049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135357, 27.008648, 21.656244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228337, -0.246227, -0.941931,
		-0.182976, -0.961103, 0.206882,
		-0.956233, 0.125112, -0.264509,
		42.848488, 27.046183, 21.576891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367565, 26.397417, 21.318830>,  <43.517849, 26.958601, 21.762049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367565, 26.397417, 21.318830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.090874, 26.677296, 21.247351>,  <42.924858, 26.845222, 21.204462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.090874, 26.677296, 21.247351>,  <43.367565, 26.397417, 21.318830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090874, 26.677296, 21.247351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172095, -0.080609, -0.981777,
		-0.701351, -0.709878, -0.064655,
		-0.691730, 0.699697, -0.178702,
		42.883354, 26.887205, 21.193741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879608, 26.100569, 20.813211>,  <43.367565, 26.397417, 21.318830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879608, 26.100569, 20.813211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.848373, 26.498842, 20.793154>,  <42.829632, 26.737806, 20.781118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.848373, 26.498842, 20.793154>,  <42.879608, 26.100569, 20.813211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848373, 26.498842, 20.793154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075441, -0.044253, -0.996168,
		-0.994088, -0.081574, -0.071660,
		-0.078090, 0.995684, -0.050145,
		42.824947, 26.797548, 20.778111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472137, 26.066210, 20.291374>,  <42.879608, 26.100569, 20.813211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472137, 26.066210, 20.291374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.624107, 26.434845, 20.323204>,  <42.715290, 26.656027, 20.342302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.624107, 26.434845, 20.323204>,  <42.472137, 26.066210, 20.291374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624107, 26.434845, 20.323204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135030, 0.029850, -0.990392,
		-0.915109, 0.387019, -0.113101,
		0.379924, 0.921588, 0.079575,
		42.738083, 26.711321, 20.347076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142067, 26.460690, 19.794655>,  <42.472137, 26.066210, 20.291374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142067, 26.460690, 19.794655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.514400, 26.595961, 19.850063>,  <42.737801, 26.677124, 19.883308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.514400, 26.595961, 19.850063>,  <42.142067, 26.460690, 19.794655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514400, 26.595961, 19.850063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081303, 0.177917, -0.980681,
		-0.356292, 0.924110, 0.138115,
		0.930830, 0.338180, 0.138523,
		42.793648, 26.697414, 19.891621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888016, 26.868553, 19.153372>,  <42.142067, 26.460690, 19.794655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888016, 26.868553, 19.153372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.568680, 26.642546, 19.070026>,  <41.377079, 26.506941, 19.020020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.568680, 26.642546, 19.070026>,  <41.888016, 26.868553, 19.153372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568680, 26.642546, 19.070026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509011, -0.448208, -0.734858,
		0.321819, -0.692722, 0.645422,
		-0.798335, -0.565019, -0.208361,
		41.329178, 26.473040, 19.007519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363464, 27.259581, 18.992603>,  <41.888016, 26.868553, 19.153372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363464, 27.259581, 18.992603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136215, 26.961260, 18.853453>,  <40.999866, 26.782267, 18.769962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136215, 26.961260, 18.853453>,  <41.363464, 27.259581, 18.992603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136215, 26.961260, 18.853453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533096, 0.011492, 0.845976,
		-0.626933, 0.666068, -0.404113,
		-0.568122, -0.745802, -0.347874,
		40.965778, 26.737518, 18.749090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685619, 27.507351, 19.124201>,  <41.363464, 27.259581, 18.992603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685619, 27.507351, 19.124201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638950, 27.111645, 19.089003>,  <40.610947, 26.874222, 19.067883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638950, 27.111645, 19.089003>,  <40.685619, 27.507351, 19.124201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638950, 27.111645, 19.089003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629126, 0.005059, 0.777287,
		-0.768497, 0.146052, -0.622962,
		-0.116676, -0.989264, -0.087997,
		40.603947, 26.814865, 19.062603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929798, 27.402866, 19.132933>,  <40.685619, 27.507351, 19.124201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929798, 27.402866, 19.132933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.110157, 27.060450, 19.234028>,  <40.218372, 26.855000, 19.294685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.110157, 27.060450, 19.234028>,  <39.929798, 27.402866, 19.132933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110157, 27.060450, 19.234028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647289, -0.118643, 0.752954,
		-0.614577, -0.503102, -0.607605,
		0.450901, -0.856044, 0.252737,
		40.245426, 26.803637, 19.309849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441620, 26.961712, 19.220161>,  <39.929798, 27.402866, 19.132933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441620, 26.961712, 19.220161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756802, 26.814598, 19.417690>,  <39.945911, 26.726330, 19.536207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756802, 26.814598, 19.417690>,  <39.441620, 26.961712, 19.220161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756802, 26.814598, 19.417690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567357, -0.122073, 0.814374,
		-0.239235, -0.921863, -0.304855,
		0.787955, -0.367788, 0.493821,
		39.993187, 26.704262, 19.565836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087097, 26.460085, 19.542284>,  <39.441620, 26.961712, 19.220161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087097, 26.460085, 19.542284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424622, 26.558084, 19.733267>,  <39.627136, 26.616884, 19.847857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424622, 26.558084, 19.733267>,  <39.087097, 26.460085, 19.542284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424622, 26.558084, 19.733267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504685, 0.059825, 0.861228,
		0.182436, -0.967676, 0.174128,
		0.843807, 0.244999, 0.477457,
		39.677765, 26.631584, 19.876505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135582, 25.980829, 20.121895>,  <39.087097, 26.460085, 19.542284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135582, 25.980829, 20.121895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377930, 26.275496, 20.242064>,  <39.523338, 26.452295, 20.314165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377930, 26.275496, 20.242064>,  <39.135582, 25.980829, 20.121895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377930, 26.275496, 20.242064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411873, -0.032634, 0.910657,
		0.680652, -0.675471, 0.283641,
		0.605866, 0.736664, 0.300421,
		39.559689, 26.496494, 20.332190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482712, 25.754057, 20.658262>,  <39.135582, 25.980829, 20.121895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482712, 25.754057, 20.658262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.513195, 26.150730, 20.699753>,  <39.531483, 26.388733, 20.724648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.513195, 26.150730, 20.699753>,  <39.482712, 25.754057, 20.658262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513195, 26.150730, 20.699753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175016, -0.089110, 0.980525,
		0.981612, -0.092876, 0.166769,
		0.076206, 0.991682, 0.103726,
		39.536057, 26.448235, 20.730871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731495, 25.844854, 21.319845>,  <39.482712, 25.754057, 20.658262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731495, 25.844854, 21.319845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.581749, 26.204359, 21.228563>,  <39.491901, 26.420063, 21.173794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.581749, 26.204359, 21.228563>,  <39.731495, 25.844854, 21.319845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581749, 26.204359, 21.228563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184423, 0.169017, 0.968205,
		0.908758, 0.404546, 0.102479,
		-0.374363, 0.898763, -0.228204,
		39.469440, 26.473988, 21.160103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037579, 26.248278, 21.773279>,  <39.731495, 25.844854, 21.319845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037579, 26.248278, 21.773279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.703217, 26.439640, 21.665659>,  <39.502598, 26.554459, 21.601086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.703217, 26.439640, 21.665659>,  <40.037579, 26.248278, 21.773279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703217, 26.439640, 21.665659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174883, 0.232497, 0.956745,
		0.520268, 0.846801, -0.110680,
		-0.835905, 0.478408, -0.269052,
		39.452446, 26.583162, 21.584944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047523, 26.872637, 21.930288>,  <40.037579, 26.248278, 21.773279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047523, 26.872637, 21.930288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652882, 26.811129, 21.908480>,  <39.416096, 26.774223, 21.895393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652882, 26.811129, 21.908480>,  <40.047523, 26.872637, 21.930288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652882, 26.811129, 21.908480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085821, 0.204923, 0.975008,
		-0.138753, 0.966624, -0.215374,
		-0.986602, -0.153768, -0.054523,
		39.356903, 26.764997, 21.892122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808182, 27.378328, 22.336283>,  <40.047523, 26.872637, 21.930288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808182, 27.378328, 22.336283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.492580, 27.132938, 22.322931>,  <39.303219, 26.985704, 22.314920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.492580, 27.132938, 22.322931>,  <39.808182, 27.378328, 22.336283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492580, 27.132938, 22.322931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119824, 0.100369, 0.987709,
		-0.602585, 0.783310, -0.152701,
		-0.789008, -0.613476, -0.033378,
		39.255878, 26.948896, 22.312918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379337, 27.703783, 22.690147>,  <39.808182, 27.378328, 22.336283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379337, 27.703783, 22.690147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.238743, 27.329311, 22.692392>,  <39.154388, 27.104630, 22.693739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.238743, 27.329311, 22.692392>,  <39.379337, 27.703783, 22.690147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238743, 27.329311, 22.692392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190029, 0.077213, 0.978737,
		-0.916705, 0.342944, -0.205040,
		-0.351484, -0.936177, 0.005612,
		39.133297, 27.048458, 22.694077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730503, 27.727726, 23.006830>,  <39.379337, 27.703783, 22.690147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730503, 27.727726, 23.006830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.821728, 27.340038, 23.043934>,  <38.876461, 27.107426, 23.066196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.821728, 27.340038, 23.043934>,  <38.730503, 27.727726, 23.006830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821728, 27.340038, 23.043934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234904, 0.037685, 0.971288,
		-0.944886, -0.243300, -0.219079,
		0.228058, -0.969219, 0.092760,
		38.890144, 27.049273, 23.071762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105427, 27.446249, 23.367565>,  <38.730503, 27.727726, 23.006830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105427, 27.446249, 23.367565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.404995, 27.183731, 23.404209>,  <38.584736, 27.026220, 23.426195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.404995, 27.183731, 23.404209>,  <38.105427, 27.446249, 23.367565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404995, 27.183731, 23.404209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334947, -0.255628, 0.906898,
		-0.571776, -0.709879, -0.411270,
		0.748921, -0.656297, 0.091610,
		38.629673, 26.986843, 23.431692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873055, 26.793886, 23.717552>,  <38.105427, 27.446249, 23.367565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873055, 26.793886, 23.717552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267635, 26.754173, 23.769802>,  <38.504383, 26.730347, 23.801151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267635, 26.754173, 23.769802>,  <37.873055, 26.793886, 23.717552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267635, 26.754173, 23.769802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150345, -0.228180, 0.961941,
		-0.065694, -0.968544, -0.240013,
		0.986449, -0.099279, 0.130626,
		38.563568, 26.724388, 23.808990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919777, 26.094759, 24.071148>,  <37.873055, 26.793886, 23.717552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919777, 26.094759, 24.071148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256962, 26.303316, 24.124161>,  <38.459274, 26.428450, 24.155970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256962, 26.303316, 24.124161>,  <37.919777, 26.094759, 24.071148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256962, 26.303316, 24.124161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063300, -0.148517, 0.986882,
		0.534236, -0.840293, -0.092190,
		0.842962, 0.521392, 0.132534,
		38.509850, 26.459734, 24.163921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380520, 25.664318, 24.395922>,  <37.919777, 26.094759, 24.071148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380520, 25.664318, 24.395922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504997, 26.031414, 24.494640>,  <38.579685, 26.251671, 24.553871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504997, 26.031414, 24.494640>,  <38.380520, 25.664318, 24.395922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504997, 26.031414, 24.494640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044164, -0.245445, 0.968404,
		0.949318, -0.312265, -0.035850,
		0.311198, 0.917741, 0.246796,
		38.598358, 26.306736, 24.568680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876175, 25.619358, 24.900589>,  <38.380520, 25.664318, 24.395922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876175, 25.619358, 24.900589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.776012, 26.003311, 24.951061>,  <38.715916, 26.233683, 24.981344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.776012, 26.003311, 24.951061>,  <38.876175, 25.619358, 24.900589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776012, 26.003311, 24.951061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141590, -0.165242, 0.976036,
		0.957732, 0.226536, 0.177287,
		-0.250403, 0.959884, 0.126183,
		38.700893, 26.291277, 24.988916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211399, 25.844345, 25.535913>,  <38.876175, 25.619358, 24.900589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211399, 25.844345, 25.535913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.912960, 26.096731, 25.450848>,  <38.733898, 26.248163, 25.399809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.912960, 26.096731, 25.450848>,  <39.211399, 25.844345, 25.535913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912960, 26.096731, 25.450848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265725, 0.010698, 0.963990,
		0.610521, 0.775736, 0.159682,
		-0.746093, 0.630967, -0.212664,
		38.689133, 26.286022, 25.387049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314156, 26.284185, 26.005930>,  <39.211399, 25.844345, 25.535913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314156, 26.284185, 26.005930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.944756, 26.369511, 25.878408>,  <38.723114, 26.420706, 25.801895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.944756, 26.369511, 25.878408>,  <39.314156, 26.284185, 26.005930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944756, 26.369511, 25.878408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309458, 0.076788, 0.947808,
		0.226659, 0.973962, -0.004903,
		-0.923505, 0.213312, -0.318805,
		38.667706, 26.433504, 25.782766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.605232, 29.718166, 30.569372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212967, 29.794241, 30.550962>,  <40.977608, 29.839886, 30.539917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212967, 29.794241, 30.550962>,  <41.605232, 29.718166, 30.569372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212967, 29.794241, 30.550962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066392, 0.544655, 0.836028,
		0.184071, 0.816810, -0.546753,
		-0.980668, 0.190189, -0.046026,
		40.918766, 29.851297, 30.537155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575996, 30.396257, 30.709190>,  <41.605232, 29.718166, 30.569372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575996, 30.396257, 30.709190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.203476, 30.262154, 30.766151>,  <40.979965, 30.181692, 30.800327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.203476, 30.262154, 30.766151>,  <41.575996, 30.396257, 30.709190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203476, 30.262154, 30.766151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059841, 0.526460, 0.848091,
		-0.359298, 0.781308, -0.510356,
		-0.931302, -0.335258, 0.142402,
		40.924084, 30.161577, 30.808872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253807, 30.962893, 31.102472>,  <41.575996, 30.396257, 30.709190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253807, 30.962893, 31.102472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.013653, 30.647005, 31.152887>,  <40.869560, 30.457472, 31.183136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.013653, 30.647005, 31.152887>,  <41.253807, 30.962893, 31.102472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013653, 30.647005, 31.152887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268880, 0.347767, 0.898199,
		-0.753156, 0.505375, -0.421133,
		-0.600383, -0.789718, 0.126038,
		40.833538, 30.410089, 31.190699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559635, 31.155474, 31.468178>,  <41.253807, 30.962893, 31.102472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559635, 31.155474, 31.468178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.608273, 30.769419, 31.560888>,  <40.637455, 30.537785, 31.616514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.608273, 30.769419, 31.560888>,  <40.559635, 31.155474, 31.468178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608273, 30.769419, 31.560888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072018, 0.224315, 0.971852,
		-0.989963, -0.134867, -0.042231,
		0.121597, -0.965139, 0.231776,
		40.644753, 30.479877, 31.630421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905014, 31.051252, 31.695219>,  <40.559635, 31.155474, 31.468178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905014, 31.051252, 31.695219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.113102, 30.735191, 31.824852>,  <40.237957, 30.545555, 31.902632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.113102, 30.735191, 31.824852>,  <39.905014, 31.051252, 31.695219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113102, 30.735191, 31.824852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484607, 0.039350, 0.873847,
		-0.703224, -0.611646, -0.362442,
		0.520223, -0.790152, 0.324080,
		40.269169, 30.498146, 31.922075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487881, 30.482962, 31.915472>,  <39.905014, 31.051252, 31.695219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487881, 30.482962, 31.915472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.839127, 30.442480, 32.102524>,  <40.049873, 30.418192, 32.214756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.839127, 30.442480, 32.102524>,  <39.487881, 30.482962, 31.915472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839127, 30.442480, 32.102524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477995, -0.228486, 0.848124,
		0.021016, -0.968273, -0.249010,
		0.878111, -0.101202, 0.467631,
		40.102558, 30.412119, 32.242813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409164, 29.912704, 32.245987>,  <39.487881, 30.482962, 31.915472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409164, 29.912704, 32.245987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.707153, 30.113115, 32.422161>,  <39.885948, 30.233362, 32.527866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.707153, 30.113115, 32.422161>,  <39.409164, 29.912704, 32.245987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707153, 30.113115, 32.422161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424115, -0.153898, 0.892436,
		0.514917, -0.851638, 0.097843,
		0.744975, 0.501027, 0.440437,
		39.930645, 30.263424, 32.554291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411152, 29.598988, 32.935638>,  <39.409164, 29.912704, 32.245987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411152, 29.598988, 32.935638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.607742, 29.946959, 32.952011>,  <39.725697, 30.155741, 32.961834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.607742, 29.946959, 32.952011>,  <39.411152, 29.598988, 32.935638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607742, 29.946959, 32.952011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447297, 0.211821, 0.868940,
		0.747245, -0.445374, 0.493221,
		0.491478, 0.869928, 0.040933,
		39.755184, 30.207937, 32.964291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843472, 29.629774, 33.484295>,  <39.411152, 29.598988, 32.935638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843472, 29.629774, 33.484295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786243, 30.018892, 33.411415>,  <39.751907, 30.252363, 33.367687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786243, 30.018892, 33.411415>,  <39.843472, 29.629774, 33.484295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786243, 30.018892, 33.411415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251806, 0.142259, 0.957265,
		0.957143, 0.182838, 0.224603,
		-0.143072, 0.972796, -0.182202,
		39.743320, 30.310732, 33.356754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105282, 29.982880, 34.013954>,  <39.843472, 29.629774, 33.484295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105282, 29.982880, 34.013954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876823, 30.268230, 33.851532>,  <39.739746, 30.439442, 33.754078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876823, 30.268230, 33.851532>,  <40.105282, 29.982880, 34.013954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876823, 30.268230, 33.851532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341934, 0.242949, 0.907776,
		0.746237, 0.657320, 0.105168,
		-0.571149, 0.713376, -0.406058,
		39.705479, 30.482243, 33.729713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097321, 30.515457, 34.505493>,  <40.105282, 29.982880, 34.013954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097321, 30.515457, 34.505493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778175, 30.604605, 34.281441>,  <39.586689, 30.658092, 34.147007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778175, 30.604605, 34.281441>,  <40.097321, 30.515457, 34.505493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778175, 30.604605, 34.281441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532586, 0.174732, 0.828143,
		0.282440, 0.959061, -0.020715,
		-0.797859, 0.222868, -0.560134,
		39.538818, 30.671465, 34.113400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794170, 31.096842, 34.730728>,  <40.097321, 30.515457, 34.505493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794170, 31.096842, 34.730728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.472584, 30.926950, 34.564240>,  <39.279633, 30.825016, 34.464348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.472584, 30.926950, 34.564240>,  <39.794170, 31.096842, 34.730728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472584, 30.926950, 34.564240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531441, 0.199092, 0.823367,
		-0.266842, 0.883157, -0.385782,
		-0.803969, -0.424730, -0.416220,
		39.231392, 30.799532, 34.439373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194286, 31.547552, 34.726635>,  <39.794170, 31.096842, 34.730728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194286, 31.547552, 34.726635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.065716, 31.168785, 34.728855>,  <38.988575, 30.941525, 34.730186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.065716, 31.168785, 34.728855>,  <39.194286, 31.547552, 34.726635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065716, 31.168785, 34.728855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670184, 0.231621, 0.705128,
		-0.668983, 0.222929, -0.709059,
		-0.321426, -0.946918, 0.005547,
		38.969288, 30.884710, 34.730518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435707, 32.146538, 34.972603>,  <39.194286, 31.547552, 34.726635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435707, 32.146538, 34.972603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.051243, 32.107788, 34.869236>,  <38.820564, 32.084538, 34.807217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.051243, 32.107788, 34.869236>,  <39.435707, 32.146538, 34.972603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051243, 32.107788, 34.869236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096302, -0.759786, 0.643002,
		-0.258636, 0.642916, 0.720949,
		-0.961163, -0.096874, -0.258422,
		38.762894, 32.078724, 34.791710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012539, 32.105293, 34.630436>,  <39.435707, 32.146538, 34.972603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012539, 32.105293, 34.630436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.832985, 32.449467, 34.726898>,  <39.725250, 32.655972, 34.784775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.832985, 32.449467, 34.726898>,  <40.012539, 32.105293, 34.630436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832985, 32.449467, 34.726898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072990, 0.304272, -0.949785,
		-0.890603, -0.408744, -0.199386,
		-0.448886, 0.860434, 0.241152,
		39.698318, 32.707596, 34.799244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335587, 32.242100, 34.215755>,  <40.012539, 32.105293, 34.630436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335587, 32.242100, 34.215755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502228, 32.583405, 34.341225>,  <39.602215, 32.788185, 34.416508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502228, 32.583405, 34.341225>,  <39.335587, 32.242100, 34.215755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502228, 32.583405, 34.341225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120592, 0.290125, -0.949361,
		-0.901053, 0.433336, 0.017972,
		0.416606, 0.853257, 0.313674,
		39.627209, 32.839382, 34.435326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030952, 32.788616, 33.780117>,  <39.335587, 32.242100, 34.215755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030952, 32.788616, 33.780117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389584, 32.909870, 33.909275>,  <39.604763, 32.982620, 33.986771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389584, 32.909870, 33.909275>,  <39.030952, 32.788616, 33.780117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389584, 32.909870, 33.909275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197358, 0.379227, -0.904011,
		-0.396487, 0.874241, 0.280180,
		0.896576, 0.303133, 0.322897,
		39.658558, 33.000809, 34.006145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991528, 33.386063, 33.418053>,  <39.030952, 32.788616, 33.780117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991528, 33.386063, 33.418053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.359619, 33.301090, 33.549534>,  <39.580475, 33.250107, 33.628422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.359619, 33.301090, 33.549534>,  <38.991528, 33.386063, 33.418053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359619, 33.301090, 33.549534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378483, 0.269264, -0.885577,
		0.099613, 0.939346, 0.328186,
		0.920233, -0.212428, 0.328704,
		39.635689, 33.237362, 33.648144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435337, 33.851028, 33.172119>,  <38.991528, 33.386063, 33.418053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435337, 33.851028, 33.172119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703312, 33.567020, 33.258884>,  <39.864098, 33.396614, 33.310944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703312, 33.567020, 33.258884>,  <39.435337, 33.851028, 33.172119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703312, 33.567020, 33.258884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402072, 0.101376, -0.909979,
		0.624113, 0.696846, 0.353395,
		0.669941, -0.710020, 0.216912,
		39.904293, 33.354015, 33.323959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023613, 34.121658, 33.088264>,  <39.435337, 33.851028, 33.172119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023613, 34.121658, 33.088264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.101231, 33.729763, 33.068439>,  <40.147800, 33.494625, 33.056545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.101231, 33.729763, 33.068439>,  <40.023613, 34.121658, 33.088264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101231, 33.729763, 33.068439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527398, 0.146790, -0.836841,
		0.827162, 0.136246, 0.545197,
		0.194046, -0.979740, -0.049563,
		40.159443, 33.435841, 33.053570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643707, 34.099503, 32.905994>,  <40.023613, 34.121658, 33.088264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643707, 34.099503, 32.905994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.525108, 33.726673, 32.822742>,  <40.453949, 33.502975, 32.772793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.525108, 33.726673, 32.822742>,  <40.643707, 34.099503, 32.905994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525108, 33.726673, 32.822742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463172, 0.050245, -0.884843,
		0.835201, -0.358756, 0.416815,
		-0.296500, -0.932078, -0.208130,
		40.436157, 33.447048, 32.760303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163715, 33.876949, 32.467285>,  <40.643707, 34.099503, 32.905994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163715, 33.876949, 32.467285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.904259, 33.577530, 32.412228>,  <40.748585, 33.397881, 32.379192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.904259, 33.577530, 32.412228>,  <41.163715, 33.876949, 32.467285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904259, 33.577530, 32.412228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384854, -0.166556, -0.907825,
		0.656624, -0.641824, 0.396115,
		-0.648639, -0.748546, -0.137644,
		40.709667, 33.352966, 32.370934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538155, 33.190773, 32.237701>,  <41.163715, 33.876949, 32.467285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538155, 33.190773, 32.237701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.158783, 33.204792, 32.111679>,  <40.931160, 33.213203, 32.036068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.158783, 33.204792, 32.111679>,  <41.538155, 33.190773, 32.237701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158783, 33.204792, 32.111679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308174, -0.130903, -0.942281,
		-0.074262, -0.990776, 0.113352,
		-0.948427, 0.035043, -0.315052,
		40.874256, 33.215305, 32.017162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451832, 32.591911, 31.848974>,  <41.538155, 33.190773, 32.237701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451832, 32.591911, 31.848974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.174263, 32.866337, 31.761530>,  <41.007721, 33.030991, 31.709063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.174263, 32.866337, 31.761530>,  <41.451832, 32.591911, 31.848974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174263, 32.866337, 31.761530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158717, -0.150402, -0.975801,
		-0.702338, -0.711829, -0.004521,
		-0.693923, 0.686060, -0.218612,
		40.966087, 33.072155, 31.695946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101639, 32.222794, 31.293596>,  <41.451832, 32.591911, 31.848974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101639, 32.222794, 31.293596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033913, 32.616779, 31.279892>,  <40.993275, 32.853172, 31.271669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033913, 32.616779, 31.279892>,  <41.101639, 32.222794, 31.293596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033913, 32.616779, 31.279892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307325, 0.019735, -0.951400,
		-0.936420, -0.171620, -0.306046,
		-0.169319, 0.984966, -0.034263,
		40.983116, 32.912270, 31.269613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817604, 32.349812, 30.641577>,  <41.101639, 32.222794, 31.293596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817604, 32.349812, 30.641577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.959988, 32.717461, 30.709114>,  <41.045418, 32.938049, 30.749638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.959988, 32.717461, 30.709114>,  <40.817604, 32.349812, 30.641577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959988, 32.717461, 30.709114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126389, 0.131669, -0.983203,
		-0.925915, 0.371320, -0.069299,
		0.355958, 0.919122, 0.168845,
		41.066776, 32.993198, 30.759768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411095, 32.838173, 30.186899>,  <40.817604, 32.349812, 30.641577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411095, 32.838173, 30.186899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.755585, 33.020840, 30.276106>,  <40.962280, 33.130440, 30.329630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.755585, 33.020840, 30.276106>,  <40.411095, 32.838173, 30.186899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755585, 33.020840, 30.276106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138961, 0.210501, -0.967667,
		-0.488849, 0.864374, 0.117831,
		0.861230, 0.456669, 0.223018,
		41.013954, 33.157841, 30.343012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466522, 33.329102, 29.669527>,  <40.411095, 32.838173, 30.186899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466522, 33.329102, 29.669527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.841816, 33.315437, 29.807253>,  <41.066990, 33.307240, 29.889889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.841816, 33.315437, 29.807253>,  <40.466522, 33.329102, 29.669527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841816, 33.315437, 29.807253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343844, 0.203140, -0.916791,
		-0.038627, 0.978554, 0.202338,
		0.938232, -0.034160, 0.344317,
		41.123287, 33.305191, 29.910547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988323, 33.983780, 29.801640>,  <40.466522, 33.329102, 29.669527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988323, 33.983780, 29.801640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.642128, 34.058617, 29.615770>,  <39.434410, 34.103519, 29.504248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.642128, 34.058617, 29.615770>,  <39.988323, 33.983780, 29.801640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642128, 34.058617, 29.615770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473699, -0.004036, 0.880677,
		0.162888, 0.982335, 0.092116,
		-0.865492, 0.187087, -0.464674,
		39.382481, 34.114742, 29.476368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675385, 34.575104, 30.198992>,  <39.988323, 33.983780, 29.801640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675385, 34.575104, 30.198992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406376, 34.341427, 30.017248>,  <39.244972, 34.201221, 29.908203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406376, 34.341427, 30.017248>,  <39.675385, 34.575104, 30.198992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406376, 34.341427, 30.017248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535224, -0.040092, 0.843759,
		-0.511133, 0.810625, -0.285710,
		-0.672517, -0.584191, -0.454358,
		39.204620, 34.166168, 29.880941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137589, 34.880520, 30.476618>,  <39.675385, 34.575104, 30.198992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137589, 34.880520, 30.476618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.020267, 34.528549, 30.327108>,  <38.949875, 34.317368, 30.237402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.020267, 34.528549, 30.327108>,  <39.137589, 34.880520, 30.476618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020267, 34.528549, 30.327108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624057, -0.119962, 0.772115,
		-0.724241, 0.459721, -0.513937,
		-0.293305, -0.879924, -0.373774,
		38.932278, 34.264572, 30.214977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446674, 34.861641, 30.571636>,  <39.137589, 34.880520, 30.476618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446674, 34.861641, 30.571636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.535496, 34.473061, 30.538235>,  <38.588791, 34.239914, 30.518194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.535496, 34.473061, 30.538235>,  <38.446674, 34.861641, 30.571636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535496, 34.473061, 30.538235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601610, -0.203905, 0.772326,
		-0.767304, -0.121264, -0.629713,
		0.222057, -0.971451, -0.083504,
		38.602112, 34.181625, 30.513184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948208, 34.624321, 31.005808>,  <38.446674, 34.861641, 30.571636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948208, 34.624321, 31.005808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.104443, 34.302715, 30.826471>,  <38.198181, 34.109753, 30.718870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.104443, 34.302715, 30.826471>,  <37.948208, 34.624321, 31.005808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104443, 34.302715, 30.826471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578199, -0.593236, 0.560140,
		-0.716331, 0.040449, -0.696587,
		0.390583, -0.804012, -0.448341,
		38.221619, 34.061512, 30.691969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501385, 34.217903, 30.601177>,  <37.948208, 34.624321, 31.005808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501385, 34.217903, 30.601177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.776657, 33.993935, 30.785740>,  <37.941822, 33.859554, 30.896477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.776657, 33.993935, 30.785740>,  <37.501385, 34.217903, 30.601177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776657, 33.993935, 30.785740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696478, -0.331630, 0.636349,
		-0.203286, -0.759285, -0.618192,
		0.688182, -0.559918, 0.461409,
		37.983112, 33.825958, 30.924162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150547, 33.548923, 30.756092>,  <37.501385, 34.217903, 30.601177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150547, 33.548923, 30.756092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.471592, 33.569256, 30.993824>,  <37.664219, 33.581455, 31.136463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.471592, 33.569256, 30.993824>,  <37.150547, 33.548923, 30.756092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471592, 33.569256, 30.993824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567847, -0.239979, 0.787376,
		0.182652, -0.969446, -0.163745,
		0.802614, 0.050834, 0.594329,
		37.712376, 33.584507, 31.172123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258530, 32.857452, 31.138271>,  <37.150547, 33.548923, 30.756092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258530, 32.857452, 31.138271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413322, 33.161690, 31.346790>,  <37.506199, 33.344231, 31.471901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413322, 33.161690, 31.346790>,  <37.258530, 32.857452, 31.138271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413322, 33.161690, 31.346790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514497, -0.291052, 0.806586,
		0.765206, -0.580337, 0.278691,
		0.386978, 0.760591, 0.521297,
		37.529415, 33.389866, 31.503180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240849, 32.661064, 31.829180>,  <37.258530, 32.857452, 31.138271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240849, 32.661064, 31.829180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.324360, 33.048065, 31.886229>,  <37.374466, 33.280266, 31.920458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.324360, 33.048065, 31.886229>,  <37.240849, 32.661064, 31.829180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324360, 33.048065, 31.886229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518416, -0.014167, 0.855012,
		0.829250, -0.252447, 0.498613,
		0.208781, 0.967507, 0.142621,
		37.386993, 33.338318, 31.929014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393436, 32.688457, 32.566307>,  <37.240849, 32.661064, 31.829180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393436, 32.688457, 32.566307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.271683, 33.058704, 32.476349>,  <37.198631, 33.280853, 32.422375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.271683, 33.058704, 32.476349>,  <37.393436, 32.688457, 32.566307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271683, 33.058704, 32.476349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625782, -0.016312, 0.779827,
		0.718156, 0.378100, 0.584202,
		-0.304382, 0.925621, -0.224894,
		37.180367, 33.336391, 32.408882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359299, 33.092533, 33.161793>,  <37.393436, 32.688457, 32.566307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359299, 33.092533, 33.161793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114300, 33.315113, 32.937218>,  <36.967300, 33.448662, 32.802475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114300, 33.315113, 32.937218>,  <37.359299, 33.092533, 33.161793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114300, 33.315113, 32.937218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624343, 0.095057, 0.775345,
		0.484809, 0.825425, 0.289194,
		-0.612500, 0.556450, -0.561433,
		36.930550, 33.482048, 32.768787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090782, 33.557056, 33.600792>,  <37.359299, 33.092533, 33.161793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090782, 33.557056, 33.600792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.819530, 33.602142, 33.310291>,  <36.656780, 33.629196, 33.135990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.819530, 33.602142, 33.310291>,  <37.090782, 33.557056, 33.600792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819530, 33.602142, 33.310291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724082, 0.066819, 0.686469,
		0.125904, 0.991378, 0.036305,
		-0.678125, 0.112717, -0.726252,
		36.616093, 33.635956, 33.092415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.035221, 34.119984, 26.315290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678783, 33.943523, 26.272699>,  <40.464920, 33.837646, 26.247145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678783, 33.943523, 26.272699>,  <41.035221, 34.119984, 26.315290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678783, 33.943523, 26.272699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321031, 0.446928, 0.834981,
		-0.320765, 0.778229, -0.539879,
		-0.891094, -0.441151, -0.106477,
		40.411457, 33.811176, 26.240757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527264, 34.718029, 26.405033>,  <41.035221, 34.119984, 26.315290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527264, 34.718029, 26.405033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333290, 34.372665, 26.460688>,  <40.216908, 34.165447, 26.494081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333290, 34.372665, 26.460688>,  <40.527264, 34.718029, 26.405033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333290, 34.372665, 26.460688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444745, 0.380456, 0.810836,
		-0.753021, 0.331321, -0.568494,
		-0.484934, -0.863412, 0.139138,
		40.187809, 34.113644, 26.502430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843842, 34.865898, 26.540781>,  <40.527264, 34.718029, 26.405033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843842, 34.865898, 26.540781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911579, 34.507748, 26.705526>,  <39.952221, 34.292858, 26.804375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911579, 34.507748, 26.705526>,  <39.843842, 34.865898, 26.540781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911579, 34.507748, 26.705526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572928, 0.250602, 0.780354,
		-0.801922, -0.368114, -0.470547,
		0.169339, -0.895372, 0.411865,
		39.962379, 34.239136, 26.829086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184814, 34.664989, 26.767473>,  <39.843842, 34.865898, 26.540781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184814, 34.664989, 26.767473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447449, 34.453205, 26.982344>,  <39.605030, 34.326134, 27.111265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447449, 34.453205, 26.982344>,  <39.184814, 34.664989, 26.767473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447449, 34.453205, 26.982344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596388, 0.071562, 0.799500,
		-0.461748, -0.845309, -0.268779,
		0.656589, -0.529464, 0.537176,
		39.644424, 34.294365, 27.143497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796913, 34.334381, 27.174892>,  <39.184814, 34.664989, 26.767473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796913, 34.334381, 27.174892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160316, 34.280918, 27.333261>,  <39.378357, 34.248840, 27.428282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160316, 34.280918, 27.333261>,  <38.796913, 34.334381, 27.174892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160316, 34.280918, 27.333261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413904, -0.157544, 0.896584,
		-0.057464, -0.978425, -0.198452,
		0.908505, -0.133661, 0.395921,
		39.432869, 34.240818, 27.452038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822086, 33.730469, 27.579048>,  <38.796913, 34.334381, 27.174892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822086, 33.730469, 27.579048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132484, 33.935837, 27.725601>,  <39.318722, 34.059055, 27.813534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132484, 33.935837, 27.725601>,  <38.822086, 33.730469, 27.579048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132484, 33.935837, 27.725601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226305, -0.315571, 0.921521,
		0.588746, -0.798008, -0.128692,
		0.775993, 0.513418, 0.366384,
		39.365284, 34.089863, 27.835516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152004, 33.305180, 28.117601>,  <38.822086, 33.730469, 27.579048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152004, 33.305180, 28.117601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275845, 33.678749, 28.189074>,  <39.350147, 33.902893, 28.231956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275845, 33.678749, 28.189074>,  <39.152004, 33.305180, 28.117601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275845, 33.678749, 28.189074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259742, -0.097699, 0.960723,
		0.914703, -0.343850, 0.212333,
		0.309600, 0.933928, 0.178678,
		39.368725, 33.958927, 28.242678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676559, 33.282799, 28.648514>,  <39.152004, 33.305180, 28.117601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676559, 33.282799, 28.648514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566086, 33.667168, 28.640953>,  <39.499802, 33.897789, 28.636417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566086, 33.667168, 28.640953>,  <39.676559, 33.282799, 28.648514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566086, 33.667168, 28.640953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170436, -0.029614, 0.984924,
		0.945872, 0.275241, 0.171954,
		-0.276184, 0.960919, -0.018899,
		39.483231, 33.955444, 28.635283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073570, 33.605671, 29.132532>,  <39.676559, 33.282799, 28.648514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073570, 33.605671, 29.132532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741329, 33.822598, 29.081944>,  <39.541985, 33.952751, 29.051590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741329, 33.822598, 29.081944>,  <40.073570, 33.605671, 29.132532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741329, 33.822598, 29.081944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132641, 0.027906, 0.990771,
		0.540839, 0.839712, 0.048755,
		-0.830602, 0.542314, -0.126473,
		39.492149, 33.985291, 29.044001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792179, 33.782867, 29.190720>,  <40.073570, 33.605671, 29.132532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792179, 33.782867, 29.190720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090309, 33.600624, 29.385410>,  <41.269188, 33.491276, 29.502226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090309, 33.600624, 29.385410>,  <40.792179, 33.782867, 29.190720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090309, 33.600624, 29.385410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544919, -0.004319, -0.838477,
		0.384123, 0.890168, 0.245053,
		0.745327, -0.455612, 0.486729,
		41.313908, 33.463940, 29.531429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349350, 34.176601, 29.040037>,  <40.792179, 33.782867, 29.190720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349350, 34.176601, 29.040037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491821, 33.812824, 29.125881>,  <41.577305, 33.594559, 29.177387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491821, 33.812824, 29.125881>,  <41.349350, 34.176601, 29.040037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491821, 33.812824, 29.125881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569886, 0.029406, -0.821197,
		0.740517, 0.414798, 0.528750,
		0.356179, -0.909438, 0.214612,
		41.598675, 33.539993, 29.190264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993805, 34.155918, 28.891651>,  <41.349350, 34.176601, 29.040037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993805, 34.155918, 28.891651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902435, 33.767349, 28.865849>,  <41.847614, 33.534206, 28.850367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902435, 33.767349, 28.865849>,  <41.993805, 34.155918, 28.891651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902435, 33.767349, 28.865849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610469, -0.091308, -0.786759,
		0.758385, -0.219096, 0.613881,
		-0.228428, -0.971422, -0.064505,
		41.833908, 33.475922, 28.846497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566174, 33.916294, 28.753819>,  <41.993805, 34.155918, 28.891651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566174, 33.916294, 28.753819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335327, 33.613457, 28.631348>,  <42.196819, 33.431755, 28.557865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335327, 33.613457, 28.631348>,  <42.566174, 33.916294, 28.753819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335327, 33.613457, 28.631348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563510, -0.097813, -0.820298,
		0.591096, -0.645941, 0.483080,
		-0.577116, -0.757095, -0.306177,
		42.162193, 33.386330, 28.539494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005791, 33.324471, 28.536377>,  <42.566174, 33.916294, 28.753819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005791, 33.324471, 28.536377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662552, 33.266640, 28.339294>,  <42.456608, 33.231941, 28.221045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662552, 33.266640, 28.339294>,  <43.005791, 33.324471, 28.536377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662552, 33.266640, 28.339294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512716, -0.293642, -0.806781,
		-0.028036, -0.944919, 0.326103,
		-0.858100, -0.144580, -0.492708,
		42.405121, 33.223267, 28.191483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249477, 32.793770, 28.110210>,  <43.005791, 33.324471, 28.536377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249477, 32.793770, 28.110210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906219, 32.906525, 27.938570>,  <42.700264, 32.974178, 27.835585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906219, 32.906525, 27.938570>,  <43.249477, 32.793770, 28.110210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906219, 32.906525, 27.938570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314377, -0.372269, -0.873260,
		-0.405908, -0.884281, 0.230839,
		-0.858141, 0.281893, -0.429105,
		42.648777, 32.991089, 27.809839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981609, 32.136597, 27.785299>,  <43.249477, 32.793770, 28.110210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981609, 32.136597, 27.785299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798302, 32.439617, 27.599346>,  <42.688316, 32.621429, 27.487774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798302, 32.439617, 27.599346>,  <42.981609, 32.136597, 27.785299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798302, 32.439617, 27.599346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125944, -0.462411, -0.877675,
		-0.879848, -0.460756, 0.116498,
		-0.458264, 0.757548, -0.464881,
		42.660824, 32.666882, 27.459883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468044, 31.784819, 27.320293>,  <42.981609, 32.136597, 27.785299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468044, 31.784819, 27.320293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580288, 32.141827, 27.179060>,  <42.647636, 32.356030, 27.094320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580288, 32.141827, 27.179060>,  <42.468044, 31.784819, 27.320293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580288, 32.141827, 27.179060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065344, -0.384774, -0.920695,
		-0.957595, 0.235286, -0.166293,
		0.280612, 0.892519, -0.353082,
		42.664471, 32.409584, 27.073135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110760, 31.917490, 26.713747>,  <42.468044, 31.784819, 27.320293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110760, 31.917490, 26.713747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408112, 32.184261, 26.693365>,  <42.586521, 32.344326, 26.681135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408112, 32.184261, 26.693365>,  <42.110760, 31.917490, 26.713747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408112, 32.184261, 26.693365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165383, -0.257087, -0.952132,
		-0.648104, 0.699366, -0.301411,
		0.743377, 0.666929, -0.050956,
		42.631126, 32.384338, 26.678078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033566, 32.165070, 26.088379>,  <42.110760, 31.917490, 26.713747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033566, 32.165070, 26.088379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409157, 32.263676, 26.184334>,  <42.634514, 32.322838, 26.241907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409157, 32.263676, 26.184334>,  <42.033566, 32.165070, 26.088379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409157, 32.263676, 26.184334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276596, -0.126554, -0.952617,
		-0.204473, 0.960841, -0.187016,
		0.938981, 0.246512, 0.239887,
		42.690849, 32.337631, 26.256300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275425, 32.596802, 25.492882>,  <42.033566, 32.165070, 26.088379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275425, 32.596802, 25.492882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604385, 32.467461, 25.680113>,  <42.801762, 32.389858, 25.792452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604385, 32.467461, 25.680113>,  <42.275425, 32.596802, 25.492882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604385, 32.467461, 25.680113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456293, -0.116490, -0.882172,
		0.339775, 0.939082, 0.051740,
		0.822405, -0.323348, 0.468077,
		42.851109, 32.370457, 25.820536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790619, 32.930649, 25.153923>,  <42.275425, 32.596802, 25.492882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790619, 32.930649, 25.153923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001331, 32.632694, 25.317701>,  <43.127758, 32.453922, 25.415968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001331, 32.632694, 25.317701>,  <42.790619, 32.930649, 25.153923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001331, 32.632694, 25.317701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539974, -0.078757, -0.837989,
		0.656455, 0.662525, 0.360733,
		0.526778, -0.744888, 0.409446,
		43.159367, 32.409229, 25.440535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504688, 32.954899, 24.894604>,  <42.790619, 32.930649, 25.153923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504688, 32.954899, 24.894604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504776, 32.582417, 25.040398>,  <43.504829, 32.358925, 25.127874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504776, 32.582417, 25.040398>,  <43.504688, 32.954899, 24.894604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504776, 32.582417, 25.040398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579303, -0.296977, -0.759086,
		0.815112, 0.211313, 0.539388,
		0.000219, -0.931209, 0.364484,
		43.504841, 32.303055, 25.149742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283081, 32.682384, 24.947813>,  <43.504688, 32.954899, 24.894604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283081, 32.682384, 24.947813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020786, 32.382252, 24.914318>,  <43.863411, 32.202171, 24.894220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020786, 32.382252, 24.914318>,  <44.283081, 32.682384, 24.947813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020786, 32.382252, 24.914318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565573, -0.414717, -0.712838,
		0.500136, -0.514794, 0.696312,
		-0.655737, -0.750331, -0.083739,
		43.824066, 32.157154, 24.889196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.326946, 27.899612, 23.706097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.717243, 27.986879, 23.713455>,  <35.951420, 28.039240, 23.717871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.717243, 27.986879, 23.713455>,  <35.326946, 27.899612, 23.706097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717243, 27.986879, 23.713455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039337, -0.257356, 0.965516,
		0.215379, -0.941367, -0.259694,
		0.975738, 0.218167, 0.018399,
		36.009964, 28.052330, 23.718975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614582, 27.428371, 24.149752>,  <35.326946, 27.899612, 23.706097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614582, 27.428371, 24.149752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898998, 27.709625, 24.148211>,  <36.069649, 27.878378, 24.147285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898998, 27.709625, 24.148211>,  <35.614582, 27.428371, 24.149752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898998, 27.709625, 24.148211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090983, -0.086567, 0.992083,
		0.697236, -0.705766, -0.125527,
		0.711045, 0.703136, -0.003855,
		36.112312, 27.920567, 24.147055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239414, 27.202900, 24.602633>,  <35.614582, 27.428371, 24.149752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239414, 27.202900, 24.602633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234467, 27.600037, 24.555120>,  <36.231499, 27.838320, 24.526613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234467, 27.600037, 24.555120>,  <36.239414, 27.202900, 24.602633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234467, 27.600037, 24.555120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076159, 0.119379, 0.989924,
		0.997019, 0.003202, -0.077091,
		-0.012373, 0.992844, -0.118779,
		36.230755, 27.897890, 24.519487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854347, 27.434845, 24.928335>,  <36.239414, 27.202900, 24.602633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854347, 27.434845, 24.928335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571514, 27.717644, 24.933811>,  <36.401814, 27.887323, 24.937096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571514, 27.717644, 24.933811>,  <36.854347, 27.434845, 24.928335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571514, 27.717644, 24.933811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186748, 0.168031, 0.967931,
		0.682025, 0.686965, -0.250842,
		-0.707084, 0.706997, 0.013688,
		36.359390, 27.929743, 24.937918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106312, 28.004410, 25.295181>,  <36.854347, 27.434845, 24.928335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106312, 28.004410, 25.295181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.724083, 28.115900, 25.256844>,  <36.494743, 28.182795, 25.233841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.724083, 28.115900, 25.256844>,  <37.106312, 28.004410, 25.295181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724083, 28.115900, 25.256844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007519, 0.348129, 0.937416,
		0.294647, 0.895053, -0.334760,
		-0.955577, 0.278724, -0.095846,
		36.437408, 28.199516, 25.228090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995739, 28.642569, 25.734430>,  <37.106312, 28.004410, 25.295181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995739, 28.642569, 25.734430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.627892, 28.504715, 25.659042>,  <36.407181, 28.422003, 25.613810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.627892, 28.504715, 25.659042>,  <36.995739, 28.642569, 25.734430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627892, 28.504715, 25.659042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313520, 0.354937, 0.880753,
		-0.236642, 0.869050, -0.434458,
		-0.919623, -0.344635, -0.188471,
		36.352005, 28.401325, 25.602501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631840, 29.192343, 25.850943>,  <36.995739, 28.642569, 25.734430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631840, 29.192343, 25.850943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.356449, 28.904249, 25.885025>,  <36.191216, 28.731394, 25.905476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.356449, 28.904249, 25.885025>,  <36.631840, 29.192343, 25.850943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356449, 28.904249, 25.885025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350014, 0.432862, 0.830735,
		-0.635207, 0.542119, -0.550108,
		-0.688478, -0.720234, 0.085208,
		36.149906, 28.688179, 25.910587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925819, 29.526726, 26.003855>,  <36.631840, 29.192343, 25.850943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925819, 29.526726, 26.003855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.925087, 29.146040, 26.126646>,  <35.924648, 28.917627, 26.200321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.925087, 29.146040, 26.126646>,  <35.925819, 29.526726, 26.003855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925087, 29.146040, 26.126646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326697, 0.290703, 0.899311,
		-0.945127, -0.098638, -0.311456,
		-0.001835, -0.951715, 0.306976,
		35.924538, 28.860525, 26.218739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262405, 29.422523, 26.332630>,  <35.925819, 29.526726, 26.003855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262405, 29.422523, 26.332630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.464054, 29.103838, 26.465960>,  <35.585045, 28.912626, 26.545958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.464054, 29.103838, 26.465960>,  <35.262405, 29.422523, 26.332630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464054, 29.103838, 26.465960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368728, 0.150451, 0.917281,
		-0.780959, -0.585330, -0.217924,
		0.504125, -0.796714, 0.333324,
		35.615292, 28.864824, 26.565956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910027, 29.035870, 26.863281>,  <35.262405, 29.422523, 26.332630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910027, 29.035870, 26.863281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.289993, 28.945715, 26.949873>,  <35.517971, 28.891623, 27.001827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.289993, 28.945715, 26.949873>,  <34.910027, 29.035870, 26.863281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289993, 28.945715, 26.949873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154410, 0.263747, 0.952153,
		-0.271700, -0.937890, 0.215734,
		0.949914, -0.225389, 0.216480,
		35.574966, 28.878099, 27.014816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869171, 28.546026, 27.438358>,  <34.910027, 29.035870, 26.863281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869171, 28.546026, 27.438358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.246868, 28.677025, 27.451967>,  <35.473484, 28.755625, 27.460133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.246868, 28.677025, 27.451967>,  <34.869171, 28.546026, 27.438358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246868, 28.677025, 27.451967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058051, 0.063880, 0.996268,
		0.324104, -0.942689, 0.079330,
		0.944239, 0.327500, 0.034020,
		35.530140, 28.775274, 27.462173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122307, 28.392767, 28.037302>,  <34.869171, 28.546026, 27.438358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122307, 28.392767, 28.037302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437153, 28.634621, 27.988525>,  <35.626060, 28.779732, 27.959259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437153, 28.634621, 27.988525>,  <35.122307, 28.392767, 28.037302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437153, 28.634621, 27.988525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098289, 0.318124, 0.942940,
		0.608925, -0.730216, 0.309829,
		0.787115, 0.604633, -0.121941,
		35.673286, 28.816010, 27.951942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631496, 28.135721, 28.553934>,  <35.122307, 28.392767, 28.037302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631496, 28.135721, 28.553934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.712345, 28.517384, 28.465633>,  <35.760853, 28.746382, 28.412653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.712345, 28.517384, 28.465633>,  <35.631496, 28.135721, 28.553934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712345, 28.517384, 28.465633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111110, 0.246289, 0.962806,
		0.973037, -0.170076, 0.155796,
		0.202121, 0.954157, -0.220751,
		35.772980, 28.803631, 28.399408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232590, 28.388260, 29.020290>,  <35.631496, 28.135721, 28.553934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232590, 28.388260, 29.020290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.014317, 28.695375, 28.885990>,  <35.883354, 28.879644, 28.805410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.014317, 28.695375, 28.885990>,  <36.232590, 28.388260, 29.020290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014317, 28.695375, 28.885990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177664, 0.285551, 0.941752,
		0.818941, 0.573549, -0.019412,
		-0.545684, 0.767791, -0.335748,
		35.850613, 28.925713, 28.785265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001770, 28.266378, 28.944624>,  <36.232590, 28.388260, 29.020290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001770, 28.266378, 28.944624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299915, 28.100260, 29.153227>,  <37.478802, 28.000589, 29.278389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299915, 28.100260, 29.153227>,  <37.001770, 28.266378, 28.944624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299915, 28.100260, 29.153227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437791, -0.285041, -0.852696,
		0.502771, 0.863876, -0.030646,
		0.745359, -0.415294, 0.521508,
		37.523521, 27.975672, 29.309679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700539, 28.552891, 28.593683>,  <37.001770, 28.266378, 28.944624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700539, 28.552891, 28.593683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.776848, 28.205700, 28.777082>,  <37.822632, 27.997385, 28.887121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.776848, 28.205700, 28.777082>,  <37.700539, 28.552891, 28.593683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776848, 28.205700, 28.777082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246896, -0.409636, -0.878203,
		0.950078, 0.280736, 0.136154,
		0.190770, -0.867978, 0.458499,
		37.834080, 27.945307, 28.914633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256203, 28.260015, 28.247522>,  <37.700539, 28.552891, 28.593683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256203, 28.260015, 28.247522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129890, 27.922291, 28.420691>,  <38.054104, 27.719656, 28.524591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129890, 27.922291, 28.420691>,  <38.256203, 28.260015, 28.247522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129890, 27.922291, 28.420691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291700, -0.520554, -0.802455,
		0.902881, -0.127118, 0.410666,
		-0.315780, -0.844313, 0.432918,
		38.035156, 27.668997, 28.550566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756977, 27.768665, 28.031153>,  <38.256203, 28.260015, 28.247522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756977, 27.768665, 28.031153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458958, 27.531364, 28.153103>,  <38.280144, 27.388985, 28.226273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458958, 27.531364, 28.153103>,  <38.756977, 27.768665, 28.031153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458958, 27.531364, 28.153103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131071, -0.578389, -0.805162,
		0.654000, -0.559928, 0.508689,
		-0.745053, -0.593251, 0.304876,
		38.235443, 27.353390, 28.244566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029469, 27.134192, 27.907850>,  <38.756977, 27.768665, 28.031153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029469, 27.134192, 27.907850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.635067, 27.080229, 27.947039>,  <38.398426, 27.047852, 27.970552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.635067, 27.080229, 27.947039>,  <39.029469, 27.134192, 27.907850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635067, 27.080229, 27.947039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012334, -0.526981, -0.849787,
		0.166272, -0.839101, 0.517941,
		-0.986003, -0.134907, 0.097972,
		38.339268, 27.039757, 27.976431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942554, 26.538263, 27.720467>,  <39.029469, 27.134192, 27.907850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942554, 26.538263, 27.720467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571342, 26.685621, 27.698395>,  <38.348614, 26.774036, 27.685152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571342, 26.685621, 27.698395>,  <38.942554, 26.538263, 27.720467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571342, 26.685621, 27.698395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096130, -0.379960, -0.919994,
		-0.359875, -0.848483, 0.388029,
		-0.928035, 0.368384, -0.055174,
		38.292934, 26.796141, 27.681841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579140, 26.028027, 27.450478>,  <38.942554, 26.538263, 27.720467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579140, 26.028027, 27.450478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.346691, 26.339113, 27.354605>,  <38.207222, 26.525766, 27.297081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.346691, 26.339113, 27.354605>,  <38.579140, 26.028027, 27.450478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346691, 26.339113, 27.354605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168353, -0.403033, -0.899567,
		-0.796210, -0.482411, 0.365144,
		-0.581126, 0.777718, -0.239683,
		38.172352, 26.572428, 27.282700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001041, 25.768803, 27.045374>,  <38.579140, 26.028027, 27.450478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001041, 25.768803, 27.045374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.010597, 26.157022, 26.949486>,  <38.016331, 26.389954, 26.891953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.010597, 26.157022, 26.949486>,  <38.001041, 25.768803, 27.045374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010597, 26.157022, 26.949486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002390, -0.239845, -0.970808,
		-0.999712, 0.022622, -0.008050,
		0.023892, 0.970547, -0.239722,
		38.017765, 26.448187, 26.877569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450958, 26.013588, 26.601700>,  <38.001041, 25.768803, 27.045374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450958, 26.013588, 26.601700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732819, 26.289974, 26.537163>,  <37.901936, 26.455807, 26.498440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732819, 26.289974, 26.537163>,  <37.450958, 26.013588, 26.601700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732819, 26.289974, 26.537163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042252, -0.186121, -0.981618,
		-0.708295, 0.698515, -0.101956,
		0.704651, 0.690967, -0.161343,
		37.944214, 26.497265, 26.488760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384247, 26.085314, 25.929256>,  <37.450958, 26.013588, 26.601700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384247, 26.085314, 25.929256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711990, 26.307308, 25.986727>,  <37.908634, 26.440506, 26.021210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711990, 26.307308, 25.986727>,  <37.384247, 26.085314, 25.929256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711990, 26.307308, 25.986727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168071, 0.007064, -0.985750,
		-0.548093, 0.831829, -0.087490,
		0.819357, 0.554987, 0.143678,
		37.957798, 26.473804, 26.029831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374577, 26.583738, 25.420179>,  <37.384247, 26.085314, 25.929256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374577, 26.583738, 25.420179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755325, 26.571970, 25.542212>,  <37.983776, 26.564909, 25.615431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755325, 26.571970, 25.542212>,  <37.374577, 26.583738, 25.420179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755325, 26.571970, 25.542212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306487, 0.099253, -0.946686,
		-0.002427, 0.994627, 0.103493,
		0.951872, -0.029421, 0.305081,
		38.040886, 26.563143, 25.633736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772938, 27.190310, 25.187836>,  <37.374577, 26.583738, 25.420179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772938, 27.190310, 25.187836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.065113, 26.926886, 25.260237>,  <38.240417, 26.768831, 25.303679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.065113, 26.926886, 25.260237>,  <37.772938, 27.190310, 25.187836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065113, 26.926886, 25.260237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532766, 0.383586, -0.754335,
		0.427344, 0.647427, 0.631044,
		0.730436, -0.658560, 0.181004,
		38.284245, 26.729319, 25.314537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387272, 27.545086, 25.094643>,  <37.772938, 27.190310, 25.187836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387272, 27.545086, 25.094643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495960, 27.162300, 25.053873>,  <38.561172, 26.932629, 25.029411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495960, 27.162300, 25.053873>,  <38.387272, 27.545086, 25.094643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495960, 27.162300, 25.053873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469286, 0.224221, -0.854105,
		0.840200, 0.184250, 0.510016,
		0.271725, -0.956963, -0.101924,
		38.577477, 26.875212, 25.023296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026733, 27.490278, 24.875702>,  <38.387272, 27.545086, 25.094643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026733, 27.490278, 24.875702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.885506, 27.133003, 24.764307>,  <38.800770, 26.918638, 24.697470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.885506, 27.133003, 24.764307>,  <39.026733, 27.490278, 24.875702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885506, 27.133003, 24.764307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475827, 0.084860, -0.875436,
		0.805561, -0.441605, 0.395041,
		-0.353073, -0.893187, -0.278487,
		38.779583, 26.865047, 24.680761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689804, 27.437792, 25.253721>,  <39.026733, 27.490278, 24.875702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689804, 27.437792, 25.253721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049778, 27.594505, 25.330273>,  <40.265762, 27.688534, 25.376204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049778, 27.594505, 25.330273>,  <39.689804, 27.437792, 25.253721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049778, 27.594505, 25.330273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278156, 0.177830, 0.943931,
		0.335787, -0.902707, 0.269012,
		0.899932, 0.391787, 0.191380,
		40.319759, 27.712042, 25.387688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932674, 27.209929, 25.807827>,  <39.689804, 27.437792, 25.253721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932674, 27.209929, 25.807827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.189865, 27.516230, 25.802120>,  <40.344181, 27.700010, 25.798697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.189865, 27.516230, 25.802120>,  <39.932674, 27.209929, 25.807827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189865, 27.516230, 25.802120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224074, 0.205896, 0.952574,
		0.732375, -0.609285, 0.303971,
		0.642975, 0.765754, -0.014268,
		40.382759, 27.745956, 25.797840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494080, 27.048882, 26.396912>,  <39.932674, 27.209929, 25.807827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494080, 27.048882, 26.396912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.516525, 27.439131, 26.312052>,  <40.529991, 27.673281, 26.261137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.516525, 27.439131, 26.312052>,  <40.494080, 27.048882, 26.396912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516525, 27.439131, 26.312052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103838, 0.205628, 0.973106,
		0.993010, -0.076631, -0.089769,
		0.056111, 0.975625, -0.212148,
		40.533360, 27.731819, 26.248407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055180, 27.367672, 26.850124>,  <40.494080, 27.048882, 26.396912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055180, 27.367672, 26.850124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.804249, 27.662336, 26.749098>,  <40.653690, 27.839134, 26.688482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.804249, 27.662336, 26.749098>,  <41.055180, 27.367672, 26.850124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804249, 27.662336, 26.749098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014854, 0.312945, 0.949655,
		0.778613, 0.599497, -0.185377,
		-0.627328, 0.736661, -0.252568,
		40.616051, 27.883335, 26.673326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399509, 28.046545, 27.072762>,  <41.055180, 27.367672, 26.850124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399509, 28.046545, 27.072762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.009056, 28.120150, 27.026636>,  <40.774784, 28.164312, 26.998960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.009056, 28.120150, 27.026636>,  <41.399509, 28.046545, 27.072762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009056, 28.120150, 27.026636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016356, 0.467210, 0.883995,
		0.216544, 0.864786, -0.453050,
		-0.976136, 0.184013, -0.115316,
		40.716217, 28.175354, 26.992041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339504, 28.619164, 27.481253>,  <41.399509, 28.046545, 27.072762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339504, 28.619164, 27.481253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.953880, 28.530426, 27.422768>,  <40.722507, 28.477184, 27.387676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.953880, 28.530426, 27.422768>,  <41.339504, 28.619164, 27.481253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953880, 28.530426, 27.422768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220320, 0.359929, 0.906593,
		-0.148495, 0.906221, -0.395869,
		-0.964058, -0.221842, -0.146211,
		40.664661, 28.463873, 27.378904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982414, 29.217875, 27.735519>,  <41.339504, 28.619164, 27.481253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982414, 29.217875, 27.735519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.704460, 28.930414, 27.745867>,  <40.537685, 28.757938, 27.752075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.704460, 28.930414, 27.745867>,  <40.982414, 29.217875, 27.735519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704460, 28.930414, 27.745867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364382, 0.382891, 0.848893,
		-0.619965, 0.580459, -0.527930,
		-0.694887, -0.718653, 0.025870,
		40.495995, 28.714819, 27.753628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315464, 29.597588, 27.913416>,  <40.982414, 29.217875, 27.735519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315464, 29.597588, 27.913416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267479, 29.211523, 28.006426>,  <40.238686, 28.979883, 28.062233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267479, 29.211523, 28.006426>,  <40.315464, 29.597588, 27.913416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267479, 29.211523, 28.006426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286714, 0.257921, 0.922644,
		-0.950475, 0.044016, -0.307667,
		-0.119965, -0.965163, 0.232527,
		40.231491, 28.921974, 28.076183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709866, 29.596832, 28.256842>,  <40.315464, 29.597588, 27.913416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709866, 29.596832, 28.256842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.948917, 29.293171, 28.360014>,  <40.092346, 29.110973, 28.421917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.948917, 29.293171, 28.360014>,  <39.709866, 29.596832, 28.256842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948917, 29.293171, 28.360014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059077, 0.279133, 0.958433,
		-0.799595, -0.588024, 0.121969,
		0.597627, -0.759152, 0.257932,
		40.128204, 29.065426, 28.437393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470600, 29.269215, 28.899454>,  <39.709866, 29.596832, 28.256842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470600, 29.269215, 28.899454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.850510, 29.145231, 28.882208>,  <40.078457, 29.070841, 28.871861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.850510, 29.145231, 28.882208>,  <39.470600, 29.269215, 28.899454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850510, 29.145231, 28.882208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081839, 0.113028, 0.990216,
		-0.302050, -0.944008, 0.132718,
		0.949773, -0.309957, -0.043117,
		40.135441, 29.052244, 28.869272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585712, 28.801022, 29.451607>,  <39.470600, 29.269215, 28.899454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585712, 28.801022, 29.451607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.948318, 28.930326, 29.342997>,  <40.165882, 29.007910, 29.277830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.948318, 28.930326, 29.342997>,  <39.585712, 28.801022, 29.451607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948318, 28.930326, 29.342997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262283, 0.072719, 0.962247,
		0.330803, -0.943511, -0.018865,
		0.906519, 0.323262, -0.271523,
		40.220276, 29.027306, 29.261539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982342, 28.622553, 30.040186>,  <39.585712, 28.801022, 29.451607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982342, 28.622553, 30.040186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220211, 28.870398, 29.835268>,  <40.362934, 29.019104, 29.712317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220211, 28.870398, 29.835268>,  <39.982342, 28.622553, 30.040186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220211, 28.870398, 29.835268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349954, 0.374179, 0.858791,
		0.723806, -0.689980, 0.005679,
		0.594674, 0.619611, -0.512294,
		40.398613, 29.056280, 29.681580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549786, 28.607101, 30.400124>,  <39.982342, 28.622553, 30.040186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549786, 28.607101, 30.400124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.556854, 28.951406, 30.196642>,  <40.561096, 29.157990, 30.074553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.556854, 28.951406, 30.196642>,  <40.549786, 28.607101, 30.400124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556854, 28.951406, 30.196642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308187, 0.479320, 0.821750,
		0.951162, -0.171297, -0.256805,
		0.017671, 0.860761, -0.508703,
		40.562157, 29.209635, 30.044031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211105, 29.014236, 30.431644>,  <40.549786, 28.607101, 30.400124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211105, 29.014236, 30.431644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.959805, 29.309845, 30.334360>,  <40.809025, 29.487209, 30.275990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.959805, 29.309845, 30.334360>,  <41.211105, 29.014236, 30.431644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959805, 29.309845, 30.334360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263757, 0.496407, 0.827050,
		0.731938, 0.455446, -0.506789,
		-0.628250, 0.739019, -0.243213,
		40.771328, 29.531551, 30.261396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.750107, 32.156483, 24.591780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.389561, 31.984381, 24.572104>,  <44.173233, 31.881119, 24.560297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.389561, 31.984381, 24.572104>,  <44.750107, 32.156483, 24.591780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389561, 31.984381, 24.572104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357604, -0.675426, -0.644919,
		0.244257, -0.598898, 0.762667,
		-0.901365, -0.430258, -0.049191,
		44.119152, 31.855303, 24.557346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800846, 31.309258, 24.707829>,  <44.750107, 32.156483, 24.591780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800846, 31.309258, 24.707829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.472111, 31.416986, 24.507008>,  <44.274872, 31.481623, 24.386515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.472111, 31.416986, 24.507008>,  <44.800846, 31.309258, 24.707829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472111, 31.416986, 24.507008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275256, -0.583843, -0.763781,
		-0.498821, -0.765894, 0.405690,
		-0.821834, 0.269322, -0.502050,
		44.225559, 31.497784, 24.356392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282024, 30.702869, 24.630388>,  <44.800846, 31.309258, 24.707829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282024, 30.702869, 24.630388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.227997, 30.973421, 24.340763>,  <44.195580, 31.135752, 24.166988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.227997, 30.973421, 24.340763>,  <44.282024, 30.702869, 24.630388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227997, 30.973421, 24.340763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048616, -0.725358, -0.686653,
		-0.989643, -0.127947, 0.065091,
		-0.135069, 0.676377, -0.724065,
		44.187477, 31.176334, 24.123543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750294, 30.437164, 24.169434>,  <44.282024, 30.702869, 24.630388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750294, 30.437164, 24.169434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.942875, 30.693714, 23.930489>,  <44.058422, 30.847645, 23.787123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.942875, 30.693714, 23.930489>,  <43.750294, 30.437164, 24.169434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942875, 30.693714, 23.930489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085646, -0.712717, -0.696204,
		-0.872278, 0.284027, -0.398070,
		0.481452, 0.641376, -0.597362,
		44.087311, 30.886127, 23.751280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470413, 30.250151, 23.588924>,  <43.750294, 30.437164, 24.169434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470413, 30.250151, 23.588924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.769569, 30.482048, 23.459583>,  <43.949062, 30.621185, 23.381979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.769569, 30.482048, 23.459583>,  <43.470413, 30.250151, 23.588924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769569, 30.482048, 23.459583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003658, -0.490702, -0.871320,
		-0.663811, 0.650470, -0.369113,
		0.747892, 0.579742, -0.323354,
		43.993938, 30.655972, 23.362577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285786, 30.584507, 22.862476>,  <43.470413, 30.250151, 23.588924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285786, 30.584507, 22.862476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.684776, 30.611490, 22.871349>,  <43.924171, 30.627680, 22.876673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.684776, 30.611490, 22.871349>,  <43.285786, 30.584507, 22.862476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684776, 30.611490, 22.871349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047374, -0.399410, -0.915548,
		-0.052902, 0.914287, -0.401597,
		0.997476, 0.067459, 0.022184,
		43.984020, 30.631727, 22.878004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421005, 30.590538, 22.221888>,  <43.285786, 30.584507, 22.862476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421005, 30.590538, 22.221888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.789223, 30.508125, 22.354643>,  <44.010155, 30.458677, 22.434296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.789223, 30.508125, 22.354643>,  <43.421005, 30.590538, 22.221888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789223, 30.508125, 22.354643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239020, -0.374930, -0.895711,
		0.308981, 0.903868, -0.295893,
		0.920543, -0.206033, 0.331889,
		44.065384, 30.446316, 22.454210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845512, 30.807135, 21.697298>,  <43.421005, 30.590538, 22.221888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845512, 30.807135, 21.697298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.031010, 30.520613, 21.905855>,  <44.142307, 30.348700, 22.030991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.031010, 30.520613, 21.905855>,  <43.845512, 30.807135, 21.697298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031010, 30.520613, 21.905855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131979, -0.526083, -0.840130,
		0.876084, 0.458418, -0.149431,
		0.463744, -0.716303, 0.521394,
		44.170132, 30.305721, 22.062273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454601, 30.595798, 21.305601>,  <43.845512, 30.807135, 21.697298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454601, 30.595798, 21.305601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.374664, 30.277843, 21.534761>,  <44.326702, 30.087070, 21.672258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.374664, 30.277843, 21.534761>,  <44.454601, 30.595798, 21.305601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374664, 30.277843, 21.534761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237823, -0.606562, -0.758632,
		0.950527, -0.015361, 0.310261,
		-0.199846, -0.794888, 0.572901,
		44.314709, 30.039377, 21.706633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818684, 30.137121, 21.005260>,  <44.454601, 30.595798, 21.305601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818684, 30.137121, 21.005260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.600639, 29.903780, 21.246111>,  <44.469814, 29.763775, 21.390621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.600639, 29.903780, 21.246111>,  <44.818684, 30.137121, 21.005260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600639, 29.903780, 21.246111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017534, -0.710125, -0.703858,
		0.838181, -0.394238, 0.376868,
		-0.545110, -0.583352, 0.602125,
		44.437107, 29.728775, 21.426748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105579, 29.464531, 20.921820>,  <44.818684, 30.137121, 21.005260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.105579, 29.464531, 20.921820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.731915, 29.400423, 21.049349>,  <44.507713, 29.361958, 21.125866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.731915, 29.400423, 21.049349>,  <45.105579, 29.464531, 20.921820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.731915, 29.400423, 21.049349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148662, -0.637438, -0.756024,
		0.324398, -0.753649, 0.571646,
		-0.934166, -0.160271, 0.318823,
		44.451664, 29.352343, 21.144995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999584, 28.713795, 20.853678>,  <45.105579, 29.464531, 20.921820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999584, 28.713795, 20.853678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.625782, 28.853729, 20.879978>,  <44.401501, 28.937689, 20.895758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.625782, 28.853729, 20.879978>,  <44.999584, 28.713795, 20.853678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625782, 28.853729, 20.879978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305157, -0.692239, -0.653977,
		-0.183268, -0.631206, 0.753652,
		-0.934501, 0.349835, 0.065751,
		44.345432, 28.958679, 20.899704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518536, 28.194504, 21.101322>,  <44.999584, 28.713795, 20.853678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518536, 28.194504, 21.101322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.332485, 28.461761, 20.869034>,  <44.220856, 28.622116, 20.729660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.332485, 28.461761, 20.869034>,  <44.518536, 28.194504, 21.101322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332485, 28.461761, 20.869034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195651, -0.717367, -0.668659,
		-0.863352, -0.197393, 0.464391,
		-0.465128, 0.668147, -0.580720,
		44.192947, 28.662205, 20.694818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803513, 27.989697, 20.996666>,  <44.518536, 28.194504, 21.101322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803513, 27.989697, 20.996666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.932545, 28.219574, 20.695822>,  <44.009964, 28.357500, 20.515316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.932545, 28.219574, 20.695822>,  <43.803513, 27.989697, 20.996666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932545, 28.219574, 20.695822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214355, -0.729590, -0.649423,
		-0.921950, 0.370712, -0.112166,
		0.322584, 0.574692, -0.752109,
		44.029320, 28.391981, 20.470188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300854, 27.900261, 20.405443>,  <43.803513, 27.989697, 20.996666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300854, 27.900261, 20.405443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.157646, 27.526802, 20.400925>,  <43.071724, 27.302727, 20.398214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.157646, 27.526802, 20.400925>,  <43.300854, 27.900261, 20.405443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157646, 27.526802, 20.400925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394462, 0.140274, 0.908142,
		-0.846300, 0.329585, -0.418509,
		-0.358016, -0.933647, -0.011295,
		43.050240, 27.246708, 20.397537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603901, 28.077080, 20.545286>,  <43.300854, 27.900261, 20.405443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603901, 28.077080, 20.545286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.673153, 27.693951, 20.637022>,  <42.714703, 27.464073, 20.692064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.673153, 27.693951, 20.637022>,  <42.603901, 28.077080, 20.545286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673153, 27.693951, 20.637022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317966, 0.166031, 0.933451,
		-0.932161, -0.234530, -0.275811,
		0.173130, -0.957825, 0.229340,
		42.725090, 27.406603, 20.705824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061653, 27.900669, 21.015224>,  <42.603901, 28.077080, 20.545286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061653, 27.900669, 21.015224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.295712, 27.578396, 21.052053>,  <42.436146, 27.385033, 21.074150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.295712, 27.578396, 21.052053>,  <42.061653, 27.900669, 21.015224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295712, 27.578396, 21.052053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341411, -0.141777, 0.929159,
		-0.735553, -0.575131, -0.358030,
		0.585149, -0.805682, 0.092071,
		42.471256, 27.336691, 21.079676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598038, 27.296547, 21.295502>,  <42.061653, 27.900669, 21.015224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598038, 27.296547, 21.295502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.977711, 27.198574, 21.374548>,  <42.205517, 27.139790, 21.421976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.977711, 27.198574, 21.374548>,  <41.598038, 27.296547, 21.295502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977711, 27.198574, 21.374548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258054, -0.246294, 0.934209,
		-0.180143, -0.937736, -0.296984,
		0.949187, -0.244930, 0.197619,
		42.262466, 27.125093, 21.433834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537300, 26.683100, 21.660963>,  <41.598038, 27.296547, 21.295502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537300, 26.683100, 21.660963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.900177, 26.818417, 21.761019>,  <42.117901, 26.899607, 21.821053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.900177, 26.818417, 21.761019>,  <41.537300, 26.683100, 21.660963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900177, 26.818417, 21.761019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239860, -0.072593, 0.968089,
		0.345655, -0.938237, 0.015287,
		0.907188, 0.338292, 0.250138,
		42.172333, 26.919905, 21.836060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842701, 26.233307, 22.235149>,  <41.537300, 26.683100, 21.660963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842701, 26.233307, 22.235149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.026321, 26.587412, 22.265045>,  <42.136494, 26.799875, 22.282984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.026321, 26.587412, 22.265045>,  <41.842701, 26.233307, 22.235149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026321, 26.587412, 22.265045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318572, 0.085491, 0.944036,
		0.829329, -0.457169, 0.321264,
		0.459049, 0.885262, 0.074741,
		42.164036, 26.852991, 22.287468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209362, 26.290609, 22.880978>,  <41.842701, 26.233307, 22.235149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209362, 26.290609, 22.880978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.161255, 26.676163, 22.785925>,  <42.132389, 26.907494, 22.728893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.161255, 26.676163, 22.785925>,  <42.209362, 26.290609, 22.880978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161255, 26.676163, 22.785925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124631, 0.222814, 0.966862,
		0.984887, 0.145898, 0.093332,
		-0.120267, 0.963882, -0.237630,
		42.125175, 26.965326, 22.714636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557709, 26.669350, 23.420719>,  <42.209362, 26.290609, 22.880978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557709, 26.669350, 23.420719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.297264, 26.918365, 23.247055>,  <42.140995, 27.067776, 23.142857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.297264, 26.918365, 23.247055>,  <42.557709, 26.669350, 23.420719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297264, 26.918365, 23.247055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335446, 0.277087, 0.900388,
		0.680828, 0.731892, 0.028414,
		-0.651114, 0.622541, -0.434159,
		42.101929, 27.105127, 23.116808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660583, 27.201162, 23.810280>,  <42.557709, 26.669350, 23.420719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660583, 27.201162, 23.810280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.308537, 27.231592, 23.622833>,  <42.097309, 27.249851, 23.510365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.308537, 27.231592, 23.622833>,  <42.660583, 27.201162, 23.810280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308537, 27.231592, 23.622833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458669, 0.118494, 0.880671,
		0.122526, 0.990036, -0.069395,
		-0.880119, 0.076076, -0.468618,
		42.044502, 27.254416, 23.482248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293900, 27.781445, 24.070721>,  <42.660583, 27.201162, 23.810280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293900, 27.781445, 24.070721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.006725, 27.564550, 23.896112>,  <41.834419, 27.434414, 23.791348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.006725, 27.564550, 23.896112>,  <42.293900, 27.781445, 24.070721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006725, 27.564550, 23.896112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553177, 0.063740, 0.830622,
		-0.422567, 0.837807, -0.345712,
		-0.717936, -0.542233, -0.436521,
		41.791344, 27.401880, 23.765156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715694, 28.262728, 24.071081>,  <42.293900, 27.781445, 24.070721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715694, 28.262728, 24.071081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.522755, 27.914368, 24.033392>,  <41.406990, 27.705353, 24.010778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.522755, 27.914368, 24.033392>,  <41.715694, 28.262728, 24.071081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522755, 27.914368, 24.033392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675368, 0.301224, 0.673158,
		-0.557870, 0.388331, -0.733471,
		-0.482347, -0.870898, -0.094222,
		41.378052, 27.653099, 24.005125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054775, 28.495922, 24.125801>,  <41.715694, 28.262728, 24.071081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054775, 28.495922, 24.125801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.017899, 28.100662, 24.174892>,  <40.995773, 27.863506, 24.204348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.017899, 28.100662, 24.174892>,  <41.054775, 28.495922, 24.125801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017899, 28.100662, 24.174892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636950, 0.153262, 0.755517,
		-0.765372, -0.008517, -0.643532,
		-0.092194, -0.988149, 0.122727,
		40.990242, 27.804218, 24.211710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351017, 28.263880, 24.152916>,  <41.054775, 28.495922, 24.125801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351017, 28.263880, 24.152916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540745, 27.988665, 24.372597>,  <40.654583, 27.823536, 24.504406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540745, 27.988665, 24.372597>,  <40.351017, 28.263880, 24.152916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540745, 27.988665, 24.372597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585981, 0.218820, 0.780220,
		-0.656996, -0.691899, -0.299385,
		0.474322, -0.688036, 0.549203,
		40.683041, 27.782253, 24.537357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807045, 27.867218, 24.639660>,  <40.351017, 28.263880, 24.152916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807045, 27.867218, 24.639660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.179012, 27.843229, 24.784794>,  <40.402195, 27.828836, 24.871874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.179012, 27.843229, 24.784794>,  <39.807045, 27.867218, 24.639660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179012, 27.843229, 24.784794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347328, 0.181049, 0.920101,
		-0.120872, -0.981644, 0.147531,
		0.929922, -0.059973, 0.362836,
		40.457989, 27.825237, 24.893644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594311, 27.077257, 24.537092>,  <39.807045, 27.867218, 24.639660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594311, 27.077257, 24.537092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.245510, 26.915594, 24.426622>,  <39.036232, 26.818596, 24.360340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.245510, 26.915594, 24.426622>,  <39.594311, 27.077257, 24.537092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245510, 26.915594, 24.426622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343092, -0.102199, -0.933725,
		0.349149, -0.908961, 0.227781,
		-0.871999, -0.404159, -0.276175,
		38.983910, 26.794346, 24.343769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815216, 26.491699, 24.090654>,  <39.594311, 27.077257, 24.537092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815216, 26.491699, 24.090654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.435051, 26.568438, 23.992752>,  <39.206951, 26.614481, 23.934011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.435051, 26.568438, 23.992752>,  <39.815216, 26.491699, 24.090654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435051, 26.568438, 23.992752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202175, -0.216847, -0.955041,
		-0.236300, -0.957168, 0.167307,
		-0.950415, 0.191851, -0.244756,
		39.149925, 26.625992, 23.919325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648281, 26.096195, 23.533644>,  <39.815216, 26.491699, 24.090654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648281, 26.096195, 23.533644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.341091, 26.351233, 23.509335>,  <39.156776, 26.504255, 23.494749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.341091, 26.351233, 23.509335>,  <39.648281, 26.096195, 23.533644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341091, 26.351233, 23.509335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076462, -0.002939, -0.997068,
		-0.635905, -0.770366, -0.046495,
		-0.767971, 0.637595, -0.060772,
		39.110699, 26.542511, 23.491102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242767, 25.748974, 23.061213>,  <39.648281, 26.096195, 23.533644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242767, 25.748974, 23.061213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.143696, 26.136492, 23.064962>,  <39.084251, 26.369003, 23.067213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.143696, 26.136492, 23.064962>,  <39.242767, 25.748974, 23.061213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143696, 26.136492, 23.064962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113343, -0.019366, -0.993367,
		-0.962189, -0.247101, 0.114603,
		-0.247681, 0.968796, 0.009374,
		39.069393, 26.427130, 23.067774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703362, 25.809216, 22.595972>,  <39.242767, 25.748974, 23.061213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703362, 25.809216, 22.595972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.775127, 26.199715, 22.644550>,  <38.818188, 26.434013, 22.673698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.775127, 26.199715, 22.644550>,  <38.703362, 25.809216, 22.595972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775127, 26.199715, 22.644550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071976, 0.136145, -0.988071,
		-0.981137, 0.168533, 0.094692,
		0.179415, 0.976249, 0.121447,
		38.828953, 26.492590, 22.680984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203861, 26.207783, 22.281435>,  <38.703362, 25.809216, 22.595972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203861, 26.207783, 22.281435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.529034, 26.440586, 22.289545>,  <38.724136, 26.580267, 22.294411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.529034, 26.440586, 22.289545>,  <38.203861, 26.207783, 22.281435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529034, 26.440586, 22.289545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048980, -0.033637, -0.998233,
		-0.580297, 0.812488, -0.055851,
		0.812931, 0.582007, 0.020276,
		38.772911, 26.615189, 22.295628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054237, 26.686934, 21.769962>,  <38.203861, 26.207783, 22.281435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054237, 26.686934, 21.769962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452003, 26.719143, 21.797266>,  <38.690662, 26.738468, 21.813648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452003, 26.719143, 21.797266>,  <38.054237, 26.686934, 21.769962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452003, 26.719143, 21.797266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042521, 0.286305, -0.957194,
		-0.096620, 0.954749, 0.281282,
		0.994413, 0.080523, 0.068260,
		38.750328, 26.743299, 21.817743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654045, 27.277950, 21.502731>,  <38.054237, 26.686934, 21.769962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654045, 27.277950, 21.502731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532192, 27.635044, 21.369934>,  <37.459080, 27.849300, 21.290257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532192, 27.635044, 21.369934>,  <37.654045, 27.277950, 21.502731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532192, 27.635044, 21.369934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350843, 0.218877, 0.910496,
		0.885498, 0.393847, 0.246533,
		-0.304635, 0.892736, -0.331994,
		37.440800, 27.902864, 21.270336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852039, 27.856081, 22.010559>,  <37.654045, 27.277950, 21.502731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852039, 27.856081, 22.010559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532566, 27.969625, 21.798323>,  <37.340881, 28.037752, 21.670980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532566, 27.969625, 21.798323>,  <37.852039, 27.856081, 22.010559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532566, 27.969625, 21.798323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480712, 0.229408, 0.846338,
		0.361962, 0.931019, -0.046770,
		-0.798686, 0.283860, -0.530589,
		37.292961, 28.054783, 21.639147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685066, 28.643040, 22.226364>,  <37.852039, 27.856081, 22.010559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685066, 28.643040, 22.226364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.378231, 28.429415, 22.084175>,  <37.194130, 28.301241, 21.998861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.378231, 28.429415, 22.084175>,  <37.685066, 28.643040, 22.226364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378231, 28.429415, 22.084175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523815, 0.201475, 0.827663,
		-0.370404, 0.821089, -0.434297,
		-0.767085, -0.534061, -0.355471,
		37.148106, 28.269196, 21.977533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143780, 29.067894, 22.507114>,  <37.685066, 28.643040, 22.226364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143780, 29.067894, 22.507114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958706, 28.729456, 22.401249>,  <36.847660, 28.526394, 22.337730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958706, 28.729456, 22.401249>,  <37.143780, 29.067894, 22.507114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958706, 28.729456, 22.401249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620274, 0.095668, 0.778529,
		-0.633388, 0.524379, -0.569074,
		-0.462687, -0.846094, -0.264664,
		36.819901, 28.475628, 22.321850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538464, 29.168339, 22.679153>,  <37.143780, 29.067894, 22.507114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538464, 29.168339, 22.679153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538399, 28.769934, 22.643478>,  <36.538361, 28.530890, 22.622072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538399, 28.769934, 22.643478>,  <36.538464, 29.168339, 22.679153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538399, 28.769934, 22.643478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495407, -0.077395, 0.865206,
		-0.868661, 0.044323, -0.493421,
		-0.000160, -0.996015, -0.089189,
		36.538349, 28.471128, 22.616722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957024, 28.992987, 22.952528>,  <36.538464, 29.168339, 22.679153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957024, 28.992987, 22.952528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.158062, 28.647247, 22.959435>,  <36.278683, 28.439804, 22.963577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.158062, 28.647247, 22.959435>,  <35.957024, 28.992987, 22.952528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158062, 28.647247, 22.959435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287172, -0.148080, 0.946364,
		-0.815433, -0.480594, -0.322641,
		0.502594, -0.864350, 0.017264,
		36.308842, 28.387941, 22.964613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509815, 28.572922, 23.253984>,  <35.957024, 28.992987, 22.952528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509815, 28.572922, 23.253984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.872810, 28.410614, 23.297474>,  <36.090607, 28.313229, 23.323568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.872810, 28.410614, 23.297474>,  <35.509815, 28.572922, 23.253984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872810, 28.410614, 23.297474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216167, -0.229145, 0.949086,
		-0.360199, -0.884783, -0.295660,
		0.907485, -0.405772, 0.108723,
		36.145058, 28.288883, 23.330091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.064487, 31.162235, 20.002916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.232754, 30.945780, 20.294178>,  <42.333714, 30.815907, 20.468935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.232754, 30.945780, 20.294178>,  <42.064487, 31.162235, 20.002916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232754, 30.945780, 20.294178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684245, 0.337767, 0.646314,
		-0.595692, -0.770119, -0.228184,
		0.420665, -0.541138, 0.728155,
		42.358952, 30.783438, 20.512625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491077, 30.723137, 20.359072>,  <42.064487, 31.162235, 20.002916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491077, 30.723137, 20.359072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.799934, 30.780005, 20.606808>,  <41.985249, 30.814125, 20.755449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.799934, 30.780005, 20.606808>,  <41.491077, 30.723137, 20.359072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799934, 30.780005, 20.606808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614314, 0.416288, 0.670315,
		-0.162526, -0.898049, 0.408770,
		0.772142, 0.142170, 0.619342,
		42.031578, 30.822655, 20.792610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249641, 30.577572, 20.960728>,  <41.491077, 30.723137, 20.359072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249641, 30.577572, 20.960728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.557419, 30.818157, 21.046701>,  <41.742085, 30.962507, 21.098286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.557419, 30.818157, 21.046701>,  <41.249641, 30.577572, 20.960728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557419, 30.818157, 21.046701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565270, 0.484589, 0.667565,
		0.297358, -0.635152, 0.712853,
		0.769447, 0.601461, 0.214936,
		41.788254, 30.998596, 21.111181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302303, 30.535902, 21.700401>,  <41.249641, 30.577572, 20.960728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302303, 30.535902, 21.700401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.502335, 30.870340, 21.610188>,  <41.622353, 31.071003, 21.556059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.502335, 30.870340, 21.610188>,  <41.302303, 30.535902, 21.700401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502335, 30.870340, 21.610188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430901, 0.466153, 0.772674,
		0.751163, -0.289215, 0.593388,
		0.500079, 0.836096, -0.225534,
		41.652359, 31.121168, 21.542528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467251, 30.695108, 22.284025>,  <41.302303, 30.535902, 21.700401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467251, 30.695108, 22.284025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.511200, 31.035589, 22.078741>,  <41.537571, 31.239878, 21.955570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.511200, 31.035589, 22.078741>,  <41.467251, 30.695108, 22.284025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511200, 31.035589, 22.078741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179417, 0.524841, 0.832077,
		0.977618, 0.000655, 0.210386,
		0.109874, 0.851200, -0.513212,
		41.544163, 31.290949, 21.924778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987820, 31.153364, 22.605980>,  <41.467251, 30.695108, 22.284025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987820, 31.153364, 22.605980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.769295, 31.399136, 22.378288>,  <41.638180, 31.546598, 22.241673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.769295, 31.399136, 22.378288>,  <41.987820, 31.153364, 22.605980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769295, 31.399136, 22.378288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320588, 0.474467, 0.819820,
		0.773802, 0.630364, -0.062227,
		-0.546310, 0.614429, -0.569230,
		41.605400, 31.583464, 22.207520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951546, 31.725685, 23.098335>,  <41.987820, 31.153364, 22.605980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951546, 31.725685, 23.098335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.687130, 31.827248, 22.815903>,  <41.528481, 31.888186, 22.646442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.687130, 31.827248, 22.815903>,  <41.951546, 31.725685, 23.098335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687130, 31.827248, 22.815903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494141, 0.560834, 0.664296,
		0.564665, 0.788033, -0.245270,
		-0.661043, 0.253907, -0.706083,
		41.488815, 31.903419, 22.604078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965565, 32.448288, 22.881834>,  <41.951546, 31.725685, 23.098335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965565, 32.448288, 22.881834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.591793, 32.327038, 22.807049>,  <41.367531, 32.254288, 22.762177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.591793, 32.327038, 22.807049>,  <41.965565, 32.448288, 22.881834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591793, 32.327038, 22.807049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345651, 0.645361, 0.681201,
		-0.085832, 0.701159, -0.707820,
		-0.934429, -0.303128, -0.186964,
		41.311462, 32.236099, 22.750959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614758, 33.066410, 22.825031>,  <41.965565, 32.448288, 22.881834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614758, 33.066410, 22.825031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.353603, 32.769253, 22.884172>,  <41.196911, 32.590958, 22.919657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.353603, 32.769253, 22.884172>,  <41.614758, 33.066410, 22.825031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353603, 32.769253, 22.884172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437017, 0.528868, 0.727540,
		-0.618676, 0.410384, -0.669944,
		-0.652883, -0.742888, 0.147853,
		41.157738, 32.546387, 22.928528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959515, 33.361904, 22.808809>,  <41.614758, 33.066410, 22.825031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959515, 33.361904, 22.808809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.906841, 33.021858, 23.012754>,  <40.875237, 32.817829, 23.135122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.906841, 33.021858, 23.012754>,  <40.959515, 33.361904, 22.808809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906841, 33.021858, 23.012754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398702, 0.516329, 0.757919,
		-0.907577, -0.103478, -0.406935,
		-0.131685, -0.850116, 0.509865,
		40.867336, 32.766823, 23.165714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363178, 33.481186, 23.154539>,  <40.959515, 33.361904, 22.808809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363178, 33.481186, 23.154539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.553776, 33.174610, 23.326828>,  <40.668137, 32.990665, 23.430202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.553776, 33.174610, 23.326828>,  <40.363178, 33.481186, 23.154539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553776, 33.174610, 23.326828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396785, 0.249711, 0.883292,
		-0.784545, -0.591792, -0.185124,
		0.476498, -0.766437, 0.430724,
		40.696724, 32.944679, 23.456045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776924, 33.088509, 23.470318>,  <40.363178, 33.481186, 23.154539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776924, 33.088509, 23.470318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.100201, 32.938251, 23.651745>,  <40.294167, 32.848099, 23.760601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.100201, 32.938251, 23.651745>,  <39.776924, 33.088509, 23.470318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100201, 32.938251, 23.651745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389289, 0.237152, 0.890063,
		-0.441911, -0.895908, 0.045430,
		0.808189, -0.375643, 0.453567,
		40.342659, 32.825558, 23.787815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179867, 32.588135, 23.369289>,  <39.776924, 33.088509, 23.470318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179867, 32.588135, 23.369289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.842247, 32.770718, 23.256695>,  <38.639675, 32.880268, 23.189138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.842247, 32.770718, 23.256695>,  <39.179867, 32.588135, 23.369289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842247, 32.770718, 23.256695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133232, -0.329950, -0.934549,
		-0.519454, -0.826307, 0.217679,
		-0.844048, 0.456453, -0.281485,
		38.589031, 32.907654, 23.172249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751625, 32.128353, 23.014057>,  <39.179867, 32.588135, 23.369289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751625, 32.128353, 23.014057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667076, 32.492535, 22.871851>,  <38.616344, 32.711044, 22.786528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667076, 32.492535, 22.871851>,  <38.751625, 32.128353, 23.014057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667076, 32.492535, 22.871851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124998, -0.335566, -0.933687,
		-0.969379, -0.241799, -0.042875,
		-0.211377, 0.910455, -0.355515,
		38.603664, 32.765671, 22.765196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237114, 32.004074, 22.489552>,  <38.751625, 32.128353, 23.014057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237114, 32.004074, 22.489552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.411598, 32.359055, 22.430016>,  <38.516289, 32.572041, 22.394293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.411598, 32.359055, 22.430016>,  <38.237114, 32.004074, 22.489552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411598, 32.359055, 22.430016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171265, -0.244264, -0.954465,
		-0.883396, 0.390857, -0.258540,
		0.436211, 0.887449, -0.148841,
		38.542461, 32.625290, 22.385363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842545, 32.233521, 22.011086>,  <38.237114, 32.004074, 22.489552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842545, 32.233521, 22.011086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.175060, 32.453754, 21.980583>,  <38.374569, 32.585896, 21.962282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.175060, 32.453754, 21.980583>,  <37.842545, 32.233521, 22.011086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175060, 32.453754, 21.980583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004309, -0.130803, -0.991399,
		-0.555827, 0.824466, -0.106362,
		0.831287, 0.550588, -0.076257,
		38.424446, 32.618931, 21.957706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848003, 32.399410, 21.321489>,  <37.842545, 32.233521, 22.011086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848003, 32.399410, 21.321489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.216179, 32.526360, 21.412758>,  <38.437084, 32.602528, 21.467518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.216179, 32.526360, 21.412758>,  <37.848003, 32.399410, 21.321489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216179, 32.526360, 21.412758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262338, -0.068846, -0.962517,
		-0.289770, 0.945798, -0.146628,
		0.920441, 0.317375, 0.228169,
		38.492310, 32.621571, 21.481209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018772, 32.845745, 20.699057>,  <37.848003, 32.399410, 21.321489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018772, 32.845745, 20.699057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.353191, 32.725067, 20.882360>,  <38.553844, 32.652660, 20.992342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.353191, 32.725067, 20.882360>,  <38.018772, 32.845745, 20.699057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353191, 32.725067, 20.882360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356928, -0.335253, -0.871899,
		0.416682, 0.892516, -0.172605,
		0.836050, -0.301697, 0.458258,
		38.604008, 32.634560, 21.019838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602768, 32.936424, 20.268415>,  <38.018772, 32.845745, 20.699057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602768, 32.936424, 20.268415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.742523, 32.652157, 20.512672>,  <38.826378, 32.481598, 20.659225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.742523, 32.652157, 20.512672>,  <38.602768, 32.936424, 20.268415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742523, 32.652157, 20.512672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370522, -0.493799, -0.786687,
		0.860605, 0.501114, 0.090790,
		0.349388, -0.710666, 0.610640,
		38.847340, 32.438957, 20.695864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271584, 32.861557, 20.095457>,  <38.602768, 32.936424, 20.268415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271584, 32.861557, 20.095457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.210640, 32.519524, 20.293695>,  <39.174072, 32.314304, 20.412638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.210640, 32.519524, 20.293695>,  <39.271584, 32.861557, 20.095457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210640, 32.519524, 20.293695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521704, -0.495479, -0.694496,
		0.839411, 0.152741, 0.521593,
		-0.152360, -0.855085, 0.495596,
		39.164932, 32.262997, 20.442375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872921, 32.663136, 20.098782>,  <39.271584, 32.861557, 20.095457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872921, 32.663136, 20.098782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.649559, 32.340252, 20.175301>,  <39.515541, 32.146523, 20.221212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.649559, 32.340252, 20.175301>,  <39.872921, 32.663136, 20.098782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649559, 32.340252, 20.175301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522498, -0.521340, -0.674685,
		0.644345, -0.276793, 0.712885,
		-0.558404, -0.807211, 0.191299,
		39.482037, 32.098087, 20.232691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378002, 32.102184, 20.204489>,  <39.872921, 32.663136, 20.098782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378002, 32.102184, 20.204489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.036869, 31.922472, 20.098043>,  <39.832188, 31.814644, 20.034176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.036869, 31.922472, 20.098043>,  <40.378002, 32.102184, 20.204489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036869, 31.922472, 20.098043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491530, -0.518672, -0.699555,
		0.176273, -0.727408, 0.663178,
		-0.852834, -0.449285, -0.266115,
		39.781017, 31.787687, 20.018209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592365, 31.422304, 20.150099>,  <40.378002, 32.102184, 20.204489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592365, 31.422304, 20.150099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.240753, 31.391436, 19.961906>,  <40.029785, 31.372915, 19.848991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.240753, 31.391436, 19.961906>,  <40.592365, 31.422304, 20.150099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240753, 31.391436, 19.961906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361852, -0.750525, -0.552969,
		-0.310434, -0.656321, 0.687658,
		-0.879030, -0.077170, -0.470480,
		39.977043, 31.368284, 19.820763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279198, 30.678936, 20.158525>,  <40.592365, 31.422304, 20.150099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279198, 30.678936, 20.158525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.137608, 30.870264, 19.837051>,  <40.052654, 30.985062, 19.644167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.137608, 30.870264, 19.837051>,  <40.279198, 30.678936, 20.158525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137608, 30.870264, 19.837051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257154, -0.776425, -0.575357,
		-0.899209, -0.410331, 0.151829,
		-0.353971, 0.478323, -0.803687,
		40.031418, 31.013762, 19.595945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822483, 30.268759, 19.866934>,  <40.279198, 30.678936, 20.158525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822483, 30.268759, 19.866934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.912632, 30.520451, 19.569403>,  <39.966721, 30.671465, 19.390884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.912632, 30.520451, 19.569403>,  <39.822483, 30.268759, 19.866934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912632, 30.520451, 19.569403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173916, -0.777189, -0.604757,
		-0.958625, 0.006930, -0.284588,
		0.225370, 0.629229, -0.743827,
		39.980244, 30.709219, 19.346254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483311, 29.950329, 19.338602>,  <39.822483, 30.268759, 19.866934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483311, 29.950329, 19.338602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.737823, 30.207035, 19.167355>,  <39.890530, 30.361059, 19.064606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.737823, 30.207035, 19.167355>,  <39.483311, 29.950329, 19.338602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737823, 30.207035, 19.167355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292070, -0.714033, -0.636279,
		-0.714033, 0.279811, -0.641765,
		0.636279, 0.641765, -0.428119,
		39.928707, 30.399565, 19.038919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166954, 29.441381, 19.025743>,  <39.483311, 29.950329, 19.338602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166954, 29.441381, 19.025743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009483, 29.076187, 18.982891>,  <38.915001, 28.857071, 18.957180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009483, 29.076187, 18.982891>,  <39.166954, 29.441381, 19.025743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009483, 29.076187, 18.982891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528418, 0.129394, 0.839066,
		-0.752192, 0.386931, -0.533377,
		-0.393676, -0.912985, -0.107132,
		38.891380, 28.802292, 18.950752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485531, 29.532047, 19.333475>,  <39.166954, 29.441381, 19.025743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485531, 29.532047, 19.333475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.517944, 29.133497, 19.323086>,  <38.537392, 28.894367, 19.316853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.517944, 29.133497, 19.323086>,  <38.485531, 29.532047, 19.333475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517944, 29.133497, 19.323086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649245, -0.072539, 0.757112,
		-0.756250, -0.044487, -0.652768,
		0.081033, -0.996373, -0.025975,
		38.542255, 28.834585, 19.315294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834911, 29.333700, 19.444365>,  <38.485531, 29.532047, 19.333475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834911, 29.333700, 19.444365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.048439, 29.000240, 19.501022>,  <38.176556, 28.800163, 19.535017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.048439, 29.000240, 19.501022>,  <37.834911, 29.333700, 19.444365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048439, 29.000240, 19.501022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558376, -0.221720, 0.799410,
		-0.635024, -0.505831, -0.583849,
		0.533818, -0.833651, 0.141646,
		38.208584, 28.750145, 19.543516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395176, 28.757206, 19.426779>,  <37.834911, 29.333700, 19.444365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395176, 28.757206, 19.426779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.718323, 28.620937, 19.619152>,  <37.912212, 28.539177, 19.734575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.718323, 28.620937, 19.619152>,  <37.395176, 28.757206, 19.426779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718323, 28.620937, 19.619152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589258, -0.482528, 0.648029,
		0.011301, -0.806914, -0.590560,
		0.807866, -0.340670, 0.480934,
		37.960682, 28.518736, 19.763432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412033, 27.986244, 19.532295>,  <37.395176, 28.757206, 19.426779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412033, 27.986244, 19.532295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.640774, 28.154503, 19.814018>,  <37.778019, 28.255459, 19.983051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.640774, 28.154503, 19.814018>,  <37.412033, 27.986244, 19.532295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640774, 28.154503, 19.814018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627244, -0.329138, 0.705856,
		0.528730, -0.845414, 0.075631,
		0.571847, 0.420646, 0.704306,
		37.812328, 28.280697, 20.025311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487419, 27.443134, 19.991484>,  <37.412033, 27.986244, 19.532295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487419, 27.443134, 19.991484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580742, 27.760118, 20.216900>,  <37.636734, 27.950308, 20.352150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580742, 27.760118, 20.216900>,  <37.487419, 27.443134, 19.991484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580742, 27.760118, 20.216900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578215, -0.352888, 0.735621,
		0.781816, -0.497472, 0.375880,
		0.233307, 0.792459, 0.563539,
		37.650734, 27.997856, 20.385962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772118, 27.213745, 20.717291>,  <37.487419, 27.443134, 19.991484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772118, 27.213745, 20.717291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.647976, 27.589670, 20.774473>,  <37.573490, 27.815226, 20.808783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.647976, 27.589670, 20.774473>,  <37.772118, 27.213745, 20.717291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647976, 27.589670, 20.774473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482519, -0.285307, 0.828116,
		0.819058, 0.188031, 0.542022,
		-0.310354, 0.939811, 0.142954,
		37.554871, 27.871613, 20.817360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376877, 27.189964, 21.203682>,  <37.772118, 27.213745, 20.717291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376877, 27.189964, 21.203682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.726440, 27.028969, 21.312702>,  <38.936180, 26.932371, 21.378115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.726440, 27.028969, 21.312702>,  <38.376877, 27.189964, 21.203682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726440, 27.028969, 21.312702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275845, -0.051036, -0.959846,
		0.400238, 0.914001, 0.066424,
		0.873910, -0.402490, 0.272549,
		38.988613, 26.908222, 21.394466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932976, 27.655018, 21.007179>,  <38.376877, 27.189964, 21.203682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932976, 27.655018, 21.007179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.099415, 27.294117, 21.052444>,  <39.199276, 27.077576, 21.079603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.099415, 27.294117, 21.052444>,  <38.932976, 27.655018, 21.007179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099415, 27.294117, 21.052444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484640, 0.114743, -0.867155,
		0.769409, 0.415661, 0.485012,
		0.416094, -0.902253, 0.113162,
		39.224243, 27.023441, 21.086393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639946, 27.766369, 20.744503>,  <38.932976, 27.655018, 21.007179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639946, 27.766369, 20.744503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.613747, 27.367926, 20.768103>,  <39.598026, 27.128860, 20.782263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.613747, 27.367926, 20.768103>,  <39.639946, 27.766369, 20.744503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613747, 27.367926, 20.768103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432127, -0.081610, -0.898112,
		0.899431, -0.033327, 0.435790,
		-0.065496, -0.996107, 0.059001,
		39.594097, 27.069094, 20.785803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334629, 27.516144, 20.676302>,  <39.639946, 27.766369, 20.744503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334629, 27.516144, 20.676302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.099960, 27.205755, 20.583618>,  <39.959160, 27.019522, 20.528008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.099960, 27.205755, 20.583618>,  <40.334629, 27.516144, 20.676302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099960, 27.205755, 20.583618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575556, -0.198239, -0.793371,
		0.569698, -0.598808, 0.562914,
		-0.586668, -0.775970, -0.231711,
		39.923958, 26.972963, 20.514105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782574, 26.974993, 20.491407>,  <40.334629, 27.516144, 20.676302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782574, 26.974993, 20.491407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.453526, 26.836584, 20.310936>,  <40.256096, 26.753538, 20.202654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.453526, 26.836584, 20.310936>,  <40.782574, 26.974993, 20.491407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453526, 26.836584, 20.310936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557345, -0.333699, -0.760271,
		0.112514, -0.876877, 0.467362,
		-0.822622, -0.346024, -0.451177,
		40.206738, 26.732777, 20.175583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967239, 26.222996, 20.293417>,  <40.782574, 26.974993, 20.491407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967239, 26.222996, 20.293417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.676903, 26.370029, 20.060856>,  <40.502701, 26.458250, 19.921318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.676903, 26.370029, 20.060856>,  <40.967239, 26.222996, 20.293417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676903, 26.370029, 20.060856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439565, -0.402267, -0.803096,
		-0.529086, -0.838488, 0.130406,
		-0.725845, 0.367586, -0.581404,
		40.459148, 26.480305, 19.886435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780708, 25.710661, 19.700886>,  <40.967239, 26.222996, 20.293417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780708, 25.710661, 19.700886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.636681, 26.053581, 19.553709>,  <40.550262, 26.259335, 19.465403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.636681, 26.053581, 19.553709>,  <40.780708, 25.710661, 19.700886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636681, 26.053581, 19.553709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430884, -0.196984, -0.880645,
		-0.827457, -0.475637, -0.298469,
		-0.360074, 0.857302, -0.367941,
		40.528660, 26.310772, 19.443327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573334, 25.539755, 19.043821>,  <40.780708, 25.710661, 19.700886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573334, 25.539755, 19.043821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.567745, 25.939693, 19.039579>,  <40.564392, 26.179657, 19.037035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.567745, 25.939693, 19.039579>,  <40.573334, 25.539755, 19.043821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567745, 25.939693, 19.039579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325232, -0.005483, -0.945619,
		-0.945531, -0.016662, -0.325105,
		-0.013974, 0.999846, -0.010603,
		40.563553, 26.239647, 19.036398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284100, 25.774733, 18.381155>,  <40.573334, 25.539755, 19.043821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284100, 25.774733, 18.381155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.517372, 26.065941, 18.525312>,  <40.657337, 26.240665, 18.611807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.517372, 26.065941, 18.525312>,  <40.284100, 25.774733, 18.381155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517372, 26.065941, 18.525312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630175, -0.125487, -0.766246,
		-0.512616, 0.673975, -0.531961,
		0.583185, 0.728018, 0.360395,
		40.692329, 26.284346, 18.633430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.760334, 29.849991, 33.901020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159927, 29.868015, 33.900208>,  <36.399685, 29.878830, 33.899719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159927, 29.868015, 33.900208>,  <35.760334, 29.849991, 33.901020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159927, 29.868015, 33.900208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018676, -0.454205, -0.890701,
		-0.041061, 0.889757, -0.454584,
		0.998982, 0.045063, -0.002033,
		36.459621, 29.881535, 33.899597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966145, 29.857111, 33.127720>,  <35.760334, 29.849991, 33.901020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966145, 29.857111, 33.127720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301647, 29.756264, 33.320766>,  <36.502949, 29.695755, 33.436596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301647, 29.756264, 33.320766>,  <35.966145, 29.857111, 33.127720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301647, 29.756264, 33.320766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332211, -0.465313, -0.820438,
		0.431417, 0.848481, -0.306528,
		0.838758, -0.252119, 0.482619,
		36.553276, 29.680628, 33.465553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566254, 30.127081, 32.710876>,  <35.966145, 29.857111, 33.127720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566254, 30.127081, 32.710876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726871, 29.852825, 32.953747>,  <36.823242, 29.688272, 33.099468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726871, 29.852825, 32.953747>,  <36.566254, 30.127081, 32.710876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726871, 29.852825, 32.953747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575676, -0.326665, -0.749591,
		0.712292, 0.650530, 0.263536,
		0.401544, -0.685639, 0.607175,
		36.847336, 29.647133, 33.135899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234463, 30.126022, 32.518131>,  <36.566254, 30.127081, 32.710876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234463, 30.126022, 32.518131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122547, 29.781092, 32.686947>,  <37.055397, 29.574133, 32.788235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122547, 29.781092, 32.686947>,  <37.234463, 30.126022, 32.518131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122547, 29.781092, 32.686947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422577, -0.505333, -0.752375,
		0.862060, -0.032162, 0.505784,
		-0.279787, -0.862325, 0.422036,
		37.038612, 29.522394, 32.813557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846336, 29.766575, 32.363071>,  <37.234463, 30.126022, 32.518131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846336, 29.766575, 32.363071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546837, 29.510897, 32.433277>,  <37.367138, 29.357491, 32.475403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546837, 29.510897, 32.433277>,  <37.846336, 29.766575, 32.363071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546837, 29.510897, 32.433277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321491, -0.581752, -0.747134,
		0.579671, -0.502988, 0.641081,
		-0.748749, -0.639193, 0.175519,
		37.322212, 29.319139, 32.485931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192837, 29.030497, 32.332546>,  <37.846336, 29.766575, 32.363071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192837, 29.030497, 32.332546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797314, 28.983227, 32.296139>,  <37.559998, 28.954865, 32.274292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797314, 28.983227, 32.296139>,  <38.192837, 29.030497, 32.332546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797314, 28.983227, 32.296139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140587, -0.534360, -0.833483,
		0.049857, -0.836955, 0.544996,
		-0.988812, -0.118174, -0.091023,
		37.500671, 28.947775, 32.268833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161011, 28.358974, 32.097084>,  <38.192837, 29.030497, 32.332546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161011, 28.358974, 32.097084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823441, 28.548502, 31.996454>,  <37.620899, 28.662220, 31.936075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823441, 28.548502, 31.996454>,  <38.161011, 28.358974, 32.097084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823441, 28.548502, 31.996454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069617, -0.561713, -0.824398,
		-0.531931, -0.678213, 0.507028,
		-0.843922, 0.473820, -0.251577,
		37.570263, 28.690649, 31.920980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824707, 27.778149, 31.898331>,  <38.161011, 28.358974, 32.097084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824707, 27.778149, 31.898331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655228, 28.102106, 31.736073>,  <37.553539, 28.296480, 31.638718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655228, 28.102106, 31.736073>,  <37.824707, 27.778149, 31.898331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655228, 28.102106, 31.736073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035574, -0.462362, -0.885977,
		-0.905104, -0.360959, 0.224715,
		-0.423700, 0.809895, -0.405645,
		37.528118, 28.345076, 31.614380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242973, 27.539948, 31.485962>,  <37.824707, 27.778149, 31.898331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242973, 27.539948, 31.485962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.347496, 27.897297, 31.339754>,  <37.410210, 28.111706, 31.252029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.347496, 27.897297, 31.339754>,  <37.242973, 27.539948, 31.485962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347496, 27.897297, 31.339754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010202, -0.376098, -0.926524,
		-0.965202, 0.245837, -0.089163,
		0.261308, 0.893373, -0.365518,
		37.425888, 28.165308, 31.230099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910072, 27.612791, 30.841404>,  <37.242973, 27.539948, 31.485962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910072, 27.612791, 30.841404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169209, 27.915150, 30.803623>,  <37.324692, 28.096565, 30.780954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169209, 27.915150, 30.803623>,  <36.910072, 27.612791, 30.841404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169209, 27.915150, 30.803623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184737, -0.276186, -0.943183,
		-0.739035, 0.593585, -0.318567,
		0.647843, 0.755896, -0.094454,
		37.363560, 28.141918, 30.775288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709099, 27.777655, 30.204075>,  <36.910072, 27.612791, 30.841404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709099, 27.777655, 30.204075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068069, 27.944828, 30.260574>,  <37.283451, 28.045132, 30.294474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068069, 27.944828, 30.260574>,  <36.709099, 27.777655, 30.204075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068069, 27.944828, 30.260574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271206, -0.270136, -0.923837,
		-0.347946, 0.867386, -0.355774,
		0.897430, 0.417933, 0.141248,
		37.337299, 28.070208, 30.302948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794155, 28.428278, 29.697756>,  <36.709099, 27.777655, 30.204075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794155, 28.428278, 29.697756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.161415, 28.279203, 29.751583>,  <37.381771, 28.189758, 29.783878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.161415, 28.279203, 29.751583>,  <36.794155, 28.428278, 29.697756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161415, 28.279203, 29.751583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030801, -0.271456, -0.961958,
		0.395038, 0.887365, -0.237758,
		0.918148, -0.372686, 0.134567,
		37.436859, 28.167397, 29.791954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545155, 29.053724, 29.443567>,  <36.794155, 28.428278, 29.697756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545155, 29.053724, 29.443567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.191570, 29.165154, 29.293365>,  <35.979420, 29.232012, 29.203243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.191570, 29.165154, 29.293365>,  <36.545155, 29.053724, 29.443567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191570, 29.165154, 29.293365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221267, 0.458256, 0.860838,
		0.411884, 0.844037, -0.343443,
		-0.883964, 0.278573, -0.375505,
		35.926380, 29.248726, 29.180714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379826, 29.717913, 29.723753>,  <36.545155, 29.053724, 29.443567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379826, 29.717913, 29.723753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012527, 29.636240, 29.588024>,  <35.792149, 29.587236, 29.506586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012527, 29.636240, 29.588024>,  <36.379826, 29.717913, 29.723753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012527, 29.636240, 29.588024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395931, 0.491190, 0.775868,
		0.008255, 0.846784, -0.531873,
		-0.918243, -0.204180, -0.339323,
		35.737053, 29.574986, 29.486227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991028, 30.418446, 29.698496>,  <36.379826, 29.717913, 29.723753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991028, 30.418446, 29.698496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740730, 30.109711, 29.743589>,  <35.590553, 29.924469, 29.770645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740730, 30.109711, 29.743589>,  <35.991028, 30.418446, 29.698496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740730, 30.109711, 29.743589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385462, 0.431622, 0.815550,
		-0.678132, 0.466871, -0.567599,
		-0.625745, -0.771838, 0.112736,
		35.553005, 29.878159, 29.777411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361626, 30.701607, 29.663855>,  <35.991028, 30.418446, 29.698496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361626, 30.701607, 29.663855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315430, 30.349163, 29.847292>,  <35.287712, 30.137697, 29.957354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315430, 30.349163, 29.847292>,  <35.361626, 30.701607, 29.663855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315430, 30.349163, 29.847292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529040, 0.445312, 0.722367,
		-0.840702, -0.159190, -0.517570,
		-0.115487, -0.881110, 0.458592,
		35.280785, 30.084829, 29.984869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691643, 30.711899, 29.838274>,  <35.361626, 30.701607, 29.663855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691643, 30.711899, 29.838274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805710, 30.407143, 30.070894>,  <34.874149, 30.224289, 30.210466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805710, 30.407143, 30.070894>,  <34.691643, 30.711899, 29.838274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805710, 30.407143, 30.070894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554569, 0.363713, 0.748442,
		-0.781748, -0.535945, -0.318800,
		0.285172, -0.761890, 0.581550,
		34.891262, 30.178576, 30.245359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087063, 30.313185, 30.053713>,  <34.691643, 30.711899, 29.838274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087063, 30.313185, 30.053713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391666, 30.292803, 30.312172>,  <34.574429, 30.280573, 30.467247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391666, 30.292803, 30.312172>,  <34.087063, 30.313185, 30.053713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391666, 30.292803, 30.312172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571925, 0.416229, 0.706863,
		-0.304963, -0.907831, 0.287820,
		0.761511, -0.050956, 0.646146,
		34.620121, 30.277515, 30.506016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715237, 30.293785, 30.736713>,  <34.087063, 30.313185, 30.053713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715237, 30.293785, 30.736713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098553, 30.278149, 30.849962>,  <34.328541, 30.268766, 30.917912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098553, 30.278149, 30.849962>,  <33.715237, 30.293785, 30.736713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098553, 30.278149, 30.849962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220212, 0.530466, 0.818604,
		-0.182187, -0.846804, 0.499730,
		0.958287, -0.039093, 0.283121,
		34.386040, 30.266420, 30.934898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692577, 30.053303, 31.538488>,  <33.715237, 30.293785, 30.736713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692577, 30.053303, 31.538488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041084, 30.231153, 31.455351>,  <34.250187, 30.337864, 31.405468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041084, 30.231153, 31.455351>,  <33.692577, 30.053303, 31.538488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041084, 30.231153, 31.455351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211016, 0.721679, 0.659281,
		0.443130, -0.530552, 0.722599,
		0.871268, 0.444628, -0.207843,
		34.302464, 30.364542, 31.392998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042896, 30.181486, 32.157536>,  <33.692577, 30.053303, 31.538488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042896, 30.181486, 32.157536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189377, 30.455370, 31.905483>,  <34.277264, 30.619701, 31.754251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189377, 30.455370, 31.905483>,  <34.042896, 30.181486, 32.157536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189377, 30.455370, 31.905483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207888, 0.720256, 0.661826,
		0.907017, -0.111364, 0.406100,
		0.366200, 0.684711, -0.630134,
		34.299236, 30.660784, 31.716444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407295, 30.591854, 32.579388>,  <34.042896, 30.181486, 32.157536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407295, 30.591854, 32.579388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338932, 30.826515, 32.262749>,  <34.297913, 30.967312, 32.072765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338932, 30.826515, 32.262749>,  <34.407295, 30.591854, 32.579388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338932, 30.826515, 32.262749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258996, 0.748417, 0.610569,
		0.950637, 0.309373, 0.024029,
		-0.170910, 0.586652, -0.791599,
		34.287659, 31.002510, 32.025269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512836, 31.212097, 32.871498>,  <34.407295, 30.591854, 32.579388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512836, 31.212097, 32.871498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309845, 31.265125, 32.530937>,  <34.188049, 31.296942, 32.326599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309845, 31.265125, 32.530937>,  <34.512836, 31.212097, 32.871498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309845, 31.265125, 32.530937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474470, 0.781808, 0.404542,
		0.719264, 0.609263, -0.333853,
		-0.507482, 0.132569, -0.851403,
		34.157600, 31.304895, 32.275517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450699, 32.023445, 32.840218>,  <34.512836, 31.212097, 32.871498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450699, 32.023445, 32.840218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182652, 31.887276, 32.576382>,  <34.021824, 31.805574, 32.418079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182652, 31.887276, 32.576382>,  <34.450699, 32.023445, 32.840218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182652, 31.887276, 32.576382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594716, 0.777964, 0.202696,
		0.444132, 0.528097, -0.723782,
		-0.670119, -0.340421, -0.659586,
		33.981617, 31.785149, 32.378506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219872, 32.608036, 32.388317>,  <34.450699, 32.023445, 32.840218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219872, 32.608036, 32.388317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.936028, 32.326538, 32.402191>,  <33.765720, 32.157639, 32.410515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.936028, 32.326538, 32.402191>,  <34.219872, 32.608036, 32.388317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936028, 32.326538, 32.402191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674011, 0.692323, 0.257676,
		-0.205349, 0.159473, -0.965609,
		-0.709606, -0.703745, 0.034681,
		33.723145, 32.115414, 32.412594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589531, 32.831882, 32.035042>,  <34.219872, 32.608036, 32.388317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589531, 32.831882, 32.035042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437962, 32.553699, 32.279255>,  <33.347019, 32.386787, 32.425781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437962, 32.553699, 32.279255>,  <33.589531, 32.831882, 32.035042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437962, 32.553699, 32.279255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672337, 0.660218, 0.334777,
		-0.635910, -0.283630, -0.717755,
		-0.378922, -0.695461, 0.610534,
		33.324284, 32.345062, 32.462414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598053, 32.872414, 32.816647>,  <33.589531, 32.831882, 32.035042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598053, 32.872414, 32.816647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804485, 33.155514, 33.009624>,  <33.928345, 33.325375, 33.125412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804485, 33.155514, 33.009624>,  <33.598053, 32.872414, 32.816647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804485, 33.155514, 33.009624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116484, 0.500028, -0.858140,
		-0.848583, 0.499067, 0.175613,
		0.516080, 0.707746, 0.482448,
		33.959309, 33.367836, 33.154358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304066, 33.583942, 32.795891>,  <33.598053, 32.872414, 32.816647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304066, 33.583942, 32.795891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700176, 33.626617, 32.831612>,  <33.937843, 33.652222, 32.853043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700176, 33.626617, 32.831612>,  <33.304066, 33.583942, 32.795891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700176, 33.626617, 32.831612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021185, 0.518742, -0.854668,
		-0.137508, 0.848248, 0.511437,
		0.990274, 0.106688, 0.089301,
		33.997257, 33.658623, 32.858402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458775, 34.279739, 32.585808>,  <33.304066, 33.583942, 32.795891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458775, 34.279739, 32.585808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772030, 34.050041, 32.490364>,  <33.959984, 33.912224, 32.433098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772030, 34.050041, 32.490364>,  <33.458775, 34.279739, 32.585808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772030, 34.050041, 32.490364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040139, 0.336234, -0.940923,
		0.620547, 0.746453, 0.240269,
		0.783141, -0.574242, -0.238611,
		34.006973, 33.877769, 32.418781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766922, 34.630672, 32.145359>,  <33.458775, 34.279739, 32.585808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766922, 34.630672, 32.145359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955059, 34.281239, 32.095345>,  <34.067940, 34.071579, 32.065334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955059, 34.281239, 32.095345>,  <33.766922, 34.630672, 32.145359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955059, 34.281239, 32.095345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251317, 0.268412, -0.929943,
		0.845944, 0.405964, 0.345791,
		0.470338, -0.873583, -0.125036,
		34.096161, 34.019165, 32.057835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514782, 34.729370, 31.989756>,  <33.766922, 34.630672, 32.145359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514782, 34.729370, 31.989756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394909, 34.374447, 31.849545>,  <34.322987, 34.161491, 31.765419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394909, 34.374447, 31.849545>,  <34.514782, 34.729370, 31.989756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394909, 34.374447, 31.849545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350623, 0.239266, -0.905437,
		0.887273, -0.394246, 0.239408,
		-0.299682, -0.887312, -0.350526,
		34.305004, 34.108253, 31.744387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018993, 34.595284, 31.640038>,  <34.514782, 34.729370, 31.989756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018993, 34.595284, 31.640038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.793896, 34.293343, 31.505270>,  <34.658836, 34.112179, 31.424410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.793896, 34.293343, 31.505270>,  <35.018993, 34.595284, 31.640038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793896, 34.293343, 31.505270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525748, -0.012308, -0.850551,
		0.637897, -0.655775, 0.403790,
		-0.562740, -0.754856, -0.336921,
		34.625072, 34.066887, 31.404194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476315, 34.079098, 31.345507>,  <35.018993, 34.595284, 31.640038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476315, 34.079098, 31.345507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119884, 34.037724, 31.168741>,  <34.906025, 34.012901, 31.062683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119884, 34.037724, 31.168741>,  <35.476315, 34.079098, 31.345507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119884, 34.037724, 31.168741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453717, -0.178969, -0.872990,
		0.011206, -0.978403, 0.206404,
		-0.891076, -0.103432, -0.441912,
		34.852562, 34.006695, 31.036167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558685, 33.445107, 30.990387>,  <35.476315, 34.079098, 31.345507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558685, 33.445107, 30.990387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250607, 33.630913, 30.815559>,  <35.065762, 33.742397, 30.710663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250607, 33.630913, 30.815559>,  <35.558685, 33.445107, 30.990387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250607, 33.630913, 30.815559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441735, -0.105825, -0.890882,
		-0.460079, -0.879221, -0.123685,
		-0.770193, 0.464512, -0.437070,
		35.019550, 33.770267, 30.684439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444508, 33.093506, 30.425045>,  <35.558685, 33.445107, 30.990387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444508, 33.093506, 30.425045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285675, 33.448742, 30.332409>,  <35.190376, 33.661884, 30.276827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285675, 33.448742, 30.332409>,  <35.444508, 33.093506, 30.425045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285675, 33.448742, 30.332409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245977, -0.140125, -0.959093,
		-0.884209, -0.437800, -0.162808,
		-0.397077, 0.888086, -0.231589,
		35.166553, 33.715168, 30.262932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129421, 33.055855, 29.778845>,  <35.444508, 33.093506, 30.425045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129421, 33.055855, 29.778845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183880, 33.449810, 29.821650>,  <35.216553, 33.686184, 29.847332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183880, 33.449810, 29.821650>,  <35.129421, 33.055855, 29.778845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183880, 33.449810, 29.821650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421279, 0.040212, -0.906039,
		-0.896654, 0.168433, -0.409440,
		0.136142, 0.984893, 0.107014,
		35.224724, 33.745277, 29.853754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100887, 33.210220, 29.118279>,  <35.129421, 33.055855, 29.778845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100887, 33.210220, 29.118279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.256191, 33.542786, 29.277277>,  <35.349373, 33.742325, 29.372677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.256191, 33.542786, 29.277277>,  <35.100887, 33.210220, 29.118279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256191, 33.542786, 29.277277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401182, 0.235825, -0.885121,
		-0.829643, 0.503124, -0.241988,
		0.388259, 0.831416, 0.397496,
		35.372669, 33.792210, 29.396526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882763, 33.812691, 28.805197>,  <35.100887, 33.210220, 29.118279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882763, 33.812691, 28.805197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242531, 33.918339, 28.944506>,  <35.458389, 33.981728, 29.028091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242531, 33.918339, 28.944506>,  <34.882763, 33.812691, 28.805197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242531, 33.918339, 28.944506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284269, 0.251800, -0.925088,
		-0.332026, 0.931042, 0.151393,
		0.899416, 0.264117, 0.348271,
		35.512356, 33.997574, 29.048986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043919, 34.398003, 28.431591>,  <34.882763, 33.812691, 28.805197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043919, 34.398003, 28.431591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387760, 34.245796, 28.567997>,  <35.594063, 34.154472, 28.649841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387760, 34.245796, 28.567997>,  <35.043919, 34.398003, 28.431591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387760, 34.245796, 28.567997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401995, 0.091651, -0.911043,
		0.315415, 0.920220, 0.231750,
		0.859601, -0.380519, 0.341015,
		35.645641, 34.131641, 28.670301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561066, 34.897614, 28.252619>,  <35.043919, 34.398003, 28.431591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561066, 34.897614, 28.252619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.777405, 34.573814, 28.344006>,  <35.907207, 34.379536, 28.398838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.777405, 34.573814, 28.344006>,  <35.561066, 34.897614, 28.252619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777405, 34.573814, 28.344006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584004, 0.165924, -0.794613,
		0.605331, 0.563188, 0.562490,
		0.540846, -0.809499, 0.228465,
		35.939659, 34.330963, 28.412544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144566, 35.039520, 27.975969>,  <35.561066, 34.897614, 28.252619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144566, 35.039520, 27.975969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.191139, 34.647396, 28.039772>,  <36.219086, 34.412121, 28.078053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.191139, 34.647396, 28.039772>,  <36.144566, 35.039520, 27.975969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191139, 34.647396, 28.039772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414769, -0.097929, -0.904642,
		0.902446, 0.171493, 0.395198,
		0.116438, -0.980306, 0.159506,
		36.226070, 34.353306, 28.087624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897278, 34.949966, 27.805294>,  <36.144566, 35.039520, 27.975969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897278, 34.949966, 27.805294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701096, 34.601860, 27.787024>,  <36.583385, 34.392994, 27.776060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701096, 34.601860, 27.787024>,  <36.897278, 34.949966, 27.805294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701096, 34.601860, 27.787024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541984, -0.263559, -0.797991,
		0.682429, -0.416133, 0.600936,
		-0.490452, -0.870270, -0.045677,
		36.553959, 34.340778, 27.773321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381313, 34.413185, 27.879919>,  <36.897278, 34.949966, 27.805294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381313, 34.413185, 27.879919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068432, 34.235207, 27.705479>,  <36.880703, 34.128418, 27.600815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068432, 34.235207, 27.705479>,  <37.381313, 34.413185, 27.879919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068432, 34.235207, 27.705479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570048, -0.228667, -0.789149,
		0.251409, -0.865871, 0.432506,
		-0.782201, -0.444949, -0.436099,
		36.833771, 34.101723, 27.574650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613728, 33.779045, 27.670977>,  <37.381313, 34.413185, 27.879919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613728, 33.779045, 27.670977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307816, 33.847126, 27.422415>,  <37.124268, 33.887974, 27.273277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307816, 33.847126, 27.422415>,  <37.613728, 33.779045, 27.670977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307816, 33.847126, 27.422415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569956, -0.271010, -0.775696,
		-0.300435, -0.947409, 0.110253,
		-0.764780, 0.170207, -0.621402,
		37.078381, 33.898186, 27.235994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580906, 33.247822, 27.226460>,  <37.613728, 33.779045, 27.670977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580906, 33.247822, 27.226460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365276, 33.517597, 27.024652>,  <37.235897, 33.679462, 26.903568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365276, 33.517597, 27.024652>,  <37.580906, 33.247822, 27.226460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365276, 33.517597, 27.024652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380935, -0.339009, -0.860210,
		-0.751191, -0.655905, -0.074165,
		-0.539073, 0.674434, -0.504518,
		37.203556, 33.719929, 26.873297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515724, 32.891335, 26.550991>,  <37.580906, 33.247822, 27.226460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515724, 32.891335, 26.550991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.418369, 33.273998, 26.487028>,  <37.359955, 33.503597, 26.448650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.418369, 33.273998, 26.487028>,  <37.515724, 32.891335, 26.550991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418369, 33.273998, 26.487028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325653, -0.074693, -0.942534,
		-0.913625, -0.281477, -0.293358,
		-0.243390, 0.956656, -0.159906,
		37.345352, 33.560997, 26.439056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956074, 32.859692, 25.931910>,  <37.515724, 32.891335, 26.550991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956074, 32.859692, 25.931910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.100006, 33.231789, 25.960697>,  <37.186363, 33.455048, 25.977970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.100006, 33.231789, 25.960697>,  <36.956074, 32.859692, 25.931910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100006, 33.231789, 25.960697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144771, 0.020535, -0.989252,
		-0.921719, 0.366379, -0.127283,
		0.359827, 0.930239, 0.071968,
		37.207954, 33.510860, 25.982288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696495, 33.182854, 25.376448>,  <36.956074, 32.859692, 25.931910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696495, 33.182854, 25.376448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990585, 33.436829, 25.471361>,  <37.167038, 33.589214, 25.528309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990585, 33.436829, 25.471361>,  <36.696495, 33.182854, 25.376448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990585, 33.436829, 25.471361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262765, 0.055711, -0.963250,
		-0.624818, 0.770556, -0.125879,
		0.735225, 0.634933, 0.237285,
		37.211151, 33.627308, 25.542547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607792, 33.857925, 24.980404>,  <36.696495, 33.182854, 25.376448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607792, 33.857925, 24.980404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995010, 33.827564, 25.076002>,  <37.227341, 33.809345, 25.133360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995010, 33.827564, 25.076002>,  <36.607792, 33.857925, 24.980404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995010, 33.827564, 25.076002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238297, -0.018250, -0.971021,
		0.078068, 0.996948, 0.000422,
		0.968050, -0.075907, 0.238994,
		37.285427, 33.804790, 25.147701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000889, 34.367447, 24.632196>,  <36.607792, 33.857925, 24.980404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000889, 34.367447, 24.632196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240295, 34.056309, 24.708853>,  <37.383942, 33.869625, 24.754847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240295, 34.056309, 24.708853>,  <37.000889, 34.367447, 24.632196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240295, 34.056309, 24.708853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376676, 0.062125, -0.924260,
		0.707028, 0.625374, 0.330180,
		0.598520, -0.777848, 0.191639,
		37.419853, 33.822952, 24.766344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580650, 34.505623, 24.267611>,  <37.000889, 34.367447, 24.632196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580650, 34.505623, 24.267611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.648430, 34.117287, 24.335432>,  <37.689098, 33.884285, 24.376125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.648430, 34.117287, 24.335432>,  <37.580650, 34.505623, 24.267611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648430, 34.117287, 24.335432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407070, -0.087730, -0.909174,
		0.897541, 0.223082, 0.380335,
		0.169454, -0.970844, 0.169552,
		37.699265, 33.826035, 24.386297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213776, 34.401997, 24.040501>,  <37.580650, 34.505623, 24.267611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213776, 34.401997, 24.040501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067097, 34.030373, 24.060043>,  <37.979092, 33.807400, 24.071770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067097, 34.030373, 24.060043>,  <38.213776, 34.401997, 24.040501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067097, 34.030373, 24.060043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721834, -0.317250, -0.615068,
		0.586934, -0.190273, 0.786959,
		-0.366694, -0.929058, 0.048859,
		37.957088, 33.751656, 24.074701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837280, 34.007538, 24.053370>,  <38.213776, 34.401997, 24.040501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837280, 34.007538, 24.053370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531826, 33.776329, 23.938301>,  <38.348553, 33.637604, 23.869261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531826, 33.776329, 23.938301>,  <38.837280, 34.007538, 24.053370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531826, 33.776329, 23.938301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561947, -0.375616, -0.736972,
		0.317936, -0.724430, 0.611652,
		-0.763631, -0.578026, -0.287670,
		38.302738, 33.602921, 23.851999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142262, 33.354481, 23.796803>,  <38.837280, 34.007538, 24.053370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142262, 33.354481, 23.796803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.770443, 33.328239, 23.651678>,  <38.547352, 33.312496, 23.564604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.770443, 33.328239, 23.651678>,  <39.142262, 33.354481, 23.796803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770443, 33.328239, 23.651678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346240, -0.493481, -0.797869,
		-0.126699, -0.867279, 0.481429,
		-0.929551, -0.065601, -0.362811,
		38.491577, 33.308559, 23.542835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530392, 32.778000, 24.113485>,  <39.142262, 33.354481, 23.796803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530392, 32.778000, 24.113485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914043, 32.830696, 24.213659>,  <40.144234, 32.862312, 24.273764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914043, 32.830696, 24.213659>,  <39.530392, 32.778000, 24.113485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914043, 32.830696, 24.213659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252482, -0.001196, 0.967601,
		0.127773, -0.991283, 0.032115,
		0.959128, 0.131742, 0.250434,
		40.201782, 32.870216, 24.288790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714100, 32.328049, 24.706291>,  <39.530392, 32.778000, 24.113485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714100, 32.328049, 24.706291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.991402, 32.615429, 24.729019>,  <40.157784, 32.787857, 24.742657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.991402, 32.615429, 24.729019>,  <39.714100, 32.328049, 24.706291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991402, 32.615429, 24.729019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075262, -0.006240, 0.997144,
		0.716753, -0.695550, 0.049746,
		0.693253, 0.718451, 0.056821,
		40.199379, 32.830963, 24.746065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116776, 32.122822, 25.277166>,  <39.714100, 32.328049, 24.706291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116776, 32.122822, 25.277166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.202286, 32.507366, 25.207779>,  <40.253593, 32.738091, 25.166145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.202286, 32.507366, 25.207779>,  <40.116776, 32.122822, 25.277166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202286, 32.507366, 25.207779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127126, 0.148688, 0.980679,
		0.968575, -0.231701, -0.090428,
		0.213778, 0.961357, -0.173471,
		40.266418, 32.795773, 25.155737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673504, 32.260597, 25.694393>,  <40.116776, 32.122822, 25.277166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673504, 32.260597, 25.694393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.509975, 32.615520, 25.609030>,  <40.411858, 32.828476, 25.557812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.509975, 32.615520, 25.609030>,  <40.673504, 32.260597, 25.694393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509975, 32.615520, 25.609030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064705, 0.205073, 0.976606,
		0.910318, 0.413066, -0.026425,
		-0.408821, 0.887312, -0.213409,
		40.387329, 32.881714, 25.545008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114445, 32.878941, 26.001986>,  <40.673504, 32.260597, 25.694393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114445, 32.878941, 26.001986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.738998, 33.013180, 25.970064>,  <40.513729, 33.093723, 25.950912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.738998, 33.013180, 25.970064>,  <41.114445, 32.878941, 26.001986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738998, 33.013180, 25.970064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027662, 0.303815, 0.952329,
		0.343849, 0.891666, -0.294450,
		-0.938618, 0.335602, -0.079801,
		40.457413, 33.113861, 25.946123>
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
